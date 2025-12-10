import os
import sys
import pandas as pd
from collections import defaultdict

# 提取去除数字和_main后的函数名
def extract_func_name(raw_name):
    # 去掉前面的数字和下划线
    first_underscore = raw_name.find('_')
    name_after_number = raw_name[first_underscore+1:]
    # 去掉最后的"_main"
    if name_after_number.endswith('_main'):
        func_name = name_after_number[:-5]
    else:
        func_name = name_after_number
    return func_name

def parse_statistics_txt(filepath):
    """Parse the Statistics.txt file and extract execution time of type 'inter'"""
    stats = {}
    current_measurement = None
    current_id = None

    if not os.path.exists(filepath):
        print(f" File not found, skipping: {filepath}")
        return stats


    try:
        with open(filepath, 'r') as f:
            for line in f:
                line = line.strip()

                if line == '<measurement>':
                    current_measurement = {}
                elif line == '</measurement>' and current_id:
                    if '_inter' in current_id and current_id.endswith('_inter'):
                        functions_part = current_id[:-6]
                        first_sep = functions_part.find('_main_')
                        if first_sep != -1:
                            func1_raw = functions_part[:first_sep+5]
                            func2_raw = functions_part[first_sep+6:]

                            func1 = extract_func_name(func1_raw)   # 目标任务
                            func2 = extract_func_name(func2_raw)   # 干扰任务

                            if func1 and func2:
                                if func1 not in stats:
                                    stats[func1] = {}
                                stats[func1][func2] = current_measurement.get('time', 0)

                    current_id = None
                elif line.startswith('<id>') and line.endswith('</id>'):
                    current_id = line[4:-5]
                elif line.startswith('<time>') and line.endswith('</time>'):
                    current_measurement['time'] = float(line[6:-7])
    except Exception as e:
        print(f"⚠️ Unable to open or parse file {filepath}: {e}")


    return stats

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


# 干扰任务队列
queue1 = [
    "adpcm_dec", "binarysearch", "cover", "fir2dim", "fmref",
    "huff_dec", "iir", "insertsort", "jfdctint", "ndes", "st", "statemate"
]

# 目标任务队列
queue2 = [
    "adpcm_dec", "cover", "gsm_enc", "matrix1", "dijkstra", "h264_dec", "md5", "sha",
    "audiobeam", "huff_dec", "minver", "st", "binarysearch", "fft", "iir", "ndes",
    "statemate", "bsort", "filterbank", "insertsort", "petrinet", "cjpeg_transupp",
    "fir2dim", "jfdctint", "pm", "cjpeg_wrbmp", "fmref", "lift", "powerwindow",
    "complex_updates", "g723_enc", "lms", "prime", "countnegative", "gsm_dec", "ludcmp"
]

def parse_result_file(file_path):
    """Parse the Result.txt file and return intra and inter data"""
    intra_data = []
    inter_data = []

    with open(file_path, 'r') as file:
        for line in file:
            parts = line.strip().split()
            if len(parts) == 3 and parts[1] == 'intra':  
                task = parts[0].replace('_main', '')
                intra_data.append((task, int(parts[2])))
            elif len(parts) == 4 and parts[1] == 'inter':
                target = parts[0].replace('_main', '')
                interferer = parts[2].replace('_main', '')
                inter_data.append((target, interferer, int(parts[3])))
    return intra_data, inter_data




def generate_csv(root_dir, output_intra="intra.csv", output_inter="inter.csv", output_time="exe_time.csv"):
    # Initialise two matrices and fill them with 0
    intra_df = pd.DataFrame(0, index=queue2, columns=queue1)
    inter_df = pd.DataFrame(0, index=queue2, columns=queue1)
    time_df = pd.DataFrame(0.0, index=queue2, columns=queue1)  

    for folder in os.listdir(root_dir):
        folder_path = os.path.join(root_dir, folder)
        if os.path.isdir(folder_path):
            result_file = os.path.join(folder_path, "build", "Result.txt")
            if os.path.exists(result_file):
                intra_data, inter_data = parse_result_file(result_file)


                for target, interferer, value in inter_data:
                    if target in queue2 and interferer in queue1:
                        inter_df.loc[target, interferer] = value
                        for task, value in intra_data:
                            if task==target:
                                intra_df.loc[task, interferer] = value  
                                
    
                stats = parse_statistics_txt(os.path.join(folder_path, "build", "Statistics.txt"))
                for target, inter_dict in stats.items():
                    if target in queue2:
                        for interferer, time_value in inter_dict.items():
                            if interferer in queue1:
                                time_df.loc[target, interferer] = time_value
                
                                        
            
    time_df["average"] = time_df.mean(axis=1)


    intra_df.to_csv(os.path.join(root_dir, output_intra))
    inter_df.to_csv(os.path.join(root_dir, output_inter))
    time_df.to_csv(os.path.join(root_dir, output_time))
    print(f"Generation completed:\n{os.path.abspath(os.path.join(root_dir, output_intra))}\n"
      f"{os.path.abspath(os.path.join(root_dir, output_inter))}\n"
      f"{os.path.abspath(os.path.join(root_dir, output_time))}")


if __name__ == "__main__":
    if len(sys.argv) < 2:
        print("Usage: python data.py <path_to_Our_folder>")
        sys.exit(1)

    root_directory = sys.argv[1]
    if not os.path.isdir(root_directory):
        print(f"Error: The path {root_directory} does not exist or is not a directory")
        sys.exit(1)

    generate_csv(root_directory)
