#!/usr/bin/env python3
# flake8:noqa
# Prompt: 请给我一个python脚本，实现下述功能
# 某目录下有一堆文件夹，它们的命名格式为`日期_2c_算法简称_参数`,如`0510_2c_ly_2`文件夹中存在几个.csv文件，包括`intra_wcet.csv`和`wceet.csv`。现在对所有的日期为0510的子文件夹进行如下操作，先找到所有相同参数的不同算法的文件夹，在一个新建的`summary.csv`中输出一行`assoc=参数`并换行,如`assoc=2`，然后找到这个参数下算法简称为`ly`的文件夹中的`intra_wcet.csv`中的内容，删除intra_wcet.csv原表格的偶数行和第4、6、8列，复制到`summary.csv`并换行，然后分别再复制算法简称为`zw`和`our`的文件夹中的`wceet.csv`到`summary.csv`并有相同的删除偶数行和4、6、8列并换行。然后对所有参数分别处理。
# Prompt有误，已经手动修改

import os
import re
import pandas as pd
from glob import glob
import csv

import pandas as pd
import seaborn as sns
import matplotlib.pyplot as plt
from matplotlib.ticker import ScalarFormatter

import matplotlib.scale as mscale
import matplotlib.transforms as mtransforms
import numpy as np

import subprocess
# import os
import sys
import time

def run_command(cmd, output_file):
    """运行命令并将输出重定向到文件"""
    with open(output_file, 'w') as f:
        process = subprocess.Popen(cmd, shell=True, stdout=f, stderr=subprocess.STDOUT)
    return process

def process_directories(root_dir):
    pattern = re.compile(r'([a-zA-Z]+\d*)_(\d+)')
    # pattern = re.compile(r'0515_2c_([a-z]+)_(\d+)')
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
    summary_path = os.path.join(root_dir, "Fig7_summary.csv")
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
    if 'Liang2012' in algos:
        with open(summary_path, 'a') as f:
            f.write(f"Liang2012\n")
        ly_dir = algos['Liang2012']
        intra_path = os.path.join(ly_dir, 'intra_wcet.csv')
        # print(f"{param} {algos}")
        # print(intra_path)
        if os.path.exists(intra_path):
            process_and_append_ly(intra_path, summary_path)
    
    # 处理zw算法的wceet.csv
    if 'Zhang2022' in algos:
        with open(summary_path, 'a') as f:
            f.write(f"Zhang2022\n")
        zw_dir = algos['Zhang2022']
        wceet_path = os.path.join(zw_dir, 'wceet.csv')
        if os.path.exists(wceet_path):
            process_and_append(wceet_path, summary_path)
    
    # 处理our算法的wceet.csv
    if 'Our' in algos:
        with open(summary_path, 'a') as f:
            f.write(f"Proposed\n")
        our_dir = algos['Our']
        wceet_path = os.path.join(our_dir, 'wceet.csv')
        if os.path.exists(wceet_path):
            process_and_append(wceet_path, summary_path)
        # TODO 增加一个intra
        with open(summary_path, 'a') as f:
            f.write(f"intra\n")
        our_dir = algos['Our']
        intra_path = os.path.join(our_dir, 'intra_wcet.csv')
        if os.path.exists(intra_path):
            process_and_append(intra_path, summary_path)

    # TODO 直接在此计算比值
    
    # 添加空行分隔不同参数组
    with open(summary_path, 'a') as f:
        f.write("\n")

def process_and_append_ly(input_path, output_path):
    # 读取CSV文件
    df = pd.read_csv(input_path)
    
    # 删除前3行数据
    df = df.iloc[3:]

    # 根据列数进行列删除操作
    if len(df.columns) == 6:
        df = df.drop(df.columns[[3, 5]], axis=1)
    elif len(df.columns) == 5:
        df = df.drop(df.columns[4], axis=1)
    
    df = df.drop(df.columns[0], axis=1)
    # 追加到汇总文件
    with open(output_path, 'a') as f:
        df.to_csv(f, index=False)
        # f.write("\n")  # 添加换行符


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
    
    df = df.drop(df.columns[0], axis=1)
    # 追加到汇总文件
    with open(output_path, 'a') as f:
        df.to_csv(f, index=False)
        # f.write("\n")  # 添加换行符

def draw_ndes(root_d):
    file_path = os.path.join(root_d, "lab2_summary.csv")
    # file_path = 'lab2_summary.csv'
    ndes_results = read_custom_csv(file_path)

    # 打印结果
    print("ndes_results = [")
    for i, result in enumerate(ndes_results):
        print(f'"""\n{result}\n""",')
    print("]")

    inter_intra_0513(ndes_results, 'ndes')

