; ModuleID = '/workspaces/llvmta/testcases/wcet_bench/edn.c'
source_filename = "/workspaces/llvmta/testcases/wcet_bench/edn.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv4t-unknown-unknown"

@__const.edn.a = private unnamed_addr constant [200 x i16] [i16 0, i16 2047, i16 3072, i16 2048, i16 512, i16 -2048, i16 -3328, i16 1024, i16 0, i16 2047, i16 3072, i16 2048, i16 512, i16 -2048, i16 -3328, i16 1024, i16 0, i16 2047, i16 3072, i16 2048, i16 512, i16 -2048, i16 -3328, i16 1024, i16 0, i16 2047, i16 3072, i16 2048, i16 512, i16 -2048, i16 -3328, i16 1024, i16 0, i16 2047, i16 3072, i16 2048, i16 512, i16 -2048, i16 -3328, i16 1024, i16 0, i16 2047, i16 3072, i16 2048, i16 512, i16 -2048, i16 -3328, i16 1024, i16 0, i16 2047, i16 3072, i16 2048, i16 512, i16 -2048, i16 -3328, i16 1024, i16 0, i16 2047, i16 3072, i16 2048, i16 512, i16 -2048, i16 -3328, i16 1024, i16 0, i16 2047, i16 3072, i16 2048, i16 512, i16 -2048, i16 -3328, i16 1024, i16 0, i16 2047, i16 3072, i16 2048, i16 512, i16 -2048, i16 -3328, i16 1024, i16 0, i16 2047, i16 3072, i16 2048, i16 512, i16 -2048, i16 -3328, i16 1024, i16 0, i16 2047, i16 3072, i16 2048, i16 512, i16 -2048, i16 -3328, i16 1024, i16 0, i16 2047, i16 3072, i16 2048, i16 512, i16 -2048, i16 -3328, i16 1024, i16 0, i16 2047, i16 3072, i16 2048, i16 512, i16 -2048, i16 -3328, i16 1024, i16 0, i16 2047, i16 3072, i16 2048, i16 512, i16 -2048, i16 -3328, i16 1024, i16 0, i16 2047, i16 3072, i16 2048, i16 512, i16 -2048, i16 -3328, i16 1024, i16 0, i16 2047, i16 3072, i16 2048, i16 512, i16 -2048, i16 -3328, i16 1024, i16 0, i16 2047, i16 3072, i16 2048, i16 512, i16 -2048, i16 -3328, i16 1024, i16 0, i16 2047, i16 3072, i16 2048, i16 512, i16 -2048, i16 -3328, i16 1024, i16 0, i16 2047, i16 3072, i16 2048, i16 512, i16 -2048, i16 -3328, i16 1024, i16 0, i16 2047, i16 3072, i16 2048, i16 512, i16 -2048, i16 -3328, i16 1024, i16 0, i16 2047, i16 3072, i16 2048, i16 512, i16 -2048, i16 -3328, i16 1024, i16 0, i16 2047, i16 3072, i16 2048, i16 512, i16 -2048, i16 -3328, i16 1024, i16 0, i16 2047, i16 3072, i16 2048, i16 512, i16 -2048, i16 -3328, i16 1024, i16 0, i16 2047, i16 3072, i16 2048, i16 512, i16 -2048, i16 -3328, i16 1024], align 2
@__const.edn.b = private unnamed_addr constant [200 x i16] [i16 3168, i16 3136, i16 3104, i16 3072, i16 -2560, i16 -3072, i16 -3584, i16 -4096, i16 3168, i16 3136, i16 3104, i16 3072, i16 -2560, i16 -3072, i16 -3584, i16 -4096, i16 3168, i16 3136, i16 3104, i16 3072, i16 -2560, i16 -3072, i16 -3584, i16 -4096, i16 3168, i16 3136, i16 3104, i16 3072, i16 -2560, i16 -3072, i16 -3584, i16 -4096, i16 3168, i16 3136, i16 3104, i16 3072, i16 -2560, i16 -3072, i16 -3584, i16 -4096, i16 3168, i16 3136, i16 3104, i16 3072, i16 -2560, i16 -3072, i16 -3584, i16 -4096, i16 3168, i16 3136, i16 3104, i16 3072, i16 -2560, i16 -3072, i16 -3584, i16 -4096, i16 3168, i16 3136, i16 3104, i16 3072, i16 -2560, i16 -3072, i16 -3584, i16 -4096, i16 3168, i16 3136, i16 3104, i16 3072, i16 -2560, i16 -3072, i16 -3584, i16 -4096, i16 3168, i16 3136, i16 3104, i16 3072, i16 -2560, i16 -3072, i16 -3584, i16 -4096, i16 3168, i16 3136, i16 3104, i16 3072, i16 -2560, i16 -3072, i16 -3584, i16 -4096, i16 3168, i16 3136, i16 3104, i16 3072, i16 -2560, i16 -3072, i16 -3584, i16 -4096, i16 3168, i16 3136, i16 3104, i16 3072, i16 -2560, i16 -3072, i16 -3584, i16 -4096, i16 3168, i16 3136, i16 3104, i16 3072, i16 -2560, i16 -3072, i16 -3584, i16 -4096, i16 3168, i16 3136, i16 3104, i16 3072, i16 -2560, i16 -3072, i16 -3584, i16 -4096, i16 3168, i16 3136, i16 3104, i16 3072, i16 -2560, i16 -3072, i16 -3584, i16 -4096, i16 3168, i16 3136, i16 3104, i16 3072, i16 -2560, i16 -3072, i16 -3584, i16 -4096, i16 3168, i16 3136, i16 3104, i16 3072, i16 -2560, i16 -3072, i16 -3584, i16 -4096, i16 3168, i16 3136, i16 3104, i16 3072, i16 -2560, i16 -3072, i16 -3584, i16 -4096, i16 3168, i16 3136, i16 3104, i16 3072, i16 -2560, i16 -3072, i16 -3584, i16 -4096, i16 3168, i16 3136, i16 3104, i16 3072, i16 -2560, i16 -3072, i16 -3584, i16 -4096, i16 3168, i16 3136, i16 3104, i16 3072, i16 -2560, i16 -3072, i16 -3584, i16 -4096, i16 3168, i16 3136, i16 3104, i16 3072, i16 -2560, i16 -3072, i16 -3584, i16 -4096, i16 3168, i16 3136, i16 3104, i16 3072, i16 -2560, i16 -3072, i16 -3584, i16 -4096, i16 3168, i16 3136, i16 3104, i16 3072, i16 -2560, i16 -3072, i16 -3584, i16 -4096], align 2
@__const.edn.e = private unnamed_addr constant [1 x i32] [i32 61166], align 4

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @vec_mpy1(i16* noundef %y, i16* noundef %x, i16 noundef signext %scaler) #0 !dbg !12 {
entry:
  %y.addr = alloca i16*, align 4
  %x.addr = alloca i16*, align 4
  %scaler.addr = alloca i16, align 2
  %i = alloca i32, align 4
  store i16* %y, i16** %y.addr, align 4
  store i16* %x, i16** %x.addr, align 4
  store i16 %scaler, i16* %scaler.addr, align 2
  store i32 0, i32* %i, align 4, !dbg !16
  br label %for.cond, !dbg !17

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !18
  %cmp = icmp slt i32 %0, 150, !dbg !19
  br i1 %cmp, label %for.body, label %for.end, !dbg !20

for.body:                                         ; preds = %for.cond
  %1 = load i16, i16* %scaler.addr, align 2, !dbg !21
  %conv = sext i16 %1 to i32, !dbg !21
  %2 = load i16*, i16** %x.addr, align 4, !dbg !22
  %3 = load i32, i32* %i, align 4, !dbg !23
  %arrayidx = getelementptr inbounds i16, i16* %2, i32 %3, !dbg !22
  %4 = load i16, i16* %arrayidx, align 2, !dbg !22
  %conv1 = sext i16 %4 to i32, !dbg !22
  %mul = mul nsw i32 %conv, %conv1, !dbg !24
  %shr = ashr i32 %mul, 15, !dbg !25
  %5 = load i16*, i16** %y.addr, align 4, !dbg !26
  %6 = load i32, i32* %i, align 4, !dbg !27
  %arrayidx2 = getelementptr inbounds i16, i16* %5, i32 %6, !dbg !26
  %7 = load i16, i16* %arrayidx2, align 2, !dbg !28
  %conv3 = sext i16 %7 to i32, !dbg !28
  %add = add nsw i32 %conv3, %shr, !dbg !28
  %conv4 = trunc i32 %add to i16, !dbg !28
  store i16 %conv4, i16* %arrayidx2, align 2, !dbg !28
  br label %for.inc, !dbg !26

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !29
  %inc = add nsw i32 %8, 1, !dbg !29
  store i32 %inc, i32* %i, align 4, !dbg !29
  br label %for.cond, !dbg !20, !llvm.loop !30

for.end:                                          ; preds = %for.cond
  ret void, !dbg !33
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @mac(i16* noundef %a, i16* noundef %b, i32 noundef %sqr, i32* noundef %sum) #0 !dbg !34 {
entry:
  %a.addr = alloca i16*, align 4
  %b.addr = alloca i16*, align 4
  %sqr.addr = alloca i32, align 4
  %sum.addr = alloca i32*, align 4
  %i = alloca i32, align 4
  %dotp = alloca i32, align 4
  store i16* %a, i16** %a.addr, align 4
  store i16* %b, i16** %b.addr, align 4
  store i32 %sqr, i32* %sqr.addr, align 4
  store i32* %sum, i32** %sum.addr, align 4
  %0 = load i32*, i32** %sum.addr, align 4, !dbg !35
  %1 = load i32, i32* %0, align 4, !dbg !36
  store i32 %1, i32* %dotp, align 4, !dbg !37
  store i32 0, i32* %i, align 4, !dbg !38
  br label %for.cond, !dbg !39

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4, !dbg !40
  %cmp = icmp slt i32 %2, 150, !dbg !41
  br i1 %cmp, label %for.body, label %for.end, !dbg !42

for.body:                                         ; preds = %for.cond
  %3 = load i16*, i16** %b.addr, align 4, !dbg !43
  %4 = load i32, i32* %i, align 4, !dbg !44
  %arrayidx = getelementptr inbounds i16, i16* %3, i32 %4, !dbg !43
  %5 = load i16, i16* %arrayidx, align 2, !dbg !43
  %conv = sext i16 %5 to i32, !dbg !43
  %6 = load i16*, i16** %a.addr, align 4, !dbg !45
  %7 = load i32, i32* %i, align 4, !dbg !46
  %arrayidx1 = getelementptr inbounds i16, i16* %6, i32 %7, !dbg !45
  %8 = load i16, i16* %arrayidx1, align 2, !dbg !45
  %conv2 = sext i16 %8 to i32, !dbg !45
  %mul = mul nsw i32 %conv, %conv2, !dbg !47
  %9 = load i32, i32* %dotp, align 4, !dbg !48
  %add = add nsw i32 %9, %mul, !dbg !48
  store i32 %add, i32* %dotp, align 4, !dbg !48
  %10 = load i16*, i16** %b.addr, align 4, !dbg !49
  %11 = load i32, i32* %i, align 4, !dbg !50
  %arrayidx3 = getelementptr inbounds i16, i16* %10, i32 %11, !dbg !49
  %12 = load i16, i16* %arrayidx3, align 2, !dbg !49
  %conv4 = sext i16 %12 to i32, !dbg !49
  %13 = load i16*, i16** %b.addr, align 4, !dbg !51
  %14 = load i32, i32* %i, align 4, !dbg !52
  %arrayidx5 = getelementptr inbounds i16, i16* %13, i32 %14, !dbg !51
  %15 = load i16, i16* %arrayidx5, align 2, !dbg !51
  %conv6 = sext i16 %15 to i32, !dbg !51
  %mul7 = mul nsw i32 %conv4, %conv6, !dbg !53
  %16 = load i32, i32* %sqr.addr, align 4, !dbg !54
  %add8 = add nsw i32 %16, %mul7, !dbg !54
  store i32 %add8, i32* %sqr.addr, align 4, !dbg !54
  br label %for.inc, !dbg !55

for.inc:                                          ; preds = %for.body
  %17 = load i32, i32* %i, align 4, !dbg !56
  %inc = add nsw i32 %17, 1, !dbg !56
  store i32 %inc, i32* %i, align 4, !dbg !56
  br label %for.cond, !dbg !42, !llvm.loop !57

for.end:                                          ; preds = %for.cond
  %18 = load i32, i32* %dotp, align 4, !dbg !58
  %19 = load i32*, i32** %sum.addr, align 4, !dbg !59
  store i32 %18, i32* %19, align 4, !dbg !60
  %20 = load i32, i32* %sqr.addr, align 4, !dbg !61
  ret i32 %20, !dbg !62
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @fir(i16* noundef %array1, i16* noundef %coeff, i32* noundef %output) #0 !dbg !63 {
entry:
  %array1.addr = alloca i16*, align 4
  %coeff.addr = alloca i16*, align 4
  %output.addr = alloca i32*, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %sum = alloca i32, align 4
  store i16* %array1, i16** %array1.addr, align 4
  store i16* %coeff, i16** %coeff.addr, align 4
  store i32* %output, i32** %output.addr, align 4
  store i32 0, i32* %i, align 4, !dbg !64
  br label %for.cond, !dbg !65

for.cond:                                         ; preds = %for.inc8, %entry
  %0 = load i32, i32* %i, align 4, !dbg !66
  %cmp = icmp slt i32 %0, 50, !dbg !67
  br i1 %cmp, label %for.body, label %for.end10, !dbg !68

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %sum, align 4, !dbg !69
  store i32 0, i32* %j, align 4, !dbg !70
  br label %for.cond1, !dbg !71

for.cond1:                                        ; preds = %for.inc, %for.body
  %1 = load i32, i32* %j, align 4, !dbg !72
  %cmp2 = icmp slt i32 %1, 50, !dbg !73
  br i1 %cmp2, label %for.body3, label %for.end, !dbg !74

