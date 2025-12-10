# 实验脚本指南

在`our_experiment`文件夹下  

```bash
.
├── bench_bug.md # 一些benchmark报错的记录
├── compileBench # 依赖脚本：编译benchmark
├── compileLlvmta # 依赖脚本：编译分析工具
├── gdb_bench # debug可用
│   └── sha_test # 专门debug sha
├── lab0 # lab0即benchmark的访存情况分析
│   ├── kernel
│   └── sequential
├── lab0.md
├── lab0.py # lab0脚本
├── lab1 # lab1即nxn表格
│   ├── kernel2c_ly
│   ├── kernel2c_our
│   └── kernel2c_zw
├── lab1.py # lab1脚本
├── libraries # bench依赖库
├── no_main_bench # 自己改的删掉main函数的tacle-bench，权宜之计
│   ├── all_kernel.txt
│   ├── kernel
│   ├── kernel2c
│   ├── selected_ly.txt
│   ├── selected_zw.txt # .txt表示要跑的测例，传给pre_run.py
│   └── sha_test_0426.txt
├── options # LLVM-TA配置参数，需要把路径传给脚本
│   ├── lab0.txt
│   ├── lab1.txt
│   └── README.md
├── post_run.py # 后处理，从/bench/build收集汇总数据
├── pre_run.py # 预处理，如两两配对构造15x15个样例
├── README.md
├── requirements.txt # 运行脚本所需库(并行)
├── runBeforeGDB # abort
└── tacle-bench # 04.05标的tacle-bench
    ├── app
    ├── checkBenchmark.sh
    ├── CoreInfo.json
    ├── kernel
    ├── parallel
    ├── README.md
    ├── sequential
    └── test
```

## 0709

```sh
mkdir -p lab1/0709_zw && ./pre_run.py -s no_main_bench/0709_selected -t lab1/0709_zw -b no_main_bench/0709_selected.txt
./pre_run.py -s no_main_bench/0709_selected -t lab1/0709_our -b no_main_bench/0709_selected.txt
./pre_run.py -s no_main_bench/kernel -t lab1/kernel2c_zw -b no_main_bench/selected_zw.txt
```

 

sequential/adpcm_enc出现 Assertion `0 && "We have unhandled pseudo instructions"' failed.直接跳过了先  
epic, huff_enc, susan  

```sh
./lab1.py -s lab1/0709_zw -p -ops options/lab1_l1_82.txt -m zhangw
./lab1.py -s lab1/0709_our -p -ops options/lab1_l1_82.txt -m our
```
./lab1.py -s lab1/papa_zw -p -ops options/lab1_l1_82.txt -m zhangw
./lab1.py -s lab1/papa_our -p -ops options/lab1_l1_82.txt -m our
```sh
./post_run.py -s lab1/0712outputzw -t lab1/0712outputzw -m zhangw
./post_run.py -s lab1/0711output -t lab1/0711output -m our
```
```sh
find lab1/0709_our_copy -type d -name '*md5*' -exec mv {} lab1/our_md5/ \;
find lab1/0709_our_copy -type d -name '*md5*' -exec mv {} lab1/zw_md5/ \;
```
find lab1/0709_our_copy -type d -name '*md5*' -exec cp -r {} lab1/our_md5/ \;
find lab1/0709_our_copy -type d -name '*md5*' -exec cp -r {} lab1/zw_md5/ \;



```sh
./lab1.py -s lab1/0728_8core_zw -p -ops options/8core.txt -m zhangw
./lab1.py -s lab1/0728_8core_our -p -ops options/8core.txt -m our

./lab1.py -s lab1/0728_6core_zw -p -ops options/6core.txt -m zhangw
./lab1.py -s lab1/0728_6core_our -p -ops options/6core.txt -m our

./lab1.py -s lab1/0728_4core_zw -p -ops options/4core.txt -m zhangw
./lab1.py -s lab1/0728_4core_our -p -ops options/4core.txt -m our

./lab1.py -s lab1/0728_2core_zw -p -ops options/2core.txt -m zhangw
./lab1.py -s lab1/0728_2core_our -p -ops options/2core.txt -m our

