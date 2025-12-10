#!/bin/bash

TEST_NUM="0510"
# 第一条指令（顺序执行）
echo "===== 开始执行第一条指令 ====="
# ./lab2.py -s lab2/${TEST_NUM}_2c_ly_2 -p -ops options/lab2_l1_82.txt -m liangy -a 2
./post_run.py -s lab2/${TEST_NUM}_2c_ly_10 -t lab2/${TEST_NUM}_2c_ly_10 -m liangy
echo "===== 第一条指令执行完毕 ====="

# 剩余的8条指令（并行执行）
commands=(
    "./post_run.py -s lab2/${TEST_NUM}_2c_zw_10 -t lab2/${TEST_NUM}_2c_zw_10 -m zhangw"
    "./post_run.py -s lab2/${TEST_NUM}_2c_our_10 -t lab2/${TEST_NUM}_2c_our_10 -m our"
    "./post_run.py -s lab2/${TEST_NUM}_2c_ly_12 -t lab2/${TEST_NUM}_2c_ly_12 -m liangy"
    "./post_run.py -s lab2/${TEST_NUM}_2c_zw_12 -t lab2/${TEST_NUM}_2c_zw_12 -m zhangw"
    "./post_run.py -s lab2/${TEST_NUM}_2c_our_12 -t lab2/${TEST_NUM}_2c_our_12 -m our"
    "./post_run.py -s lab2/${TEST_NUM}_2c_ly_16 -t lab2/${TEST_NUM}_2c_ly_16 -m liangy"
    "./post_run.py -s lab2/${TEST_NUM}_2c_zw_16 -t lab2/${TEST_NUM}_2c_zw_16 -m zhangw"
    "./post_run.py -s lab2/${TEST_NUM}_2c_our_16 -t lab2/${TEST_NUM}_2c_our_16 -m our"
    "./post_run.py -s lab2/${TEST_NUM}_2c_ly_2 -t lab2/${TEST_NUM}_2c_zw_2 -m liangy"
    "./post_run.py -s lab2/${TEST_NUM}_2c_zw_2 -t lab2/${TEST_NUM}_2c_zw_2 -m zhangw"
    "./post_run.py -s lab2/${TEST_NUM}_2c_our_2 -t lab2/${TEST_NUM}_2c_our_2 -m our"
    "./post_run.py -s lab2/${TEST_NUM}_2c_ly_4 -t lab2/${TEST_NUM}_2c_ly_4 -m liangy"
    "./post_run.py -s lab2/${TEST_NUM}_2c_zw_4 -t lab2/${TEST_NUM}_2c_zw_4 -m zhangw"
    "./post_run.py -s lab2/${TEST_NUM}_2c_our_4 -t lab2/${TEST_NUM}_2c_our_4 -m our"
    "./post_run.py -s lab2/${TEST_NUM}_2c_ly_8 -t lab2/${TEST_NUM}_2c_ly_8 -m liangy"
    "./post_run.py -s lab2/${TEST_NUM}_2c_zw_8 -t lab2/${TEST_NUM}_2c_zw_8 -m zhangw"
    "./post_run.py -s lab2/${TEST_NUM}_2c_our_8 -t lab2/${TEST_NUM}_2c_our_8 -m our"
)

# 后台运行所有命令，输出重定向到日志文件
for i in "${!commands[@]}"; do
    eval "${commands[$i]}" > "lab2_post_$i.log" 2>&1 &
    echo "已启动任务 $i: ${commands[$i]}"
done

echo "所有任务已在后台运行，输出见 lab2_post_[0-8].log 文件"