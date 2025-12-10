#!/bin/bash

TEST_NUM="0515"
# 第一条指令（顺序执行）
echo "===== 开始执行第一条指令 ====="
./lab2.py -s lab2/${TEST_NUM}_2c_ly_2 -p -ops options/lab2_l1_82.txt -m liangy -a 2
echo "===== 第一条指令执行完毕 ====="

# 剩余的8条指令（并行执行）
commands=(
    "./lab2.py -s lab2/${TEST_NUM}_2c_zw_2 -p -ops options/lab2_l1_82.txt -m zhangw -a 2"
    "./lab2.py -s lab2/${TEST_NUM}_2c_our_2 -p -ops options/lab2_l1_82.txt -m our -a 2"
    "./lab2.py -s lab2/${TEST_NUM}_2c_ly_4 -p -ops options/lab2_l1_82.txt -m liangy -a 4"
    "./lab2.py -s lab2/${TEST_NUM}_2c_zw_4 -p -ops options/lab2_l1_82.txt -m zhangw -a 4"
    "./lab2.py -s lab2/${TEST_NUM}_2c_our_4 -p -ops options/lab2_l1_82.txt -m our -a 4"
    "./lab2.py -s lab2/${TEST_NUM}_2c_ly_8 -p -ops options/lab2_l1_82.txt -m liangy -a 8"
    "./lab2.py -s lab2/${TEST_NUM}_2c_zw_8 -p -ops options/lab2_l1_82.txt -m zhangw -a 8"
    "./lab2.py -s lab2/${TEST_NUM}_2c_our_8 -p -ops options/lab2_l1_82.txt -m our -a 8"
)

# 后台运行所有命令，输出重定向到日志文件
for i in "${!commands[@]}"; do
    eval "${commands[$i]}" > "lab2_output_$i.log" 2>&1 &
    echo "已启动任务 $i: ${commands[$i]}"
done

echo "所有任务已在后台运行，输出见 lab2_output_[0-8].log 文件"