for.body3:                                        ; preds = %for.cond1
  %2 = load i16*, i16** %array1.addr, align 4, !dbg !75
  %3 = load i32, i32* %i, align 4, !dbg !76
  %4 = load i32, i32* %j, align 4, !dbg !77
  %add = add nsw i32 %3, %4, !dbg !78
  %arrayidx = getelementptr inbounds i16, i16* %2, i32 %add, !dbg !75
  %5 = load i16, i16* %arrayidx, align 2, !dbg !75
  %conv = sext i16 %5 to i32, !dbg !75
  %6 = load i16*, i16** %coeff.addr, align 4, !dbg !79
  %7 = load i32, i32* %j, align 4, !dbg !80
  %arrayidx4 = getelementptr inbounds i16, i16* %6, i32 %7, !dbg !79
  %8 = load i16, i16* %arrayidx4, align 2, !dbg !79
  %conv5 = sext i16 %8 to i32, !dbg !79
  %mul = mul nsw i32 %conv, %conv5, !dbg !81
  %9 = load i32, i32* %sum, align 4, !dbg !82
  %add6 = add nsw i32 %9, %mul, !dbg !82
  store i32 %add6, i32* %sum, align 4, !dbg !82
  br label %for.inc, !dbg !83

for.inc:                                          ; preds = %for.body3
  %10 = load i32, i32* %j, align 4, !dbg !84
  %inc = add nsw i32 %10, 1, !dbg !84
  store i32 %inc, i32* %j, align 4, !dbg !84
  br label %for.cond1, !dbg !74, !llvm.loop !85

for.end:                                          ; preds = %for.cond1
  %11 = load i32, i32* %sum, align 4, !dbg !86
  %shr = ashr i32 %11, 15, !dbg !87
  %12 = load i32*, i32** %output.addr, align 4, !dbg !88
  %13 = load i32, i32* %i, align 4, !dbg !89
  %arrayidx7 = getelementptr inbounds i32, i32* %12, i32 %13, !dbg !88
  store i32 %shr, i32* %arrayidx7, align 4, !dbg !90
  br label %for.inc8, !dbg !91

for.inc8:                                         ; preds = %for.end
  %14 = load i32, i32* %i, align 4, !dbg !92
  %inc9 = add nsw i32 %14, 1, !dbg !92
  store i32 %inc9, i32* %i, align 4, !dbg !92
  br label %for.cond, !dbg !68, !llvm.loop !93

for.end10:                                        ; preds = %for.cond
  ret void, !dbg !94
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @fir_no_red_ld(i16* noundef %x, i16* noundef %h, i32* noundef %y) #0 !dbg !95 {
entry:
  %x.addr = alloca i16*, align 4
  %h.addr = alloca i16*, align 4
  %y.addr = alloca i32*, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %sum0 = alloca i32, align 4
  %sum1 = alloca i32, align 4
  %x0 = alloca i16, align 2
  %x1 = alloca i16, align 2
  %h0 = alloca i16, align 2
  %h1 = alloca i16, align 2
  store i16* %x, i16** %x.addr, align 4
  store i16* %h, i16** %h.addr, align 4
  store i32* %y, i32** %y.addr, align 4
  store i32 0, i32* %j, align 4, !dbg !96
  br label %for.cond, !dbg !97

for.cond:                                         ; preds = %for.inc31, %entry
  %0 = load i32, i32* %j, align 4, !dbg !98
  %cmp = icmp slt i32 %0, 100, !dbg !99
  br i1 %cmp, label %for.body, label %for.end33, !dbg !100

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %sum0, align 4, !dbg !101
  store i32 0, i32* %sum1, align 4, !dbg !102
  %1 = load i16*, i16** %x.addr, align 4, !dbg !103
  %2 = load i32, i32* %j, align 4, !dbg !104
  %arrayidx = getelementptr inbounds i16, i16* %1, i32 %2, !dbg !103
  %3 = load i16, i16* %arrayidx, align 2, !dbg !103
  store i16 %3, i16* %x0, align 2, !dbg !105
  store i32 0, i32* %i, align 4, !dbg !106
  br label %for.cond1, !dbg !107

for.cond1:                                        ; preds = %for.inc, %for.body
  %4 = load i32, i32* %i, align 4, !dbg !108
  %cmp2 = icmp slt i32 %4, 32, !dbg !109
  br i1 %cmp2, label %for.body3, label %for.end, !dbg !110

for.body3:                                        ; preds = %for.cond1
  %5 = load i16*, i16** %x.addr, align 4, !dbg !111
  %6 = load i32, i32* %j, align 4, !dbg !112
  %7 = load i32, i32* %i, align 4, !dbg !113
  %add = add nsw i32 %6, %7, !dbg !114
  %add4 = add nsw i32 %add, 1, !dbg !115
  %arrayidx5 = getelementptr inbounds i16, i16* %5, i32 %add4, !dbg !111
  %8 = load i16, i16* %arrayidx5, align 2, !dbg !111
  store i16 %8, i16* %x1, align 2, !dbg !116
  %9 = load i16*, i16** %h.addr, align 4, !dbg !117
  %10 = load i32, i32* %i, align 4, !dbg !118
  %arrayidx6 = getelementptr inbounds i16, i16* %9, i32 %10, !dbg !117
  %11 = load i16, i16* %arrayidx6, align 2, !dbg !117
  store i16 %11, i16* %h0, align 2, !dbg !119
  %12 = load i16, i16* %x0, align 2, !dbg !120
  %conv = sext i16 %12 to i32, !dbg !120
  %13 = load i16, i16* %h0, align 2, !dbg !121
  %conv7 = sext i16 %13 to i32, !dbg !121
  %mul = mul nsw i32 %conv, %conv7, !dbg !122
  %14 = load i32, i32* %sum0, align 4, !dbg !123
  %add8 = add nsw i32 %14, %mul, !dbg !123
  store i32 %add8, i32* %sum0, align 4, !dbg !123
  %15 = load i16, i16* %x1, align 2, !dbg !124
  %conv9 = sext i16 %15 to i32, !dbg !124
  %16 = load i16, i16* %h0, align 2, !dbg !125
  %conv10 = sext i16 %16 to i32, !dbg !125
  %mul11 = mul nsw i32 %conv9, %conv10, !dbg !126
  %17 = load i32, i32* %sum1, align 4, !dbg !127
  %add12 = add nsw i32 %17, %mul11, !dbg !127
  store i32 %add12, i32* %sum1, align 4, !dbg !127
  %18 = load i16*, i16** %x.addr, align 4, !dbg !128
  %19 = load i32, i32* %j, align 4, !dbg !129
  %20 = load i32, i32* %i, align 4, !dbg !130
  %add13 = add nsw i32 %19, %20, !dbg !131
  %add14 = add nsw i32 %add13, 2, !dbg !132
  %arrayidx15 = getelementptr inbounds i16, i16* %18, i32 %add14, !dbg !128
  %21 = load i16, i16* %arrayidx15, align 2, !dbg !128
  store i16 %21, i16* %x0, align 2, !dbg !133
  %22 = load i16*, i16** %h.addr, align 4, !dbg !134
  %23 = load i32, i32* %i, align 4, !dbg !135
  %add16 = add nsw i32 %23, 1, !dbg !136
  %arrayidx17 = getelementptr inbounds i16, i16* %22, i32 %add16, !dbg !134
  %24 = load i16, i16* %arrayidx17, align 2, !dbg !134
  store i16 %24, i16* %h1, align 2, !dbg !137
  %25 = load i16, i16* %x1, align 2, !dbg !138
  %conv18 = sext i16 %25 to i32, !dbg !138
  %26 = load i16, i16* %h1, align 2, !dbg !139
  %conv19 = sext i16 %26 to i32, !dbg !139
  %mul20 = mul nsw i32 %conv18, %conv19, !dbg !140
  %27 = load i32, i32* %sum0, align 4, !dbg !141
  %add21 = add nsw i32 %27, %mul20, !dbg !141
  store i32 %add21, i32* %sum0, align 4, !dbg !141
  %28 = load i16, i16* %x0, align 2, !dbg !142
  %conv22 = sext i16 %28 to i32, !dbg !142
  %29 = load i16, i16* %h1, align 2, !dbg !143
  %conv23 = sext i16 %29 to i32, !dbg !143
  %mul24 = mul nsw i32 %conv22, %conv23, !dbg !144
  %30 = load i32, i32* %sum1, align 4, !dbg !145
  %add25 = add nsw i32 %30, %mul24, !dbg !145
  store i32 %add25, i32* %sum1, align 4, !dbg !145
  br label %for.inc, !dbg !146

for.inc:                                          ; preds = %for.body3
  %31 = load i32, i32* %i, align 4, !dbg !147
  %add26 = add nsw i32 %31, 2, !dbg !147
  store i32 %add26, i32* %i, align 4, !dbg !147
  br label %for.cond1, !dbg !110, !llvm.loop !148

for.end:                                          ; preds = %for.cond1
  %32 = load i32, i32* %sum0, align 4, !dbg !149
  %shr = ashr i32 %32, 15, !dbg !150
  %33 = load i32*, i32** %y.addr, align 4, !dbg !151
  %34 = load i32, i32* %j, align 4, !dbg !152
  %arrayidx27 = getelementptr inbounds i32, i32* %33, i32 %34, !dbg !151
  store i32 %shr, i32* %arrayidx27, align 4, !dbg !153
  %35 = load i32, i32* %sum1, align 4, !dbg !154
  %shr28 = ashr i32 %35, 15, !dbg !155
  %36 = load i32*, i32** %y.addr, align 4, !dbg !156
  %37 = load i32, i32* %j, align 4, !dbg !157
  %add29 = add nsw i32 %37, 1, !dbg !158
  %arrayidx30 = getelementptr inbounds i32, i32* %36, i32 %add29, !dbg !156
  store i32 %shr28, i32* %arrayidx30, align 4, !dbg !159
  br label %for.inc31, !dbg !160

for.inc31:                                        ; preds = %for.end
  %38 = load i32, i32* %j, align 4, !dbg !161
  %add32 = add nsw i32 %38, 2, !dbg !161
  store i32 %add32, i32* %j, align 4, !dbg !161
  br label %for.cond, !dbg !100, !llvm.loop !162

for.end33:                                        ; preds = %for.cond
  ret void, !dbg !163
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @latsynth(i16* noundef %b, i16* noundef %k, i32 noundef %n, i32 noundef %f) #0 !dbg !164 {
entry:
  %b.addr = alloca i16*, align 4
  %k.addr = alloca i16*, align 4
  %n.addr = alloca i32, align 4
  %f.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i16* %b, i16** %b.addr, align 4
  store i16* %k, i16** %k.addr, align 4
  store i32 %n, i32* %n.addr, align 4
  store i32 %f, i32* %f.addr, align 4
  %0 = load i16*, i16** %b.addr, align 4, !dbg !165
  %1 = load i32, i32* %n.addr, align 4, !dbg !166
  %sub = sub nsw i32 %1, 1, !dbg !167
  %arrayidx = getelementptr inbounds i16, i16* %0, i32 %sub, !dbg !165
  %2 = load i16, i16* %arrayidx, align 2, !dbg !165
  %conv = sext i16 %2 to i32, !dbg !165
  %3 = load i16*, i16** %k.addr, align 4, !dbg !168
  %4 = load i32, i32* %n.addr, align 4, !dbg !169
  %sub1 = sub nsw i32 %4, 1, !dbg !170
  %arrayidx2 = getelementptr inbounds i16, i16* %3, i32 %sub1, !dbg !168
  %5 = load i16, i16* %arrayidx2, align 2, !dbg !168
  %conv3 = sext i16 %5 to i32, !dbg !168
  %mul = mul nsw i32 %conv, %conv3, !dbg !171
  %6 = load i32, i32* %f.addr, align 4, !dbg !172
  %sub4 = sub nsw i32 %6, %mul, !dbg !172
  store i32 %sub4, i32* %f.addr, align 4, !dbg !172
  %7 = load i32, i32* %n.addr, align 4, !dbg !173
  %sub5 = sub nsw i32 %7, 2, !dbg !174
  store i32 %sub5, i32* %i, align 4, !dbg !175
  br label %for.cond, !dbg !176

for.cond:                                         ; preds = %for.inc, %entry
  %8 = load i32, i32* %i, align 4, !dbg !177
  %cmp = icmp sge i32 %8, 0, !dbg !178
  br i1 %cmp, label %for.body, label %for.end, !dbg !179

for.body:                                         ; preds = %for.cond
  %9 = load i16*, i16** %b.addr, align 4, !dbg !180
  %10 = load i32, i32* %i, align 4, !dbg !181
  %arrayidx7 = getelementptr inbounds i16, i16* %9, i32 %10, !dbg !180
  %11 = load i16, i16* %arrayidx7, align 2, !dbg !180
  %conv8 = sext i16 %11 to i32, !dbg !180
  %12 = load i16*, i16** %k.addr, align 4, !dbg !182
  %13 = load i32, i32* %i, align 4, !dbg !183
  %arrayidx9 = getelementptr inbounds i16, i16* %12, i32 %13, !dbg !182
  %14 = load i16, i16* %arrayidx9, align 2, !dbg !182
  %conv10 = sext i16 %14 to i32, !dbg !182
  %mul11 = mul nsw i32 %conv8, %conv10, !dbg !184
  %15 = load i32, i32* %f.addr, align 4, !dbg !185
  %sub12 = sub nsw i32 %15, %mul11, !dbg !185
  store i32 %sub12, i32* %f.addr, align 4, !dbg !185
  %16 = load i16*, i16** %b.addr, align 4, !dbg !186
  %17 = load i32, i32* %i, align 4, !dbg !187
  %arrayidx13 = getelementptr inbounds i16, i16* %16, i32 %17, !dbg !186
  %18 = load i16, i16* %arrayidx13, align 2, !dbg !186
  %conv14 = sext i16 %18 to i32, !dbg !186
  %19 = load i16*, i16** %k.addr, align 4, !dbg !188
  %20 = load i32, i32* %i, align 4, !dbg !189
  %arrayidx15 = getelementptr inbounds i16, i16* %19, i32 %20, !dbg !188
  %21 = load i16, i16* %arrayidx15, align 2, !dbg !188
  %conv16 = sext i16 %21 to i32, !dbg !188
  %22 = load i32, i32* %f.addr, align 4, !dbg !190
  %shr = ashr i32 %22, 16, !dbg !191
  %mul17 = mul nsw i32 %conv16, %shr, !dbg !192
  %shr18 = ashr i32 %mul17, 16, !dbg !193
  %add = add nsw i32 %conv14, %shr18, !dbg !194
  %conv19 = trunc i32 %add to i16, !dbg !186
  %23 = load i16*, i16** %b.addr, align 4, !dbg !195
  %24 = load i32, i32* %i, align 4, !dbg !196
  %add20 = add nsw i32 %24, 1, !dbg !197
  %arrayidx21 = getelementptr inbounds i16, i16* %23, i32 %add20, !dbg !195
  store i16 %conv19, i16* %arrayidx21, align 2, !dbg !198
  br label %for.inc, !dbg !199

