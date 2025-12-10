import pandas as pd
import matplotlib.pyplot as plt
import numpy as np
import os


import subprocess



# def reorder_index(df, priority):
#     ordered_index = [x for x in priority if x in df.index] + [x for x in df.index if x not in priority]
#     return df.loc[ordered_index]

def reorder_index(df, priority):
    # 去掉索引前后的空格，确保匹配
    df.index = df.index.astype(str).str.strip()
    # 前缀部分：优先顺序中存在于索引中的项
    head = [x for x in priority if x in df.index]
    # 其余部分：原顺序中不在优先列表的项
    tail = [x for x in df.index if x not in priority]
    # 重排 DataFrame
    return df.loc[head + tail]

def safe_get_scalar(df, row, col):
    """从 df 中获取唯一的 [row, col] 对应的标量值（即便有重复行列）"""
    result = df.loc[row, col]

    # 如果是标量，直接返回
    if isinstance(result, (int, float, str, bool, np.number)):
        return result

    # 如果是 Series 或 DataFrame，尝试取第一个非零元素
    if hasattr(result, 'values'):
        flat = result.values.flatten()
        for val in flat:
            if isinstance(val, (int, float)) and val != 0:
                return val
        return flat[0]  # 如果都为 0，返回第一个

    raise ValueError(f"无法从 df[{row}, {col}] 中提取标量值")



def format_number(value):
    if value >= 1e4:
        return '{:.3e}'.format(value).replace('+0', '').replace('-0', '-').replace('+1', '1')
    else:
        return f'{value:.0f}'


