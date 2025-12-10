; ModuleID = '/workspaces/llvmta/testcases/wcet_bench/qsort-exam.c'
source_filename = "/workspaces/llvmta/testcases/wcet_bench/qsort-exam.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv4t-unknown-unknown"

@arr = dso_local global [20 x float] [float 5.000000e+00, float 4.000000e+00, float 0x40249999A0000000, float 0x3FF19999A0000000, float 0x4016CCCCC0000000, float 1.000000e+02, float 2.310000e+02, float 1.110000e+02, float 4.950000e+01, float 9.900000e+01, float 1.000000e+01, float 1.500000e+02, float 0x406BC70A40000000, float 1.010000e+02, float 7.700000e+01, float 4.400000e+01, float 3.500000e+01, float 0x40348A3D80000000, float 0x4058FF5C20000000, float 0x40563851E0000000], align 4
@istack = dso_local global [100 x i32] zeroinitializer, align 4

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @sort(i32 noundef %n) #0 !dbg !12 {
entry:
  %n.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %ir = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %l = alloca i32, align 4
  %jstack = alloca i32, align 4
  %flag = alloca i32, align 4
  %a = alloca float, align 4
  %temp = alloca float, align 4
  store i32 %n, i32* %n.addr, align 4
  %0 = load i32, i32* %n.addr, align 4, !dbg !16
  store i32 %0, i32* %ir, align 4, !dbg !17
  store i32 1, i32* %l, align 4, !dbg !18
  store i32 0, i32* %jstack, align 4, !dbg !19
  store i32 0, i32* %flag, align 4, !dbg !20
  br label %for.cond, !dbg !21

for.cond:                                         ; preds = %if.end107, %entry
  %1 = load i32, i32* %ir, align 4, !dbg !22
  %2 = load i32, i32* %l, align 4, !dbg !23
  %sub = sub i32 %1, %2, !dbg !24
  %cmp = icmp ult i32 %sub, 7, !dbg !25
  br i1 %cmp, label %if.then, label %if.else, !dbg !22

if.then:                                          ; preds = %for.cond
  %3 = load i32, i32* %l, align 4, !dbg !26
  %add = add i32 %3, 1, !dbg !27
  store i32 %add, i32* %j, align 4, !dbg !28
  br label %for.cond1, !dbg !29

for.cond1:                                        ; preds = %for.inc15, %if.then
  %4 = load i32, i32* %j, align 4, !dbg !30
  %5 = load i32, i32* %ir, align 4, !dbg !31
  %cmp2 = icmp ule i32 %4, %5, !dbg !32
  br i1 %cmp2, label %for.body, label %for.end16, !dbg !33

for.body:                                         ; preds = %for.cond1
  %6 = load i32, i32* %j, align 4, !dbg !34
  %arrayidx = getelementptr inbounds [20 x float], [20 x float]* @arr, i32 0, i32 %6, !dbg !35
  %7 = load float, float* %arrayidx, align 4, !dbg !35
  store float %7, float* %a, align 4, !dbg !36
  %8 = load i32, i32* %j, align 4, !dbg !37
  %sub3 = sub i32 %8, 1, !dbg !38
  store i32 %sub3, i32* %i, align 4, !dbg !39
  br label %for.cond4, !dbg !40

for.cond4:                                        ; preds = %for.inc, %for.body
  %9 = load i32, i32* %i, align 4, !dbg !41
  %10 = load i32, i32* %l, align 4, !dbg !42
  %cmp5 = icmp uge i32 %9, %10, !dbg !43
  br i1 %cmp5, label %for.body6, label %for.end, !dbg !44

for.body6:                                        ; preds = %for.cond4
  %11 = load i32, i32* %i, align 4, !dbg !45
  %arrayidx7 = getelementptr inbounds [20 x float], [20 x float]* @arr, i32 0, i32 %11, !dbg !46
  %12 = load float, float* %arrayidx7, align 4, !dbg !46
  %13 = load float, float* %a, align 4, !dbg !47
  %cmp8 = fcmp ole float %12, %13, !dbg !48
  br i1 %cmp8, label %if.then9, label %if.end, !dbg !46

if.then9:                                         ; preds = %for.body6
  br label %for.end, !dbg !49

if.end:                                           ; preds = %for.body6
  %14 = load i32, i32* %i, align 4, !dbg !50
  %arrayidx10 = getelementptr inbounds [20 x float], [20 x float]* @arr, i32 0, i32 %14, !dbg !51
  %15 = load float, float* %arrayidx10, align 4, !dbg !51
  %16 = load i32, i32* %i, align 4, !dbg !52
  %add11 = add i32 %16, 1, !dbg !53
  %arrayidx12 = getelementptr inbounds [20 x float], [20 x float]* @arr, i32 0, i32 %add11, !dbg !54
  store float %15, float* %arrayidx12, align 4, !dbg !55
  br label %for.inc, !dbg !56

