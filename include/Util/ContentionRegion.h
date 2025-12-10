#ifndef CONTENTION_REGION
#define CONTENTION_REGION
#include "Util/BlockInfo.h"
#include <algorithm>
#include <cassert>
#include <climits>
#include <cstdint>
#include <fstream>
#include <future>
#include <iomanip>
#include <map>
#include <queue>
#include <set>
#include <stdio.h>
#include <string>
#include <tuple>
#include <utility>
#include <vector>

class CR {

public:
  std::vector<BlockInfo> PersistentBlock;
  std::vector<BlockInfo> NotPersistBlock;
  //   std::vector<BlockInfo> AllBlock;

  bool isempty() { return PersistentBlock.empty() && NotPersistBlock.empty(); }

  static std::pair<unsigned, unsigned> getTagAndIndex(unsigned addr) {
    unsigned blockNumber = addr / L2linesize;
    return std::make_pair(blockNumber / NN_SET, blockNumber % NN_SET);
  }

  void makeBigCR(Ceop ceop) {
    for (UR &ur : ceop) {
      for (BlockInfo &block : ur) {
        if (block.cl == TimingAnalysisPass::dom::cache::CL2_HIT ||
            block.cl == TimingAnalysisPass::dom::cache::CL2_PS) {
          PersistentBlock.emplace_back(block);
        }
      }
    }
  }

  // 非持久性块在给定二进制状态State后，经过指定UR后被逐出的最大次数
  int OutNumber_NotPersistBlock(int &State, std::vector<BlockInfo> SameBlock,
                                std::set<unsigned> &s,
                                std::vector<std::vector<UR>> &ur) {
    std::map<unsigned, std::set<unsigned>> setInfo;
    for (auto block : ur) { // 先求出UR中组的情况
      for (auto bloc : block) {
        for (auto blo : bloc) {
          if (blo.cl == TimingAnalysisPass::dom::cache::CL_HIT ||
              blo.cl == TimingAnalysisPass::dom::cache::CL_PS) {
            continue;
          }
          unsigned tag, index, addr = blo.address;
          std::tie(tag, index) = getTagAndIndex(addr);
          setInfo[index].insert(tag);
        }
      }
    }

    int ans = 0;
    for (int i = 0; i < NotPersistBlock.size(); ++i) { // 遍历剩余的非持久性块
      if (s.count(NotPersistBlock[i].address))
        continue;

      BlockInfo block = NotPersistBlock[i];
      int age = block.age;
      unsigned tag, index, addr = block.address;
      std::tie(tag, index) = getTagAndIndex(addr);

      if (age + setInfo[index].size() - setInfo[index].count(tag) > L2assoc) {
        for (int j = 0; j < SameBlock.size(); ++j)
          if (SameBlock[j].address == addr) {
            // 如果第j为已经是1就不反复逐出了
            if (!((State >> j) & 1)) {
              State |= (1 << j);
              ++ans;
            }
            break;
          }
      }
    }
    return ans;
  }

  int OutNumber_NotPersistBlock(int &State, std::vector<BlockInfo> SameBlock,
                                std::set<unsigned> &s, UR ur) {
    std::map<unsigned, std::set<unsigned>> setInfo;
    for (auto block : ur) { // 先求出UR中组的情况
      if (block.cl == TimingAnalysisPass::dom::cache::CL_HIT ||
          block.cl == TimingAnalysisPass::dom::cache::CL_PS) {
        continue;
      }
      unsigned tag, index, addr = block.address;
      std::tie(tag, index) = getTagAndIndex(addr);
      setInfo[index].insert(tag);
    }

    int ans = 0;
    for (int i = 0; i < NotPersistBlock.size(); ++i) { // 遍历剩余的非持久性块
      if (s.count(NotPersistBlock[i].address))
        continue;

      BlockInfo block = NotPersistBlock[i];
      int age = block.age;
      unsigned tag, index, addr = block.address;
      std::tie(tag, index) = getTagAndIndex(addr);

      if (age + setInfo[index].size() - setInfo[index].count(tag) > L2assoc) {
        for (int j = 0; j < SameBlock.size(); ++j)
          if (SameBlock[j].address == addr) {
            // 如果第j为已经是1就不反复逐出了
            if (!((State >> j) & 1)) {
              State |= (1 << j);
              ++ans;
            }
            break;
          }
      }
    }
    return ans;
  }

