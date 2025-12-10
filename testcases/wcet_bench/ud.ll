; ModuleID = '/workspaces/llvmta/testcases/wcet_bench/ud.c'
source_filename = "/workspaces/llvmta/testcases/wcet_bench/ud.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv4t-unknown-unknown"

@a = dso_local global [50 x [50 x i32]] zeroinitializer, align 4
@b = dso_local global [50 x i32] zeroinitializer, align 4
@x = dso_local global [50 x i32] zeroinitializer, align 4

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @main() #0 !dbg !12 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %nmax = alloca i32, align 4
  %n = alloca i32, align 4
  %chkerr = alloca i32, align 4
  %w = alloca i32, align 4
  store i32 50, i32* %nmax, align 4, !dbg !16
  store i32 5, i32* %n, align 4, !dbg !17
  store i32 0, i32* %i, align 4, !dbg !18
  br label %for.cond, !dbg !19

for.cond:                                         ; preds = %for.inc15, %entry
  %0 = load i32, i32* %i, align 4, !dbg !20
  %1 = load i32, i32* %n, align 4, !dbg !21
  %cmp = icmp sle i32 %0, %1, !dbg !22
  br i1 %cmp, label %for.body, label %for.end17, !dbg !23

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %w, align 4, !dbg !24
  store i32 0, i32* %j, align 4, !dbg !25
  br label %for.cond1, !dbg !26

for.cond1:                                        ; preds = %for.inc, %for.body
  %2 = load i32, i32* %j, align 4, !dbg !27
  %3 = load i32, i32* %n, align 4, !dbg !28
  %cmp2 = icmp sle i32 %2, %3, !dbg !29
  br i1 %cmp2, label %for.body3, label %for.end, !dbg !30

for.body3:                                        ; preds = %for.cond1
  %4 = load i32, i32* %i, align 4, !dbg !31
  %add = add nsw i32 %4, 1, !dbg !32
  %5 = load i32, i32* %j, align 4, !dbg !33
  %add4 = add nsw i32 %5, 1, !dbg !34
  %add5 = add nsw i32 %add, %add4, !dbg !35
  %6 = load i32, i32* %i, align 4, !dbg !36
  %arrayidx = getelementptr inbounds [50 x [50 x i32]], [50 x [50 x i32]]* @a, i32 0, i32 %6, !dbg !37
  %7 = load i32, i32* %j, align 4, !dbg !38
  %arrayidx6 = getelementptr inbounds [50 x i32], [50 x i32]* %arrayidx, i32 0, i32 %7, !dbg !37
  store i32 %add5, i32* %arrayidx6, align 4, !dbg !39
  %8 = load i32, i32* %i, align 4, !dbg !40
  %9 = load i32, i32* %j, align 4, !dbg !41
  %cmp7 = icmp eq i32 %8, %9, !dbg !42
  br i1 %cmp7, label %if.then, label %if.end, !dbg !40

if.then:                                          ; preds = %for.body3
  %10 = load i32, i32* %i, align 4, !dbg !43
  %arrayidx8 = getelementptr inbounds [50 x [50 x i32]], [50 x [50 x i32]]* @a, i32 0, i32 %10, !dbg !44
  %11 = load i32, i32* %j, align 4, !dbg !45
  %arrayidx9 = getelementptr inbounds [50 x i32], [50 x i32]* %arrayidx8, i32 0, i32 %11, !dbg !44
  %12 = load i32, i32* %arrayidx9, align 4, !dbg !46
  %conv = sitofp i32 %12 to double, !dbg !46
  %mul = fmul double %conv, 2.000000e+00, !dbg !46
  %conv10 = fptosi double %mul to i32, !dbg !46
  store i32 %conv10, i32* %arrayidx9, align 4, !dbg !46
  br label %if.end, !dbg !44

if.end:                                           ; preds = %if.then, %for.body3
  %13 = load i32, i32* %i, align 4, !dbg !47
  %arrayidx11 = getelementptr inbounds [50 x [50 x i32]], [50 x [50 x i32]]* @a, i32 0, i32 %13, !dbg !48
  %14 = load i32, i32* %j, align 4, !dbg !49
  %arrayidx12 = getelementptr inbounds [50 x i32], [50 x i32]* %arrayidx11, i32 0, i32 %14, !dbg !48
  %15 = load i32, i32* %arrayidx12, align 4, !dbg !48
  %16 = load i32, i32* %w, align 4, !dbg !50
  %add13 = add nsw i32 %16, %15, !dbg !50
  store i32 %add13, i32* %w, align 4, !dbg !50
  br label %for.inc, !dbg !51

for.inc:                                          ; preds = %if.end
  %17 = load i32, i32* %j, align 4, !dbg !52
  %inc = add nsw i32 %17, 1, !dbg !52
  store i32 %inc, i32* %j, align 4, !dbg !52
  br label %for.cond1, !dbg !30, !llvm.loop !53

for.end:                                          ; preds = %for.cond1
  %18 = load i32, i32* %w, align 4, !dbg !55
  %19 = load i32, i32* %i, align 4, !dbg !56
  %arrayidx14 = getelementptr inbounds [50 x i32], [50 x i32]* @b, i32 0, i32 %19, !dbg !57
  store i32 %18, i32* %arrayidx14, align 4, !dbg !58
  br label %for.inc15, !dbg !59

