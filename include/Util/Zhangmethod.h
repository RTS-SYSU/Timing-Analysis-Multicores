#ifndef ZHANGWEI_M
#define ZHANGWEI_M

#include "Util/CLinfo.h"
#include "Util/Options.h"
#include "Util/OurGraph.h"
#include "Util/UrGraph.h"
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

#include "Util/Statistics.h"
#include "Util/Util.h"
#include "llvm/Support/FileSystem.h" // 输出ur-cfg图片
#include "llvm/Support/raw_ostream.h"
#include <fstream>
#include <iostream>

class Zhangmethod {
public:
  Zhangmethod() {}
  Zhangmethod(OurGraph urgg, CL_info &cl_infor) {
    this->coreinfo = urgg.coreinfo;
    // this->CEOPs = urgg.Ceopinfo.CEOPs;
    this->Cl_infor = cl_infor;
    this->Ceopinfos = urgg.Ceopinfo; // 会Write，不能传引用
  }
  // CoreNum -> vector of function
  std::vector<std::vector<std::string>> coreinfo;
  // Must Instr Access
  // std::map<unsigned, std::map<std::string, std::vector<CEOP>>> CEOPs;
  std::map<std::string, std::map<std::string, unsigned>> currWcetInter;
  std::map<unsigned, std::map<std::string, unsigned>> currWcetIntra;
  // 需要持久性和data相关信息，故引入
  CEOPinfo Ceopinfos;
  // PS info
  CL_info Cl_infor;

  /// helper: 第一轮迭代，直接返回所有能冲突的函数(生命周期迭代)
  std::vector<std::string> getInitConflictFunction(unsigned core,
                                                   const std::string &function);
  /// 计算UR，计算张伟WCEET
  void run(bool use_ps, bool use_data);

private:
  // 注意从0还是1开始计数,目前0,见main; FIXME这里参数有点冗余;
  // TODO需要数据cache分析
  unsigned getFValue(std::string localFunc, const CEOP &localPath,
                     unsigned localUR, std::string interFunc,
                     const CEOP &interPath, unsigned interUR, bool use_ps,
                     bool use_data);

  // helper function
  unsigned mi2cacheIndex(const llvm::MachineInstr *mi) {
    unsigned tmp_addr = TimingAnalysisPass::StaticAddrProvider->getAddr(mi);
    return (tmp_addr / L2linesize) % NN_SET;
    // line_size为64byte的话，低6位地址是offset；1024set的话，再过10位是index
  }
  unsigned getcacheIndex(unsigned addr) { return (addr / L2linesize) % NN_SET; }
  /// 将ps信息写入 Ceopinfos.CEOPs 的辅助函数
  /// 可以看出这是针对指令访存的
  void ps_Ipreprocess();
  /// @brief 将ps信息写入 Ceopinfos.entry2ctxmi2datainfo 的辅助函数
  /// 针对数据访存
  void ps_Dpreprocess();
  void ps_preprocess();
  /// PS块的执行次数
  unsigned get_ps_execnt(std::string f_name, CtxMI tmp_cm);
  unsigned get_ps_execnt(std::string f_name, CtxData tmp_cm);
  /// @brief
  void print_mem_info();
  /// @brief 辅助函数
  /// @param tmp_cm
  /// @return
  int is_l2ps(CtxMI tmp_cm, std::string f_name);
  int is_l2ps(CtxData tmp_cd, std::string f_name);
  /// ctxmi的loop栈，最靠近的loop在vector头部
  std::map<
      std::string,
      std::map<CtxMI, std::vector<std::pair<const llvm::MachineLoop *, bool>>>>
      ctxmi2ps_loop_stack;

  /// ctxdata的loop栈
  std::map<std::string,
           std::map<TimingAnalysisPass::AbstractAddress,
                    std::vector<std::pair<const llvm::MachineLoop *, bool>>>>
      ctxdata2ps_loop_stack;

