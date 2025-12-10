import os
import sys
import pandas as pd
from collections import defaultdict
from pprint import pprint

def parse_rwinfo(filepath):
    """RWInfo.txt """
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


queue1 = [
    "adpcm_dec", "binarysearch", "cover", "fir2dim", "fmref",
    "huff_dec", "iir", "insertsort", "jfdctint", "ndes", "st", "statemate"
]

queue2 = [
    "adpcm_dec", "cover", "gsm_enc", "matrix1", "dijkstra", "h264_dec", "md5", "sha",
    "audiobeam", "huff_dec", "minver", "st", "binarysearch", "fft", "iir", "ndes",
    "statemate", "bsort", "filterbank", "insertsort", "petrinet", "cjpeg_transupp",
    "fir2dim", "jfdctint", "pm", "cjpeg_wrbmp", "fmref", "lift", "powerwindow",
    "complex_updates", "g723_enc", "lms", "prime", "countnegative", "gsm_dec", "ludcmp"
]



def generate_markdown(stats, count, output_file):
    
    
    with open(output_file, 'w') as f:
        f.write("# Cache-accessing statistics of tasks\n\n")
        f.write("| Benchmark | Hit | L2Hit | L2PS | L2Miss | Total Access | Unique blocks | L2 Access Ratio | L2 Hit Ratio |\n")
        f.write("|-----------|-----|-------|------|--------|--------------|---------------|-----------------|--------------|\n")

        for func in sorted(stats.keys()):
            hits_sum = 0
            l2hits_sum = 0
            l2pss_sum = 0
            l2misses_sum = 0
            unique=0
            func_name = func.removesuffix("_main")


            # 累计该 Benchmark 的所有访问类型
            for access_type in sorted(stats[func].keys()):
                hits_sum += stats[func][access_type].get('Hit', 0) / count[func]
                l2hits_sum += stats[func][access_type].get('L2Hit', 0) / count[func]
                l2pss_sum += stats[func][access_type].get('L2PS', 0) / count[func]
                l2misses_sum += stats[func][access_type].get('L2Miss', 0) / count[func]
                unique += stats[func][access_type].get('Total', 0)

            total = hits_sum + l2hits_sum + l2pss_sum + l2misses_sum
            
            l2acc=(total-hits_sum)/total
            l2hit=(l2hits_sum+l2pss_sum)/(total-hits_sum)
            l2acc = round(l2acc*100, 2)
            l2hit = round(l2hit*100, 2)

            # 取整（如果需要）
            hits_sum = round(hits_sum)
            l2hits_sum = round(l2hits_sum)
            l2pss_sum = round(l2pss_sum)
            l2misses_sum = round(l2misses_sum)
            total = round(total)
        

            # 打印合并后的单行
            f.write(f"| {func_name} | {hits_sum} | {l2hits_sum} | {l2pss_sum} | {l2misses_sum} | {total} | {unique} | {l2acc}% |{l2hit}%|\n")
            
    print(f"TABLE has been saved to: {os.path.abspath(output_file)}")



def generate_MD(root_dir):

    cache_info = defaultdict(lambda: defaultdict(lambda: defaultdict(int)))
    
    func_count = defaultdict(int)
    directory="TABLE_V/Liang2012"

    # 遍历 Our 文件夹下的所有子目录
    for folder in os.listdir(root_dir):
        folder_path = os.path.join(root_dir, folder)
        if os.path.isdir(folder_path):
            rwinfo_path = os.path.join(folder_path, "build","RWInfo.txt")
            if os.path.exists(rwinfo_path):
                if os.path.exists(rwinfo_path):
                    stats = parse_rwinfo(rwinfo_path)
                    for func in stats:
                        func_count[func]+=1
                        for access_type in stats[func]:
                            for category in stats[func][access_type]:
                                cache_info[func][access_type][category] += stats[func][access_type][category]
                                
        # 遍历 Our 文件夹下的所有子目录
    for folder in os.listdir(directory):
        folder_path = os.path.join(directory, folder)
        if os.path.isdir(folder_path):
            rwinfo_path = os.path.join(folder_path, "build","RWInfo_u.txt")
            # print(rwinfo_path )
            if os.path.exists(rwinfo_path):
                if os.path.exists(rwinfo_path):
                    stats = parse_rwinfo(rwinfo_path)
                    # pprint(stats)
                    for func in stats:
                        for access_type in stats[func]:
                            for category in stats[func][access_type]:
                                cache_info[func][access_type][category] = stats[func][access_type][category]
                            
    # print(func_count)                   
    
    generate_markdown(cache_info,func_count ,os.path.join("TABLE_V","TABLE_V.md"))




if __name__ == "__main__":
    if len(sys.argv) < 2:
        print("Usage: python script.py <path_to_Our_folder>")
        sys.exit(1)

    root_directory = sys.argv[1]
    if not os.path.isdir(root_directory):
        print(f"Error: The path {root_directory} does not exist or is not a directory")
        sys.exit(1)

    generate_MD(root_directory)
