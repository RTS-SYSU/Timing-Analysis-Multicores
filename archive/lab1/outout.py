import os
import shutil

# 设置目录路径
base_dir = "zw"
output_dir = "0712outputzw"

# 确保输出文件夹存在
# os.makedirs(output_dir, exist_ok=True)

# 遍历0709_our下的所有子文件夹
for subfolder in os.listdir(base_dir):
    subfolder_path = os.path.join(base_dir, subfolder)
    if os.path.isdir(subfolder_path):
        result_path = os.path.join(subfolder_path, "build", "Result.txt")
        if os.path.exists(result_path):
            # 读取文件并统计 "inter" 出现的次数
            with open(result_path, "r", encoding="utf-8", errors="ignore") as f:
                content = f.read()
                if content.count("inter") >= 2:
                    # 满足条件，移动子文件夹到0711output
                    dest_path = os.path.join(output_dir, subfolder)
                    shutil.move(subfolder_path, dest_path)
                    print(f"Moved: {subfolder}")


# 设置目录路径
base_dir = "our"
output_dir = "0711output"

# 确保输出文件夹存在
# os.makedirs(output_dir, exist_ok=True)

# 遍历0709_our下的所有子文件夹
for subfolder in os.listdir(base_dir):
    subfolder_path = os.path.join(base_dir, subfolder)
    if os.path.isdir(subfolder_path):
        result_path = os.path.join(subfolder_path, "build", "Result.txt")
        if os.path.exists(result_path):
            # 读取文件并统计 "inter" 出现的次数
            with open(result_path, "r", encoding="utf-8", errors="ignore") as f:
                content = f.read()
                if content.count("inter") >= 2:
                    # 满足条件，移动子文件夹到0711output
                    dest_path = os.path.join(output_dir, subfolder)
                    shutil.move(subfolder_path, dest_path)
                    print(f"Moved: {subfolder}")