for.inc:                                          ; preds = %if.end
  %17 = load i32, i32* %i, align 4, !dbg !57
  %dec = add i32 %17, -1, !dbg !57
  store i32 %dec, i32* %i, align 4, !dbg !57
  br label %for.cond4, !dbg !44, !llvm.loop !58

for.end:                                          ; preds = %if.then9, %for.cond4
  %18 = load float, float* %a, align 4, !dbg !60
  %19 = load i32, i32* %i, align 4, !dbg !61
  %add13 = add i32 %19, 1, !dbg !62
  %arrayidx14 = getelementptr inbounds [20 x float], [20 x float]* @arr, i32 0, i32 %add13, !dbg !63
  store float %18, float* %arrayidx14, align 4, !dbg !64
  br label %for.inc15, !dbg !65

for.inc15:                                        ; preds = %for.end
  %20 = load i32, i32* %j, align 4, !dbg !66
  %inc = add i32 %20, 1, !dbg !66
  store i32 %inc, i32* %j, align 4, !dbg !66
  br label %for.cond1, !dbg !33, !llvm.loop !67

for.end16:                                        ; preds = %for.cond1
  %21 = load i32, i32* %jstack, align 4, !dbg !68
  %cmp17 = icmp eq i32 %21, 0, !dbg !69
  br i1 %cmp17, label %if.then18, label %if.end19, !dbg !68

if.then18:                                        ; preds = %for.end16
  br label %for.end108, !dbg !70

if.end19:                                         ; preds = %for.end16
  %22 = load i32, i32* %jstack, align 4, !dbg !71
  %dec20 = add nsw i32 %22, -1, !dbg !71
  store i32 %dec20, i32* %jstack, align 4, !dbg !71
  %arrayidx21 = getelementptr inbounds [100 x i32], [100 x i32]* @istack, i32 0, i32 %22, !dbg !72
  %23 = load i32, i32* %arrayidx21, align 4, !dbg !72
  store i32 %23, i32* %ir, align 4, !dbg !73
  %24 = load i32, i32* %jstack, align 4, !dbg !74
  %dec22 = add nsw i32 %24, -1, !dbg !74
  store i32 %dec22, i32* %jstack, align 4, !dbg !74
  %arrayidx23 = getelementptr inbounds [100 x i32], [100 x i32]* @istack, i32 0, i32 %24, !dbg !75
  %25 = load i32, i32* %arrayidx23, align 4, !dbg !75
  store i32 %25, i32* %l, align 4, !dbg !76
  br label %if.end107, !dbg !77

if.else:                                          ; preds = %for.cond
  %26 = load i32, i32* %l, align 4, !dbg !78
  %27 = load i32, i32* %ir, align 4, !dbg !79
  %add24 = add i32 %26, %27, !dbg !80
  %shr = lshr i32 %add24, 1, !dbg !81
  store i32 %shr, i32* %k, align 4, !dbg !82
  %28 = load i32, i32* %k, align 4, !dbg !83
  %arrayidx25 = getelementptr inbounds [20 x float], [20 x float]* @arr, i32 0, i32 %28, !dbg !83
  %29 = load float, float* %arrayidx25, align 4, !dbg !83
  store float %29, float* %temp, align 4, !dbg !83
  %30 = load i32, i32* %l, align 4, !dbg !83
  %add26 = add i32 %30, 1, !dbg !83
  %arrayidx27 = getelementptr inbounds [20 x float], [20 x float]* @arr, i32 0, i32 %add26, !dbg !83
  %31 = load float, float* %arrayidx27, align 4, !dbg !83
  %32 = load i32, i32* %k, align 4, !dbg !83
  %arrayidx28 = getelementptr inbounds [20 x float], [20 x float]* @arr, i32 0, i32 %32, !dbg !83
  store float %31, float* %arrayidx28, align 4, !dbg !83
  %33 = load float, float* %temp, align 4, !dbg !83
  %34 = load i32, i32* %l, align 4, !dbg !83
  %add29 = add i32 %34, 1, !dbg !83
  %arrayidx30 = getelementptr inbounds [20 x float], [20 x float]* @arr, i32 0, i32 %add29, !dbg !83
  store float %33, float* %arrayidx30, align 4, !dbg !83
  %35 = load i32, i32* %l, align 4, !dbg !84
  %arrayidx31 = getelementptr inbounds [20 x float], [20 x float]* @arr, i32 0, i32 %35, !dbg !85
  %36 = load float, float* %arrayidx31, align 4, !dbg !85
  %37 = load i32, i32* %ir, align 4, !dbg !86
  %arrayidx32 = getelementptr inbounds [20 x float], [20 x float]* @arr, i32 0, i32 %37, !dbg !87
  %38 = load float, float* %arrayidx32, align 4, !dbg !87
  %cmp33 = fcmp ogt float %36, %38, !dbg !88
  br i1 %cmp33, label %if.then34, label %if.end39, !dbg !85

