; ModuleID = '/workspaces/llvmta/testcases/wcet_bench/minver.c'
source_filename = "/workspaces/llvmta/testcases/wcet_bench/minver.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv4t-unknown-unknown"

@a = internal global [3 x [3 x double]] [[3 x double] [double 3.000000e+00, double -6.000000e+00, double 7.000000e+00], [3 x double] [double 9.000000e+00, double 0.000000e+00, double -5.000000e+00], [3 x double] [double 5.000000e+00, double -8.000000e+00, double 6.000000e+00]], align 8
@aa = dso_local global [3 x [3 x double]] zeroinitializer, align 8
@a_i = dso_local global [3 x [3 x double]] zeroinitializer, align 8
@b = dso_local global [3 x [3 x double]] zeroinitializer, align 8
@c = dso_local global [3 x [3 x double]] zeroinitializer, align 8
@det = dso_local global double 0.000000e+00, align 8
@e = dso_local global [3 x [3 x double]] zeroinitializer, align 8

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc double @minver_fabs(double noundef %n) #0 !dbg !12 {
entry:
  %n.addr = alloca double, align 8
  %f = alloca double, align 8
  store double %n, double* %n.addr, align 8
  %0 = load double, double* %n.addr, align 8, !dbg !16
  %cmp = fcmp oge double %0, 0.000000e+00, !dbg !17
  br i1 %cmp, label %if.then, label %if.else, !dbg !16

if.then:                                          ; preds = %entry
  %1 = load double, double* %n.addr, align 8, !dbg !18
  store double %1, double* %f, align 8, !dbg !19
  br label %if.end, !dbg !20

if.else:                                          ; preds = %entry
  %2 = load double, double* %n.addr, align 8, !dbg !21
  %fneg = fneg double %2, !dbg !22
  store double %fneg, double* %f, align 8, !dbg !23
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load double, double* %f, align 8, !dbg !24
  ret double %3, !dbg !25
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @main_minver() #0 !dbg !26 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %eps = alloca double, align 8
  store double 0x3EB0C6F7A0B5ED8D, double* %eps, align 8, !dbg !27
  store i32 0, i32* %i, align 4, !dbg !28
  br label %for.cond, !dbg !29

for.cond:                                         ; preds = %for.inc7, %entry
  %0 = load i32, i32* %i, align 4, !dbg !30
  %cmp = icmp slt i32 %0, 3, !dbg !31
  br i1 %cmp, label %for.body, label %for.end9, !dbg !32

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4, !dbg !33
  br label %for.cond1, !dbg !34

for.cond1:                                        ; preds = %for.inc, %for.body
  %1 = load i32, i32* %j, align 4, !dbg !35
  %cmp2 = icmp slt i32 %1, 3, !dbg !36
  br i1 %cmp2, label %for.body3, label %for.end, !dbg !37

for.body3:                                        ; preds = %for.cond1
  %2 = load i32, i32* %i, align 4, !dbg !38
  %arrayidx = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* @a, i32 0, i32 %2, !dbg !39
  %3 = load i32, i32* %j, align 4, !dbg !40
  %arrayidx4 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx, i32 0, i32 %3, !dbg !39
  %4 = load double, double* %arrayidx4, align 8, !dbg !39
  %5 = load i32, i32* %i, align 4, !dbg !41
  %arrayidx5 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* @aa, i32 0, i32 %5, !dbg !42
  %6 = load i32, i32* %j, align 4, !dbg !43
  %arrayidx6 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx5, i32 0, i32 %6, !dbg !42
  store double %4, double* %arrayidx6, align 8, !dbg !44
  br label %for.inc, !dbg !42

for.inc:                                          ; preds = %for.body3
  %7 = load i32, i32* %j, align 4, !dbg !45
  %inc = add nsw i32 %7, 1, !dbg !45
  store i32 %inc, i32* %j, align 4, !dbg !45
  br label %for.cond1, !dbg !37, !llvm.loop !46

for.end:                                          ; preds = %for.cond1
  br label %for.inc7, !dbg !47

for.inc7:                                         ; preds = %for.end
  %8 = load i32, i32* %i, align 4, !dbg !49
  %inc8 = add nsw i32 %8, 1, !dbg !49
  store i32 %inc8, i32* %i, align 4, !dbg !49
  br label %for.cond, !dbg !32, !llvm.loop !50

for.end9:                                         ; preds = %for.cond
  %9 = load double, double* %eps, align 8, !dbg !51
  %call = call arm_aapcs_vfpcc i32 @minver(i32 noundef 3, i32 noundef 3, double noundef %9) #2, !dbg !52
  store i32 0, i32* %i, align 4, !dbg !53
  br label %for.cond10, !dbg !54

for.cond10:                                       ; preds = %for.inc23, %for.end9
  %10 = load i32, i32* %i, align 4, !dbg !55
  %cmp11 = icmp slt i32 %10, 3, !dbg !56
  br i1 %cmp11, label %for.body12, label %for.end25, !dbg !57

for.body12:                                       ; preds = %for.cond10
  store i32 0, i32* %j, align 4, !dbg !58
  br label %for.cond13, !dbg !59

for.cond13:                                       ; preds = %for.inc20, %for.body12
  %11 = load i32, i32* %j, align 4, !dbg !60
  %cmp14 = icmp slt i32 %11, 3, !dbg !61
  br i1 %cmp14, label %for.body15, label %for.end22, !dbg !62

for.body15:                                       ; preds = %for.cond13
  %12 = load i32, i32* %i, align 4, !dbg !63
  %arrayidx16 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* @a, i32 0, i32 %12, !dbg !64
  %13 = load i32, i32* %j, align 4, !dbg !65
  %arrayidx17 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx16, i32 0, i32 %13, !dbg !64
  %14 = load double, double* %arrayidx17, align 8, !dbg !64
  %15 = load i32, i32* %i, align 4, !dbg !66
  %arrayidx18 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* @a_i, i32 0, i32 %15, !dbg !67
  %16 = load i32, i32* %j, align 4, !dbg !68
  %arrayidx19 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx18, i32 0, i32 %16, !dbg !67
  store double %14, double* %arrayidx19, align 8, !dbg !69
  br label %for.inc20, !dbg !67

for.inc20:                                        ; preds = %for.body15
  %17 = load i32, i32* %j, align 4, !dbg !70
  %inc21 = add nsw i32 %17, 1, !dbg !70
  store i32 %inc21, i32* %j, align 4, !dbg !70
  br label %for.cond13, !dbg !62, !llvm.loop !71

for.end22:                                        ; preds = %for.cond13
  br label %for.inc23, !dbg !72

for.inc23:                                        ; preds = %for.end22
  %18 = load i32, i32* %i, align 4, !dbg !73
  %inc24 = add nsw i32 %18, 1, !dbg !73
  store i32 %inc24, i32* %i, align 4, !dbg !73
  br label %for.cond10, !dbg !57, !llvm.loop !74

for.end25:                                        ; preds = %for.cond10
  %call26 = call arm_aapcs_vfpcc i32 @mmul(i32 noundef 3, i32 noundef 3, i32 noundef 3, i32 noundef 3) #2, !dbg !75
  ret i32 0, !dbg !76
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @minver(i32 noundef %row, i32 noundef %col, double noundef %eps) #0 !dbg !77 {
entry:
  %retval = alloca i32, align 4
  %row.addr = alloca i32, align 4
  %col.addr = alloca i32, align 4
  %eps.addr = alloca double, align 8
  %work = alloca [500 x i32], align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %r = alloca i32, align 4
  %iw = alloca i32, align 4
  %s = alloca i32, align 4
  %t = alloca i32, align 4
  %u = alloca i32, align 4
  %v = alloca i32, align 4
  %w = alloca double, align 8
  %wmax = alloca double, align 8
  %pivot = alloca double, align 8
  %api = alloca double, align 8
  %w1 = alloca double, align 8
  store i32 %row, i32* %row.addr, align 4
  store i32 %col, i32* %col.addr, align 4
  store double %eps, double* %eps.addr, align 8
  %0 = load i32, i32* %row.addr, align 4, !dbg !78
  %cmp = icmp slt i32 %0, 2, !dbg !79
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !80

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %row.addr, align 4, !dbg !81
  %cmp1 = icmp sgt i32 %1, 500, !dbg !82
  br i1 %cmp1, label %if.then, label %lor.lhs.false2, !dbg !83

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %2 = load double, double* %eps.addr, align 8, !dbg !84
  %cmp3 = fcmp ole double %2, 0.000000e+00, !dbg !85
  br i1 %cmp3, label %if.then, label %if.end, !dbg !78

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false, %entry
  store i32 999, i32* %retval, align 4, !dbg !86
  br label %return, !dbg !86

