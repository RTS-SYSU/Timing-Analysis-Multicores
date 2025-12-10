; ModuleID = '/workspaces/llvmta/testcases/wcet_bench/ns.c'
source_filename = "/workspaces/llvmta/testcases/wcet_bench/ns.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv4t-unknown-unknown"

@keys = dso_local global [5 x [5 x [5 x [5 x i32]]]] [[5 x [5 x [5 x i32]]] zeroinitializer, [5 x [5 x [5 x i32]]] [[5 x [5 x i32]] [[5 x i32] [i32 1, i32 1, i32 1, i32 1, i32 1], [5 x i32] [i32 1, i32 1, i32 1, i32 1, i32 1], [5 x i32] [i32 1, i32 1, i32 1, i32 1, i32 1], [5 x i32] [i32 1, i32 1, i32 1, i32 1, i32 1], [5 x i32] [i32 1, i32 1, i32 1, i32 1, i32 1]], [5 x [5 x i32]] [[5 x i32] [i32 1, i32 1, i32 1, i32 1, i32 1], [5 x i32] [i32 1, i32 1, i32 1, i32 1, i32 1], [5 x i32] [i32 1, i32 1, i32 1, i32 1, i32 1], [5 x i32] [i32 1, i32 1, i32 1, i32 1, i32 1], [5 x i32] [i32 1, i32 1, i32 1, i32 1, i32 1]], [5 x [5 x i32]] [[5 x i32] [i32 1, i32 1, i32 1, i32 1, i32 1], [5 x i32] [i32 1, i32 1, i32 1, i32 1, i32 1], [5 x i32] [i32 1, i32 1, i32 1, i32 1, i32 1], [5 x i32] [i32 1, i32 1, i32 1, i32 1, i32 1], [5 x i32] [i32 1, i32 1, i32 1, i32 1, i32 1]], [5 x [5 x i32]] [[5 x i32] [i32 1, i32 1, i32 1, i32 1, i32 1], [5 x i32] [i32 1, i32 1, i32 1, i32 1, i32 1], [5 x i32] [i32 1, i32 1, i32 1, i32 1, i32 1], [5 x i32] [i32 1, i32 1, i32 1, i32 1, i32 1], [5 x i32] [i32 1, i32 1, i32 1, i32 1, i32 1]], [5 x [5 x i32]] [[5 x i32] [i32 1, i32 1, i32 1, i32 1, i32 1], [5 x i32] [i32 1, i32 1, i32 1, i32 1, i32 1], [5 x i32] [i32 1, i32 1, i32 1, i32 1, i32 1], [5 x i32] [i32 1, i32 1, i32 1, i32 1, i32 1], [5 x i32] [i32 1, i32 1, i32 1, i32 1, i32 1]]], [5 x [5 x [5 x i32]]] [[5 x [5 x i32]] [[5 x i32] [i32 2, i32 2, i32 2, i32 2, i32 2], [5 x i32] [i32 2, i32 2, i32 2, i32 2, i32 2], [5 x i32] [i32 2, i32 2, i32 2, i32 2, i32 2], [5 x i32] [i32 2, i32 2, i32 2, i32 2, i32 2], [5 x i32] [i32 2, i32 2, i32 2, i32 2, i32 2]], [5 x [5 x i32]] [[5 x i32] [i32 2, i32 2, i32 2, i32 2, i32 2], [5 x i32] [i32 2, i32 2, i32 2, i32 2, i32 2], [5 x i32] [i32 2, i32 2, i32 2, i32 2, i32 2], [5 x i32] [i32 2, i32 2, i32 2, i32 2, i32 2], [5 x i32] [i32 2, i32 2, i32 2, i32 2, i32 2]], [5 x [5 x i32]] [[5 x i32] [i32 2, i32 2, i32 2, i32 2, i32 2], [5 x i32] [i32 2, i32 2, i32 2, i32 2, i32 2], [5 x i32] [i32 2, i32 2, i32 2, i32 2, i32 2], [5 x i32] [i32 2, i32 2, i32 2, i32 2, i32 2], [5 x i32] [i32 2, i32 2, i32 2, i32 2, i32 2]], [5 x [5 x i32]] [[5 x i32] [i32 2, i32 2, i32 2, i32 2, i32 2], [5 x i32] [i32 2, i32 2, i32 2, i32 2, i32 2], [5 x i32] [i32 2, i32 2, i32 2, i32 2, i32 2], [5 x i32] [i32 2, i32 2, i32 2, i32 2, i32 2], [5 x i32] [i32 2, i32 2, i32 2, i32 2, i32 2]], [5 x [5 x i32]] [[5 x i32] [i32 2, i32 2, i32 2, i32 2, i32 2], [5 x i32] [i32 2, i32 2, i32 2, i32 2, i32 2], [5 x i32] [i32 2, i32 2, i32 2, i32 2, i32 2], [5 x i32] [i32 2, i32 2, i32 2, i32 2, i32 2], [5 x i32] [i32 2, i32 2, i32 2, i32 2, i32 2]]], [5 x [5 x [5 x i32]]] [[5 x [5 x i32]] [[5 x i32] [i32 3, i32 3, i32 3, i32 3, i32 3], [5 x i32] [i32 3, i32 3, i32 3, i32 3, i32 3], [5 x i32] [i32 3, i32 3, i32 3, i32 3, i32 3], [5 x i32] [i32 3, i32 3, i32 3, i32 3, i32 3], [5 x i32] [i32 3, i32 3, i32 3, i32 3, i32 3]], [5 x [5 x i32]] [[5 x i32] [i32 3, i32 3, i32 3, i32 3, i32 3], [5 x i32] [i32 3, i32 3, i32 3, i32 3, i32 3], [5 x i32] [i32 3, i32 3, i32 3, i32 3, i32 3], [5 x i32] [i32 3, i32 3, i32 3, i32 3, i32 3], [5 x i32] [i32 3, i32 3, i32 3, i32 3, i32 3]], [5 x [5 x i32]] [[5 x i32] [i32 3, i32 3, i32 3, i32 3, i32 3], [5 x i32] [i32 3, i32 3, i32 3, i32 3, i32 3], [5 x i32] [i32 3, i32 3, i32 3, i32 3, i32 3], [5 x i32] [i32 3, i32 3, i32 3, i32 3, i32 3], [5 x i32] [i32 3, i32 3, i32 3, i32 3, i32 3]], [5 x [5 x i32]] [[5 x i32] [i32 3, i32 3, i32 3, i32 3, i32 3], [5 x i32] [i32 3, i32 3, i32 3, i32 3, i32 3], [5 x i32] [i32 3, i32 3, i32 3, i32 3, i32 3], [5 x i32] [i32 3, i32 3, i32 3, i32 3, i32 3], [5 x i32] [i32 3, i32 3, i32 3, i32 3, i32 3]], [5 x [5 x i32]] [[5 x i32] [i32 3, i32 3, i32 3, i32 3, i32 3], [5 x i32] [i32 3, i32 3, i32 3, i32 3, i32 3], [5 x i32] [i32 3, i32 3, i32 3, i32 3, i32 3], [5 x i32] [i32 3, i32 3, i32 3, i32 3, i32 3], [5 x i32] [i32 3, i32 3, i32 3, i32 3, i32 3]]], [5 x [5 x [5 x i32]]] [[5 x [5 x i32]] [[5 x i32] [i32 4, i32 4, i32 4, i32 4, i32 4], [5 x i32] [i32 4, i32 4, i32 4, i32 4, i32 4], [5 x i32] [i32 4, i32 4, i32 4, i32 4, i32 4], [5 x i32] [i32 4, i32 4, i32 4, i32 4, i32 4], [5 x i32] [i32 4, i32 4, i32 4, i32 4, i32 4]], [5 x [5 x i32]] [[5 x i32] [i32 4, i32 4, i32 4, i32 4, i32 4], [5 x i32] [i32 4, i32 4, i32 4, i32 4, i32 4], [5 x i32] [i32 4, i32 4, i32 4, i32 4, i32 4], [5 x i32] [i32 4, i32 4, i32 4, i32 4, i32 4], [5 x i32] [i32 4, i32 4, i32 4, i32 4, i32 4]], [5 x [5 x i32]] [[5 x i32] [i32 4, i32 4, i32 4, i32 4, i32 4], [5 x i32] [i32 4, i32 4, i32 4, i32 4, i32 4], [5 x i32] [i32 4, i32 4, i32 4, i32 4, i32 4], [5 x i32] [i32 4, i32 4, i32 4, i32 4, i32 4], [5 x i32] [i32 4, i32 4, i32 4, i32 4, i32 4]], [5 x [5 x i32]] [[5 x i32] [i32 4, i32 4, i32 4, i32 4, i32 4], [5 x i32] [i32 4, i32 4, i32 4, i32 4, i32 4], [5 x i32] [i32 4, i32 4, i32 4, i32 4, i32 4], [5 x i32] [i32 4, i32 4, i32 4, i32 4, i32 4], [5 x i32] [i32 4, i32 4, i32 4, i32 4, i32 4]], [5 x [5 x i32]] [[5 x i32] [i32 4, i32 4, i32 4, i32 4, i32 4], [5 x i32] [i32 4, i32 4, i32 4, i32 4, i32 4], [5 x i32] [i32 4, i32 4, i32 4, i32 4, i32 4], [5 x i32] [i32 4, i32 4, i32 4, i32 4, i32 4], [5 x i32] [i32 4, i32 4, i32 4, i32 4, i32 401]]]], align 4
@answer = dso_local global [5 x [5 x [5 x [5 x i32]]]] [[5 x [5 x [5 x i32]]] [[5 x [5 x i32]] [[5 x i32] [i32 123, i32 123, i32 123, i32 123, i32 123], [5 x i32] [i32 123, i32 123, i32 123, i32 123, i32 123], [5 x i32] [i32 123, i32 123, i32 123, i32 123, i32 123], [5 x i32] [i32 123, i32 123, i32 123, i32 123, i32 123], [5 x i32] [i32 123, i32 123, i32 123, i32 123, i32 123]], [5 x [5 x i32]] [[5 x i32] [i32 123, i32 123, i32 123, i32 123, i32 123], [5 x i32] [i32 123, i32 123, i32 123, i32 123, i32 123], [5 x i32] [i32 123, i32 123, i32 123, i32 123, i32 123], [5 x i32] [i32 123, i32 123, i32 123, i32 123, i32 123], [5 x i32] [i32 123, i32 123, i32 123, i32 123, i32 123]], [5 x [5 x i32]] [[5 x i32] [i32 123, i32 123, i32 123, i32 123, i32 123], [5 x i32] [i32 123, i32 123, i32 123, i32 123, i32 123], [5 x i32] [i32 123, i32 123, i32 123, i32 123, i32 123], [5 x i32] [i32 123, i32 123, i32 123, i32 123, i32 123], [5 x i32] [i32 123, i32 123, i32 123, i32 123, i32 123]], [5 x [5 x i32]] [[5 x i32] [i32 123, i32 123, i32 123, i32 123, i32 123], [5 x i32] [i32 123, i32 123, i32 123, i32 123, i32 123], [5 x i32] [i32 123, i32 123, i32 123, i32 123, i32 123], [5 x i32] [i32 123, i32 123, i32 123, i32 123, i32 123], [5 x i32] [i32 123, i32 123, i32 123, i32 123, i32 123]], [5 x [5 x i32]] [[5 x i32] [i32 123, i32 123, i32 123, i32 123, i32 123], [5 x i32] [i32 123, i32 123, i32 123, i32 123, i32 123], [5 x i32] [i32 123, i32 123, i32 123, i32 123, i32 123], [5 x i32] [i32 123, i32 123, i32 123, i32 123, i32 123], [5 x i32] [i32 123, i32 123, i32 123, i32 123, i32 123]]], [5 x [5 x [5 x i32]]] [[5 x [5 x i32]] [[5 x i32] [i32 234, i32 234, i32 234, i32 234, i32 234], [5 x i32] [i32 234, i32 234, i32 234, i32 234, i32 234], [5 x i32] [i32 234, i32 234, i32 234, i32 234, i32 234], [5 x i32] [i32 234, i32 234, i32 234, i32 234, i32 234], [5 x i32] [i32 234, i32 234, i32 234, i32 234, i32 234]], [5 x [5 x i32]] [[5 x i32] [i32 234, i32 234, i32 234, i32 234, i32 234], [5 x i32] [i32 234, i32 234, i32 234, i32 234, i32 234], [5 x i32] [i32 234, i32 234, i32 234, i32 234, i32 234], [5 x i32] [i32 234, i32 234, i32 234, i32 234, i32 234], [5 x i32] [i32 234, i32 234, i32 234, i32 234, i32 234]], [5 x [5 x i32]] [[5 x i32] [i32 234, i32 234, i32 234, i32 234, i32 234], [5 x i32] [i32 234, i32 234, i32 234, i32 234, i32 234], [5 x i32] [i32 234, i32 234, i32 234, i32 234, i32 234], [5 x i32] [i32 234, i32 234, i32 234, i32 234, i32 234], [5 x i32] [i32 234, i32 234, i32 234, i32 234, i32 234]], [5 x [5 x i32]] [[5 x i32] [i32 234, i32 234, i32 234, i32 234, i32 234], [5 x i32] [i32 234, i32 234, i32 234, i32 234, i32 234], [5 x i32] [i32 234, i32 234, i32 234, i32 234, i32 234], [5 x i32] [i32 234, i32 234, i32 234, i32 234, i32 234], [5 x i32] [i32 234, i32 234, i32 234, i32 234, i32 234]], [5 x [5 x i32]] [[5 x i32] [i32 234, i32 234, i32 234, i32 234, i32 234], [5 x i32] [i32 234, i32 234, i32 234, i32 234, i32 234], [5 x i32] [i32 234, i32 234, i32 234, i32 234, i32 234], [5 x i32] [i32 234, i32 234, i32 234, i32 234, i32 234], [5 x i32] [i32 234, i32 234, i32 234, i32 234, i32 234]]], [5 x [5 x [5 x i32]]] [[5 x [5 x i32]] [[5 x i32] [i32 345, i32 345, i32 345, i32 345, i32 0], [5 x i32] [i32 345, i32 345, i32 345, i32 345, i32 0], [5 x i32] [i32 345, i32 345, i32 345, i32 345, i32 0], [5 x i32] [i32 345, i32 345, i32 345, i32 345, i32 0], [5 x i32] [i32 345, i32 345, i32 345, i32 345, i32 0]], [5 x [5 x i32]] [[5 x i32] [i32 345, i32 345, i32 345, i32 345, i32 0], [5 x i32] [i32 345, i32 345, i32 345, i32 345, i32 0], [5 x i32] [i32 345, i32 345, i32 345, i32 345, i32 0], [5 x i32] [i32 345, i32 345, i32 345, i32 345, i32 0], [5 x i32] [i32 345, i32 345, i32 345, i32 345, i32 0]], [5 x [5 x i32]] [[5 x i32] [i32 345, i32 345, i32 345, i32 345, i32 0], [5 x i32] [i32 345, i32 345, i32 345, i32 345, i32 0], [5 x i32] [i32 345, i32 345, i32 345, i32 345, i32 0], [5 x i32] [i32 345, i32 345, i32 345, i32 345, i32 0], [5 x i32] [i32 345, i32 345, i32 345, i32 345, i32 0]], [5 x [5 x i32]] [[5 x i32] [i32 345, i32 345, i32 345, i32 345, i32 0], [5 x i32] [i32 345, i32 345, i32 345, i32 345, i32 0], [5 x i32] [i32 345, i32 345, i32 345, i32 345, i32 0], [5 x i32] [i32 345, i32 345, i32 345, i32 345, i32 0], [5 x i32] [i32 345, i32 345, i32 345, i32 345, i32 0]], [5 x [5 x i32]] [[5 x i32] [i32 345, i32 345, i32 345, i32 345, i32 0], [5 x i32] [i32 345, i32 345, i32 345, i32 345, i32 0], [5 x i32] [i32 345, i32 345, i32 345, i32 345, i32 0], [5 x i32] [i32 345, i32 345, i32 345, i32 345, i32 0], [5 x i32] [i32 345, i32 345, i32 345, i32 345, i32 0]]], [5 x [5 x [5 x i32]]] [[5 x [5 x i32]] [[5 x i32] [i32 456, i32 456, i32 456, i32 456, i32 456], [5 x i32] [i32 456, i32 456, i32 456, i32 456, i32 456], [5 x i32] [i32 456, i32 456, i32 456, i32 456, i32 456], [5 x i32] [i32 456, i32 456, i32 456, i32 456, i32 456], [5 x i32] [i32 456, i32 456, i32 456, i32 456, i32 456]], [5 x [5 x i32]] [[5 x i32] [i32 456, i32 456, i32 456, i32 456, i32 456], [5 x i32] [i32 456, i32 456, i32 456, i32 456, i32 456], [5 x i32] [i32 456, i32 456, i32 456, i32 456, i32 456], [5 x i32] [i32 456, i32 456, i32 456, i32 456, i32 456], [5 x i32] [i32 456, i32 456, i32 456, i32 456, i32 456]], [5 x [5 x i32]] [[5 x i32] [i32 456, i32 456, i32 456, i32 456, i32 456], [5 x i32] [i32 456, i32 456, i32 456, i32 456, i32 456], [5 x i32] [i32 456, i32 456, i32 456, i32 456, i32 456], [5 x i32] [i32 456, i32 456, i32 456, i32 456, i32 456], [5 x i32] [i32 456, i32 456, i32 456, i32 456, i32 456]], [5 x [5 x i32]] [[5 x i32] [i32 456, i32 456, i32 456, i32 456, i32 456], [5 x i32] [i32 456, i32 456, i32 456, i32 456, i32 456], [5 x i32] [i32 456, i32 456, i32 456, i32 456, i32 456], [5 x i32] [i32 456, i32 456, i32 456, i32 456, i32 456], [5 x i32] [i32 456, i32 456, i32 456, i32 456, i32 456]], [5 x [5 x i32]] [[5 x i32] [i32 456, i32 456, i32 456, i32 456, i32 456], [5 x i32] [i32 456, i32 456, i32 456, i32 456, i32 456], [5 x i32] [i32 456, i32 456, i32 456, i32 456, i32 456], [5 x i32] [i32 456, i32 456, i32 456, i32 456, i32 456], [5 x i32] [i32 456, i32 456, i32 456, i32 456, i32 456]]], [5 x [5 x [5 x i32]]] [[5 x [5 x i32]] [[5 x i32] [i32 567, i32 567, i32 567, i32 567, i32 567], [5 x i32] [i32 567, i32 567, i32 567, i32 567, i32 567], [5 x i32] [i32 567, i32 567, i32 567, i32 567, i32 567], [5 x i32] [i32 567, i32 567, i32 567, i32 567, i32 567], [5 x i32] [i32 567, i32 567, i32 567, i32 567, i32 567]], [5 x [5 x i32]] [[5 x i32] [i32 567, i32 567, i32 567, i32 567, i32 567], [5 x i32] [i32 567, i32 567, i32 567, i32 567, i32 567], [5 x i32] [i32 567, i32 567, i32 567, i32 567, i32 567], [5 x i32] [i32 567, i32 567, i32 567, i32 567, i32 567], [5 x i32] [i32 567, i32 567, i32 567, i32 567, i32 567]], [5 x [5 x i32]] [[5 x i32] [i32 567, i32 567, i32 567, i32 567, i32 567], [5 x i32] [i32 567, i32 567, i32 567, i32 567, i32 567], [5 x i32] [i32 567, i32 567, i32 567, i32 567, i32 567], [5 x i32] [i32 567, i32 567, i32 567, i32 567, i32 567], [5 x i32] [i32 567, i32 567, i32 567, i32 567, i32 567]], [5 x [5 x i32]] [[5 x i32] [i32 567, i32 567, i32 567, i32 567, i32 567], [5 x i32] [i32 567, i32 567, i32 567, i32 567, i32 567], [5 x i32] [i32 567, i32 567, i32 567, i32 567, i32 567], [5 x i32] [i32 567, i32 567, i32 567, i32 567, i32 567], [5 x i32] [i32 567, i32 567, i32 567, i32 567, i32 567]], [5 x [5 x i32]] [[5 x i32] [i32 567, i32 567, i32 567, i32 567, i32 567], [5 x i32] [i32 567, i32 567, i32 567, i32 567, i32 567], [5 x i32] [i32 567, i32 567, i32 567, i32 567, i32 567], [5 x i32] [i32 567, i32 567, i32 567, i32 567, i32 567], [5 x i32] [i32 567, i32 567, i32 567, i32 567, i32 1111]]]], align 4

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @foo(i32 noundef %x) #0 !dbg !12 {
entry:
  %retval = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %l = alloca i32, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 0, i32* %i, align 4, !dbg !16
  br label %for.cond, !dbg !17

