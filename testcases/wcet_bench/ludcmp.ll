; ModuleID = '/workspaces/llvmta/testcases/wcet_bench/ludcmp.c'
source_filename = "/workspaces/llvmta/testcases/wcet_bench/ludcmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv4t-unknown-unknown"

@a_a = dso_local global [50 x [50 x double]] zeroinitializer, align 8
@b = dso_local global [50 x double] zeroinitializer, align 8
@x = dso_local global [50 x double] zeroinitializer, align 8

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @ludcmp() #0 !dbg !12 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %n = alloca i32, align 4
  %chkerr = alloca i32, align 4
  %eps = alloca double, align 8
  %w = alloca double, align 8
  store i32 5, i32* %n, align 4, !dbg !16
  store double 0x3EB0C6F7A0B5ED8D, double* %eps, align 8, !dbg !17
  store i32 0, i32* %i, align 4, !dbg !18
  br label %for.cond, !dbg !19

for.cond:                                         ; preds = %for.inc15, %entry
  %0 = load i32, i32* %i, align 4, !dbg !20
  %1 = load i32, i32* %n, align 4, !dbg !21
  %cmp = icmp sle i32 %0, %1, !dbg !22
  br i1 %cmp, label %for.body, label %for.end17, !dbg !23

for.body:                                         ; preds = %for.cond
  store double 0.000000e+00, double* %w, align 8, !dbg !24
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
  %conv = sitofp i32 %add5 to double, !dbg !36
  %6 = load i32, i32* %i, align 4, !dbg !37
  %arrayidx = getelementptr inbounds [50 x [50 x double]], [50 x [50 x double]]* @a_a, i32 0, i32 %6, !dbg !38
  %7 = load i32, i32* %j, align 4, !dbg !39
  %arrayidx6 = getelementptr inbounds [50 x double], [50 x double]* %arrayidx, i32 0, i32 %7, !dbg !38
  store double %conv, double* %arrayidx6, align 8, !dbg !40
  %8 = load i32, i32* %i, align 4, !dbg !41
  %9 = load i32, i32* %j, align 4, !dbg !42
  %cmp7 = icmp eq i32 %8, %9, !dbg !43
  br i1 %cmp7, label %if.then, label %if.end, !dbg !41

if.then:                                          ; preds = %for.body3
  %10 = load i32, i32* %i, align 4, !dbg !44
  %arrayidx9 = getelementptr inbounds [50 x [50 x double]], [50 x [50 x double]]* @a_a, i32 0, i32 %10, !dbg !45
  %11 = load i32, i32* %j, align 4, !dbg !46
  %arrayidx10 = getelementptr inbounds [50 x double], [50 x double]* %arrayidx9, i32 0, i32 %11, !dbg !45
  %12 = load double, double* %arrayidx10, align 8, !dbg !47
  %mul = fmul double %12, 1.000000e+01, !dbg !47
  store double %mul, double* %arrayidx10, align 8, !dbg !47
  br label %if.end, !dbg !45

if.end:                                           ; preds = %if.then, %for.body3
  %13 = load i32, i32* %i, align 4, !dbg !48
  %arrayidx11 = getelementptr inbounds [50 x [50 x double]], [50 x [50 x double]]* @a_a, i32 0, i32 %13, !dbg !49
  %14 = load i32, i32* %j, align 4, !dbg !50
  %arrayidx12 = getelementptr inbounds [50 x double], [50 x double]* %arrayidx11, i32 0, i32 %14, !dbg !49
  %15 = load double, double* %arrayidx12, align 8, !dbg !49
  %16 = load double, double* %w, align 8, !dbg !51
  %add13 = fadd double %16, %15, !dbg !51
  store double %add13, double* %w, align 8, !dbg !51
  br label %for.inc, !dbg !52

for.inc:                                          ; preds = %if.end
  %17 = load i32, i32* %j, align 4, !dbg !53
  %inc = add nsw i32 %17, 1, !dbg !53
  store i32 %inc, i32* %j, align 4, !dbg !53
  br label %for.cond1, !dbg !30, !llvm.loop !54

for.end:                                          ; preds = %for.cond1
  %18 = load double, double* %w, align 8, !dbg !56
  %19 = load i32, i32* %i, align 4, !dbg !57
  %arrayidx14 = getelementptr inbounds [50 x double], [50 x double]* @b, i32 0, i32 %19, !dbg !58
  store double %18, double* %arrayidx14, align 8, !dbg !59
  br label %for.inc15, !dbg !60

for.inc15:                                        ; preds = %for.end
  %20 = load i32, i32* %i, align 4, !dbg !61
  %inc16 = add nsw i32 %20, 1, !dbg !61
  store i32 %inc16, i32* %i, align 4, !dbg !61
  br label %for.cond, !dbg !23, !llvm.loop !62

for.end17:                                        ; preds = %for.cond
  %21 = load i32, i32* %n, align 4, !dbg !63
  %22 = load double, double* %eps, align 8, !dbg !64
  %call = call arm_aapcs_vfpcc i32 @ludcmp_ludcmp(i32 noundef %21, double noundef %22) #2, !dbg !65
  store i32 %call, i32* %chkerr, align 4, !dbg !66
  ret i32 0, !dbg !67
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @ludcmp_ludcmp(i32 noundef %n, double noundef %eps) #0 !dbg !68 {
entry:
  %retval = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %eps.addr = alloca double, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %w = alloca double, align 8
  %y = alloca [100 x double], align 8
  store i32 %n, i32* %n.addr, align 4
  store double %eps, double* %eps.addr, align 8
  %0 = load i32, i32* %n.addr, align 4, !dbg !69
  %cmp = icmp sgt i32 %0, 99, !dbg !70
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !71