if.end:                                           ; preds = %lor.lhs.false2
  store double 1.000000e+00, double* %w1, align 8, !dbg !87
  store i32 0, i32* %i, align 4, !dbg !88
  br label %for.cond, !dbg !89

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, i32* %i, align 4, !dbg !90
  %4 = load i32, i32* %row.addr, align 4, !dbg !91
  %cmp4 = icmp slt i32 %3, %4, !dbg !92
  br i1 %cmp4, label %for.body, label %for.end, !dbg !93

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4, !dbg !94
  %6 = load i32, i32* %i, align 4, !dbg !95
  %arrayidx = getelementptr inbounds [500 x i32], [500 x i32]* %work, i32 0, i32 %6, !dbg !96
  store i32 %5, i32* %arrayidx, align 4, !dbg !97
  br label %for.inc, !dbg !96

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4, !dbg !98
  %inc = add nsw i32 %7, 1, !dbg !98
  store i32 %inc, i32* %i, align 4, !dbg !98
  br label %for.cond, !dbg !93, !llvm.loop !99

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %k, align 4, !dbg !100
  br label %for.cond5, !dbg !101

for.cond5:                                        ; preds = %for.inc94, %for.end
  %8 = load i32, i32* %k, align 4, !dbg !102
  %9 = load i32, i32* %row.addr, align 4, !dbg !103
  %cmp6 = icmp slt i32 %8, %9, !dbg !104
  br i1 %cmp6, label %for.body7, label %for.end96, !dbg !105

for.body7:                                        ; preds = %for.cond5
  store double 0.000000e+00, double* %wmax, align 8, !dbg !106
  %10 = load i32, i32* %k, align 4, !dbg !107
  store i32 %10, i32* %i, align 4, !dbg !108
  br label %for.cond8, !dbg !109

for.cond8:                                        ; preds = %for.inc16, %for.body7
  %11 = load i32, i32* %i, align 4, !dbg !110
  %12 = load i32, i32* %row.addr, align 4, !dbg !111
  %cmp9 = icmp slt i32 %11, %12, !dbg !112
  br i1 %cmp9, label %for.body10, label %for.end18, !dbg !113

for.body10:                                       ; preds = %for.cond8
  %13 = load i32, i32* %i, align 4, !dbg !114
  %arrayidx11 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* @a, i32 0, i32 %13, !dbg !115
  %14 = load i32, i32* %k, align 4, !dbg !116
  %arrayidx12 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx11, i32 0, i32 %14, !dbg !115
  %15 = load double, double* %arrayidx12, align 8, !dbg !115
  %call = call arm_aapcs_vfpcc double @minver_fabs(double noundef %15) #2, !dbg !117
  store double %call, double* %w, align 8, !dbg !118
  %16 = load double, double* %w, align 8, !dbg !119
  %17 = load double, double* %wmax, align 8, !dbg !120
  %cmp13 = fcmp ogt double %16, %17, !dbg !121
  br i1 %cmp13, label %if.then14, label %if.end15, !dbg !119

if.then14:                                        ; preds = %for.body10
  %18 = load double, double* %w, align 8, !dbg !122
  store double %18, double* %wmax, align 8, !dbg !123
  %19 = load i32, i32* %i, align 4, !dbg !124
  store i32 %19, i32* %r, align 4, !dbg !125
  br label %if.end15, !dbg !126

if.end15:                                         ; preds = %if.then14, %for.body10
  br label %for.inc16, !dbg !127

for.inc16:                                        ; preds = %if.end15
  %20 = load i32, i32* %i, align 4, !dbg !128
  %inc17 = add nsw i32 %20, 1, !dbg !128
  store i32 %inc17, i32* %i, align 4, !dbg !128
  br label %for.cond8, !dbg !113, !llvm.loop !129

for.end18:                                        ; preds = %for.cond8
  %21 = load i32, i32* %r, align 4, !dbg !130
  %arrayidx19 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* @a, i32 0, i32 %21, !dbg !131
  %22 = load i32, i32* %k, align 4, !dbg !132
  %arrayidx20 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx19, i32 0, i32 %22, !dbg !131
  %23 = load double, double* %arrayidx20, align 8, !dbg !131
  store double %23, double* %pivot, align 8, !dbg !133
  %24 = load double, double* %pivot, align 8, !dbg !134
  %call21 = call arm_aapcs_vfpcc double @minver_fabs(double noundef %24) #2, !dbg !135
  store double %call21, double* %api, align 8, !dbg !136
  %25 = load double, double* %api, align 8, !dbg !137
  %26 = load double, double* %eps.addr, align 8, !dbg !138
  %cmp22 = fcmp ole double %25, %26, !dbg !139
  br i1 %cmp22, label %if.then23, label %if.end24, !dbg !137

if.then23:                                        ; preds = %for.end18
  %27 = load double, double* %w1, align 8, !dbg !140
  store double %27, double* @det, align 8, !dbg !141
  store i32 1, i32* %retval, align 4, !dbg !142
  br label %return, !dbg !142

if.end24:                                         ; preds = %for.end18
  %28 = load double, double* %pivot, align 8, !dbg !143
  %29 = load double, double* %w1, align 8, !dbg !144
  %mul = fmul double %29, %28, !dbg !144
  store double %mul, double* %w1, align 8, !dbg !144
  %30 = load i32, i32* %k, align 4, !dbg !145
  %31 = load i32, i32* %col.addr, align 4, !dbg !146
  %mul25 = mul nsw i32 %30, %31, !dbg !147
  store i32 %mul25, i32* %u, align 4, !dbg !148
  %32 = load i32, i32* %r, align 4, !dbg !149
  %33 = load i32, i32* %col.addr, align 4, !dbg !150
  %mul26 = mul nsw i32 %32, %33, !dbg !151
  store i32 %mul26, i32* %v, align 4, !dbg !152
  %34 = load i32, i32* %r, align 4, !dbg !153
  %35 = load i32, i32* %k, align 4, !dbg !154
  %cmp27 = icmp ne i32 %34, %35, !dbg !155
  br i1 %cmp27, label %if.then28, label %if.end48, !dbg !153

if.then28:                                        ; preds = %if.end24
  %36 = load double, double* %w, align 8, !dbg !156
  %fneg = fneg double %36, !dbg !157
  store double %fneg, double* %w1, align 8, !dbg !158
  %37 = load i32, i32* %k, align 4, !dbg !159
  %arrayidx29 = getelementptr inbounds [500 x i32], [500 x i32]* %work, i32 0, i32 %37, !dbg !160
  %38 = load i32, i32* %arrayidx29, align 4, !dbg !160
  store i32 %38, i32* %iw, align 4, !dbg !161
  %39 = load i32, i32* %r, align 4, !dbg !162
  %arrayidx30 = getelementptr inbounds [500 x i32], [500 x i32]* %work, i32 0, i32 %39, !dbg !163
  %40 = load i32, i32* %arrayidx30, align 4, !dbg !163
  %41 = load i32, i32* %k, align 4, !dbg !164
  %arrayidx31 = getelementptr inbounds [500 x i32], [500 x i32]* %work, i32 0, i32 %41, !dbg !165
  store i32 %40, i32* %arrayidx31, align 4, !dbg !166
  %42 = load i32, i32* %iw, align 4, !dbg !167
  %43 = load i32, i32* %r, align 4, !dbg !168
  %arrayidx32 = getelementptr inbounds [500 x i32], [500 x i32]* %work, i32 0, i32 %43, !dbg !169
  store i32 %42, i32* %arrayidx32, align 4, !dbg !170
  store i32 0, i32* %j, align 4, !dbg !171
  br label %for.cond33, !dbg !172

for.cond33:                                       ; preds = %for.inc45, %if.then28
  %44 = load i32, i32* %j, align 4, !dbg !173
  %45 = load i32, i32* %row.addr, align 4, !dbg !174
  %cmp34 = icmp slt i32 %44, %45, !dbg !175
  br i1 %cmp34, label %for.body35, label %for.end47, !dbg !176