for.inc:                                          ; preds = %for.body
  %25 = load i32, i32* %i, align 4, !dbg !200
  %dec = add nsw i32 %25, -1, !dbg !200
  store i32 %dec, i32* %i, align 4, !dbg !200
  br label %for.cond, !dbg !179, !llvm.loop !201

for.end:                                          ; preds = %for.cond
  %26 = load i32, i32* %f.addr, align 4, !dbg !202
  %shr22 = ashr i32 %26, 16, !dbg !203
  %conv23 = trunc i32 %shr22 to i16, !dbg !202
  %27 = load i16*, i16** %b.addr, align 4, !dbg !204
  %arrayidx24 = getelementptr inbounds i16, i16* %27, i32 0, !dbg !204
  store i16 %conv23, i16* %arrayidx24, align 2, !dbg !205
  %28 = load i32, i32* %f.addr, align 4, !dbg !206
  ret i32 %28, !dbg !207
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @iir1(i16* noundef %coefs, i16* noundef %input, i32* noundef %optr, i32* noundef %state) #0 !dbg !208 {
entry:
  %coefs.addr = alloca i16*, align 4
  %input.addr = alloca i16*, align 4
  %optr.addr = alloca i32*, align 4
  %state.addr = alloca i32*, align 4
  %x = alloca i32, align 4
  %t = alloca i32, align 4
  %n = alloca i32, align 4
  store i16* %coefs, i16** %coefs.addr, align 4
  store i16* %input, i16** %input.addr, align 4
  store i32* %optr, i32** %optr.addr, align 4
  store i32* %state, i32** %state.addr, align 4
  %0 = load i16*, i16** %input.addr, align 4, !dbg !209
  %arrayidx = getelementptr inbounds i16, i16* %0, i32 0, !dbg !209
  %1 = load i16, i16* %arrayidx, align 2, !dbg !209
  %conv = sext i16 %1 to i32, !dbg !209
  store i32 %conv, i32* %x, align 4, !dbg !210
  store i32 0, i32* %n, align 4, !dbg !211
  br label %for.cond, !dbg !212

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %n, align 4, !dbg !213
  %cmp = icmp slt i32 %2, 50, !dbg !214
  br i1 %cmp, label %for.body, label %for.end, !dbg !215

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %x, align 4, !dbg !216
  %4 = load i16*, i16** %coefs.addr, align 4, !dbg !217
  %arrayidx2 = getelementptr inbounds i16, i16* %4, i32 2, !dbg !217
  %5 = load i16, i16* %arrayidx2, align 2, !dbg !217
  %conv3 = sext i16 %5 to i32, !dbg !217
  %6 = load i32*, i32** %state.addr, align 4, !dbg !218
  %arrayidx4 = getelementptr inbounds i32, i32* %6, i32 0, !dbg !218
  %7 = load i32, i32* %arrayidx4, align 4, !dbg !218
  %mul = mul nsw i32 %conv3, %7, !dbg !219
  %8 = load i16*, i16** %coefs.addr, align 4, !dbg !220
  %arrayidx5 = getelementptr inbounds i16, i16* %8, i32 3, !dbg !220
  %9 = load i16, i16* %arrayidx5, align 2, !dbg !220
  %conv6 = sext i16 %9 to i32, !dbg !220
  %10 = load i32*, i32** %state.addr, align 4, !dbg !221
  %arrayidx7 = getelementptr inbounds i32, i32* %10, i32 1, !dbg !221
  %11 = load i32, i32* %arrayidx7, align 4, !dbg !221
  %mul8 = mul nsw i32 %conv6, %11, !dbg !222
  %add = add nsw i32 %mul, %mul8, !dbg !223
  %shr = ashr i32 %add, 15, !dbg !224
  %add9 = add nsw i32 %3, %shr, !dbg !225
  store i32 %add9, i32* %t, align 4, !dbg !226
  %12 = load i32, i32* %t, align 4, !dbg !227
  %13 = load i16*, i16** %coefs.addr, align 4, !dbg !228
  %arrayidx10 = getelementptr inbounds i16, i16* %13, i32 0, !dbg !228
  %14 = load i16, i16* %arrayidx10, align 2, !dbg !228
  %conv11 = sext i16 %14 to i32, !dbg !228
  %15 = load i32*, i32** %state.addr, align 4, !dbg !229
  %arrayidx12 = getelementptr inbounds i32, i32* %15, i32 0, !dbg !229
  %16 = load i32, i32* %arrayidx12, align 4, !dbg !229
  %mul13 = mul nsw i32 %conv11, %16, !dbg !230
  %17 = load i16*, i16** %coefs.addr, align 4, !dbg !231
  %arrayidx14 = getelementptr inbounds i16, i16* %17, i32 1, !dbg !231
  %18 = load i16, i16* %arrayidx14, align 2, !dbg !231
  %conv15 = sext i16 %18 to i32, !dbg !231
  %19 = load i32*, i32** %state.addr, align 4, !dbg !232
  %arrayidx16 = getelementptr inbounds i32, i32* %19, i32 1, !dbg !232
  %20 = load i32, i32* %arrayidx16, align 4, !dbg !232
  %mul17 = mul nsw i32 %conv15, %20, !dbg !233
  %add18 = add nsw i32 %mul13, %mul17, !dbg !234
  %shr19 = ashr i32 %add18, 15, !dbg !235
  %add20 = add nsw i32 %12, %shr19, !dbg !236
  store i32 %add20, i32* %x, align 4, !dbg !237
  %21 = load i32*, i32** %state.addr, align 4, !dbg !238
  %arrayidx21 = getelementptr inbounds i32, i32* %21, i32 0, !dbg !238
  %22 = load i32, i32* %arrayidx21, align 4, !dbg !238
  %23 = load i32*, i32** %state.addr, align 4, !dbg !239
  %arrayidx22 = getelementptr inbounds i32, i32* %23, i32 1, !dbg !239
  store i32 %22, i32* %arrayidx22, align 4, !dbg !240
  %24 = load i32, i32* %t, align 4, !dbg !241
  %25 = load i32*, i32** %state.addr, align 4, !dbg !242
  %arrayidx23 = getelementptr inbounds i32, i32* %25, i32 0, !dbg !242
  store i32 %24, i32* %arrayidx23, align 4, !dbg !243
  %26 = load i16*, i16** %coefs.addr, align 4, !dbg !244
  %add.ptr = getelementptr inbounds i16, i16* %26, i32 4, !dbg !244
  store i16* %add.ptr, i16** %coefs.addr, align 4, !dbg !244
  %27 = load i32*, i32** %state.addr, align 4, !dbg !245
  %add.ptr24 = getelementptr inbounds i32, i32* %27, i32 2, !dbg !245
  store i32* %add.ptr24, i32** %state.addr, align 4, !dbg !245
  br label %for.inc, !dbg !246

for.inc:                                          ; preds = %for.body
  %28 = load i32, i32* %n, align 4, !dbg !247
  %inc = add nsw i32 %28, 1, !dbg !247
  store i32 %inc, i32* %n, align 4, !dbg !247
  br label %for.cond, !dbg !215, !llvm.loop !248

for.end:                                          ; preds = %for.cond
  %29 = load i32, i32* %x, align 4, !dbg !249
  %30 = load i32*, i32** %optr.addr, align 4, !dbg !250
  %incdec.ptr = getelementptr inbounds i32, i32* %30, i32 1, !dbg !250
  store i32* %incdec.ptr, i32** %optr.addr, align 4, !dbg !250
  store i32 %29, i32* %30, align 4, !dbg !251
  ret void, !dbg !252
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @codebook(i32 noundef %mask, i32 noundef %bitchanged, i32 noundef %numbasis, i32 noundef %codeword, i32 noundef %g, i16* noundef %d, i16 noundef signext %ddim, i16 noundef signext %theta) #0 !dbg !253 {
entry:
  %mask.addr = alloca i32, align 4
  %bitchanged.addr = alloca i32, align 4
  %numbasis.addr = alloca i32, align 4
  %codeword.addr = alloca i32, align 4
  %g.addr = alloca i32, align 4
  %d.addr = alloca i16*, align 4
  %ddim.addr = alloca i16, align 2
  %theta.addr = alloca i16, align 2
  %j = alloca i32, align 4
  %tmpMask = alloca i32, align 4
  store i32 %mask, i32* %mask.addr, align 4
  store i32 %bitchanged, i32* %bitchanged.addr, align 4
  store i32 %numbasis, i32* %numbasis.addr, align 4
  store i32 %codeword, i32* %codeword.addr, align 4
  store i32 %g, i32* %g.addr, align 4
  store i16* %d, i16** %d.addr, align 4
  store i16 %ddim, i16* %ddim.addr, align 2
  store i16 %theta, i16* %theta.addr, align 2
  %0 = load i32, i32* %mask.addr, align 4, !dbg !254
  %shl = shl i32 %0, 1, !dbg !255
  store i32 %shl, i32* %tmpMask, align 4, !dbg !256
  %1 = load i32, i32* %bitchanged.addr, align 4, !dbg !257
  %add = add nsw i32 %1, 1, !dbg !258
  store i32 %add, i32* %j, align 4, !dbg !259
  br label %for.cond, !dbg !260

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %j, align 4, !dbg !261
  %3 = load i32, i32* %numbasis.addr, align 4, !dbg !262
  %cmp = icmp sle i32 %2, %3, !dbg !263
  br i1 %cmp, label %for.body, label %for.end, !dbg !264

for.body:                                         ; preds = %for.cond
  br label %for.inc, !dbg !265

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %j, align 4, !dbg !266
  %inc = add nsw i32 %4, 1, !dbg !266
  store i32 %inc, i32* %j, align 4, !dbg !266
  br label %for.cond, !dbg !264, !llvm.loop !267

for.end:                                          ; preds = %for.cond
  %5 = load i32, i32* %g.addr, align 4, !dbg !268
  ret i32 %5, !dbg !269
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @jpegdct(i16* noundef %d, i16* noundef %r) #0 !dbg !270 {
entry:
  %d.addr = alloca i16*, align 4
  %r.addr = alloca i16*, align 4
  %t = alloca [12 x i32], align 4
  %i = alloca i16, align 2
  %j = alloca i16, align 2
  %k = alloca i16, align 2
  %m = alloca i16, align 2
  %n = alloca i16, align 2
  %p = alloca i16, align 2
  store i16* %d, i16** %d.addr, align 4
  store i16* %r, i16** %r.addr, align 4
  store i16 1, i16* %k, align 2, !dbg !271
  store i16 0, i16* %m, align 2, !dbg !272
  store i16 13, i16* %n, align 2, !dbg !273
  store i16 8, i16* %p, align 2, !dbg !274
  br label %for.cond, !dbg !275

for.cond:                                         ; preds = %for.inc225, %entry
  %0 = load i16, i16* %k, align 2, !dbg !276
  %conv = sext i16 %0 to i32, !dbg !276
  %cmp = icmp sle i32 %conv, 8, !dbg !277
  br i1 %cmp, label %for.body, label %for.end239, !dbg !278

for.body:                                         ; preds = %for.cond
  store i16 0, i16* %i, align 2, !dbg !279
  br label %for.cond2, !dbg !280

for.cond2:                                        ; preds = %for.inc221, %for.body
  %1 = load i16, i16* %i, align 2, !dbg !281
  %conv3 = sext i16 %1 to i32, !dbg !281
  %cmp4 = icmp slt i32 %conv3, 8, !dbg !282
  br i1 %cmp4, label %for.body6, label %for.end224, !dbg !283

for.body6:                                        ; preds = %for.cond2
  store i16 0, i16* %j, align 2, !dbg !284
  br label %for.cond7, !dbg !285

for.cond7:                                        ; preds = %for.inc, %for.body6
  %2 = load i16, i16* %j, align 2, !dbg !286
  %conv8 = sext i16 %2 to i32, !dbg !286
  %cmp9 = icmp slt i32 %conv8, 4, !dbg !287
  br i1 %cmp9, label %for.body11, label %for.end, !dbg !288

for.body11:                                       ; preds = %for.cond7
  %3 = load i16*, i16** %d.addr, align 4, !dbg !289
  %4 = load i16, i16* %k, align 2, !dbg !290
  %conv12 = sext i16 %4 to i32, !dbg !290
  %5 = load i16, i16* %j, align 2, !dbg !291
  %conv13 = sext i16 %5 to i32, !dbg !291
  %mul = mul nsw i32 %conv12, %conv13, !dbg !292
  %arrayidx = getelementptr inbounds i16, i16* %3, i32 %mul, !dbg !289
  %6 = load i16, i16* %arrayidx, align 2, !dbg !289
  %conv14 = sext i16 %6 to i32, !dbg !289
  %7 = load i16*, i16** %d.addr, align 4, !dbg !293
  %8 = load i16, i16* %k, align 2, !dbg !294
  %conv15 = sext i16 %8 to i32, !dbg !294
  %9 = load i16, i16* %j, align 2, !dbg !295
  %conv16 = sext i16 %9 to i32, !dbg !295
  %sub = sub nsw i32 7, %conv16, !dbg !296
  %mul17 = mul nsw i32 %conv15, %sub, !dbg !297
  %arrayidx18 = getelementptr inbounds i16, i16* %7, i32 %mul17, !dbg !293
  %10 = load i16, i16* %arrayidx18, align 2, !dbg !293
  %conv19 = sext i16 %10 to i32, !dbg !293
  %add = add nsw i32 %conv14, %conv19, !dbg !298
  %11 = load i16, i16* %j, align 2, !dbg !299
  %idxprom = sext i16 %11 to i32, !dbg !300
  %arrayidx20 = getelementptr inbounds [12 x i32], [12 x i32]* %t, i32 0, i32 %idxprom, !dbg !300
  store i32 %add, i32* %arrayidx20, align 4, !dbg !301
  %12 = load i16*, i16** %d.addr, align 4, !dbg !302
  %13 = load i16, i16* %k, align 2, !dbg !303
  %conv21 = sext i16 %13 to i32, !dbg !303
  %14 = load i16, i16* %j, align 2, !dbg !304
  %conv22 = sext i16 %14 to i32, !dbg !304
  %mul23 = mul nsw i32 %conv21, %conv22, !dbg !305
  %arrayidx24 = getelementptr inbounds i16, i16* %12, i32 %mul23, !dbg !302
  %15 = load i16, i16* %arrayidx24, align 2, !dbg !302
  %conv25 = sext i16 %15 to i32, !dbg !302
  %16 = load i16*, i16** %d.addr, align 4, !dbg !306
  %17 = load i16, i16* %k, align 2, !dbg !307
  %conv26 = sext i16 %17 to i32, !dbg !307
  %18 = load i16, i16* %j, align 2, !dbg !308
  %conv27 = sext i16 %18 to i32, !dbg !308
  %sub28 = sub nsw i32 7, %conv27, !dbg !309
  %mul29 = mul nsw i32 %conv26, %sub28, !dbg !310
  %arrayidx30 = getelementptr inbounds i16, i16* %16, i32 %mul29, !dbg !306
  %19 = load i16, i16* %arrayidx30, align 2, !dbg !306
  %conv31 = sext i16 %19 to i32, !dbg !306
  %sub32 = sub nsw i32 %conv25, %conv31, !dbg !311
  %20 = load i16, i16* %j, align 2, !dbg !312
  %conv33 = sext i16 %20 to i32, !dbg !312
  %sub34 = sub nsw i32 7, %conv33, !dbg !313
  %arrayidx35 = getelementptr inbounds [12 x i32], [12 x i32]* %t, i32 0, i32 %sub34, !dbg !314
  store i32 %sub32, i32* %arrayidx35, align 4, !dbg !315
  br label %for.inc, !dbg !316

