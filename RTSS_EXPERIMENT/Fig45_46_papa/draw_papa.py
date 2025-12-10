import pandas as pd
import matplotlib.pyplot as plt
import numpy as np
import os
import subprocess


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

    raise ValueError(f"Unable to extract a scalar value from df[{row}, {col}]")


def format_number(value):
    if value >= 1e4:
        return '{:.3e}'.format(value).replace('+0', '').replace('-0', '-').replace('+1', '1')
    else:
        return f'{value:.0f}'


if __name__ == "__main__":
    # 定义要执行的命令列表
    commands = [
        ["../post_run.py", "-s", "papa_Zhang2022", "-t", "papa_Zhang2022", "-m", "zhangw"],
        ["../post_run.py", "-s", "papa_Our", "-t", "papa_Our", "-m", "our"]
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

    inter_latency_df = pd.read_csv(os.path.join(base_dir, 'papa_Our', 'wceet.csv'), index_col=0)
    intra_latency_df = pd.read_csv(os.path.join(base_dir, 'papa_Our', 'intra_wcet.csv'), index_col=0)

    inter_latency_df_zw = pd.read_csv(os.path.join(base_dir, 'papa_Zhang2022', 'wceet.csv'), index_col=0)
    intra_latency_df_zw = pd.read_csv(os.path.join(base_dir, 'papa_Zhang2022', 'intra_wcet.csv'), index_col=0)


    inter_latency_df.to_csv("./Plots/table/inter_Our.csv")
    inter_latency_df_zw.to_csv("./Plots/table/inter_Zhangw.csv")

    task_groups = [
        {
            "target_tasks": ["radio_control_task"],
            "interferersF": [
                "send_data_to_autopilot_task",
                "test_ppm_task",
                "check_failsafe_task",
                "check_mega128_values_task",
                "servo_transmit"
            ],
            "interferersF_wrapped": [
                "send_data_\nto_autopilot",
                "test_\nppm_task",
                "check_\nfailsafe_task",
                "check_\nmega128_values",
                "servo_\ntransmit"
            ]
        },
        {
            "target_tasks": ["send_data_to_autopilot_task"],
            "interferersF": [
                "radio_control_task",
                "link_fbw_send",
                "altitude_control_task",
                "climb_control_task",
                "stabilisation_task"
            ],
            "interferersF_wrapped": [
                "radio_\ncontrol_task",
                "link_\nfbw_send",
                "altitude_\ncontrol_task",
                "climb_\ncontrol_task",
                "stabilisation_\ntask"
            ]
        }
    ]


    # 配色
    color_our_inter   = '#355a6e'
    color_our_intra   = '#6d96aa'
    color_zw_inter    = '#E5987B'
    color_zw_intra    = '#FFD5AC'
    
    for group in task_groups:
        target_tasks = group["target_tasks"]
        interferersF = group["interferersF"]
        interferersF_wrapped = group["interferersF_wrapped"]
        

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
            
            # for v in inter_our + inter_zw:
            #     print(type(v), v)


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
            
            plt.savefig(os.path.join(base_dir, 'Plots', f"{target}_comparison.pdf"),bbox_inches='tight', pad_inches=0.10)
            plt.close(fig)
            ppp=os.path.join(base_dir, 'Plots', f"{target}_comparison.pdf");
            print(f"Fig has been saved to: {ppp}")
            