for.body35:                                       ; preds = %for.cond33
  %46 = load i32, i32* %u, align 4, !dbg !177
  %47 = load i32, i32* %j, align 4, !dbg !178
  %add = add nsw i32 %46, %47, !dbg !179
  store i32 %add, i32* %s, align 4, !dbg !180
  %48 = load i32, i32* %v, align 4, !dbg !181
  %49 = load i32, i32* %j, align 4, !dbg !182
  %add36 = add nsw i32 %48, %49, !dbg !183
  store i32 %add36, i32* %t, align 4, !dbg !184
  %50 = load i32, i32* %k, align 4, !dbg !185
  %arrayidx37 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* @a, i32 0, i32 %50, !dbg !186
  %51 = load i32, i32* %j, align 4, !dbg !187
  %arrayidx38 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx37, i32 0, i32 %51, !dbg !186
  %52 = load double, double* %arrayidx38, align 8, !dbg !186
  store double %52, double* %w, align 8, !dbg !188
  %53 = load i32, i32* %r, align 4, !dbg !189
  %arrayidx39 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* @a, i32 0, i32 %53, !dbg !190
  %54 = load i32, i32* %j, align 4, !dbg !191
  %arrayidx40 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx39, i32 0, i32 %54, !dbg !190
  %55 = load double, double* %arrayidx40, align 8, !dbg !190
  %56 = load i32, i32* %k, align 4, !dbg !192
  %arrayidx41 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* @a, i32 0, i32 %56, !dbg !193
  %57 = load i32, i32* %j, align 4, !dbg !194
  %arrayidx42 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx41, i32 0, i32 %57, !dbg !193
  store double %55, double* %arrayidx42, align 8, !dbg !195
  %58 = load double, double* %w, align 8, !dbg !196
  %59 = load i32, i32* %r, align 4, !dbg !197
  %arrayidx43 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* @a, i32 0, i32 %59, !dbg !198
  %60 = load i32, i32* %j, align 4, !dbg !199
  %arrayidx44 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx43, i32 0, i32 %60, !dbg !198
  store double %58, double* %arrayidx44, align 8, !dbg !200
  br label %for.inc45, !dbg !201

for.inc45:                                        ; preds = %for.body35
  %61 = load i32, i32* %j, align 4, !dbg !202
  %inc46 = add nsw i32 %61, 1, !dbg !202
  store i32 %inc46, i32* %j, align 4, !dbg !202
  br label %for.cond33, !dbg !176, !llvm.loop !203

for.end47:                                        ; preds = %for.cond33
  br label %if.end48, !dbg !204

if.end48:                                         ; preds = %for.end47, %if.end24
  store i32 0, i32* %i, align 4, !dbg !205
  br label %for.cond49, !dbg !206

for.cond49:                                       ; preds = %for.inc54, %if.end48
  %62 = load i32, i32* %i, align 4, !dbg !207
  %63 = load i32, i32* %row.addr, align 4, !dbg !208
  %cmp50 = icmp slt i32 %62, %63, !dbg !209
  br i1 %cmp50, label %for.body51, label %for.end56, !dbg !210

for.body51:                                       ; preds = %for.cond49
  %64 = load double, double* %pivot, align 8, !dbg !211
  %65 = load i32, i32* %k, align 4, !dbg !212
  %arrayidx52 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* @a, i32 0, i32 %65, !dbg !213
  %66 = load i32, i32* %i, align 4, !dbg !214
  %arrayidx53 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx52, i32 0, i32 %66, !dbg !213
  %67 = load double, double* %arrayidx53, align 8, !dbg !215
  %div = fdiv double %67, %64, !dbg !215
  store double %div, double* %arrayidx53, align 8, !dbg !215
  br label %for.inc54, !dbg !213

for.inc54:                                        ; preds = %for.body51
  %68 = load i32, i32* %i, align 4, !dbg !216
  %inc55 = add nsw i32 %68, 1, !dbg !216
  store i32 %inc55, i32* %i, align 4, !dbg !216
  br label %for.cond49, !dbg !210, !llvm.loop !217

for.end56:                                        ; preds = %for.cond49
  store i32 0, i32* %i, align 4, !dbg !218
  br label %for.cond57, !dbg !219

for.cond57:                                       ; preds = %for.inc88, %for.end56
  %69 = load i32, i32* %i, align 4, !dbg !220
  %70 = load i32, i32* %row.addr, align 4, !dbg !221
  %cmp58 = icmp slt i32 %69, %70, !dbg !222
  br i1 %cmp58, label %for.body59, label %for.end90, !dbg !223

for.body59:                                       ; preds = %for.cond57
  %71 = load i32, i32* %i, align 4, !dbg !224
  %72 = load i32, i32* %k, align 4, !dbg !225
  %cmp60 = icmp ne i32 %71, %72, !dbg !226
  br i1 %cmp60, label %if.then61, label %if.end87, !dbg !224

if.then61:                                        ; preds = %for.body59
  %73 = load i32, i32* %i, align 4, !dbg !227
  %74 = load i32, i32* %col.addr, align 4, !dbg !228
  %mul62 = mul nsw i32 %73, %74, !dbg !229
  store i32 %mul62, i32* %v, align 4, !dbg !230
  %75 = load i32, i32* %v, align 4, !dbg !231
  %76 = load i32, i32* %k, align 4, !dbg !232
  %add63 = add nsw i32 %75, %76, !dbg !233
  store i32 %add63, i32* %s, align 4, !dbg !234
  %77 = load i32, i32* %i, align 4, !dbg !235
  %arrayidx64 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* @a, i32 0, i32 %77, !dbg !236
  %78 = load i32, i32* %k, align 4, !dbg !237
  %arrayidx65 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx64, i32 0, i32 %78, !dbg !236
  %79 = load double, double* %arrayidx65, align 8, !dbg !236
  store double %79, double* %w, align 8, !dbg !238
  %80 = load double, double* %w, align 8, !dbg !239
  %cmp66 = fcmp une double %80, 0.000000e+00, !dbg !240
  br i1 %cmp66, label %if.then67, label %if.end86, !dbg !239

if.then67:                                        ; preds = %if.then61
  store i32 0, i32* %j, align 4, !dbg !241
  br label %for.cond68, !dbg !242

for.cond68:                                       ; preds = %for.inc79, %if.then67
  %81 = load i32, i32* %j, align 4, !dbg !243
  %82 = load i32, i32* %row.addr, align 4, !dbg !244
  %cmp69 = icmp slt i32 %81, %82, !dbg !245
  br i1 %cmp69, label %for.body70, label %for.end81, !dbg !246

for.body70:                                       ; preds = %for.cond68
  %83 = load i32, i32* %j, align 4, !dbg !247
  %84 = load i32, i32* %k, align 4, !dbg !248
  %cmp71 = icmp ne i32 %83, %84, !dbg !249
  br i1 %cmp71, label %if.then72, label %if.end78, !dbg !247

if.then72:                                        ; preds = %for.body70
  %85 = load double, double* %w, align 8, !dbg !250
  %86 = load i32, i32* %k, align 4, !dbg !251
  %arrayidx73 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* @a, i32 0, i32 %86, !dbg !252
  %87 = load i32, i32* %j, align 4, !dbg !253
  %arrayidx74 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx73, i32 0, i32 %87, !dbg !252
  %88 = load double, double* %arrayidx74, align 8, !dbg !252
  %89 = load i32, i32* %i, align 4, !dbg !254
  %arrayidx76 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* @a, i32 0, i32 %89, !dbg !255
  %90 = load i32, i32* %j, align 4, !dbg !256
  %arrayidx77 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx76, i32 0, i32 %90, !dbg !255
  %91 = load double, double* %arrayidx77, align 8, !dbg !257
  %neg = fneg double %85, !dbg !257
  %92 = call double @llvm.fmuladd.f64(double %neg, double %88, double %91), !dbg !257
  store double %92, double* %arrayidx77, align 8, !dbg !257
  br label %if.end78, !dbg !255

if.end78:                                         ; preds = %if.then72, %for.body70
  br label %for.inc79, !dbg !248

for.inc79:                                        ; preds = %if.end78
  %93 = load i32, i32* %j, align 4, !dbg !258
  %inc80 = add nsw i32 %93, 1, !dbg !258
  store i32 %inc80, i32* %j, align 4, !dbg !258
  br label %for.cond68, !dbg !246, !llvm.loop !259

for.end81:                                        ; preds = %for.cond68
  %94 = load double, double* %w, align 8, !dbg !261
  %fneg82 = fneg double %94, !dbg !262
  %95 = load double, double* %pivot, align 8, !dbg !263
  %div83 = fdiv double %fneg82, %95, !dbg !264
  %96 = load i32, i32* %i, align 4, !dbg !265
  %arrayidx84 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* @a, i32 0, i32 %96, !dbg !266
  %97 = load i32, i32* %k, align 4, !dbg !267
  %arrayidx85 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx84, i32 0, i32 %97, !dbg !266
  store double %div83, double* %arrayidx85, align 8, !dbg !268
  br label %if.end86, !dbg !269