def read_custom_csv(file_path):
    with open(file_path, 'r') as file:
        content = file.read()
    
    # 按空行分割不同associativity的部分
    sections = re.split(r'\n\s*\n', content)
    sections = [s for s in sections if s.strip()]
    
    results = []
    
    for section in sections:
        lines = section.strip().split('\n')
        assoc = int(lines[0].split('=')[1])
        
        # 提取方法名和数据
        methods = {}
        intra_values = None
        
        i = 1
        while i < len(lines):
            if not lines[i].strip():
                i += 1
                continue
                
            method_name = lines[i].strip()
            tasks = lines[i+1].split(',')
            values = list(map(int, lines[i+2].split(',')))
            
            if method_name == 'intra':
                intra_values = dict(zip(tasks, values))
            else:
                methods[method_name] = dict(zip(tasks, values))
            
            i += 3
        
        # 生成输出格式
        output_lines = []
        output_lines.append("\tLiang\t\tZhang\t\tProposed\t")
        
        # 映射任务名
        task_display = {'adpcm_dec_main': 'adpcm_dec', 'binarysearch_main': 'binarysearch', 'cover_main': 'cover'}
        
        # 指定任务的顺序
        ordered_tasks = ['adpcm_dec_main', 'binarysearch_main', 'cover_main']
        
        for task in ordered_tasks:
            line_parts = [task_display[task]]
            
            # 获取intra值
            intra_value = intra_values.get(task, 0)
            
            # 处理Liang2012数据
            liang_value = methods['Liang2012'].get(task, 0)
            liang_diff = max(0, liang_value - intra_value)
            line_parts.extend([str(liang_diff), str(liang_value)])
            
            # 处理Zhang2022数据
            zhang_value = methods['Zhang2022'].get(task, 0)
            zhang_sum = zhang_value + intra_value
            line_parts.extend([str(zhang_value), str(zhang_sum)])
            
            # 处理Proposed数据
            proposed_value = methods['Proposed'].get(task, 0)
            proposed_sum = proposed_value + intra_value
            line_parts.extend([str(proposed_value), str(proposed_sum)])
            
            output_lines.append("\t".join(line_parts))
        
        results.append("\n".join(output_lines))
    
    return results

offset_font = 12
benchmark_font = 28 + offset_font
assoc_font = 28 + offset_font # also Y label
number_font = 15 + offset_font
sg_name_font = 20 + offset_font
legend_font = 26 + offset_font
yaxis_font = 23 + offset_font

# 创建自定义对数缩放类，使用更大的底数
class CustomLogScale(mscale.ScaleBase):
    name = 'customlog'
    
    def __init__(self, axis, base=10):
        self.base = base  # 使用更大的底数，如10、20或100
        mscale.ScaleBase.__init__(self, axis)
    
    def get_transform(self):
        return self.CustomLogTransform(self.base)
    
    def set_default_locators_and_formatters(self, axis):
        # 使用标准对数刻度的定位器和格式化器
        axis.set_major_locator(plt.LogLocator(base=self.base))
        axis.set_major_formatter(plt.FuncFormatter(
            lambda x, pos: f'{x/1000:.0f}K' if x >= 1000 else 
                          (f'{x/1000000:.1f}M' if x >= 1000000 else f'{x:.0f}')
        ))
    
    class CustomLogTransform(mtransforms.Transform):
        input_dims = 1
        output_dims = 1
        is_separable = True
        
        def __init__(self, base):
            mtransforms.Transform.__init__(self)
            self.base = base
        
        def transform_non_affine(self, a):
            return np.log(a) / np.log(self.base)
        
        def inverted(self):
            return CustomLogScale.InvertedCustomLogTransform(self.base)
    
    class InvertedCustomLogTransform(mtransforms.Transform):
        input_dims = 1
        output_dims = 1
        is_separable = True
        
        def __init__(self, base):
            mtransforms.Transform.__init__(self)
            self.base = base
        
        def transform_non_affine(self, a):
            return np.power(self.base, a)
        
        def inverted(self):
            return CustomLogScale.CustomLogTransform(self.base)

# 注册自定义缩放
mscale.register_scale(CustomLogScale)

# 格式化函数 - 将数值转换为科学计数法
# def format_scientific(x):
#     if x == 0:
#         return '0'
#     exp = int(np.floor(np.log10(abs(x))))
#     coef = x / (10**exp)
#     return f'{coef:.2f}×10^{exp}'
# def format_scientific(x):
#     if x == 0:
#         return '0'
#     exp = int(np.floor(np.log10(abs(x))))
#     coef = x / (10**exp)
    
#     # Unicode 上标数字映射
#     superscript = str.maketrans('0123456789-', '⁰¹²³⁴⁵⁶⁷⁸⁹⁻')
#     exp_str = str(exp).translate(superscript)
    
#     # 如果系数接近1（考虑浮点数精度），只显示10的幂
#     if abs(coef - 1.0) < 1e-10:
#         return f'10{exp_str}'
#     else:
#         return f'{coef:.1f}×10{exp_str}'

# def format_scientific(x):
#     if x == 0:
#         return '0'
#     exp = int(np.floor(np.log10(abs(x))))
#     coef = x / (10**exp)
    
