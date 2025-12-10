#!/usr/bin/env python3
# flake8:noqa
# Prompt: 请给我一个python脚本，实现下述功能
# 某目录下有一堆文件夹，它们的命名格式为`日期_2c_算法简称_参数`,如`0510_2c_ly_2`文件夹中存在几个.csv文件，包括`intra_wcet.csv`和`wceet.csv`。现在对所有的日期为0510的子文件夹进行如下操作，先找到所有相同参数的不同算法的文件夹，在一个新建的`summary.csv`中输出一行`assoc=参数`并换行,如`assoc=2`，然后找到这个参数下算法简称为`ly`的文件夹中的`intra_wcet.csv`中的内容，删除intra_wcet.csv原表格的偶数行和第4、6、8列，复制到`summary.csv`并换行，然后分别再复制算法简称为`zw`和`our`的文件夹中的`wceet.csv`到`summary.csv`并有相同的删除偶数行和4、6、8列并换行。然后对所有参数分别处理。
# Prompt有误，已经手动修改

import os
import re
import pandas as pd
from glob import glob

def process_directories(root_dir):
    # 查找所有符合条件的文件夹 (日期为0510)
    pattern = re.compile(r'0514_2c_([a-z]+)_(\d+)')
    dirs = [d for d in os.listdir(root_dir) 
            if os.path.isdir(os.path.join(root_dir, d)) and pattern.match(d)]
    
    if not dirs:
        print("未找到符合条件的文件夹")
        return
    
    # 按参数分组
    param_groups = {}
    for d in dirs:
        match = pattern.match(d)
        algo, param = match.groups()
        if param not in param_groups:
            param_groups[param] = {}
        param_groups[param][algo] = os.path.join(root_dir, d)
    
    # 创建汇总文件
    summary_path = os.path.join(root_dir, "lab2_summary.csv")
    with open(summary_path, 'w') as f:
        f.write("")  # 清空文件
        sorted_params = sorted(param_groups.keys(), key=lambda x: int(x))
    
    for param in sorted_params:
        process_param_group(param, param_groups[param], summary_path)
    # 处理每个参数组
    # for param, algos in param_groups.items():
    #     process_param_group(param, algos, summary_path)
    
    print(f"汇总文件已生成: {summary_path}")

def process_param_group(param, algos, summary_path):
    # 写入参数行
    with open(summary_path, 'a') as f:
        f.write(f"assoc={param}\n")
    
    # 处理ly算法的intra_wcet.csv
    if 'ly' in algos:
        with open(summary_path, 'a') as f:
            f.write(f"ly_total\n")
        ly_dir = algos['ly']
        intra_path = os.path.join(ly_dir, 'intra_wcet.csv')
        # print(f"{param} {algos}")
        # print(intra_path)
        if os.path.exists(intra_path):
            process_and_append(intra_path, summary_path)
    
    # 处理zw算法的wceet.csv
    if 'zw' in algos:
        with open(summary_path, 'a') as f:
            f.write(f"zw_wceet\n")
        zw_dir = algos['zw']
        wceet_path = os.path.join(zw_dir, 'wceet.csv')
        if os.path.exists(wceet_path):
            process_and_append(wceet_path, summary_path)
    
    # 处理our算法的wceet.csv
    if 'our' in algos:
        with open(summary_path, 'a') as f:
            f.write(f"our_wceet\n")
        our_dir = algos['our']
        wceet_path = os.path.join(our_dir, 'wceet.csv')
        if os.path.exists(wceet_path):
            process_and_append(wceet_path, summary_path)
        # TODO 增加一个intra
        with open(summary_path, 'a') as f:
            f.write(f"intra\n")
        our_dir = algos['our']
        intra_path = os.path.join(our_dir, 'intra_wcet.csv')
        if os.path.exists(intra_path):
            process_and_append(intra_path, summary_path)

    # TODO 直接在此计算比值
    
    # 添加空行分隔不同参数组
    with open(summary_path, 'a') as f:
        f.write("\n")

def process_and_append(input_path, output_path):
    # 读取CSV文件
    df = pd.read_csv(input_path)
    
    # 删除前3行数据
    df = df.iloc[3:]

    # 根据列数进行列删除操作
    if len(df.columns) == 6:
        df = df.drop(df.columns[[3, 5]], axis=1)
    elif len(df.columns) == 5:
        df = df.drop(df.columns[4], axis=1)
    
    # 追加到汇总文件
    with open(output_path, 'a') as f:
        df.to_csv(f, index=False)
        f.write("\n")  # 添加换行符

if __name__ == "__main__":
    # 指定根目录
    root_directory = "/workspaces/llvmta/our_experiment/lab2"  # 当前目录，可修改为实际目录
    process_directories(root_directory)