if.end86:                                         ; preds = %for.end81, %if.then61
  br label %if.end87, !dbg !270

if.end87:                                         ; preds = %if.end86, %for.body59
  br label %for.inc88, !dbg !271

for.inc88:                                        ; preds = %if.end87
  %98 = load i32, i32* %i, align 4, !dbg !272
  %inc89 = add nsw i32 %98, 1, !dbg !272
  store i32 %inc89, i32* %i, align 4, !dbg !272
  br label %for.cond57, !dbg !223, !llvm.loop !273

for.end90:                                        ; preds = %for.cond57
  %99 = load double, double* %pivot, align 8, !dbg !274
  %div91 = fdiv double 1.000000e+00, %99, !dbg !275
  %100 = load i32, i32* %k, align 4, !dbg !276
  %arrayidx92 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* @a, i32 0, i32 %100, !dbg !277
  %101 = load i32, i32* %k, align 4, !dbg !278
  %arrayidx93 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx92, i32 0, i32 %101, !dbg !277
  store double %div91, double* %arrayidx93, align 8, !dbg !279
  br label %for.inc94, !dbg !280

for.inc94:                                        ; preds = %for.end90
  %102 = load i32, i32* %k, align 4, !dbg !281
  %inc95 = add nsw i32 %102, 1, !dbg !281
  store i32 %inc95, i32* %k, align 4, !dbg !281
  br label %for.cond5, !dbg !105, !llvm.loop !282

for.end96:                                        ; preds = %for.cond5
  store i32 0, i32* %i, align 4, !dbg !283
  br label %for.cond97, !dbg !284

for.cond97:                                       ; preds = %for.inc125, %for.end96
  %103 = load i32, i32* %i, align 4, !dbg !285
  %104 = load i32, i32* %row.addr, align 4, !dbg !286
  %cmp98 = icmp slt i32 %103, %104, !dbg !287
  br i1 %cmp98, label %for.body99, label %for.end127, !dbg !288

for.body99:                                       ; preds = %for.cond97
  br label %while.body, !dbg !289

while.body:                                       ; preds = %for.body99, %for.end124
  %105 = load i32, i32* %i, align 4, !dbg !290
  %arrayidx100 = getelementptr inbounds [500 x i32], [500 x i32]* %work, i32 0, i32 %105, !dbg !291
  %106 = load i32, i32* %arrayidx100, align 4, !dbg !291
  store i32 %106, i32* %k, align 4, !dbg !292
  %107 = load i32, i32* %k, align 4, !dbg !293
  %108 = load i32, i32* %i, align 4, !dbg !294
  %cmp101 = icmp eq i32 %107, %108, !dbg !295
  br i1 %cmp101, label %if.then102, label %if.end103, !dbg !293

if.then102:                                       ; preds = %while.body
  br label %while.end, !dbg !296

if.end103:                                        ; preds = %while.body
  %109 = load i32, i32* %k, align 4, !dbg !297
  %arrayidx104 = getelementptr inbounds [500 x i32], [500 x i32]* %work, i32 0, i32 %109, !dbg !298
  %110 = load i32, i32* %arrayidx104, align 4, !dbg !298
  store i32 %110, i32* %iw, align 4, !dbg !299
  %111 = load i32, i32* %i, align 4, !dbg !300
  %arrayidx105 = getelementptr inbounds [500 x i32], [500 x i32]* %work, i32 0, i32 %111, !dbg !301
  %112 = load i32, i32* %arrayidx105, align 4, !dbg !301
  %113 = load i32, i32* %k, align 4, !dbg !302
  %arrayidx106 = getelementptr inbounds [500 x i32], [500 x i32]* %work, i32 0, i32 %113, !dbg !303
  store i32 %112, i32* %arrayidx106, align 4, !dbg !304
  %114 = load i32, i32* %iw, align 4, !dbg !305
  %115 = load i32, i32* %i, align 4, !dbg !306
  %arrayidx107 = getelementptr inbounds [500 x i32], [500 x i32]* %work, i32 0, i32 %115, !dbg !307
  store i32 %114, i32* %arrayidx107, align 4, !dbg !308
  store i32 0, i32* %j, align 4, !dbg !309
  br label %for.cond108, !dbg !310

for.cond108:                                      ; preds = %for.inc122, %if.end103
  %116 = load i32, i32* %j, align 4, !dbg !311
  %117 = load i32, i32* %row.addr, align 4, !dbg !312
  %cmp109 = icmp slt i32 %116, %117, !dbg !313
  br i1 %cmp109, label %for.body110, label %for.end124, !dbg !314

for.body110:                                      ; preds = %for.cond108
  %118 = load i32, i32* %j, align 4, !dbg !315
  %119 = load i32, i32* %col.addr, align 4, !dbg !316
  %mul111 = mul nsw i32 %118, %119, !dbg !317
  store i32 %mul111, i32* %u, align 4, !dbg !318
  %120 = load i32, i32* %u, align 4, !dbg !319
  %121 = load i32, i32* %i, align 4, !dbg !320
  %add112 = add nsw i32 %120, %121, !dbg !321
  store i32 %add112, i32* %s, align 4, !dbg !322
  %122 = load i32, i32* %u, align 4, !dbg !323
  %123 = load i32, i32* %k, align 4, !dbg !324
  %add113 = add nsw i32 %122, %123, !dbg !325
  store i32 %add113, i32* %t, align 4, !dbg !326
  %124 = load i32, i32* %k, align 4, !dbg !327
  %arrayidx114 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* @a, i32 0, i32 %124, !dbg !328
  %125 = load i32, i32* %i, align 4, !dbg !329
  %arrayidx115 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx114, i32 0, i32 %125, !dbg !328
  %126 = load double, double* %arrayidx115, align 8, !dbg !328
  store double %126, double* %w, align 8, !dbg !330
  %127 = load i32, i32* %k, align 4, !dbg !331
  %arrayidx116 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* @a, i32 0, i32 %127, !dbg !332
  %128 = load i32, i32* %k, align 4, !dbg !333
  %arrayidx117 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx116, i32 0, i32 %128, !dbg !332
  %129 = load double, double* %arrayidx117, align 8, !dbg !332
  %130 = load i32, i32* %k, align 4, !dbg !334
  %arrayidx118 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* @a, i32 0, i32 %130, !dbg !335
  %131 = load i32, i32* %i, align 4, !dbg !336
  %arrayidx119 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx118, i32 0, i32 %131, !dbg !335
  store double %129, double* %arrayidx119, align 8, !dbg !337
  %132 = load double, double* %w, align 8, !dbg !338
  %133 = load i32, i32* %k, align 4, !dbg !339
  %arrayidx120 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* @a, i32 0, i32 %133, !dbg !340
  %134 = load i32, i32* %k, align 4, !dbg !341
  %arrayidx121 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx120, i32 0, i32 %134, !dbg !340
  store double %132, double* %arrayidx121, align 8, !dbg !342
  br label %for.inc122, !dbg !343

for.inc122:                                       ; preds = %for.body110
  %135 = load i32, i32* %j, align 4, !dbg !344
  %inc123 = add nsw i32 %135, 1, !dbg !344
  store i32 %inc123, i32* %j, align 4, !dbg !344
  br label %for.cond108, !dbg !314, !llvm.loop !345

for.end124:                                       ; preds = %for.cond108
  br label %while.body, !dbg !289, !llvm.loop !346

while.end:                                        ; preds = %if.then102
  br label %for.inc125, !dbg !348

for.inc125:                                       ; preds = %while.end
  %136 = load i32, i32* %i, align 4, !dbg !349
  %inc126 = add nsw i32 %136, 1, !dbg !349
  store i32 %inc126, i32* %i, align 4, !dbg !349
  br label %for.cond97, !dbg !288, !llvm.loop !350

for.end127:                                       ; preds = %for.cond97
  %137 = load double, double* %w1, align 8, !dbg !351
  store double %137, double* @det, align 8, !dbg !352
  store i32 0, i32* %retval, align 4, !dbg !353
  br label %return, !dbg !353