```



## 运行指令

1. pip 安装requirements.txt中的库

2. lab1.py脚本支持负载均衡，多核运行  
可更改线程数上限  
```py
MAX_THREAD_HYPER = 12
```
`-p`参数会开启并行，`-m`指定运行多核方法，`-s`是`nxn`个benchmark的路径。运行脚本会在`nxn`个benchmark文件夹中生成`/build`文件夹，这是`LLVM-TA`输出的所在位置  
```bash
./lab1.py -s lab1/kernel2c_zw -ops options/lab1_l1_161.txt -m zhangw
./lab1.py -s lab1/kernel2c_zw -p -ops options/lab1_l1_161.txt -m zhangw
./lab1.py -s lab1/kernel2c_ly -p -ops options/lab1_l1_161.txt -m liangy
./lab1.py -s lab1/kernel2c_our -p -ops options/lab1_l1_161.txt -m our
./lab1.py -s lab1/kernel2c_our -p -ops options/lab1_l1_161.txt -m none
```
3. 如果`/lab1`中的benchmark组合不合适，可以用预处理脚本，自行构造benchmark  

脚本不负责对已有文件夹清空，若需要记得先删除`/lab1`中对应文件夹，`-s`指定m个benchmark，`-t`指定生成的两两配对benchmark目的地址，`-b`从m个里筛出`n`个想跑的(需要填写对应的.txt)，最终生成`nx(n-1)/2`个组合(目前没有考虑本地和远程是相同的task)  
```bash
./pre_run.py -s no_main_bench/kernel -t lab1/kernel2c_zw -b no_main_bench/selected_zw.txt
./pre_run.py -s no_main_bench/kernel -t lab1/kernel2c_ly -b no_main_bench/selected_ly.txt
./pre_run.py -s no_main_bench/kernel -t lab1/kernel2c_our -b no_main_bench/selected_our.txt
已生成 91 个组合文件夹至：lab1/kernel2c
```

注意： `liangy`和`none`运行，`intra_wcet.csv`是总的结果(intra+inter)

4. `post_run.py`将`/benchmark/build`中的输出提取汇总到.csv中，包括运行时间和分析值      
```bash
./post_run.py -s lab1/kernel2c_ly -t lab1/kernel2c_ly -m liangy
./post_run.py -s lab1/kernel2c_zw -t lab1/kernel2c_zw -m zhangw
```

## 功能详解

### 概述

- 预处理，提供`pre_run.py`脚本，读入一个**脚本参数**文件夹`f`，对文件夹内的子文件夹两两配对生成可供LLVM-TA运行的格式，如  
```bash
./f2c/ndes_matmult  
-- CoreInfo.json
-- LoopAnnotations.csv  
-- *.c
-- *.h
```
主要是实现.json构造和bound文件拼接，以源代码合并  

- 为了方便修改配置参数，设置一个文件夹`/options`放置配置文件，供脚本读取。配置文件中放置不同的cache相连度参数(实验2)。运行方法不由此处指定，由脚本**参数指定**即`liangy` `zhangw`或者`our`  

- 脚本如需要传递路径参数，可以传相对路径，脚本实际处理会转化为绝对路径

- 运行脚本的**输出**  
```bash
./tacle-bench/kernel/*/build/ # 所在文件夹
-- Statistics.txt # 资源占用
-- Result.txt # 数值结果
-- RWInfo.txt # 访存信息
```

### 输入详解

`options_421.txt`由脚本逐行读入    
```bash
--ta-muarch-type=inorder
--ta-strict=false
--ta-memory-type=separatecaches
# 下面这两条的路径由脚本参数获取，文件名字先hardcoded了
--ta-loop-bounds-file='/workspaces/llvmta/testcases/test/LoopAnnotations.csv'
--core-info='/workspaces/llvmta/testcases/test/CoreInfo.json'
--core-numbers=2
--shared-cache-persistence-analysis=true
--time-anomaly=true
--ta-multicore-type=liangy
--ta-l2cache-persistence=elementwise
--ta-dcache-persistence=elementwise
--ta-icache-persistence=elementwise
--ta-dcache-linesize=16
--ta-dcache-assoc=2
--ta-dcache-nsets=16
--ta-icache-linesize=16
--ta-icache-assoc=2
--ta-icache-nsets=16
--ta-l2cache-linesize=16
--ta-l2cache-assoc=4
--ta-l2cache-nsets=32
--ta-mem-latency=100
--ta-L2-latency=10
--ta-num-callsite-tokens=-1
--ta-num-callee-tokens=-1
--ta-num-loop-tokens=-1
--ta-loop-peel=0
-debug-only=
optimized.ll
```

### 输出详解

`Result.txt`  
```txt
ndes intra 10086
ndes inter matmult 114514
matmult intra 520
matmult inter ndes 666
```

`Statistics.txt`需要关注四个时间    
```xml
<measurement>
<id>Complete Analysis</id>
<memory>1973800</memory>
<time>153.437897</time>
</measurement>
<measurement>
<id>ndes_matmult_inter</id>
<memory>1973800</memory>
<time>1.950016</time>
</measurement>
<measurement>
<id>matmult_ndes_inter</id>
<memory>1973800</memory>
<time>1.950016</time>
</measurement>
<measurement>
<id>matmult_intra</id>
<memory>1973800</memory>
<time>27.063081</time>
</measurement>
<measurement>
<id>ndes_intra</id>
<memory>1973800</memory>
<time>124.424576</time>
</measurement>
```

`RWInfo.txt`  

```txt
ndes instr Hit 12306  
[ndes/matmult] [instr/data] [Hit/L2Hit/L2Miss/PS/L2PS] number 
```  

注意PS和Miss是包含关系，这个需要后期处理  
这里可以输出cache参数  

> 如何理解目前的L1PS呢？它会约束L2访存的发生次数  
> 目前输出没有L1PS，因为我没有把L1PS从L1Miss改过来

## 补充说明

### 排除的benchmark
这部分bench因故难以运行，先排除，后续有空再来看  

**kernel**  
- 有递归`UrGraph`无法支持  
```txt
recursion
```

- saarland单核运行慢  
```bash
bitonic
cubic
fac
md5 # 还是太慢了
quicksort
bitcount
```

saarland单核会报错？  
```txt
minver
```

自动分析出天文数字loopbound，然后inf  
```txt
st
```

- LLVM-TA ILP一步卡住  
```txt
jfdctint
fft
```

- LLVM-TA报错，具体错误见`bench_bug.md`  
```txt
prime
pm
sha
```

- LLVM-TA liangy的ILP卡住
```txt
fir2dim_main
```

- `bsort_isqrt`钉子户，ZW和OUR都很久，虽然不报错  

### TODO

- [ ] 检查哪些文件夹里缺少文件，便于快速定位benchmark   
- [ ] 检查loopbound有问题会报manual和auto不同的benchmark  

## malardalen bench

- 直接修改入口`main`函数为`taskname_main`  
- `des`无`main`也无对应`.h`故删除
- `recursion`删除  
- 无足够时间标注所有的benchmark，先筛选出有价值的部分
- expint, edn有大量的L2访存，结合在表中结果较好的选出下述bench

```bash
expint
edn
fdct
fir
qurt
ndes
adpcm
```


## 实验日志
使用者可以不看这部分  

### 实验0

- 先快速测量各任务的cache访存特性，跑一个干扰任务就可以了,且需要注意访存特性与cache配置相关,这个需要用`zhangw`来跑，因为这里有完整的包含PS的打印    

**预处理**  
- 手动删除了main函数得到`no_main_bench`  
- `pre_run.py`预处理完
- 写了个`lab0.py`来跑

**运行**  
`lab0.py`使用方法  
```bash
./pre_run.py -s no_main_bench/kernel -t kernel2c # 脚本已修改，此指令abort
# 手动挪一组到./lab0文件夹
./lab0.py -s lab0
```


**后处理**  

采用脚本`post_run.py`从`RWInfo.txt`获取所需数据  
- [ ] 收集运行时间等信息
- [ ] 收集分析值  

```bash
./post_run.py -s lab0
```

### 实验1

- 并发支持:由于需要跑三种方法的15x15两两配对，需要并行运行。

并发集成入`run.py`，`./run.py zhangw`一次会启动`15x15`个任务  
如何支持负载均衡和合理调度？  

- 先通过一个.txt读入需要配对的benchmark

```bash
/lab1
-- /kernel
-- /kernel2c
```

**预处理**

记得先删除/lab1中对应文件夹
```bash
./pre_run.py -s no_main_bench/kernel -t lab1/kernel2c_zw -b no_main_bench/selected_zw.txt
./pre_run.py -s no_main_bench/kernel -t lab1/kernel2c_ly -b no_main_bench/selected_ly.txt
./pre_run.py -s no_main_bench/kernel -t lab1/kernel2c_our -b no_main_bench/selected_our.txt
已生成 91 个组合文件夹至：lab1/kernel2c
```

**运行**  
`run.py`的编写，并行运行  
- [ ] 修改lab0为并行，验证，再迁移到lab1。设置一个option, 默认不开并行      

```bash
./lab1.py -s lab1/kernel2c_zw -ops options/lab1.txt -m zhangw
./lab1.py -s lab1/kernel2c_zw -p -ops options/lab1_l1_82.txt -m zhangw
./lab1.py -s lab1/kernel2c_ly -p -ops options/lab1.txt -m liangy
./lab1.py -s lab1/kernel2c_our -p -ops options/lab1.txt -m our
```

> 目前并行编译有问题，运行也会卡死    
> lms的问题吗？  
> 直接全start了靠    
这是因为`os.chdir()`后`AbsPath`会变  

> filterbank的bound出现manual对不上auto  

> ZW的bsort_isqrt 跑巨久，差点想杀进程了  

> LY的不知道在干啥，卡死了也不知道卡在哪？

**后处理**  
`post_run.py`加入结果和运行时间的汇总    
对每个多核方法都要跑一次  
```bash
./post_run.py -s lab1/kernel2c_zw -t lab1/kernel2c_zw
./post_run.py -s lab1/kernel2c_ly -t lab1/kernel2c_ly
./post_run.py -s lab1/kernel2c_our -t lab1/kernel2c_our
```

### 实验2

调整cache相连度的大小  


### 4.21

先跑一发cache访存特性，从kernel的29个进行初步筛选出15个    
先跑一发张伟配置的各方法表现  

### 4.27
#### 跑liangy
1. 需要一个none作为对比

```bash
./lab1.py -s lab1/kernel2c_none -p -ops options/lab1.txt -m none
./post_run.py -s lab1/kernel2c_none -t lab1/kernel2c_none -m none # 增加了ly的特殊后处理
```

可以在`lab1/kernel2c_none`下看到几个汇总的`.csv`  

2. `liangy`和`none`运行，注意`wceet.csv`是总的结果

```bash
./lab1.py -s lab1/kernel2c_ly -p -ops options/lab1.txt -m liangy
./post_run.py -s lab1/kernel2c_ly -t lab1/kernel2c_ly -m liangy
```

可以在`lab1/kernel2c_ly`下看到几个汇总的`.csv`  

#### 跑sequential  

1. 在`no_main_bench`放置sequential，并先手动去除`main`函数  

2. 预处理  

```bash
./pre_run.py -s no_main_bench/sequential -t lab0/sequential -b no_main_bench/all_sequential.txt  
```

3. 运行lab0  
还需要先删剩`1 x 22`  
此脚本可以求得访存信息(求访存信息需要开zhangw)，并且简单验出跑不出来的benchmark  

```bash
./lab0.py -s lab0/sequential  
# 或者用lab1.py也可以跑
./lab1.py -s lab0/sequential -p -ops options/lab1.txt -m zhangw
./post_run.py -s lab0/sequential -t lab0/sequential -m zhangw
```

4. 运行lab1

```bash
./pre_run.py -s no_main_bench/sequential -t lab1/sequential2c_zw -b no_main_bench/sequential_zw.txt # 根据lab0填写
./lab1.py -s lab1/kernel2c_zw -p -ops options/lab1.txt -m zhangw
./post_run.py -s lab1/sequential2c_zw -t lab1/sequential2c_zw
```

### 4.28

#### sequential的benchmark情况

- `adpcm_enc`标注报错
- 遵照`tacle-bench`的说明先排除了一些没标注的bench

> 跑出一个trajan报错  

#### zhangw benchmark

fir matmult fdct cnt expint qurt edn ludcmp ns adpcm st ndes bsort100  
有的只有ndes st bsort100 adpcm  

尝试运行zhangw的benchmark  


#### 针对测试用例的debug

st


## 0505

```bash
./pre_run.py -s no_main_bench/0502_selected/ -t lab1/0505_2c_zw -b no_main_bench/0505_selected.txt
./lab1.py -s lab1/0505_2c_zw -p -ops options/lab1_0505.txt -m zhangw
./post_run.py -s lab1/0505_2c_ly -t lab1/0505_2c_ly -m liangy
```

跑28加了kernel  
```bash
expint # 不错，但跟edn有bug，ILP卡住，但edn确实很异常，有的our>zhangw
sha # 报错
matrix1
lms
isqrt
filterbank  # 全0
cosf # 可取，但是跟adpcm形成our>zw的
pm
prime
```

这堆玩意，除了expint在2 8下都是全0，cosf也还行但是有bug

## 0505的assoc

```bash
./lab1.py -s lab2/0505_2c_zw -p -ops options/0505_assoc_4.txt -m zhangw
./lab1.py -s lab2/0505_2c_ly -p -ops options/0505_assoc_4.txt -m liangy
./lab1.py -s lab2/0505_2c_our -p -ops options/0505_assoc_4.txt -m our
```

```bash
./post_run.py -s lab2/0505_2c_ly -t lab2/0505_2c_ly -m liangy
./post_run.py -s lab2/0505_2c_zw -t lab2/0505_2c_zw -m zhangw
./post_run.py -s lab2/0505_2c_our -t lab2/0505_2c_our -m our
```
再写个lab2脚本好一点

```bash
./pre_lab2.py -s no_main_bench/0502_selected/ -t lab2/0507_2c_ly -b no_main_bench/0506_selected.txt
./pre_lab2.py -s no_main_bench/0502_selected/ -t lab2/0507_2c_zw -b no_main_bench/0506_selected.txt
./pre_lab2.py -s no_main_bench/0502_selected/ -t lab2/0507_2c_our -b no_main_bench/0506_selected.txt
```

```bash
./lab2.py -s lab2/0507_2c_ly_2 -p -ops options/lab2_l1_82.txt -m liangy -a 2
./lab2.py -s lab2/0507_2c_zw_2 -p -ops options/lab2_l1_82.txt -m zhangw -a 2
./lab2.py -s lab2/0507_2c_our_2 -p -ops options/lab2_l1_82.txt -m our -a 2
```

```bash
./lab2.py -s lab2/0507_2c_ly_4 -p -ops options/lab2_l1_82.txt -m liangy -a 4
./lab2.py -s lab2/0507_2c_zw_4 -p -ops options/lab2_l1_82.txt -m zhangw -a 4
./lab2.py -s lab2/0507_2c_our_4 -p -ops options/lab2_l1_82.txt -m our -a 4
```

```bash
./lab2.py -s lab2/0507_2c_ly_8 -p -ops options/lab2_l1_82.txt -m liangy -a 8
./lab2.py -s lab2/0507_2c_zw_8 -p -ops options/lab2_l1_82.txt -m zhangw -a 8
./lab2.py -s lab2/0507_2c_our_8 -p -ops options/lab2_l1_82.txt -m our -a 8
```
 
合成为  
```bash
./run_lab2.sh
```

`Control + End`键可以直接跳转到文件结尾  

```bash
./post_run.py -s lab2/0507_2c_ly_2 -t lab2/0507_2c_ly_2 -m liangy
./post_run.py -s lab2/0507_2c_zw_2 -t lab2/0507_2c_zw_2 -m zhangw
./post_run.py -s lab2/0507_2c_our_2 -t lab2/0507_2c_our_2 -m our
```

```bash
./post_run.py -s lab2/0507_2c_ly_4 -t lab2/0507_2c_ly_4 -m liangy
./post_run.py -s lab2/0507_2c_zw_4 -t lab2/0507_2c_zw_4 -m zhangw
./post_run.py -s lab2/0507_2c_our_4 -t lab2/0507_2c_our_4 -m our
```

```bash
./post_run.py -s lab2/0507_2c_ly_8 -t lab2/0507_2c_ly_8 -m liangy
./post_run.py -s lab2/0507_2c_zw_8 -t lab2/0507_2c_zw_8 -m zhangw
./post_run.py -s lab2/0507_2c_our_8 -t lab2/0507_2c_our_8 -m our
```


```bash
./post_run.sh
```