if __name__ == "__main__":
    # 定义要执行的命令列表
    commands = [
        ["../post_run.py", "-s", "papa_zw", "-t", "papa_zw", "-m", "zhangw"],
        ["../post_run.py", "-s", "papa_our", "-t", "papa_our", "-m", "our"]
    ]
    

    # 执行每条命令
    for cmd in commands:
        try:
            print(f"Running command: {' '.join(cmd)}")
            result = subprocess.run(cmd, check=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE, text=True)
            print("Output:\n", result.stdout)
        except subprocess.CalledProcessError as e:
            print(f"Error running: {' '.join(cmd)}")
            print("STDOUT:\n", e.stdout)
            print("STDERR:\n", e.stderr)

    # 输出目录
    os.makedirs("Plots", exist_ok=True)
    os.makedirs(os.path.join("Plots", "table"), exist_ok=True)


    # 读取两组数据
    base_dir = os.path.dirname(__file__)

    inter_latency_df = pd.read_csv(os.path.join(base_dir, 'papa_our', 'wceet.csv'), index_col=0)
    intra_latency_df = pd.read_csv(os.path.join(base_dir, 'papa_our', 'intra_wcet.csv'), index_col=0)

    inter_latency_df_zw = pd.read_csv(os.path.join(base_dir, 'papa_zw', 'wceet.csv'), index_col=0)
    intra_latency_df_zw = pd.read_csv(os.path.join(base_dir, 'papa_zw', 'intra_wcet.csv'), index_col=0)
    
    # inter_latency_df_zw = inter_latency_df_zw[~inter_latency_df_zw.index.duplicated(keep='first')]
    # inter_latency_df_zw = inter_latency_df_zw.loc[:, ~inter_latency_df_zw.columns.duplicated(keep='first')]

    # intra_latency_df = intra_latency_df[~intra_latency_df.index.duplicated(keep='first')]
    # intra_latency_df = intra_latency_df.loc[:, ~intra_latency_df.columns.duplicated(keep='first')]


    # 统一去除 "_main"
    # for df in [inter_latency_df, inter_latency_df_zw, intra_latency_df, intra_latency_df_zw]:
    #     df.columns = df.columns.str.replace('_main', '', regex=False)
    #     df.index = df.index.str.replace('_main', '', regex=False)

    # # 删除名为 'epic_main' 和 'rijndael_dec_main' 的行
    # rows_to_remove = ['epic', 'rijndael_dec','susan','fft']
    # inter_latency_df.drop(index=rows_to_remove, inplace=True, errors='ignore')
    # inter_latency_df_zw.drop(index=rows_to_remove, inplace=True, errors='ignore')
    # intra_latency_df.drop(index=rows_to_remove, inplace=True, errors='ignore')
    # intra_latency_df_zw.drop(index=rows_to_remove, inplace=True, errors='ignore')

    # # 找出在任意目标任务中，intra_latency_df 和 intra_latency_df_zw 中值为0的干扰任务（列）
    # zero_cols_intra_our = intra_latency_df.loc[:, (intra_latency_df == 0).any(axis=0)].columns
    # zero_cols_intra_zw  = intra_latency_df_zw.loc[:, (intra_latency_df_zw == 0).any(axis=0)].columns

    # # 合并要移除的干扰任务
    # c_to_drop = set(zero_cols_intra_our) | set(zero_cols_intra_zw)

    # # 删除这些干扰任务（列）
    # intra_latency_df.drop(columns=c_to_drop, inplace=True, errors='ignore')
    # intra_latency_df_zw.drop(columns=c_to_drop, inplace=True, errors='ignore')
    # inter_latency_df.drop(columns=c_to_drop, inplace=True, errors='ignore')
    # inter_latency_df_zw.drop(columns=c_to_drop, inplace=True, errors='ignore')

    inter_latency_df.to_csv("./Plots/table/inter_Our.csv")
    inter_latency_df_zw.to_csv("./Plots/table/inter_Zhangw.csv")

    # target_tasks = inter_latency_df.index

    # interferers  = inter_latency_df.columns

    target_tasks = ["radio_control_task"]
    
    interferersF = [
        "send_data_to_autopilot_task","test_ppm_task","check_failsafe_task","check_mega128_values_task","servo_transmit"
    ]
    
    # target_tasks = ["send_data_to_autopilot_task"]
    
    # interferersF = [
    #     "radio_control_task","link_fbw_send","altitude_control_task","climb_control_task","stabilisation_task"
    # ]


    print(target_tasks)
    print(interferersF)


    # 配色
    color_our_inter   = '#355a6e'
    color_our_intra   = '#6d96aa'
    color_zw_inter    = '#E5987B'
    color_zw_intra    = '#FFD5AC'

    for target in target_tasks:

        # 提取数据
        # inter_our = [inter_latency_df.loc[target, i] for i in interferersF]
        # intra_our = [intra_latency_df.loc[target, i] for i in interferersF]
        # total_our = [i + j for i, j in zip(inter_our, intra_our)]
        inter_our = [safe_get_scalar(inter_latency_df, target, i) for i in interferersF]
        inter_zw  = [safe_get_scalar(inter_latency_df_zw, target, i) for i in interferersF]
        intra_our = [safe_get_scalar(intra_latency_df, target, i) for i in interferersF]

        total_our = [i + j for i, j in zip(inter_our, intra_our)]
        total_zw  = [i + j for i, j in zip(inter_zw, intra_our)]
        
        for v in inter_our + inter_zw:
            print(type(v), v)


        # 计算 y 轴范围
        all_min = min([max(v, 10) for v in inter_our + inter_zw])
        all_max = max(total_our + total_zw)

        x     = np.arange(len(interferersF))
        width = 0.45

        fig, ax = plt.subplots(figsize=(20, 10))
        fig.patch.set_facecolor('white')
        ax.set_facecolor('white')


        # 绘制 ZW
        ax.bar(x - width/2, inter_zw, width,
            label='Inter-core\n(Zhang2022)', color=color_zw_inter)
        ax.bar(x - width/2, intra_our, width,
            bottom=inter_zw, label='Total WCET\n(Zhang2022)', color=color_zw_intra)
        # 绘制 Our
                
        ax.bar(x + width/2, inter_our, width,
            label='Inter-core\n(Proposed)', color=color_our_inter)
        ax.bar(x + width/2, intra_our, width,
            bottom=inter_our, label='Total WCET\n(Proposed)', color=color_our_intra)

        # 数值标注（黑色，无旋转）
        for i in range(len(x)):
            # Our Total WCET
            if total_our[i] != 0:
                ax.text(x[i] + width/2, total_our[i]+100, format_number(total_our[i]),
                        ha='center', va='bottom', rotation=0, fontsize=20, color='black', weight='bold')

            # Zhang Total WCET
            if total_zw[i] != 0:
                ax.text(x[i] - width/2, total_zw[i]+100, format_number(total_zw[i]),
                        ha='center', va='bottom', rotation=0, fontsize=20, color='black', weight='bold')

            # Our Inter Latency
            if inter_our[i] != 0:
                ax.text(x[i] + width/2, inter_our[i], format_number(inter_our[i]),
                        ha='center', va='bottom', rotation=0, fontsize=20, color='black', weight='bold')
            else:
                ax.text(x[i] + width/2, 10, 0, ha='center', va='bottom', rotation=0, fontsize=20, color='black', weight='bold')

            # Zhang Inter Latency
            if inter_zw[i] != 0:
                ax.text(x[i] - width/2, inter_zw[i], format_number(inter_zw[i]),
                        ha='center', va='bottom', rotation=0, fontsize=20, color='black', weight='bold')
            else:
                ax.text(x[i] - width/2, 10, 0, ha='center', va='bottom', rotation=0, fontsize=20, color='black', weight='bold')



        # 对数 y 轴 + 网格
        ax.set_yscale('log')
        all_max = np.log10(all_max)
        upper = 10 ** (all_max +0.5)
        
        ax.set_ylim(all_min * 0.9, upper)
        # ax.margins(y=0.2)
        
        ax.yaxis.grid(True, which='major', linestyle='--',
                    linewidth=0.7, alpha=0.6)
        
        ax.set_xlim(-0.6, len(interferersF) - 0.4)
        
        interferersF_wrapped = [
            "send_data_\nto_autopilot",
            "test_\nppm_task",
            "check_\nfailsafe_task",
            "check_\nmega128_values",
            "servo_\ntransmit"
        ]
        
    #     interferersF_wrapped = [
    #     "radio_\ncontrol_task","link_\nfbw_send","altitude_\ncontrol_task","climb_\ncontrol_task","stabilisation_\ntask"
    # ]


        # 坐标轴、刻度、标题
        ax.set_xticks(x)
        ax.set_xticklabels(interferersF_wrapped, fontsize=25, weight='bold',)
        ax.set_ylabel("Cycles (log scale)", fontsize=35, weight='bold')
        # ax.set_title(f"WCET Estimates Comparison: {target} ",
        #             fontsize=25, weight='bold',y=1.08)
        ax.tick_params(axis='both', labelsize=25)
        
        plt.subplots_adjust(top=0.85, bottom=0.15, left=0.08, right=0.98)
        ax.legend(loc='upper center',
            bbox_to_anchor=(0.5, 1.17),  # 现在 0.98 处就是頂端空白里
            ncol=4,
            borderaxespad=0.0,
            frameon=False,
            columnspacing=2,     # 控制列与列之间的距离（默认 2.0）
            handletextpad=0.8,      # 控制图例图形和文本之间的距离（默认 0.8）
            prop={'family': 'sans-serif', 'weight': 'bold', 'size': 25},
            fontsize=27)
        # # 图例放置在顶部中央
        # ax.legend(loc='upper center',
        #           ncol=4, frameon=False, fontsize=16)
        

        # 保存为 PDF
        plt.savefig(os.path.join(base_dir, 'Plots', f"{target}_comparison.pdf"),bbox_inches='tight', pad_inches=0.10)
        plt.close(fig)


    # 输出目录
    os.makedirs("Plots/table", exist_ok=True)
    
    
    interferers = [
        "adpcm_dec", "binarysearch", "cover", "fir2dim", "fmref",
        "huff_dec", "iir", "insertsort", "jfdctint", "ndes", "st", "statemate"
    ]
    # 表1：inter 差异比值
    # inter_diff_ratio_df = ((inter_latency_df_zw[interferers] - inter_latency_df[interferers]) / inter_latency_df_zw[interferers])
    inter_diff_ratio_df = inter_latency_df[interferers] / inter_latency_df_zw[interferers]
    # 表2：total 差异比值
    total_zw = inter_latency_df_zw + intra_latency_df
    total_our = inter_latency_df + intra_latency_df

    # total_diff_ratio_df = ((total_zw[interferers] - total_our[interferers]) / total_zw[interferers])


    total_diff_ratio_df = total_our[interferers] / total_zw[interferers]

    inter_diff_ratio_df = inter_diff_ratio_df.fillna(1)
    total_diff_ratio_df = total_diff_ratio_df.fillna(1)

    # 构造掩码：intra_latency_df 或 intra_latency_df_zw 中有 NaN 的位置为 True
    # nan_mask = (intra_latency_df.isna() | intra_latency_df_zw.isna())[interferers]

    # 将对应位置在 ratio 表中设为 NaN
    # inter_diff_ratio_df = inter_diff_ratio_df.mask(nan_mask)
    # total_diff_ratio_df = total_diff_ratio_df.mask(nan_mask)
    # inter_diff_ratio_df=inter_diff_ratio_df.round(2)
    # total_diff_ratio_df=total_diff_ratio_df.round(2)    

    #计算平均值
    for df in [inter_diff_ratio_df, total_diff_ratio_df]:
        df['AVG'] = df.mean(axis=1)
        
    inter_diff_ratio_df=inter_diff_ratio_df.round(2)
    total_diff_ratio_df=total_diff_ratio_df.round(2)  
    # inter_diff_ratio_df=inter_diff_ratio_df.applymap(
    #     lambda x: f"{x:.1f}" if (x == 0 or x == 1) else f"{x:.2f}" if isinstance(x, (int, float)) else x
    # )
    # total_diff_ratio_df=total_diff_ratio_df.applymap(
    #     lambda x: f"{x:.1f}" if (x == 0 or x == 1) else f"{x:.2f}" if isinstance(x, (int, float)) else x
    # ) 
    
        # 重排索引
    inter_diff_ratio_df    = reorder_index(inter_diff_ratio_df, interferers)
    total_diff_ratio_df    = reorder_index(total_diff_ratio_df, interferers)
    print(inter_diff_ratio_df.index.tolist())

    inter_diff_ratio_df.index.name='Benchmark'
    total_diff_ratio_df.index.name='Benchmark'
    # 保存为 CSV（可选）
    inter_diff_ratio_df.to_csv("./Plots/table/inter_diff_ratio.csv")
    total_diff_ratio_df.to_csv("./Plots/table/totalWCET_diff_ratio.csv")




    def save_df_as_table(df, filename, title=None, fontsize=10):
        fig, ax = plt.subplots(figsize=(len(df.columns) * 1.2 + 2,
                                        len(df) * 0.25 + 1))
        ax.axis('off')  # 不显示坐标轴
        df.index.name='Benchmark'
        df.columns.name='Benchmark'
        # 添加表格
        table = ax.table(cellText=df.values,
                        colLabels=df.columns,
                        rowLabels=df.index,
                        loc='center',
                        cellLoc='center')

            
        for cell in table.get_celld().values():
            cell.set_linewidth(1.0)

        # 字体大小调整
        table.auto_set_font_size(False)
        table.set_fontsize(fontsize)
        table.scale(1.2, 1.2)

        # 设置标题（位置略高）
        if title:
            ax.set_title(title, fontsize=fontsize + 4, pad=5)

        plt.tight_layout()
        # plt.subplots_adjust(left=0.05, right=0.95, top=0.85, bottom=0.05)
        plt.savefig(filename, format='pdf',bbox_inches='tight')
        plt.close()



    save_df_as_table(inter_diff_ratio_df, os.path.join(base_dir, 'Plots','table', 'inter_diff_ratio_table.pdf'), title="TABLE:Inter_latency(Our)/ Inter_latency(Zhang2022)")
    save_df_as_table(total_diff_ratio_df, os.path.join(base_dir, 'Plots','table', 'total_diff_ratio_table.pdf'), title="TABLE:total_WCET(Our) / total_WCET(Zhang2022)")

