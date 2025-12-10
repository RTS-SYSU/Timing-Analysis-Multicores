#!/usr/bin/env python3

import os

# def remove_target_files(root_dir, target_filename="ZW_F_addr.txt"):
def remove_target_files(root_dir, target_filename="StateGraph_Time.dot"):
# def remove_target_files(root_dir, target_filename="JJY_loop_stack.txt"):
    for dirpath, dirnames, filenames in os.walk(root_dir):
        for filename in filenames:
            if filename == target_filename:
                file_path = os.path.join(dirpath, filename)
                try:
                    os.remove(file_path)
                    print(f"Deleted: {file_path}")
                except Exception as e:
                    print(f"Failed to delete {file_path}: {e}")

if __name__ == "__main__":
    root_directory = "/workspaces/llvmta/our_experiment"  # <-- 改成你的根目录
    remove_target_files(root_directory)