for.inc:                                          ; preds = %for.body11
  %21 = load i16, i16* %j, align 2, !dbg !317
  %inc = add i16 %21, 1, !dbg !317
  store i16 %inc, i16* %j, align 2, !dbg !317
  br label %for.cond7, !dbg !288, !llvm.loop !318

for.end:                                          ; preds = %for.cond7
  %arrayidx36 = getelementptr inbounds [12 x i32], [12 x i32]* %t, i32 0, i32 0, !dbg !319
  %22 = load i32, i32* %arrayidx36, align 4, !dbg !319
  %arrayidx37 = getelementptr inbounds [12 x i32], [12 x i32]* %t, i32 0, i32 3, !dbg !320
  %23 = load i32, i32* %arrayidx37, align 4, !dbg !320
  %add38 = add nsw i32 %22, %23, !dbg !321
  %arrayidx39 = getelementptr inbounds [12 x i32], [12 x i32]* %t, i32 0, i32 8, !dbg !322
  store i32 %add38, i32* %arrayidx39, align 4, !dbg !323
  %arrayidx40 = getelementptr inbounds [12 x i32], [12 x i32]* %t, i32 0, i32 0, !dbg !324
  %24 = load i32, i32* %arrayidx40, align 4, !dbg !324
  %arrayidx41 = getelementptr inbounds [12 x i32], [12 x i32]* %t, i32 0, i32 3, !dbg !325
  %25 = load i32, i32* %arrayidx41, align 4, !dbg !325
  %sub42 = sub nsw i32 %24, %25, !dbg !326
  %arrayidx43 = getelementptr inbounds [12 x i32], [12 x i32]* %t, i32 0, i32 9, !dbg !327
  store i32 %sub42, i32* %arrayidx43, align 4, !dbg !328
  %arrayidx44 = getelementptr inbounds [12 x i32], [12 x i32]* %t, i32 0, i32 1, !dbg !329
  %26 = load i32, i32* %arrayidx44, align 4, !dbg !329
  %arrayidx45 = getelementptr inbounds [12 x i32], [12 x i32]* %t, i32 0, i32 2, !dbg !330
  %27 = load i32, i32* %arrayidx45, align 4, !dbg !330
  %add46 = add nsw i32 %26, %27, !dbg !331
  %arrayidx47 = getelementptr inbounds [12 x i32], [12 x i32]* %t, i32 0, i32 10, !dbg !332
  store i32 %add46, i32* %arrayidx47, align 4, !dbg !333
  %arrayidx48 = getelementptr inbounds [12 x i32], [12 x i32]* %t, i32 0, i32 1, !dbg !334
  %28 = load i32, i32* %arrayidx48, align 4, !dbg !334
  %arrayidx49 = getelementptr inbounds [12 x i32], [12 x i32]* %t, i32 0, i32 2, !dbg !335
  %29 = load i32, i32* %arrayidx49, align 4, !dbg !335
  %sub50 = sub nsw i32 %28, %29, !dbg !336
  %arrayidx51 = getelementptr inbounds [12 x i32], [12 x i32]* %t, i32 0, i32 11, !dbg !337
  store i32 %sub50, i32* %arrayidx51, align 4, !dbg !338
  %arrayidx52 = getelementptr inbounds [12 x i32], [12 x i32]* %t, i32 0, i32 8, !dbg !339
  %30 = load i32, i32* %arrayidx52, align 4, !dbg !339
  %arrayidx53 = getelementptr inbounds [12 x i32], [12 x i32]* %t, i32 0, i32 10, !dbg !340
  %31 = load i32, i32* %arrayidx53, align 4, !dbg !340
  %add54 = add nsw i32 %30, %31, !dbg !341
  %32 = load i16, i16* %m, align 2, !dbg !342
  %conv55 = sext i16 %32 to i32, !dbg !342
  %shr = ashr i32 %add54, %conv55, !dbg !343
  %conv56 = trunc i32 %shr to i16, !dbg !344
  %33 = load i16*, i16** %d.addr, align 4, !dbg !345
  %arrayidx57 = getelementptr inbounds i16, i16* %33, i32 0, !dbg !345
  store i16 %conv56, i16* %arrayidx57, align 2, !dbg !346
  %arrayidx58 = getelementptr inbounds [12 x i32], [12 x i32]* %t, i32 0, i32 8, !dbg !347
  %34 = load i32, i32* %arrayidx58, align 4, !dbg !347
  %arrayidx59 = getelementptr inbounds [12 x i32], [12 x i32]* %t, i32 0, i32 10, !dbg !348
  %35 = load i32, i32* %arrayidx59, align 4, !dbg !348
  %sub60 = sub nsw i32 %34, %35, !dbg !349
  %36 = load i16, i16* %m, align 2, !dbg !350
  %conv61 = sext i16 %36 to i32, !dbg !350
  %shr62 = ashr i32 %sub60, %conv61, !dbg !351
  %conv63 = trunc i32 %shr62 to i16, !dbg !352
  %37 = load i16*, i16** %d.addr, align 4, !dbg !353
  %38 = load i16, i16* %k, align 2, !dbg !354
  %conv64 = sext i16 %38 to i32, !dbg !354
  %mul65 = mul nsw i32 4, %conv64, !dbg !355
  %arrayidx66 = getelementptr inbounds i16, i16* %37, i32 %mul65, !dbg !353
  store i16 %conv63, i16* %arrayidx66, align 2, !dbg !356
  %arrayidx67 = getelementptr inbounds [12 x i32], [12 x i32]* %t, i32 0, i32 11, !dbg !357
  %39 = load i32, i32* %arrayidx67, align 4, !dbg !357
  %arrayidx68 = getelementptr inbounds [12 x i32], [12 x i32]* %t, i32 0, i32 9, !dbg !358
  %40 = load i32, i32* %arrayidx68, align 4, !dbg !358
  %add69 = add nsw i32 %39, %40, !dbg !359
  %conv70 = trunc i32 %add69 to i16, !dbg !360
  %conv71 = sext i16 %conv70 to i32, !dbg !360
  %41 = load i16*, i16** %r.addr, align 4, !dbg !361
  %arrayidx72 = getelementptr inbounds i16, i16* %41, i32 10, !dbg !361
  %42 = load i16, i16* %arrayidx72, align 2, !dbg !361
  %conv73 = sext i16 %42 to i32, !dbg !361
  %mul74 = mul nsw i32 %conv71, %conv73, !dbg !362
  %arrayidx75 = getelementptr inbounds [12 x i32], [12 x i32]* %t, i32 0, i32 8, !dbg !363
  store i32 %mul74, i32* %arrayidx75, align 4, !dbg !364
  %arrayidx76 = getelementptr inbounds [12 x i32], [12 x i32]* %t, i32 0, i32 8, !dbg !365
  %43 = load i32, i32* %arrayidx76, align 4, !dbg !365
  %arrayidx77 = getelementptr inbounds [12 x i32], [12 x i32]* %t, i32 0, i32 9, !dbg !366
  %44 = load i32, i32* %arrayidx77, align 4, !dbg !366
  %45 = load i16*, i16** %r.addr, align 4, !dbg !367
  %arrayidx78 = getelementptr inbounds i16, i16* %45, i32 9, !dbg !367
  %46 = load i16, i16* %arrayidx78, align 2, !dbg !367
  %conv79 = sext i16 %46 to i32, !dbg !367
  %mul80 = mul nsw i32 %44, %conv79, !dbg !368
  %47 = load i16, i16* %n, align 2, !dbg !369
  %conv81 = sext i16 %47 to i32, !dbg !369
  %shr82 = ashr i32 %mul80, %conv81, !dbg !370
  %conv83 = trunc i32 %shr82 to i16, !dbg !371
  %conv84 = sext i16 %conv83 to i32, !dbg !371
  %add85 = add nsw i32 %43, %conv84, !dbg !372
  %conv86 = trunc i32 %add85 to i16, !dbg !365
  %48 = load i16*, i16** %d.addr, align 4, !dbg !373
  %49 = load i16, i16* %k, align 2, !dbg !374
  %conv87 = sext i16 %49 to i32, !dbg !374
  %mul88 = mul nsw i32 2, %conv87, !dbg !375
  %arrayidx89 = getelementptr inbounds i16, i16* %48, i32 %mul88, !dbg !373
  store i16 %conv86, i16* %arrayidx89, align 2, !dbg !376
  %arrayidx90 = getelementptr inbounds [12 x i32], [12 x i32]* %t, i32 0, i32 8, !dbg !377
  %50 = load i32, i32* %arrayidx90, align 4, !dbg !377
  %arrayidx91 = getelementptr inbounds [12 x i32], [12 x i32]* %t, i32 0, i32 11, !dbg !378
  %51 = load i32, i32* %arrayidx91, align 4, !dbg !378
  %52 = load i16*, i16** %r.addr, align 4, !dbg !379
  %arrayidx92 = getelementptr inbounds i16, i16* %52, i32 11, !dbg !379
  %53 = load i16, i16* %arrayidx92, align 2, !dbg !379
  %conv93 = sext i16 %53 to i32, !dbg !379
  %mul94 = mul nsw i32 %51, %conv93, !dbg !380
  %54 = load i16, i16* %n, align 2, !dbg !381
  %conv95 = sext i16 %54 to i32, !dbg !381
  %shr96 = ashr i32 %mul94, %conv95, !dbg !382
  %conv97 = trunc i32 %shr96 to i16, !dbg !383
  %conv98 = sext i16 %conv97 to i32, !dbg !383
  %add99 = add nsw i32 %50, %conv98, !dbg !384
  %conv100 = trunc i32 %add99 to i16, !dbg !377
  %55 = load i16*, i16** %d.addr, align 4, !dbg !385
  %56 = load i16, i16* %k, align 2, !dbg !386
  %conv101 = sext i16 %56 to i32, !dbg !386
  %mul102 = mul nsw i32 6, %conv101, !dbg !387
  %arrayidx103 = getelementptr inbounds i16, i16* %55, i32 %mul102, !dbg !385
  store i16 %conv100, i16* %arrayidx103, align 2, !dbg !388
  %arrayidx104 = getelementptr inbounds [12 x i32], [12 x i32]* %t, i32 0, i32 4, !dbg !389
  %57 = load i32, i32* %arrayidx104, align 4, !dbg !389
  %arrayidx105 = getelementptr inbounds [12 x i32], [12 x i32]* %t, i32 0, i32 7, !dbg !390
  %58 = load i32, i32* %arrayidx105, align 4, !dbg !390
  %add106 = add nsw i32 %57, %58, !dbg !391
  %conv107 = trunc i32 %add106 to i16, !dbg !392
  %conv108 = sext i16 %conv107 to i32, !dbg !392
  %59 = load i16*, i16** %r.addr, align 4, !dbg !393
  %arrayidx109 = getelementptr inbounds i16, i16* %59, i32 2, !dbg !393
  %60 = load i16, i16* %arrayidx109, align 2, !dbg !393
  %conv110 = sext i16 %60 to i32, !dbg !393
  %mul111 = mul nsw i32 %conv108, %conv110, !dbg !394
  %arrayidx112 = getelementptr inbounds [12 x i32], [12 x i32]* %t, i32 0, i32 0, !dbg !395
  store i32 %mul111, i32* %arrayidx112, align 4, !dbg !396
  %arrayidx113 = getelementptr inbounds [12 x i32], [12 x i32]* %t, i32 0, i32 5, !dbg !397
  %61 = load i32, i32* %arrayidx113, align 4, !dbg !397
  %arrayidx114 = getelementptr inbounds [12 x i32], [12 x i32]* %t, i32 0, i32 6, !dbg !398
  %62 = load i32, i32* %arrayidx114, align 4, !dbg !398
  %add115 = add nsw i32 %61, %62, !dbg !399
  %conv116 = trunc i32 %add115 to i16, !dbg !400
  %conv117 = sext i16 %conv116 to i32, !dbg !400
  %63 = load i16*, i16** %r.addr, align 4, !dbg !401
  %arrayidx118 = getelementptr inbounds i16, i16* %63, i32 0, !dbg !401
  %64 = load i16, i16* %arrayidx118, align 2, !dbg !401
  %conv119 = sext i16 %64 to i32, !dbg !401
  %mul120 = mul nsw i32 %conv117, %conv119, !dbg !402
  %arrayidx121 = getelementptr inbounds [12 x i32], [12 x i32]* %t, i32 0, i32 1, !dbg !403
  store i32 %mul120, i32* %arrayidx121, align 4, !dbg !404
  %arrayidx122 = getelementptr inbounds [12 x i32], [12 x i32]* %t, i32 0, i32 4, !dbg !405
  %65 = load i32, i32* %arrayidx122, align 4, !dbg !405
  %arrayidx123 = getelementptr inbounds [12 x i32], [12 x i32]* %t, i32 0, i32 6, !dbg !406
  %66 = load i32, i32* %arrayidx123, align 4, !dbg !406
  %add124 = add nsw i32 %65, %66, !dbg !407
  %arrayidx125 = getelementptr inbounds [12 x i32], [12 x i32]* %t, i32 0, i32 2, !dbg !408
  store i32 %add124, i32* %arrayidx125, align 4, !dbg !409
  %arrayidx126 = getelementptr inbounds [12 x i32], [12 x i32]* %t, i32 0, i32 5, !dbg !410
  %67 = load i32, i32* %arrayidx126, align 4, !dbg !410
  %arrayidx127 = getelementptr inbounds [12 x i32], [12 x i32]* %t, i32 0, i32 7, !dbg !411
  %68 = load i32, i32* %arrayidx127, align 4, !dbg !411
  %add128 = add nsw i32 %67, %68, !dbg !412
  %arrayidx129 = getelementptr inbounds [12 x i32], [12 x i32]* %t, i32 0, i32 3, !dbg !413
  store i32 %add128, i32* %arrayidx129, align 4, !dbg !414
  %arrayidx130 = getelementptr inbounds [12 x i32], [12 x i32]* %t, i32 0, i32 2, !dbg !415
  %69 = load i32, i32* %arrayidx130, align 4, !dbg !415
  %arrayidx131 = getelementptr inbounds [12 x i32], [12 x i32]* %t, i32 0, i32 3, !dbg !416
  %70 = load i32, i32* %arrayidx131, align 4, !dbg !416
  %add132 = add nsw i32 %69, %70, !dbg !417
  %conv133 = trunc i32 %add132 to i16, !dbg !418
  %conv134 = sext i16 %conv133 to i32, !dbg !418
  %71 = load i16*, i16** %r.addr, align 4, !dbg !419
  %arrayidx135 = getelementptr inbounds i16, i16* %71, i32 8, !dbg !419
  %72 = load i16, i16* %arrayidx135, align 2, !dbg !419
  %conv136 = sext i16 %72 to i32, !dbg !419
  %mul137 = mul nsw i32 %conv134, %conv136, !dbg !420
  %arrayidx138 = getelementptr inbounds [12 x i32], [12 x i32]* %t, i32 0, i32 8, !dbg !421
  store i32 %mul137, i32* %arrayidx138, align 4, !dbg !422
  %arrayidx139 = getelementptr inbounds [12 x i32], [12 x i32]* %t, i32 0, i32 2, !dbg !423
  %73 = load i32, i32* %arrayidx139, align 4, !dbg !423
  %conv140 = trunc i32 %73 to i16, !dbg !424
  %conv141 = sext i16 %conv140 to i32, !dbg !424
  %74 = load i16*, i16** %r.addr, align 4, !dbg !425
  %arrayidx142 = getelementptr inbounds i16, i16* %74, i32 1, !dbg !425
  %75 = load i16, i16* %arrayidx142, align 2, !dbg !425
  %conv143 = sext i16 %75 to i32, !dbg !425
  %mul144 = mul nsw i32 %conv141, %conv143, !dbg !426
  %arrayidx145 = getelementptr inbounds [12 x i32], [12 x i32]* %t, i32 0, i32 8, !dbg !427
  %76 = load i32, i32* %arrayidx145, align 4, !dbg !427
  %add146 = add nsw i32 %mul144, %76, !dbg !428
  %arrayidx147 = getelementptr inbounds [12 x i32], [12 x i32]* %t, i32 0, i32 2, !dbg !429
  store i32 %add146, i32* %arrayidx147, align 4, !dbg !430
  %arrayidx148 = getelementptr inbounds [12 x i32], [12 x i32]* %t, i32 0, i32 3, !dbg !431
  %77 = load i32, i32* %arrayidx148, align 4, !dbg !431
  %conv149 = trunc i32 %77 to i16, !dbg !432
  %conv150 = sext i16 %conv149 to i32, !dbg !432
  %78 = load i16*, i16** %r.addr, align 4, !dbg !433
  %arrayidx151 = getelementptr inbounds i16, i16* %78, i32 3, !dbg !433
  %79 = load i16, i16* %arrayidx151, align 2, !dbg !433
  %conv152 = sext i16 %79 to i32, !dbg !433
  %mul153 = mul nsw i32 %conv150, %conv152, !dbg !434
  %arrayidx154 = getelementptr inbounds [12 x i32], [12 x i32]* %t, i32 0, i32 8, !dbg !435
  %80 = load i32, i32* %arrayidx154, align 4, !dbg !435
  %add155 = add nsw i32 %mul153, %80, !dbg !436
  %arrayidx156 = getelementptr inbounds [12 x i32], [12 x i32]* %t, i32 0, i32 3, !dbg !437
  store i32 %add155, i32* %arrayidx156, align 4, !dbg !438
  %arrayidx157 = getelementptr inbounds [12 x i32], [12 x i32]* %t, i32 0, i32 4, !dbg !439
  %81 = load i32, i32* %arrayidx157, align 4, !dbg !439
  %82 = load i16*, i16** %r.addr, align 4, !dbg !440
  %arrayidx158 = getelementptr inbounds i16, i16* %82, i32 4, !dbg !440
  %83 = load i16, i16* %arrayidx158, align 2, !dbg !440
  %conv159 = sext i16 %83 to i32, !dbg !440
  %mul160 = mul nsw i32 %81, %conv159, !dbg !441
  %arrayidx161 = getelementptr inbounds [12 x i32], [12 x i32]* %t, i32 0, i32 0, !dbg !442
  %84 = load i32, i32* %arrayidx161, align 4, !dbg !442
  %add162 = add nsw i32 %mul160, %84, !dbg !443
  %arrayidx163 = getelementptr inbounds [12 x i32], [12 x i32]* %t, i32 0, i32 2, !dbg !444
  %85 = load i32, i32* %arrayidx163, align 4, !dbg !444
  %add164 = add nsw i32 %add162, %85, !dbg !445
  %conv165 = trunc i32 %add164 to i16, !dbg !446
  %conv166 = sext i16 %conv165 to i32, !dbg !446
  %86 = load i16, i16* %n, align 2, !dbg !447
  %conv167 = sext i16 %86 to i32, !dbg !447
  %shr168 = ashr i32 %conv166, %conv167, !dbg !448
  %conv169 = trunc i32 %shr168 to i16, !dbg !446
  %87 = load i16*, i16** %d.addr, align 4, !dbg !449
  %88 = load i16, i16* %k, align 2, !dbg !450
  %conv170 = sext i16 %88 to i32, !dbg !450
  %mul171 = mul nsw i32 7, %conv170, !dbg !451
  %arrayidx172 = getelementptr inbounds i16, i16* %87, i32 %mul171, !dbg !449
  store i16 %conv169, i16* %arrayidx172, align 2, !dbg !452
  %arrayidx173 = getelementptr inbounds [12 x i32], [12 x i32]* %t, i32 0, i32 5, !dbg !453
  %89 = load i32, i32* %arrayidx173, align 4, !dbg !453
  %90 = load i16*, i16** %r.addr, align 4, !dbg !454
  %arrayidx174 = getelementptr inbounds i16, i16* %90, i32 6, !dbg !454
  %91 = load i16, i16* %arrayidx174, align 2, !dbg !454
  %conv175 = sext i16 %91 to i32, !dbg !454
  %mul176 = mul nsw i32 %89, %conv175, !dbg !455
  %arrayidx177 = getelementptr inbounds [12 x i32], [12 x i32]* %t, i32 0, i32 1, !dbg !456
  %92 = load i32, i32* %arrayidx177, align 4, !dbg !456
  %add178 = add nsw i32 %mul176, %92, !dbg !457
  %arrayidx179 = getelementptr inbounds [12 x i32], [12 x i32]* %t, i32 0, i32 3, !dbg !458
  %93 = load i32, i32* %arrayidx179, align 4, !dbg !458
  %add180 = add nsw i32 %add178, %93, !dbg !459
  %conv181 = trunc i32 %add180 to i16, !dbg !460
  %conv182 = sext i16 %conv181 to i32, !dbg !460
  %94 = load i16, i16* %n, align 2, !dbg !461
  %conv183 = sext i16 %94 to i32, !dbg !461
  %shr184 = ashr i32 %conv182, %conv183, !dbg !462
  %conv185 = trunc i32 %shr184 to i16, !dbg !460
  %95 = load i16*, i16** %d.addr, align 4, !dbg !463
  %96 = load i16, i16* %k, align 2, !dbg !464
  %conv186 = sext i16 %96 to i32, !dbg !464
  %mul187 = mul nsw i32 5, %conv186, !dbg !465
  %arrayidx188 = getelementptr inbounds i16, i16* %95, i32 %mul187, !dbg !463
  store i16 %conv185, i16* %arrayidx188, align 2, !dbg !466
  %arrayidx189 = getelementptr inbounds [12 x i32], [12 x i32]* %t, i32 0, i32 6, !dbg !467
  %97 = load i32, i32* %arrayidx189, align 4, !dbg !467
  %98 = load i16*, i16** %r.addr, align 4, !dbg !468
  %arrayidx190 = getelementptr inbounds i16, i16* %98, i32 5, !dbg !468
  %99 = load i16, i16* %arrayidx190, align 2, !dbg !468
  %conv191 = sext i16 %99 to i32, !dbg !468
  %mul192 = mul nsw i32 %97, %conv191, !dbg !469
  %arrayidx193 = getelementptr inbounds [12 x i32], [12 x i32]* %t, i32 0, i32 1, !dbg !470
  %100 = load i32, i32* %arrayidx193, align 4, !dbg !470
  %add194 = add nsw i32 %mul192, %100, !dbg !471
  %arrayidx195 = getelementptr inbounds [12 x i32], [12 x i32]* %t, i32 0, i32 2, !dbg !472
  %101 = load i32, i32* %arrayidx195, align 4, !dbg !472
  %add196 = add nsw i32 %add194, %101, !dbg !473
  %conv197 = trunc i32 %add196 to i16, !dbg !474
  %conv198 = sext i16 %conv197 to i32, !dbg !474
  %102 = load i16, i16* %n, align 2, !dbg !475
  %conv199 = sext i16 %102 to i32, !dbg !475
  %shr200 = ashr i32 %conv198, %conv199, !dbg !476
  %conv201 = trunc i32 %shr200 to i16, !dbg !474
  %103 = load i16*, i16** %d.addr, align 4, !dbg !477
  %104 = load i16, i16* %k, align 2, !dbg !478
  %conv202 = sext i16 %104 to i32, !dbg !478
  %mul203 = mul nsw i32 3, %conv202, !dbg !479
  %arrayidx204 = getelementptr inbounds i16, i16* %103, i32 %mul203, !dbg !477
  store i16 %conv201, i16* %arrayidx204, align 2, !dbg !480
  %arrayidx205 = getelementptr inbounds [12 x i32], [12 x i32]* %t, i32 0, i32 7, !dbg !481
  %105 = load i32, i32* %arrayidx205, align 4, !dbg !481
  %106 = load i16*, i16** %r.addr, align 4, !dbg !482
  %arrayidx206 = getelementptr inbounds i16, i16* %106, i32 7, !dbg !482
  %107 = load i16, i16* %arrayidx206, align 2, !dbg !482
  %conv207 = sext i16 %107 to i32, !dbg !482
  %mul208 = mul nsw i32 %105, %conv207, !dbg !483
  %arrayidx209 = getelementptr inbounds [12 x i32], [12 x i32]* %t, i32 0, i32 0, !dbg !484
  %108 = load i32, i32* %arrayidx209, align 4, !dbg !484
  %add210 = add nsw i32 %mul208, %108, !dbg !485
  %arrayidx211 = getelementptr inbounds [12 x i32], [12 x i32]* %t, i32 0, i32 3, !dbg !486
  %109 = load i32, i32* %arrayidx211, align 4, !dbg !486
  %add212 = add nsw i32 %add210, %109, !dbg !487
  %conv213 = trunc i32 %add212 to i16, !dbg !488
  %conv214 = sext i16 %conv213 to i32, !dbg !488
  %110 = load i16, i16* %n, align 2, !dbg !489
  %conv215 = sext i16 %110 to i32, !dbg !489
  %shr216 = ashr i32 %conv214, %conv215, !dbg !490
  %conv217 = trunc i32 %shr216 to i16, !dbg !488
  %111 = load i16*, i16** %d.addr, align 4, !dbg !491
  %112 = load i16, i16* %k, align 2, !dbg !492
  %conv218 = sext i16 %112 to i32, !dbg !492
  %mul219 = mul nsw i32 1, %conv218, !dbg !493
  %arrayidx220 = getelementptr inbounds i16, i16* %111, i32 %mul219, !dbg !491
  store i16 %conv217, i16* %arrayidx220, align 2, !dbg !494
  br label %for.inc221, !dbg !495