  // 去掉不access L2的块
  void cleanUR(std::vector<UR> &urs2c) {
    for (auto &ur : urs2c) {
      UR ur1;
      for (auto &block : ur) {
        if (block.cl == TimingAnalysisPass::dom::cache::CL_HIT ||
            block.cl == TimingAnalysisPass::dom::cache::CL_PS) {
          continue;
        }
        ur1.emplace_back(block);
      }
      ur = ur1;
    }
  }

  std::vector<std::priority_queue<int>> getpriorityQ(std::vector<UR> &urs2c,
                                                     unsigned index) {
    std::vector<std::priority_queue<int>> res;
    for (auto &ur : urs2c) {
      std::priority_queue<int> pq;
      for (auto &block : ur) {
        int index2, tag2;
        std::tie(tag2, index2) = getTagAndIndex(block.address);
        if (index2 == index) {
          // temp[tag2] += block.exe_cnt;
          pq.push(block.exe_cnt);
        }
      }
      res.push_back(pq);
    }

    return res;
  }

  std::pair<std::priority_queue<int>, int>
  getpriorityQ_add(std::vector<UR> &urs2c, unsigned index) {
    std::priority_queue<int> res;
    int res2 = 0;
    for (auto &ur : urs2c) {
      std::priority_queue<int> pq;
      std::map<int, int> temp1;
      for (auto &block : ur) {
        int index2, tag2;
        std::tie(tag2, index2) = getTagAndIndex(block.address);
        if (index2 == index) {
          temp1[tag2] += block.exe_cnt;
        }
      }
      for (auto &value : temp1) {
        pq.push(value.second);
      }
      std::priority_queue<int> temp;
      res2 += pq.size();
      while (!pq.empty()) {
        int x1 = pq.top();
        pq.pop();
        if (!res.empty()) {
          x1 += res.top();
          res.pop();
        }
        temp.push(x1);
      }
      while (!res.empty()) {
        temp.push(res.top());
        res.pop();
      }
      res = temp;
    }
    return std::make_pair(res, res2);
  }

  // // 持久性块在指定UR中被逐出次数
  // std::vector<int> OutNumber_PersistentBlock_old(std::vector<UR> &urs2c) {
  //   cleanUR(urs2c);
  //   std::map<unsigned, std::vector<BlockInfo>> mp;
  //   for (auto block :
  //        PersistentBlock) { //
  //        取出CR持久性块中所有addr相同的block以组成新的ur
  //     unsigned addr = block.address;
  //     if (mp.count(addr))
  //       mp[addr].push_back(block);
  //     else {
  //       std::vector<BlockInfo> tmp;
  //       tmp.push_back(block);
  //       mp[addr] = tmp;
  //     }
  //   }
  //   std::vector<int> outNs;
  //   for (auto it : mp) {
  //     std::sort(it.second.begin(),
  //               it.second.end()); // 按照cap排序，重载了运算符
  //     int index, tag;
  //     std::tie(tag, index) = getTagAndIndex(it.second.front().address);
  //     std::vector<std::priority_queue<int>> UrCntList =
  //         getpriorityQ(urs2c, index);
  //     for (auto block : it.second) {
  //       int outN = 0;
  //       int Legacy = 0;
  //       for (auto &UrCnt : UrCntList) {
  //         while (Legacy > 0) {
  //           UrCnt.push(1);
  //           Legacy--;
  //         }
  //         while (block.exe_cnt > 0) {
  //           if (UrCnt.size() < block.cap) // URcnt集合不足
  //             break;
  //           std::vector<int> changeVal;
  //           for (int i = 0; i < block.cap; ++i)
  //             changeVal.push_back(UrCnt.top() - 1), UrCnt.pop();

