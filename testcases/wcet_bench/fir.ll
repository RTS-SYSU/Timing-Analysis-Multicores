; ModuleID = '/workspaces/llvmta/testcases/wcet_bench/fir.c'
source_filename = "/workspaces/llvmta/testcases/wcet_bench/fir.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv4t-unknown-unknown"

@fir_int = dso_local global [36 x i32] [i32 -2, i32 1, i32 4, i32 3, i32 -2, i32 -4, i32 2, i32 7, i32 0, i32 -9, i32 -4, i32 12, i32 11, i32 -14, i32 -26, i32 15, i32 89, i32 127, i32 89, i32 15, i32 -26, i32 -14, i32 11, i32 12, i32 -4, i32 -9, i32 0, i32 7, i32 2, i32 -4, i32 -2, i32 3, i32 4, i32 1, i32 -2, i32 0], align 4
@in_data = dso_local global [701 x i32] [i32 0, i32 0, i32 0, i32 0, i32 127, i32 121, i32 114, i32 121, i32 13, i32 13, i32 0, i32 3, i32 5, i32 2, i32 3, i32 127, i32 127, i32 2, i32 126, i32 0, i32 1, i32 126, i32 1, i32 1, i32 127, i32 0, i32 127, i32 0, i32 2, i32 1, i32 1, i32 3, i32 1, i32 127, i32 1, i32 0, i32 1, i32 1, i32 125, i32 123, i32 115, i32 106, i32 119, i32 16, i32 14, i32 1, i32 5, i32 5, i32 5, i32 5, i32 125, i32 0, i32 2, i32 125, i32 0, i32 0, i32 126, i32 1, i32 126, i32 127, i32 3, i32 124, i32 126, i32 6, i32 0, i32 126, i32 3, i32 2, i32 127, i32 126, i32 127, i32 2, i32 1, i32 127, i32 1, i32 1, i32 0, i32 3, i32 0, i32 127, i32 2, i32 0, i32 127, i32 3, i32 1, i32 0, i32 0, i32 125, i32 0, i32 3, i32 0, i32 126, i32 127, i32 2, i32 1, i32 126, i32 0, i32 3, i32 127, i32 125, i32 1, i32 1, i32 1, i32 127, i32 0, i32 5, i32 0, i32 127, i32 2, i32 126, i32 127, i32 2, i32 1, i32 0, i32 126, i32 0, i32 5, i32 0, i32 127, i32 0, i32 126, i32 1, i32 0, i32 125, i32 1, i32 3, i32 127, i32 0, i32 0, i32 126, i32 2, i32 3, i32 126, i32 125, i32 114, i32 104, i32 113, i32 5, i32 12, i32 7, i32 2, i32 6, i32 13, i32 5, i32 125, i32 3, i32 2, i32 127, i32 0, i32 121, i32 122, i32 3, i32 126, i32 125, i32 0, i32 125, i32 2, i32 1, i32 125, i32 8, i32 3, i32 124, i32 6, i32 0, i32 122, i32 6, i32 2, i32 124, i32 3, i32 126, i32 121, i32 6, i32 5, i32 116, i32 127, i32 13, i32 122, i32 120, i32 6, i32 5, i32 1, i32 0, i32 125, i32 1, i32 4, i32 124, i32 127, i32 3, i32 127, i32 5, i32 3, i32 122, i32 6, i32 10, i32 118, i32 124, i32 10, i32 124, i32 127, i32 6, i32 121, i32 3, i32 12, i32 117, i32 120, i32 10, i32 0, i32 121, i32 3, i32 126, i32 124, i32 6, i32 0, i32 121, i32 2, i32 126, i32 127, i32 6, i32 118, i32 127, i32 13, i32 121, i32 127, i32 6, i32 121, i32 6, i32 3, i32 113, i32 6, i32 10, i32 115, i32 127, i32 10, i32 0, i32 127, i32 122, i32 124, i32 10, i32 0, i32 117, i32 127, i32 12, i32 10, i32 124, i32 121, i32 9, i32 13, i32 125, i32 122, i32 5, i32 11, i32 10, i32 121, i32 124, i32 22, i32 3, i32 114, i32 13, i32 7, i32 121, i32 12, i32 7, i32 122, i32 11, i32 7, i32 122, i32 10, i32 7, i32 121, i32 10, i32 5, i32 117, i32 6, i32 5, i32 121, i32 5, i32 6, i32 1, i32 6, i32 0, i32 122, i32 2, i32 7, i32 3, i32 125, i32 1, i32 10, i32 7, i32 2, i32 127, i32 127, i32 9, i32 7, i32 121, i32 121, i32 6, i32 8, i32 125, i32 122, i32 6, i32 12, i32 6, i32 125, i32 127, i32 13, i32 7, i32 121, i32 1, i32 6, i32 127, i32 127, i32 2, i32 3, i32 1, i32 126, i32 1, i32 1, i32 125, i32 1, i32 0, i32 125, i32 6, i32 3, i32 125, i32 5, i32 7, i32 127, i32 124, i32 1, i32 6, i32 6, i32 124, i32 122, i32 7, i32 10, i32 0, i32 120, i32 1, i32 8, i32 0, i32 121, i32 122, i32 4, i32 10, i32 0, i32 120, i32 1, i32 6, i32 122, i32 117, i32 122, i32 0, i32 0, i32 121, i32 118, i32 127, i32 7, i32 0, i32 122, i32 125, i32 2, i32 4, i32 124, i32 122, i32 2, i32 5, i32 124, i32 122, i32 125, i32 127, i32 0, i32 120, i32 117, i32 127, i32 0, i32 121, i32 120, i32 121, i32 1, i32 3, i32 121, i32 121, i32 0, i32 0, i32 127, i32 127, i32 121, i32 127, i32 2, i32 122, i32 124, i32 125, i32 124, i32 127, i32 125, i32 121, i32 125, i32 0, i32 121, i32 122, i32 124, i32 125, i32 0, i32 125, i32 125, i32 0, i32 0, i32 0, i32 0, i32 125, i32 125, i32 0, i32 125, i32 126, i32 0, i32 126, i32 3, i32 3, i32 125, i32 1, i32 5, i32 0, i32 126, i32 125, i32 127, i32 3, i32 125, i32 121, i32 1, i32 2, i32 125, i32 127, i32 1, i32 0, i32 0, i32 127, i32 127, i32 126, i32 127, i32 0, i32 127, i32 0, i32 124, i32 125, i32 0, i32 121, i32 120, i32 124, i32 124, i32 123, i32 123, i32 125, i32 127, i32 0, i32 0, i32 127, i32 0, i32 1, i32 2, i32 0, i32 127, i32 0, i32 0, i32 0, i32 127, i32 126, i32 0, i32 0, i32 127, i32 0, i32 2, i32 1, i32 2, i32 6, i32 5, i32 3, i32 6, i32 8, i32 5, i32 2, i32 1, i32 1, i32 3, i32 0, i32 125, i32 127, i32 0, i32 127, i32 126, i32 0, i32 2, i32 3, i32 2, i32 1, i32 2, i32 3, i32 1, i32 124, i32 125, i32 0, i32 0, i32 126, i32 124, i32 127, i32 1, i32 0, i32 126, i32 124, i32 127, i32 1, i32 0, i32 126, i32 127, i32 2, i32 3, i32 1, i32 0, i32 4, i32 6, i32 5, i32 6, i32 7, i32 10, i32 10, i32 4, i32 2, i32 5, i32 8, i32 9, i32 8, i32 7, i32 12, i32 20, i32 20, i32 16, i32 14, i32 20, i32 21, i32 15, i32 9, i32 7, i32 4, i32 126, i32 118, i32 100, i32 65, i32 72, i32 125, i32 108, i32 61, i32 103, i32 16, i32 6, i32 125, i32 117, i32 7, i32 29, i32 0, i32 108, i32 2, i32 125, i32 120, i32 119, i32 111, i32 119, i32 1, i32 0, i32 2, i32 7, i32 10, i32 28, i32 28, i32 23, i32 35, i32 47, i32 65, i32 67, i32 79, i32 85, i32 88, i32 126, i32 2, i32 76, i32 16, i32 105, i32 44, i32 13, i32 116, i32 42, i32 116, i32 99, i32 41, i32 124, i32 94, i32 33, i32 53, i32 70, i32 36, i32 103, i32 53, i32 60, i32 60, i32 38, i32 38, i32 47, i32 71, i32 100, i32 4, i32 19, i32 24, i32 39, i32 43, i32 48, i32 27, i32 127, i32 120, i32 114, i32 104, i32 92, i32 90, i32 104, i32 124, i32 3, i32 13, i32 38, i32 65, i32 81, i32 90, i32 106, i32 108, i32 84, i32 120, i32 9, i32 69, i32 121, i32 31, i32 11, i32 46, i32 96, i32 11, i32 102, i32 127, i32 104, i32 119, i32 78, i32 70, i32 74, i32 59, i32 18, i32 91, i32 55, i32 49, i32 33, i32 11, i32 18, i32 46, i32 87, i32 126, i32 25, i32 34, i32 43, i32 63, i32 58, i32 37, i32 11, i32 121, i32 113, i32 104, i32 97, i32 92, i32 102, i32 114, i32 6, i32 22, i32 41, i32 65, i32 94, i32 109, i32 102, i32 96, i32 110, i32 23, i32 72, i32 54, i32 18, i32 23, i32 47, i32 99, i32 120, i32 92, i32 119, i32 108, i32 117, i32 65, i32 73, i32 79, i32 59, i32 11, i32 84, i32 55, i32 0], align 4
@out_data = dso_local global <{ [700 x i32], [20 x i32] }> <{ [700 x i32] [i32 3, i32 -6, i32 -3, i32 29, i32 88, i32 137, i32 135, i32 86, i32 32, i32 7, i32 7, i32 4, i32 -7, i32 0, i32 40, i32 91, i32 107, i32 79, i32 43, i32 33, i32 45, i32 48, i32 39, i32 39, i32 55, i32 71, i32 66, i32 39, i32 8, i32 -12, i32 -11, i32 13, i32 46, i32 59, i32 37, i32 0, i32 -8, i32 29, i32 89, i32 131, i32 135, i32 111, i32 78, i32 47, i32 18, i32 -1, i32 -5, i32 4, i32 21, i32 35, i32 45, i32 49, i32 47, i32 41, i32 38, i32 42, i32 54, i32 72, i32 88, i32 95, i32 90, i32 79, i32 70, i32 65, i32 50, i32 27, i32 23, i32 55, i32 105, i32 123, i32 89, i32 47, i32 36, i32 48, i32 42, i32 8, i32 -10, i32 7, i32 36, i32 49, i32 47, i32 51, i32 50, i32 30, i32 4, i32 7, i32 35, i32 51, i32 33, i32 14, i32 30, i32 74, i32 97, i32 75, i32 33, i32 14, i32 34, i32 73, i32 94, i32 77, i32 37, i32 11, i32 24, i32 50, i32 51, i32 21, i32 5, i32 41, i32 100, i32 118, i32 77, i32 22, i32 9, i32 38, i32 55, i32 35, i32 11, i32 21, i32 60, i32 82, i32 64, i32 35, i32 29, i32 45, i32 54, i32 45, i32 36, i32 41, i32 50, i32 44, i32 33, i32 43, i32 80, i32 123, i32 141, i32 115, i32 71, i32 34, i32 15, i32 7, i32 -1, i32 0, i32 19, i32 45, i32 54, i32 43, i32 35, i32 50, i32 78, i32 92, i32 85, i32 79, i32 85, i32 92, i32 80, i32 52, i32 32, i32 34, i32 50, i32 56, i32 47, i32 37, i32 42, i32 53, i32 50, i32 35, i32 31, i32 54, i32 87, i32 96, i32 76, i32 49, i32 45, i32 64, i32 87, i32 103, i32 103, i32 76, i32 33, i32 4, i32 8, i32 32, i32 48, i32 44, i32 51, i32 78, i32 97, i32 86, i32 57, i32 38, i32 38, i32 43, i32 46, i32 56, i32 74, i32 87, i32 88, i32 92, i32 95, i32 80, i32 49, i32 29, i32 49, i32 88, i32 93, i32 55, i32 22, i32 35, i32 85, i32 113, i32 86, i32 40, i32 24, i32 48, i32 81, i32 96, i32 92, i32 82, i32 79, i32 84, i32 94, i32 98, i32 87, i32 69, i32 58, i32 53, i32 38, i32 23, i32 35, i32 71, i32 93, i32 72, i32 39, i32 48, i32 97, i32 121, i32 90, i32 49, i32 45, i32 69, i32 79, i32 65, i32 62, i32 72, i32 72, i32 58, i32 61, i32 83, i32 85, i32 47, i32 13, i32 31, i32 85, i32 105, i32 71, i32 30, i32 28, i32 50, i32 60, i32 49, i32 40, i32 45, i32 52, i32 50, i32 46, i32 46, i32 47, i32 45, i32 47, i32 50, i32 47, i32 38, i32 35, i32 48, i32 61, i32 44, i32 3, i32 -17, i32 10, i32 52, i32 57, i32 24, i32 10, i32 40, i32 66, i32 40, i32 -5, i32 -2, i32 55, i32 97, i32 83, i32 50, i32 53, i32 75, i32 76, i32 54, i32 54, i32 78, i32 86, i32 51, i32 14, i32 27, i32 78, i32 105, i32 81, i32 34, i32 13, i32 36, i32 75, i32 94, i32 77, i32 42, i32 18, i32 22, i32 41, i32 53, i32 51, i32 42, i32 37, i32 38, i32 47, i32 56, i32 49, i32 29, i32 29, i32 66, i32 104, i32 88, i32 26, i32 -1, i32 42, i32 99, i32 95, i32 39, i32 10, i32 34, i32 52, i32 30, i32 11, i32 39, i32 88, i32 90, i32 46, i32 16, i32 27, i32 40, i32 35, i32 49, i32 96, i32 124, i32 86, i32 27, i32 29, i32 93, i32 129, i32 92, i32 41, i32 44, i32 78, i32 81, i32 53, i32 51, i32 77, i32 83, i32 50, i32 36, i32 80, i32 134, i32 133, i32 90, i32 70, i32 93, i32 107, i32 91, i32 79, i32 99, i32 113, i32 84, i32 42, i32 44, i32 80, i32 86, i32 48, i32 30, i32 77, i32 141, i32 144, i32 91, i32 58, i32 85, i32 128, i32 137, i32 120, i32 123, i32 138, i32 125, i32 83, i32 62, i32 91, i32 131, i32 127, i32 89, i32 74, i32 91, i32 94, i32 46, i32 -12, i32 -13, i32 45, i32 95, i32 97, i32 80, i32 84, i32 94, i32 80, i32 48, i32 38, i32 52, i32 50, i32 24, i32 9, i32 39, i32 91, i32 116, i32 109, i32 94, i32 82, i32 64, i32 45, i32 52, i32 84, i32 92, i32 49, i32 0, i32 10, i32 86, i32 156, i32 150, i32 89, i32 46, i32 56, i32 87, i32 94, i32 75, i32 70, i32 94, i32 120, i32 124, i32 119, i32 128, i32 141, i32 125, i32 79, i32 43, i32 43, i32 51, i32 30, i32 0, i32 6, i32 40, i32 55, i32 29, i32 9, i32 36, i32 83, i32 93, i32 61, i32 31, i32 33, i32 41, i32 24, i32 -4, i32 -11, i32 6, i32 18, i32 9, i32 -3, i32 1, i32 15, i32 12, i32 -6, i32 -14, i32 9, i32 50, i32 77, i32 86, i32 92, i32 98, i32 83, i32 39, i32 0, i32 -4, i32 12, i32 8, i32 -16, i32 -7, i32 54, i32 106, i32 85, i32 28, i32 27, i32 96, i32 142, i32 97, i32 21, i32 20, i32 94, i32 140, i32 97, i32 29, i32 26, i32 82, i32 107, i32 61, i32 -5, i32 -24, i32 1, i32 21, i32 12, i32 -2, i32 0, i32 13, i32 17, i32 9, i32 1, i32 1, i32 7, i32 12, i32 11, i32 7, i32 6, i32 13, i32 22, i32 23, i32 16, i32 12, i32 19, i32 28, i32 19, i32 0, i32 0, i32 38, i32 95, i32 123, i32 104, i32 72, i32 72, i32 104, i32 125, i32 96, i32 45, i32 25, i32 55, i32 92, i32 90, i32 49, i32 15, i32 19, i32 49, i32 76, i32 94, i32 113, i32 131, i32 127, i32 88, i32 32, i32 -3, i32 -8, i32 9, i32 24, i32 25, i32 22, i32 25, i32 39, i32 55, i32 61, i32 66, i32 79, i32 98, i32 101, i32 79, i32 51, i32 44, i32 54, i32 61, i32 56, i32 52, i32 64, i32 84, i32 93, i32 91, i32 88, i32 89, i32 83, i32 65, i32 50, i32 51, i32 63, i32 74, i32 75, i32 67, i32 51, i32 37, i32 40, i32 61, i32 79, i32 68, i32 35, i32 14, i32 22, i32 41, i32 44, i32 40, i32 57, i32 99, i32 132, i32 125, i32 95, i32 86, i32 105, i32 115, i32 86, i32 36, i32 12, i32 30, i32 64, i32 86, i32 96, i32 105, i32 110, i32 99, i32 78, i32 66, i32 68, i32 71, i32 59, i32 42, i32 34, i32 45, i32 69, i32 93, i32 112, i32 119, i32 109, i32 91, i32 74, i32 63, i32 55, i32 50, i32 57, i32 67, i32 61, i32 32, i32 5, i32 16, i32 63, i32 100, i32 90, i32 52, i32 33, i32 46, i32 62, i32 51, i32 34, i32 48, i32 89, i32 117, i32 113, i32 96, i32 97, i32 103, i32 85, i32 45, i32 18, i32 29, i32 67, i32 101, i32 113, i32 108, i32 95, i32 83, i32 71, i32 57, i32 41, i32 28, i32 30, i32 53, i32 86, i32 111, i32 116, i32 111, i32 106, i32 102, i32 92, i32 75, i32 58, i32 51, i32 54, i32 56, i32 44], [20 x i32] zeroinitializer }>, align 4

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @main() #0 !dbg !12 {
entry:
  %retval = alloca i32, align 4
  %output = alloca [720 x i32], align 4
  store i32 0, i32* %retval, align 4
  %arraydecay = getelementptr inbounds [720 x i32], [720 x i32]* %output, i32 0, i32 0, !dbg !16
  call arm_aapcs_vfpcc void @fir_filter_int(i32* noundef getelementptr inbounds ([701 x i32], [701 x i32]* @in_data, i32 0, i32 0), i32* noundef %arraydecay, i32 noundef 700, i32* noundef getelementptr inbounds ([36 x i32], [36 x i32]* @fir_int, i32 0, i32 0), i32 noundef 35, i32 noundef 285) #1, !dbg !17
  ret i32 0, !dbg !18
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @fir_filter_int(i32* noundef %in, i32* noundef %out, i32 noundef %in_len, i32* noundef %coef, i32 noundef %coef_len, i32 noundef %scale) #0 !dbg !19 {
entry:
  %in.addr = alloca i32*, align 4
  %out.addr = alloca i32*, align 4
  %in_len.addr = alloca i32, align 4
  %coef.addr = alloca i32*, align 4
  %coef_len.addr = alloca i32, align 4
  %scale.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %coef_len2 = alloca i32, align 4
  %acc_length = alloca i32, align 4
  %acc = alloca i32, align 4
  %in_ptr = alloca i32*, align 4
  %data_ptr = alloca i32*, align 4
  %coef_start = alloca i32*, align 4
  %coef_ptr = alloca i32*, align 4
  %in_end = alloca i32*, align 4
  store i32* %in, i32** %in.addr, align 4
  store i32* %out, i32** %out.addr, align 4
  store i32 %in_len, i32* %in_len.addr, align 4
  store i32* %coef, i32** %coef.addr, align 4
  store i32 %coef_len, i32* %coef_len.addr, align 4
  store i32 %scale, i32* %scale.addr, align 4
  %0 = load i32*, i32** %coef.addr, align 4, !dbg !20
  store i32* %0, i32** %coef_start, align 4, !dbg !21
  %1 = load i32, i32* %coef_len.addr, align 4, !dbg !22
  %add = add nsw i32 %1, 1, !dbg !23
  %shr = ashr i32 %add, 1, !dbg !24
  store i32 %shr, i32* %coef_len2, align 4, !dbg !25
  %2 = load i32*, i32** %in.addr, align 4, !dbg !26
  %3 = load i32, i32* %in_len.addr, align 4, !dbg !27
  %add.ptr = getelementptr inbounds i32, i32* %2, i32 %3, !dbg !28
  %add.ptr1 = getelementptr inbounds i32, i32* %add.ptr, i32 -1, !dbg !29
  store i32* %add.ptr1, i32** %in_end, align 4, !dbg !30
  %4 = load i32*, i32** %in.addr, align 4, !dbg !31
  %5 = load i32, i32* %coef_len2, align 4, !dbg !32
  %add.ptr2 = getelementptr inbounds i32, i32* %4, i32 %5, !dbg !33
  %add.ptr3 = getelementptr inbounds i32, i32* %add.ptr2, i32 -1, !dbg !34
  store i32* %add.ptr3, i32** %in_ptr, align 4, !dbg !35
  %6 = load i32, i32* %coef_len2, align 4, !dbg !36
  store i32 %6, i32* %acc_length, align 4, !dbg !37
  store i32 0, i32* %i, align 4, !dbg !38
  br label %for.cond, !dbg !39