lor.lhs.false:                                    ; preds = %entry
  %1 = load double, double* %eps.addr, align 8, !dbg !72
  %cmp1 = fcmp ole double %1, 0.000000e+00, !dbg !73
  br i1 %cmp1, label %if.then, label %if.end, !dbg !69

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 999, i32* %retval, align 4, !dbg !74
  br label %return, !dbg !74

if.end:                                           ; preds = %lor.lhs.false
  store i32 0, i32* %i, align 4, !dbg !75
  br label %for.cond, !dbg !76

for.cond:                                         ; preds = %for.inc54, %if.end
  %2 = load i32, i32* %i, align 4, !dbg !77
  %3 = load i32, i32* %n.addr, align 4, !dbg !78
  %cmp2 = icmp slt i32 %2, %3, !dbg !79
  br i1 %cmp2, label %for.body, label %for.end56, !dbg !80

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4, !dbg !81
  %arrayidx = getelementptr inbounds [50 x [50 x double]], [50 x [50 x double]]* @a_a, i32 0, i32 %4, !dbg !82
  %5 = load i32, i32* %i, align 4, !dbg !83
  %arrayidx3 = getelementptr inbounds [50 x double], [50 x double]* %arrayidx, i32 0, i32 %5, !dbg !82
  %6 = load double, double* %arrayidx3, align 8, !dbg !82
  %call = call arm_aapcs_vfpcc double @fabs(double noundef %6) #2, !dbg !84
  %7 = load double, double* %eps.addr, align 8, !dbg !85
  %cmp4 = fcmp ole double %call, %7, !dbg !86
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !84

if.then5:                                         ; preds = %for.body
  store i32 1, i32* %retval, align 4, !dbg !87
  br label %return, !dbg !87

if.end6:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !88
  %add = add nsw i32 %8, 1, !dbg !89
  store i32 %add, i32* %j, align 4, !dbg !90
  br label %for.cond7, !dbg !91

for.cond7:                                        ; preds = %for.inc26, %if.end6
  %9 = load i32, i32* %j, align 4, !dbg !92
  %10 = load i32, i32* %n.addr, align 4, !dbg !93
  %cmp8 = icmp sle i32 %9, %10, !dbg !94
  br i1 %cmp8, label %for.body9, label %for.end28, !dbg !95

for.body9:                                        ; preds = %for.cond7
  %11 = load i32, i32* %j, align 4, !dbg !96
  %arrayidx10 = getelementptr inbounds [50 x [50 x double]], [50 x [50 x double]]* @a_a, i32 0, i32 %11, !dbg !97
  %12 = load i32, i32* %i, align 4, !dbg !98
  %arrayidx11 = getelementptr inbounds [50 x double], [50 x double]* %arrayidx10, i32 0, i32 %12, !dbg !97
  %13 = load double, double* %arrayidx11, align 8, !dbg !97
  store double %13, double* %w, align 8, !dbg !99
  %14 = load i32, i32* %i, align 4, !dbg !100
  %cmp12 = icmp ne i32 %14, 0, !dbg !101
  br i1 %cmp12, label %if.then13, label %if.end21, !dbg !100

if.then13:                                        ; preds = %for.body9
  store i32 0, i32* %k, align 4, !dbg !102
  br label %for.cond14, !dbg !103

for.cond14:                                       ; preds = %for.inc, %if.then13
  %15 = load i32, i32* %k, align 4, !dbg !104
  %16 = load i32, i32* %i, align 4, !dbg !105
  %cmp15 = icmp slt i32 %15, %16, !dbg !106
  br i1 %cmp15, label %for.body16, label %for.end, !dbg !107

for.body16:                                       ; preds = %for.cond14
  %17 = load i32, i32* %j, align 4, !dbg !108
  %arrayidx17 = getelementptr inbounds [50 x [50 x double]], [50 x [50 x double]]* @a_a, i32 0, i32 %17, !dbg !109
  %18 = load i32, i32* %k, align 4, !dbg !110
  %arrayidx18 = getelementptr inbounds [50 x double], [50 x double]* %arrayidx17, i32 0, i32 %18, !dbg !109
  %19 = load double, double* %arrayidx18, align 8, !dbg !109
  %20 = load i32, i32* %k, align 4, !dbg !111
  %arrayidx19 = getelementptr inbounds [50 x [50 x double]], [50 x [50 x double]]* @a_a, i32 0, i32 %20, !dbg !112
  %21 = load i32, i32* %i, align 4, !dbg !113
  %arrayidx20 = getelementptr inbounds [50 x double], [50 x double]* %arrayidx19, i32 0, i32 %21, !dbg !112
  %22 = load double, double* %arrayidx20, align 8, !dbg !112
  %23 = load double, double* %w, align 8, !dbg !114
  %neg = fneg double %19, !dbg !114
  %24 = call double @llvm.fmuladd.f64(double %neg, double %22, double %23), !dbg !114
  store double %24, double* %w, align 8, !dbg !114
  br label %for.inc, !dbg !115

for.inc:                                          ; preds = %for.body16
  %25 = load i32, i32* %k, align 4, !dbg !116
  %inc = add nsw i32 %25, 1, !dbg !116
  store i32 %inc, i32* %k, align 4, !dbg !116
  br label %for.cond14, !dbg !107, !llvm.loop !117

for.end:                                          ; preds = %for.cond14
  br label %if.end21, !dbg !118

