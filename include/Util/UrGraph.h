#ifndef UR_GRAPH
#define UR_GRAPH

#include "Util/CLinfo.h"
#include "Util/Options.h"
#include "llvm/Analysis/LoopInfo.h"
#include "llvm/CodeGen/MachineBasicBlock.h"
#include "llvm/CodeGen/MachineInstr.h"
#include "llvm/CodeGen/MachineLoopInfo.h"
#include <map>
#include <string>
#include <utility>
#include <vector>

#include "LLVMPasses/MachineFunctionCollector.h" // 由函数名找函数
#include "LLVMPasses/StaticAddressProvider.h"    // mi -> addr
// #include "LLVMPasses/DispatchMemory.h" // cacheconfig

#include "Memory/Classification.h" // CL_MISS/UNKONWN/HIT
#include "PathAnalysis/LoopBoundInfo.h"

#include "Util/Util.h"
#include "llvm/Support/FileSystem.h" // 输出ur-cfg图片
#include "llvm/Support/raw_ostream.h"
#include <fstream>
#include <iostream>
/*
  MI + 完整的函数调用栈，可以在UR-CFG上唯一标识一个MI
*/

class CtxMI {
public:
  const llvm::MachineInstr *MI;
  std::vector<const llvm::MachineInstr *> CallSites;
  CtxMI() { MI = nullptr; }

  bool operator==(const CtxMI &other) const {
    return MI == other.MI && CallSites == other.CallSites;
  }
  bool operator!=(const CtxMI &other) const { return !(*this == other); }
  bool operator<(const CtxMI &other) const { // 为了能作为map的键
    if (MI != other.MI) {
      return MI < other.MI;
    }
    return CallSites < other.CallSites;
  }
  friend std::ostream &operator<<(std::ostream &os, const CtxMI &tmpCM) {
    os << "[" << std::endl;
    unsigned tmpAddr =
        TimingAnalysisPass::StaticAddrProvider->getAddr(tmpCM.MI);
    os << "MI's Addr:";
    TimingAnalysisPass::printHex(os, tmpAddr);
    os << "_" << TimingAnalysisPass::getMachineInstrIdentifier(tmpCM.MI);
    os << std::endl;
    os << "With Call Context:" << std::endl;
    for (auto &tmpCS : tmpCM.CallSites) {
      os << "  " << TimingAnalysisPass::getMachineInstrIdentifier(tmpCS)
         << std::endl;
    }
    os << "]" << std::endl;
    return os;
  }
  std::vector<CtxMI> getSucc() {
    std::vector<CtxMI> retSucc;

    // 我们已经消除了伪指令，不会有遍历伪指令后继者的情况
    assert((!MI->isTransient()) && "We should not see transient instr here");

    // call 和 return(嵌入处理)
    auto &cg = TimingAnalysisPass::CallGraph::getGraph();
    if (MI->isCall() && !cg.callsExternal(MI)) {
      for (const auto *callee : cg.getPotentialCallees(MI)) {
        const MachineBasicBlock *calleeBeginBB = &*callee->begin();
        const llvm::MachineInstr *calleeBeginMI = &(calleeBeginBB->front());
        // assert((!calleeBeginMI->isTransient()) &&
        //        "First Instr of func shouldn't be transient");
        if (calleeBeginMI->isTransient()) {
          auto tmp_pair = transientHelper(calleeBeginBB, calleeBeginMI);
          calleeBeginMI = tmp_pair.second;
        }
        CtxMI succCM; // 继承了全部调用者，而且再加上自己
        succCM.MI = calleeBeginMI;
        assert(CallSites == this->CallSites && "Just Want to make sure");
        succCM.CallSites = CallSites;
        succCM.CallSites.push_back(MI);
        retSucc.push_back(succCM);
      }
      return retSucc;
    }
    if (MI->isReturn()) {
      if (CallSites.size() > 0) { // 针对main无调用者
        const llvm::MachineInstr *callsite = CallSites.back();
        const auto *callsiteMBB = callsite->getParent(); // 这里回到了call语句
        // 但我们需要call的下一条指令(call不会是Basic Block里最后一条指令)
        auto it = std::find_if(callsiteMBB->begin(), callsiteMBB->end(),
                               [callsite](const MachineInstr &Instr) {
                                 return &Instr == callsite;
                               });
        if (it != callsiteMBB->end() &&
            std::next(it) !=
                callsiteMBB->end()) { // 包含了下一条是MBB最后一条的情况了
          const llvm::MachineInstr *targetMI = &*(std::next(it));
          // 从源头消除伪指令。我假设transient不会出现在BB尾
          if (targetMI->isTransient()) {
            auto tmp_pair = transientHelper(callsiteMBB, targetMI);
            targetMI = tmp_pair.second;
          }
          CtxMI succCM; // 退一次栈
          succCM.MI = targetMI;
          succCM.CallSites = CallSites;
          succCM.CallSites.pop_back();
          retSucc.push_back(succCM);
        } else {
          assert(0 && "This will not happend");
        }
      }
      return retSucc;
    }

    const llvm::MachineBasicBlock *MBB = MI->getParent();
    // 可能两种情况，MBB内下一条MI，或者MBB最后一条MI到后继MBB的第一条MI
    if (MI == &(MBB->back())) {
      for (auto succit = MBB->succ_begin(); succit != MBB->succ_end();
           ++succit) {
        const llvm::MachineBasicBlock *targetMBB = *succit;
        const llvm::MachineInstr *targetMI = &(targetMBB->front());
        if (targetMI->isTransient()) {
          auto tmp_pair = transientHelper(targetMBB, targetMI);
          targetMI = tmp_pair.second;
        }
        CtxMI succCM;
        succCM.MI = targetMI;
        succCM.CallSites = CallSites;
        retSucc.push_back(succCM);
      }
    } else {
      const llvm::MachineInstr *tmpMI = MI;
      auto it = std::find_if(
          MBB->begin(), MBB->end(),
          [tmpMI](const MachineInstr &Instr) { return &Instr == tmpMI; });
      if (it != MBB->end() && std::next(it) != MBB->end()) {
        const llvm::MachineInstr *targetMI = &*(std::next(it));
        // 从源头消除伪指令
        // 我假设transient不会出现在BB尾
        if (targetMI->isTransient()) {
          auto tmp_pair = transientHelper(MBB, targetMI);
          targetMI = tmp_pair.second;
        }
        CtxMI succCM;
        succCM.MI = targetMI;
        succCM.CallSites = CallSites;
        retSucc.push_back(succCM);
      }
    }
    return retSucc;
  }