return:                                           ; preds = %for.end127, %if.then23, %if.then
  %138 = load i32, i32* %retval, align 4, !dbg !354
  ret i32 %138, !dbg !354
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @mmul(i32 noundef %row_a, i32 noundef %col_a, i32 noundef %row_b, i32 noundef %col_b) #0 !dbg !355 {
entry:
  %retval = alloca i32, align 4
  %row_a.addr = alloca i32, align 4
  %col_a.addr = alloca i32, align 4
  %row_b.addr = alloca i32, align 4
  %col_b.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %row_c = alloca i32, align 4
  %col_c = alloca i32, align 4
  %w = alloca double, align 8
  store i32 %row_a, i32* %row_a.addr, align 4
  store i32 %col_a, i32* %col_a.addr, align 4
  store i32 %row_b, i32* %row_b.addr, align 4
  store i32 %col_b, i32* %col_b.addr, align 4
  %0 = load i32, i32* %row_a.addr, align 4, !dbg !356
  store i32 %0, i32* %row_c, align 4, !dbg !357
  %1 = load i32, i32* %col_b.addr, align 4, !dbg !358
  store i32 %1, i32* %col_c, align 4, !dbg !359
  %2 = load i32, i32* %row_c, align 4, !dbg !360
  %cmp = icmp slt i32 %2, 1, !dbg !361
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !362

lor.lhs.false:                                    ; preds = %entry
  %3 = load i32, i32* %row_b.addr, align 4, !dbg !363
  %cmp1 = icmp slt i32 %3, 1, !dbg !364
  br i1 %cmp1, label %if.then, label %lor.lhs.false2, !dbg !365

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %4 = load i32, i32* %col_c, align 4, !dbg !366
  %cmp3 = icmp slt i32 %4, 1, !dbg !367
  br i1 %cmp3, label %if.then, label %lor.lhs.false4, !dbg !368

lor.lhs.false4:                                   ; preds = %lor.lhs.false2
  %5 = load i32, i32* %col_a.addr, align 4, !dbg !369
  %6 = load i32, i32* %row_b.addr, align 4, !dbg !370
  %cmp5 = icmp ne i32 %5, %6, !dbg !371
  br i1 %cmp5, label %if.then, label %if.end, !dbg !360

if.then:                                          ; preds = %lor.lhs.false4, %lor.lhs.false2, %lor.lhs.false, %entry
  store i32 999, i32* %retval, align 4, !dbg !372
  br label %return, !dbg !372

if.end:                                           ; preds = %lor.lhs.false4
  store i32 0, i32* %i, align 4, !dbg !373
  br label %for.cond, !dbg !374

for.cond:                                         ; preds = %for.inc21, %if.end
  %7 = load i32, i32* %i, align 4, !dbg !375
  %8 = load i32, i32* %row_c, align 4, !dbg !376
  %cmp6 = icmp slt i32 %7, %8, !dbg !377
  br i1 %cmp6, label %for.body, label %for.end23, !dbg !378

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4, !dbg !379
  br label %for.cond7, !dbg !380

for.cond7:                                        ; preds = %for.inc18, %for.body
  %9 = load i32, i32* %j, align 4, !dbg !381
  %10 = load i32, i32* %col_c, align 4, !dbg !382
  %cmp8 = icmp slt i32 %9, %10, !dbg !383
  br i1 %cmp8, label %for.body9, label %for.end20, !dbg !384

for.body9:                                        ; preds = %for.cond7
  store double 0.000000e+00, double* %w, align 8, !dbg !385
  store i32 0, i32* %k, align 4, !dbg !386
  br label %for.cond10, !dbg !387

for.cond10:                                       ; preds = %for.inc, %for.body9
  %11 = load i32, i32* %k, align 4, !dbg !388
  %12 = load i32, i32* %row_b.addr, align 4, !dbg !389
  %cmp11 = icmp slt i32 %11, %12, !dbg !390
  br i1 %cmp11, label %for.body12, label %for.end, !dbg !391

for.body12:                                       ; preds = %for.cond10
  %13 = load i32, i32* %i, align 4, !dbg !392
  %arrayidx = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* @a, i32 0, i32 %13, !dbg !393
  %14 = load i32, i32* %k, align 4, !dbg !394
  %arrayidx13 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx, i32 0, i32 %14, !dbg !393
  %15 = load double, double* %arrayidx13, align 8, !dbg !393
  %16 = load i32, i32* %k, align 4, !dbg !395
  %arrayidx14 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* @b, i32 0, i32 %16, !dbg !396
  %17 = load i32, i32* %j, align 4, !dbg !397
  %arrayidx15 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx14, i32 0, i32 %17, !dbg !396
  %18 = load double, double* %arrayidx15, align 8, !dbg !396
  %19 = load double, double* %w, align 8, !dbg !398
  %20 = call double @llvm.fmuladd.f64(double %15, double %18, double %19), !dbg !398
  store double %20, double* %w, align 8, !dbg !398
  br label %for.inc, !dbg !399

for.inc:                                          ; preds = %for.body12
  %21 = load i32, i32* %k, align 4, !dbg !400
  %inc = add nsw i32 %21, 1, !dbg !400
  store i32 %inc, i32* %k, align 4, !dbg !400
  br label %for.cond10, !dbg !391, !llvm.loop !401

for.end:                                          ; preds = %for.cond10
  %22 = load double, double* %w, align 8, !dbg !403
  %23 = load i32, i32* %i, align 4, !dbg !404
  %arrayidx16 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* @c, i32 0, i32 %23, !dbg !405
  %24 = load i32, i32* %j, align 4, !dbg !406
  %arrayidx17 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx16, i32 0, i32 %24, !dbg !405
  store double %22, double* %arrayidx17, align 8, !dbg !407
  br label %for.inc18, !dbg !408

for.inc18:                                        ; preds = %for.end
  %25 = load i32, i32* %j, align 4, !dbg !409
  %inc19 = add nsw i32 %25, 1, !dbg !409
  store i32 %inc19, i32* %j, align 4, !dbg !409
  br label %for.cond7, !dbg !384, !llvm.loop !410

for.end20:                                        ; preds = %for.cond7
  br label %for.inc21, !dbg !411

for.inc21:                                        ; preds = %for.end20
  %26 = load i32, i32* %i, align 4, !dbg !412
  %inc22 = add nsw i32 %26, 1, !dbg !412
  store i32 %inc22, i32* %i, align 4, !dbg !412
  br label %for.cond, !dbg !378, !llvm.loop !413

for.end23:                                        ; preds = %for.cond
  store i32 0, i32* %retval, align 4, !dbg !414
  br label %return, !dbg !414

