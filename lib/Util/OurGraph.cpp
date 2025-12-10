#include "Util/OurGraph.h"
#include "Util/UrGraph.h"

OurGraph::OurGraph(std::vector<std::vector<std::string>> &setc,
                   CL_info &cl_infor,
                   std::map<std::string, unsigned> &func2corenum1)
    : UrGraph(setc) // TODO delete
{
  Ceopinfo = CEOPinfo(this->getCEOP());
  // 首先从AddrClist读取信息，写入
  // data: entry2ctxmi2data_absaddr和entry2ctxmi2datainfo
  // instr: ctxmi_miai
  for (const auto &tmp_acl : cl_infor.AddrCList) {
    if (tmp_acl.MIAddr != 0) { // data access
      unsigned tmp_addr = tmp_acl.MIAddr;
      if (TimingAnalysisPass::StaticAddrProvider->hasMachineInstrByAddr(
              tmp_addr)) {
        // context匹配
        std::vector<const llvm::MachineInstr *> tmp_callsites =
            ctx_match_helper(tmp_acl, false);
        // 获取entry point
        auto tmp_entry_info = get_entry_helper(tmp_acl, func2corenum1);
        // 赋值CtxMI
        CtxMI tmpCM;
        const llvm::MachineInstr *miptr = // got mi
            TimingAnalysisPass::StaticAddrProvider->getMachineInstrByAddr(
                tmp_addr);
        tmpCM.MI = miptr;
        tmpCM.CallSites = tmp_callsites;
        // FIXME: 这里AbstractAddress不拆
        // DataAccess, exe_cnt is later calculated in run()
        auto itv = tmp_acl.address.getAsInterval();
        if (!(tmp_acl.address == tmp_acl.address.getUnknownAddress())) {
          AccessInfo tmp_ai;
          tmp_ai.age = tmp_acl.age;
          tmp_ai.data_addr = tmp_acl.address;
          tmp_ai.classification = tmp_acl.CL;
          Ceopinfo.entry2ctxmi2datainfo[std::get<0>(tmp_entry_info)][tmpCM]
              .push_back(tmp_ai);
          data_cl_cnt[std::get<0>(tmp_entry_info)][tmp_acl.CL].first += 1;
          Ceopinfo.entry2ctxmi2data_absaddr[std::get<0>(tmp_entry_info)][tmpCM]
              .push_back(tmp_acl.address);
        } else { // TODO:how can we handle any access with unknown addr?
        }

      } else {
        // assert(tmp_addr == 0 && "why we have an addr without mi?");
      }
    } else { // instruction access
      auto itv = tmp_acl.address.getAsInterval();
      // 简要验证
      const TimingAnalysisPass::Address tmp_upper_cache_line =
          itv.upper() & ~(L2linesize - 1);
      const TimingAnalysisPass::Address tmp_lower_cache_line =
          itv.lower() & ~(L2linesize - 1);
      assert(tmp_lower_cache_line == tmp_upper_cache_line);
      if (TimingAnalysisPass::StaticAddrProvider->hasMachineInstrByAddr(
              itv.lower())) {
        // // context匹配
        // std::vector<const llvm::MachineInstr *> tmp_callsites =
        //   ctx_match_helper(tmp_acl, true);
        // 获取entry point
        auto tmp_entry_info = get_entry_helper(tmp_acl, func2corenum1);
        CtxMI tmpCM;
        const llvm::MachineInstr *miptr = // got mi
            TimingAnalysisPass::StaticAddrProvider->getMachineInstrByAddr(
                itv.lower());
        tmpCM.MI = miptr;
        // context匹配
        std::vector<const llvm::MachineInstr *> tmp_callsites =
            ctx_match_helper(tmp_acl, true);

        if (ZWDebug) {
          int this_is_a_test = tmp_callsites.size();
        }
        tmpCM.CallSites = tmp_callsites;
        // 构造AccessInfo，后续在write_miai_ceops()中写入ceop
        AccessInfo obj;
        obj.age = tmp_acl.age;
        obj.classification = tmp_acl.CL;
        obj.x = ctxmi_miai[std::get<1>(tmp_entry_info)]
                          [std::get<0>(tmp_entry_info)][tmpCM]
                              .x; // UrGraph中已经计算了执行次数
        ctxmi_miai[std::get<1>(tmp_entry_info)][std::get<0>(tmp_entry_info)]
                  [tmpCM] = obj;
        // for output
        instr_cl_cnt[std::get<0>(tmp_entry_info)][tmp_acl.CL].first += 1;
        instr_cl_cnt[std::get<0>(tmp_entry_info)][tmp_acl.CL].second += obj.x;
      } else {
        // assert(itv.lower() == 0 && "why we have an addr without mi?");
      }
    }
  }
  // 构建data access相关信息
  getDataExeCntMust();
  write_miai_ceops();
  // === here we handle the PS block ===
  // 从AddrPSList读入信息
  // step1: we calculate stack<loop> for each ctxmi
  for (auto &tmp_scope : cl_infor.AddrPSList) {
    if (ZWDebug) { // for output
      loop2ps_scope[tmp_scope.first.loop] = tmp_scope.first;
    }
    for (auto &tmp_ps_acl : tmp_scope.second) {
      TimingAnalysisPass::AbstractAddress tmp_abs_addr = tmp_ps_acl.address;
      loop2addr_isps[tmp_scope.first.loop][tmp_abs_addr] = true;
      // we make loop public
    }
  }
  build_loop_stack();
  if (ZWDebug) {
    check_loop_stack(cl_infor);
  }
  if (ZWDebug) {
    check_loop_stack(cl_infor);
  }
  // step2: we calculate exe cnt for each PS CtxMI & CtxData
  // and build ctxmi2ps_ai & ctxdata2ps_ai
  // we currently do this in Ourmethod.h, so not written here

  if (ZWDebug) {
    print_info(Ceopinfo);
  }
}