  std::vector<CtxMI> getSuccWithTransient() { // useless
    std::vector<CtxMI> retSucc;
    // call 和 return(嵌入处理)
    auto &cg = TimingAnalysisPass::CallGraph::getGraph();
    if (MI->isCall() && !cg.callsExternal(MI)) {
      for (const auto *callee : cg.getPotentialCallees(MI)) {
        const MachineBasicBlock *calleeBeginBB = &*callee->begin();
        const llvm::MachineInstr *calleeBeginMI = &(calleeBeginBB->front());
        CtxMI succCM; // 继承了全部调用者，而且再加上自己
        succCM.MI = calleeBeginMI;
        assert(CallSites == this->CallSites && "Just Want to make sure");
        succCM.CallSites = CallSites;
        succCM.CallSites.push_back(MI);
        retSucc.push_back(succCM);
      }
      return retSucc;
    }
    if (MI->isReturn()) {
      if (CallSites.size() > 0) { // 针对main无调用者
        const llvm::MachineInstr *callsite = CallSites.back();
        const auto *callsiteMBB = callsite->getParent(); // 这里回到了call语句
        // 但我们需要call的下一条指令(call不会是Basic Block里最后一条指令)
        auto it = std::find_if(callsiteMBB->begin(), callsiteMBB->end(),
                               [callsite](const MachineInstr &Instr) {
                                 return &Instr == callsite;
                               });
        if (it != callsiteMBB->end() &&
            std::next(it) !=
                callsiteMBB->end()) { // 包含了下一条是MBB最后一条的情况了
          const llvm::MachineInstr *targetMI = &*(std::next(it));
          CtxMI succCM; // 退一次栈
          succCM.MI = targetMI;
          succCM.CallSites = CallSites;
          succCM.CallSites.pop_back();
          retSucc.push_back(succCM);
        } else {
          assert(0 && "This will not happend");
        }
      }
      return retSucc;
    }

    const llvm::MachineBasicBlock *MBB = MI->getParent();
    // 可能两种情况，MBB内下一条MI，或者MBB最后一条MI到后继MBB的第一条MI
    if (MI == &(MBB->back())) {
      for (auto succit = MBB->succ_begin(); succit != MBB->succ_end();
           ++succit) {
        const llvm::MachineBasicBlock *targetMBB = *succit;
        const llvm::MachineInstr *targetMI = &(targetMBB->front());
        CtxMI succCM;
        succCM.MI = targetMI;
        succCM.CallSites = CallSites;
        retSucc.push_back(succCM);
      }
    } else {
      const llvm::MachineInstr *tmpMI = MI;
      auto it = std::find_if(
          MBB->begin(), MBB->end(),
          [tmpMI](const MachineInstr &Instr) { return &Instr == tmpMI; });
      if (it != MBB->end() && std::next(it) != MBB->end()) {
        const llvm::MachineInstr *targetMI = &*(std::next(it));
        CtxMI succCM;
        succCM.MI = targetMI;
        succCM.CallSites = CallSites;
        retSucc.push_back(succCM);
      }
    }
    return retSucc;
  }

private:
  // 跳过transient的办法就是拿到它的第一个非transient后继(可能递归执行)
  // 目前只考虑单个transient唯一后继的情况
  std::pair<const llvm::MachineBasicBlock *, const llvm::MachineInstr *>
  transientHelper(const llvm::MachineBasicBlock *MBB,
                  const llvm::MachineInstr *MI) {
    if (!MI->isTransient()) {
      return std::make_pair(MBB, MI);
    }
    assert((MI != &(MBB->back())) &&
           "I assume transient instr isn't last instr of bb, but this "
           "indicates I am wrong");
    auto it =
        std::find_if(MBB->begin(), MBB->end(),
                     [MI](const MachineInstr &Instr) { return &Instr == MI; });
    if (it != MBB->end() && std::next(it) != MBB->end()) {
      const llvm::MachineInstr *targetMI = &*(std::next(it));
      return transientHelper(MBB, targetMI);
    }
  }
};