  unsigned getCachelineAddress(unsigned addr) {
    return addr & ~(L2linesize - 1);
  }
  // 这里只做PS的 triple
  int getPStriple(const CtxData &CtD, std::string fname) {
    int res = 0;
    // handling PS access
    // 拿到嵌套循环的栈st
    auto it = ctxdata2ps_loop_stack[fname].find(CtD.data_addr);
    std::vector<std::pair<const llvm::MachineLoop *, bool>> &st = it->second;
    unsigned addr = CtD.data_addr.getAsInterval().lower();
    // 使用普通索引倒序遍历
    int x = 1; // 循环计数
    int b = 1;
    for (int i = st.size() - 1; i >= 0; --i) {
      std::pair<const llvm::MachineLoop *, bool> loop = st[i];
      x *= b;
      b = TimingAnalysisPass::LoopBoundInfo->GgetUpperLoopBound(loop.first);
      // 外层持久的在内层不一定持久
      if (loop.second) {
        int CS = INT_MAX;
        st[i].second = false;
        TimingAnalysisPass::dom::cache::Classification cl;
        for (auto &scop : Cl_infor.AddrPSList) {
          if (scop.first.loop == loop.first) {
            for (const AddrPS &ps : scop.second) {
              if (ps.address.getAsInterval().lower() ==
                  getCachelineAddress(addr)) {
                if (ps.LEVEL == 1) {
                  cl = TimingAnalysisPass::dom::cache::CL_PS;
                } else if (ps.LEVEL == 2) {
                  cl = TimingAnalysisPass::dom::cache::CL2_PS;
                }
                CS = ps.CS_size;
                break;
              }
            }
            break;
          }
        }

        // assert(CS != INT_MAX && "找不到标记为持久的块");
        if (cl == TimingAnalysisPass::dom::cache::CL2_PS) {
          assert(b != -1);
          if (b > 1) { // 循环次数为1等同于没有循环
            res += x * (b - 1);
          }
        }
      }
    }
    return res;
  }

  int getPStriple(const CtxMI &MI, std::string fname) {
    int res = 0;
    auto it = ctxmi2ps_loop_stack[fname].find(MI);
    std::vector<std::pair<const llvm::MachineLoop *, bool>> &st = it->second;
    unsigned addr = TimingAnalysisPass::StaticAddrProvider->getAddr(MI.MI);
    // 使用普通索引倒序遍历
    int x = 1; // 循环计数
    int b = 1;
    for (int i = st.size() - 1; i >= 0; --i) {
      std::pair<const llvm::MachineLoop *, bool> loop = st[i];
      x *= b;
      int b = TimingAnalysisPass::LoopBoundInfo->GgetUpperLoopBound(loop.first);
      // 外层持久的在内层不一定持久
      if (loop.second) {
        st[i].second = false; // 只有第一次持久后面就不持久了
        int CS = INT_MAX;
        TimingAnalysisPass::dom::cache::Classification cl;
        for (auto &scop : Cl_infor.AddrPSList) {
          if (scop.first.loop == loop.first) {
            for (const AddrPS &ps : scop.second) {
              if (ps.address.getAsInterval().lower() ==
                  getCachelineAddress(addr)) {
                if (ps.LEVEL == 1) {
                  cl = TimingAnalysisPass::dom::cache::CL_PS;
                } else if (ps.LEVEL == 2) {
                  cl = TimingAnalysisPass::dom::cache::CL2_PS;
                }
                CS = ps.CS_size; // 在层1上持久的不计
                break;
              }
            }
            break;
          }
        }

        // assert(CS != INT_MAX && "找不到标记为持久的块");
        if (cl == TimingAnalysisPass::dom::cache::CL2_PS) {
          assert(b != -1);
          if (b > 1) { // 循环次数为1等同于没有循环
            res += x * (b - 1);
          }
        }
      }
    }
    return res;
  }
};

#endif