void OurGraph::write_miai_ceops() {
  for (auto &tmp_core : Ceopinfo.CEOPs) {
    unsigned core_num = tmp_core.first;
    for (auto &tmp_task : tmp_core.second) {
      std::string func_name = tmp_task.first;
      for (CEOP &tmp_ceop : tmp_task.second) {
        for (UnorderedRegion &tmp_ur : tmp_ceop.URs) {
          for (auto &tmp_pair : tmp_ur.mi2xclass) {
            CtxMI tmp_cm = tmp_pair.first;
            tmp_pair.second = ctxmi_miai[core_num][func_name][tmp_cm];
          }
        }
      }
    }
  }
}

void OurGraph::getDataExeCntMust() {
  for (auto &tmp_core : Ceopinfo.CEOPs) {
    unsigned core_num = tmp_core.first;
    for (auto &tmp_task : tmp_core.second) {
      std::string enrty_name = tmp_task.first;
      for (CEOP &tmp_ceop : tmp_task.second) {
        for (UnorderedRegion &tmp_ur : tmp_ceop.URs) {
          for (auto &tmp_pair : tmp_ur.mi2xclass) {
            CtxMI tmp_cm = tmp_pair.first;
            std::vector<AccessInfo> tmp_ais =
                Ceopinfo.entry2ctxmi2datainfo[enrty_name][tmp_cm];
            for (int i = 0; i < tmp_ais.size(); i++) {
              Ceopinfo.entry2ctxmi2datainfo[enrty_name][tmp_cm][i].x =
                  ctxmi_miai[core_num][enrty_name][tmp_cm].x;
              data_cl_cnt[enrty_name][tmp_ais[i].classification].second +=
                  ctxmi_miai[core_num][enrty_name][tmp_cm].x;
            }
          }
        }
      }
    }
  }
}