for.cond:                                         ; preds = %for.inc28, %entry
  %0 = load i32, i32* %i, align 4, !dbg !18
  %cmp = icmp slt i32 %0, 5, !dbg !19
  br i1 %cmp, label %for.body, label %for.end30, !dbg !20

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4, !dbg !21
  br label %for.cond1, !dbg !22

for.cond1:                                        ; preds = %for.inc25, %for.body
  %1 = load i32, i32* %j, align 4, !dbg !23
  %cmp2 = icmp slt i32 %1, 5, !dbg !24
  br i1 %cmp2, label %for.body3, label %for.end27, !dbg !25

for.body3:                                        ; preds = %for.cond1
  store i32 0, i32* %k, align 4, !dbg !26
  br label %for.cond4, !dbg !27

for.cond4:                                        ; preds = %for.inc22, %for.body3
  %2 = load i32, i32* %k, align 4, !dbg !28
  %cmp5 = icmp slt i32 %2, 5, !dbg !29
  br i1 %cmp5, label %for.body6, label %for.end24, !dbg !30

for.body6:                                        ; preds = %for.cond4
  store i32 0, i32* %l, align 4, !dbg !31
  br label %for.cond7, !dbg !32

for.cond7:                                        ; preds = %for.inc, %for.body6
  %3 = load i32, i32* %l, align 4, !dbg !33
  %cmp8 = icmp slt i32 %3, 5, !dbg !34
  br i1 %cmp8, label %for.body9, label %for.end, !dbg !35