for.inc15:                                        ; preds = %for.end
  %20 = load i32, i32* %i, align 4, !dbg !60
  %inc16 = add nsw i32 %20, 1, !dbg !60
  store i32 %inc16, i32* %i, align 4, !dbg !60
  br label %for.cond, !dbg !23, !llvm.loop !61

for.end17:                                        ; preds = %for.cond
  %21 = load i32, i32* %nmax, align 4, !dbg !62
  %22 = load i32, i32* %n, align 4, !dbg !63
  %call = call arm_aapcs_vfpcc i32 @ludcmp(i32 noundef %21, i32 noundef %22) #1, !dbg !64
  store i32 %call, i32* %chkerr, align 4, !dbg !65
  ret void, !dbg !66
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @ludcmp(i32 noundef %nmax, i32 noundef %n) #0 !dbg !67 {
entry:
  %nmax.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %w = alloca i32, align 4
  %y = alloca [100 x i32], align 4
  store i32 %nmax, i32* %nmax.addr, align 4
  store i32 %n, i32* %n.addr, align 4
  store i32 0, i32* %i, align 4, !dbg !68
  br label %for.cond, !dbg !69

for.cond:                                         ; preds = %for.inc46, %entry
  %0 = load i32, i32* %i, align 4, !dbg !70
  %1 = load i32, i32* %n.addr, align 4, !dbg !71
  %cmp = icmp slt i32 %0, %1, !dbg !72
  br i1 %cmp, label %for.body, label %for.end48, !dbg !73

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4, !dbg !74
  %add = add nsw i32 %2, 1, !dbg !75
  store i32 %add, i32* %j, align 4, !dbg !76
  br label %for.cond1, !dbg !77

for.cond1:                                        ; preds = %for.inc17, %for.body
  %3 = load i32, i32* %j, align 4, !dbg !78
  %4 = load i32, i32* %n.addr, align 4, !dbg !79
  %cmp2 = icmp sle i32 %3, %4, !dbg !80
  br i1 %cmp2, label %for.body3, label %for.end19, !dbg !81

for.body3:                                        ; preds = %for.cond1
  %5 = load i32, i32* %j, align 4, !dbg !82
  %arrayidx = getelementptr inbounds [50 x [50 x i32]], [50 x [50 x i32]]* @a, i32 0, i32 %5, !dbg !83
  %6 = load i32, i32* %i, align 4, !dbg !84
  %arrayidx4 = getelementptr inbounds [50 x i32], [50 x i32]* %arrayidx, i32 0, i32 %6, !dbg !83
  %7 = load i32, i32* %arrayidx4, align 4, !dbg !83
  store i32 %7, i32* %w, align 4, !dbg !85
  %8 = load i32, i32* %i, align 4, !dbg !86
  %cmp5 = icmp ne i32 %8, 0, !dbg !87
  br i1 %cmp5, label %if.then, label %if.end, !dbg !86

if.then:                                          ; preds = %for.body3
  store i32 0, i32* %k, align 4, !dbg !88
  br label %for.cond6, !dbg !89

for.cond6:                                        ; preds = %for.inc, %if.then
  %9 = load i32, i32* %k, align 4, !dbg !90
  %10 = load i32, i32* %i, align 4, !dbg !91
  %cmp7 = icmp slt i32 %9, %10, !dbg !92
  br i1 %cmp7, label %for.body8, label %for.end, !dbg !93

for.body8:                                        ; preds = %for.cond6
  %11 = load i32, i32* %j, align 4, !dbg !94
  %arrayidx9 = getelementptr inbounds [50 x [50 x i32]], [50 x [50 x i32]]* @a, i32 0, i32 %11, !dbg !95
  %12 = load i32, i32* %k, align 4, !dbg !96
  %arrayidx10 = getelementptr inbounds [50 x i32], [50 x i32]* %arrayidx9, i32 0, i32 %12, !dbg !95
  %13 = load i32, i32* %arrayidx10, align 4, !dbg !95
  %14 = load i32, i32* %k, align 4, !dbg !97
  %arrayidx11 = getelementptr inbounds [50 x [50 x i32]], [50 x [50 x i32]]* @a, i32 0, i32 %14, !dbg !98
  %15 = load i32, i32* %i, align 4, !dbg !99
  %arrayidx12 = getelementptr inbounds [50 x i32], [50 x i32]* %arrayidx11, i32 0, i32 %15, !dbg !98
  %16 = load i32, i32* %arrayidx12, align 4, !dbg !98
  %mul = mul nsw i32 %13, %16, !dbg !100
  %17 = load i32, i32* %w, align 4, !dbg !101
  %sub = sub nsw i32 %17, %mul, !dbg !101
  store i32 %sub, i32* %w, align 4, !dbg !101
  br label %for.inc, !dbg !102

for.inc:                                          ; preds = %for.body8
  %18 = load i32, i32* %k, align 4, !dbg !103
  %inc = add nsw i32 %18, 1, !dbg !103
  store i32 %inc, i32* %k, align 4, !dbg !103
  br label %for.cond6, !dbg !93, !llvm.loop !104

for.end:                                          ; preds = %for.cond6
  br label %if.end, !dbg !105