for.inc221:                                       ; preds = %for.end
  %113 = load i16, i16* %i, align 2, !dbg !496
  %inc222 = add i16 %113, 1, !dbg !496
  store i16 %inc222, i16* %i, align 2, !dbg !496
  %114 = load i16, i16* %p, align 2, !dbg !497
  %conv223 = sext i16 %114 to i32, !dbg !497
  %115 = load i16*, i16** %d.addr, align 4, !dbg !498
  %add.ptr = getelementptr inbounds i16, i16* %115, i32 %conv223, !dbg !498
  store i16* %add.ptr, i16** %d.addr, align 4, !dbg !498
  br label %for.cond2, !dbg !283, !llvm.loop !499

for.end224:                                       ; preds = %for.cond2
  br label %for.inc225, !dbg !500

for.inc225:                                       ; preds = %for.end224
  %116 = load i16, i16* %k, align 2, !dbg !501
  %conv226 = sext i16 %116 to i32, !dbg !501
  %add227 = add nsw i32 %conv226, 7, !dbg !501
  %conv228 = trunc i32 %add227 to i16, !dbg !501
  store i16 %conv228, i16* %k, align 2, !dbg !501
  %117 = load i16, i16* %m, align 2, !dbg !502
  %conv229 = sext i16 %117 to i32, !dbg !502
  %add230 = add nsw i32 %conv229, 3, !dbg !502
  %conv231 = trunc i32 %add230 to i16, !dbg !502
  store i16 %conv231, i16* %m, align 2, !dbg !502
  %118 = load i16, i16* %n, align 2, !dbg !503
  %conv232 = sext i16 %118 to i32, !dbg !503
  %add233 = add nsw i32 %conv232, 3, !dbg !503
  %conv234 = trunc i32 %add233 to i16, !dbg !503
  store i16 %conv234, i16* %n, align 2, !dbg !503
  %119 = load i16, i16* %p, align 2, !dbg !504
  %conv235 = sext i16 %119 to i32, !dbg !504
  %sub236 = sub nsw i32 %conv235, 7, !dbg !504
  %conv237 = trunc i32 %sub236 to i16, !dbg !504
  store i16 %conv237, i16* %p, align 2, !dbg !504
  %120 = load i16*, i16** %d.addr, align 4, !dbg !505
  %add.ptr238 = getelementptr inbounds i16, i16* %120, i32 -64, !dbg !505
  store i16* %add.ptr238, i16** %d.addr, align 4, !dbg !505
  br label %for.cond, !dbg !278, !llvm.loop !506