void OurGraph::print_our_cfg(unsigned cur_core, const std::string &function) {
  const std::vector<std::string> colors = {
      "turquoise", "lightblue", "lightgreen", "lightyellow", "white"};
  std::unordered_map<std::string, std::string> func_color_map;
  int color_index = 0;
  std::error_code EC;
  raw_fd_ostream File("OurGraph_" + function + ".dot", EC,
                      sys::fs::OpenFlags::OF_Text);
  if (EC) {
    errs() << "Error opening file: " << EC.message() << "\n";
  }
  File << "digraph \"MachineCFG of " + function + "\" {\n";
  // 为CtxMI分配简短ID
  std::map<CtxMI, unsigned> cm_id_map;
  unsigned cnt = 0;
  for (auto tmp_pair : mi_cfgs[function]) {
    CtxMI CM = tmp_pair.first;
    cm_id_map[CM] = cnt++;
  }
  for (auto tmp_pair : mi_cfgs[function]) {
    // 函数获取或分配颜色
    CtxMI CM = tmp_pair.first;
    const llvm::MachineInstr *MI = CM.MI;
    const std::string func_name =
        MI->getParent()->getParent()->getFunction().getName().str();
    if (func_color_map.find(func_name) == func_color_map.end()) {
      func_color_map[func_name] = colors[color_index % colors.size()];
      color_index++;
    }
    const std::string color = func_color_map[func_name];
    // 节点
    File << "  " << "Node" << cm_id_map[CM] << " [label=\"MI" << MI << "\\l  ";
    MI->print(File, false, false, true);
    File << "\\l  ";
    std::string tmp_flag = (MI->isTransient()) ? "True" : "False";
    File << "isTransient:" << tmp_flag << "\\l  ";
    // 纯UrGraph无ExeCnt即CL信息, ZhangGraph需要
    File << "ExeCnt:" << ctxmi_miai[cur_core][function][CM].x << " "
         << "CHMC:" << ctxmi_miai[cur_core][function][CM].classification
         << "\\l  ";
    unsigned tmp_addr = TimingAnalysisPass::StaticAddrProvider->getAddr(MI);
    unsigned tmp_line = tmp_addr / L2linesize;
    unsigned tmp_index = tmp_line % NN_SET;
    File << "MI's addr:";
    TimingAnalysisPass::printHex(File, tmp_addr);
    File << " cache line:" << tmp_line << " cache index:" << tmp_index
         << "\\l  ";
    File << "More Info of MI:"
         << TimingAnalysisPass::getMachineInstrIdentifier(MI) << "\\l";
    File << "in UR" << mi_ur[CM] << "\\l  ";
    File << "May Load?" << MI->mayLoad() << "\\l  ";
    File << "May Store?" << MI->mayStore() << "\\l  ";
    // 纯UrGraph无data access的ExeCnt和CL信息，OurGraph需要
    File << "data access: [\n";
    for (AccessInfo tmpai : Ceopinfo.entry2ctxmi2datainfo[function][CM]) {
      File << "[addr_" << tmpai.data_addr;
      File << "_cl_" << tmpai.classification << "_age_" << tmpai.age
           << "_execnt_" << tmpai.x << "]\n";
    }
    File << "]\\l  ";
    File << "\" fillcolor=\"" << color << "\" style=\"filled\"];\n";
    // 边
    std::vector<CtxMI> tmp_CMs = tmp_pair.second;
    for (auto tmp_CM : tmp_CMs) {
      File << "  " << "Node" << cm_id_map[CM] << " -> " << "Node"
           << cm_id_map[tmp_CM] << ";\n";
    }
  }
  File << "}\n";
}

void OurGraph::print_info(CEOPinfo &Ceopinfo) {
  for (auto &tmp_core : Ceopinfo.CEOPs) {
    unsigned tmp_core_num = tmp_core.first;
    for (auto &tmp_task : tmp_core.second) {
      std::string tmp_f_name = tmp_task.first;
      print_our_cfg(tmp_core_num, tmp_f_name);
    }
  }
}

