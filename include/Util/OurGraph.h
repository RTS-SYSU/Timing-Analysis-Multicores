#include "Util/UrGraph.h"

#ifndef OUR_GRAPH
#define OUR_GRAPH
/// @brief 在UrGraph基础上提供OurMethod所需数据结构
struct CEOPinfo {
  CEOPinfo() {}
  CEOPinfo(std::map<unsigned, std::map<std::string, std::vector<CEOP>>> &ceops)
      : CEOPs(ceops) {}
  std::map<unsigned, std::map<std::string, std::vector<CEOP>>> CEOPs;
  // Must Data Access
  /// @brief  helper：存储ctxmi有哪些关联data访存(AbstractAddress格式)
  /// 可供Ourmethod使用
  std::map<std::string, // 初始化时记录了除exe_cnt外信息
           std::map<CtxMI, std::vector<AccessInfo>>>
      entry2ctxmi2datainfo;

  /// @brief  helper：存储ctxmi有哪些关联data访存(AbstractAddress格式)
  /// 可供Ourmethod使用
  /// FIXME 疑似冗余
  std::map<std::string,
           std::map<CtxMI, std::vector<TimingAnalysisPass::AbstractAddress>>>
      entry2ctxmi2data_absaddr;

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
};
class OurGraph : public UrGraph {
public:
  OurGraph(std::vector<std::vector<std::string>> &setc, CL_info &cl_infor,
           std::map<std::string, unsigned> &func2corenum1);

  CEOPinfo Ceopinfo;

  // PS Instr Access(暂时废弃)
  std::map<std::string, std::map<CtxMI, PSAccessInfo>> ctxmi2ps_ai;
  // PS Data Access(暂时废弃)
  std::map<std::string, std::map<CtxData, PSAccessInfo>> ctxdata2ps_ai;

private:
  // 从ctxmi_miai写入CEOPs
  void write_miai_ceops();
  void getDataExeCntMust();
  // ===== Persistence analysis =====
  // 仅用于输出
  std::map<const llvm::MachineLoop *, TimingAnalysisPass::PersistenceScope>
      loop2ps_scope;
  /// helper: PS Scope内有哪些持久性块地址？(AbsAddr版) 在get loop
  /// stack之前需要构建 此处包含了Instr和Data
  std::map<const llvm::MachineLoop *,
           std::map<TimingAnalysisPass::AbstractAddress, bool>>
      loop2addr_isps;
  std::map<std::string,
           std::map<TimingAnalysisPass::dom::cache::Classification, 
           std::pair<unsigned, unsigned>>>
      instr_cl_cnt; // for output
  std::map<std::string,
           std::map<TimingAnalysisPass::dom::cache::Classification, 
           std::pair<unsigned, unsigned>>>
      data_cl_cnt; // for output

  /// 使用CEOP信息构建loop_stack
  void build_loop_stack();
  /// @brief 用于给run()写ctxmi2ps_loop_stack，返回一条CtxMI的loop stack
  /// @param CM
  /// @return
  std::vector<std::pair<const llvm::MachineLoop *, bool>>
  getGlobalLoop(CtxMI CM, const CtxMI topCM);

  /// @brief 用于给run()写ctxdata2ps_loop_stack，
  /// 返回一条CtxMI的对应访存的loop stack
  /// @param CM
  /// @return
  std::vector<std::pair<const llvm::MachineLoop *, bool>>
  getGlobalLoopData(CtxData CD);

  /// @brief 计算PS块的执行次数，暂时不使用
  unsigned getExeCntPSI(CtxMI CM);
  /// @brief 计算PS块的执行次数，暂时不使用
  unsigned getExeCntPSD(CtxData CD);
  // ===== end Persistence analysis =====
  /// 打印函数，打印UR-CFG和ACL的Summary
  void print_info(
  CEOPinfo &Ceopinfo);
  void print_our_cfg(unsigned core, const std::string &function);
  /// @brief 从Context转化为CtxMI的Callsites
  /// @param tmp_acl 
  /// @return 
  std::vector<const llvm::MachineInstr *> 
    ctx_match_helper(const AddrCL &tmp_acl, bool isInstr);
  /// @brief 从Ctx获取某个指令的所属entry point
  /// @param tmp_acl 
  /// @param func2corenum1 
  /// @return 入口函数名，及其所在核心编号
  std::tuple<std::string, int> get_entry_helper
    (const AddrCL &tmp_acl, std::map<std::string, unsigned> &func2corenum1);
  /// @brief 测试loop_stack是否与AddrPSList一致
  void check_loop_stack(CL_info &cl_infor);
};

#endif