for.end239:                                       ; preds = %for.cond
  ret void, !dbg !507
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @edn() #0 !dbg !508 {
entry:
  %a = alloca [200 x i16], align 2
  %b = alloca [200 x i16], align 2
  %c = alloca i16, align 2
  %output = alloca [200 x i32], align 4
  %d = alloca i32, align 4
  %e = alloca [1 x i32], align 4
  %0 = bitcast [200 x i16]* %a to i8*, !dbg !509
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 2 %0, i8* align 2 bitcast ([200 x i16]* @__const.edn.a to i8*), i32 400, i1 false), !dbg !509
  %1 = bitcast [200 x i16]* %b to i8*, !dbg !510
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 2 %1, i8* align 2 bitcast ([200 x i16]* @__const.edn.b to i8*), i32 400, i1 false), !dbg !510
  store i16 3, i16* %c, align 2, !dbg !511
  store i32 43690, i32* %d, align 4, !dbg !512
  %2 = bitcast [1 x i32]* %e to i8*, !dbg !513
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 4 %2, i8* align 4 bitcast ([1 x i32]* @__const.edn.e to i8*), i32 4, i1 false), !dbg !513
  %arraydecay = getelementptr inbounds [200 x i16], [200 x i16]* %a, i32 0, i32 0, !dbg !514
  %arraydecay1 = getelementptr inbounds [200 x i16], [200 x i16]* %b, i32 0, i32 0, !dbg !515
  %3 = load i16, i16* %c, align 2, !dbg !516
  call arm_aapcs_vfpcc void @vec_mpy1(i16* noundef %arraydecay, i16* noundef %arraydecay1, i16 noundef signext %3) #2, !dbg !517
  %arraydecay2 = getelementptr inbounds [200 x i16], [200 x i16]* %a, i32 0, i32 0, !dbg !518
  %arraydecay3 = getelementptr inbounds [200 x i16], [200 x i16]* %b, i32 0, i32 0, !dbg !519
  %4 = load i16, i16* %c, align 2, !dbg !520
  %conv = sext i16 %4 to i32, !dbg !521
  %arraydecay4 = getelementptr inbounds [200 x i32], [200 x i32]* %output, i32 0, i32 0, !dbg !522
  %call = call arm_aapcs_vfpcc i32 @mac(i16* noundef %arraydecay2, i16* noundef %arraydecay3, i32 noundef %conv, i32* noundef %arraydecay4) #2, !dbg !523
  %conv5 = trunc i32 %call to i16, !dbg !523
  store i16 %conv5, i16* %c, align 2, !dbg !524
  %arraydecay6 = getelementptr inbounds [200 x i16], [200 x i16]* %a, i32 0, i32 0, !dbg !525
  %arraydecay7 = getelementptr inbounds [200 x i16], [200 x i16]* %b, i32 0, i32 0, !dbg !526
  %arraydecay8 = getelementptr inbounds [200 x i32], [200 x i32]* %output, i32 0, i32 0, !dbg !527
  call arm_aapcs_vfpcc void @fir(i16* noundef %arraydecay6, i16* noundef %arraydecay7, i32* noundef %arraydecay8) #2, !dbg !528
  %arraydecay9 = getelementptr inbounds [200 x i16], [200 x i16]* %a, i32 0, i32 0, !dbg !529
  %arraydecay10 = getelementptr inbounds [200 x i16], [200 x i16]* %b, i32 0, i32 0, !dbg !530
  %arraydecay11 = getelementptr inbounds [200 x i32], [200 x i32]* %output, i32 0, i32 0, !dbg !531
  call arm_aapcs_vfpcc void @fir_no_red_ld(i16* noundef %arraydecay9, i16* noundef %arraydecay10, i32* noundef %arraydecay11) #2, !dbg !532
  %arraydecay12 = getelementptr inbounds [200 x i16], [200 x i16]* %a, i32 0, i32 0, !dbg !533
  %arraydecay13 = getelementptr inbounds [200 x i16], [200 x i16]* %b, i32 0, i32 0, !dbg !534
  %5 = load i32, i32* %d, align 4, !dbg !535
  %call14 = call arm_aapcs_vfpcc i32 @latsynth(i16* noundef %arraydecay12, i16* noundef %arraydecay13, i32 noundef 100, i32 noundef %5) #2, !dbg !536
  store i32 %call14, i32* %d, align 4, !dbg !537
  %arraydecay15 = getelementptr inbounds [200 x i16], [200 x i16]* %a, i32 0, i32 0, !dbg !538
  %arraydecay16 = getelementptr inbounds [200 x i16], [200 x i16]* %b, i32 0, i32 0, !dbg !539
  %arrayidx = getelementptr inbounds [200 x i32], [200 x i32]* %output, i32 0, i32 100, !dbg !540
  %arraydecay17 = getelementptr inbounds [200 x i32], [200 x i32]* %output, i32 0, i32 0, !dbg !541
  call arm_aapcs_vfpcc void @iir1(i16* noundef %arraydecay15, i16* noundef %arraydecay16, i32* noundef %arrayidx, i32* noundef %arraydecay17) #2, !dbg !542
  %6 = load i32, i32* %d, align 4, !dbg !543
  %arrayidx18 = getelementptr inbounds [1 x i32], [1 x i32]* %e, i32 0, i32 0, !dbg !544
  %7 = load i32, i32* %arrayidx18, align 4, !dbg !544
  %8 = load i32, i32* %d, align 4, !dbg !545
  %arraydecay19 = getelementptr inbounds [200 x i16], [200 x i16]* %a, i32 0, i32 0, !dbg !546
  %9 = load i16, i16* %c, align 2, !dbg !547
  %call20 = call arm_aapcs_vfpcc i32 @codebook(i32 noundef %6, i32 noundef 1, i32 noundef 17, i32 noundef %7, i32 noundef %8, i16* noundef %arraydecay19, i16 noundef signext %9, i16 noundef signext 1) #2, !dbg !548
  %arrayidx21 = getelementptr inbounds [1 x i32], [1 x i32]* %e, i32 0, i32 0, !dbg !549
  store i32 %call20, i32* %arrayidx21, align 4, !dbg !550
  %arraydecay22 = getelementptr inbounds [200 x i16], [200 x i16]* %a, i32 0, i32 0, !dbg !551
  %arraydecay23 = getelementptr inbounds [200 x i16], [200 x i16]* %b, i32 0, i32 0, !dbg !552
  call arm_aapcs_vfpcc void @jpegdct(i16* noundef %arraydecay22, i16* noundef %arraydecay23) #2, !dbg !553
  ret i32 0, !dbg !554
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i32, i1 immarg) #1

