import pandas as pd
import matplotlib.pyplot as plt
import os
import numpy as np

def plot_inter_ratio_boxplots(base_path="."):
    # 核心文件夹对应关系
    folders = [
        ("0728_2core_our", "0728_2core_zw"),
        ("0728_4core_our", "0728_4core_zw"),
        ("0728_6core_our", "0728_6core_zw"),
        ("0728_8core_our", "0728_8core_zw"),
    ]

    inter_ratios = []   
    total_ratios = []   
    labels = ["2 core", "4 core", "6 core", "8 core"]

    for our_folder, zw_folder in folders:
        our_path = os.path.join(base_path, our_folder, "result_summary.csv")
        zw_path = os.path.join(base_path, zw_folder, "result_summary.csv")

        if not os.path.exists(our_path) or not os.path.exists(zw_path):
            raise FileNotFoundError(f"缺少 {our_path} 或 {zw_path}")

        our_df = pd.read_csv(our_path)
        zw_df = pd.read_csv(zw_path)

        inter_ratio = (our_df["Inter"] / zw_df["Inter"]).dropna().tolist()
        total_ratio = ((our_df["Inter"] + our_df["Intra"]) / (zw_df["Inter"] + zw_df["Intra"])).dropna().tolist()

        inter_ratios.append(inter_ratio)
        total_ratios.append(total_ratio)

    # 创建输出文件夹
    output_dir = os.path.join(base_path, "Plots", "core")
    os.makedirs(output_dir, exist_ok=True)

    # 绘制美化后的箱型图
    fig, ax = plt.subplots(figsize=(16, 8))

    positions_inter = [i * 2 for i in range(len(labels))]
    positions_total = [p + 0.8 for p in positions_inter]

    # 自定义颜色
    colors = {"inter": "#E5987B", "total": "#355a6e"}  # 蓝色 & 绿色

    # 绘制箱型图 (our_inter/zw_inter)
    bp1 = ax.boxplot(inter_ratios, positions=positions_inter, widths=0.6, patch_artist=True,
                     boxprops=dict(facecolor=colors["inter"], color="black", linewidth=1.2),
                     whiskerprops=dict(color="black", linewidth=1.2),
                     capprops=dict(color="black", linewidth=1.2),
                     medianprops=dict(color="#FFD5AC", linewidth=2),
                     flierprops=dict(marker='o', color='red', alpha=0.6))

    # 绘制箱型图 ((our_inter+intra)/(zw_inter+intra))
    bp2 = ax.boxplot(total_ratios, positions=positions_total, widths=0.6, patch_artist=True,
                     boxprops=dict(facecolor=colors["total"], color="black", linewidth=1.2),
                     whiskerprops=dict(color="black", linewidth=1.2),
                     capprops=dict(color="black", linewidth=1.2),
                     medianprops=dict(color="#6d96aa", linewidth=2),
                     flierprops=dict(marker='o', color='red', alpha=0.6))

    # 叠加散点以显示真实数据点
    # for i, ratios in enumerate(inter_ratios):
    #     jittered_x = np.random.normal(positions_inter[i], 0.05, size=len(ratios))
    #     ax.scatter(jittered_x, ratios, color="white", edgecolor="black", alpha=0.8, s=30, zorder=3)

    # for i, ratios in enumerate(total_ratios):
    #     jittered_x = np.random.normal(positions_total[i], 0.05, size=len(ratios))
    #     ax.scatter(jittered_x, ratios, color="white", edgecolor="black", alpha=0.8, s=30, zorder=3)

    # X轴标签与网格
    ax.set_xticks([(p1 + p2) / 2 for p1, p2 in zip(positions_inter, positions_total)])
    ax.set_xticklabels(labels, fontsize=25,weight="bold")
    ax.set_xlabel("The Number of Cores in the System", fontsize=30,weight="bold")
    ax.set_ylabel("Ratio of Proposed to Zhang2022", fontsize=30,weight="bold")
    ax.set_ylim(0, 1.05)
    # ax.set_title("Comparison of Core Ratios", fontsize=25, weight="bold",pad=35)
    ax.tick_params(axis='both', labelsize=28)


    # 网格线
    ax.grid(axis="y", linestyle="--", alpha=0.7)

    # 图例
    # ax.legend([bp1["boxes"][0], bp2["boxes"][0]],
    #           ["our_inter / zw_inter", "(our_inter+intra) / (zw_inter+intra)"],
    #           loc="upper right", fontsize=11, frameon=True)
    legend =ax.legend(
        [bp1["boxes"][0], bp2["boxes"][0]],
        ["Inter-core", "Total WCET"],
        loc="lower center",           # 将图例基准点放在底部中心
        bbox_to_anchor=(0.5, 0.97),   # 设置偏移到坐标轴上方 (0.5表示水平居中)
        ncol=2,                       # 图例分为两列并排
        prop={'family': 'sans-serif', 'weight': 'bold', 'size': 30},
        frameon=False                 # 去掉边框
    )
    
    # 去掉图例中box的黑边
    for patch in legend.get_patches():
        patch.set_edgecolor('none')


    plt.tight_layout()

    # 保存PDF
    pdf_path = os.path.join(output_dir, "core_ratios_boxplot.pdf")
    plt.savefig(pdf_path, format="pdf", dpi=300)
    print(f"箱型图已保存到: {pdf_path}")
    plt.close(fig)

if __name__ == "__main__":
    plot_inter_ratio_boxplots()