return:                                           ; preds = %for.end23, %if.then
  %27 = load i32, i32* %retval, align 4, !dbg !415
  ret i32 %27, !dbg !415
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
!1 = !DIFile(filename: "/workspaces/llvmta/testcases/wcet_bench/minver.c", directory: "/workspaces/llvmta/testcases/util_scripts", checksumkind: CSK_MD5, checksum: "bd26e70ec214ad9b2307d5059c4112d4")
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
!12 = distinct !DISubprogram(name: "minver_fabs", scope: !13, file: !13, line: 65, type: !14, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!13 = !DIFile(filename: "wcet_bench/minver.c", directory: "/workspaces/llvmta/testcases", checksumkind: CSK_MD5, checksum: "bd26e70ec214ad9b2307d5059c4112d4")
!14 = !DISubroutineType(types: !15)
!15 = !{}
!16 = !DILocation(line: 69, column: 7, scope: !12)
!17 = !DILocation(line: 69, column: 9, scope: !12)
!18 = !DILocation(line: 69, column: 19, scope: !12)
!19 = !DILocation(line: 69, column: 17, scope: !12)
!20 = !DILocation(line: 69, column: 15, scope: !12)
!21 = !DILocation(line: 70, column: 13, scope: !12)
!22 = !DILocation(line: 70, column: 12, scope: !12)
!23 = !DILocation(line: 70, column: 10, scope: !12)
!24 = !DILocation(line: 71, column: 10, scope: !12)
!25 = !DILocation(line: 71, column: 3, scope: !12)
!26 = distinct !DISubprogram(name: "main_minver", scope: !13, file: !13, line: 74, type: !14, scopeLine: 75, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!27 = !DILocation(line: 79, column: 6, scope: !26)
!28 = !DILocation(line: 81, column: 8, scope: !26)
!29 = !DILocation(line: 81, column: 6, scope: !26)
!30 = !DILocation(line: 81, column: 13, scope: !26)
!31 = !DILocation(line: 81, column: 15, scope: !26)
!32 = !DILocation(line: 81, column: 2, scope: !26)
!33 = !DILocation(line: 82, column: 10, scope: !26)
!34 = !DILocation(line: 82, column: 8, scope: !26)
!35 = !DILocation(line: 82, column: 15, scope: !26)
!36 = !DILocation(line: 82, column: 17, scope: !26)
!37 = !DILocation(line: 82, column: 4, scope: !26)
!38 = !DILocation(line: 83, column: 19, scope: !26)
!39 = !DILocation(line: 83, column: 17, scope: !26)
!40 = !DILocation(line: 83, column: 22, scope: !26)
!41 = !DILocation(line: 83, column: 9, scope: !26)
!42 = !DILocation(line: 83, column: 6, scope: !26)
!43 = !DILocation(line: 83, column: 12, scope: !26)
!44 = !DILocation(line: 83, column: 15, scope: !26)
!45 = !DILocation(line: 82, column: 23, scope: !26)
!46 = distinct !{!46, !37, !47, !48}
!47 = !DILocation(line: 83, column: 23, scope: !26)
!48 = !{!"llvm.loop.mustprogress"}
!49 = !DILocation(line: 81, column: 21, scope: !26)
!50 = distinct !{!50, !32, !47, !48}
!51 = !DILocation(line: 85, column: 15, scope: !26)
!52 = !DILocation(line: 85, column: 2, scope: !26)
!53 = !DILocation(line: 86, column: 8, scope: !26)
!54 = !DILocation(line: 86, column: 6, scope: !26)
!55 = !DILocation(line: 86, column: 13, scope: !26)
!56 = !DILocation(line: 86, column: 15, scope: !26)
!57 = !DILocation(line: 86, column: 2, scope: !26)
!58 = !DILocation(line: 87, column: 10, scope: !26)
!59 = !DILocation(line: 87, column: 8, scope: !26)
!60 = !DILocation(line: 87, column: 15, scope: !26)
!61 = !DILocation(line: 87, column: 17, scope: !26)
!62 = !DILocation(line: 87, column: 4, scope: !26)
!63 = !DILocation(line: 88, column: 20, scope: !26)
!64 = !DILocation(line: 88, column: 18, scope: !26)
!65 = !DILocation(line: 88, column: 23, scope: !26)
!66 = !DILocation(line: 88, column: 10, scope: !26)
!67 = !DILocation(line: 88, column: 6, scope: !26)
!68 = !DILocation(line: 88, column: 13, scope: !26)
!69 = !DILocation(line: 88, column: 16, scope: !26)
!70 = !DILocation(line: 87, column: 23, scope: !26)
!71 = distinct !{!71, !62, !72, !48}
!72 = !DILocation(line: 88, column: 24, scope: !26)
!73 = !DILocation(line: 86, column: 21, scope: !26)
!74 = distinct !{!74, !57, !72, !48}
!75 = !DILocation(line: 90, column: 2, scope: !26)
!76 = !DILocation(line: 91, column: 2, scope: !26)
!77 = distinct !DISubprogram(name: "minver", scope: !13, file: !13, line: 119, type: !14, scopeLine: 120, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!78 = !DILocation(line: 125, column: 5, scope: !77)
!79 = !DILocation(line: 125, column: 9, scope: !77)
!80 = !DILocation(line: 125, column: 13, scope: !77)
!81 = !DILocation(line: 125, column: 16, scope: !77)
!82 = !DILocation(line: 125, column: 20, scope: !77)
!83 = !DILocation(line: 125, column: 26, scope: !77)
!84 = !DILocation(line: 125, column: 29, scope: !77)
!85 = !DILocation(line: 125, column: 33, scope: !77)
!86 = !DILocation(line: 125, column: 41, scope: !77)
!87 = !DILocation(line: 126, column: 5, scope: !77)
!88 = !DILocation(line: 127, column: 8, scope: !77)
!89 = !DILocation(line: 127, column: 6, scope: !77)
!90 = !DILocation(line: 127, column: 13, scope: !77)
!91 = !DILocation(line: 127, column: 17, scope: !77)
!92 = !DILocation(line: 127, column: 15, scope: !77)
!93 = !DILocation(line: 127, column: 2, scope: !77)
!94 = !DILocation(line: 128, column: 14, scope: !77)
!95 = !DILocation(line: 128, column: 9, scope: !77)
!96 = !DILocation(line: 128, column: 4, scope: !77)
!97 = !DILocation(line: 128, column: 12, scope: !77)
!98 = !DILocation(line: 127, column: 23, scope: !77)
!99 = distinct !{!99, !93, !94, !48}
!100 = !DILocation(line: 129, column: 8, scope: !77)
!101 = !DILocation(line: 129, column: 6, scope: !77)
!102 = !DILocation(line: 129, column: 13, scope: !77)
!103 = !DILocation(line: 129, column: 17, scope: !77)
!104 = !DILocation(line: 129, column: 15, scope: !77)
!105 = !DILocation(line: 129, column: 2, scope: !77)
!106 = !DILocation(line: 131, column: 11, scope: !77)
!107 = !DILocation(line: 132, column: 14, scope: !77)
!108 = !DILocation(line: 132, column: 12, scope: !77)
!109 = !DILocation(line: 132, column: 10, scope: !77)
!110 = !DILocation(line: 132, column: 17, scope: !77)
!111 = !DILocation(line: 132, column: 21, scope: !77)
!112 = !DILocation(line: 132, column: 19, scope: !77)
!113 = !DILocation(line: 132, column: 6, scope: !77)
!114 = !DILocation(line: 134, column: 21, scope: !77)
!115 = !DILocation(line: 134, column: 19, scope: !77)
!116 = !DILocation(line: 134, column: 24, scope: !77)
!117 = !DILocation(line: 134, column: 7, scope: !77)
!118 = !DILocation(line: 134, column: 5, scope: !77)
!119 = !DILocation(line: 135, column: 6, scope: !77)
!120 = !DILocation(line: 135, column: 10, scope: !77)
!121 = !DILocation(line: 135, column: 8, scope: !77)
!122 = !DILocation(line: 137, column: 14, scope: !77)
!123 = !DILocation(line: 137, column: 12, scope: !77)
!124 = !DILocation(line: 138, column: 11, scope: !77)
!125 = !DILocation(line: 138, column: 9, scope: !77)
!126 = !DILocation(line: 139, column: 5, scope: !77)
!127 = !DILocation(line: 140, column: 8, scope: !77)
!128 = !DILocation(line: 132, column: 27, scope: !77)
!129 = distinct !{!129, !113, !127, !48}
!130 = !DILocation(line: 141, column: 16, scope: !77)
!131 = !DILocation(line: 141, column: 14, scope: !77)
!132 = !DILocation(line: 141, column: 19, scope: !77)
!133 = !DILocation(line: 141, column: 12, scope: !77)
!134 = !DILocation(line: 142, column: 24, scope: !77)
!135 = !DILocation(line: 142, column: 12, scope: !77)
!136 = !DILocation(line: 142, column: 10, scope: !77)
!137 = !DILocation(line: 143, column: 9, scope: !77)
!138 = !DILocation(line: 143, column: 16, scope: !77)
!139 = !DILocation(line: 143, column: 13, scope: !77)
!140 = !DILocation(line: 145, column: 9, scope: !77)
!141 = !DILocation(line: 145, column: 7, scope: !77)
!142 = !DILocation(line: 146, column: 3, scope: !77)
!143 = !DILocation(line: 148, column: 12, scope: !77)
!144 = !DILocation(line: 148, column: 9, scope: !77)
!145 = !DILocation(line: 149, column: 10, scope: !77)
!146 = !DILocation(line: 149, column: 14, scope: !77)
!147 = !DILocation(line: 149, column: 12, scope: !77)
!148 = !DILocation(line: 149, column: 8, scope: !77)
!149 = !DILocation(line: 150, column: 10, scope: !77)
!150 = !DILocation(line: 150, column: 14, scope: !77)
!151 = !DILocation(line: 150, column: 12, scope: !77)
!152 = !DILocation(line: 150, column: 8, scope: !77)
!153 = !DILocation(line: 151, column: 9, scope: !77)
!154 = !DILocation(line: 151, column: 14, scope: !77)
!155 = !DILocation(line: 151, column: 11, scope: !77)
!156 = !DILocation(line: 153, column: 9, scope: !77)
!157 = !DILocation(line: 153, column: 8, scope: !77)
!158 = !DILocation(line: 153, column: 6, scope: !77)
!159 = !DILocation(line: 154, column: 13, scope: !77)
!160 = !DILocation(line: 154, column: 8, scope: !77)
!161 = !DILocation(line: 154, column: 6, scope: !77)
!162 = !DILocation(line: 155, column: 18, scope: !77)
!163 = !DILocation(line: 155, column: 13, scope: !77)
!164 = !DILocation(line: 155, column: 8, scope: !77)
!165 = !DILocation(line: 155, column: 3, scope: !77)
!166 = !DILocation(line: 155, column: 11, scope: !77)
!167 = !DILocation(line: 156, column: 13, scope: !77)
!168 = !DILocation(line: 156, column: 8, scope: !77)
!169 = !DILocation(line: 156, column: 3, scope: !77)
!170 = !DILocation(line: 156, column: 11, scope: !77)
!171 = !DILocation(line: 157, column: 9, scope: !77)
!172 = !DILocation(line: 157, column: 7, scope: !77)
!173 = !DILocation(line: 157, column: 14, scope: !77)
!174 = !DILocation(line: 157, column: 18, scope: !77)
!175 = !DILocation(line: 157, column: 16, scope: !77)
!176 = !DILocation(line: 157, column: 3, scope: !77)
!177 = !DILocation(line: 159, column: 11, scope: !77)
!178 = !DILocation(line: 159, column: 15, scope: !77)
!179 = !DILocation(line: 159, column: 13, scope: !77)
!180 = !DILocation(line: 159, column: 9, scope: !77)
!181 = !DILocation(line: 160, column: 11, scope: !77)
!182 = !DILocation(line: 160, column: 15, scope: !77)
!183 = !DILocation(line: 160, column: 13, scope: !77)
!184 = !DILocation(line: 160, column: 9, scope: !77)
!185 = !DILocation(line: 161, column: 13, scope: !77)
!186 = !DILocation(line: 161, column: 11, scope: !77)
!187 = !DILocation(line: 161, column: 16, scope: !77)
!188 = !DILocation(line: 161, column: 9, scope: !77)
!189 = !DILocation(line: 162, column: 19, scope: !77)
!190 = !DILocation(line: 162, column: 17, scope: !77)
!191 = !DILocation(line: 162, column: 22, scope: !77)
!192 = !DILocation(line: 162, column: 9, scope: !77)
!193 = !DILocation(line: 162, column: 7, scope: !77)
!194 = !DILocation(line: 162, column: 12, scope: !77)
!195 = !DILocation(line: 162, column: 15, scope: !77)
!196 = !DILocation(line: 163, column: 17, scope: !77)
!197 = !DILocation(line: 163, column: 9, scope: !77)
!198 = !DILocation(line: 163, column: 7, scope: !77)
!199 = !DILocation(line: 163, column: 12, scope: !77)
!200 = !DILocation(line: 163, column: 15, scope: !77)
!201 = !DILocation(line: 164, column: 5, scope: !77)
!202 = !DILocation(line: 157, column: 24, scope: !77)
!203 = distinct !{!203, !176, !201, !48}
!204 = !DILocation(line: 165, column: 8, scope: !77)
!205 = !DILocation(line: 166, column: 12, scope: !77)
!206 = !DILocation(line: 166, column: 10, scope: !77)
!207 = !DILocation(line: 166, column: 17, scope: !77)
!208 = !DILocation(line: 166, column: 21, scope: !77)
!209 = !DILocation(line: 166, column: 19, scope: !77)
!210 = !DILocation(line: 166, column: 6, scope: !77)
!211 = !DILocation(line: 167, column: 19, scope: !77)
!212 = !DILocation(line: 167, column: 10, scope: !77)
!213 = !DILocation(line: 167, column: 8, scope: !77)
!214 = !DILocation(line: 167, column: 13, scope: !77)
!215 = !DILocation(line: 167, column: 16, scope: !77)
!216 = !DILocation(line: 166, column: 27, scope: !77)
!217 = distinct !{!217, !210, !211, !48}
!218 = !DILocation(line: 168, column: 12, scope: !77)
!219 = !DILocation(line: 168, column: 10, scope: !77)
!220 = !DILocation(line: 168, column: 17, scope: !77)
!221 = !DILocation(line: 168, column: 21, scope: !77)
!222 = !DILocation(line: 168, column: 19, scope: !77)
!223 = !DILocation(line: 168, column: 6, scope: !77)
!224 = !DILocation(line: 170, column: 6, scope: !77)
!225 = !DILocation(line: 170, column: 11, scope: !77)
!226 = !DILocation(line: 170, column: 8, scope: !77)
!227 = !DILocation(line: 172, column: 11, scope: !77)
!228 = !DILocation(line: 172, column: 15, scope: !77)
!229 = !DILocation(line: 172, column: 13, scope: !77)
!230 = !DILocation(line: 172, column: 9, scope: !77)
!231 = !DILocation(line: 173, column: 11, scope: !77)
!232 = !DILocation(line: 173, column: 15, scope: !77)
!233 = !DILocation(line: 173, column: 13, scope: !77)
!234 = !DILocation(line: 173, column: 9, scope: !77)
!235 = !DILocation(line: 174, column: 13, scope: !77)
!236 = !DILocation(line: 174, column: 11, scope: !77)
!237 = !DILocation(line: 174, column: 16, scope: !77)
!238 = !DILocation(line: 174, column: 9, scope: !77)
!239 = !DILocation(line: 175, column: 10, scope: !77)
!240 = !DILocation(line: 175, column: 12, scope: !77)
!241 = !DILocation(line: 177, column: 10, scope: !77)
!242 = !DILocation(line: 177, column: 8, scope: !77)
!243 = !DILocation(line: 177, column: 15, scope: !77)
!244 = !DILocation(line: 177, column: 19, scope: !77)
!245 = !DILocation(line: 177, column: 17, scope: !77)
!246 = !DILocation(line: 177, column: 4, scope: !77)
!247 = !DILocation(line: 178, column: 9, scope: !77)
!248 = !DILocation(line: 178, column: 14, scope: !77)
!249 = !DILocation(line: 178, column: 11, scope: !77)
!250 = !DILocation(line: 178, column: 28, scope: !77)
!251 = !DILocation(line: 178, column: 34, scope: !77)
!252 = !DILocation(line: 178, column: 32, scope: !77)
!253 = !DILocation(line: 178, column: 37, scope: !77)
!254 = !DILocation(line: 178, column: 19, scope: !77)
!255 = !DILocation(line: 178, column: 17, scope: !77)
!256 = !DILocation(line: 178, column: 22, scope: !77)
!257 = !DILocation(line: 178, column: 25, scope: !77)
!258 = !DILocation(line: 177, column: 25, scope: !77)
!259 = distinct !{!259, !246, !260, !48}
!260 = !DILocation(line: 178, column: 38, scope: !77)
!261 = !DILocation(line: 179, column: 15, scope: !77)
!262 = !DILocation(line: 179, column: 14, scope: !77)
!263 = !DILocation(line: 179, column: 19, scope: !77)
!264 = !DILocation(line: 179, column: 17, scope: !77)
!265 = !DILocation(line: 179, column: 6, scope: !77)
!266 = !DILocation(line: 179, column: 4, scope: !77)
!267 = !DILocation(line: 179, column: 9, scope: !77)
!268 = !DILocation(line: 179, column: 12, scope: !77)
!269 = !DILocation(line: 180, column: 9, scope: !77)
!270 = !DILocation(line: 181, column: 5, scope: !77)
!271 = !DILocation(line: 182, column: 8, scope: !77)
!272 = !DILocation(line: 168, column: 27, scope: !77)
!273 = distinct !{!273, !223, !271, !48}
!274 = !DILocation(line: 183, column: 22, scope: !77)
!275 = !DILocation(line: 183, column: 20, scope: !77)
!276 = !DILocation(line: 183, column: 8, scope: !77)
!277 = !DILocation(line: 183, column: 6, scope: !77)
!278 = !DILocation(line: 183, column: 11, scope: !77)
!279 = !DILocation(line: 183, column: 14, scope: !77)
!280 = !DILocation(line: 184, column: 4, scope: !77)
!281 = !DILocation(line: 129, column: 23, scope: !77)
!282 = distinct !{!282, !105, !280, !48}
!283 = !DILocation(line: 185, column: 8, scope: !77)
!284 = !DILocation(line: 185, column: 6, scope: !77)
!285 = !DILocation(line: 185, column: 13, scope: !77)
!286 = !DILocation(line: 185, column: 17, scope: !77)
!287 = !DILocation(line: 185, column: 15, scope: !77)
!288 = !DILocation(line: 185, column: 2, scope: !77)
!289 = !DILocation(line: 187, column: 6, scope: !77)
!290 = !DILocation(line: 189, column: 12, scope: !77)
!291 = !DILocation(line: 189, column: 7, scope: !77)
!292 = !DILocation(line: 189, column: 5, scope: !77)
!293 = !DILocation(line: 190, column: 6, scope: !77)
!294 = !DILocation(line: 190, column: 11, scope: !77)
!295 = !DILocation(line: 190, column: 8, scope: !77)
!296 = !DILocation(line: 190, column: 14, scope: !77)
!297 = !DILocation(line: 191, column: 13, scope: !77)
!298 = !DILocation(line: 191, column: 8, scope: !77)
!299 = !DILocation(line: 191, column: 6, scope: !77)
!300 = !DILocation(line: 192, column: 18, scope: !77)
!301 = !DILocation(line: 192, column: 13, scope: !77)
!302 = !DILocation(line: 192, column: 8, scope: !77)
!303 = !DILocation(line: 192, column: 3, scope: !77)
!304 = !DILocation(line: 192, column: 11, scope: !77)
!305 = !DILocation(line: 193, column: 13, scope: !77)
!306 = !DILocation(line: 193, column: 8, scope: !77)
!307 = !DILocation(line: 193, column: 3, scope: !77)
!308 = !DILocation(line: 193, column: 11, scope: !77)
!309 = !DILocation(line: 194, column: 9, scope: !77)
!310 = !DILocation(line: 194, column: 7, scope: !77)
!311 = !DILocation(line: 194, column: 14, scope: !77)
!312 = !DILocation(line: 194, column: 18, scope: !77)
!313 = !DILocation(line: 194, column: 16, scope: !77)
!314 = !DILocation(line: 194, column: 3, scope: !77)
!315 = !DILocation(line: 196, column: 11, scope: !77)
!316 = !DILocation(line: 196, column: 15, scope: !77)
!317 = !DILocation(line: 196, column: 13, scope: !77)
!318 = !DILocation(line: 196, column: 9, scope: !77)
!319 = !DILocation(line: 197, column: 11, scope: !77)
!320 = !DILocation(line: 197, column: 15, scope: !77)
!321 = !DILocation(line: 197, column: 13, scope: !77)
!322 = !DILocation(line: 197, column: 9, scope: !77)
!323 = !DILocation(line: 198, column: 11, scope: !77)
!324 = !DILocation(line: 198, column: 15, scope: !77)
!325 = !DILocation(line: 198, column: 13, scope: !77)
!326 = !DILocation(line: 198, column: 9, scope: !77)
!327 = !DILocation(line: 199, column: 13, scope: !77)
!328 = !DILocation(line: 199, column: 11, scope: !77)
!329 = !DILocation(line: 199, column: 16, scope: !77)
!330 = !DILocation(line: 199, column: 9, scope: !77)
!331 = !DILocation(line: 200, column: 19, scope: !77)
!332 = !DILocation(line: 200, column: 17, scope: !77)
!333 = !DILocation(line: 200, column: 22, scope: !77)
!334 = !DILocation(line: 200, column: 9, scope: !77)
!335 = !DILocation(line: 200, column: 7, scope: !77)
!336 = !DILocation(line: 200, column: 12, scope: !77)
!337 = !DILocation(line: 200, column: 15, scope: !77)
!338 = !DILocation(line: 201, column: 17, scope: !77)
!339 = !DILocation(line: 201, column: 9, scope: !77)
!340 = !DILocation(line: 201, column: 7, scope: !77)
!341 = !DILocation(line: 201, column: 12, scope: !77)
!342 = !DILocation(line: 201, column: 15, scope: !77)
!343 = !DILocation(line: 202, column: 5, scope: !77)
!344 = !DILocation(line: 194, column: 24, scope: !77)
!345 = distinct !{!345, !314, !343, !48}
!346 = distinct !{!346, !289, !347}
!347 = !DILocation(line: 203, column: 8, scope: !77)
!348 = !DILocation(line: 204, column: 4, scope: !77)
!349 = !DILocation(line: 185, column: 23, scope: !77)
!350 = distinct !{!350, !288, !348, !48}
!351 = !DILocation(line: 205, column: 8, scope: !77)
!352 = !DILocation(line: 205, column: 6, scope: !77)
!353 = !DILocation(line: 206, column: 2, scope: !77)
!354 = !DILocation(line: 208, column: 1, scope: !77)
!355 = distinct !DISubprogram(name: "mmul", scope: !13, file: !13, line: 95, type: !14, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!356 = !DILocation(line: 100, column: 11, scope: !355)
!357 = !DILocation(line: 100, column: 9, scope: !355)
!358 = !DILocation(line: 101, column: 11, scope: !355)
!359 = !DILocation(line: 101, column: 9, scope: !355)
!360 = !DILocation(line: 103, column: 6, scope: !355)
!361 = !DILocation(line: 103, column: 12, scope: !355)
!362 = !DILocation(line: 103, column: 16, scope: !355)
!363 = !DILocation(line: 103, column: 19, scope: !355)
!364 = !DILocation(line: 103, column: 25, scope: !355)
!365 = !DILocation(line: 103, column: 29, scope: !355)
!366 = !DILocation(line: 103, column: 32, scope: !355)
!367 = !DILocation(line: 103, column: 38, scope: !355)
!368 = !DILocation(line: 103, column: 42, scope: !355)
!369 = !DILocation(line: 103, column: 45, scope: !355)
!370 = !DILocation(line: 103, column: 54, scope: !355)
!371 = !DILocation(line: 103, column: 51, scope: !355)
!372 = !DILocation(line: 103, column: 61, scope: !355)
!373 = !DILocation(line: 104, column: 9, scope: !355)
!374 = !DILocation(line: 104, column: 7, scope: !355)
!375 = !DILocation(line: 104, column: 14, scope: !355)
!376 = !DILocation(line: 104, column: 18, scope: !355)
!377 = !DILocation(line: 104, column: 16, scope: !355)
!378 = !DILocation(line: 104, column: 3, scope: !355)
!379 = !DILocation(line: 106, column: 11, scope: !355)
!380 = !DILocation(line: 106, column: 9, scope: !355)
!381 = !DILocation(line: 106, column: 16, scope: !355)
!382 = !DILocation(line: 106, column: 20, scope: !355)
!383 = !DILocation(line: 106, column: 18, scope: !355)
!384 = !DILocation(line: 106, column: 5, scope: !355)
!385 = !DILocation(line: 108, column: 11, scope: !355)
!386 = !DILocation(line: 109, column: 15, scope: !355)
!387 = !DILocation(line: 109, column: 13, scope: !355)
!388 = !DILocation(line: 109, column: 20, scope: !355)
!389 = !DILocation(line: 109, column: 24, scope: !355)
!390 = !DILocation(line: 109, column: 22, scope: !355)
!391 = !DILocation(line: 109, column: 9, scope: !355)
!392 = !DILocation(line: 110, column: 11, scope: !355)
!393 = !DILocation(line: 110, column: 9, scope: !355)
!394 = !DILocation(line: 110, column: 14, scope: !355)
!395 = !DILocation(line: 110, column: 21, scope: !355)
!396 = !DILocation(line: 110, column: 19, scope: !355)
!397 = !DILocation(line: 110, column: 24, scope: !355)
!398 = !DILocation(line: 110, column: 6, scope: !355)
!399 = !DILocation(line: 110, column: 4, scope: !355)
!400 = !DILocation(line: 109, column: 32, scope: !355)
!401 = distinct !{!401, !391, !402, !48}
!402 = !DILocation(line: 110, column: 25, scope: !355)
!403 = !DILocation(line: 111, column: 19, scope: !355)
!404 = !DILocation(line: 111, column: 11, scope: !355)
!405 = !DILocation(line: 111, column: 9, scope: !355)
!406 = !DILocation(line: 111, column: 14, scope: !355)
!407 = !DILocation(line: 111, column: 17, scope: !355)
!408 = !DILocation(line: 112, column: 7, scope: !355)
!409 = !DILocation(line: 106, column: 28, scope: !355)
!410 = distinct !{!410, !384, !408, !48}
!411 = !DILocation(line: 113, column: 3, scope: !355)
!412 = !DILocation(line: 104, column: 26, scope: !355)
!413 = distinct !{!413, !378, !411, !48}
!414 = !DILocation(line: 114, column: 3, scope: !355)
!415 = !DILocation(line: 116, column: 1, scope: !355)