class CtxData {
public:
  CtxMI ctx_mi;
  TimingAnalysisPass::AbstractAddress data_addr;
  CtxData() : data_addr(TimingAnalysisPass::AbstractAddress(unsigned(0))) {}
  CtxData(CtxMI ctx_i, TimingAnalysisPass::AbstractAddress daddr)
      : ctx_mi(ctx_i), data_addr(daddr) {}
  bool operator==(const CtxData &other) const {
    return ctx_mi == other.ctx_mi && data_addr == other.data_addr;
  }
  bool operator!=(const CtxData &other) const { return !(*this == other); }
  bool operator<(const CtxData &other) const { // 为了能作为map的键
    if (ctx_mi != other.ctx_mi) {
      return ctx_mi < other.ctx_mi;
    }
    return data_addr < other.data_addr;
  }
};

class AccessInfo {
public:
  unsigned x; // 执行次数
  TimingAnalysisPass::dom::cache::Classification classification;
  int age;
  TimingAnalysisPass::AbstractAddress data_addr; // only for data access
  AccessInfo()
      : x(1), classification(TimingAnalysisPass::dom::cache::CL_BOT),
        age(INT_MAX),
        data_addr(TimingAnalysisPass::AbstractAddress((unsigned)0)) {}
  friend std::ostream &operator<<(std::ostream &os, const AccessInfo &AI) {
    os << "[addr_0x" << std::hex << AI.data_addr << "_cl_" << AI.classification
       << "_age_" << AI.age << "_execnt_" << AI.x << "]\n";
    return os;
  }
};

struct PSAccessInfo {
  unsigned exe_cnt;
  int cs_size;
  unsigned address;
  PSAccessInfo() : exe_cnt(0), cs_size(INT_MAX), address(0) {}
};

/// 提供 ZW paper f函数运算所需的信息的查找方式
class UnorderedRegion {
public:
  std::map<CtxMI, AccessInfo> mi2xclass;
};

class CEOP {
public:
  std::vector<UnorderedRegion> URs; // 路径上的UR(按顺序)
  // 这里已经包含了排序信息，即UR编号
};

/// 存储UR-CFG，由CEOPs组成，各节点为MI，不包括AccessInfo
class UrGraph {
public:
  UrGraph(std::vector<std::vector<std::string>> &setc);