#     # Unicode 上标数字映射
#     superscript = str.maketrans('0123456789-', '⁰¹²³⁴⁵⁶⁷⁸⁹⁻')
#     exp_str = str(exp).translate(superscript)
    
#     # 如果系数接近1（考虑浮点数精度），只显示10的幂
#     if abs(coef - 1.0) < 1e-10:
#         return f'10{exp_str}'
#     else:
#         # 使用truncate而不是round，去掉小数点后多余的数字
#         coef_trunc = int(coef * 10) / 10  # 保留一位小数，不四舍五入
#         return f'{coef_trunc:.1f}×10{exp_str}'

# 没用的
def format_scientific_latex(x):
    if x == 0:
        return '0'
    exp = int(np.floor(np.log10(abs(x))))
    coef = x / (10 ** exp)

    if abs(coef - 1.0) < 1e-10:
        return fr'$10^{{\textstyle {exp}}}$'
    else:
        coef_trunc = int(coef * 10) / 10
        return fr'${coef_trunc:.1f} \times 10^{{\textstyle {exp}}}$'
    
# def format_scientific(x):
#     if x == 0:
#         return '0'
#     exp = int(np.floor(np.log10(abs(x))))
#     coef = x / (10**exp)
    
#     # 如果系数接近1，只显示10的幂
#     if abs(coef - 1.0) < 1e-10:
#         return fr'$10^{{\displaystyle {exp}}}$'  # 使用\displaystyle使上标变大
#     else:
#         coef_trunc = int(coef * 10) / 10
#         return fr'${coef_trunc:.1f} \times 10^{{\displaystyle {exp}}}$'

# def format_scientific(x):
#     if x == 0:
#         return '0'
#     exp = int(np.floor(np.log10(abs(x))))
#     coef = x / (10**exp)
    
#     # If coefficient is close to 1, only show power of 10
#     if abs(coef - 1.0) < 1e-10:
#         return fr'$10^{{{exp}}}$'  # Remove \displaystyle
#     else:
#         coef_trunc = int(coef * 10) / 10
#         return fr'${coef_trunc:.1f} \times 10^{{{exp}}}$'

plt.rcParams.update({
    'font.size': number_font,
    'mathtext.default': 'regular',
    'mathtext.fontset': 'stix',
    # 'mathtext.rm': 'serif',
    # 'mathtext.sf': 'serif',
    # 'mathtext.tt': 'serif',
})

import matplotlib
# 取消 TeX，使用内置 MathText. 没啥屌用
plt.rc('text', usetex=False)
matplotlib.mathtext.SHRINK_FACTOR = 1.0
matplotlib.mathtext.GROW_FACTOR = 1.0

def format_scientific(x):
    if x == 0:
        return '0'
    exp = int(np.floor(np.log10(abs(x))))
    coef = x / (10**exp)
    
    if abs(coef - 1.0) < 1e-10:
        return fr'${{10^{{{exp}}}}}$'
    else:
        coef_trunc = int(coef * 10) / 10
        return fr'${{{coef_trunc:.1f}\cdot10^{{{exp}}}}}$' 
    
def format_scientific(x):
    if x == 0:
        return '0'
    exp = int(np.floor(np.log10(abs(x))))
    coef = x / (10**exp)
    
    if abs(coef - 1.0) < 1e-10:
        return fr'${{10^{{{exp}}}}}$'
    else:
        coef_trunc = int(coef * 10) / 10
        return fr'${{{coef_trunc:.1f}\cdot10^{{{exp}}}}}$' 

# 没用的
from PIL import Image, ImageDraw, ImageFont

def create_superscript_image(text, base_size=20, sup_size=14):
    # 创建图像
    img = Image.new('RGBA', (200, 50), (255, 255, 255, 0))
    draw = ImageDraw.Draw(img)
    
    # 加载字体（根据系统调整路径）
    try:
        font_base = ImageFont.truetype('arial.ttf', base_size)
        font_sup = ImageFont.truetype('arial.ttf', sup_size)
    except IOError:
        # 使用默认字体
        font_base = ImageFont.load_default()
        font_sup = ImageFont.load_default()
    
    # 绘制文本和上标
    draw.text((10, 10), text, font=font_base, fill=(0, 0, 0))
    
    return img