  //           for (int v : changeVal) {
  //             if (v > 0) {
  //               UrCnt.push(v);
  //             }
  //           }
  //           // if (changeVal.size())
  //           //   break; // 若有剩，说明URcnt中>0的cnt数量不足
  //           ++outN, --block.exe_cnt;
  //         }
  //         if (block.exe_cnt == 0) {
  //           break;
  //         }
  //         if (block.exe_cnt > 0 && UrCnt.size() < block.cap) {
  //           Legacy = UrCnt.size();
  //         }
  //       }
  //       outNs.push_back(outN);
  //     }
  //   }

  //   return outNs;
  // }

  int OutNumber_AllBlock(std::vector<UR> &urs2c) {
    std::vector<int> list = OutNumber_PersistentBlock_add_with_continue(urs2c);
    int res = 0;
    for (int num : list) {
      res += num;
    }
    return res;
  }

  // 持久性块在指定UR中被逐出次数
  std::vector<int>
  OutNumber_PersistentBlock_add_with_continue(std::vector<UR> &urs2c) {
    cleanUR(urs2c);
    std::map<unsigned, std::vector<std::pair<BlockInfo, int>>> mp;
    for (int i = 0; i < PersistentBlock.size();
         i++) { // 取出CR持久性块中所有addr相同的block以组成新的ur
      auto block = PersistentBlock[i];
      unsigned addr = block.address;
      if (mp.count(addr))
        mp[addr].push_back(std::make_pair(block, i));
      else {
        std::vector<std::pair<BlockInfo, int>> tmp;
        tmp.push_back(std::make_pair(block, i));
        mp[addr] = tmp;
      }
    }
    std::vector<int> outNs;
    outNs.resize(PersistentBlock.size());
    for (auto it : mp) {
      std::sort(it.second.begin(),
                it.second.end()); // 按照cap排序，重载了运算符
      int index, tag;
      std::tie(tag, index) = getTagAndIndex(it.second.front().first.address);
      std::priority_queue<int> addQueue;
      int temp;
      std::tie(addQueue, temp) = getpriorityQ_add(urs2c, index);
      for (auto block : it.second) {
        int outN = 0;
        while (block.first.exe_cnt > 0) {
          if (addQueue.size() < block.first.cap) // URcnt集合不足
            break;
          std::vector<int> changeVal;
          for (int i = 0; i < block.first.cap; ++i)
            changeVal.push_back(addQueue.top() - 1), addQueue.pop();

          for (int v : changeVal) {
            if (v > 0) {
              addQueue.push(v);
            }
          }
          ++outN, --block.first.exe_cnt;
        }
        int cap = block.first.cap;
        if (block.first.exe_cnt >= temp / cap) {
          outN += temp / cap;
          temp = 0;
        } else {
          outN += block.first.exe_cnt;
          block.first.exe_cnt = 0;
          temp -= block.first.exe_cnt * cap;
        }
        outNs[block.second] = outN;
      }
    }

    return outNs;
  }
  // 持久性块在指定UR中被逐出次数
  std::vector<int> OutNumber_PersistentBlock_add_with_continue(
      std::vector<std::vector<UR>> &urs2clist) {
    for (auto &urs2c : urs2clist)
      cleanUR(urs2c);
    std::map<unsigned, std::vector<std::pair<BlockInfo, int>>> mp;
    for (int i = 0; i < PersistentBlock.size();
         i++) { // 取出CR持久性块中所有addr相同的block以组成新的ur
      auto block = PersistentBlock[i];
      unsigned addr = block.address;
      if (mp.count(addr))
        mp[addr].push_back(std::make_pair(block, i));
      else {
        std::vector<std::pair<BlockInfo, int>> tmp;
        tmp.push_back(std::make_pair(block, i));
        mp[addr] = tmp;
      }
    }
    std::vector<int> outNs;
    outNs.resize(PersistentBlock.size());
    for (auto it : mp) {
      std::sort(it.second.begin(),
                it.second.end()); // 按照cap排序，重载了运算符
      int index, tag;
      std::tie(tag, index) = getTagAndIndex(it.second.front().first.address);
      std::priority_queue<int> addQueue;
      int temp;

      for (auto &urs2c : urs2clist) {
        std::priority_queue<int> addQueue1;
        int temp1;
        std::tie(addQueue1, temp1) = getpriorityQ_add(urs2c, index);
        temp += temp1;
        // 合并 pq2 到 pq1
        while (!addQueue1.empty()) {
          addQueue.push(addQueue1.top());
          addQueue1.pop();
        }
      }

      for (auto block : it.second) {
        int outN = 0;
        while (block.first.exe_cnt > 0) {
          if (addQueue.size() < block.first.cap) // URcnt集合不足
            break;
          std::vector<int> changeVal;
          for (int i = 0; i < block.first.cap; ++i)
            changeVal.push_back(addQueue.top() - 1), addQueue.pop();

          for (int v : changeVal) {
            if (v > 0) {
              addQueue.push(v);
            }
          }
          ++outN, --block.first.exe_cnt;
        }
        int cap = block.first.cap;
        if (block.first.exe_cnt >= temp / cap) {
          outN += temp / cap;
          temp = 0;
        } else {
          outN += block.first.exe_cnt;
          block.first.exe_cnt = 0;
          temp -= block.first.exe_cnt * cap;
        }
        outNs[block.second] = outN;
      }
    }

    return outNs;
  }