  std::vector<std::vector<std::string>> coreinfo;
  // 输出每条ceop有多少指令
  void handsome_ceop_instr();

protected:
  // === 执行次数相关信息 ===
  // core, function, ctxmi -> xclass
  std::map<unsigned, std::map<std::string, std::map<CtxMI, AccessInfo>>>
      ctxmi_miai;
  std::map<unsigned, std::map<std::string, std::vector<CEOP>>> &getCEOP() {
    return CEOPs;
  }
private:
  // Must Instr Access
  std::map<unsigned, std::map<std::string,
                              std::vector<CEOP>>>
      CEOPs; // 各个task的CEOP集合(别set了，比较函数不好写)
  /// 将执行次数写到ctxmi_miai
  void getExeCntMust();
  /*
      搞不了自底向上，搞自顶向下也是ok，在一个函数的所有loop里搜，搜到此BB在此loop里即可取
    优先取更深层的loop；一个函数多个循环是可以的，一个Basic
    Block足以定位哪个循环
      递归函数：一个CM负责处理自己所在函数的循环，即处理一层token，如果多层，外层交给callsite
    处理。于是我们可以处理任意层函数和任意层循环。
      一个local函数中，loop再多也就是个森林，通向我们要寻找的那个BB路径是唯一的。
  */
  unsigned getGlobalUpBd(std::string entry, CtxMI CM);
  unsigned bd_helper1(std::string entry, const llvm::MachineBasicBlock *MBB,
                      const llvm::MachineLoop *Loop);
  unsigned bd_helper2(std::string entry, const llvm::MachineLoop *Loop);
  // === tarjan强联通算法相关信息 ===
  // 拿到MachineLoop的信息，这样我就可以通过MBB直接得到其外层循环，然后得到执行次数；
  // 需要先从LoopBoundInfoPass偷到这个信息
  // std::map<std::string, MachineLoopInfo> f2MLI;
  // 算了目前这个设计上有点麻烦，暂时不采用
  // module1: 暂存对一个task的UR分析数据，对应oi-wiki tarjan算法
  std::map<CtxMI, unsigned> dfn;
  std::map<CtxMI, unsigned> low;
  unsigned dfncnt;
  std::map<unsigned, CtxMI> ur_stack;
  std::map<CtxMI, unsigned> in_stack;
  unsigned stack_pt;

protected:
  std::map<CtxMI, unsigned> mi_ur; // MI所在ur_id
private:
  std::map<unsigned, unsigned> ur_size; // 指含有多少条MI
  unsigned ur_id; // 强连通分量号，这个序号应该没有什么含义
  // module2: 新图，UR的出入边包含原来属于UR的MI的所有出入边
  std::map<unsigned, std::vector<unsigned>> ur_graph; // 给子类访问
  std::map<unsigned, std::vector<CtxMI>> ur_mi; // ur内部的MI没有顺序

  // module3： 除了这个module其它3个module都是暂存的
  std::map<unsigned,
           std::map<std::string,
                    std::map<const llvm::MachineInstr *,
                             TimingAnalysisPass::dom::cache::Classification>>>
      mi_class; // aborted
  // module: CEOP
  std::vector<UnorderedRegion> tmpPath; // 暂存UR图DFS的PATH
  std::vector<CEOP> tmpCEOPs;           // 暂存本task上所有路径
  std::map<CtxMI, std::vector<CtxMI>> mi_cfg;

protected:
  // 显式收集MI-CFG，用于debug
  std::map<std::string, std::map<CtxMI, std::vector<CtxMI>>> mi_cfgs;

private:
  /// UR于CEOP的计算函数
  void URCalculation(unsigned core, const std::string &function);
  // helper, 在此将所有CEOP所需数据存入tmpCEOPs
  void ceopDfs(unsigned u, unsigned &cur_core, std::string &cur_func);
  void ceopDfs_it(unsigned u, unsigned &cur_core, std::string &cur_func);
  // 构造之前定义的CEOP和UR对象，UR中的AccessInfo内容先设置为空
  void collectCEOPInfo(CtxMI firstCM, unsigned core, std::string function);
  // 反过来获取UR -> (出边、 MI);也即包含了建立UR图
  void collectUrInfo();
  void write_mi_cfgs(const std::string &function);
  void print_mi_cfg(unsigned core, const std::string &function);

  // 遍历MI-CFG
  void tarjan(CtxMI CM);
  void tarjan_iterative(CtxMI CM);
  void tarjan_it(CtxMI CM);
};

#endif