if.end21:                                         ; preds = %for.end, %for.body9
  %26 = load double, double* %w, align 8, !dbg !119
  %27 = load i32, i32* %i, align 4, !dbg !120
  %arrayidx22 = getelementptr inbounds [50 x [50 x double]], [50 x [50 x double]]* @a_a, i32 0, i32 %27, !dbg !121
  %28 = load i32, i32* %i, align 4, !dbg !122
  %arrayidx23 = getelementptr inbounds [50 x double], [50 x double]* %arrayidx22, i32 0, i32 %28, !dbg !121
  %29 = load double, double* %arrayidx23, align 8, !dbg !121
  %div = fdiv double %26, %29, !dbg !123
  %30 = load i32, i32* %j, align 4, !dbg !124
  %arrayidx24 = getelementptr inbounds [50 x [50 x double]], [50 x [50 x double]]* @a_a, i32 0, i32 %30, !dbg !125
  %31 = load i32, i32* %i, align 4, !dbg !126
  %arrayidx25 = getelementptr inbounds [50 x double], [50 x double]* %arrayidx24, i32 0, i32 %31, !dbg !125
  store double %div, double* %arrayidx25, align 8, !dbg !127
  br label %for.inc26, !dbg !128

for.inc26:                                        ; preds = %if.end21
  %32 = load i32, i32* %j, align 4, !dbg !129
  %inc27 = add nsw i32 %32, 1, !dbg !129
  store i32 %inc27, i32* %j, align 4, !dbg !129
  br label %for.cond7, !dbg !95, !llvm.loop !130

for.end28:                                        ; preds = %for.cond7
  %33 = load i32, i32* %i, align 4, !dbg !131
  %add29 = add nsw i32 %33, 1, !dbg !132
  store i32 %add29, i32* %j, align 4, !dbg !133
  br label %for.cond30, !dbg !134

for.cond30:                                       ; preds = %for.inc51, %for.end28
  %34 = load i32, i32* %j, align 4, !dbg !135
  %35 = load i32, i32* %n.addr, align 4, !dbg !136
  %cmp31 = icmp sle i32 %34, %35, !dbg !137
  br i1 %cmp31, label %for.body32, label %for.end53, !dbg !138

for.body32:                                       ; preds = %for.cond30
  %36 = load i32, i32* %i, align 4, !dbg !139
  %add33 = add nsw i32 %36, 1, !dbg !140
  %arrayidx34 = getelementptr inbounds [50 x [50 x double]], [50 x [50 x double]]* @a_a, i32 0, i32 %add33, !dbg !141
  %37 = load i32, i32* %j, align 4, !dbg !142
  %arrayidx35 = getelementptr inbounds [50 x double], [50 x double]* %arrayidx34, i32 0, i32 %37, !dbg !141
  %38 = load double, double* %arrayidx35, align 8, !dbg !141
  store double %38, double* %w, align 8, !dbg !143
  store i32 0, i32* %k, align 4, !dbg !144
  br label %for.cond36, !dbg !145

for.cond36:                                       ; preds = %for.inc45, %for.body32
  %39 = load i32, i32* %k, align 4, !dbg !146
  %40 = load i32, i32* %i, align 4, !dbg !147
  %cmp37 = icmp sle i32 %39, %40, !dbg !148
  br i1 %cmp37, label %for.body38, label %for.end47, !dbg !149

for.body38:                                       ; preds = %for.cond36
  %41 = load i32, i32* %i, align 4, !dbg !150
  %add39 = add nsw i32 %41, 1, !dbg !151
  %arrayidx40 = getelementptr inbounds [50 x [50 x double]], [50 x [50 x double]]* @a_a, i32 0, i32 %add39, !dbg !152
  %42 = load i32, i32* %k, align 4, !dbg !153
  %arrayidx41 = getelementptr inbounds [50 x double], [50 x double]* %arrayidx40, i32 0, i32 %42, !dbg !152
  %43 = load double, double* %arrayidx41, align 8, !dbg !152
  %44 = load i32, i32* %k, align 4, !dbg !154
  %arrayidx42 = getelementptr inbounds [50 x [50 x double]], [50 x [50 x double]]* @a_a, i32 0, i32 %44, !dbg !155
  %45 = load i32, i32* %j, align 4, !dbg !156
  %arrayidx43 = getelementptr inbounds [50 x double], [50 x double]* %arrayidx42, i32 0, i32 %45, !dbg !155
  %46 = load double, double* %arrayidx43, align 8, !dbg !155
  %47 = load double, double* %w, align 8, !dbg !157
  %neg44 = fneg double %43, !dbg !157
  %48 = call double @llvm.fmuladd.f64(double %neg44, double %46, double %47), !dbg !157
  store double %48, double* %w, align 8, !dbg !157
  br label %for.inc45, !dbg !158

for.inc45:                                        ; preds = %for.body38
  %49 = load i32, i32* %k, align 4, !dbg !159
  %inc46 = add nsw i32 %49, 1, !dbg !159
  store i32 %inc46, i32* %k, align 4, !dbg !159
  br label %for.cond36, !dbg !149, !llvm.loop !160

for.end47:                                        ; preds = %for.cond36
  %50 = load double, double* %w, align 8, !dbg !162
  %51 = load i32, i32* %i, align 4, !dbg !163
  %add48 = add nsw i32 %51, 1, !dbg !164
  %arrayidx49 = getelementptr inbounds [50 x [50 x double]], [50 x [50 x double]]* @a_a, i32 0, i32 %add48, !dbg !165
  %52 = load i32, i32* %j, align 4, !dbg !166
  %arrayidx50 = getelementptr inbounds [50 x double], [50 x double]* %arrayidx49, i32 0, i32 %52, !dbg !165
  store double %50, double* %arrayidx50, align 8, !dbg !167
  br label %for.inc51, !dbg !168

for.inc51:                                        ; preds = %for.end47
  %53 = load i32, i32* %j, align 4, !dbg !169
  %inc52 = add nsw i32 %53, 1, !dbg !169
  store i32 %inc52, i32* %j, align 4, !dbg !169
  br label %for.cond30, !dbg !138, !llvm.loop !170

for.end53:                                        ; preds = %for.cond30
  br label %for.inc54, !dbg !171