if.then34:                                        ; preds = %if.else
  %39 = load i32, i32* %l, align 4, !dbg !89
  %arrayidx35 = getelementptr inbounds [20 x float], [20 x float]* @arr, i32 0, i32 %39, !dbg !89
  %40 = load float, float* %arrayidx35, align 4, !dbg !89
  store float %40, float* %temp, align 4, !dbg !89
  %41 = load i32, i32* %ir, align 4, !dbg !89
  %arrayidx36 = getelementptr inbounds [20 x float], [20 x float]* @arr, i32 0, i32 %41, !dbg !89
  %42 = load float, float* %arrayidx36, align 4, !dbg !89
  %43 = load i32, i32* %l, align 4, !dbg !89
  %arrayidx37 = getelementptr inbounds [20 x float], [20 x float]* @arr, i32 0, i32 %43, !dbg !89
  store float %42, float* %arrayidx37, align 4, !dbg !89
  %44 = load float, float* %temp, align 4, !dbg !89
  %45 = load i32, i32* %ir, align 4, !dbg !89
  %arrayidx38 = getelementptr inbounds [20 x float], [20 x float]* @arr, i32 0, i32 %45, !dbg !89
  store float %44, float* %arrayidx38, align 4, !dbg !89
  br label %if.end39, !dbg !90

if.end39:                                         ; preds = %if.then34, %if.else
  %46 = load i32, i32* %l, align 4, !dbg !91
  %add40 = add i32 %46, 1, !dbg !92
  %arrayidx41 = getelementptr inbounds [20 x float], [20 x float]* @arr, i32 0, i32 %add40, !dbg !93
  %47 = load float, float* %arrayidx41, align 4, !dbg !93
  %48 = load i32, i32* %ir, align 4, !dbg !94
  %arrayidx42 = getelementptr inbounds [20 x float], [20 x float]* @arr, i32 0, i32 %48, !dbg !95
  %49 = load float, float* %arrayidx42, align 4, !dbg !95
  %cmp43 = fcmp ogt float %47, %49, !dbg !96
  br i1 %cmp43, label %if.then44, label %if.end51, !dbg !93

if.then44:                                        ; preds = %if.end39
  %50 = load i32, i32* %l, align 4, !dbg !97
  %add45 = add i32 %50, 1, !dbg !97
  %arrayidx46 = getelementptr inbounds [20 x float], [20 x float]* @arr, i32 0, i32 %add45, !dbg !97
  %51 = load float, float* %arrayidx46, align 4, !dbg !97
  store float %51, float* %temp, align 4, !dbg !97
  %52 = load i32, i32* %ir, align 4, !dbg !97
  %arrayidx47 = getelementptr inbounds [20 x float], [20 x float]* @arr, i32 0, i32 %52, !dbg !97
  %53 = load float, float* %arrayidx47, align 4, !dbg !97
  %54 = load i32, i32* %l, align 4, !dbg !97
  %add48 = add i32 %54, 1, !dbg !97
  %arrayidx49 = getelementptr inbounds [20 x float], [20 x float]* @arr, i32 0, i32 %add48, !dbg !97
  store float %53, float* %arrayidx49, align 4, !dbg !97
  %55 = load float, float* %temp, align 4, !dbg !97
  %56 = load i32, i32* %ir, align 4, !dbg !97
  %arrayidx50 = getelementptr inbounds [20 x float], [20 x float]* @arr, i32 0, i32 %56, !dbg !97
  store float %55, float* %arrayidx50, align 4, !dbg !97
  br label %if.end51, !dbg !98

if.end51:                                         ; preds = %if.then44, %if.end39
  %57 = load i32, i32* %l, align 4, !dbg !99
  %arrayidx52 = getelementptr inbounds [20 x float], [20 x float]* @arr, i32 0, i32 %57, !dbg !100
  %58 = load float, float* %arrayidx52, align 4, !dbg !100
  %59 = load i32, i32* %l, align 4, !dbg !101
  %add53 = add i32 %59, 1, !dbg !102
  %arrayidx54 = getelementptr inbounds [20 x float], [20 x float]* @arr, i32 0, i32 %add53, !dbg !103
  %60 = load float, float* %arrayidx54, align 4, !dbg !103
  %cmp55 = fcmp ogt float %58, %60, !dbg !104
  br i1 %cmp55, label %if.then56, label %if.end63, !dbg !100

