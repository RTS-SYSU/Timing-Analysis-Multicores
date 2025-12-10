#!/usr/bin/env python3
# flake8:noqa

import os
import argparse
import csv
from collections import defaultdict, OrderedDict

def parse_rwinfo(filepath):
    """解析 RWInfo.txt 文件"""
    stats = defaultdict(lambda: defaultdict(lambda: defaultdict(int)))
    with open(filepath, 'r') as f:
        for line in f:
            parts = line.strip().split()
            if len(parts) >= 4:
                func = parts[0]
                access_type = parts[1]
                category = parts[2]
                count = int(parts[3])
                stats[func][access_type][category] = count
    return stats

def parse_result_txt(filepath, m_method):
    """解析 Result.txt 文件"""
    intra_results = {}  # 存储 intra 执行时间
    inter_results = {}  # 存储 inter 干扰执行时间
    
    with open(filepath, 'r') as f:
        if m_method == "liangy" or m_method == "none":
            funcs = []
            times = []
            for line in f:
                parts = line.strip().split()
                if len(parts) == 3 and parts[1] == "intra":
                    funcs.append(parts[0])
                    times.append(int(parts[2]))
            if len(funcs)<2:
                print(f"{filepath} not enough function in Result.txt") 
            else:      
                if funcs[0] not in inter_results:
                    inter_results[funcs[0]] = {}
                if funcs[1] not in inter_results:
                    inter_results[funcs[1]] = {}
                inter_results[funcs[0]][funcs[1]] = times[0]
                inter_results[funcs[1]][funcs[0]] = times[1]
        else:
            for line in f:
                parts = line.strip().split()
                if len(parts) == 3 and parts[1] == "intra":
                    # 格式: func intra time
                    func = parts[0]
                    time = int(parts[2])
                    intra_results[func] = time
                elif len(parts) == 4 and parts[1] == "inter":
                    # 格式: func1 inter func2 time
                    func1 = parts[0]  # 被干扰函数
                    func2 = parts[2]  # 干扰函数
                    time = int(parts[3])
                    
                    if func1 not in inter_results:
                        inter_results[func1] = {}
                    inter_results[func1][func2] = time
            
    
    return intra_results, inter_results

def parse_statistics_txt(filepath):
    """解析 Statistics.txt 文件"""
    stats = {
        'complete_analysis': 0,
        'intra_times': {},  # 存储函数的intra分析时间
        'inter_times': {}   # 存储函数间的inter分析时间
    }
    
    current_measurement = None
    current_id = None
    
    with open(filepath, 'r') as f:
        for line in f:
            line = line.strip()
            
            if line == '<measurement>':
                current_measurement = {}
            elif line == '</measurement>' and current_id:
                # 处理完成的测量数据
                if current_id == 'Complete Analysis':
                    stats['complete_analysis'] = current_measurement.get('time', 0)
                elif '_intra' in current_id:
                    # 提取函数名并存储intra时间
                    func_name = current_id.replace('_intra', '')
                    stats['intra_times'][func_name] = current_measurement.get('time', 0)
                # elif '_inter' in current_id:
                #     # 格式为 "func1_func2_inter"，表示func1被func2干扰
                #     parts = current_id.split('_')
                #     if len(parts) >= 3 and parts[-1] == 'inter':
                #         func1 = parts[0]  # 被干扰函数
                #         func2 = parts[1]  # 干扰函数
                        
                #         if func1 not in stats['inter_times']:
                #             stats['inter_times'][func1] = {}
                        
                #         stats['inter_times'][func1][func2] = current_measurement.get('time', 0)
                
                elif '_inter' in current_id:
                    # 检查是否以 "_inter" 结尾
                    if current_id.endswith('_inter'):
                        # 移除末尾的 "_inter"
                        functions_part = current_id[:-6]
                        
                        # 查找 "_main_" 模式，这应该能区分两个函数名
                        main_separator = "_main_"
                        separator_index = functions_part.find(main_separator)
                        
                        if separator_index != -1:
                            # 格式为 "name1_main_name2_main_inter"
                            func1 = functions_part[:separator_index + 5]  # 包含 "_main"
                            func2 = functions_part[separator_index + 6:]  # 从第二个函数名开始
                            
                            if func1 not in stats['inter_times']:
                                stats['inter_times'][func1] = {}
                            
                            stats['inter_times'][func1][func2] = current_measurement.get('time', 0)

                current_id = None
            elif line.startswith('<id>') and line.endswith('</id>'):
                current_id = line[4:-5]  # 提取<id>和</id>之间的内容
            elif line.startswith('<time>') and line.endswith('</time>'):
                current_measurement['time'] = float(line[6:-7])  # 提取时间值
    
    return stats