if.end:                                           ; preds = %for.end, %for.body3
  %19 = load i32, i32* %w, align 4, !dbg !106
  %20 = load i32, i32* %i, align 4, !dbg !107
  %arrayidx13 = getelementptr inbounds [50 x [50 x i32]], [50 x [50 x i32]]* @a, i32 0, i32 %20, !dbg !108
  %21 = load i32, i32* %i, align 4, !dbg !109
  %arrayidx14 = getelementptr inbounds [50 x i32], [50 x i32]* %arrayidx13, i32 0, i32 %21, !dbg !108
  %22 = load i32, i32* %arrayidx14, align 4, !dbg !108
  %div = sdiv i32 %19, %22, !dbg !110
  %23 = load i32, i32* %j, align 4, !dbg !111
  %arrayidx15 = getelementptr inbounds [50 x [50 x i32]], [50 x [50 x i32]]* @a, i32 0, i32 %23, !dbg !112
  %24 = load i32, i32* %i, align 4, !dbg !113
  %arrayidx16 = getelementptr inbounds [50 x i32], [50 x i32]* %arrayidx15, i32 0, i32 %24, !dbg !112
  store i32 %div, i32* %arrayidx16, align 4, !dbg !114
  br label %for.inc17, !dbg !115

for.inc17:                                        ; preds = %if.end
  %25 = load i32, i32* %j, align 4, !dbg !116
  %inc18 = add nsw i32 %25, 1, !dbg !116
  store i32 %inc18, i32* %j, align 4, !dbg !116
  br label %for.cond1, !dbg !81, !llvm.loop !117

for.end19:                                        ; preds = %for.cond1
  %26 = load i32, i32* %i, align 4, !dbg !118
  %add20 = add nsw i32 %26, 1, !dbg !119
  store i32 %add20, i32* %j, align 4, !dbg !120
  br label %for.cond21, !dbg !121

for.cond21:                                       ; preds = %for.inc43, %for.end19
  %27 = load i32, i32* %j, align 4, !dbg !122
  %28 = load i32, i32* %n.addr, align 4, !dbg !123
  %cmp22 = icmp sle i32 %27, %28, !dbg !124
  br i1 %cmp22, label %for.body23, label %for.end45, !dbg !125

for.body23:                                       ; preds = %for.cond21
  %29 = load i32, i32* %i, align 4, !dbg !126
  %add24 = add nsw i32 %29, 1, !dbg !127
  %arrayidx25 = getelementptr inbounds [50 x [50 x i32]], [50 x [50 x i32]]* @a, i32 0, i32 %add24, !dbg !128
  %30 = load i32, i32* %j, align 4, !dbg !129
  %arrayidx26 = getelementptr inbounds [50 x i32], [50 x i32]* %arrayidx25, i32 0, i32 %30, !dbg !128
  %31 = load i32, i32* %arrayidx26, align 4, !dbg !128
  store i32 %31, i32* %w, align 4, !dbg !130
  store i32 0, i32* %k, align 4, !dbg !131
  br label %for.cond27, !dbg !132

for.cond27:                                       ; preds = %for.inc37, %for.body23
  %32 = load i32, i32* %k, align 4, !dbg !133
  %33 = load i32, i32* %i, align 4, !dbg !134
  %cmp28 = icmp sle i32 %32, %33, !dbg !135
  br i1 %cmp28, label %for.body29, label %for.end39, !dbg !136

for.body29:                                       ; preds = %for.cond27
  %34 = load i32, i32* %i, align 4, !dbg !137
  %add30 = add nsw i32 %34, 1, !dbg !138
  %arrayidx31 = getelementptr inbounds [50 x [50 x i32]], [50 x [50 x i32]]* @a, i32 0, i32 %add30, !dbg !139
  %35 = load i32, i32* %k, align 4, !dbg !140
  %arrayidx32 = getelementptr inbounds [50 x i32], [50 x i32]* %arrayidx31, i32 0, i32 %35, !dbg !139
  %36 = load i32, i32* %arrayidx32, align 4, !dbg !139
  %37 = load i32, i32* %k, align 4, !dbg !141
  %arrayidx33 = getelementptr inbounds [50 x [50 x i32]], [50 x [50 x i32]]* @a, i32 0, i32 %37, !dbg !142
  %38 = load i32, i32* %j, align 4, !dbg !143
  %arrayidx34 = getelementptr inbounds [50 x i32], [50 x i32]* %arrayidx33, i32 0, i32 %38, !dbg !142
  %39 = load i32, i32* %arrayidx34, align 4, !dbg !142
  %mul35 = mul nsw i32 %36, %39, !dbg !144
  %40 = load i32, i32* %w, align 4, !dbg !145
  %sub36 = sub nsw i32 %40, %mul35, !dbg !145
  store i32 %sub36, i32* %w, align 4, !dbg !145
  br label %for.inc37, !dbg !146

for.inc37:                                        ; preds = %for.body29
  %41 = load i32, i32* %k, align 4, !dbg !147
  %inc38 = add nsw i32 %41, 1, !dbg !147
  store i32 %inc38, i32* %k, align 4, !dbg !147
  br label %for.cond27, !dbg !136, !llvm.loop !148

for.end39:                                        ; preds = %for.cond27
  %42 = load i32, i32* %w, align 4, !dbg !150
  %43 = load i32, i32* %i, align 4, !dbg !151
  %add40 = add nsw i32 %43, 1, !dbg !152
  %arrayidx41 = getelementptr inbounds [50 x [50 x i32]], [50 x [50 x i32]]* @a, i32 0, i32 %add40, !dbg !153
  %44 = load i32, i32* %j, align 4, !dbg !154
  %arrayidx42 = getelementptr inbounds [50 x i32], [50 x i32]* %arrayidx41, i32 0, i32 %44, !dbg !153
  store i32 %42, i32* %arrayidx42, align 4, !dbg !155
  br label %for.inc43, !dbg !156