for.cond:                                         ; preds = %for.inc20, %entry
  %7 = load i32, i32* %i, align 4, !dbg !40
  %8 = load i32, i32* %in_len.addr, align 4, !dbg !41
  %cmp = icmp slt i32 %7, %8, !dbg !42
  br i1 %cmp, label %for.body, label %for.end22, !dbg !43

for.body:                                         ; preds = %for.cond
  %9 = load i32*, i32** %in_ptr, align 4, !dbg !44
  store i32* %9, i32** %data_ptr, align 4, !dbg !45
  %10 = load i32*, i32** %coef_start, align 4, !dbg !46
  store i32* %10, i32** %coef_ptr, align 4, !dbg !47
  %11 = load i32*, i32** %coef_ptr, align 4, !dbg !48
  %incdec.ptr = getelementptr inbounds i32, i32* %11, i32 1, !dbg !48
  store i32* %incdec.ptr, i32** %coef_ptr, align 4, !dbg !48
  %12 = load i32, i32* %11, align 4, !dbg !49
  %13 = load i32*, i32** %data_ptr, align 4, !dbg !50
  %incdec.ptr4 = getelementptr inbounds i32, i32* %13, i32 -1, !dbg !50
  store i32* %incdec.ptr4, i32** %data_ptr, align 4, !dbg !50
  %14 = load i32, i32* %13, align 4, !dbg !51
  %mul = mul nsw i32 %12, %14, !dbg !52
  store i32 %mul, i32* %acc, align 4, !dbg !53
  store i32 1, i32* %j, align 4, !dbg !54
  br label %for.cond5, !dbg !55