for.inc54:                                        ; preds = %for.end53
  %54 = load i32, i32* %i, align 4, !dbg !172
  %inc55 = add nsw i32 %54, 1, !dbg !172
  store i32 %inc55, i32* %i, align 4, !dbg !172
  br label %for.cond, !dbg !80, !llvm.loop !173

for.end56:                                        ; preds = %for.cond
  %55 = load double, double* getelementptr inbounds ([50 x double], [50 x double]* @b, i32 0, i32 0), align 8, !dbg !174
  %arrayidx57 = getelementptr inbounds [100 x double], [100 x double]* %y, i32 0, i32 0, !dbg !175
  store double %55, double* %arrayidx57, align 8, !dbg !176
  store i32 1, i32* %i, align 4, !dbg !177
  br label %for.cond58, !dbg !178

for.cond58:                                       ; preds = %for.inc73, %for.end56
  %56 = load i32, i32* %i, align 4, !dbg !179
  %57 = load i32, i32* %n.addr, align 4, !dbg !180
  %cmp59 = icmp sle i32 %56, %57, !dbg !181
  br i1 %cmp59, label %for.body60, label %for.end75, !dbg !182

for.body60:                                       ; preds = %for.cond58
  %58 = load i32, i32* %i, align 4, !dbg !183
  %arrayidx61 = getelementptr inbounds [50 x double], [50 x double]* @b, i32 0, i32 %58, !dbg !184
  %59 = load double, double* %arrayidx61, align 8, !dbg !184
  store double %59, double* %w, align 8, !dbg !185
  store i32 0, i32* %j, align 4, !dbg !186
  br label %for.cond62, !dbg !187

for.cond62:                                       ; preds = %for.inc69, %for.body60
  %60 = load i32, i32* %j, align 4, !dbg !188
  %61 = load i32, i32* %i, align 4, !dbg !189
  %cmp63 = icmp slt i32 %60, %61, !dbg !190
  br i1 %cmp63, label %for.body64, label %for.end71, !dbg !191

for.body64:                                       ; preds = %for.cond62
  %62 = load i32, i32* %i, align 4, !dbg !192
  %arrayidx65 = getelementptr inbounds [50 x [50 x double]], [50 x [50 x double]]* @a_a, i32 0, i32 %62, !dbg !193
  %63 = load i32, i32* %j, align 4, !dbg !194
  %arrayidx66 = getelementptr inbounds [50 x double], [50 x double]* %arrayidx65, i32 0, i32 %63, !dbg !193
  %64 = load double, double* %arrayidx66, align 8, !dbg !193
  %65 = load i32, i32* %j, align 4, !dbg !195
  %arrayidx67 = getelementptr inbounds [100 x double], [100 x double]* %y, i32 0, i32 %65, !dbg !196
  %66 = load double, double* %arrayidx67, align 8, !dbg !196
  %67 = load double, double* %w, align 8, !dbg !197
  %neg68 = fneg double %64, !dbg !197
  %68 = call double @llvm.fmuladd.f64(double %neg68, double %66, double %67), !dbg !197
  store double %68, double* %w, align 8, !dbg !197
  br label %for.inc69, !dbg !198

for.inc69:                                        ; preds = %for.body64
  %69 = load i32, i32* %j, align 4, !dbg !199
  %inc70 = add nsw i32 %69, 1, !dbg !199
  store i32 %inc70, i32* %j, align 4, !dbg !199
  br label %for.cond62, !dbg !191, !llvm.loop !200

for.end71:                                        ; preds = %for.cond62
  %70 = load double, double* %w, align 8, !dbg !202
  %71 = load i32, i32* %i, align 4, !dbg !203
  %arrayidx72 = getelementptr inbounds [100 x double], [100 x double]* %y, i32 0, i32 %71, !dbg !204
  store double %70, double* %arrayidx72, align 8, !dbg !205
  br label %for.inc73, !dbg !206

for.inc73:                                        ; preds = %for.end71
  %72 = load i32, i32* %i, align 4, !dbg !207
  %inc74 = add nsw i32 %72, 1, !dbg !207
  store i32 %inc74, i32* %i, align 4, !dbg !207
  br label %for.cond58, !dbg !182, !llvm.loop !208

for.end75:                                        ; preds = %for.cond58
  %73 = load i32, i32* %n.addr, align 4, !dbg !209
  %arrayidx76 = getelementptr inbounds [100 x double], [100 x double]* %y, i32 0, i32 %73, !dbg !210
  %74 = load double, double* %arrayidx76, align 8, !dbg !210
  %75 = load i32, i32* %n.addr, align 4, !dbg !211
  %arrayidx77 = getelementptr inbounds [50 x [50 x double]], [50 x [50 x double]]* @a_a, i32 0, i32 %75, !dbg !212
  %76 = load i32, i32* %n.addr, align 4, !dbg !213
  %arrayidx78 = getelementptr inbounds [50 x double], [50 x double]* %arrayidx77, i32 0, i32 %76, !dbg !212
  %77 = load double, double* %arrayidx78, align 8, !dbg !212
  %div79 = fdiv double %74, %77, !dbg !214
  %78 = load i32, i32* %n.addr, align 4, !dbg !215
  %arrayidx80 = getelementptr inbounds [50 x double], [50 x double]* @x, i32 0, i32 %78, !dbg !216
  store double %div79, double* %arrayidx80, align 8, !dbg !217
  %79 = load i32, i32* %n.addr, align 4, !dbg !218
  %sub = sub nsw i32 %79, 1, !dbg !219
  store i32 %sub, i32* %i, align 4, !dbg !220
  br label %for.cond81, !dbg !221

for.cond81:                                       ; preds = %for.inc100, %for.end75
  %80 = load i32, i32* %i, align 4, !dbg !222
  %cmp82 = icmp sge i32 %80, 0, !dbg !223
  br i1 %cmp82, label %for.body83, label %for.end101, !dbg !224

