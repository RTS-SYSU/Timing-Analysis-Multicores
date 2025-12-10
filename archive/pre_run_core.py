#!/usr/bin/env python3
# flake8:noqa
import os
import shutil
import itertools
import argparse
from pathlib import Path
import json

def collect_c_h_files(src_folder):
    """收集文件夹下的所有 .c 和 .h 文件的完整路径"""
    c_and_h_files = []
    for root, _, files in os.walk(src_folder):
        for file in files:
            if file.endswith('.c') or file.endswith('.h'):
                full_path = os.path.join(root, file)
                c_and_h_files.append(full_path)
    return c_and_h_files

        
def copy_files_to_dest(files, dest_folder):
    """复制指定文件到目标文件夹中（保留路径结构）"""
    for file_path in files:
        # 计算目标路径（保留相对路径结构）
        rel_path = os.path.relpath(file_path, start=os.path.dirname(os.path.commonprefix(files)))
        dest_path = os.path.join(dest_folder, rel_path)
        
        # 确保目标目录存在
        os.makedirs(os.path.dirname(dest_path), exist_ok=True)
        
        # 复制文件
        shutil.copy2(file_path, dest_path)

def merge_csv(file1, files2, output_file):
    with open(file1, 'r') as f1:
        lines1 = f1.readlines()

    # 保留第一行注释头，只取 file1 的
    header = lines1[0].strip()
    body1 = lines1[1:]

    merged_body = body1

    # 遍历 files2 数组，依次读取并去掉 header
    for file2 in files2:
        with open(file2, 'r') as f2:
            lines2 = f2.readlines()
            merged_body.extend(lines2[1:])  # 去掉 header

    # 写入输出文件
    with open(output_file, 'w') as out:
        out.write(header + '\n')
        out.writelines(merged_body)


def read_selected_bench(file_path):
    strings = set()
    try:
        with open(file_path, 'r', encoding='utf-8') as file:
            for line in file:
                # 去除行尾的换行符，并添加到 set
                strings.add(line.strip())
    except FileNotFoundError:
        print(f"benchmark的select文件 '{file_path}' 不存在！")
    return strings

def main(input_dir, output_dir, sb_dir):
    bash_dir = str(Path(os.path.abspath(input_dir)))
    if not os.path.isdir(input_dir):
        raise ValueError(f"输入路径 '{input_dir}' 不是有效的目录")

    os.makedirs(output_dir, exist_ok=True)

    subdirs = [d for d in os.listdir(input_dir) 
               if os.path.isdir(os.path.join(input_dir, d))]
    subdirs_sorted = sorted(subdirs)

    counter = 0
    # 过滤掉不跑的样例
    selected_bench = ["adpcm_dec","binarysearch","fir2dim","fmref","huff_dec","iir",
                      "insertsort","jfdctint","ndes","st","statemate","audiobeam","cjpeg_transupp",
                      "dijkstra","g723_enc","gsm_dec","gsm_enc","h264_dec","lift","md5",
                      "minver","petrinet","pm","powerwindow","prime","sha"]
    interferers = [
        "adpcm_dec", "cover", "fir2dim", 
        "huff_dec", "iir", "ndes", "st"
    ]
    
    interferersF = interferers[:1]   
    
    # for a, b in itertools.permutations(subdirs, 2): # a_b 和 b_a 都要
    for a in selected_bench:
        
        combo_name = f"{a}"
        combo_output_path = os.path.join(output_dir, combo_name)
        os.makedirs(combo_output_path, exist_ok=True)

        # 拼凑源代码
        a_files = collect_c_h_files(os.path.join(input_dir, a))
        copy_files_to_dest(a_files, combo_output_path)
        
        for b in interferersF:
            b_files = collect_c_h_files(os.path.join(input_dir, b))
            copy_files_to_dest(b_files, combo_output_path)

        
        # 构建 files2 列表
        files2 = [os.path.join(bash_dir, f"{b}/LoopAnnotations.csv") for b in interferersF]

        # 制作LoopAnnotations.csv(换行拼入即可)
        merge_csv(bash_dir + f"/{a}/LoopAnnotations.csv", files2,
                    output_dir + f"/{combo_name}/LoopAnnotations.csv")
        
        # 制作CoreInfo.json(函数入口名为`文件夹名_main`)
        functions = [f"{x}_main" for x in [a] + interferersF]
        data = [
            {
                "core": i,
                "tasks": [
                    {"function": fname}
                ]
            }
            for i, fname in enumerate(functions)
        ]
        with open(output_dir + f"/{combo_name}/CoreInfo.json", "w") as f:
            json.dump(data, f, indent=4)
        counter += 1

    print(f"已生成 {counter} 个组合文件夹至：{output_dir}")

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="组合子文件夹中的 .c/.h 文件并输出到组合目录中")
    parser.add_argument('-s', '--src', type=str, required=True, help='The source file directory, e.g. ./path/to/test')
    parser.add_argument('-t', '--out', type=str, required=True, help='The destination file directory, e.g. ./path/to/test')
    # parser.add_argument('-b', '--bench', type=str, required=True, help='The selected bench file directory, e.g. ./path/to/test')
    parser.add_argument(
        '-b', 
        '--bench', 
        type=str, 
        default="",  # 默认值
        help='The bench file directory (default: ./default/path/to/test)'
    )
    args = parser.parse_args()

    main(args.src, args.out, args.bench)