for.inc43:                                        ; preds = %for.end39
  %45 = load i32, i32* %j, align 4, !dbg !157
  %inc44 = add nsw i32 %45, 1, !dbg !157
  store i32 %inc44, i32* %j, align 4, !dbg !157
  br label %for.cond21, !dbg !125, !llvm.loop !158

for.end45:                                        ; preds = %for.cond21
  br label %for.inc46, !dbg !159

for.inc46:                                        ; preds = %for.end45
  %46 = load i32, i32* %i, align 4, !dbg !160
  %inc47 = add nsw i32 %46, 1, !dbg !160
  store i32 %inc47, i32* %i, align 4, !dbg !160
  br label %for.cond, !dbg !73, !llvm.loop !161

for.end48:                                        ; preds = %for.cond
  %47 = load i32, i32* getelementptr inbounds ([50 x i32], [50 x i32]* @b, i32 0, i32 0), align 4, !dbg !162
  %arrayidx49 = getelementptr inbounds [100 x i32], [100 x i32]* %y, i32 0, i32 0, !dbg !163
  store i32 %47, i32* %arrayidx49, align 4, !dbg !164
  store i32 1, i32* %i, align 4, !dbg !165
  br label %for.cond50, !dbg !166

for.cond50:                                       ; preds = %for.inc66, %for.end48
  %48 = load i32, i32* %i, align 4, !dbg !167
  %49 = load i32, i32* %n.addr, align 4, !dbg !168
  %cmp51 = icmp sle i32 %48, %49, !dbg !169
  br i1 %cmp51, label %for.body52, label %for.end68, !dbg !170

for.body52:                                       ; preds = %for.cond50
  %50 = load i32, i32* %i, align 4, !dbg !171
  %arrayidx53 = getelementptr inbounds [50 x i32], [50 x i32]* @b, i32 0, i32 %50, !dbg !172
  %51 = load i32, i32* %arrayidx53, align 4, !dbg !172
  store i32 %51, i32* %w, align 4, !dbg !173
  store i32 0, i32* %j, align 4, !dbg !174
  br label %for.cond54, !dbg !175

for.cond54:                                       ; preds = %for.inc62, %for.body52
  %52 = load i32, i32* %j, align 4, !dbg !176
  %53 = load i32, i32* %i, align 4, !dbg !177
  %cmp55 = icmp slt i32 %52, %53, !dbg !178
  br i1 %cmp55, label %for.body56, label %for.end64, !dbg !179

for.body56:                                       ; preds = %for.cond54
  %54 = load i32, i32* %i, align 4, !dbg !180
  %arrayidx57 = getelementptr inbounds [50 x [50 x i32]], [50 x [50 x i32]]* @a, i32 0, i32 %54, !dbg !181
  %55 = load i32, i32* %j, align 4, !dbg !182
  %arrayidx58 = getelementptr inbounds [50 x i32], [50 x i32]* %arrayidx57, i32 0, i32 %55, !dbg !181
  %56 = load i32, i32* %arrayidx58, align 4, !dbg !181
  %57 = load i32, i32* %j, align 4, !dbg !183
  %arrayidx59 = getelementptr inbounds [100 x i32], [100 x i32]* %y, i32 0, i32 %57, !dbg !184
  %58 = load i32, i32* %arrayidx59, align 4, !dbg !184
  %mul60 = mul nsw i32 %56, %58, !dbg !185
  %59 = load i32, i32* %w, align 4, !dbg !186
  %sub61 = sub nsw i32 %59, %mul60, !dbg !186
  store i32 %sub61, i32* %w, align 4, !dbg !186
  br label %for.inc62, !dbg !187

for.inc62:                                        ; preds = %for.body56
  %60 = load i32, i32* %j, align 4, !dbg !188
  %inc63 = add nsw i32 %60, 1, !dbg !188
  store i32 %inc63, i32* %j, align 4, !dbg !188
  br label %for.cond54, !dbg !179, !llvm.loop !189

for.end64:                                        ; preds = %for.cond54
  %61 = load i32, i32* %w, align 4, !dbg !191
  %62 = load i32, i32* %i, align 4, !dbg !192
  %arrayidx65 = getelementptr inbounds [100 x i32], [100 x i32]* %y, i32 0, i32 %62, !dbg !193
  store i32 %61, i32* %arrayidx65, align 4, !dbg !194
  br label %for.inc66, !dbg !195

for.inc66:                                        ; preds = %for.end64
  %63 = load i32, i32* %i, align 4, !dbg !196
  %inc67 = add nsw i32 %63, 1, !dbg !196
  store i32 %inc67, i32* %i, align 4, !dbg !196
  br label %for.cond50, !dbg !170, !llvm.loop !197