def inter_intra(data_src, remote_task):

    # 创建3个子图
    fig, axes = plt.subplots(1, 3, figsize=(36, 6), sharey=True)
    # plt.subplots_adjust(wspace=0.01)

    # 美观的配色方案（使用Seaborn的深色调色板）
    base_palette = sns.color_palette("deep")
    
    # 为每个算法创建两种颜色（深色为inter，浅色为intra）
    palette = []
    for color in base_palette:
        # 原色用于inter（底部）
        palette.append(color)
        # 浅色用于intra（顶部）
        light_color = tuple([min(1.0, c * 1.5) for c in color])
        palette.append(light_color)
    
    assoc = [2, 4, 8]
    subgraph_name = ["(a)", "(b)", "(c)"]
    
    # 保存第一个子图的图例句柄和标签
    first_legend_handles = None
    first_legend_labels = None

    for i, data_str in enumerate(data_src, 1):
        # 处理原始数据为DataFrame
        lines = [line.split() for line in data_str.strip().split('\n')]
        algorithms = lines[0]
        data = []
        
        # 假设每行有6个值，每个算法2个值（inter和intra）
        for line in lines[1:]:
            benchmark = line[0]
            # 确保值被正确解析为整数
            values = [int(val) for val in line[1:]]
            
            # 每两个值为一对 (inter, intra)
            for j, algo in enumerate(algorithms):
                inter_val = values[j*2]    # 第一个值是inter
                total_val = values[j*2+1]  # 第二个值是intra
                
                # 添加inter部分（底部）
                data.append({
                    'Benchmark': benchmark, 
                    'Algorithm': algo, 
                    'Type': 'inter',
                    'Value': inter_val
                })
                
                # 添加intra部分（顶部）
                data.append({
                    'Benchmark': benchmark, 
                    'Algorithm': algo, 
                    'Type': 'intra',
                    'Value': total_val
                })

        df = pd.DataFrame(data)
        
        # 创建子图
        ax = axes[i-1]
        
        # 准备手动绘制堆叠柱状图
        benchmarks = df['Benchmark'].unique()
        algorithms_list = df['Algorithm'].unique()
        bar_width = 0.8 / len(algorithms_list)  # 每个算法的柱宽
        
        # 创建颜色映射
        color_map = {}
        for j, algo in enumerate(algorithms_list):
            color_map[f"{algo}_inter"] = palette[j*2]
            color_map[f"{algo}_intra"] = palette[j*2+1]
        
        # 图例元素
        legend_handles = []
        legend_labels = []
        
        # 遍历绘制每个算法的堆叠柱
        for j, algo in enumerate(algorithms_list):
            # 存储标签信息
            for b_idx, benchmark in enumerate(benchmarks):
                # 计算当前柱的x位置
                x_pos = b_idx + (j - len(algorithms_list)/2 + 0.5) * bar_width * 1.1
                
                # 获取inter和intra值
                inter_val = df[(df['Benchmark'] == benchmark) & 
                              (df['Algorithm'] == algo) & 
                              (df['Type'] == 'inter')]['Value'].values[0]
                
                total_val = df[(df['Benchmark'] == benchmark) & 
                              (df['Algorithm'] == algo) & 
                              (df['Type'] == 'intra')]['Value'].values[0]
                
                intra_val = total_val - inter_val
                
                # 绘制inter部分（底部）
                inter_bar = ax.bar(x_pos, inter_val, width=bar_width,
                          color=color_map[f"{algo}_inter"], 
                          edgecolor='white', linewidth=0.7)
                
                # print(inter_val)
                # 绘制intra部分（顶部）
                intra_bar = ax.bar(x_pos, intra_val, width=bar_width,
                          bottom=inter_val, color=color_map[f"{algo}_intra"],
                          edgecolor='white', linewidth=0.7)
                
                # 标注inter值（在inter柱子中间）
                # ax.text(x_pos, inter_val, f'{inter_val:,}', 
                #        ha='center', va='top', fontsize=8,
                #        color='black')
                # ax.text(
                #     x_pos, 
                #     inter_val, 
                #     f'{int(inter_val):,}',
                #     ha='center',
                #     va='bottom',
                #     fontsize=10
                # )
                formatted_val = f'{int(inter_val):,}' if inter_val < 1000 else f'{inter_val/1000:.1f}K'
                ax.text(
                    x_pos, 
                    inter_val * 0.9, 
                    # f'{int(inter_val):,}',
                    formatted_val,
                    ha='center',
                    va='bottom',
                    fontsize=number_font,
                    rotation=45,  # 45度旋转标签
                )
                
                # 标注总值（在柱子顶部）
                # ax.text(x_pos, total_val, f'{total_val:,}', 
                #        ha='center', va='top', fontsize=8, fontweight='bold')
                # ax.text(
                #     x_pos, 
                #     total_val, 
                #     f'{int(inter_val):,}',
                #     ha='center',
                #     va='bottom',
                #     fontsize=10
                # )
                                # 标注总值（错开标签以避免重叠）
                if total_val > 0:
                    # 方法1: 旋转标签
                    formatted_val = f'{int(total_val):,}' if total_val < 1000 else f'{total_val/1000:.1f}K'
                    ax.text(
                        x_pos, 
                        total_val * 0.9,  # 稍微抬高位置
                        # f'{int(total_val):,}',
                        formatted_val,
                        ha='center',
                        va='bottom',
                        fontsize=number_font,  # 减小字体大小
                        rotation=45,  # 45度旋转标签
                        # fontweight='bold'
                    )
            
            # 仅第一次添加到图例
            if j == 0:
                # 为图例创建自定义元素
                inter_patch = plt.Rectangle((0,0), 1, 1, color=color_map[f"{algo}_inter"])
                intra_patch = plt.Rectangle((0,0), 1, 1, color=color_map[f"{algo}_intra"])
                legend_handles.extend([inter_patch, intra_patch])
                legend_labels.extend(['Inter-Core', 'Intra-Core'])
            
            # 为算法创建图例元素
            algo_patch = plt.Rectangle((0,0), 1, 1, 
                                     color=color_map[f"{algo}_inter"],
                                     hatch='///',
                                     fill=True)
            legend_handles.append(algo_patch)
            legend_labels.append(algo)
        
        # 保存第一个子图的图例信息
        if i == 1:
            first_legend_handles = legend_handles.copy()
            first_legend_labels = legend_labels.copy()
            
            # # 添加第一个子图的图例
            # type_legend = ax.legend(legend_handles[:2], legend_labels[:2], 
            #                        title='Execution Type', loc='upper left', 
            #                        bbox_to_anchor=(1.05, 1))
            # ax.add_artist(type_legend)
            
            # # 添加算法图例
            # algo_legend = ax.legend(legend_handles[2:], legend_labels[2:], 
            #                        title='Algorithm', loc='upper left', 
            #                        bbox_to_anchor=(1.05, 0.5))
            # ax.add_artist(algo_legend)
        
        # 设置图表属性
        ax.set_title(f'Associativity={assoc[i-1]}', fontsize=assoc_font, pad=60)
        ax.set_xlabel(subgraph_name[i-1], fontsize=sg_name_font)
        
        if i == 1:
            ax.set_ylabel('WCEET Value', fontsize=assoc_font)
            
        ax.set_xticks(range(len(benchmarks)))
        ax.set_xticklabels(benchmarks, fontsize=benchmark_font)
        # ax.set_xticklabels(benchmarks, fontsize=12, fontweight='bold')
        ax.set_yscale('log')  # 使用对数坐标轴
        # ax.set_yscale('customlog', base=10)
        ax.set_ylim(bottom=100)
        # ax.tick_params(axis='y', labelsize=13)
        ax.tick_params(axis='y', labelsize=13, length=6, width=1.5)
        
        # 格式化y轴刻度，减少零的显示
        ax.yaxis.set_major_formatter(
            plt.FuncFormatter(lambda x, pos: f'{x/1000:.0f}K' if x >= 1000 
                            else (f'{x/1000000:.1f}M' if x >= 1000000 else f'{x:.0f}'))
        )
        # ax.yaxis.set_major_formatter(ScalarFormatter())
        
        # 调整y轴主刻度线的密度
        # ax.yaxis.set_major_locator(plt.MaxNLocator(5))  # 减少y轴刻度数量，使刻度间距更大

        # ax.ticklabel_format(axis='y', style='plain')
    
    if first_legend_handles is not None:
        # 创建执行类型图例
        # type_legend = fig.legend(
        #     first_legend_handles[:2],       # 执行类型句柄
        #     first_legend_labels[:2],        # 执行类型标签
        #     title='Execution Type',         # 图例标题
        #     loc='upper left',               # 位置：左上角
        #     bbox_to_anchor=(0.01, 0.99),    # 精确位置：左上角偏移1%
        #     ncol=1,                         # 一列显示
        #     fontsize=10                     # 字体大小
        # )
        
        # 创建算法图例
        algo_legend = fig.legend(
            first_legend_handles[2:],       # 算法句柄
            first_legend_labels[2:],        # 算法标签
            title='Algorithm',              # 图例标题
            loc='upper left',               # 位置：左上角
            bbox_to_anchor=(0, 1),    # 精确位置：从顶部下移15%
            ncol=3,                         # 三列显示算法
            fontsize=18,                # 字体大小
            title_fontsize=22
        )

    # 保存图像
    # plt.tight_layout()
    # plt.savefig(remote_task+'.pdf', dpi=300, bbox_inches='tight')
    plt.subplots_adjust(left=0.05, right=0.98, top=0.70, bottom=0.12, wspace=0.08)
    plt.savefig(os.path.join('Plot',remote_task+'.pdf'), dpi=300)
    plt.show()