for.cond5:                                        ; preds = %for.inc, %for.body
  %15 = load i32, i32* %j, align 4, !dbg !56
  %16 = load i32, i32* %acc_length, align 4, !dbg !57
  %cmp6 = icmp slt i32 %15, %16, !dbg !58
  br i1 %cmp6, label %for.body7, label %for.end, !dbg !59

for.body7:                                        ; preds = %for.cond5
  %17 = load i32*, i32** %coef_ptr, align 4, !dbg !60
  %incdec.ptr8 = getelementptr inbounds i32, i32* %17, i32 1, !dbg !60
  store i32* %incdec.ptr8, i32** %coef_ptr, align 4, !dbg !60
  %18 = load i32, i32* %17, align 4, !dbg !61
  %19 = load i32*, i32** %data_ptr, align 4, !dbg !62
  %incdec.ptr9 = getelementptr inbounds i32, i32* %19, i32 -1, !dbg !62
  store i32* %incdec.ptr9, i32** %data_ptr, align 4, !dbg !62
  %20 = load i32, i32* %19, align 4, !dbg !63
  %mul10 = mul nsw i32 %18, %20, !dbg !64
  %21 = load i32, i32* %acc, align 4, !dbg !65
  %add11 = add nsw i32 %21, %mul10, !dbg !65
  store i32 %add11, i32* %acc, align 4, !dbg !65
  br label %for.inc, !dbg !66

