#!/usr/bin/env python3

# Prompt: 给我一个python脚本，递归寻找文件夹下包含指定字符串的且名为`cmd_out.txt`文件

import os

# 要搜索的根目录
root_dir = '/workspaces/llvmta/our_experiment/lab2/0515_2c_ly_2'  # <-- 修改为你的根目录

# 目标文件名和目标内容
target_filename = 'cmd_out.txt'
# target_content = 'llvmta: /workspaces/llvmta/include/Util/Ourmethod.h:147: void OurM::insert_Triple(OurM::UR&, const CtxData&, AccessInfo&, std::string): Assertion `CMI_CL.x - sum >= 1 && "逻辑错误"\' failed.'
target_content = 'Stack dump:' # 找bug
# target_content = 'ceopDfs_it' # 找指定bug

def find_files_with_content(root_dir, target_filename, target_content):
    matching_files = []
    for dirpath, dirnames, filenames in os.walk(root_dir):
        if target_filename in filenames:
            filepath = os.path.join(dirpath, target_filename)
            try:
                with open(filepath, 'r', encoding='utf-8', errors='ignore') as f:
                    content = f.read()
                    if target_content in content:
                        matching_files.append(filepath)
            except Exception as e:
                print(f"无法读取文件 {filepath}，错误：{e}")
    return matching_files

# 执行搜索
matches = find_files_with_content(root_dir, target_filename, target_content)

# 输出结果
print("找到以下包含目标内容的文件：")
for match in matches:
    print(match)