if.then56:                                        ; preds = %if.end51
  %61 = load i32, i32* %l, align 4, !dbg !105
  %arrayidx57 = getelementptr inbounds [20 x float], [20 x float]* @arr, i32 0, i32 %61, !dbg !105
  %62 = load float, float* %arrayidx57, align 4, !dbg !105
  store float %62, float* %temp, align 4, !dbg !105
  %63 = load i32, i32* %l, align 4, !dbg !105
  %add58 = add i32 %63, 1, !dbg !105
  %arrayidx59 = getelementptr inbounds [20 x float], [20 x float]* @arr, i32 0, i32 %add58, !dbg !105
  %64 = load float, float* %arrayidx59, align 4, !dbg !105
  %65 = load i32, i32* %l, align 4, !dbg !105
  %arrayidx60 = getelementptr inbounds [20 x float], [20 x float]* @arr, i32 0, i32 %65, !dbg !105
  store float %64, float* %arrayidx60, align 4, !dbg !105
  %66 = load float, float* %temp, align 4, !dbg !105
  %67 = load i32, i32* %l, align 4, !dbg !105
  %add61 = add i32 %67, 1, !dbg !105
  %arrayidx62 = getelementptr inbounds [20 x float], [20 x float]* @arr, i32 0, i32 %add61, !dbg !105
  store float %66, float* %arrayidx62, align 4, !dbg !105
  br label %if.end63, !dbg !106

if.end63:                                         ; preds = %if.then56, %if.end51
  %68 = load i32, i32* %l, align 4, !dbg !107
  %add64 = add i32 %68, 1, !dbg !108
  store i32 %add64, i32* %i, align 4, !dbg !109
  %69 = load i32, i32* %ir, align 4, !dbg !110
  store i32 %69, i32* %j, align 4, !dbg !111
  %70 = load i32, i32* %l, align 4, !dbg !112
  %add65 = add i32 %70, 1, !dbg !113
  %arrayidx66 = getelementptr inbounds [20 x float], [20 x float]* @arr, i32 0, i32 %add65, !dbg !114
  %71 = load float, float* %arrayidx66, align 4, !dbg !114
  store float %71, float* %a, align 4, !dbg !115
  br label %for.cond67, !dbg !116

for.cond67:                                       ; preds = %if.end81, %if.end63
  %72 = load i32, i32* %i, align 4, !dbg !117
  %inc68 = add i32 %72, 1, !dbg !117
  store i32 %inc68, i32* %i, align 4, !dbg !117
  br label %while.cond, !dbg !118

while.cond:                                       ; preds = %while.body, %for.cond67
  %73 = load i32, i32* %i, align 4, !dbg !119
  %arrayidx69 = getelementptr inbounds [20 x float], [20 x float]* @arr, i32 0, i32 %73, !dbg !120
  %74 = load float, float* %arrayidx69, align 4, !dbg !120
  %75 = load float, float* %a, align 4, !dbg !121
  %cmp70 = fcmp olt float %74, %75, !dbg !122
  br i1 %cmp70, label %while.body, label %while.end, !dbg !118

while.body:                                       ; preds = %while.cond
  %76 = load i32, i32* %i, align 4, !dbg !123
  %inc71 = add i32 %76, 1, !dbg !123
  store i32 %inc71, i32* %i, align 4, !dbg !123
  br label %while.cond, !dbg !118, !llvm.loop !124

while.end:                                        ; preds = %while.cond
  %77 = load i32, i32* %j, align 4, !dbg !125
  %dec72 = add i32 %77, -1, !dbg !125
  store i32 %dec72, i32* %j, align 4, !dbg !125
  br label %while.cond73, !dbg !126

while.cond73:                                     ; preds = %while.body76, %while.end
  %78 = load i32, i32* %j, align 4, !dbg !127
  %arrayidx74 = getelementptr inbounds [20 x float], [20 x float]* @arr, i32 0, i32 %78, !dbg !128
  %79 = load float, float* %arrayidx74, align 4, !dbg !128
  %80 = load float, float* %a, align 4, !dbg !129
  %cmp75 = fcmp ogt float %79, %80, !dbg !130
  br i1 %cmp75, label %while.body76, label %while.end78, !dbg !126

while.body76:                                     ; preds = %while.cond73
  %81 = load i32, i32* %j, align 4, !dbg !131
  %dec77 = add i32 %81, -1, !dbg !131
  store i32 %dec77, i32* %j, align 4, !dbg !131
  br label %while.cond73, !dbg !126, !llvm.loop !132

