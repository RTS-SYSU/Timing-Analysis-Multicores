import pandas as pd
import matplotlib.pyplot as plt
import numpy as np
import os
# 示例：读取 inter_latency_df 和 intra_latency_df
inter_latency_df = pd.read_csv('wceet.csv', index_col=0)
intra_latency_df = pd.read_csv('intra_wcet.csv', index_col=0)

# 假设 inter_latency_df 和 intra_latency_df 已经是 DataFrame
# 并且行是干扰任务（interferer），列是目标任务（target）

target_tasks = inter_latency_df.columns  # 遍历目标任务
interferers = inter_latency_df.index     # 所有干扰任务名

os.makedirs("Plots", exist_ok=True)

for target in target_tasks:
    inter_vals = [inter_latency_df.loc[target,i] for i in interferers]
    intra_vals = [intra_latency_df.loc[target,i] for i in interferers]
    total_vals = [i + j for i, j in zip(inter_vals, intra_vals)]
    safe_totalmin = [max(val, 1e-2) for val in inter_vals]
    safe_totalmax = [max(val, 1e-2) for val in total_vals]

    x = np.arange(len(interferers))
    width = 0.6

    fig, ax = plt.subplots(figsize=(20, 10))

    bars1 = ax.bar(x, inter_vals, width, label='Inter Latency', color='skyblue')
    bars2 = ax.bar(x, intra_vals, width, bottom=inter_vals, label='total WCET', color='lightgreen')

    # 添加数值标注
    for i in range(len(x)):
        ax.text(x[i], inter_vals[i], f'{inter_vals[i]:.0f}', ha='center', va='bottom', fontsize=8, color='blue')
        ax.text(x[i], total_vals[i], f'{total_vals[i]:.0f}', ha='center', va='bottom', fontsize=8, color='green')
    
    ax.set_yscale('log')
    ax.set_ylim(min(safe_totalmin) * 0.9, max(safe_totalmax) * 1.1)
    ax.set_xticks(x)
    ax.set_xticklabels(interferers, rotation=45, ha='right')
    ax.set_ylabel("Cycles (log scale)")
    ax.set_title(f"Latency Breakdown for Target Task: {target}")
    ax.legend()
    ax.yaxis.grid(True, which='both', linestyle='--', linewidth=0.5)

    plt.tight_layout()
    plt.savefig(f"Plots/{target}_stacked_bar.png")
    plt.close()


