#!/bin/bash

LIB_DIR="../../libraries/arm"  # 根据你的路径结构调整
CURRENT_DIR=$(pwd)

for testcase in "$CURRENT_DIR"/*; do
    if [ -d "$testcase" ]; then
        echo "Processing $testcase..."

        # 清理旧的 .ll 文件
        rm -f "$testcase"/*.ll
        rm -f "$testcase"/*.bc
        rm -f "$testcase"/*.o
        # 编译 .c 文件为 .ll 文件
        for cfile in "$testcase"/*.c; do
            if [ -f "$cfile" ]; then
            clang -w -S -gline-tables-only -O0 -Xclang -disable-O0-optnone \
                -fno-builtin -target arm -march=armv4t -mfloat-abi=hard -gdwarf-4\
                -emit-llvm "$cfile" -o "${cfile%.c}.ll"
            fi
        done
        # 进入子目录
        cd "$testcase" || { echo "Failed to enter $testcase"; continue; }

        llvm-link *.ll "$LIB_DIR"/builtininteger.ll "$LIB_DIR"/builtinstd.ll -o unoptimized.ll

        foldername=$(basename "$testcase")
        opt -S unoptimized.ll -mem2reg -indvars -loop-simplify -instcombine -globaldce -dce -o "$foldername.ll"
    fi
done

# clang -w -S -gline-tables-only -O0 -Xclang \
#         -disable-O0-optnone -fno-builtin \
#         -target arm -march=armv4t \
#         -mfloat-abi=hard \
#         -emit-llvm /workspaces/llvmta/testcases/"$testcases"/*.c 
# llvm-link *.ll /workspaces/llvmta/testcases/libraries/arm/builtininteger.ll \
#                    /workspaces/llvmta/testcases/libraries/arm/builtinstd.ll \
#                    -o unoptimized.ll
# opt -S unoptimized.ll \
#     -mem2reg -indvars -loop-simplify -instcombine -globaldce -dce \
#     -o optimized.ll