while.end78:                                      ; preds = %while.cond73
  %82 = load i32, i32* %j, align 4, !dbg !133
  %83 = load i32, i32* %i, align 4, !dbg !134
  %cmp79 = icmp ult i32 %82, %83, !dbg !135
  br i1 %cmp79, label %if.then80, label %if.end81, !dbg !133

if.then80:                                        ; preds = %while.end78
  br label %for.end86, !dbg !136

if.end81:                                         ; preds = %while.end78
  %84 = load i32, i32* %i, align 4, !dbg !137
  %arrayidx82 = getelementptr inbounds [20 x float], [20 x float]* @arr, i32 0, i32 %84, !dbg !137
  %85 = load float, float* %arrayidx82, align 4, !dbg !137
  store float %85, float* %temp, align 4, !dbg !137
  %86 = load i32, i32* %j, align 4, !dbg !137
  %arrayidx83 = getelementptr inbounds [20 x float], [20 x float]* @arr, i32 0, i32 %86, !dbg !137
  %87 = load float, float* %arrayidx83, align 4, !dbg !137
  %88 = load i32, i32* %i, align 4, !dbg !137
  %arrayidx84 = getelementptr inbounds [20 x float], [20 x float]* @arr, i32 0, i32 %88, !dbg !137
  store float %87, float* %arrayidx84, align 4, !dbg !137
  %89 = load float, float* %temp, align 4, !dbg !137
  %90 = load i32, i32* %j, align 4, !dbg !137
  %arrayidx85 = getelementptr inbounds [20 x float], [20 x float]* @arr, i32 0, i32 %90, !dbg !137
  store float %89, float* %arrayidx85, align 4, !dbg !137
  br label %for.cond67, !dbg !116, !llvm.loop !138

for.end86:                                        ; preds = %if.then80
  %91 = load i32, i32* %j, align 4, !dbg !140
  %arrayidx87 = getelementptr inbounds [20 x float], [20 x float]* @arr, i32 0, i32 %91, !dbg !141
  %92 = load float, float* %arrayidx87, align 4, !dbg !141
  %93 = load i32, i32* %l, align 4, !dbg !142
  %add88 = add i32 %93, 1, !dbg !143
  %arrayidx89 = getelementptr inbounds [20 x float], [20 x float]* @arr, i32 0, i32 %add88, !dbg !144
  store float %92, float* %arrayidx89, align 4, !dbg !145
  %94 = load float, float* %a, align 4, !dbg !146
  %95 = load i32, i32* %j, align 4, !dbg !147
  %arrayidx90 = getelementptr inbounds [20 x float], [20 x float]* @arr, i32 0, i32 %95, !dbg !148
  store float %94, float* %arrayidx90, align 4, !dbg !149
  %96 = load i32, i32* %jstack, align 4, !dbg !150
  %add91 = add nsw i32 %96, 2, !dbg !150
  store i32 %add91, i32* %jstack, align 4, !dbg !150
  %97 = load i32, i32* %ir, align 4, !dbg !151
  %98 = load i32, i32* %i, align 4, !dbg !152
  %sub92 = sub i32 %97, %98, !dbg !153
  %add93 = add i32 %sub92, 1, !dbg !154
  %99 = load i32, i32* %j, align 4, !dbg !155
  %100 = load i32, i32* %l, align 4, !dbg !156
  %sub94 = sub i32 %99, %100, !dbg !157
  %cmp95 = icmp uge i32 %add93, %sub94, !dbg !158
  br i1 %cmp95, label %if.then96, label %if.else101, !dbg !151

if.then96:                                        ; preds = %for.end86
  %101 = load i32, i32* %ir, align 4, !dbg !159
  %102 = load i32, i32* %jstack, align 4, !dbg !160
  %arrayidx97 = getelementptr inbounds [100 x i32], [100 x i32]* @istack, i32 0, i32 %102, !dbg !161
  store i32 %101, i32* %arrayidx97, align 4, !dbg !162
  %103 = load i32, i32* %i, align 4, !dbg !163
  %104 = load i32, i32* %jstack, align 4, !dbg !164
  %sub98 = sub nsw i32 %104, 1, !dbg !165
  %arrayidx99 = getelementptr inbounds [100 x i32], [100 x i32]* @istack, i32 0, i32 %sub98, !dbg !166
  store i32 %103, i32* %arrayidx99, align 4, !dbg !167
  %105 = load i32, i32* %j, align 4, !dbg !168
  %sub100 = sub i32 %105, 1, !dbg !169
  store i32 %sub100, i32* %ir, align 4, !dbg !170
  br label %if.end106, !dbg !171