def scan_directory(root_dir, m_method):
    """扫描目录并收集所有统计信息"""
    all_stats = defaultdict(lambda: defaultdict(lambda: defaultdict(int)))
    intra_times = {}  # 存储所有函数的 intra 执行时间
    inter_times = {}  # 存储所有函数的 inter 干扰执行时间
    analysis_times = defaultdict(dict)
    # 初始化一个空的统计数据结构来保存所有 Statistics.txt 的数据
    all_stat_data = {
        'complete_analysis': [],  # 存储所有完整分析时间的列表
        'intra_times': defaultdict(list),  # 存储所有 intra 分析时间的列表，按函数名索引
        'inter_times': defaultdict(lambda: defaultdict(list))  # 存储所有 inter 分析时间的列表，按两个函数名索引
    }
    
    # 收集所有函数名
    all_functions = set()
    
    for subdir in os.listdir(root_dir):
        subdir_path = os.path.join(root_dir, subdir)
        if not os.path.isdir(subdir_path):
            continue
        
        build_dir = os.path.join(subdir_path, "build")
        if not os.path.exists(build_dir):
            continue
        
        # RWInfo
        rwinfo_path = os.path.join(build_dir, "RWInfo.txt")
        if os.path.exists(rwinfo_path):
            stats = parse_rwinfo(rwinfo_path)
            for func in stats:
                all_functions.add(func)
                for access_type in stats[func]:
                    for category in stats[func][access_type]:
                        all_stats[func][access_type][category] += stats[func][access_type][category]
        
        # Result
        result_path = os.path.join(build_dir, "Result.txt")
        if os.path.exists(result_path):
            intra_results, inter_results = parse_result_txt(result_path, m_method)
            
            # 添加所有函数到函数集合
            for func in intra_results:
                all_functions.add(func)
            
            for func in inter_results:
                all_functions.add(func)
                for interfering_func in inter_results[func]:
                    all_functions.add(interfering_func)
            
            # 更新 intra 执行时间
            for func, time in intra_results.items():
                if func in intra_times:
                    # 如果函数已存在，取平均值或最新值，这里选择最新值
                    intra_times[func] = time
                else:
                    intra_times[func] = time
            
            # 更新 inter 干扰执行时间
            for func, interfering_funcs in inter_results.items():
                if func not in inter_times:
                    inter_times[func] = {}
                
                for interfering_func, time in interfering_funcs.items():
                    inter_times[func][interfering_func] = time

        # Statistics
        stat_path = os.path.join(build_dir, "Statistics.txt")
        if os.path.exists(stat_path):
            try:
                stat_times = parse_statistics_txt(stat_path)
                
                # 记录完整分析时间
                if 'complete_analysis' in stat_times:
                    all_stat_data['complete_analysis'].append(stat_times['complete_analysis'])
                
                # 记录每个函数的 intra 分析时间
                for func, time in stat_times['intra_times'].items():
                    all_functions.add(func)
                    all_stat_data['intra_times'][func].append(time)
                
                # 记录每对函数的 inter 分析时间
                for func1, interfering_funcs in stat_times['inter_times'].items():
                    all_functions.add(func1)
                    for func2, time in interfering_funcs.items():
                        all_functions.add(func2)
                        all_stat_data['inter_times'][func1][func2].append(time)
                
            except Exception as e:
                print(f"解析 {stat_path} 出错: {e}")
                continue
        
        # 计算平均值作为最终结果
    # 可以根据需要修改为其他聚合方式（如最大值、最小值等）
    stat_data = {
        'complete_analysis': sum(all_stat_data['complete_analysis']) / len(all_stat_data['complete_analysis']) if all_stat_data['complete_analysis'] else 0,
        'intra_times': {},
        'inter_times': {}
    }
    
    # 计算 intra 时间的平均值
    for func, times in all_stat_data['intra_times'].items():
        stat_data['intra_times'][func] = sum(times) / len(times) if times else 0
    
    # 计算 inter 时间的平均值
    for func1, interfering_funcs in all_stat_data['inter_times'].items():
        if func1 not in stat_data['inter_times']:
            stat_data['inter_times'][func1] = {}
        
        for func2, times in interfering_funcs.items():
            stat_data['inter_times'][func1][func2] = sum(times) / len(times) if times else 0

    return all_stats, intra_times, inter_times, all_functions, stat_data