void OurGraph::build_loop_stack() {
  for (auto &tmp_core : Ceopinfo.CEOPs) {
    for (auto &tmp_task : tmp_core.second) {
      std::string f_name = tmp_task.first;
      for (auto &tmp_ceop : tmp_task.second) {
        for (UnorderedRegion &tmp_ur : tmp_ceop.URs) {
          for (auto &tmp_mi2xclass : tmp_ur.mi2xclass) {
            CtxMI tmp_cm = tmp_mi2xclass.first;
            // 构建ctxmi -> loop stack
            std::vector<std::pair<const llvm::MachineLoop *, bool>>
                tmp_loop_stack = getGlobalLoop(tmp_cm, tmp_cm);
            Ceopinfo.ctxmi2ps_loop_stack[f_name][tmp_cm] = tmp_loop_stack;
            // 构建ctxdata -> loop stack
            for (TimingAnalysisPass::AbstractAddress tmp_aa :
                 Ceopinfo.entry2ctxmi2data_absaddr[f_name][tmp_cm]) {
              CtxData tmp_cd;
              tmp_cd.ctx_mi = tmp_cm;
              tmp_cd.data_addr = tmp_aa;
              std::vector<std::pair<const llvm::MachineLoop *, bool>>
                  tmp_loop_stack_d = getGlobalLoopData(tmp_cd);
              Ceopinfo.ctxdata2ps_loop_stack[f_name][tmp_aa] = tmp_loop_stack_d;
            }
          }
          if (ZWDebug) { // just for output
            //   std::ofstream Myfile;
            //   Myfile.open("JJY_loop_stack.txt", std::ios_base::app);
            //   for (auto &tmp_mi2xclass : tmp_ur.mi2xclass) {
            //     CtxMI tmp_cm = tmp_mi2xclass.first;
            //     std::vector<std::pair<const llvm::MachineLoop *, bool>>
            //         tmp_loop_stack =
            //         Ceopinfo.ctxmi2ps_loop_stack[f_name][tmp_cm];
            //     // Myfile << "### in function_" << f_name << "\n";
            //     Myfile << tmp_cm;
            //     for (auto &tmp_pair : tmp_loop_stack) {
            //       if (loop2ps_scope.count(tmp_pair.first) == 0) {
            //         Myfile << "FIXME in loop "
            //               << "has no scope" << "\n";
            //       } else {
            //         Myfile << "in loop_" << loop2ps_scope[tmp_pair.first]
            //               << "isPS?" << tmp_pair.second << "\n";
            //       }
            //     }
            //     Myfile << "  data access of this MI:\n";
            //     for (TimingAnalysisPass::AbstractAddress tmp_aa :
            //         Ceopinfo.entry2ctxmi2data_absaddr[f_name][tmp_cm]) {
            //       CtxData tmp_cd;
            //       tmp_cd.ctx_mi = tmp_cm;
            //       tmp_cd.data_addr = tmp_aa;
            //       std::vector<std::pair<const llvm::MachineLoop *, bool>>
            //           tmp_loop_stack_d =
            //               Ceopinfo.ctxdata2ps_loop_stack[f_name][tmp_aa];
            //       Myfile << "  Data Access: " << tmp_cd.data_addr << "\n";
            //       for (auto &tmp_pair : tmp_loop_stack_d) {
            //         if (loop2ps_scope.count(tmp_pair.first) == 0) {
            //           Myfile << "  FIXME in loop "
            //                 << "has no scope" << "\n";
            //         } else {
            //           Myfile << "  in loop_" << loop2ps_scope[tmp_pair.first]
            //                 << "isPS?" << tmp_pair.second << "\n";
            //         }
            //       }
            //     }
            //   }
          }
        }
      }
    }
  }
}