if.else101:                                       ; preds = %for.end86
  %106 = load i32, i32* %j, align 4, !dbg !172
  %sub102 = sub i32 %106, 1, !dbg !173
  %107 = load i32, i32* %jstack, align 4, !dbg !174
  %arrayidx103 = getelementptr inbounds [100 x i32], [100 x i32]* @istack, i32 0, i32 %107, !dbg !175
  store i32 %sub102, i32* %arrayidx103, align 4, !dbg !176
  %108 = load i32, i32* %l, align 4, !dbg !177
  %109 = load i32, i32* %jstack, align 4, !dbg !178
  %sub104 = sub nsw i32 %109, 1, !dbg !179
  %arrayidx105 = getelementptr inbounds [100 x i32], [100 x i32]* @istack, i32 0, i32 %sub104, !dbg !180
  store i32 %108, i32* %arrayidx105, align 4, !dbg !181
  %110 = load i32, i32* %i, align 4, !dbg !182
  store i32 %110, i32* %l, align 4, !dbg !183
  br label %if.end106

if.end106:                                        ; preds = %if.else101, %if.then96
  br label %if.end107

if.end107:                                        ; preds = %if.end106, %if.end19
  br label %for.cond, !dbg !21, !llvm.loop !184

for.end108:                                       ; preds = %if.then18
  ret void, !dbg !186
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @main() #0 !dbg !187 {
entry:
  call arm_aapcs_vfpcc void @sort(i32 noundef 20) #1, !dbg !188
  ret i32 0, !dbg !189
}

