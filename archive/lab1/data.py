import os
import csv
import re
import argparse

def extract_results(root_dir, output_csv):
    header = ["Task", "Intra", "Inter"]
    data = []

    # 遍历子文件夹
    for task_name in os.listdir(root_dir):
        task_path = os.path.join(root_dir, task_name)
        build_path = os.path.join(task_path, "build")
        result_file = os.path.join(build_path, "Result.txt")

        if os.path.isdir(task_path) and os.path.isfile(result_file):
            intra_value = None
            inter_value = None

            # 读取Result.txt
            with open(result_file, "r", encoding="utf-8") as f:
                for line in f:
                    # 匹配 "任务名_main intra 数值"
                    match_intra = re.search(rf"{task_name}_main\s+intra\s+([\d\.]+)", line)
                    if match_intra and intra_value is None:
                        intra_value = match_intra.group(1)

                    # 匹配 "任务名_main inter 数值"
                    match_inter = re.search(rf"{task_name}_main\s+inter\w*(?:\s+\S+)?\s+([\d\.]+)", line)
                    
                    if match_inter and inter_value is None:
                        inter_value = match_inter.group(1)

                    if intra_value is not None and inter_value is not None:
                        break

            if intra_value is not None and inter_value is not None:
                data.append([task_name, intra_value, inter_value])
            else:
                print(f"{task_name} 的 Result.txt 中未找到完整的 intra/inter 数据")

    # 写入 CSV
    with open(os.path.join(root_dir, output_csv), "w", newline="", encoding="utf-8") as f:
        writer = csv.writer(f)
        writer.writerow(header)
        writer.writerows(data)

    print(f"结果已保存到 {output_csv}")


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="提取任务 intra/inter 结果并生成 CSV")
    parser.add_argument("root_dir", help="根目录，例如 0728_8core_our")
    parser.add_argument("-o", "--output", default="result_summary.csv", help="输出 CSV 文件名（默认：result_summary.csv）")
    args = parser.parse_args()

    extract_results(args.root_dir, args.output)