for.inc:                                          ; preds = %for.body7
  %22 = load i32, i32* %j, align 4, !dbg !67
  %inc = add nsw i32 %22, 1, !dbg !67
  store i32 %inc, i32* %j, align 4, !dbg !67
  br label %for.cond5, !dbg !59, !llvm.loop !68

for.end:                                          ; preds = %for.cond5
  %23 = load i32, i32* %acc, align 4, !dbg !71
  %24 = load i32, i32* %scale.addr, align 4, !dbg !72
  %div = sdiv i32 %23, %24, !dbg !73
  %25 = load i32*, i32** %out.addr, align 4, !dbg !74
  %incdec.ptr12 = getelementptr inbounds i32, i32* %25, i32 1, !dbg !74
  store i32* %incdec.ptr12, i32** %out.addr, align 4, !dbg !74
  store i32 %div, i32* %25, align 4, !dbg !75
  %26 = load i32*, i32** %in_ptr, align 4, !dbg !76
  %27 = load i32*, i32** %in_end, align 4, !dbg !77
  %cmp13 = icmp eq i32* %26, %27, !dbg !78
  br i1 %cmp13, label %if.then, label %if.else, !dbg !76

if.then:                                          ; preds = %for.end
  %28 = load i32, i32* %acc_length, align 4, !dbg !79
  %dec = add nsw i32 %28, -1, !dbg !79
  store i32 %dec, i32* %acc_length, align 4, !dbg !79
  %29 = load i32*, i32** %coef_start, align 4, !dbg !80
  %incdec.ptr14 = getelementptr inbounds i32, i32* %29, i32 1, !dbg !80
  store i32* %incdec.ptr14, i32** %coef_start, align 4, !dbg !80
  br label %if.end19, !dbg !81