std::vector<std::pair<const llvm::MachineLoop *, bool>>
OurGraph::getGlobalLoop(CtxMI CM, const CtxMI topCM) {
  // Debug
  // if(TimingAnalysisPass::StaticAddrProvider->getAddr(topCM.MI)==0x800370){
  //   int this_is_a_test = 1;
  // }
  // if(TimingAnalysisPass::StaticAddrProvider->getAddr(topCM.MI)==0x800370){
  //   int this_is_a_test = 1;
  // }
  std::error_code EC;
  raw_fd_ostream File("DebugGlobalLoop.txt", EC, sys::fs::OpenFlags::OF_Text);
  if (EC) {
    errs() << "Error opening file: " << EC.message() << "\n";
  }
  // end Debug
  // 首先拿到同function的最入loop，使用动态的CM
  const llvm::MachineInstr *MI = CM.MI;
  const llvm::MachineBasicBlock *MBB = MI->getParent();
  const llvm::MachineFunction *MF = MBB->getParent();
  const llvm::MachineLoop *targetLoop = nullptr;
  std::vector<const llvm::MachineLoop *> tmp_loops;
  // 存在一些访存，不属于循环的MBB，但是在循环对应的persistence
  // scope中，且为持久
  for (const llvm::MachineLoop *loop :
       TimingAnalysisPass::LoopBoundInfo->getAllLoops()) {
    if (MF == loop->getHeader()->getParent()){
      if (loop->contains(MBB)) {
        tmp_loops.push_back(loop);
        File << *loop << "\n"; // db
      } else {
        // 前继
        for (auto pred = loop->getHeader()->pred_begin();
             pred != loop->getHeader()->pred_end(); pred++) {
          if (*pred == MBB) {
            tmp_loops.push_back(loop);
            File << *loop << "\n"; // db
            break;
          }
        }
        // 后继
        for (auto pred = loop->getHeader()->succ_begin();
             pred != loop->getHeader()->succ_end(); pred++) {
          if (*pred == MBB) {
            tmp_loops.push_back(loop);
            File << *loop << "\n"; // db
            break;
          }
        }
      }
    }

  }
  for (auto &tmp_loop : tmp_loops) {
    bool tmp_flag = false;
    File << *tmp_loop << "\n"; // db
    for (auto *Subloop : tmp_loop->getSubLoops()) {
      if (Subloop->contains(MBB)) {
        File << *Subloop << "\n"; // db
        tmp_flag = true;
        break;
      }
      else{
        for (auto pred = Subloop->getHeader()->pred_begin();
             pred != Subloop->getHeader()->pred_end(); pred++) {
          if (*pred == MBB) {
            File << *Subloop << "\n"; // db
            tmp_flag = true;
            break;
          }
        }
        for (auto pred = Subloop->getHeader()->succ_begin();
             pred != Subloop->getHeader()->succ_end(); pred++) {
          if (*pred == MBB) {
            File << *Subloop << "\n"; // db
            tmp_flag = true;
            break;
          }
        }
      }
    }
    if (!tmp_flag) {
      targetLoop = tmp_loop;
      break;
    }
  }
  // 入栈所有同function的loop，key须为原分析topCM
  std::vector<std::pair<const llvm::MachineLoop *, bool>> res_loop_stack;
  const llvm::MachineLoop *tmp_loop = targetLoop;
  while (tmp_loop != nullptr) {
    TimingAnalysisPass::AbstractAddress tmp_aa =
        TimingAnalysisPass::AbstractAddress(
            TimingAnalysisPass::StaticAddrProvider->getAddr(topCM.MI));
    std::pair<const llvm::MachineLoop *, bool> tmp_pair =
        std::make_pair(tmp_loop, loop2addr_isps[tmp_loop][tmp_aa]);
    res_loop_stack.push_back(tmp_pair);
    tmp_loop = tmp_loop->getParentLoop();
  }
  // 递归, 使用动态的CM
  if (CM.CallSites.size() != 0) {
    const llvm::MachineInstr *tmp_callsite = CM.CallSites.back();
    std::vector<const llvm::MachineInstr *> tmpCS = CM.CallSites;
    tmpCS.pop_back();
    CtxMI tmpCM;
    tmpCM.MI = tmp_callsite;
    tmpCM.CallSites = tmpCS;
    std::vector<std::pair<const llvm::MachineLoop *, bool>> callers_ls =
        getGlobalLoop(tmpCM, topCM);
    for (int i = 0; i < callers_ls.size(); i++) {
      res_loop_stack.push_back(callers_ls[i]);
    }
  }
  return res_loop_stack;
}