attributes #0 = { noinline nounwind "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { nobuiltin "no-builtins" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 14.0.6 (git@github.com:RTS-SYSU/LLVM-TA.git b7f9c4ccdebc6c37532ddd772889e5f0ff989c79)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/workspaces/llvmta/testcases/wcet_bench/edn.c", directory: "/workspaces/llvmta/testcases/util_scripts", checksumkind: CSK_MD5, checksum: "08beb32f1e14d165e25f2deaee06b4af")
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
!12 = distinct !DISubprogram(name: "vec_mpy1", scope: !13, file: !13, line: 31, type: !14, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!13 = !DIFile(filename: "wcet_bench/edn.c", directory: "/workspaces/llvmta/testcases", checksumkind: CSK_MD5, checksum: "08beb32f1e14d165e25f2deaee06b4af")
!14 = !DISubroutineType(types: !15)
!15 = !{}
!16 = !DILocation(line: 35, column: 9, scope: !12)
!17 = !DILocation(line: 35, column: 7, scope: !12)
!18 = !DILocation(line: 35, column: 14, scope: !12)
!19 = !DILocation(line: 35, column: 16, scope: !12)
!20 = !DILocation(line: 35, column: 2, scope: !12)
!21 = !DILocation(line: 36, column: 13, scope: !12)
!22 = !DILocation(line: 36, column: 22, scope: !12)
!23 = !DILocation(line: 36, column: 24, scope: !12)
!24 = !DILocation(line: 36, column: 20, scope: !12)
!25 = !DILocation(line: 36, column: 28, scope: !12)
!26 = !DILocation(line: 36, column: 3, scope: !12)
!27 = !DILocation(line: 36, column: 5, scope: !12)
!28 = !DILocation(line: 36, column: 8, scope: !12)
!29 = !DILocation(line: 35, column: 24, scope: !12)
!30 = distinct !{!30, !20, !31, !32}
!31 = !DILocation(line: 36, column: 33, scope: !12)
!32 = !{!"llvm.loop.mustprogress"}
!33 = !DILocation(line: 37, column: 1, scope: !12)
!34 = distinct !DISubprogram(name: "mac", scope: !13, file: !13, line: 44, type: !14, scopeLine: 45, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!35 = !DILocation(line: 47, column: 26, scope: !34)
!36 = !DILocation(line: 47, column: 25, scope: !34)
!37 = !DILocation(line: 47, column: 18, scope: !34)
!38 = !DILocation(line: 49, column: 9, scope: !34)
!39 = !DILocation(line: 49, column: 7, scope: !34)
!40 = !DILocation(line: 49, column: 14, scope: !34)
!41 = !DILocation(line: 49, column: 16, scope: !34)
!42 = !DILocation(line: 49, column: 2, scope: !34)
!43 = !DILocation(line: 50, column: 11, scope: !34)
!44 = !DILocation(line: 50, column: 13, scope: !34)
!45 = !DILocation(line: 50, column: 18, scope: !34)
!46 = !DILocation(line: 50, column: 20, scope: !34)
!47 = !DILocation(line: 50, column: 16, scope: !34)
!48 = !DILocation(line: 50, column: 8, scope: !34)
!49 = !DILocation(line: 51, column: 10, scope: !34)
!50 = !DILocation(line: 51, column: 12, scope: !34)
!51 = !DILocation(line: 51, column: 17, scope: !34)
!52 = !DILocation(line: 51, column: 19, scope: !34)
!53 = !DILocation(line: 51, column: 15, scope: !34)
!54 = !DILocation(line: 51, column: 7, scope: !34)
!55 = !DILocation(line: 52, column: 2, scope: !34)
!56 = !DILocation(line: 49, column: 24, scope: !34)
!57 = distinct !{!57, !42, !55, !32}
!58 = !DILocation(line: 54, column: 9, scope: !34)
!59 = !DILocation(line: 54, column: 3, scope: !34)
!60 = !DILocation(line: 54, column: 7, scope: !34)
!61 = !DILocation(line: 55, column: 9, scope: !34)
!62 = !DILocation(line: 55, column: 2, scope: !34)
!63 = distinct !DISubprogram(name: "fir", scope: !13, file: !13, line: 63, type: !14, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!64 = !DILocation(line: 67, column: 9, scope: !63)
!65 = !DILocation(line: 67, column: 7, scope: !63)
!66 = !DILocation(line: 67, column: 14, scope: !63)
!67 = !DILocation(line: 67, column: 16, scope: !63)
!68 = !DILocation(line: 67, column: 2, scope: !63)
!69 = !DILocation(line: 68, column: 7, scope: !63)
!70 = !DILocation(line: 69, column: 10, scope: !63)
!71 = !DILocation(line: 69, column: 8, scope: !63)
!72 = !DILocation(line: 69, column: 15, scope: !63)
!73 = !DILocation(line: 69, column: 17, scope: !63)
!74 = !DILocation(line: 69, column: 3, scope: !63)
!75 = !DILocation(line: 70, column: 11, scope: !63)
!76 = !DILocation(line: 70, column: 18, scope: !63)
!77 = !DILocation(line: 70, column: 22, scope: !63)
!78 = !DILocation(line: 70, column: 20, scope: !63)
!79 = !DILocation(line: 70, column: 27, scope: !63)
!80 = !DILocation(line: 70, column: 33, scope: !63)
!81 = !DILocation(line: 70, column: 25, scope: !63)
!82 = !DILocation(line: 70, column: 8, scope: !63)
!83 = !DILocation(line: 71, column: 3, scope: !63)
!84 = !DILocation(line: 69, column: 27, scope: !63)
!85 = distinct !{!85, !74, !83, !32}
!86 = !DILocation(line: 72, column: 15, scope: !63)
!87 = !DILocation(line: 72, column: 19, scope: !63)
!88 = !DILocation(line: 72, column: 3, scope: !63)
!89 = !DILocation(line: 72, column: 10, scope: !63)
!90 = !DILocation(line: 72, column: 13, scope: !63)
!91 = !DILocation(line: 73, column: 2, scope: !63)
!92 = !DILocation(line: 67, column: 30, scope: !63)
!93 = distinct !{!93, !68, !91, !32}
!94 = !DILocation(line: 74, column: 1, scope: !63)
!95 = distinct !DISubprogram(name: "fir_no_red_ld", scope: !13, file: !13, line: 84, type: !14, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!96 = !DILocation(line: 89, column: 9, scope: !95)
!97 = !DILocation(line: 89, column: 7, scope: !95)
!98 = !DILocation(line: 89, column: 14, scope: !95)
!99 = !DILocation(line: 89, column: 16, scope: !95)
!100 = !DILocation(line: 89, column: 2, scope: !95)
!101 = !DILocation(line: 90, column: 8, scope: !95)
!102 = !DILocation(line: 91, column: 8, scope: !95)
!103 = !DILocation(line: 92, column: 8, scope: !95)
!104 = !DILocation(line: 92, column: 10, scope: !95)
!105 = !DILocation(line: 92, column: 6, scope: !95)
!106 = !DILocation(line: 93, column: 10, scope: !95)
!107 = !DILocation(line: 93, column: 8, scope: !95)
!108 = !DILocation(line: 93, column: 15, scope: !95)
!109 = !DILocation(line: 93, column: 17, scope: !95)
!110 = !DILocation(line: 93, column: 3, scope: !95)
!111 = !DILocation(line: 94, column: 9, scope: !95)
!112 = !DILocation(line: 94, column: 11, scope: !95)
!113 = !DILocation(line: 94, column: 15, scope: !95)
!114 = !DILocation(line: 94, column: 13, scope: !95)
!115 = !DILocation(line: 94, column: 17, scope: !95)
!116 = !DILocation(line: 94, column: 7, scope: !95)
!117 = !DILocation(line: 95, column: 9, scope: !95)
!118 = !DILocation(line: 95, column: 11, scope: !95)
!119 = !DILocation(line: 95, column: 7, scope: !95)
!120 = !DILocation(line: 96, column: 12, scope: !95)
!121 = !DILocation(line: 96, column: 17, scope: !95)
!122 = !DILocation(line: 96, column: 15, scope: !95)
!123 = !DILocation(line: 96, column: 9, scope: !95)
!124 = !DILocation(line: 97, column: 12, scope: !95)
!125 = !DILocation(line: 97, column: 17, scope: !95)
!126 = !DILocation(line: 97, column: 15, scope: !95)
!127 = !DILocation(line: 97, column: 9, scope: !95)
!128 = !DILocation(line: 98, column: 9, scope: !95)
!129 = !DILocation(line: 98, column: 11, scope: !95)
!130 = !DILocation(line: 98, column: 15, scope: !95)
!131 = !DILocation(line: 98, column: 13, scope: !95)
!132 = !DILocation(line: 98, column: 17, scope: !95)
!133 = !DILocation(line: 98, column: 7, scope: !95)
!134 = !DILocation(line: 99, column: 9, scope: !95)
!135 = !DILocation(line: 99, column: 11, scope: !95)
!136 = !DILocation(line: 99, column: 13, scope: !95)
!137 = !DILocation(line: 99, column: 7, scope: !95)
!138 = !DILocation(line: 100, column: 12, scope: !95)
!139 = !DILocation(line: 100, column: 17, scope: !95)
!140 = !DILocation(line: 100, column: 15, scope: !95)
!141 = !DILocation(line: 100, column: 9, scope: !95)
!142 = !DILocation(line: 101, column: 12, scope: !95)
!143 = !DILocation(line: 101, column: 17, scope: !95)
!144 = !DILocation(line: 101, column: 15, scope: !95)
!145 = !DILocation(line: 101, column: 9, scope: !95)
!146 = !DILocation(line: 102, column: 3, scope: !95)
!147 = !DILocation(line: 93, column: 25, scope: !95)
!148 = distinct !{!148, !110, !146, !32}
!149 = !DILocation(line: 103, column: 10, scope: !95)
!150 = !DILocation(line: 103, column: 15, scope: !95)
!151 = !DILocation(line: 103, column: 3, scope: !95)
!152 = !DILocation(line: 103, column: 5, scope: !95)
!153 = !DILocation(line: 103, column: 8, scope: !95)
!154 = !DILocation(line: 104, column: 14, scope: !95)
!155 = !DILocation(line: 104, column: 19, scope: !95)
!156 = !DILocation(line: 104, column: 3, scope: !95)
!157 = !DILocation(line: 104, column: 5, scope: !95)
!158 = !DILocation(line: 104, column: 7, scope: !95)
!159 = !DILocation(line: 104, column: 12, scope: !95)
!160 = !DILocation(line: 105, column: 2, scope: !95)
!161 = !DILocation(line: 89, column: 25, scope: !95)
!162 = distinct !{!162, !100, !160, !32}
!163 = !DILocation(line: 106, column: 1, scope: !95)
!164 = distinct !DISubprogram(name: "latsynth", scope: !13, file: !13, line: 112, type: !14, scopeLine: 113, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!165 = !DILocation(line: 116, column: 7, scope: !164)
!166 = !DILocation(line: 116, column: 9, scope: !164)
!167 = !DILocation(line: 116, column: 11, scope: !164)
!168 = !DILocation(line: 116, column: 18, scope: !164)
!169 = !DILocation(line: 116, column: 20, scope: !164)
!170 = !DILocation(line: 116, column: 22, scope: !164)
!171 = !DILocation(line: 116, column: 16, scope: !164)
!172 = !DILocation(line: 116, column: 4, scope: !164)
!173 = !DILocation(line: 117, column: 11, scope: !164)
!174 = !DILocation(line: 117, column: 13, scope: !164)
!175 = !DILocation(line: 117, column: 9, scope: !164)
!176 = !DILocation(line: 117, column: 7, scope: !164)
!177 = !DILocation(line: 117, column: 18, scope: !164)
!178 = !DILocation(line: 117, column: 20, scope: !164)
!179 = !DILocation(line: 117, column: 2, scope: !164)
!180 = !DILocation(line: 118, column: 8, scope: !164)
!181 = !DILocation(line: 118, column: 10, scope: !164)
!182 = !DILocation(line: 118, column: 15, scope: !164)
!183 = !DILocation(line: 118, column: 17, scope: !164)
!184 = !DILocation(line: 118, column: 13, scope: !164)
!185 = !DILocation(line: 118, column: 5, scope: !164)
!186 = !DILocation(line: 119, column: 14, scope: !164)
!187 = !DILocation(line: 119, column: 16, scope: !164)
!188 = !DILocation(line: 119, column: 23, scope: !164)
!189 = !DILocation(line: 119, column: 25, scope: !164)
!190 = !DILocation(line: 119, column: 31, scope: !164)
!191 = !DILocation(line: 119, column: 33, scope: !164)
!192 = !DILocation(line: 119, column: 28, scope: !164)
!193 = !DILocation(line: 119, column: 41, scope: !164)
!194 = !DILocation(line: 119, column: 19, scope: !164)
!195 = !DILocation(line: 119, column: 3, scope: !164)
!196 = !DILocation(line: 119, column: 5, scope: !164)
!197 = !DILocation(line: 119, column: 7, scope: !164)
!198 = !DILocation(line: 119, column: 12, scope: !164)
!199 = !DILocation(line: 120, column: 2, scope: !164)
!200 = !DILocation(line: 117, column: 27, scope: !164)
!201 = distinct !{!201, !179, !199, !32}
!202 = !DILocation(line: 121, column: 9, scope: !164)
!203 = !DILocation(line: 121, column: 11, scope: !164)
!204 = !DILocation(line: 121, column: 2, scope: !164)
!205 = !DILocation(line: 121, column: 7, scope: !164)
!206 = !DILocation(line: 122, column: 9, scope: !164)
!207 = !DILocation(line: 122, column: 2, scope: !164)
!208 = distinct !DISubprogram(name: "iir1", scope: !13, file: !13, line: 129, type: !14, scopeLine: 130, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!209 = !DILocation(line: 135, column: 6, scope: !208)
!210 = !DILocation(line: 135, column: 4, scope: !208)
!211 = !DILocation(line: 136, column: 9, scope: !208)
!212 = !DILocation(line: 136, column: 7, scope: !208)
!213 = !DILocation(line: 136, column: 14, scope: !208)
!214 = !DILocation(line: 136, column: 16, scope: !208)
!215 = !DILocation(line: 136, column: 2, scope: !208)
!216 = !DILocation(line: 137, column: 7, scope: !208)
!217 = !DILocation(line: 137, column: 13, scope: !208)
!218 = !DILocation(line: 137, column: 24, scope: !208)
!219 = !DILocation(line: 137, column: 22, scope: !208)
!220 = !DILocation(line: 137, column: 35, scope: !208)
!221 = !DILocation(line: 137, column: 46, scope: !208)
!222 = !DILocation(line: 137, column: 44, scope: !208)
!223 = !DILocation(line: 137, column: 33, scope: !208)
!224 = !DILocation(line: 137, column: 56, scope: !208)
!225 = !DILocation(line: 137, column: 9, scope: !208)
!226 = !DILocation(line: 137, column: 5, scope: !208)
!227 = !DILocation(line: 138, column: 7, scope: !208)
!228 = !DILocation(line: 138, column: 13, scope: !208)
!229 = !DILocation(line: 138, column: 24, scope: !208)
!230 = !DILocation(line: 138, column: 22, scope: !208)
!231 = !DILocation(line: 138, column: 35, scope: !208)
!232 = !DILocation(line: 138, column: 46, scope: !208)
!233 = !DILocation(line: 138, column: 44, scope: !208)
!234 = !DILocation(line: 138, column: 33, scope: !208)
!235 = !DILocation(line: 138, column: 56, scope: !208)
!236 = !DILocation(line: 138, column: 9, scope: !208)
!237 = !DILocation(line: 138, column: 5, scope: !208)
!238 = !DILocation(line: 139, column: 14, scope: !208)
!239 = !DILocation(line: 139, column: 3, scope: !208)
!240 = !DILocation(line: 139, column: 12, scope: !208)
!241 = !DILocation(line: 140, column: 14, scope: !208)
!242 = !DILocation(line: 140, column: 3, scope: !208)
!243 = !DILocation(line: 140, column: 12, scope: !208)
!244 = !DILocation(line: 141, column: 9, scope: !208)
!245 = !DILocation(line: 142, column: 9, scope: !208)
!246 = !DILocation(line: 143, column: 2, scope: !208)
!247 = !DILocation(line: 136, column: 23, scope: !208)
!248 = distinct !{!248, !215, !246, !32}
!249 = !DILocation(line: 144, column: 12, scope: !208)
!250 = !DILocation(line: 144, column: 7, scope: !208)
!251 = !DILocation(line: 144, column: 10, scope: !208)
!252 = !DILocation(line: 145, column: 1, scope: !208)
!253 = distinct !DISubprogram(name: "codebook", scope: !13, file: !13, line: 151, type: !14, scopeLine: 157, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!254 = !DILocation(line: 161, column: 12, scope: !253)
!255 = !DILocation(line: 161, column: 17, scope: !253)
!256 = !DILocation(line: 161, column: 10, scope: !253)
!257 = !DILocation(line: 162, column: 11, scope: !253)
!258 = !DILocation(line: 162, column: 22, scope: !253)
!259 = !DILocation(line: 162, column: 9, scope: !253)
!260 = !DILocation(line: 162, column: 7, scope: !253)
!261 = !DILocation(line: 162, column: 27, scope: !253)
!262 = !DILocation(line: 162, column: 32, scope: !253)
!263 = !DILocation(line: 162, column: 29, scope: !253)
!264 = !DILocation(line: 162, column: 2, scope: !253)
!265 = !DILocation(line: 177, column: 2, scope: !253)
!266 = !DILocation(line: 162, column: 43, scope: !253)
!267 = distinct !{!267, !264, !265, !32}
!268 = !DILocation(line: 178, column: 9, scope: !253)
!269 = !DILocation(line: 178, column: 2, scope: !253)
!270 = distinct !DISubprogram(name: "jpegdct", scope: !13, file: !13, line: 186, type: !14, scopeLine: 187, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!271 = !DILocation(line: 190, column: 9, scope: !270)
!272 = !DILocation(line: 190, column: 16, scope: !270)
!273 = !DILocation(line: 190, column: 23, scope: !270)
!274 = !DILocation(line: 190, column: 31, scope: !270)
!275 = !DILocation(line: 190, column: 7, scope: !270)
!276 = !DILocation(line: 190, column: 36, scope: !270)
!277 = !DILocation(line: 190, column: 38, scope: !270)
!278 = !DILocation(line: 190, column: 2, scope: !270)
!279 = !DILocation(line: 191, column: 10, scope: !270)
!280 = !DILocation(line: 191, column: 8, scope: !270)
!281 = !DILocation(line: 191, column: 15, scope: !270)
!282 = !DILocation(line: 191, column: 17, scope: !270)
!283 = !DILocation(line: 191, column: 3, scope: !270)
!284 = !DILocation(line: 192, column: 11, scope: !270)
!285 = !DILocation(line: 192, column: 9, scope: !270)
!286 = !DILocation(line: 192, column: 16, scope: !270)
!287 = !DILocation(line: 192, column: 18, scope: !270)
!288 = !DILocation(line: 192, column: 4, scope: !270)
!289 = !DILocation(line: 193, column: 12, scope: !270)
!290 = !DILocation(line: 193, column: 14, scope: !270)
!291 = !DILocation(line: 193, column: 18, scope: !270)
!292 = !DILocation(line: 193, column: 16, scope: !270)
!293 = !DILocation(line: 193, column: 23, scope: !270)
!294 = !DILocation(line: 193, column: 25, scope: !270)
!295 = !DILocation(line: 193, column: 34, scope: !270)
!296 = !DILocation(line: 193, column: 32, scope: !270)
!297 = !DILocation(line: 193, column: 27, scope: !270)
!298 = !DILocation(line: 193, column: 21, scope: !270)
!299 = !DILocation(line: 193, column: 7, scope: !270)
!300 = !DILocation(line: 193, column: 5, scope: !270)
!301 = !DILocation(line: 193, column: 10, scope: !270)
!302 = !DILocation(line: 194, column: 16, scope: !270)
!303 = !DILocation(line: 194, column: 18, scope: !270)
!304 = !DILocation(line: 194, column: 22, scope: !270)
!305 = !DILocation(line: 194, column: 20, scope: !270)
!306 = !DILocation(line: 194, column: 27, scope: !270)
!307 = !DILocation(line: 194, column: 29, scope: !270)
!308 = !DILocation(line: 194, column: 38, scope: !270)
!309 = !DILocation(line: 194, column: 36, scope: !270)
!310 = !DILocation(line: 194, column: 31, scope: !270)
!311 = !DILocation(line: 194, column: 25, scope: !270)
!312 = !DILocation(line: 194, column: 11, scope: !270)
!313 = !DILocation(line: 194, column: 9, scope: !270)
!314 = !DILocation(line: 194, column: 5, scope: !270)
!315 = !DILocation(line: 194, column: 14, scope: !270)
!316 = !DILocation(line: 195, column: 4, scope: !270)
!317 = !DILocation(line: 192, column: 24, scope: !270)
!318 = distinct !{!318, !288, !316, !32}
!319 = !DILocation(line: 196, column: 11, scope: !270)
!320 = !DILocation(line: 196, column: 18, scope: !270)
!321 = !DILocation(line: 196, column: 16, scope: !270)
!322 = !DILocation(line: 196, column: 4, scope: !270)
!323 = !DILocation(line: 196, column: 9, scope: !270)
!324 = !DILocation(line: 197, column: 11, scope: !270)
!325 = !DILocation(line: 197, column: 18, scope: !270)
!326 = !DILocation(line: 197, column: 16, scope: !270)
!327 = !DILocation(line: 197, column: 4, scope: !270)
!328 = !DILocation(line: 197, column: 9, scope: !270)
!329 = !DILocation(line: 198, column: 12, scope: !270)
!330 = !DILocation(line: 198, column: 19, scope: !270)
!331 = !DILocation(line: 198, column: 17, scope: !270)
!332 = !DILocation(line: 198, column: 4, scope: !270)
!333 = !DILocation(line: 198, column: 10, scope: !270)
!334 = !DILocation(line: 199, column: 12, scope: !270)
!335 = !DILocation(line: 199, column: 19, scope: !270)
!336 = !DILocation(line: 199, column: 17, scope: !270)
!337 = !DILocation(line: 199, column: 4, scope: !270)
!338 = !DILocation(line: 199, column: 10, scope: !270)
!339 = !DILocation(line: 200, column: 12, scope: !270)
!340 = !DILocation(line: 200, column: 19, scope: !270)
!341 = !DILocation(line: 200, column: 17, scope: !270)
!342 = !DILocation(line: 200, column: 29, scope: !270)
!343 = !DILocation(line: 200, column: 26, scope: !270)
!344 = !DILocation(line: 200, column: 11, scope: !270)
!345 = !DILocation(line: 200, column: 4, scope: !270)
!346 = !DILocation(line: 200, column: 9, scope: !270)
!347 = !DILocation(line: 201, column: 16, scope: !270)
!348 = !DILocation(line: 201, column: 23, scope: !270)
!349 = !DILocation(line: 201, column: 21, scope: !270)
!350 = !DILocation(line: 201, column: 33, scope: !270)
!351 = !DILocation(line: 201, column: 30, scope: !270)
!352 = !DILocation(line: 201, column: 15, scope: !270)
!353 = !DILocation(line: 201, column: 4, scope: !270)
!354 = !DILocation(line: 201, column: 10, scope: !270)
!355 = !DILocation(line: 201, column: 8, scope: !270)
!356 = !DILocation(line: 201, column: 13, scope: !270)
!357 = !DILocation(line: 202, column: 20, scope: !270)
!358 = !DILocation(line: 202, column: 28, scope: !270)
!359 = !DILocation(line: 202, column: 26, scope: !270)
!360 = !DILocation(line: 202, column: 11, scope: !270)
!361 = !DILocation(line: 202, column: 36, scope: !270)
!362 = !DILocation(line: 202, column: 34, scope: !270)
!363 = !DILocation(line: 202, column: 4, scope: !270)
!364 = !DILocation(line: 202, column: 9, scope: !270)
!365 = !DILocation(line: 203, column: 15, scope: !270)
!366 = !DILocation(line: 203, column: 32, scope: !270)
!367 = !DILocation(line: 203, column: 39, scope: !270)
!368 = !DILocation(line: 203, column: 37, scope: !270)
!369 = !DILocation(line: 203, column: 48, scope: !270)
!370 = !DILocation(line: 203, column: 45, scope: !270)
!371 = !DILocation(line: 203, column: 22, scope: !270)
!372 = !DILocation(line: 203, column: 20, scope: !270)
!373 = !DILocation(line: 203, column: 4, scope: !270)
!374 = !DILocation(line: 203, column: 10, scope: !270)
!375 = !DILocation(line: 203, column: 8, scope: !270)
!376 = !DILocation(line: 203, column: 13, scope: !270)
!377 = !DILocation(line: 204, column: 15, scope: !270)
!378 = !DILocation(line: 204, column: 32, scope: !270)
!379 = !DILocation(line: 204, column: 40, scope: !270)
!380 = !DILocation(line: 204, column: 38, scope: !270)
!381 = !DILocation(line: 204, column: 50, scope: !270)
!382 = !DILocation(line: 204, column: 47, scope: !270)
!383 = !DILocation(line: 204, column: 22, scope: !270)
!384 = !DILocation(line: 204, column: 20, scope: !270)
!385 = !DILocation(line: 204, column: 4, scope: !270)
!386 = !DILocation(line: 204, column: 10, scope: !270)
!387 = !DILocation(line: 204, column: 8, scope: !270)
!388 = !DILocation(line: 204, column: 13, scope: !270)
!389 = !DILocation(line: 205, column: 20, scope: !270)
!390 = !DILocation(line: 205, column: 27, scope: !270)
!391 = !DILocation(line: 205, column: 25, scope: !270)
!392 = !DILocation(line: 205, column: 11, scope: !270)
!393 = !DILocation(line: 205, column: 35, scope: !270)
!394 = !DILocation(line: 205, column: 33, scope: !270)
!395 = !DILocation(line: 205, column: 4, scope: !270)
!396 = !DILocation(line: 205, column: 9, scope: !270)
!397 = !DILocation(line: 206, column: 20, scope: !270)
!398 = !DILocation(line: 206, column: 27, scope: !270)
!399 = !DILocation(line: 206, column: 25, scope: !270)
!400 = !DILocation(line: 206, column: 11, scope: !270)
!401 = !DILocation(line: 206, column: 35, scope: !270)
!402 = !DILocation(line: 206, column: 33, scope: !270)
!403 = !DILocation(line: 206, column: 4, scope: !270)
!404 = !DILocation(line: 206, column: 9, scope: !270)
!405 = !DILocation(line: 207, column: 11, scope: !270)
!406 = !DILocation(line: 207, column: 18, scope: !270)
!407 = !DILocation(line: 207, column: 16, scope: !270)
!408 = !DILocation(line: 207, column: 4, scope: !270)
!409 = !DILocation(line: 207, column: 9, scope: !270)
!410 = !DILocation(line: 208, column: 11, scope: !270)
!411 = !DILocation(line: 208, column: 18, scope: !270)
!412 = !DILocation(line: 208, column: 16, scope: !270)
!413 = !DILocation(line: 208, column: 4, scope: !270)
!414 = !DILocation(line: 208, column: 9, scope: !270)
!415 = !DILocation(line: 209, column: 20, scope: !270)
!416 = !DILocation(line: 209, column: 27, scope: !270)
!417 = !DILocation(line: 209, column: 25, scope: !270)
!418 = !DILocation(line: 209, column: 11, scope: !270)
!419 = !DILocation(line: 209, column: 35, scope: !270)
!420 = !DILocation(line: 209, column: 33, scope: !270)
!421 = !DILocation(line: 209, column: 4, scope: !270)
!422 = !DILocation(line: 209, column: 9, scope: !270)
!423 = !DILocation(line: 210, column: 19, scope: !270)
!424 = !DILocation(line: 210, column: 11, scope: !270)
!425 = !DILocation(line: 210, column: 26, scope: !270)
!426 = !DILocation(line: 210, column: 24, scope: !270)
!427 = !DILocation(line: 210, column: 33, scope: !270)
!428 = !DILocation(line: 210, column: 31, scope: !270)
!429 = !DILocation(line: 210, column: 4, scope: !270)
!430 = !DILocation(line: 210, column: 9, scope: !270)
!431 = !DILocation(line: 211, column: 19, scope: !270)
!432 = !DILocation(line: 211, column: 11, scope: !270)
!433 = !DILocation(line: 211, column: 26, scope: !270)
!434 = !DILocation(line: 211, column: 24, scope: !270)
!435 = !DILocation(line: 211, column: 33, scope: !270)
!436 = !DILocation(line: 211, column: 31, scope: !270)
!437 = !DILocation(line: 211, column: 4, scope: !270)
!438 = !DILocation(line: 211, column: 9, scope: !270)
!439 = !DILocation(line: 212, column: 24, scope: !270)
!440 = !DILocation(line: 212, column: 31, scope: !270)
!441 = !DILocation(line: 212, column: 29, scope: !270)
!442 = !DILocation(line: 212, column: 38, scope: !270)
!443 = !DILocation(line: 212, column: 36, scope: !270)
!444 = !DILocation(line: 212, column: 45, scope: !270)
!445 = !DILocation(line: 212, column: 43, scope: !270)
!446 = !DILocation(line: 212, column: 15, scope: !270)
!447 = !DILocation(line: 212, column: 54, scope: !270)
!448 = !DILocation(line: 212, column: 51, scope: !270)
!449 = !DILocation(line: 212, column: 4, scope: !270)
!450 = !DILocation(line: 212, column: 10, scope: !270)
!451 = !DILocation(line: 212, column: 8, scope: !270)
!452 = !DILocation(line: 212, column: 13, scope: !270)
!453 = !DILocation(line: 213, column: 24, scope: !270)
!454 = !DILocation(line: 213, column: 31, scope: !270)
!455 = !DILocation(line: 213, column: 29, scope: !270)
!456 = !DILocation(line: 213, column: 38, scope: !270)
!457 = !DILocation(line: 213, column: 36, scope: !270)
!458 = !DILocation(line: 213, column: 45, scope: !270)
!459 = !DILocation(line: 213, column: 43, scope: !270)
!460 = !DILocation(line: 213, column: 15, scope: !270)
!461 = !DILocation(line: 213, column: 54, scope: !270)
!462 = !DILocation(line: 213, column: 51, scope: !270)
!463 = !DILocation(line: 213, column: 4, scope: !270)
!464 = !DILocation(line: 213, column: 10, scope: !270)
!465 = !DILocation(line: 213, column: 8, scope: !270)
!466 = !DILocation(line: 213, column: 13, scope: !270)
!467 = !DILocation(line: 214, column: 24, scope: !270)
!468 = !DILocation(line: 214, column: 31, scope: !270)
!469 = !DILocation(line: 214, column: 29, scope: !270)
!470 = !DILocation(line: 214, column: 38, scope: !270)
!471 = !DILocation(line: 214, column: 36, scope: !270)
!472 = !DILocation(line: 214, column: 45, scope: !270)
!473 = !DILocation(line: 214, column: 43, scope: !270)
!474 = !DILocation(line: 214, column: 15, scope: !270)
!475 = !DILocation(line: 214, column: 54, scope: !270)
!476 = !DILocation(line: 214, column: 51, scope: !270)
!477 = !DILocation(line: 214, column: 4, scope: !270)
!478 = !DILocation(line: 214, column: 10, scope: !270)
!479 = !DILocation(line: 214, column: 8, scope: !270)
!480 = !DILocation(line: 214, column: 13, scope: !270)
!481 = !DILocation(line: 215, column: 24, scope: !270)
!482 = !DILocation(line: 215, column: 31, scope: !270)
!483 = !DILocation(line: 215, column: 29, scope: !270)
!484 = !DILocation(line: 215, column: 38, scope: !270)
!485 = !DILocation(line: 215, column: 36, scope: !270)
!486 = !DILocation(line: 215, column: 45, scope: !270)
!487 = !DILocation(line: 215, column: 43, scope: !270)
!488 = !DILocation(line: 215, column: 15, scope: !270)
!489 = !DILocation(line: 215, column: 54, scope: !270)
!490 = !DILocation(line: 215, column: 51, scope: !270)
!491 = !DILocation(line: 215, column: 4, scope: !270)
!492 = !DILocation(line: 215, column: 10, scope: !270)
!493 = !DILocation(line: 215, column: 8, scope: !270)
!494 = !DILocation(line: 215, column: 13, scope: !270)
!495 = !DILocation(line: 216, column: 3, scope: !270)
!496 = !DILocation(line: 191, column: 23, scope: !270)
!497 = !DILocation(line: 191, column: 32, scope: !270)
!498 = !DILocation(line: 191, column: 29, scope: !270)
!499 = distinct !{!499, !283, !495, !32}
!500 = !DILocation(line: 217, column: 2, scope: !270)
!501 = !DILocation(line: 190, column: 46, scope: !270)
!502 = !DILocation(line: 190, column: 54, scope: !270)
!503 = !DILocation(line: 190, column: 62, scope: !270)
!504 = !DILocation(line: 190, column: 70, scope: !270)
!505 = !DILocation(line: 190, column: 78, scope: !270)
!506 = distinct !{!506, !278, !500, !32}
!507 = !DILocation(line: 218, column: 1, scope: !270)
!508 = distinct !DISubprogram(name: "edn", scope: !13, file: !13, line: 222, type: !14, scopeLine: 223, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!509 = !DILocation(line: 224, column: 18, scope: !508)
!510 = !DILocation(line: 245, column: 18, scope: !508)
!511 = !DILocation(line: 267, column: 18, scope: !508)
!512 = !DILocation(line: 269, column: 18, scope: !508)
!513 = !DILocation(line: 270, column: 18, scope: !508)
!514 = !DILocation(line: 275, column: 11, scope: !508)
!515 = !DILocation(line: 275, column: 14, scope: !508)
!516 = !DILocation(line: 275, column: 17, scope: !508)
!517 = !DILocation(line: 275, column: 2, scope: !508)
!518 = !DILocation(line: 276, column: 10, scope: !508)
!519 = !DILocation(line: 276, column: 13, scope: !508)
!520 = !DILocation(line: 276, column: 27, scope: !508)
!521 = !DILocation(line: 276, column: 16, scope: !508)
!522 = !DILocation(line: 276, column: 43, scope: !508)
!523 = !DILocation(line: 276, column: 6, scope: !508)
!524 = !DILocation(line: 276, column: 4, scope: !508)
!525 = !DILocation(line: 277, column: 6, scope: !508)
!526 = !DILocation(line: 277, column: 9, scope: !508)
!527 = !DILocation(line: 277, column: 12, scope: !508)
!528 = !DILocation(line: 277, column: 2, scope: !508)
!529 = !DILocation(line: 278, column: 16, scope: !508)
!530 = !DILocation(line: 278, column: 19, scope: !508)
!531 = !DILocation(line: 278, column: 22, scope: !508)
!532 = !DILocation(line: 278, column: 2, scope: !508)
!533 = !DILocation(line: 279, column: 15, scope: !508)
!534 = !DILocation(line: 279, column: 18, scope: !508)
!535 = !DILocation(line: 279, column: 24, scope: !508)
!536 = !DILocation(line: 279, column: 6, scope: !508)
!537 = !DILocation(line: 279, column: 4, scope: !508)
!538 = !DILocation(line: 280, column: 7, scope: !508)
!539 = !DILocation(line: 280, column: 10, scope: !508)
!540 = !DILocation(line: 280, column: 14, scope: !508)
!541 = !DILocation(line: 280, column: 27, scope: !508)
!542 = !DILocation(line: 280, column: 2, scope: !508)
!543 = !DILocation(line: 281, column: 18, scope: !508)
!544 = !DILocation(line: 281, column: 28, scope: !508)
!545 = !DILocation(line: 281, column: 34, scope: !508)
!546 = !DILocation(line: 281, column: 37, scope: !508)
!547 = !DILocation(line: 281, column: 40, scope: !508)
!548 = !DILocation(line: 281, column: 9, scope: !508)
!549 = !DILocation(line: 281, column: 2, scope: !508)
!550 = !DILocation(line: 281, column: 7, scope: !508)
!551 = !DILocation(line: 282, column: 10, scope: !508)
!552 = !DILocation(line: 282, column: 13, scope: !508)
!553 = !DILocation(line: 282, column: 2, scope: !508)
!554 = !DILocation(line: 283, column: 2, scope: !508)