if.else:                                          ; preds = %for.end
  %30 = load i32, i32* %acc_length, align 4, !dbg !82
  %31 = load i32, i32* %coef_len.addr, align 4, !dbg !83
  %cmp15 = icmp slt i32 %30, %31, !dbg !84
  br i1 %cmp15, label %if.then16, label %if.end, !dbg !82

if.then16:                                        ; preds = %if.else
  %32 = load i32, i32* %acc_length, align 4, !dbg !85
  %inc17 = add nsw i32 %32, 1, !dbg !85
  store i32 %inc17, i32* %acc_length, align 4, !dbg !85
  br label %if.end, !dbg !86

if.end:                                           ; preds = %if.then16, %if.else
  %33 = load i32*, i32** %in_ptr, align 4, !dbg !87
  %incdec.ptr18 = getelementptr inbounds i32, i32* %33, i32 1, !dbg !87
  store i32* %incdec.ptr18, i32** %in_ptr, align 4, !dbg !87
  br label %if.end19

if.end19:                                         ; preds = %if.end, %if.then
  br label %for.inc20, !dbg !88

for.inc20:                                        ; preds = %if.end19
  %34 = load i32, i32* %i, align 4, !dbg !89
  %inc21 = add nsw i32 %34, 1, !dbg !89
  store i32 %inc21, i32* %i, align 4, !dbg !89
  br label %for.cond, !dbg !43, !llvm.loop !90

