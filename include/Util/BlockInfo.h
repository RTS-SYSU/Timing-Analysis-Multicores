#ifndef BLOCK_INFO
#define BLOCK_INFO

#include "Options.h"

struct BlockInfo {

  unsigned address;
  int exe_cnt; // 执行次数
  int age;     // 年龄，非持久性块使用
  int cs_size; // 冲突集，持久性块专用
  int cap;     // 持久性块逐出最小cache数
  TimingAnalysisPass::dom::cache::Classification cl;
  BlockInfo() : cs_size(INT_MAX) {}
  BlockInfo(const BlockInfo &other)
      : address(other.address), exe_cnt(other.exe_cnt), age(other.age),
        cs_size(other.cs_size), cap(other.cap), cl(other.cl) {}
  BlockInfo(unsigned addr, int cnt, int a,
            TimingAnalysisPass::dom::cache::Classification c,
            int sz = INT_MAX) {
    this->address = addr;
    this->exe_cnt = cnt;
    this->age = a;
    this->cs_size = sz; // 这是一个注释
    this->cl = c;
    if (this->cs_size != INT_MAX) {
      this->cap = std::max(int(L2assoc - cs_size + 1), 0);
    } else {
      this->cap = -1; // 不持久的块cap为-1
    }
  }

  static unsigned getCachelineAddress(unsigned addr) {
    return addr & ~(L2linesize - 1);
  }

  bool operator<(
      const BlockInfo &a) const { // 辅助函数，用于set<BlockInfo> 与 alg3排序
    if (address != a.address)
      return address < a.address;
    else if (cap != a.cap)
      return cap < a.cap;
    else if (age != a.age)
      return age < a.age;
    return exe_cnt < a.exe_cnt;
  }
  bool operator==(const BlockInfo &a) const { // 辅助函数，用于set<BlockInfo>
    return this->address == a.address && this->age == a.age &&
           this->exe_cnt == a.exe_cnt && this->cs_size == a.cs_size &&
           this->cl == a.cl;
  }
};

typedef std::vector<BlockInfo> UR;
typedef std::vector<UR> Ceop;
typedef std::vector<Ceop> Ceops;

#endif