for.body9:                                        ; preds = %for.cond7
  %4 = load i32, i32* %i, align 4, !dbg !36
  %arrayidx = getelementptr inbounds [5 x [5 x [5 x [5 x i32]]]], [5 x [5 x [5 x [5 x i32]]]]* @keys, i32 0, i32 %4, !dbg !37
  %5 = load i32, i32* %j, align 4, !dbg !38
  %arrayidx10 = getelementptr inbounds [5 x [5 x [5 x i32]]], [5 x [5 x [5 x i32]]]* %arrayidx, i32 0, i32 %5, !dbg !37
  %6 = load i32, i32* %k, align 4, !dbg !39
  %arrayidx11 = getelementptr inbounds [5 x [5 x i32]], [5 x [5 x i32]]* %arrayidx10, i32 0, i32 %6, !dbg !37
  %7 = load i32, i32* %l, align 4, !dbg !40
  %arrayidx12 = getelementptr inbounds [5 x i32], [5 x i32]* %arrayidx11, i32 0, i32 %7, !dbg !37
  %8 = load i32, i32* %arrayidx12, align 4, !dbg !37
  %9 = load i32, i32* %x.addr, align 4, !dbg !41
  %cmp13 = icmp eq i32 %8, %9, !dbg !42
  br i1 %cmp13, label %if.then, label %if.end, !dbg !37