for.end22:                                        ; preds = %for.cond
  ret void, !dbg !91
}

attributes #0 = { noinline nounwind "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #1 = { nobuiltin "no-builtins" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 14.0.6 (git@github.com:RTS-SYSU/LLVM-TA.git b7f9c4ccdebc6c37532ddd772889e5f0ff989c79)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/workspaces/llvmta/testcases/wcet_bench/fir.c", directory: "/workspaces/llvmta/testcases/util_scripts", checksumkind: CSK_MD5, checksum: "60c42949d884f7f5de9d054caa36fb7d")
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
!12 = distinct !DISubprogram(name: "main", scope: !13, file: !13, line: 213, type: !14, scopeLine: 214, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!13 = !DIFile(filename: "wcet_bench/fir.c", directory: "/workspaces/llvmta/testcases", checksumkind: CSK_MD5, checksum: "60c42949d884f7f5de9d054caa36fb7d")
!14 = !DISubroutineType(types: !15)
!15 = !{}
!16 = !DILocation(line: 217, column: 26, scope: !12)
!17 = !DILocation(line: 217, column: 3, scope: !12)
!18 = !DILocation(line: 227, column: 3, scope: !12)
!19 = distinct !DISubprogram(name: "fir_filter_int", scope: !13, file: !13, line: 252, type: !14, scopeLine: 255, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!20 = !DILocation(line: 261, column: 16, scope: !19)
!21 = !DILocation(line: 261, column: 14, scope: !19)
!22 = !DILocation(line: 262, column: 16, scope: !19)
!23 = !DILocation(line: 262, column: 25, scope: !19)
!24 = !DILocation(line: 262, column: 30, scope: !19)
!25 = !DILocation(line: 262, column: 13, scope: !19)
!26 = !DILocation(line: 265, column: 12, scope: !19)
!27 = !DILocation(line: 265, column: 17, scope: !19)
!28 = !DILocation(line: 265, column: 15, scope: !19)
!29 = !DILocation(line: 265, column: 24, scope: !19)
!30 = !DILocation(line: 265, column: 10, scope: !19)
!31 = !DILocation(line: 266, column: 12, scope: !19)
!32 = !DILocation(line: 266, column: 17, scope: !19)
!33 = !DILocation(line: 266, column: 15, scope: !19)
!34 = !DILocation(line: 266, column: 27, scope: !19)
!35 = !DILocation(line: 266, column: 10, scope: !19)
!36 = !DILocation(line: 269, column: 16, scope: !19)
!37 = !DILocation(line: 269, column: 14, scope: !19)
!38 = !DILocation(line: 271, column: 9, scope: !19)
!39 = !DILocation(line: 271, column: 7, scope: !19)
!40 = !DILocation(line: 271, column: 15, scope: !19)
!41 = !DILocation(line: 271, column: 19, scope: !19)
!42 = !DILocation(line: 271, column: 17, scope: !19)
!43 = !DILocation(line: 271, column: 3, scope: !19)
!44 = !DILocation(line: 274, column: 16, scope: !19)
!45 = !DILocation(line: 274, column: 14, scope: !19)
!46 = !DILocation(line: 275, column: 16, scope: !19)
!47 = !DILocation(line: 275, column: 14, scope: !19)
!48 = !DILocation(line: 279, column: 27, scope: !19)
!49 = !DILocation(line: 279, column: 18, scope: !19)
!50 = !DILocation(line: 279, column: 43, scope: !19)
!51 = !DILocation(line: 279, column: 34, scope: !19)
!52 = !DILocation(line: 279, column: 31, scope: !19)
!53 = !DILocation(line: 279, column: 9, scope: !19)
!54 = !DILocation(line: 280, column: 11, scope: !19)
!55 = !DILocation(line: 280, column: 9, scope: !19)
!56 = !DILocation(line: 280, column: 17, scope: !19)
!57 = !DILocation(line: 280, column: 21, scope: !19)
!58 = !DILocation(line: 280, column: 19, scope: !19)
!59 = !DILocation(line: 280, column: 5, scope: !19)
!60 = !DILocation(line: 281, column: 30, scope: !19)
!61 = !DILocation(line: 281, column: 21, scope: !19)
!62 = !DILocation(line: 281, column: 46, scope: !19)
!63 = !DILocation(line: 281, column: 37, scope: !19)
!64 = !DILocation(line: 281, column: 34, scope: !19)
!65 = !DILocation(line: 281, column: 11, scope: !19)
!66 = !DILocation(line: 281, column: 7, scope: !19)
!67 = !DILocation(line: 280, column: 35, scope: !19)
!68 = distinct !{!68, !59, !69, !70}
!69 = !DILocation(line: 281, column: 48, scope: !19)
!70 = !{!"llvm.loop.mustprogress"}
!71 = !DILocation(line: 282, column: 20, scope: !19)
!72 = !DILocation(line: 282, column: 24, scope: !19)
!73 = !DILocation(line: 282, column: 23, scope: !19)
!74 = !DILocation(line: 282, column: 9, scope: !19)
!75 = !DILocation(line: 282, column: 12, scope: !19)
!76 = !DILocation(line: 286, column: 8, scope: !19)
!77 = !DILocation(line: 286, column: 18, scope: !19)
!78 = !DILocation(line: 286, column: 15, scope: !19)
!79 = !DILocation(line: 287, column: 17, scope: !19)
!80 = !DILocation(line: 288, column: 17, scope: !19)
!81 = !DILocation(line: 289, column: 5, scope: !19)
!82 = !DILocation(line: 294, column: 10, scope: !19)
!83 = !DILocation(line: 294, column: 23, scope: !19)
!84 = !DILocation(line: 294, column: 21, scope: !19)
!85 = !DILocation(line: 294, column: 43, scope: !19)
!86 = !DILocation(line: 294, column: 33, scope: !19)
!87 = !DILocation(line: 295, column: 13, scope: !19)
!88 = !DILocation(line: 297, column: 3, scope: !19)
!89 = !DILocation(line: 271, column: 29, scope: !19)
!90 = distinct !{!90, !43, !88, !70}
!91 = !DILocation(line: 298, column: 1, scope: !19)