def draw_scientific_label(ax, x, y, font_size=12, coef_digits=1, x_offset=0.05, y_offset=0.03):
    """
    在坐标 (x, y) 附近绘制科学计数法标签，指数与系数大小一致，无需 LaTeX，所有文字加粗。
    
    参数：
    - ax: Matplotlib 轴对象
    - x, y: 数值标签的位置
    - font_size: 字体大小
    - coef_digits: 系数保留几位小数
    - x_offset: 指数相对于系数的水平偏移（以坐标轴单位为单位）
    - y_offset: 指数相对于系数的垂直偏移（以 y 值的比例表示）
    """
    import numpy as np

    my_x_offset = 0.09
    x += my_x_offset
    my_y_offset = 0.3

    if y == 0:
        ax.text(
            x, y, '0',
            ha='center',
            va='bottom',
            fontsize=font_size,
            fontweight='bold'
        )
        return

    exp = int(np.floor(np.log10(abs(y))))
    coef = y / (10 ** exp)
    main_text = f'{coef:.{coef_digits}f}·10'
    # print(f"{main_text} {y}")

    # 主体部分（加粗）
    ax.text(
        x,
        y * my_y_offset,
        main_text,
        ha='right',
        va='bottom',
        fontsize=font_size,
        fontweight='bold'
    )

    # 指数部分（加粗）
    ax.text(
        x + x_offset,
        (y + y * y_offset) * my_y_offset,
        f'{exp}',
        ha='left',
        va='bottom',
        fontsize=font_size,
        fontweight='bold'
    )



