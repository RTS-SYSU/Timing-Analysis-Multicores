#!/usr/bin/env python3

import os
from argparse import ArgumentParser
from pathlib import Path

def logger_info(msg: str):
    print(f'[*] {msg}')


def logger_success(msg: str):
    # change to green color
    print(f'[+] \033[92m{msg}\033[0m')


def logger_error(msg: str):
    # change to red color
    print(f'[-] \033[91m{msg}\033[0m')

def handle_run(args):
    # 运行的benchmarks所在文件夹。下述路径统一用绝对路径
    src_dir = Path(os.path.abspath(args.src))
    if not src_dir.exists():
        logger_error(f'Source directory {src_dir} does not exist')
        exit(1)

    if not src_dir.is_dir():
        logger_error(f'Source directory {src_dir} is not a directory')
        exit(1)

    # 每个bench
    subdirs = [name for name in os.listdir(src_dir)
           if os.path.isdir(os.path.join(src_dir, name))]
    for bench in subdirs: # name 形式如 ndes_matmult
        bench_d = str(src_dir) + "/" + bench
        # loop标注
        up_bd = str(src_dir) + "/" + bench + "/LoopAnnotations.csv"
        if not Path(up_bd).exists():
            logger_error(f'Upper loop file {up_bd} does not exist, please check the file exist')
            logger_error(f'If you want to generate the loop files, please use the -p flag')
            exit(1)
        # 运行入口
        cf = str(src_dir) + "/" + bench + "/CoreInfo.json"
        if not Path(cf).exists():
            logger_error(f'Core info file {cf} does not exist, please check the file name')
            exit(1)
        # 输出
        out_d = str(src_dir) + "/" + bench + "/build"
        if not Path(out_d).exists():
            logger_info(f'Creating output directory {out_d}')
            Path(out_d).mkdir(parents=True)
        if not Path(out_d).is_dir():
            logger_error(f'Output directory {out_d} is not a directory')
            exit(1)
        logger_success(f'All files exist, ready to run llvmta')

        command = [
            "llvmta",
            "-disable-tail-calls",
            "-float-abi=hard",
            "-mattr=-neon,+vfp2",
            "-O0",
            f"--ta-loop-bounds-file={up_bd}",
            f"--core-info={cf}",
        ]
        # 注意：在lab0脚本中我们硬编码了配置文件
        with open("options/lab0.txt", "r") as f:
            command += [f"{line.strip()}" for line in f]

        logger_info(f'Running llvmta with the following arguments:')
        logger_info(f'Upper loop file: {up_bd}')
        logger_info(f'Core info file: {cf}')
        logger_info(f'Number of cores: 2')

        logger_info(f'Compiling the source file to LLVM IR')
        stat = os.system(f'./compileBench {bench_d}')
    
        if stat != 0:
            logger_error(f'Failed to compile the source file to LLVM IR')
            exit(1)
        else:
            logger_success(f'Successfully compiled the source file to LLVM IR')

        logger_info(f'Running llvmta')
        logger_info(f'Using command: {" ".join(command)}')

        pwd = os.getcwd()
        os.chdir(out_d)
        # 运行
        stat = os.system(' '.join(command))
        if stat != 0:
            logger_error(f'Failed to run llvmta')
            exit(1)
        else:
            logger_success(f'Successfully ran llvmta')
            logger_info(f'source directory: {bench_d}')
            logger_info(f'Using output directory: {out_d}')

        os.chdir(pwd)

if __name__ == "__main__":
    parser = ArgumentParser('Run lab0')
    parser.add_argument('-s', '--src', type=str, required=True, help='The C source file directory, e.g. ./path/to/test')
    args = parser.parse_args()

    if os.system(f'./compileLlvmta') != 0:
        raise RuntimeError(f"Failed to compile LLVM-TA")

    handle_run(args)