std::vector<std::pair<const llvm::MachineLoop *, bool>>
OurGraph::getGlobalLoopData(CtxData CD) {
  // 首先拿到同function的最入loop(same as getGlobalLoop)
  const llvm::MachineInstr *MI = CD.ctx_mi.MI;
  const llvm::MachineBasicBlock *MBB = MI->getParent();
  const llvm::MachineFunction *MF = MBB->getParent();
  const llvm::MachineLoop *targetLoop = nullptr;
  std::vector<const llvm::MachineLoop *> tmp_loops;
  for (const llvm::MachineLoop *loop :
       TimingAnalysisPass::LoopBoundInfo->getAllLoops()) {
    if (MF == loop->getHeader()->getParent()) {
      if (loop->contains(MBB)) {
        tmp_loops.push_back(loop);

      } else {
        // 前继
        for (auto pred = loop->getHeader()->pred_begin();
             pred != loop->getHeader()->pred_end(); pred++) {
          if (*pred == MBB) {
            tmp_loops.push_back(loop);

            break;
          }
        }
        // 后继
        for (auto pred = loop->getHeader()->succ_begin();
             pred != loop->getHeader()->succ_end(); pred++) {
          if (*pred == MBB) {
            tmp_loops.push_back(loop);

            break;
          }
        }
      }
    }
    
  }
  for (auto &tmp_loop : tmp_loops) {
    bool tmp_flag = false;
    for (auto *Subloop : tmp_loop->getSubLoops()) {
      if (Subloop->contains(MBB)) {
        tmp_flag = true;
        break;
      } else {
        for (auto pred = Subloop->getHeader()->pred_begin();
             pred != Subloop->getHeader()->pred_end(); pred++) {
          if (*pred == MBB) {

            tmp_flag = true;
            break;
          }
        }
        for (auto pred = Subloop->getHeader()->succ_begin();
             pred != Subloop->getHeader()->succ_end(); pred++) {
          if (*pred == MBB) {

            tmp_flag = true;
            break;
          }
        }
      }
    }
    if (!tmp_flag) {
      targetLoop = tmp_loop;
      break;
    }
  }
  // 入栈所有同function的loop
  std::vector<std::pair<const llvm::MachineLoop *, bool>> res_loop_stack;
  const llvm::MachineLoop *tmp_loop = targetLoop;
  while (tmp_loop != nullptr) {
    TimingAnalysisPass::AbstractAddress tmp_aa = CD.data_addr; // diff
    std::pair<const llvm::MachineLoop *, bool> tmp_pair =
        std::make_pair(tmp_loop, loop2addr_isps[tmp_loop][tmp_aa]);
    res_loop_stack.push_back(tmp_pair);
    tmp_loop = tmp_loop->getParentLoop();
  }
  // 递归
  if (CD.ctx_mi.CallSites.size() != 0) {
    const llvm::MachineInstr *tmp_callsite = CD.ctx_mi.CallSites.back();
    std::vector<const llvm::MachineInstr *> tmpCS = CD.ctx_mi.CallSites;
    tmpCS.pop_back();
    CtxData tmpCD;
    CtxMI tmpCM; // diff
    tmpCM.MI = tmp_callsite;
    tmpCM.CallSites = tmpCS;
    tmpCD.ctx_mi = tmpCM;
    tmpCD.data_addr = CD.data_addr; // this is not changed
    std::vector<std::pair<const llvm::MachineLoop *, bool>> callers_ls =
        getGlobalLoopData(tmpCD);
    for (int i = 0; i < callers_ls.size(); i++) {
      res_loop_stack.push_back(callers_ls[i]);
    }
  }
  return res_loop_stack;
}

unsigned OurGraph::getExeCntPSI(CtxMI CM) {}

unsigned OurGraph::getExeCntPSD(CtxData CD) {}

std::vector<const llvm::MachineInstr *>
OurGraph::ctx_match_helper(const AddrCL &tmp_acl, bool isInstr) {
  auto tokenlist = tmp_acl.ctx.getTokenList();
  std::vector<const llvm::MachineInstr *> CallSites;
  for (const auto &tmptoken : tokenlist) { // got callsites
    if (tmptoken->getType() ==
        TimingAnalysisPass::PartitionTokenType::CALLSITE) {
      TimingAnalysisPass::PartitionTokenCallSite *cstoken =
          dynamic_cast<TimingAnalysisPass::PartitionTokenCallSite *>(tmptoken);
      if (!cstoken) {
        assert(0 && "fail to convert token into callsite token");
      }
      const llvm::MachineInstr *callsite = cstoken->getCallSite();
      CallSites.push_back(callsite);
    }
  }
  const llvm::MachineInstr *miptr = nullptr;
  if (isInstr) {
    auto itv = tmp_acl.address.getAsInterval();
    const TimingAnalysisPass::Address tmp_upper_cache_line =
        itv.upper() & ~(L2linesize - 1);
    const TimingAnalysisPass::Address tmp_lower_cache_line =
        itv.lower() & ~(L2linesize - 1);
    assert(tmp_lower_cache_line == tmp_upper_cache_line);
    miptr = TimingAnalysisPass::StaticAddrProvider->getMachineInstrByAddr(
        itv.lower());
  } else {
    miptr = TimingAnalysisPass::StaticAddrProvider->getMachineInstrByAddr(
        tmp_acl.MIAddr);
  }
  if (miptr->isCall() && !CallSites.empty()) {
    CallSites.pop_back();
  }
  return CallSites;
}

