#!/usr/bin/env python3

# Prompt: 给我一个python脚本，实现查找在一个指定文件夹中寻找其不包含名为/build的文件夹的子文件夹
import os

def find_immediate_subfolders_without_build(parent_dir):
    """
    查找父目录下所有直接子文件夹（深度1），且这些子文件夹自身不包含/build子文件夹
    :param parent_dir: 要搜索的父目录
    :return: 符合条件的子文件夹路径列表
    """
    valid_subfolders = []

    # 获取父目录下的所有直接子文件夹（深度1）
    for subfolder in os.listdir(parent_dir):
        subfolder_path = os.path.join(parent_dir, subfolder)
        
        # 确保是文件夹且不包含/build子文件夹
        if os.path.isdir(subfolder_path):
            has_build = 'build' in os.listdir(subfolder_path)
            if not has_build:
                valid_subfolders.append(subfolder_path)

    return valid_subfolders

if __name__ == "__main__":
    # 设置要搜索的目录
    search_dir = "/workspaces/llvmta/our_experiment/lab1/0506_2c_our"
    if not os.path.isdir(search_dir):
        print(f"错误: 目录 {search_dir} 不存在!")
        exit(1)

    # 查找并打印结果
    result = find_immediate_subfolders_without_build(search_dir)
    print("\n符合条件的子文件夹（不包含/build）:")
    for folder in result:
        print(folder)