for.body83:                                       ; preds = %for.cond81
  %81 = load i32, i32* %i, align 4, !dbg !225
  %arrayidx84 = getelementptr inbounds [100 x double], [100 x double]* %y, i32 0, i32 %81, !dbg !226
  %82 = load double, double* %arrayidx84, align 8, !dbg !226
  store double %82, double* %w, align 8, !dbg !227
  %83 = load i32, i32* %i, align 4, !dbg !228
  %add85 = add nsw i32 %83, 1, !dbg !229
  store i32 %add85, i32* %j, align 4, !dbg !230
  br label %for.cond86, !dbg !231

for.cond86:                                       ; preds = %for.inc93, %for.body83
  %84 = load i32, i32* %j, align 4, !dbg !232
  %85 = load i32, i32* %n.addr, align 4, !dbg !233
  %cmp87 = icmp sle i32 %84, %85, !dbg !234
  br i1 %cmp87, label %for.body88, label %for.end95, !dbg !235

for.body88:                                       ; preds = %for.cond86
  %86 = load i32, i32* %i, align 4, !dbg !236
  %arrayidx89 = getelementptr inbounds [50 x [50 x double]], [50 x [50 x double]]* @a_a, i32 0, i32 %86, !dbg !237
  %87 = load i32, i32* %j, align 4, !dbg !238
  %arrayidx90 = getelementptr inbounds [50 x double], [50 x double]* %arrayidx89, i32 0, i32 %87, !dbg !237
  %88 = load double, double* %arrayidx90, align 8, !dbg !237
  %89 = load i32, i32* %j, align 4, !dbg !239
  %arrayidx91 = getelementptr inbounds [50 x double], [50 x double]* @x, i32 0, i32 %89, !dbg !240
  %90 = load double, double* %arrayidx91, align 8, !dbg !240
  %91 = load double, double* %w, align 8, !dbg !241
  %neg92 = fneg double %88, !dbg !241
  %92 = call double @llvm.fmuladd.f64(double %neg92, double %90, double %91), !dbg !241
  store double %92, double* %w, align 8, !dbg !241
  br label %for.inc93, !dbg !242

for.inc93:                                        ; preds = %for.body88
  %93 = load i32, i32* %j, align 4, !dbg !243
  %inc94 = add nsw i32 %93, 1, !dbg !243
  store i32 %inc94, i32* %j, align 4, !dbg !243
  br label %for.cond86, !dbg !235, !llvm.loop !244

for.end95:                                        ; preds = %for.cond86
  %94 = load double, double* %w, align 8, !dbg !246
  %95 = load i32, i32* %i, align 4, !dbg !247
  %arrayidx96 = getelementptr inbounds [50 x [50 x double]], [50 x [50 x double]]* @a_a, i32 0, i32 %95, !dbg !248
  %96 = load i32, i32* %i, align 4, !dbg !249
  %arrayidx97 = getelementptr inbounds [50 x double], [50 x double]* %arrayidx96, i32 0, i32 %96, !dbg !248
  %97 = load double, double* %arrayidx97, align 8, !dbg !248
  %div98 = fdiv double %94, %97, !dbg !250
  %98 = load i32, i32* %i, align 4, !dbg !251
  %arrayidx99 = getelementptr inbounds [50 x double], [50 x double]* @x, i32 0, i32 %98, !dbg !252
  store double %div98, double* %arrayidx99, align 8, !dbg !253
  br label %for.inc100, !dbg !254

for.inc100:                                       ; preds = %for.end95
  %99 = load i32, i32* %i, align 4, !dbg !255
  %dec = add nsw i32 %99, -1, !dbg !255
  store i32 %dec, i32* %i, align 4, !dbg !255
  br label %for.cond81, !dbg !224, !llvm.loop !256

for.end101:                                       ; preds = %for.cond81
  store i32 0, i32* %retval, align 4, !dbg !257
  br label %return, !dbg !257

return:                                           ; preds = %for.end101, %if.then5, %if.then
  %100 = load i32, i32* %retval, align 4, !dbg !258
  ret i32 %100, !dbg !258
}

; Function Attrs: noinline nounwind
define internal arm_aapcs_vfpcc double @fabs(double noundef %n) #0 !dbg !259 {
entry:
  %n.addr = alloca double, align 8
  %f = alloca double, align 8
  store double %n, double* %n.addr, align 8
  %0 = load double, double* %n.addr, align 8, !dbg !260
  %cmp = fcmp oge double %0, 0.000000e+00, !dbg !261
  br i1 %cmp, label %if.then, label %if.else, !dbg !260

if.then:                                          ; preds = %entry
  %1 = load double, double* %n.addr, align 8, !dbg !262
  store double %1, double* %f, align 8, !dbg !263
  br label %if.end, !dbg !264

if.else:                                          ; preds = %entry
  %2 = load double, double* %n.addr, align 8, !dbg !265
  %fneg = fneg double %2, !dbg !266
  store double %fneg, double* %f, align 8, !dbg !267
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load double, double* %f, align 8, !dbg !268
  ret double %3, !dbg !269
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #1