for.end68:                                        ; preds = %for.cond50
  %64 = load i32, i32* %n.addr, align 4, !dbg !198
  %arrayidx69 = getelementptr inbounds [100 x i32], [100 x i32]* %y, i32 0, i32 %64, !dbg !199
  %65 = load i32, i32* %arrayidx69, align 4, !dbg !199
  %66 = load i32, i32* %n.addr, align 4, !dbg !200
  %arrayidx70 = getelementptr inbounds [50 x [50 x i32]], [50 x [50 x i32]]* @a, i32 0, i32 %66, !dbg !201
  %67 = load i32, i32* %n.addr, align 4, !dbg !202
  %arrayidx71 = getelementptr inbounds [50 x i32], [50 x i32]* %arrayidx70, i32 0, i32 %67, !dbg !201
  %68 = load i32, i32* %arrayidx71, align 4, !dbg !201
  %div72 = sdiv i32 %65, %68, !dbg !203
  %69 = load i32, i32* %n.addr, align 4, !dbg !204
  %arrayidx73 = getelementptr inbounds [50 x i32], [50 x i32]* @x, i32 0, i32 %69, !dbg !205
  store i32 %div72, i32* %arrayidx73, align 4, !dbg !206
  %70 = load i32, i32* %n.addr, align 4, !dbg !207
  %sub74 = sub nsw i32 %70, 1, !dbg !208
  store i32 %sub74, i32* %i, align 4, !dbg !209
  br label %for.cond75, !dbg !210

for.cond75:                                       ; preds = %for.inc95, %for.end68
  %71 = load i32, i32* %i, align 4, !dbg !211
  %cmp76 = icmp sge i32 %71, 0, !dbg !212
  br i1 %cmp76, label %for.body77, label %for.end96, !dbg !213

for.body77:                                       ; preds = %for.cond75
  %72 = load i32, i32* %i, align 4, !dbg !214
  %arrayidx78 = getelementptr inbounds [100 x i32], [100 x i32]* %y, i32 0, i32 %72, !dbg !215
  %73 = load i32, i32* %arrayidx78, align 4, !dbg !215
  store i32 %73, i32* %w, align 4, !dbg !216
  %74 = load i32, i32* %i, align 4, !dbg !217
  %add79 = add nsw i32 %74, 1, !dbg !218
  store i32 %add79, i32* %j, align 4, !dbg !219
  br label %for.cond80, !dbg !220

for.cond80:                                       ; preds = %for.inc88, %for.body77
  %75 = load i32, i32* %j, align 4, !dbg !221
  %76 = load i32, i32* %n.addr, align 4, !dbg !222
  %cmp81 = icmp sle i32 %75, %76, !dbg !223
  br i1 %cmp81, label %for.body82, label %for.end90, !dbg !224

for.body82:                                       ; preds = %for.cond80
  %77 = load i32, i32* %i, align 4, !dbg !225
  %arrayidx83 = getelementptr inbounds [50 x [50 x i32]], [50 x [50 x i32]]* @a, i32 0, i32 %77, !dbg !226
  %78 = load i32, i32* %j, align 4, !dbg !227
  %arrayidx84 = getelementptr inbounds [50 x i32], [50 x i32]* %arrayidx83, i32 0, i32 %78, !dbg !226
  %79 = load i32, i32* %arrayidx84, align 4, !dbg !226
  %80 = load i32, i32* %j, align 4, !dbg !228
  %arrayidx85 = getelementptr inbounds [50 x i32], [50 x i32]* @x, i32 0, i32 %80, !dbg !229
  %81 = load i32, i32* %arrayidx85, align 4, !dbg !229
  %mul86 = mul nsw i32 %79, %81, !dbg !230
  %82 = load i32, i32* %w, align 4, !dbg !231
  %sub87 = sub nsw i32 %82, %mul86, !dbg !231
  store i32 %sub87, i32* %w, align 4, !dbg !231
  br label %for.inc88, !dbg !232

for.inc88:                                        ; preds = %for.body82
  %83 = load i32, i32* %j, align 4, !dbg !233
  %inc89 = add nsw i32 %83, 1, !dbg !233
  store i32 %inc89, i32* %j, align 4, !dbg !233
  br label %for.cond80, !dbg !224, !llvm.loop !234

for.end90:                                        ; preds = %for.cond80
  %84 = load i32, i32* %w, align 4, !dbg !236
  %85 = load i32, i32* %i, align 4, !dbg !237
  %arrayidx91 = getelementptr inbounds [50 x [50 x i32]], [50 x [50 x i32]]* @a, i32 0, i32 %85, !dbg !238
  %86 = load i32, i32* %i, align 4, !dbg !239
  %arrayidx92 = getelementptr inbounds [50 x i32], [50 x i32]* %arrayidx91, i32 0, i32 %86, !dbg !238
  %87 = load i32, i32* %arrayidx92, align 4, !dbg !238
  %div93 = sdiv i32 %84, %87, !dbg !240
  %88 = load i32, i32* %i, align 4, !dbg !241
  %arrayidx94 = getelementptr inbounds [50 x i32], [50 x i32]* @x, i32 0, i32 %88, !dbg !242
  store i32 %div93, i32* %arrayidx94, align 4, !dbg !243
  br label %for.inc95, !dbg !244

for.inc95:                                        ; preds = %for.end90
  %89 = load i32, i32* %i, align 4, !dbg !245
  %dec = add nsw i32 %89, -1, !dbg !245
  store i32 %dec, i32* %i, align 4, !dbg !245
  br label %for.cond75, !dbg !213, !llvm.loop !246

for.end96:                                        ; preds = %for.cond75
  ret i32 0, !dbg !247
}

