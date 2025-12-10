#ifndef LIANG_YUN
#define LIANG_YUN

#include "AnalysisFramework/AnalysisDriver.h"
#include "PreprocessingAnalysis/AddressInformation.h"
#include "PreprocessingAnalysis/ConstantValueDomain.h"
#include "Util/Options.h"
#include "llvm/CodeGen/MachineBasicBlock.h"
#include "llvm/CodeGen/MachineInstr.h"
#include <map>
#include <set>
#include <string>
#include <utility>
#include <vector>

#include "LLVMPasses/MachineFunctionCollector.h" // 由函数名找函数
#include "LLVMPasses/StaticAddressProvider.h"    // mi -> addr
// #include "LLVMPasses/DispatchMemory.h" // cacheconfig


class functionaddr {
public:
  functionaddr(std::string f) { this->functionname = f; }
  std::string functionname;
  std::set<unsigned> addrlist;
  // 打印函数
  void print() const {
    std::cout << "Function Name: " << functionname << "\n";
    std::cout << "Addresses: ";
    for (const auto &addr : addrlist) {
      std::cout << addr << " ";
    }
    std::cout << "\n";
  }
  void print(std::ostream &out) const {
    out << "Function Name: " << functionname << "\n";
    out << "Addresses: ";
    for (const auto &addr : addrlist) {
      out << addr << " ";
    }
    out << "\n";
  }
};

class Liangy_info {
public:
  std::map<std::string, std::set<functionaddr *>> functiontofs;
  std::map<std::string, functionaddr *> getfunctionaddr;

  std::ostream &print(std::ostream &stream) const {
    stream << "###LiangYun's Addr###\n";
    for (const auto &entry : functiontofs) {
      stream << "EntryPoint: " << entry.first << "\n";
      for (auto *const func : entry.second) {
        func->print(stream);
      }
    }
  }

  std::ostream &print_rwinfo(std::ostream &stream) const {
    for (const auto &entry : functiontofs) {
      unsigned inter_block = 0;
      for (auto *const func : entry.second) {
        inter_block += func->addrlist.size();
      }
      stream << entry.first << " data&instr Total " << inter_block << std::endl;
    }
  }
  
  void run(std::string entry) {
    auto Arch = TimingAnalysisPass::TimingAnalysisMain::getTargetMachine()
                    .getTargetTriple()
                    .getArch();
    std::tuple<> NoDep;
    if (Arch == Triple::ArchType::arm) {
      TimingAnalysisPass::AnalysisDriverInstr<
          TimingAnalysisPass::ConstantValueDomain<Triple::ArchType::arm>>
          ConstValAna(entry, NoDep);
      auto CvAnaInfo = ConstValAna.runAnalysis();
      TimingAnalysisPass::AddressInformationImpl<
          TimingAnalysisPass::ConstantValueDomain<Triple::ArchType::arm>>
          AddrInfo(*CvAnaInfo);

      functiontofs.emplace(entry, std::set<functionaddr *>());

      TimingAnalysisPass::CallGraph &cg =
          TimingAnalysisPass::CallGraph::getGraph();
      for (auto *currFunc : TimingAnalysisPass::machineFunctionCollector
                                ->getAllMachineFunctions()) {
        std::string funcName = currFunc->getName().str();
        if (!cg.reachableFromEntryPoint(currFunc)) {
          continue;
        }
        if (getfunctionaddr.find(funcName) == getfunctionaddr.end()) {
          functionaddr *f = new functionaddr(funcName);
          getfunctionaddr[funcName] = f;
        }
        functiontofs[entry].emplace(getfunctionaddr[funcName]);

        for (auto currBB = currFunc->begin(); currBB != currFunc->end();
             ++currBB) {
          for (auto currMI = currBB->begin(); currMI != currBB->end();
               ++currMI) {
            // 指令地址
            if (TimingAnalysisPass::StaticAddrProvider->Ins2addr.find(
                    &*currMI) !=
                TimingAnalysisPass::StaticAddrProvider->Ins2addr.end()) {
              getfunctionaddr[funcName]->addrlist.emplace(
                  TimingAnalysisPass::StaticAddrProvider->Ins2addr[&*currMI] &
                  ~(L2linesize - 1));
            }
            // 数据地址
            if (currMI->mayLoad() || currMI->mayStore()) {
              auto list = AddrInfo.getvalueaddr(&*currMI);
              for (unsigned addr : list) {
                getfunctionaddr[funcName]->addrlist.emplace(addr &
                                                            ~(L2linesize - 1));
              }
            }
          }
        }
      }

    } else if (Arch == Triple::ArchType::riscv32) {
      TimingAnalysisPass::AnalysisDriverInstr<
          TimingAnalysisPass::ConstantValueDomain<Triple::ArchType::riscv32>>
          ConstValAna(entry, NoDep);
      auto CvAnaInfo = ConstValAna.runAnalysis();
      TimingAnalysisPass::AddressInformationImpl<
          TimingAnalysisPass::ConstantValueDomain<Triple::ArchType::riscv32>>
          AddrInfo(*CvAnaInfo);

    } else {
      assert(0 && "Unsupported ISA for LLVMTA");
    }
  }
};
#endif