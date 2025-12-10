import os
import csv
import re
import argparse

def extract_results(root_dir, output_csv):
    header = ["Task", "Intra", "Inter"]
    data = []

    for task_name in os.listdir(root_dir):
        task_path = os.path.join(root_dir, task_name)
        build_path = os.path.join(task_path, "build")
        result_file = os.path.join(build_path, "Result.txt")

        if os.path.isdir(task_path) and os.path.isfile(result_file):
            intra_value = None
            inter_value = None

            # READ Result.txt
            with open(result_file, "r", encoding="utf-8") as f:
                for line in f:
                    # Match "task_name_main intra value"
                    match_intra = re.search(rf"{task_name}_main\s+intra\s+([\d\.]+)", line)
                    if match_intra and intra_value is None:
                        intra_value = match_intra.group(1)

                    # Match "task_name_main inter value"
                    match_inter = re.search(rf"{task_name}_main\s+inter\w*(?:\s+\S+)?\s+([\d\.]+)", line)
                    
                    if match_inter and inter_value is None:
                        inter_value = match_inter.group(1)

                    if intra_value is not None and inter_value is not None:
                        break

            if intra_value is not None and inter_value is not None:
                data.append([task_name, intra_value, inter_value])
            else:
                print(f"Complete intra/inter data not found in Result.txt for {task_name}")


    with open(os.path.join(root_dir, output_csv), "w", newline="", encoding="utf-8") as f:
        writer = csv.writer(f)
        writer.writerow(header)
        writer.writerows(data)

    print(f"Results have been saved to {os.path.join(root_dir, output_csv)}")



if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Extract task intra/inter results and generate CSV")
    parser.add_argument("root_dir", help="Root directory, e.g., 2core_Our")
    parser.add_argument("-o", "--output", default="result_summary.csv", help="Output CSV file name (default: result_summary.csv)")
    args = parser.parse_args()

    extract_results(args.root_dir, args.output)
