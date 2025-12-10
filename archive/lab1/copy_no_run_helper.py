#!/usr/bin/env python3

# Prompt: 请帮我写一个python脚本，搜索当前文件夹下所有子文件夹，若此子文件夹中不存在/build文件夹，则将此子文件夹复制到指定位置

import os
import shutil

def copy_dirs_without_build(src_root, dst_root):
    # 遍历src_root下的所有子目录
    for dirpath, dirnames, filenames in os.walk(src_root):
        # 只处理当前层，不递归进入子子文件夹
        if dirpath == src_root:
            for subdir in dirnames:
                subdir_path = os.path.join(src_root, subdir)
                build_path = os.path.join(subdir_path, 'build')
                
                # 检查是否存在 build 文件夹
                if not os.path.exists(build_path):
                    dst_path = os.path.join(dst_root, subdir)
                    print(f"Copying '{subdir_path}' to '{dst_path}' because 'build' folder not found.")
                    
                    # 确保目标路径不存在，防止冲突
                    if os.path.exists(dst_path):
                        shutil.rmtree(dst_path)
                    
                    shutil.copytree(subdir_path, dst_path)
                else:
                    print(f"Skipping '{subdir_path}' because 'build' folder exists.")

# ======= 用法示例 =======
if __name__ == "__main__":
    source_folder = "./"  # 当前文件夹
    destination_folder = "/workspaces/llvmta/our_experiment/lab1/0503_2c_zw2" 

    # 创建目标文件夹（如果不存在）
    if not os.path.exists(destination_folder):
        os.makedirs(destination_folder)

    copy_dirs_without_build(source_folder, destination_folder)