if.then:                                          ; preds = %for.body9
  %10 = load i32, i32* %i, align 4, !dbg !43
  %arrayidx14 = getelementptr inbounds [5 x [5 x [5 x [5 x i32]]]], [5 x [5 x [5 x [5 x i32]]]]* @answer, i32 0, i32 %10, !dbg !44
  %11 = load i32, i32* %j, align 4, !dbg !45
  %arrayidx15 = getelementptr inbounds [5 x [5 x [5 x i32]]], [5 x [5 x [5 x i32]]]* %arrayidx14, i32 0, i32 %11, !dbg !44
  %12 = load i32, i32* %k, align 4, !dbg !46
  %arrayidx16 = getelementptr inbounds [5 x [5 x i32]], [5 x [5 x i32]]* %arrayidx15, i32 0, i32 %12, !dbg !44
  %13 = load i32, i32* %l, align 4, !dbg !47
  %arrayidx17 = getelementptr inbounds [5 x i32], [5 x i32]* %arrayidx16, i32 0, i32 %13, !dbg !44
  %14 = load i32, i32* %arrayidx17, align 4, !dbg !44
  %15 = load i32, i32* %i, align 4, !dbg !48
  %arrayidx18 = getelementptr inbounds [5 x [5 x [5 x [5 x i32]]]], [5 x [5 x [5 x [5 x i32]]]]* @keys, i32 0, i32 %15, !dbg !49
  %16 = load i32, i32* %j, align 4, !dbg !50
  %arrayidx19 = getelementptr inbounds [5 x [5 x [5 x i32]]], [5 x [5 x [5 x i32]]]* %arrayidx18, i32 0, i32 %16, !dbg !49
  %17 = load i32, i32* %k, align 4, !dbg !51
  %arrayidx20 = getelementptr inbounds [5 x [5 x i32]], [5 x [5 x i32]]* %arrayidx19, i32 0, i32 %17, !dbg !49
  %18 = load i32, i32* %l, align 4, !dbg !52
  %arrayidx21 = getelementptr inbounds [5 x i32], [5 x i32]* %arrayidx20, i32 0, i32 %18, !dbg !49
  %19 = load i32, i32* %arrayidx21, align 4, !dbg !49
  %add = add nsw i32 %14, %19, !dbg !53
  store i32 %add, i32* %retval, align 4, !dbg !54
  br label %return, !dbg !54