attributes #0 = { noinline nounwind "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #1 = { nobuiltin "no-builtins" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 14.0.6 (git@github.com:RTS-SYSU/LLVM-TA.git b7f9c4ccdebc6c37532ddd772889e5f0ff989c79)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/workspaces/llvmta/testcases/wcet_bench/qsort-exam.c", directory: "/workspaces/llvmta/testcases/util_scripts", checksumkind: CSK_MD5, checksum: "755e4988fed5e19453b5c4112b7472a1")
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
!12 = distinct !DISubprogram(name: "sort", scope: !13, file: !13, line: 56, type: !14, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!13 = !DIFile(filename: "wcet_bench/qsort-exam.c", directory: "/workspaces/llvmta/testcases", checksumkind: CSK_MD5, checksum: "755e4988fed5e19453b5c4112b7472a1")
!14 = !DISubroutineType(types: !15)
!15 = !{}
!16 = !DILocation(line: 58, column: 21, scope: !12)
!17 = !DILocation(line: 58, column: 18, scope: !12)
!18 = !DILocation(line: 58, column: 27, scope: !12)
!19 = !DILocation(line: 59, column: 6, scope: !12)
!20 = !DILocation(line: 63, column: 7, scope: !12)
!21 = !DILocation(line: 64, column: 2, scope: !12)
!22 = !DILocation(line: 65, column: 7, scope: !12)
!23 = !DILocation(line: 65, column: 10, scope: !12)
!24 = !DILocation(line: 65, column: 9, scope: !12)
!25 = !DILocation(line: 65, column: 12, scope: !12)
!26 = !DILocation(line: 66, column: 11, scope: !12)
!27 = !DILocation(line: 66, column: 12, scope: !12)
!28 = !DILocation(line: 66, column: 10, scope: !12)
!29 = !DILocation(line: 66, column: 9, scope: !12)
!30 = !DILocation(line: 66, column: 15, scope: !12)
!31 = !DILocation(line: 66, column: 18, scope: !12)
!32 = !DILocation(line: 66, column: 16, scope: !12)
!33 = !DILocation(line: 66, column: 4, scope: !12)
!34 = !DILocation(line: 67, column: 11, scope: !12)
!35 = !DILocation(line: 67, column: 7, scope: !12)
!36 = !DILocation(line: 67, column: 6, scope: !12)
!37 = !DILocation(line: 68, column: 12, scope: !12)
!38 = !DILocation(line: 68, column: 13, scope: !12)
!39 = !DILocation(line: 68, column: 11, scope: !12)
!40 = !DILocation(line: 68, column: 10, scope: !12)
!41 = !DILocation(line: 68, column: 16, scope: !12)
!42 = !DILocation(line: 68, column: 19, scope: !12)
!43 = !DILocation(line: 68, column: 17, scope: !12)
!44 = !DILocation(line: 68, column: 5, scope: !12)
!45 = !DILocation(line: 69, column: 14, scope: !12)
!46 = !DILocation(line: 69, column: 10, scope: !12)
!47 = !DILocation(line: 69, column: 20, scope: !12)
!48 = !DILocation(line: 69, column: 17, scope: !12)
!49 = !DILocation(line: 69, column: 23, scope: !12)
!50 = !DILocation(line: 70, column: 19, scope: !12)
!51 = !DILocation(line: 70, column: 15, scope: !12)
!52 = !DILocation(line: 70, column: 10, scope: !12)
!53 = !DILocation(line: 70, column: 11, scope: !12)
!54 = !DILocation(line: 70, column: 6, scope: !12)
!55 = !DILocation(line: 70, column: 14, scope: !12)
!56 = !DILocation(line: 71, column: 5, scope: !12)
!57 = !DILocation(line: 68, column: 22, scope: !12)
!58 = distinct !{!58, !44, !56, !59}
!59 = !{!"llvm.loop.mustprogress"}
!60 = !DILocation(line: 72, column: 14, scope: !12)
!61 = !DILocation(line: 72, column: 9, scope: !12)
!62 = !DILocation(line: 72, column: 10, scope: !12)
!63 = !DILocation(line: 72, column: 5, scope: !12)
!64 = !DILocation(line: 72, column: 13, scope: !12)
!65 = !DILocation(line: 73, column: 4, scope: !12)
!66 = !DILocation(line: 66, column: 22, scope: !12)
!67 = distinct !{!67, !33, !65, !59}
!68 = !DILocation(line: 74, column: 8, scope: !12)
!69 = !DILocation(line: 74, column: 15, scope: !12)
!70 = !DILocation(line: 74, column: 21, scope: !12)
!71 = !DILocation(line: 75, column: 20, scope: !12)
!72 = !DILocation(line: 75, column: 7, scope: !12)
!73 = !DILocation(line: 75, column: 6, scope: !12)
!74 = !DILocation(line: 76, column: 19, scope: !12)
!75 = !DILocation(line: 76, column: 6, scope: !12)
!76 = !DILocation(line: 76, column: 5, scope: !12)
!77 = !DILocation(line: 77, column: 3, scope: !12)
!78 = !DILocation(line: 78, column: 7, scope: !12)
!79 = !DILocation(line: 78, column: 9, scope: !12)
!80 = !DILocation(line: 78, column: 8, scope: !12)
!81 = !DILocation(line: 78, column: 13, scope: !12)
!82 = !DILocation(line: 78, column: 5, scope: !12)
!83 = !DILocation(line: 79, column: 4, scope: !12)
!84 = !DILocation(line: 80, column: 12, scope: !12)
!85 = !DILocation(line: 80, column: 8, scope: !12)
!86 = !DILocation(line: 80, column: 21, scope: !12)
!87 = !DILocation(line: 80, column: 17, scope: !12)
!88 = !DILocation(line: 80, column: 15, scope: !12)
!89 = !DILocation(line: 81, column: 5, scope: !12)
!90 = !DILocation(line: 82, column: 4, scope: !12)
!91 = !DILocation(line: 83, column: 12, scope: !12)
!92 = !DILocation(line: 83, column: 13, scope: !12)
!93 = !DILocation(line: 83, column: 8, scope: !12)
!94 = !DILocation(line: 83, column: 23, scope: !12)
!95 = !DILocation(line: 83, column: 19, scope: !12)
!96 = !DILocation(line: 83, column: 17, scope: !12)
!97 = !DILocation(line: 84, column: 5, scope: !12)
!98 = !DILocation(line: 85, column: 4, scope: !12)
!99 = !DILocation(line: 86, column: 12, scope: !12)
!100 = !DILocation(line: 86, column: 8, scope: !12)
!101 = !DILocation(line: 86, column: 21, scope: !12)
!102 = !DILocation(line: 86, column: 22, scope: !12)
!103 = !DILocation(line: 86, column: 17, scope: !12)
!104 = !DILocation(line: 86, column: 15, scope: !12)
!105 = !DILocation(line: 87, column: 5, scope: !12)
!106 = !DILocation(line: 88, column: 4, scope: !12)
!107 = !DILocation(line: 89, column: 6, scope: !12)
!108 = !DILocation(line: 89, column: 7, scope: !12)
!109 = !DILocation(line: 89, column: 5, scope: !12)
!110 = !DILocation(line: 90, column: 6, scope: !12)
!111 = !DILocation(line: 90, column: 5, scope: !12)
!112 = !DILocation(line: 91, column: 10, scope: !12)
!113 = !DILocation(line: 91, column: 11, scope: !12)
!114 = !DILocation(line: 91, column: 6, scope: !12)
!115 = !DILocation(line: 91, column: 5, scope: !12)
!116 = !DILocation(line: 92, column: 4, scope: !12)
!117 = !DILocation(line: 93, column: 6, scope: !12)
!118 = !DILocation(line: 93, column: 10, scope: !12)
!119 = !DILocation(line: 93, column: 21, scope: !12)
!120 = !DILocation(line: 93, column: 17, scope: !12)
!121 = !DILocation(line: 93, column: 26, scope: !12)
!122 = !DILocation(line: 93, column: 24, scope: !12)
!123 = !DILocation(line: 93, column: 30, scope: !12)
!124 = distinct !{!124, !118, !123, !59}
!125 = !DILocation(line: 94, column: 6, scope: !12)
!126 = !DILocation(line: 94, column: 10, scope: !12)
!127 = !DILocation(line: 94, column: 21, scope: !12)
!128 = !DILocation(line: 94, column: 17, scope: !12)
!129 = !DILocation(line: 94, column: 26, scope: !12)
!130 = !DILocation(line: 94, column: 24, scope: !12)
!131 = !DILocation(line: 94, column: 30, scope: !12)
!132 = distinct !{!132, !126, !131, !59}
!133 = !DILocation(line: 95, column: 9, scope: !12)
!134 = !DILocation(line: 95, column: 13, scope: !12)
!135 = !DILocation(line: 95, column: 11, scope: !12)
!136 = !DILocation(line: 95, column: 16, scope: !12)
!137 = !DILocation(line: 96, column: 5, scope: !12)
!138 = distinct !{!138, !116, !139}
!139 = !DILocation(line: 97, column: 4, scope: !12)
!140 = !DILocation(line: 98, column: 17, scope: !12)
!141 = !DILocation(line: 98, column: 13, scope: !12)
!142 = !DILocation(line: 98, column: 8, scope: !12)
!143 = !DILocation(line: 98, column: 9, scope: !12)
!144 = !DILocation(line: 98, column: 4, scope: !12)
!145 = !DILocation(line: 98, column: 12, scope: !12)
!146 = !DILocation(line: 99, column: 11, scope: !12)
!147 = !DILocation(line: 99, column: 8, scope: !12)
!148 = !DILocation(line: 99, column: 4, scope: !12)
!149 = !DILocation(line: 99, column: 10, scope: !12)
!150 = !DILocation(line: 100, column: 11, scope: !12)
!151 = !DILocation(line: 102, column: 8, scope: !12)
!152 = !DILocation(line: 102, column: 11, scope: !12)
!153 = !DILocation(line: 102, column: 10, scope: !12)
!154 = !DILocation(line: 102, column: 12, scope: !12)
!155 = !DILocation(line: 102, column: 18, scope: !12)
!156 = !DILocation(line: 102, column: 20, scope: !12)
!157 = !DILocation(line: 102, column: 19, scope: !12)
!158 = !DILocation(line: 102, column: 15, scope: !12)
!159 = !DILocation(line: 103, column: 20, scope: !12)
!160 = !DILocation(line: 103, column: 12, scope: !12)
!161 = !DILocation(line: 103, column: 5, scope: !12)
!162 = !DILocation(line: 103, column: 19, scope: !12)
!163 = !DILocation(line: 104, column: 22, scope: !12)
!164 = !DILocation(line: 104, column: 12, scope: !12)
!165 = !DILocation(line: 104, column: 18, scope: !12)
!166 = !DILocation(line: 104, column: 5, scope: !12)
!167 = !DILocation(line: 104, column: 21, scope: !12)
!168 = !DILocation(line: 105, column: 8, scope: !12)
!169 = !DILocation(line: 105, column: 9, scope: !12)
!170 = !DILocation(line: 105, column: 7, scope: !12)
!171 = !DILocation(line: 106, column: 4, scope: !12)
!172 = !DILocation(line: 107, column: 20, scope: !12)
!173 = !DILocation(line: 107, column: 21, scope: !12)
!174 = !DILocation(line: 107, column: 12, scope: !12)
!175 = !DILocation(line: 107, column: 5, scope: !12)
!176 = !DILocation(line: 107, column: 19, scope: !12)
!177 = !DILocation(line: 108, column: 22, scope: !12)
!178 = !DILocation(line: 108, column: 12, scope: !12)
!179 = !DILocation(line: 108, column: 18, scope: !12)
!180 = !DILocation(line: 108, column: 5, scope: !12)
!181 = !DILocation(line: 108, column: 21, scope: !12)
!182 = !DILocation(line: 109, column: 7, scope: !12)
!183 = !DILocation(line: 109, column: 6, scope: !12)
!184 = distinct !{!184, !21, !185}
!185 = !DILocation(line: 112, column: 2, scope: !12)
!186 = !DILocation(line: 113, column: 1, scope: !12)
!187 = distinct !DISubprogram(name: "main", scope: !13, file: !13, line: 115, type: !14, scopeLine: 116, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!188 = !DILocation(line: 117, column: 3, scope: !187)
!189 = !DILocation(line: 118, column: 1, scope: !187)