def generate_markdown(stats, output_file):
    """生成 Markdown 表格"""
    with open(output_file, 'w') as f:
        f.write("# 访存统计汇总\n\n")
        f.write("| 函数名 | 访问类型 | Hit | L2Hit | L2PS | L2Miss |\n")
        f.write("|--------|----------|-----|-------|------|--------|\n")
        
        for func in sorted(stats.keys()):
            for access_type in sorted(stats[func].keys()):
                hits = stats[func][access_type].get('Hit', 0)
                l2hits = stats[func][access_type].get('L2Hit', 0)
                l2pss = stats[func][access_type].get('L2PS', 0)
                l2misses = stats[func][access_type].get('L2Miss', 0)
                
                f.write(f"| {func} | {access_type} | {hits} | {l2hits} | {l2pss} | {l2misses} |\n")

def generate_interference_csv(intra_times, inter_times, all_functions, output_file_interference, output_file_total, output_file_intra):
    """生成干扰矩阵CSV和总执行时间CSV"""
    # 将函数名排序以保持一致的顺序
    functions = sorted(all_functions)
    
    # 生成仅包含干扰时间的CSV
    with open(output_file_interference, 'w', newline='') as f:
        writer = csv.writer(f)
        # 写入表头（第一行是空的，然后是所有函数名）
        header = [''] + functions
        writer.writerow(header)
        
        # 写入每一行数据
        for func1 in functions:
            row = [func1]  # 第一列是函数名
            for func2 in functions:
                if func1 == func2:
                    # 对角线为0（自己不干扰自己）
                    row.append(0)
                elif func1 in inter_times and func2 in inter_times[func1]:
                    # 存在干扰数据
                    row.append(inter_times[func1][func2])
                else:
                    # 没有干扰数据
                    row.append(0)
            writer.writerow(row)
    
    # 生成包含干扰时间+intra时间的CSV
    with open(output_file_total, 'w', newline='') as f:
        writer = csv.writer(f)
        # 写入表头
        header = [''] + functions
        writer.writerow(header)
        
        # 写入每一行数据
        for func1 in functions:
            row = [func1]  # 第一列是函数名
            for func2 in functions:
                if func1 == func2:
                    # 对角线是函数自己的intra执行时间
                    row.append(intra_times.get(func1, 0))
                elif func1 in inter_times and func2 in inter_times[func1]:
                    # 存在干扰数据，加上intra执行时间
                    row.append(inter_times[func1][func2] + intra_times.get(func1, 0))
                else:
                    # 没有干扰数据，但仍添加intra执行时间
                    row.append(intra_times.get(func1, 0))
            writer.writerow(row)

    # 生成intra时间的CSV
    with open(output_file_intra, 'w', newline='') as f:
        writer = csv.writer(f)
        # 写入表头
        header = [''] + functions
        writer.writerow(header)
        
        # 写入每一行数据
        for func1 in functions:
            row = [func1]  # 第一列是函数名
            for func2 in functions:
                if func1 == func2:
                    # 对角线是函数自己的intra执行时间
                    row.append(intra_times.get(func1, 0))
                elif func1 in inter_times and func2 in inter_times[func1]:
                    # 存在干扰数据，加上intra执行时间
                    row.append(intra_times.get(func1, 0))
                else:
                    # 没有干扰数据，但仍添加intra执行时间
                    row.append(intra_times.get(func1, 0))
            writer.writerow(row)

