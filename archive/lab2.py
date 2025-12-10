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
    script_path = os.getcwd()
    os.chdir(Path(script_path))
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
    sorted_subdirs = sorted(subdirs)
    for bench in sorted_subdirs: # name 形式如 ndes_matmult
        bench_d = str(src_dir) + "/" + bench
        # loop标注
        up_bd = str(src_dir) + "/" + bench + "/LoopAnnotations.csv"
        if not Path(up_bd).exists():
            logger_error(f'Upper loop file {up_bd} does not exist, please check the file exist')
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
            f"--ta-multicore-type={args.multicore}", # 多核方法
        ]
        # 注意：在lab0脚本中我们硬编码了配置文件
        with open(args.options, "r") as f:
            command += [f"{line.strip()}" for line in f]

        logger_info(f'Running llvmta with the following arguments:')
        logger_info(f'Upper loop file: {up_bd}')
        logger_info(f'Core info file: {cf}')
        logger_info(f'Number of cores: 2')

        logger_info(f'Compiling the source file to LLVM IR')
        # 编译llvmta和分析程序
        stat = os.system(f'./runBeforeGDB {bench_d}')
    
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

import os
from pathlib import Path
import psutil  # 需安装：pip install psutil
from multiprocessing import Pool, cpu_count
import signal
import resource

# 设置内存限制（单位：GB）
MAX_MEMORY_PER_PROCESS_GB = 2
MAX_THREAD_HYPER = 16

def set_memory_limit():
    """限制单个进程的内存使用"""
    memory_limit = MAX_MEMORY_PER_PROCESS_GB * 1024 ** 3  # 转换为字节
    resource.setrlimit(resource.RLIMIT_AS, (memory_limit, memory_limit))

import subprocess

def run_benchmark(args):
    """封装单个任务的执行逻辑"""
    src_dir_tmp, bench, args_multicore, options_file, script_path, assoc = args
    os.chdir(Path(script_path))
    src_dir = str(Path(os.path.abspath(src_dir_tmp)))
    try:
        set_memory_limit()

        bench_d = os.path.join(src_dir, bench)
        up_bd = os.path.join(bench_d, "LoopAnnotations.csv")
        cf = os.path.join(bench_d, "CoreInfo.json")
        out_d = os.path.join(bench_d, "build")

        logger_success(f'Debug: bench_d:{bench_d}')
        if not Path(up_bd).exists():
            raise FileNotFoundError(f"LoopAnnotations.csv not found in {bench_d}")
        if not Path(cf).exists():
            raise FileNotFoundError(f"CoreInfo.json not found in {bench_d}")
        if not Path(out_d).exists():
            Path(out_d).mkdir(parents=True)

        command = [
            "llvmta",
            "-disable-tail-calls",
            "-float-abi=hard",
            "-mattr=-neon,+vfp2",
            "-O0",
            f"--ta-loop-bounds-file={up_bd}",
            f"--core-info={cf}",
            f"--ta-multicore-type={args_multicore}",
            f"--ta-l2cache-assoc={assoc}",
        ]
        with open(options_file, "r") as f:
            command += [line.strip() for line in f]

        logger_success(f'Do the compile for {bench_d}')
        if os.system(f'./compileBench {bench_d}') != 0:
            raise RuntimeError(f"Failed to compile {bench_d}")
        
        os.chdir(out_d)

        logger_success(f'Running llvmta for {bench}')
        with open("cmd_out.txt", "w") as f_out:
            process = subprocess.Popen(
                command,
                stdout=subprocess.PIPE,
                stderr=subprocess.STDOUT,
                universal_newlines=True
            )
            for line in process.stdout:
                print(line, end="")    # 实时打印到终端
                f_out.write(line)       # 同时写到文件
            process.wait()

        if process.returncode != 0:
            raise RuntimeError(f"llvmta failed for {bench}")

        logger_success(f'Successfully ran llvmta with {bench}')
        return (bench, True, "Success")
    except Exception as e:
        return (bench, False, str(e))

def get_safe_process_count():
    """动态计算安全的进程数"""
    cpu_percent = psutil.cpu_percent(interval=1)
    mem_available = psutil.virtual_memory().available / (1024 ** 3)  # GB

    # 资源紧张时减少并发
    if cpu_percent > 80 or mem_available < 1:
        return 1
    return min(MAX_THREAD_HYPER, cpu_count())  # 默认不超过X个进程

def handle_runP(args):
    src_dir = args.src
    multicore = args.multicore
    options_file = args.options
    script_path = os.getcwd()
    assoc = args.assoc
    subdirs = [name for name in os.listdir(src_dir) 
               if os.path.isdir(os.path.join(src_dir, name))]
    sorted_subdirs = sorted(subdirs)
    task_args = [(src_dir, bench, multicore, options_file, script_path, assoc) for bench in sorted_subdirs]

    # 动态设置进程池大小
    max_processes = get_safe_process_count()
    print(f"Using {max_processes} parallel processes (CPU: {psutil.cpu_percent()}%, Mem: {psutil.virtual_memory().percent}%)")

    with Pool(processes=max_processes) as pool:
        results = pool.map(run_benchmark, task_args)

    # 打印结果
    for bench, success, msg in results:
        if success:
            print(f"[SUCCESS] {bench}: {msg}")
        else:
            print(f"[FAILED] {bench}: {msg}")

if __name__ == "__main__":
    parser = ArgumentParser('Run lab1')
    parser.add_argument('-s', '--src', type=str, required=True, help='The C source file directory, e.g. ./path/to/test')
    parser.add_argument('-m', "--multicore", choices=["zhangw", "liangy", "our", "none"], help="多核方法")
    parser.add_argument("-p", "--parallel", action="store_true", help="并行运行benchmark")
    parser.add_argument(
        '-ops', 
        '--options', 
        type=str, 
        required=True,
        help='The options file directory (default: ./default/path/to/test)'
    )
    parser.add_argument(
        '-a', 
        '--assoc', 
        type=int, 
        required=True,
        help='cache assoc'
    )
    args = parser.parse_args()

    if os.system(f'./compileLlvmta') != 0:
        raise RuntimeError(f"Failed to compile LLVM-TA")
    
    if args.parallel:
        # 开并行
        handle_runP(args)
    else:
        # 不开启并行
        handle_run(args) # fixme