std::tuple<std::string, int>
OurGraph::get_entry_helper(const AddrCL &tmp_acl,
                           std::map<std::string, unsigned> &func2corenum1) {
  auto tokenlist = tmp_acl.ctx.getTokenList();
  std::string tmp_entry = "";
  int tmp_entry_corenum = -1;
  for (const auto &tmptoken : tokenlist) { // got callsites
    if (tmptoken->getType() ==
        TimingAnalysisPass::PartitionTokenType::FUNCALLEE) {
      if (tmp_entry == "") {
        TimingAnalysisPass::PartitionTokenFunCallee *cetoken =
            dynamic_cast<TimingAnalysisPass::PartitionTokenFunCallee *>(
                tmptoken);
        tmp_entry = cetoken->getCallee()->getName().str();
        tmp_entry_corenum = func2corenum1[tmp_entry]; // got corenum & entry
      }
    }
  }
  // assert(tmp_entry_corenum!=-1&&"every instr should have its entry");
  return std::make_pair(tmp_entry, tmp_entry_corenum);
}

void OurGraph::check_loop_stack(CL_info &cl_infor) {
  std::map<TimingAnalysisPass::AbstractAddress, bool> addr_in_pslist;
  for (auto &tmp_scope : cl_infor.AddrPSList) {
    for (auto &tmp_ps_acl : tmp_scope.second) {
      TimingAnalysisPass::AbstractAddress tmp_abs_addr = tmp_ps_acl.address;
      addr_in_pslist[tmp_abs_addr] = true;
    }
  }
  std::map<TimingAnalysisPass::AbstractAddress, bool> addr_in_loopstack;
  for (auto &tmp_func : Ceopinfo.ctxmi2ps_loop_stack) {
    for (auto &tmp_cm : tmp_func.second) {
      std::vector<std::pair<const llvm::MachineLoop *, bool>> tmp_st =
          tmp_cm.second;
      for (auto &tmp_loop : tmp_st) {
        if (tmp_loop.second == true) {
          TimingAnalysisPass::AbstractAddress tmp_abs_addr =
              TimingAnalysisPass::AbstractAddress(
                  TimingAnalysisPass::StaticAddrProvider->getAddr(
                      tmp_cm.first.MI));
          addr_in_loopstack[tmp_abs_addr] = true;
          break;
        }
      }
    }
  }
  for (auto &tmp_func : Ceopinfo.ctxdata2ps_loop_stack) {
    for (auto &tmp_aa : tmp_func.second) {
      std::vector<std::pair<const llvm::MachineLoop *, bool>> tmp_st =
          tmp_aa.second;
      for (auto &tmp_loop : tmp_st) {
        if (tmp_loop.second == true) {
          TimingAnalysisPass::AbstractAddress tmp_abs_addr = tmp_aa.first;
          addr_in_loopstack[tmp_abs_addr] = true;
          break;
        }
      }
    }
  }
  // Part1: 检查是否所有PSList中地址都有在loopstack的对应
  bool flag1 = false;
  std::vector<TimingAnalysisPass::AbstractAddress> no_match1;
  for (auto &tmp_pair : addr_in_pslist) {
    if (tmp_pair.second) {
      bool has_match = addr_in_loopstack[tmp_pair.first];
      if (has_match == false) {
        flag1 = true;
        no_match1.push_back(tmp_pair.first);
      }
    }
  }
  std::ofstream myfile1;
  std::string fileName1 = "check_loopstack1.txt";
  myfile1.open(fileName1, std::ios_base::app);
  for (auto &aa : no_match1) {
    myfile1 << aa << std::endl;
  }
  myfile1.close();
  // Part2: 检查是否所有loopstack中地址都有在PSList的对应
  bool flag2 = false;
  std::vector<TimingAnalysisPass::AbstractAddress> no_match2;
  for (auto &tmp_pair : addr_in_loopstack) {
    if (tmp_pair.second) {
      bool has_match = addr_in_pslist[tmp_pair.first];
      if (has_match == false) {
        flag2 = true;
        no_match2.push_back(tmp_pair.first);
      }
    }
  }
  std::string fileName2 = "check_loopstack2.txt";
  myfile1.open(fileName2, std::ios_base::app);
  for (auto &aa : no_match2) {
    myfile1 << aa << std::endl;
  }
  myfile1.close();
  // assert(flag1==false && "loop stack err1");
  // assert(flag2==false && "loop stack err2");
  // assert(flag1==false && "loop stack err1");
  // assert(flag2==false && "loop stack err2");
}