if.end:                                           ; preds = %for.body9
  br label %for.inc, !dbg !55

for.inc:                                          ; preds = %if.end
  %20 = load i32, i32* %l, align 4, !dbg !56
  %inc = add nsw i32 %20, 1, !dbg !56
  store i32 %inc, i32* %l, align 4, !dbg !56
  br label %for.cond7, !dbg !35, !llvm.loop !57

for.end:                                          ; preds = %for.cond7
  br label %for.inc22, !dbg !55

for.inc22:                                        ; preds = %for.end
  %21 = load i32, i32* %k, align 4, !dbg !59
  %inc23 = add nsw i32 %21, 1, !dbg !59
  store i32 %inc23, i32* %k, align 4, !dbg !59
  br label %for.cond4, !dbg !30, !llvm.loop !60

for.end24:                                        ; preds = %for.cond4
  br label %for.inc25, !dbg !55

for.inc25:                                        ; preds = %for.end24
  %22 = load i32, i32* %j, align 4, !dbg !61
  %inc26 = add nsw i32 %22, 1, !dbg !61
  store i32 %inc26, i32* %j, align 4, !dbg !61
  br label %for.cond1, !dbg !25, !llvm.loop !62

for.end27:                                        ; preds = %for.cond1
  br label %for.inc28, !dbg !55