attributes #0 = { noinline nounwind "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #1 = { nobuiltin "no-builtins" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 14.0.6 (git@github.com:RTS-SYSU/LLVM-TA.git b7f9c4ccdebc6c37532ddd772889e5f0ff989c79)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/workspaces/llvmta/testcases/wcet_bench/ud.c", directory: "/workspaces/llvmta/testcases/util_scripts", checksumkind: CSK_MD5, checksum: "b743c87bef8e298f1add3f90fbe17a17")
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
!12 = distinct !DISubprogram(name: "main", scope: !13, file: !13, line: 91, type: !14, scopeLine: 92, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!13 = !DIFile(filename: "wcet_bench/ud.c", directory: "/workspaces/llvmta/testcases", checksumkind: CSK_MD5, checksum: "b743c87bef8e298f1add3f90fbe17a17")
!14 = !DISubroutineType(types: !15)
!15 = !{}
!16 = !DILocation(line: 93, column: 18, scope: !12)
!17 = !DILocation(line: 93, column: 29, scope: !12)
!18 = !DILocation(line: 99, column: 9, scope: !12)
!19 = !DILocation(line: 99, column: 7, scope: !12)
!20 = !DILocation(line: 99, column: 14, scope: !12)
!21 = !DILocation(line: 99, column: 19, scope: !12)
!22 = !DILocation(line: 99, column: 16, scope: !12)
!23 = !DILocation(line: 99, column: 3, scope: !12)
!24 = !DILocation(line: 101, column: 9, scope: !12)
!25 = !DILocation(line: 102, column: 13, scope: !12)
!26 = !DILocation(line: 102, column: 11, scope: !12)
!27 = !DILocation(line: 102, column: 18, scope: !12)
!28 = !DILocation(line: 102, column: 23, scope: !12)
!29 = !DILocation(line: 102, column: 20, scope: !12)
!30 = !DILocation(line: 102, column: 7, scope: !12)
!31 = !DILocation(line: 104, column: 22, scope: !12)
!32 = !DILocation(line: 104, column: 24, scope: !12)
!33 = !DILocation(line: 104, column: 32, scope: !12)
!34 = !DILocation(line: 104, column: 34, scope: !12)
!35 = !DILocation(line: 104, column: 29, scope: !12)
!36 = !DILocation(line: 104, column: 13, scope: !12)
!37 = !DILocation(line: 104, column: 11, scope: !12)
!38 = !DILocation(line: 104, column: 16, scope: !12)
!39 = !DILocation(line: 104, column: 19, scope: !12)
!40 = !DILocation(line: 105, column: 14, scope: !12)
!41 = !DILocation(line: 105, column: 19, scope: !12)
!42 = !DILocation(line: 105, column: 16, scope: !12)
!43 = !DILocation(line: 106, column: 15, scope: !12)
!44 = !DILocation(line: 106, column: 13, scope: !12)
!45 = !DILocation(line: 106, column: 18, scope: !12)
!46 = !DILocation(line: 106, column: 21, scope: !12)
!47 = !DILocation(line: 107, column: 18, scope: !12)
!48 = !DILocation(line: 107, column: 16, scope: !12)
!49 = !DILocation(line: 107, column: 21, scope: !12)
!50 = !DILocation(line: 107, column: 13, scope: !12)
!51 = !DILocation(line: 108, column: 9, scope: !12)
!52 = !DILocation(line: 102, column: 27, scope: !12)
!53 = distinct !{!53, !30, !51, !54}
!54 = !{!"llvm.loop.mustprogress"}
!55 = !DILocation(line: 109, column: 14, scope: !12)
!56 = !DILocation(line: 109, column: 9, scope: !12)
!57 = !DILocation(line: 109, column: 7, scope: !12)
!58 = !DILocation(line: 109, column: 12, scope: !12)
!59 = !DILocation(line: 110, column: 5, scope: !12)
!60 = !DILocation(line: 99, column: 23, scope: !12)
!61 = distinct !{!61, !23, !59, !54}
!62 = !DILocation(line: 113, column: 19, scope: !12)
!63 = !DILocation(line: 113, column: 24, scope: !12)
!64 = !DILocation(line: 113, column: 12, scope: !12)
!65 = !DILocation(line: 113, column: 10, scope: !12)
!66 = !DILocation(line: 114, column: 1, scope: !12)
!67 = distinct !DISubprogram(name: "ludcmp", scope: !13, file: !13, line: 116, type: !14, scopeLine: 117, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!68 = !DILocation(line: 122, column: 9, scope: !67)
!69 = !DILocation(line: 122, column: 7, scope: !67)
!70 = !DILocation(line: 122, column: 14, scope: !67)
!71 = !DILocation(line: 122, column: 18, scope: !67)
!72 = !DILocation(line: 122, column: 16, scope: !67)
!73 = !DILocation(line: 122, column: 3, scope: !67)
!74 = !DILocation(line: 125, column: 15, scope: !67)
!75 = !DILocation(line: 125, column: 16, scope: !67)
!76 = !DILocation(line: 125, column: 13, scope: !67)
!77 = !DILocation(line: 125, column: 11, scope: !67)
!78 = !DILocation(line: 125, column: 20, scope: !67)
!79 = !DILocation(line: 125, column: 25, scope: !67)
!80 = !DILocation(line: 125, column: 22, scope: !67)
!81 = !DILocation(line: 125, column: 7, scope: !67)
!82 = !DILocation(line: 127, column: 17, scope: !67)
!83 = !DILocation(line: 127, column: 15, scope: !67)
!84 = !DILocation(line: 127, column: 20, scope: !67)
!85 = !DILocation(line: 127, column: 13, scope: !67)
!86 = !DILocation(line: 128, column: 14, scope: !67)
!87 = !DILocation(line: 128, column: 16, scope: !67)
!88 = !DILocation(line: 131, column: 19, scope: !67)
!89 = !DILocation(line: 131, column: 17, scope: !67)
!90 = !DILocation(line: 131, column: 24, scope: !67)
!91 = !DILocation(line: 131, column: 28, scope: !67)
!92 = !DILocation(line: 131, column: 26, scope: !67)
!93 = !DILocation(line: 131, column: 13, scope: !67)
!94 = !DILocation(line: 132, column: 22, scope: !67)
!95 = !DILocation(line: 132, column: 20, scope: !67)
!96 = !DILocation(line: 132, column: 25, scope: !67)
!97 = !DILocation(line: 132, column: 32, scope: !67)
!98 = !DILocation(line: 132, column: 30, scope: !67)
!99 = !DILocation(line: 132, column: 35, scope: !67)
!100 = !DILocation(line: 132, column: 28, scope: !67)
!101 = !DILocation(line: 132, column: 17, scope: !67)
!102 = !DILocation(line: 132, column: 15, scope: !67)
!103 = !DILocation(line: 131, column: 32, scope: !67)
!104 = distinct !{!104, !93, !105, !54}
!105 = !DILocation(line: 132, column: 36, scope: !67)
!106 = !DILocation(line: 133, column: 21, scope: !67)
!107 = !DILocation(line: 133, column: 27, scope: !67)
!108 = !DILocation(line: 133, column: 25, scope: !67)
!109 = !DILocation(line: 133, column: 30, scope: !67)
!110 = !DILocation(line: 133, column: 23, scope: !67)
!111 = !DILocation(line: 133, column: 13, scope: !67)
!112 = !DILocation(line: 133, column: 11, scope: !67)
!113 = !DILocation(line: 133, column: 16, scope: !67)
!114 = !DILocation(line: 133, column: 19, scope: !67)
!115 = !DILocation(line: 134, column: 9, scope: !67)
!116 = !DILocation(line: 125, column: 29, scope: !67)
!117 = distinct !{!117, !81, !115, !54}
!118 = !DILocation(line: 135, column: 15, scope: !67)
!119 = !DILocation(line: 135, column: 16, scope: !67)
!120 = !DILocation(line: 135, column: 13, scope: !67)
!121 = !DILocation(line: 135, column: 11, scope: !67)
!122 = !DILocation(line: 135, column: 20, scope: !67)
!123 = !DILocation(line: 135, column: 25, scope: !67)
!124 = !DILocation(line: 135, column: 22, scope: !67)
!125 = !DILocation(line: 135, column: 7, scope: !67)
!126 = !DILocation(line: 137, column: 17, scope: !67)
!127 = !DILocation(line: 137, column: 18, scope: !67)
!128 = !DILocation(line: 137, column: 15, scope: !67)
!129 = !DILocation(line: 137, column: 22, scope: !67)
!130 = !DILocation(line: 137, column: 13, scope: !67)
!131 = !DILocation(line: 138, column: 17, scope: !67)
!132 = !DILocation(line: 138, column: 15, scope: !67)
!133 = !DILocation(line: 138, column: 22, scope: !67)
!134 = !DILocation(line: 138, column: 27, scope: !67)
!135 = !DILocation(line: 138, column: 24, scope: !67)
!136 = !DILocation(line: 138, column: 11, scope: !67)
!137 = !DILocation(line: 139, column: 20, scope: !67)
!138 = !DILocation(line: 139, column: 21, scope: !67)
!139 = !DILocation(line: 139, column: 18, scope: !67)
!140 = !DILocation(line: 139, column: 25, scope: !67)
!141 = !DILocation(line: 139, column: 32, scope: !67)
!142 = !DILocation(line: 139, column: 30, scope: !67)
!143 = !DILocation(line: 139, column: 35, scope: !67)
!144 = !DILocation(line: 139, column: 28, scope: !67)
!145 = !DILocation(line: 139, column: 15, scope: !67)
!146 = !DILocation(line: 139, column: 13, scope: !67)
!147 = !DILocation(line: 138, column: 31, scope: !67)
!148 = distinct !{!148, !136, !149, !54}
!149 = !DILocation(line: 139, column: 36, scope: !67)
!150 = !DILocation(line: 140, column: 23, scope: !67)
!151 = !DILocation(line: 140, column: 13, scope: !67)
!152 = !DILocation(line: 140, column: 14, scope: !67)
!153 = !DILocation(line: 140, column: 11, scope: !67)
!154 = !DILocation(line: 140, column: 18, scope: !67)
!155 = !DILocation(line: 140, column: 21, scope: !67)
!156 = !DILocation(line: 141, column: 9, scope: !67)
!157 = !DILocation(line: 135, column: 29, scope: !67)
!158 = distinct !{!158, !125, !156, !54}
!159 = !DILocation(line: 142, column: 5, scope: !67)
!160 = !DILocation(line: 122, column: 22, scope: !67)
!161 = distinct !{!161, !73, !159, !54}
!162 = !DILocation(line: 143, column: 10, scope: !67)
!163 = !DILocation(line: 143, column: 3, scope: !67)
!164 = !DILocation(line: 143, column: 8, scope: !67)
!165 = !DILocation(line: 144, column: 9, scope: !67)
!166 = !DILocation(line: 144, column: 7, scope: !67)
!167 = !DILocation(line: 144, column: 14, scope: !67)
!168 = !DILocation(line: 144, column: 19, scope: !67)
!169 = !DILocation(line: 144, column: 16, scope: !67)
!170 = !DILocation(line: 144, column: 3, scope: !67)
!171 = !DILocation(line: 146, column: 13, scope: !67)
!172 = !DILocation(line: 146, column: 11, scope: !67)
!173 = !DILocation(line: 146, column: 9, scope: !67)
!174 = !DILocation(line: 147, column: 13, scope: !67)
!175 = !DILocation(line: 147, column: 11, scope: !67)
!176 = !DILocation(line: 147, column: 18, scope: !67)
!177 = !DILocation(line: 147, column: 22, scope: !67)
!178 = !DILocation(line: 147, column: 20, scope: !67)
!179 = !DILocation(line: 147, column: 7, scope: !67)
!180 = !DILocation(line: 148, column: 16, scope: !67)
!181 = !DILocation(line: 148, column: 14, scope: !67)
!182 = !DILocation(line: 148, column: 19, scope: !67)
!183 = !DILocation(line: 148, column: 26, scope: !67)
!184 = !DILocation(line: 148, column: 24, scope: !67)
!185 = !DILocation(line: 148, column: 22, scope: !67)
!186 = !DILocation(line: 148, column: 11, scope: !67)
!187 = !DILocation(line: 148, column: 9, scope: !67)
!188 = !DILocation(line: 147, column: 26, scope: !67)
!189 = distinct !{!189, !179, !190, !54}
!190 = !DILocation(line: 148, column: 27, scope: !67)
!191 = !DILocation(line: 149, column: 14, scope: !67)
!192 = !DILocation(line: 149, column: 9, scope: !67)
!193 = !DILocation(line: 149, column: 7, scope: !67)
!194 = !DILocation(line: 149, column: 12, scope: !67)
!195 = !DILocation(line: 150, column: 5, scope: !67)
!196 = !DILocation(line: 144, column: 23, scope: !67)
!197 = distinct !{!197, !170, !195, !54}
!198 = !DILocation(line: 151, column: 12, scope: !67)
!199 = !DILocation(line: 151, column: 10, scope: !67)
!200 = !DILocation(line: 151, column: 19, scope: !67)
!201 = !DILocation(line: 151, column: 17, scope: !67)
!202 = !DILocation(line: 151, column: 22, scope: !67)
!203 = !DILocation(line: 151, column: 15, scope: !67)
!204 = !DILocation(line: 151, column: 5, scope: !67)
!205 = !DILocation(line: 151, column: 3, scope: !67)
!206 = !DILocation(line: 151, column: 8, scope: !67)
!207 = !DILocation(line: 152, column: 11, scope: !67)
!208 = !DILocation(line: 152, column: 12, scope: !67)
!209 = !DILocation(line: 152, column: 9, scope: !67)
!210 = !DILocation(line: 152, column: 7, scope: !67)
!211 = !DILocation(line: 152, column: 16, scope: !67)
!212 = !DILocation(line: 152, column: 18, scope: !67)
!213 = !DILocation(line: 152, column: 3, scope: !67)
!214 = !DILocation(line: 154, column: 13, scope: !67)
!215 = !DILocation(line: 154, column: 11, scope: !67)
!216 = !DILocation(line: 154, column: 9, scope: !67)
!217 = !DILocation(line: 155, column: 15, scope: !67)
!218 = !DILocation(line: 155, column: 16, scope: !67)
!219 = !DILocation(line: 155, column: 13, scope: !67)
!220 = !DILocation(line: 155, column: 11, scope: !67)
!221 = !DILocation(line: 155, column: 20, scope: !67)
!222 = !DILocation(line: 155, column: 25, scope: !67)
!223 = !DILocation(line: 155, column: 22, scope: !67)
!224 = !DILocation(line: 155, column: 7, scope: !67)
!225 = !DILocation(line: 156, column: 16, scope: !67)
!226 = !DILocation(line: 156, column: 14, scope: !67)
!227 = !DILocation(line: 156, column: 19, scope: !67)
!228 = !DILocation(line: 156, column: 26, scope: !67)
!229 = !DILocation(line: 156, column: 24, scope: !67)
!230 = !DILocation(line: 156, column: 22, scope: !67)
!231 = !DILocation(line: 156, column: 11, scope: !67)
!232 = !DILocation(line: 156, column: 9, scope: !67)
!233 = !DILocation(line: 155, column: 29, scope: !67)
!234 = distinct !{!234, !224, !235, !54}
!235 = !DILocation(line: 156, column: 27, scope: !67)
!236 = !DILocation(line: 157, column: 14, scope: !67)
!237 = !DILocation(line: 157, column: 20, scope: !67)
!238 = !DILocation(line: 157, column: 18, scope: !67)
!239 = !DILocation(line: 157, column: 23, scope: !67)
!240 = !DILocation(line: 157, column: 16, scope: !67)
!241 = !DILocation(line: 157, column: 9, scope: !67)
!242 = !DILocation(line: 157, column: 7, scope: !67)
!243 = !DILocation(line: 157, column: 12, scope: !67)
!244 = !DILocation(line: 158, column: 5, scope: !67)
!245 = !DILocation(line: 152, column: 25, scope: !67)
!246 = distinct !{!246, !213, !244, !54}
!247 = !DILocation(line: 159, column: 3, scope: !67)