  // // 持久性块在指定UR中被逐出次数
  // std::vector<int>
  // OutNumber_PersistentBlock_add_with_(std::vector<UR> &urs2c) {
  //   cleanUR(urs2c);
  //   std::vector<int> outNs;
  //   for (auto &block : PersistentBlock) {
  //     int index, tag;
  //     std::tie(tag, index) = getTagAndIndex(block.address);
  //     std::priority_queue<int> addQueue;
  //     int temp;
  //     std::tie(addQueue, temp) = getpriorityQ_add(urs2c, index);
  //     int outN = 0;
  //     while (block.exe_cnt > 0) {
  //       if (addQueue.size() < block.cap) // URcnt集合不足
  //         break;
  //       std::vector<int> changeVal;
  //       for (int i = 0; i < block.cap; ++i)
  //         changeVal.push_back(addQueue.top() - 1), addQueue.pop();

  //       for (int v : changeVal) {
  //         if (v > 0) {
  //           addQueue.push(v);
  //         }
  //       }
  //       ++outN, --block.exe_cnt;
  //     }
  //     if (block.exe_cnt >= temp) {
  //       outN += temp;
  //       temp = 0;
  //     } else {
  //       outN += block.exe_cnt;
  //       temp -= block.exe_cnt;
  //     }
  //     outNs.push_back(outN);
  //   }
  //   return outNs;
  // }

  // 根据持久性块被逐出的情况更新Cr
  // //////////////////////////////////////////////////////
  void updataCrUr(std::vector<int> PersistOut, UR ur, UR &NextUr) {
    int mxOut = 0;
    for (int i = 0; i < PersistentBlock.size(); ++i) {
      int num = PersistOut[i];
      mxOut = std::max(
          mxOut,
          num); // 记录cr中单个持久性块被逐出的最大次数（即ur中block理论最高逐出次数）
      PersistentBlock[i].exe_cnt -= num;
    }
    for (auto block : ur) {
      if (block.exe_cnt >
          mxOut) // 先不考虑下一个ur和上一个ur有相同address的block的情况
        block.exe_cnt = 1, NextUr.push_back(block);
    }
  }
  int updateCR(std::vector<int> PersistOut, UR ur) {
    int res = 0;
    for (int i = 0; i < PersistentBlock.size(); ++i) {
      int num = PersistOut[i];
      assert((num <= 0 || num > PersistentBlock[i].exe_cnt) &&
             "算出不正常的逐出次数");
      PersistentBlock[i].exe_cnt -= num;
      bool temp = false;
      for (auto block : ur) {
        if (block.exe_cnt > num) {
          temp = true;
          break;
        }
      }
      res += temp;
    }
    return res;
  }
};

#endif