def generate_statistics_csv(stats, all_functions, output_file_inter, output_file_total):
    """生成分析时间的干扰矩阵CSV和总时间CSV"""
    intra_times = stats['intra_times']
    inter_times = stats['inter_times']
    
    # 将函数名排序以保持一致的顺序
    functions = sorted(all_functions)
    
    # 生成仅包含inter分析时间的CSV
    with open(output_file_inter, 'w', newline='') as f:
        writer = csv.writer(f)
        # 写入表头
        header = [''] + functions
        writer.writerow(header)
        
        # 写入每一行数据
        for func1 in functions:
            row = [func1]  # 第一列是函数名
            for func2 in functions:
                if func1 == func2:
                    # 对角线为0（自己不分析自己的干扰）
                    row.append(0)
                elif func1 in inter_times and func2 in inter_times[func1]:
                    # 存在干扰分析数据
                    row.append(inter_times[func1][func2])
                else:
                    # 没有干扰分析数据
                    row.append(0)
            writer.writerow(row)
    
    # 生成包含inter分析时间+双方intra时间的CSV
    with open(output_file_total, 'w', newline='') as f:
        writer = csv.writer(f)
        # 写入表头
        header = [''] + functions
        writer.writerow(header)
        
        # 写入每一行数据
        for func1 in functions:
            row = [func1]  # 第一列是函数名
            for func2 in functions:
                if func1 == func2:
                    # 对角线是函数自己的intra分析时间
                    row.append(intra_times.get(func1, 0))
                elif func1 in inter_times and func2 in inter_times[func1]:
                    # 存在干扰分析数据，加上两个函数的intra分析时间
                    inter_time = inter_times[func1][func2]
                    func1_intra = intra_times.get(func1, 0)
                    func2_intra = intra_times.get(func2, 0)
                    row.append(inter_time + func1_intra + func2_intra)
                else:
                    # 没有干扰分析数据，仅添加两个函数的intra分析时间
                    func1_intra = intra_times.get(func1, 0)
                    func2_intra = intra_times.get(func2, 0)
                    row.append(func1_intra + func2_intra)
            writer.writerow(row)

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="后处理")
    parser.add_argument('-s', '--src', type=str, required=True, help='源文件目录，例如 ./path/to/test')
    parser.add_argument('-t', '--out', type=str, required=True, help='输出文件目录，例如 ./path/to/output')
    parser.add_argument('-m', "--multicore", choices=["zhangw", "liangy", "our", "none"], help="多核方法")
    args = parser.parse_args()
    
    root_directory = args.src
    output_dir = args.out
    
    if not os.path.isdir(root_directory):
        print(f"错误: 目录 '{root_directory}' 不存在")
        exit(1)
    
    # 确保输出目录存在
    os.makedirs(output_dir, exist_ok=True)
    
    # 定义输出文件路径
    output_md = os.path.join(output_dir, "rwinfo_summary.md")
    output_interference_csv = os.path.join(output_dir, "wceet.csv")
    output_total_csv = os.path.join(output_dir, "total_wcet.csv")
    output_intra_csv = os.path.join(output_dir, "intra_wcet.csv")
    output_stat_inter_csv = os.path.join(output_dir, "wceet_runtime.csv")
    output_stat_total_csv = os.path.join(output_dir, "total_runtime.csv")
    
    # 扫描目录获取统计信息
    all_stats, intra_times, inter_times, all_functions, stat_data = scan_directory(root_directory, args.multicore)
    
    # 生成 Markdown 文件
    generate_markdown(all_stats, output_md)
    
    # 生成两个Result执行时间CSV矩阵
    generate_interference_csv(intra_times, inter_times, all_functions, 
                             output_interference_csv, output_total_csv, 
                             output_intra_csv)
    
    # 寻找并解析第一个有效的Statistics.txt文件，用于生成分析时间CSV
    # stat_data = None
    # for subdir in os.listdir(root_directory):
    #     subdir_path = os.path.join(root_directory, subdir)
    #     if not os.path.isdir(subdir_path):
    #         continue
        
    #     build_dir = os.path.join(subdir_path, "build")
    #     if not os.path.exists(build_dir):
    #         continue
        
    #     stat_path = os.path.join(build_dir, "Statistics.txt")
    #     if os.path.exists(stat_path):
    #         try:
    #             stat_data = parse_statistics_txt(stat_path)
    #             # 将分析中发现的函数添加到all_functions集合
    #             for func in stat_data['intra_times']:
    #                 all_functions.add(func)
    #             for func1 in stat_data['inter_times']:
    #                 all_functions.add(func1)
    #                 for func2 in stat_data['inter_times'][func1]:
    #                     all_functions.add(func2)
    #             break  # 找到一个有效的Statistics.txt就跳出
    #         except Exception as e:
    #             print(f"解析 {stat_path} 出错: {e}")
    #             continue
    
    # 如果找到有效的Statistics.txt，生成分析时间CSV
    if stat_data:
        generate_statistics_csv(stat_data, all_functions, 
                               output_stat_inter_csv, output_stat_total_csv)
        print(f"- 分析干扰矩阵: {output_stat_inter_csv}")
        print(f"- 分析总时间矩阵: {output_stat_total_csv}")
    
    print(f"统计完成，结果已保存到:")
    print(f"- RWInfo 汇总: {output_md}")
    print(f"- 执行干扰矩阵: {output_interference_csv}")
    print(f"- 执行总时间矩阵: {output_total_csv}")
    print(f"- 单核时间矩阵: {output_intra_csv}")