for.inc28:                                        ; preds = %for.end27
  %23 = load i32, i32* %i, align 4, !dbg !63
  %inc29 = add nsw i32 %23, 1, !dbg !63
  store i32 %inc29, i32* %i, align 4, !dbg !63
  br label %for.cond, !dbg !20, !llvm.loop !64

for.end30:                                        ; preds = %for.cond
  store i32 -1, i32* %retval, align 4, !dbg !65
  br label %return, !dbg !65

return:                                           ; preds = %for.end30, %if.then
  %24 = load i32, i32* %retval, align 4, !dbg !66
  ret i32 %24, !dbg !66
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @main() #0 !dbg !67 {
entry:
  %call = call arm_aapcs_vfpcc i32 @foo(i32 noundef 400) #1, !dbg !68
  ret void, !dbg !69
}

attributes #0 = { noinline nounwind "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #1 = { nobuiltin "no-builtins" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 14.0.6 (git@github.com:RTS-SYSU/LLVM-TA.git b7f9c4ccdebc6c37532ddd772889e5f0ff989c79)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/workspaces/llvmta/testcases/wcet_bench/ns.c", directory: "/workspaces/llvmta/testcases/util_scripts", checksumkind: CSK_MD5, checksum: "97287ab1b48386bba181cf20ed71cec3")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 1, !"branch-target-enforcement", i32 0}
!7 = !{i32 1, !"sign-return-address", i32 0}
!8 = !{i32 1, !"sign-return-address-all", i32 0}
!9 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"frame-pointer", i32 2}
!11 = !{!"clang version 14.0.6 (git@github.com:RTS-SYSU/LLVM-TA.git b7f9c4ccdebc6c37532ddd772889e5f0ff989c79)"}
!12 = distinct !DISubprogram(name: "foo", scope: !13, file: !13, line: 990, type: !14, scopeLine: 992, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!13 = !DIFile(filename: "wcet_bench/ns.c", directory: "/workspaces/llvmta/testcases", checksumkind: CSK_MD5, checksum: "97287ab1b48386bba181cf20ed71cec3")
!14 = !DISubroutineType(types: !15)
!15 = !{}
!16 = !DILocation(line: 1004, column: 8, scope: !12)
!17 = !DILocation(line: 1004, column: 7, scope: !12)
!18 = !DILocation(line: 1004, column: 12, scope: !12)
!19 = !DILocation(line: 1004, column: 13, scope: !12)
!20 = !DILocation(line: 1004, column: 3, scope: !12)
!21 = !DILocation(line: 1006, column: 10, scope: !12)
!22 = !DILocation(line: 1006, column: 9, scope: !12)
!23 = !DILocation(line: 1006, column: 15, scope: !12)
!24 = !DILocation(line: 1006, column: 16, scope: !12)
!25 = !DILocation(line: 1006, column: 5, scope: !12)
!26 = !DILocation(line: 1008, column: 12, scope: !12)
!27 = !DILocation(line: 1008, column: 11, scope: !12)
!28 = !DILocation(line: 1008, column: 17, scope: !12)
!29 = !DILocation(line: 1008, column: 18, scope: !12)
!30 = !DILocation(line: 1008, column: 7, scope: !12)
!31 = !DILocation(line: 1010, column: 14, scope: !12)
!32 = !DILocation(line: 1010, column: 13, scope: !12)
!33 = !DILocation(line: 1010, column: 19, scope: !12)
!34 = !DILocation(line: 1010, column: 20, scope: !12)
!35 = !DILocation(line: 1010, column: 9, scope: !12)
!36 = !DILocation(line: 1020, column: 20, scope: !12)
!37 = !DILocation(line: 1020, column: 15, scope: !12)
!38 = !DILocation(line: 1020, column: 23, scope: !12)
!39 = !DILocation(line: 1020, column: 26, scope: !12)
!40 = !DILocation(line: 1020, column: 29, scope: !12)
!41 = !DILocation(line: 1020, column: 35, scope: !12)
!42 = !DILocation(line: 1020, column: 32, scope: !12)
!43 = !DILocation(line: 1030, column: 29, scope: !12)
!44 = !DILocation(line: 1030, column: 22, scope: !12)
!45 = !DILocation(line: 1030, column: 32, scope: !12)
!46 = !DILocation(line: 1030, column: 35, scope: !12)
!47 = !DILocation(line: 1030, column: 38, scope: !12)
!48 = !DILocation(line: 1030, column: 48, scope: !12)
!49 = !DILocation(line: 1030, column: 43, scope: !12)
!50 = !DILocation(line: 1030, column: 51, scope: !12)
!51 = !DILocation(line: 1030, column: 54, scope: !12)
!52 = !DILocation(line: 1030, column: 57, scope: !12)
!53 = !DILocation(line: 1030, column: 41, scope: !12)
!54 = !DILocation(line: 1030, column: 15, scope: !12)
!55 = !DILocation(line: 1034, column: 9, scope: !12)
!56 = !DILocation(line: 1010, column: 26, scope: !12)
!57 = distinct !{!57, !35, !55, !58}
!58 = !{!"llvm.loop.mustprogress"}
!59 = !DILocation(line: 1008, column: 24, scope: !12)
!60 = distinct !{!60, !30, !55, !58}
!61 = !DILocation(line: 1006, column: 22, scope: !12)
!62 = distinct !{!62, !25, !55, !58}
!63 = !DILocation(line: 1004, column: 18, scope: !12)
!64 = distinct !{!64, !20, !55, !58}
!65 = !DILocation(line: 1036, column: 3, scope: !12)
!66 = !DILocation(line: 1038, column: 1, scope: !12)
!67 = distinct !DISubprogram(name: "main", scope: !13, file: !13, line: 1044, type: !14, scopeLine: 1046, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!68 = !DILocation(line: 1054, column: 3, scope: !67)
!69 = !DILocation(line: 1058, column: 1, scope: !67)