def inter_intra_0513(data_src, remote_task):

    # 创建3个子图
    # fig, axes = plt.subplots(1, 3, figsize=(36, 6), sharey=True)
    # plt.subplots_adjust(wspace=0.01)

    # # 美观的配色方案（使用Seaborn的深色调色板）
    # base_palette = sns.color_palette("deep")
    
    # # 为每个算法创建两种颜色（深色为inter，浅色为intra）
    # palette = []
    # for color in base_palette:
    #     # 原色用于inter（底部）
    #     palette.append(color)
    #     # 浅色用于intra（顶部）
    #     light_color = tuple([min(1.0, c * 1.5) for c in color])
    #     palette.append(light_color)

    # 将RGB值转换为0-1范围
    base_colors = [
        (150/255, 149/255, 145/255),  # 灰色
        (50/255, 83/255, 98/255),     # 深青色
        (229/255, 152/255, 123/255)   # 珊瑚色
    ]

    # 创建调色板
    palette = []
    for color in base_colors:
        # 原色用于inter（底部）
        palette.append(color)
        # 创建浅色版本用于intra（顶部）
        light_color = tuple([min(1.0, c * 1.4) for c in color])  # 使用1.3而不是1.5使颜色更接近
        palette.append(light_color)

    
    assoc = [2, 4, 8]
    subgraph_name = ["(a)", "(b)", "(c)"]


    for i, data_str in enumerate(data_src, 1):
        # 创建独立的图形
        fig = plt.figure(figsize=(21, 6))  # 每个图形的大小
        ax = plt.gca()  # 获取当前轴

        # 处理原始数据为DataFrame
        lines = [line.split() for line in data_str.strip().split('\n')]
        algorithms = lines[0]
        data = []
        
        # 假设每行有6个值，每个算法2个值（inter和intra）
        for line in lines[1:]:
            benchmark = line[0]
            # 确保值被正确解析为整数
            values = [int(val) for val in line[1:]]
            
            # 每两个值为一对 (inter, intra)
            for j, algo in enumerate(algorithms):
                inter_val = values[j*2]    # 第一个值是inter
                total_val = values[j*2+1]  # 第二个值是intra

                # 添加inter部分（底部）
                data.append({
                    'Benchmark': benchmark, 
                    'Algorithm': algo, 
                    'Type': 'inter',
                    'Value': inter_val
                })
                
                # 添加intra部分（顶部）
                data.append({
                    'Benchmark': benchmark, 
                    'Algorithm': algo, 
                    'Type': 'intra',
                    'Value': total_val
                })

        df = pd.DataFrame(data)
        
        # 创建子图
        # ax = axes[i-1]
        
        # 准备手动绘制堆叠柱状图
        benchmarks = df['Benchmark'].unique()
        algorithms_list = df['Algorithm'].unique()
        bar_width = 0.87 / len(algorithms_list)  # 每个算法的柱宽
        
        # 创建颜色映射
        color_map = {}
        for j, algo in enumerate(algorithms_list):
            color_map[f"{algo}_inter"] = palette[j*2]
            color_map[f"{algo}_intra"] = palette[j*2+1]
        
        # 双色legend
        legend_handles = []
        legend_labels = []

        # 遍历绘制每个算法的堆叠柱
        for j, algo in enumerate(algorithms_list):

            ## 双色legend
            # 创建深浅两种颜色
            # base_color = base_palette[j]
            base_color = base_colors[j]
            light_color = tuple([min(1.0, c * 1.5) for c in base_color])
            # 添加到调色板
            # palette.extend([base_color, light_color])
            palette.extend([base_color]) # 单色
            # 创建该算法的两个图例元素
            inter_patch = plt.Rectangle((0,0), 1, 1, color=base_color, label=f'{algo} (Inter)')
            intra_patch = plt.Rectangle((0,0), 1, 1, color=light_color, label=f'{algo} (Intra)')
            # 将两个patch组合在一起作为一个算法的图例
            # legend_handles.extend([inter_patch, intra_patch])
            legend_handles.extend([inter_patch]) # 单色
            # legend_labels.extend([f'{algo}', f'{algo}'])
            legend_labels.extend([f'{algo}'])
            ## end双色legend

            # 存储标签信息
            for b_idx, benchmark in enumerate(benchmarks):
                # 计算当前柱的x位置
                x_pos = b_idx + (j - len(algorithms_list)/2 + 0.5) * bar_width
                
                # 获取inter和intra值
                inter_val = df[(df['Benchmark'] == benchmark) & 
                              (df['Algorithm'] == algo) & 
                              (df['Type'] == 'inter')]['Value'].values[0]
                
                total_val = df[(df['Benchmark'] == benchmark) & 
                              (df['Algorithm'] == algo) & 
                              (df['Type'] == 'intra')]['Value'].values[0]
                
                intra_val = total_val - inter_val
                
                # 绘制inter部分（底部）
                inter_bar = ax.bar(x_pos, inter_val, width=bar_width,
                          color=color_map[f"{algo}_inter"], 
                          edgecolor='white', linewidth=0.7)
                
                # print(inter_val)
                # 绘制intra部分（顶部）
                intra_bar = ax.bar(x_pos, intra_val, width=bar_width,
                          bottom=inter_val, color=color_map[f"{algo}_intra"],
                          edgecolor='white', linewidth=0.7)
                
                # formatted_val = f'{int(inter_val):,}' if inter_val < 1000 else f'{inter_val/1000:.1f}K'
                # ax.text(
                #     x_pos, 
                #     inter_val * 0.3, 
                #     # f'{int(inter_val):,}',
                #     # formatted_val,
                #     format_scientific(inter_val),
                #     ha='center',
                #     va='bottom',
                #     fontsize=number_font,
                #     # rotation=45,  # 45度旋转标签
                #     # math_fontfamily='stix'
                # )

                draw_scientific_label(
                    ax,
                    x=x_pos,
                    y=inter_val,
                    font_size=number_font,
                    coef_digits=1,      # 保留一位小数，如 1.2 × 10⁶
                    x_offset=0,      # 适当调整这个值以适配你的图
                    y_offset=0.2       # 调整指数的垂直偏移（相对于y）
                )
                
                # 标注总值（在柱子顶部）
                # ax.text(x_pos, total_val, f'{total_val:,}', 
                #        ha='center', va='top', fontsize=8, fontweight='bold')
                # ax.text(
                #     x_pos, 
                #     total_val, 
                #     f'{int(inter_val):,}',
                #     ha='center',
                #     va='bottom',
                #     fontsize=10
                # )
                                # 标注总值（错开标签以避免重叠）
                if total_val > 0:
                    # 方法1: 旋转标签
                    # formatted_val = f'{int(total_val):,}' if total_val < 1000 else f'{total_val/1000:.1f}K'
                    # ax.text(
                    #     x_pos, 
                    #     total_val * 0.3,  # 稍微抬高位置
                    #     # f'{int(total_val):,}',
                    #     # formatted_val,
                    #     format_scientific(total_val),
                    #     ha='center',
                    #     va='bottom',
                    #     fontsize=number_font,  # 减小字体大小
                    #     # rotation=45,  # 45度旋转标签
                    #     # fontweight='bold'
                    #     # math_fontfamily='stix'
                    # )
                    draw_scientific_label(
                        ax,
                        x=x_pos,
                        y=total_val,
                        font_size=number_font,
                        coef_digits=1,      # 保留一位小数，如 1.2 × 10⁶
                        x_offset=0,      # 适当调整这个值以适配你的图
                        y_offset=0.2       # 调整指数的垂直偏移（相对于y）
                    )
                                
        # 设置图表属性
        # ax.set_title(f'Associativity={assoc[i-1]}', fontsize=assoc_font, pad=60)
        # ax.set_xlabel(subgraph_name[i-1]+f" Associativity={assoc[i-1]}", fontsize=sg_name_font)
        
        ax.set_ylabel('WCET (in cycles)', fontsize=assoc_font)
            
        ax.set_xticks(range(len(benchmarks)))
        ax.set_xticklabels(benchmarks, fontsize=benchmark_font)
        # ax.set_xticklabels(benchmarks, fontsize=12, fontweight='bold')
        
        benchmarks = df['Benchmark'].unique()
        n_benchmarks = len(benchmarks)

        # ax.set_xlim(-0.53, n_benchmarks - 0.47)

        ax.set_yscale('log')  # 使用对数坐标轴
        # ax.set_yscale('customlog', base=10)
        ax.set_ylim(bottom=100)

        # ymin, ymax = ax.get_ylim()
        # # 减小顶部空白，调整系数0.1使空白更小
        # temp_param = 4
        # ax.set_ylim(ymin, ymax * temp_param)  # 原来可能是1.2或更大

        # ax.tick_params(axis='y', labelsize=13)
        ax.tick_params(axis='y', labelsize=yaxis_font, length=6, width=1.5)
        
        # 格式化y轴刻度，减少零的显示
        # ax.yaxis.set_major_formatter(
        #     plt.FuncFormatter(lambda x, pos: f'{x/1000:.0f}K' if x >= 1000 
        #                     else (f'{x/1000000:.1f}M' if x >= 1000000 else f'{x:.0f}'))
        # )
        # 科学计数法
        ax.yaxis.set_major_formatter(
            plt.FuncFormatter(lambda x, p: format_scientific(x))
        )

        # ax.yaxis.set_major_formatter(ScalarFormatter())
        
        # 调整y轴主刻度线的密度
        # ax.yaxis.set_major_locator(plt.MaxNLocator(5))  # 减少y轴刻度数量，使刻度间距更大

        # ax.ticklabel_format(axis='y', style='plain')

        fig.legend(
            legend_handles,
            legend_labels,
            # title='Algorithms',
            loc='upper left',
            bbox_to_anchor=(0.25, 0.97),  # 略微偏移以避免完全贴边
            ncol=6,  # 每个算法的两种颜色并排显示
            fontsize=legend_font,
            # title_fontsize=22,
            columnspacing=2  # 调整列间距
        )

        # 保存图像
        # plt.tight_layout()
        # plt.savefig(remote_task+'.pdf', dpi=300, bbox_inches='tight')
        plt.subplots_adjust(left=0.08, right=0.98, top=0.75, bottom=0.12, wspace=0.08)
        
        plt.savefig(os.path.join('Plots', f"{remote_task}_{assoc[i-1]}.pdf"), dpi=300)

        
        # plt.savefig(os.path.join('Plot',remote_task+"_"+str(assoc[i-1])+"_"+'.pdf'), dpi=300)
        # plt.show()    