attributes #0 = { noinline nounwind "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nobuiltin "no-builtins" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 14.0.6 (git@github.com:RTS-SYSU/LLVM-TA.git b7f9c4ccdebc6c37532ddd772889e5f0ff989c79)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/workspaces/llvmta/testcases/wcet_bench/ludcmp.c", directory: "/workspaces/llvmta/testcases/util_scripts", checksumkind: CSK_MD5, checksum: "4fab0524b3be0dfbb561e4cf53919cac")
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
!12 = distinct !DISubprogram(name: "ludcmp", scope: !13, file: !13, line: 76, type: !14, scopeLine: 76, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!13 = !DIFile(filename: "wcet_bench/ludcmp.c", directory: "/workspaces/llvmta/testcases", checksumkind: CSK_MD5, checksum: "4fab0524b3be0dfbb561e4cf53919cac")
!14 = !DISubroutineType(types: !15)
!15 = !{}
!16 = !DILocation(line: 78, column: 29, scope: !12)
!17 = !DILocation(line: 81, column: 7, scope: !12)
!18 = !DILocation(line: 83, column: 10, scope: !12)
!19 = !DILocation(line: 83, column: 8, scope: !12)
!20 = !DILocation(line: 83, column: 15, scope: !12)
!21 = !DILocation(line: 83, column: 20, scope: !12)
!22 = !DILocation(line: 83, column: 17, scope: !12)
!23 = !DILocation(line: 83, column: 3, scope: !12)
!24 = !DILocation(line: 84, column: 7, scope: !12)
!25 = !DILocation(line: 85, column: 12, scope: !12)
!26 = !DILocation(line: 85, column: 10, scope: !12)
!27 = !DILocation(line: 85, column: 17, scope: !12)
!28 = !DILocation(line: 85, column: 22, scope: !12)
!29 = !DILocation(line: 85, column: 19, scope: !12)
!30 = !DILocation(line: 85, column: 5, scope: !12)
!31 = !DILocation(line: 86, column: 20, scope: !12)
!32 = !DILocation(line: 86, column: 22, scope: !12)
!33 = !DILocation(line: 86, column: 30, scope: !12)
!34 = !DILocation(line: 86, column: 32, scope: !12)
!35 = !DILocation(line: 86, column: 27, scope: !12)
!36 = !DILocation(line: 86, column: 19, scope: !12)
!37 = !DILocation(line: 86, column: 11, scope: !12)
!38 = !DILocation(line: 86, column: 7, scope: !12)
!39 = !DILocation(line: 86, column: 14, scope: !12)
!40 = !DILocation(line: 86, column: 17, scope: !12)
!41 = !DILocation(line: 87, column: 11, scope: !12)
!42 = !DILocation(line: 87, column: 16, scope: !12)
!43 = !DILocation(line: 87, column: 13, scope: !12)
!44 = !DILocation(line: 88, column: 13, scope: !12)
!45 = !DILocation(line: 88, column: 9, scope: !12)
!46 = !DILocation(line: 88, column: 16, scope: !12)
!47 = !DILocation(line: 88, column: 19, scope: !12)
!48 = !DILocation(line: 89, column: 16, scope: !12)
!49 = !DILocation(line: 89, column: 12, scope: !12)
!50 = !DILocation(line: 89, column: 19, scope: !12)
!51 = !DILocation(line: 89, column: 9, scope: !12)
!52 = !DILocation(line: 90, column: 5, scope: !12)
!53 = !DILocation(line: 85, column: 26, scope: !12)
!54 = distinct !{!54, !30, !52, !55}
!55 = !{!"llvm.loop.mustprogress"}
!56 = !DILocation(line: 91, column: 12, scope: !12)
!57 = !DILocation(line: 91, column: 7, scope: !12)
!58 = !DILocation(line: 91, column: 5, scope: !12)
!59 = !DILocation(line: 91, column: 10, scope: !12)
!60 = !DILocation(line: 92, column: 3, scope: !12)
!61 = !DILocation(line: 83, column: 24, scope: !12)
!62 = distinct !{!62, !23, !60, !55}
!63 = !DILocation(line: 94, column: 38, scope: !12)
!64 = !DILocation(line: 94, column: 41, scope: !12)
!65 = !DILocation(line: 94, column: 12, scope: !12)
!66 = !DILocation(line: 94, column: 10, scope: !12)
!67 = !DILocation(line: 96, column: 3, scope: !12)
!68 = distinct !DISubprogram(name: "ludcmp_ludcmp", scope: !13, file: !13, line: 99, type: !14, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!69 = !DILocation(line: 104, column: 7, scope: !68)
!70 = !DILocation(line: 104, column: 9, scope: !68)
!71 = !DILocation(line: 104, column: 14, scope: !68)
!72 = !DILocation(line: 104, column: 17, scope: !68)
!73 = !DILocation(line: 104, column: 21, scope: !68)
!74 = !DILocation(line: 105, column: 5, scope: !68)
!75 = !DILocation(line: 106, column: 10, scope: !68)
!76 = !DILocation(line: 106, column: 8, scope: !68)
!77 = !DILocation(line: 106, column: 15, scope: !68)
!78 = !DILocation(line: 106, column: 19, scope: !68)
!79 = !DILocation(line: 106, column: 17, scope: !68)
!80 = !DILocation(line: 106, column: 3, scope: !68)
!81 = !DILocation(line: 107, column: 18, scope: !68)
!82 = !DILocation(line: 107, column: 14, scope: !68)
!83 = !DILocation(line: 107, column: 21, scope: !68)
!84 = !DILocation(line: 107, column: 9, scope: !68)
!85 = !DILocation(line: 107, column: 28, scope: !68)
!86 = !DILocation(line: 107, column: 25, scope: !68)
!87 = !DILocation(line: 108, column: 7, scope: !68)
!88 = !DILocation(line: 109, column: 14, scope: !68)
!89 = !DILocation(line: 109, column: 16, scope: !68)
!90 = !DILocation(line: 109, column: 12, scope: !68)
!91 = !DILocation(line: 109, column: 10, scope: !68)
!92 = !DILocation(line: 109, column: 21, scope: !68)
!93 = !DILocation(line: 109, column: 26, scope: !68)
!94 = !DILocation(line: 109, column: 23, scope: !68)
!95 = !DILocation(line: 109, column: 5, scope: !68)
!96 = !DILocation(line: 110, column: 15, scope: !68)
!97 = !DILocation(line: 110, column: 11, scope: !68)
!98 = !DILocation(line: 110, column: 18, scope: !68)
!99 = !DILocation(line: 110, column: 9, scope: !68)
!100 = !DILocation(line: 111, column: 11, scope: !68)
!101 = !DILocation(line: 111, column: 13, scope: !68)
!102 = !DILocation(line: 112, column: 16, scope: !68)
!103 = !DILocation(line: 112, column: 14, scope: !68)
!104 = !DILocation(line: 112, column: 21, scope: !68)
!105 = !DILocation(line: 112, column: 25, scope: !68)
!106 = !DILocation(line: 112, column: 23, scope: !68)
!107 = !DILocation(line: 112, column: 9, scope: !68)
!108 = !DILocation(line: 113, column: 20, scope: !68)
!109 = !DILocation(line: 113, column: 16, scope: !68)
!110 = !DILocation(line: 113, column: 23, scope: !68)
!111 = !DILocation(line: 113, column: 32, scope: !68)
!112 = !DILocation(line: 113, column: 28, scope: !68)
!113 = !DILocation(line: 113, column: 35, scope: !68)
!114 = !DILocation(line: 113, column: 13, scope: !68)
!115 = !DILocation(line: 113, column: 11, scope: !68)
!116 = !DILocation(line: 112, column: 29, scope: !68)
!117 = distinct !{!117, !107, !118, !55}
!118 = !DILocation(line: 113, column: 36, scope: !68)
!119 = !DILocation(line: 114, column: 19, scope: !68)
!120 = !DILocation(line: 114, column: 27, scope: !68)
!121 = !DILocation(line: 114, column: 23, scope: !68)
!122 = !DILocation(line: 114, column: 30, scope: !68)
!123 = !DILocation(line: 114, column: 21, scope: !68)
!124 = !DILocation(line: 114, column: 11, scope: !68)
!125 = !DILocation(line: 114, column: 7, scope: !68)
!126 = !DILocation(line: 114, column: 14, scope: !68)
!127 = !DILocation(line: 114, column: 17, scope: !68)
!128 = !DILocation(line: 115, column: 5, scope: !68)
!129 = !DILocation(line: 109, column: 30, scope: !68)
!130 = distinct !{!130, !95, !128, !55}
!131 = !DILocation(line: 116, column: 14, scope: !68)
!132 = !DILocation(line: 116, column: 16, scope: !68)
!133 = !DILocation(line: 116, column: 12, scope: !68)
!134 = !DILocation(line: 116, column: 10, scope: !68)
!135 = !DILocation(line: 116, column: 21, scope: !68)
!136 = !DILocation(line: 116, column: 26, scope: !68)
!137 = !DILocation(line: 116, column: 23, scope: !68)
!138 = !DILocation(line: 116, column: 5, scope: !68)
!139 = !DILocation(line: 117, column: 15, scope: !68)
!140 = !DILocation(line: 117, column: 17, scope: !68)
!141 = !DILocation(line: 117, column: 11, scope: !68)
!142 = !DILocation(line: 117, column: 22, scope: !68)
!143 = !DILocation(line: 117, column: 9, scope: !68)
!144 = !DILocation(line: 118, column: 14, scope: !68)
!145 = !DILocation(line: 118, column: 12, scope: !68)
!146 = !DILocation(line: 118, column: 19, scope: !68)
!147 = !DILocation(line: 118, column: 24, scope: !68)
!148 = !DILocation(line: 118, column: 21, scope: !68)
!149 = !DILocation(line: 118, column: 7, scope: !68)
!150 = !DILocation(line: 119, column: 18, scope: !68)
!151 = !DILocation(line: 119, column: 20, scope: !68)
!152 = !DILocation(line: 119, column: 14, scope: !68)
!153 = !DILocation(line: 119, column: 25, scope: !68)
!154 = !DILocation(line: 119, column: 34, scope: !68)
!155 = !DILocation(line: 119, column: 30, scope: !68)
!156 = !DILocation(line: 119, column: 37, scope: !68)
!157 = !DILocation(line: 119, column: 11, scope: !68)
!158 = !DILocation(line: 119, column: 9, scope: !68)
!159 = !DILocation(line: 118, column: 28, scope: !68)
!160 = distinct !{!160, !149, !161, !55}
!161 = !DILocation(line: 119, column: 38, scope: !68)
!162 = !DILocation(line: 120, column: 23, scope: !68)
!163 = !DILocation(line: 120, column: 11, scope: !68)
!164 = !DILocation(line: 120, column: 13, scope: !68)
!165 = !DILocation(line: 120, column: 7, scope: !68)
!166 = !DILocation(line: 120, column: 18, scope: !68)
!167 = !DILocation(line: 120, column: 21, scope: !68)
!168 = !DILocation(line: 121, column: 5, scope: !68)
!169 = !DILocation(line: 116, column: 30, scope: !68)
!170 = distinct !{!170, !138, !168, !55}
!171 = !DILocation(line: 122, column: 3, scope: !68)
!172 = !DILocation(line: 106, column: 23, scope: !68)
!173 = distinct !{!173, !80, !171, !55}
!174 = !DILocation(line: 123, column: 10, scope: !68)
!175 = !DILocation(line: 123, column: 3, scope: !68)
!176 = !DILocation(line: 123, column: 8, scope: !68)
!177 = !DILocation(line: 124, column: 10, scope: !68)
!178 = !DILocation(line: 124, column: 8, scope: !68)
!179 = !DILocation(line: 124, column: 15, scope: !68)
!180 = !DILocation(line: 124, column: 20, scope: !68)
!181 = !DILocation(line: 124, column: 17, scope: !68)
!182 = !DILocation(line: 124, column: 3, scope: !68)
!183 = !DILocation(line: 125, column: 11, scope: !68)
!184 = !DILocation(line: 125, column: 9, scope: !68)
!185 = !DILocation(line: 125, column: 7, scope: !68)
!186 = !DILocation(line: 126, column: 12, scope: !68)
!187 = !DILocation(line: 126, column: 10, scope: !68)
!188 = !DILocation(line: 126, column: 17, scope: !68)
!189 = !DILocation(line: 126, column: 21, scope: !68)
!190 = !DILocation(line: 126, column: 19, scope: !68)
!191 = !DILocation(line: 126, column: 5, scope: !68)
!192 = !DILocation(line: 127, column: 16, scope: !68)
!193 = !DILocation(line: 127, column: 12, scope: !68)
!194 = !DILocation(line: 127, column: 19, scope: !68)
!195 = !DILocation(line: 127, column: 26, scope: !68)
!196 = !DILocation(line: 127, column: 24, scope: !68)
!197 = !DILocation(line: 127, column: 9, scope: !68)
!198 = !DILocation(line: 127, column: 7, scope: !68)
!199 = !DILocation(line: 126, column: 25, scope: !68)
!200 = distinct !{!200, !191, !201, !55}
!201 = !DILocation(line: 127, column: 27, scope: !68)
!202 = !DILocation(line: 128, column: 12, scope: !68)
!203 = !DILocation(line: 128, column: 7, scope: !68)
!204 = !DILocation(line: 128, column: 5, scope: !68)
!205 = !DILocation(line: 128, column: 10, scope: !68)
!206 = !DILocation(line: 129, column: 3, scope: !68)
!207 = !DILocation(line: 124, column: 24, scope: !68)
!208 = distinct !{!208, !182, !206, !55}
!209 = !DILocation(line: 130, column: 12, scope: !68)
!210 = !DILocation(line: 130, column: 10, scope: !68)
!211 = !DILocation(line: 130, column: 21, scope: !68)
!212 = !DILocation(line: 130, column: 17, scope: !68)
!213 = !DILocation(line: 130, column: 24, scope: !68)
!214 = !DILocation(line: 130, column: 15, scope: !68)
!215 = !DILocation(line: 130, column: 5, scope: !68)
!216 = !DILocation(line: 130, column: 3, scope: !68)
!217 = !DILocation(line: 130, column: 8, scope: !68)
!218 = !DILocation(line: 131, column: 12, scope: !68)
!219 = !DILocation(line: 131, column: 14, scope: !68)
!220 = !DILocation(line: 131, column: 10, scope: !68)
!221 = !DILocation(line: 131, column: 8, scope: !68)
!222 = !DILocation(line: 131, column: 19, scope: !68)
!223 = !DILocation(line: 131, column: 21, scope: !68)
!224 = !DILocation(line: 131, column: 3, scope: !68)
!225 = !DILocation(line: 132, column: 11, scope: !68)
!226 = !DILocation(line: 132, column: 9, scope: !68)
!227 = !DILocation(line: 132, column: 7, scope: !68)
!228 = !DILocation(line: 133, column: 14, scope: !68)
!229 = !DILocation(line: 133, column: 16, scope: !68)
!230 = !DILocation(line: 133, column: 12, scope: !68)
!231 = !DILocation(line: 133, column: 10, scope: !68)
!232 = !DILocation(line: 133, column: 21, scope: !68)
!233 = !DILocation(line: 133, column: 26, scope: !68)
!234 = !DILocation(line: 133, column: 23, scope: !68)
!235 = !DILocation(line: 133, column: 5, scope: !68)
!236 = !DILocation(line: 134, column: 16, scope: !68)
!237 = !DILocation(line: 134, column: 12, scope: !68)
!238 = !DILocation(line: 134, column: 19, scope: !68)
!239 = !DILocation(line: 134, column: 26, scope: !68)
!240 = !DILocation(line: 134, column: 24, scope: !68)
!241 = !DILocation(line: 134, column: 9, scope: !68)
!242 = !DILocation(line: 134, column: 7, scope: !68)
!243 = !DILocation(line: 133, column: 30, scope: !68)
!244 = distinct !{!244, !235, !245, !55}
!245 = !DILocation(line: 134, column: 27, scope: !68)
!246 = !DILocation(line: 135, column: 12, scope: !68)
!247 = !DILocation(line: 135, column: 20, scope: !68)
!248 = !DILocation(line: 135, column: 16, scope: !68)
!249 = !DILocation(line: 135, column: 23, scope: !68)
!250 = !DILocation(line: 135, column: 14, scope: !68)
!251 = !DILocation(line: 135, column: 7, scope: !68)
!252 = !DILocation(line: 135, column: 5, scope: !68)
!253 = !DILocation(line: 135, column: 10, scope: !68)
!254 = !DILocation(line: 136, column: 3, scope: !68)
!255 = !DILocation(line: 131, column: 28, scope: !68)
!256 = distinct !{!256, !224, !254, !55}
!257 = !DILocation(line: 137, column: 3, scope: !68)
!258 = !DILocation(line: 138, column: 1, scope: !68)
!259 = distinct !DISubprogram(name: "fabs", scope: !13, file: !13, line: 66, type: !14, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !15)
!260 = !DILocation(line: 69, column: 7, scope: !259)
!261 = !DILocation(line: 69, column: 9, scope: !259)
!262 = !DILocation(line: 70, column: 9, scope: !259)
!263 = !DILocation(line: 70, column: 7, scope: !259)
!264 = !DILocation(line: 70, column: 5, scope: !259)
!265 = !DILocation(line: 72, column: 10, scope: !259)
!266 = !DILocation(line: 72, column: 9, scope: !259)
!267 = !DILocation(line: 72, column: 7, scope: !259)
!268 = !DILocation(line: 73, column: 10, scope: !259)
!269 = !DILocation(line: 73, column: 3, scope: !259)