if __name__ == "__main__":
    # print("===== 运行程序 =====")
    
    # # 第一条命令（顺序执行）
    # first_cmd = "./lab2.py -s Liang2012_2 -p -ops options/lab2_l1_82.txt -m liangy -a 2"
    # print(f"执行: {first_cmd}")
    # subprocess.run(first_cmd, shell=True)
    
    # # 剩余的命令（并行执行）
    # commands = [
    #     "./lab2.py -s Zhang2022_2 -p -ops options/lab2_l1_82.txt -m zhangw -a 2",
    #     "./lab2.py -s Our_2 -p -ops options/lab2_l1_82.txt -m our -a 2",
    #     "./lab2.py -s Liang2012_4 -p -ops options/lab2_l1_82.txt -m liangy -a 4",
    #     "./lab2.py -s Zhang2022_4 -p -ops options/lab2_l1_82.txt -m zhangw -a 4",
    #     "./lab2.py -s Our_4 -p -ops options/lab2_l1_82.txt -m our -a 4",
    #     "./lab2.py -s Liang2012_8 -p -ops options/lab2_l1_82.txt -m liangy -a 8",
    #     "./lab2.py -s Zhang2022_8 -p -ops options/lab2_l1_82.txt -m zhangw -a 8",
    #     "./lab2.py -s Our_8 -p -ops options/lab2_l1_82.txt -m our -a 8",
    # ]
    
    # # 启动并行任务
    # processes = []
    # for i, cmd in enumerate(commands):
    #     output_file = f"lab2_output_{i}.log"
    #     process = run_command(cmd, output_file)
    #     processes.append(process)
    #     print(f"已启动任务 {i}: {cmd}")
    
    # print("所有任务已在后台运行，输出见 lab2_output_[0-8].log 文件")
    
    # 等待所有进程完成
    # for p in processes:
    #     p.wait()
    
    # print("===== 后处理 =====")
    
    # 第一条后处理命令（顺序执行）
    first_post_cmd = "../post_run.py -s Liang2012_2 -p -ops options/lab2_l1_82.txt -m liangy -a 2"
    print(f"Executing: {first_post_cmd}")

    subprocess.run(first_post_cmd, shell=True)
    
    # 剩余的后处理命令（并行执行）
    post_commands = [
        "../post_run.py -s Zhang2022_2 -t Zhang2022_2 -m zhangw",
        "../post_run.py -s Our_2 -t Our_2 -m our",
        "../post_run.py -s Liang2012_2 -t Liang2012_2 -m liangy",
        "../post_run.py -s Zhang2022_4 -t Zhang2022_4 -m zhangw",
        "../post_run.py -s Our_4 -t Our_4 -m our",
        "../post_run.py -s Liang2012_4 -t Liang2012_4 -m liangy",
        "../post_run.py -s Zhang2022_8 -t Zhang2022_8 -m zhangw",
        "../post_run.py -s Our_8 -t Our_8 -m our",
        ".//post_run.py -s Liang2012_8 -t Liang2012_8 -m liangy",
    ]
    
    # Start parallel post-processing tasks
    post_processes = []
    for i, cmd in enumerate(post_commands):
        output_file = f"post_{i}.log"
        process = run_command(cmd, output_file)
        post_processes.append(process)
        print(f"Task {i} started: {cmd}")

    print("All post-processing tasks are running in the background. Output can be found in lab2_post_[0-8].log files.")

    
    # 等待所有后处理进程完成
    for p in post_processes:
        p.wait()
    
    print("All tasks have been completed!")

    os.makedirs("Plots", exist_ok=True)

    
    root_directory = os.path.dirname(os.path.abspath(__file__))  # 当前脚本所在目录
    process_directories(root_directory)

    draw_ndes(root_directory)