; ModuleID = '/workspaces/llvmta/testcases/wcet_bench/lms.c'
source_filename = "/workspaces/llvmta/testcases/wcet_bench/lms.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv4t-unknown-unknown"

@mu = dso_local global float 0x3F847AE140000000, align 4
@lms_rand.next = internal global i32 1, align 4
@lms.d = internal global [201 x float] zeroinitializer, align 4
@lms.b = internal global [21 x float] zeroinitializer, align 4
@lms_lms.px = internal global [51 x float] zeroinitializer, align 4
@lms_lms.sigma = internal global float 2.000000e+00, align 4
@gaussian.ready = internal global i32 0, align 4
@gaussian.gstore = internal global float 0.000000e+00, align 4
@gaussian.rconst1 = internal global float 0x3F10000000000000, align 4
@gaussian.rconst2 = internal global float 1.638400e+04, align 4

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @lms_rand() #0 !dbg !12 {
entry:
  %0 = load i32, i32* @lms_rand.next, align 4, !dbg !16
  %mul = mul i32 %0, 1103515245, !dbg !17
  %add = add i32 %mul, 12345, !dbg !18
  store i32 %add, i32* @lms_rand.next, align 4, !dbg !19
  %1 = load i32, i32* @lms_rand.next, align 4, !dbg !20
  %div = udiv i32 %1, 65536, !dbg !21
  %rem = urem i32 %div, 32768, !dbg !22
  ret i32 %rem, !dbg !23
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @lms() #0 !dbg !24 {
entry:
  %signal_amp = alloca float, align 4
  %noise_amp = alloca float, align 4
  %arg = alloca float, align 4
  %x = alloca float, align 4
  %k = alloca i32, align 4
  %call = call arm_aapcs_vfpcc float @lms_sqrt(double noundef 2.000000e+00) #2, !dbg !25
  store float %call, float* %signal_amp, align 4, !dbg !26
  %call1 = call arm_aapcs_vfpcc float @lms_sqrt(double noundef 1.200000e+01) #2, !dbg !27
  %conv = fpext float %call1 to double, !dbg !27
  %mul = fmul double 2.000000e-01, %conv, !dbg !28
  %conv2 = fptrunc double %mul to float, !dbg !29
  store float %conv2, float* %noise_amp, align 4, !dbg !30
  store float 0x3FD41B2F80000000, float* %arg, align 4, !dbg !31
  store i32 0, i32* %k, align 4, !dbg !32
  br label %for.cond, !dbg !33

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %k, align 4, !dbg !34
  %cmp = icmp slt i32 %0, 201, !dbg !35
  br i1 %cmp, label %for.body, label %for.end, !dbg !36

for.body:                                         ; preds = %for.cond
  %1 = load float, float* %signal_amp, align 4, !dbg !37
  %2 = load float, float* %arg, align 4, !dbg !38
  %3 = load i32, i32* %k, align 4, !dbg !39
  %conv4 = sitofp i32 %3 to float, !dbg !39
  %mul5 = fmul float %2, %conv4, !dbg !40
  %conv6 = fpext float %mul5 to double, !dbg !38
  %call7 = call arm_aapcs_vfpcc float @lms_sin(double noundef %conv6) #2, !dbg !41
  %4 = load float, float* %noise_amp, align 4, !dbg !42
  %call9 = call arm_aapcs_vfpcc float @gaussian() #2, !dbg !43
  %mul10 = fmul float %4, %call9, !dbg !44
  %5 = call float @llvm.fmuladd.f32(float %1, float %call7, float %mul10), !dbg !45
  %6 = load i32, i32* %k, align 4, !dbg !46
  %arrayidx = getelementptr inbounds [201 x float], [201 x float]* @lms.d, i32 0, i32 %6, !dbg !47
  store float %5, float* %arrayidx, align 4, !dbg !48
  br label %for.inc, !dbg !49

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %k, align 4, !dbg !50
  %inc = add nsw i32 %7, 1, !dbg !50
  store i32 %inc, i32* %k, align 4, !dbg !50
  br label %for.cond, !dbg !36, !llvm.loop !51

for.end:                                          ; preds = %for.cond
  %8 = load float, float* @mu, align 4, !dbg !53
  %conv11 = fpext float %8 to double, !dbg !53
  %mul12 = fmul double 2.000000e+00, %conv11, !dbg !54
  %div = fdiv double %mul12, 2.100000e+01, !dbg !55
  %conv13 = fptrunc double %div to float, !dbg !56
  store float %conv13, float* @mu, align 4, !dbg !57
  store float 0.000000e+00, float* %x, align 4, !dbg !58
  store i32 0, i32* %k, align 4, !dbg !59
  br label %for.cond14, !dbg !60

for.cond14:                                       ; preds = %for.inc21, %for.end
  %9 = load i32, i32* %k, align 4, !dbg !61
  %cmp15 = icmp slt i32 %9, 201, !dbg !62
  br i1 %cmp15, label %for.body17, label %for.end23, !dbg !63

for.body17:                                       ; preds = %for.cond14
  %10 = load float, float* %x, align 4, !dbg !64
  %11 = load i32, i32* %k, align 4, !dbg !65
  %arrayidx18 = getelementptr inbounds [201 x float], [201 x float]* @lms.d, i32 0, i32 %11, !dbg !66
  %12 = load float, float* %arrayidx18, align 4, !dbg !66
  %13 = load float, float* @mu, align 4, !dbg !67
  %call19 = call arm_aapcs_vfpcc float @lms_lms(float noundef %10, float noundef %12, float* noundef getelementptr inbounds ([21 x float], [21 x float]* @lms.b, i32 0, i32 0), i32 noundef 20, float noundef %13, float noundef 0x3F847AE140000000) #2, !dbg !68
  %14 = load i32, i32* %k, align 4, !dbg !69
  %arrayidx20 = getelementptr inbounds [201 x float], [201 x float]* @lms.d, i32 0, i32 %14, !dbg !70
  %15 = load float, float* %arrayidx20, align 4, !dbg !70
  store float %15, float* %x, align 4, !dbg !71
  br label %for.inc21, !dbg !72

for.inc21:                                        ; preds = %for.body17
  %16 = load i32, i32* %k, align 4, !dbg !73
  %inc22 = add nsw i32 %16, 1, !dbg !73
  store i32 %inc22, i32* %k, align 4, !dbg !73
  br label %for.cond14, !dbg !63, !llvm.loop !74

for.end23:                                        ; preds = %for.cond14
  ret i32 0, !dbg !75
}

; Function Attrs: noinline nounwind
define internal arm_aapcs_vfpcc float @lms_sqrt(double noundef %0) #0 !dbg !76 {
entry:
  %val.addr = alloca float, align 4
  %x = alloca float, align 4
  %dx = alloca float, align 4
  %diff = alloca double, align 8
  %min_tol = alloca double, align 8
  %i = alloca i32, align 4
  %flag = alloca i32, align 4
  %val = fptrunc double %0 to float
  store float %val, float* %val.addr, align 4
  %1 = load float, float* %val.addr, align 4, !dbg !77
  %div = fdiv float %1, 1.000000e+01, !dbg !78
  store float %div, float* %x, align 4, !dbg !79
  store double 1.000000e-05, double* %min_tol, align 8, !dbg !80
  store i32 0, i32* %flag, align 4, !dbg !81
  %2 = load float, float* %val.addr, align 4, !dbg !82
  %cmp = fcmp oeq float %2, 0.000000e+00, !dbg !83
  br i1 %cmp, label %if.then, label %if.else, !dbg !82

if.then:                                          ; preds = %entry
  store float 0.000000e+00, float* %x, align 4, !dbg !84
  br label %if.end16, !dbg !85

if.else:                                          ; preds = %entry
  store i32 1, i32* %i, align 4, !dbg !86
  br label %for.cond, !dbg !87

for.cond:                                         ; preds = %for.inc, %if.else
  %3 = load i32, i32* %i, align 4, !dbg !88
  %cmp1 = icmp slt i32 %3, 20, !dbg !89
  br i1 %cmp1, label %for.body, label %for.end, !dbg !90

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %flag, align 4, !dbg !91
  %tobool = icmp ne i32 %4, 0, !dbg !91
  br i1 %tobool, label %if.else14, label %if.then2, !dbg !92

if.then2:                                         ; preds = %for.body
  %5 = load float, float* %val.addr, align 4, !dbg !93
  %6 = load float, float* %x, align 4, !dbg !94
  %7 = load float, float* %x, align 4, !dbg !95
  %neg = fneg float %6, !dbg !96
  %8 = call float @llvm.fmuladd.f32(float %neg, float %7, float %5), !dbg !96
  %conv = fpext float %8 to double, !dbg !97
  %9 = load float, float* %x, align 4, !dbg !98
  %conv3 = fpext float %9 to double, !dbg !98
  %mul = fmul double 2.000000e+00, %conv3, !dbg !99
  %div4 = fdiv double %conv, %mul, !dbg !100
  %conv5 = fptrunc double %div4 to float, !dbg !97
  store float %conv5, float* %dx, align 4, !dbg !101
  %10 = load float, float* %x, align 4, !dbg !102
  %11 = load float, float* %dx, align 4, !dbg !103
  %add = fadd float %10, %11, !dbg !104
  store float %add, float* %x, align 4, !dbg !105
  %12 = load float, float* %val.addr, align 4, !dbg !106
  %13 = load float, float* %x, align 4, !dbg !107
  %14 = load float, float* %x, align 4, !dbg !108
  %neg7 = fneg float %13, !dbg !109
  %15 = call float @llvm.fmuladd.f32(float %neg7, float %14, float %12), !dbg !109
  %conv8 = fpext float %15 to double, !dbg !106
  store double %conv8, double* %diff, align 8, !dbg !110
  %16 = load double, double* %diff, align 8, !dbg !111
  %conv9 = fptrunc double %16 to float, !dbg !111
  %call = call arm_aapcs_vfpcc float @lms_fabs(float noundef %conv9) #2, !dbg !112
  %conv10 = fpext float %call to double, !dbg !112
  %17 = load double, double* %min_tol, align 8, !dbg !113
  %cmp11 = fcmp ole double %conv10, %17, !dbg !114
  br i1 %cmp11, label %if.then13, label %if.end, !dbg !112

if.then13:                                        ; preds = %if.then2
  store i32 1, i32* %flag, align 4, !dbg !115
  br label %if.end, !dbg !116

if.end:                                           ; preds = %if.then13, %if.then2
  br label %if.end15, !dbg !117

if.else14:                                        ; preds = %for.body
  br label %if.end15

if.end15:                                         ; preds = %if.else14, %if.end
  br label %for.inc, !dbg !118

for.inc:                                          ; preds = %if.end15
  %18 = load i32, i32* %i, align 4, !dbg !119
  %inc = add nsw i32 %18, 1, !dbg !119
  store i32 %inc, i32* %i, align 4, !dbg !119
  br label %for.cond, !dbg !90, !llvm.loop !120

for.end:                                          ; preds = %for.cond
  br label %if.end16

if.end16:                                         ; preds = %for.end, %if.then
  %19 = load float, float* %x, align 4, !dbg !121
  ret float %19, !dbg !122
}

; Function Attrs: noinline nounwind
define internal arm_aapcs_vfpcc float @lms_sin(double noundef %0) #0 !dbg !123 {
entry:
  %rad.addr = alloca float, align 4
  %app = alloca float, align 4
  %diff = alloca float, align 4
  %inc = alloca i32, align 4
  %rad = fptrunc double %0 to float
  store float %rad, float* %rad.addr, align 4
  store i32 1, i32* %inc, align 4, !dbg !124
  br label %while.cond, !dbg !125

while.cond:                                       ; preds = %while.body, %entry
  %1 = load float, float* %rad.addr, align 4, !dbg !126
  %conv = fpext float %1 to double, !dbg !126
  %cmp = fcmp ogt double %conv, 0x401921FB54442D18, !dbg !127
  br i1 %cmp, label %while.body, label %while.end, !dbg !125

while.body:                                       ; preds = %while.cond
  %2 = load float, float* %rad.addr, align 4, !dbg !128
  %conv2 = fpext float %2 to double, !dbg !128
  %sub = fsub double %conv2, 0x401921FB54442D18, !dbg !128
  %conv3 = fptrunc double %sub to float, !dbg !128
  store float %conv3, float* %rad.addr, align 4, !dbg !128
  br label %while.cond, !dbg !125, !llvm.loop !129

while.end:                                        ; preds = %while.cond
  br label %while.cond4, !dbg !131

while.cond4:                                      ; preds = %while.body8, %while.end
  %3 = load float, float* %rad.addr, align 4, !dbg !132
  %conv5 = fpext float %3 to double, !dbg !132
  %cmp6 = fcmp olt double %conv5, 0xC01921FB54442D18, !dbg !133
  br i1 %cmp6, label %while.body8, label %while.end11, !dbg !131

while.body8:                                      ; preds = %while.cond4
  %4 = load float, float* %rad.addr, align 4, !dbg !134
  %conv9 = fpext float %4 to double, !dbg !134
  %add = fadd double %conv9, 0x401921FB54442D18, !dbg !134
  %conv10 = fptrunc double %add to float, !dbg !134
  store float %conv10, float* %rad.addr, align 4, !dbg !134
  br label %while.cond4, !dbg !131, !llvm.loop !135

while.end11:                                      ; preds = %while.cond4
  %5 = load float, float* %rad.addr, align 4, !dbg !137
  store float %5, float* %diff, align 4, !dbg !138
  store float %5, float* %app, align 4, !dbg !139
  %6 = load float, float* %diff, align 4, !dbg !140
  %7 = load float, float* %rad.addr, align 4, !dbg !141
  %8 = load float, float* %rad.addr, align 4, !dbg !142
  %mul = fmul float %7, %8, !dbg !143
  %fneg = fneg float %mul, !dbg !144
  %mul12 = fmul float %6, %fneg, !dbg !145
  %conv13 = fpext float %mul12 to double, !dbg !146
  %9 = load i32, i32* %inc, align 4, !dbg !147
  %conv14 = sitofp i32 %9 to double, !dbg !147
  %mul15 = fmul double 2.000000e+00, %conv14, !dbg !148
  %10 = load i32, i32* %inc, align 4, !dbg !149
  %conv16 = sitofp i32 %10 to double, !dbg !149
  %11 = call double @llvm.fmuladd.f64(double 2.000000e+00, double %conv16, double 1.000000e+00), !dbg !150
  %mul18 = fmul double %mul15, %11, !dbg !151
  %div = fdiv double %conv13, %mul18, !dbg !152
  %conv19 = fptrunc double %div to float, !dbg !146
  store float %conv19, float* %diff, align 4, !dbg !153
  %12 = load float, float* %app, align 4, !dbg !154
  %13 = load float, float* %diff, align 4, !dbg !155
  %add20 = fadd float %12, %13, !dbg !156
  store float %add20, float* %app, align 4, !dbg !157
  %14 = load i32, i32* %inc, align 4, !dbg !158
  %inc21 = add nsw i32 %14, 1, !dbg !158
  store i32 %inc21, i32* %inc, align 4, !dbg !158
  br label %while.cond22, !dbg !159

while.cond22:                                     ; preds = %while.body26, %while.end11
  %15 = load float, float* %diff, align 4, !dbg !160
  %call = call arm_aapcs_vfpcc float @lms_fabs(float noundef %15) #2, !dbg !161
  %conv23 = fpext float %call to double, !dbg !161
  %cmp24 = fcmp oge double %conv23, 1.000000e-05, !dbg !162
  br i1 %cmp24, label %while.body26, label %while.end40, !dbg !159

while.body26:                                     ; preds = %while.cond22
  %16 = load float, float* %diff, align 4, !dbg !163
  %17 = load float, float* %rad.addr, align 4, !dbg !164
  %18 = load float, float* %rad.addr, align 4, !dbg !165
  %mul27 = fmul float %17, %18, !dbg !166
  %fneg28 = fneg float %mul27, !dbg !167
  %mul29 = fmul float %16, %fneg28, !dbg !168
  %conv30 = fpext float %mul29 to double, !dbg !169
  %19 = load i32, i32* %inc, align 4, !dbg !170
  %conv31 = sitofp i32 %19 to double, !dbg !170
  %mul32 = fmul double 2.000000e+00, %conv31, !dbg !171
  %20 = load i32, i32* %inc, align 4, !dbg !172
  %conv33 = sitofp i32 %20 to double, !dbg !172
  %21 = call double @llvm.fmuladd.f64(double 2.000000e+00, double %conv33, double 1.000000e+00), !dbg !173
  %mul35 = fmul double %mul32, %21, !dbg !174
  %div36 = fdiv double %conv30, %mul35, !dbg !175
  %conv37 = fptrunc double %div36 to float, !dbg !169
  store float %conv37, float* %diff, align 4, !dbg !176
  %22 = load float, float* %app, align 4, !dbg !177
  %23 = load float, float* %diff, align 4, !dbg !178
  %add38 = fadd float %22, %23, !dbg !179
  store float %add38, float* %app, align 4, !dbg !180
  %24 = load i32, i32* %inc, align 4, !dbg !181
  %inc39 = add nsw i32 %24, 1, !dbg !181
  store i32 %inc39, i32* %inc, align 4, !dbg !181
  br label %while.cond22, !dbg !159, !llvm.loop !182

while.end40:                                      ; preds = %while.cond22
  %25 = load float, float* %app, align 4, !dbg !184
  ret float %25, !dbg !185
}

; Function Attrs: noinline nounwind
define internal arm_aapcs_vfpcc float @gaussian() #0 !dbg !186 {
entry:
  %v1 = alloca float, align 4
  %v2 = alloca float, align 4
  %r = alloca float, align 4
  %fac = alloca float, align 4
  %gaus = alloca float, align 4
  %0 = load i32, i32* @gaussian.ready, align 4, !dbg !187
  %cmp = icmp eq i32 %0, 0, !dbg !188
  br i1 %cmp, label %if.then, label %if.else, !dbg !187

if.then:                                          ; preds = %entry
  %call = call arm_aapcs_vfpcc i32 @lms_rand() #2, !dbg !189
  %conv = sitofp i32 %call to float, !dbg !190
  %1 = load float, float* @gaussian.rconst2, align 4, !dbg !191
  %sub = fsub float %conv, %1, !dbg !192
  store float %sub, float* %v1, align 4, !dbg !193
  %call1 = call arm_aapcs_vfpcc i32 @lms_rand() #2, !dbg !194
  %conv2 = sitofp i32 %call1 to float, !dbg !195
  %2 = load float, float* @gaussian.rconst2, align 4, !dbg !196
  %sub3 = fsub float %conv2, %2, !dbg !197
  store float %sub3, float* %v2, align 4, !dbg !198
  %3 = load float, float* @gaussian.rconst1, align 4, !dbg !199
  %4 = load float, float* %v1, align 4, !dbg !200
  %mul = fmul float %4, %3, !dbg !200
  store float %mul, float* %v1, align 4, !dbg !200
  %5 = load float, float* @gaussian.rconst1, align 4, !dbg !201
  %6 = load float, float* %v2, align 4, !dbg !202
  %mul4 = fmul float %6, %5, !dbg !202
  store float %mul4, float* %v2, align 4, !dbg !202
  %7 = load float, float* %v1, align 4, !dbg !203
  %8 = load float, float* %v1, align 4, !dbg !204
  %9 = load float, float* %v2, align 4, !dbg !205
  %10 = load float, float* %v2, align 4, !dbg !206
  %mul6 = fmul float %9, %10, !dbg !207
  %11 = call float @llvm.fmuladd.f32(float %7, float %8, float %mul6), !dbg !208
  store float %11, float* %r, align 4, !dbg !209
  br label %while.cond, !dbg !210

while.cond:                                       ; preds = %while.body, %if.then
  %12 = load float, float* %r, align 4, !dbg !211
  %cmp7 = fcmp ogt float %12, 1.000000e+00, !dbg !212
  br i1 %cmp7, label %while.body, label %while.end, !dbg !210

while.body:                                       ; preds = %while.cond
  %call9 = call arm_aapcs_vfpcc i32 @lms_rand() #2, !dbg !213
  %conv10 = sitofp i32 %call9 to float, !dbg !214
  %13 = load float, float* @gaussian.rconst2, align 4, !dbg !215
  %sub11 = fsub float %conv10, %13, !dbg !216
  store float %sub11, float* %v1, align 4, !dbg !217
  %call12 = call arm_aapcs_vfpcc i32 @lms_rand() #2, !dbg !218
  %conv13 = sitofp i32 %call12 to float, !dbg !219
  %14 = load float, float* @gaussian.rconst2, align 4, !dbg !220
  %sub14 = fsub float %conv13, %14, !dbg !221
  store float %sub14, float* %v2, align 4, !dbg !222
  %15 = load float, float* @gaussian.rconst1, align 4, !dbg !223
  %16 = load float, float* %v1, align 4, !dbg !224
  %mul15 = fmul float %16, %15, !dbg !224
  store float %mul15, float* %v1, align 4, !dbg !224
  %17 = load float, float* @gaussian.rconst1, align 4, !dbg !225
  %18 = load float, float* %v2, align 4, !dbg !226
  %mul16 = fmul float %18, %17, !dbg !226
  store float %mul16, float* %v2, align 4, !dbg !226
  %19 = load float, float* %v1, align 4, !dbg !227
  %20 = load float, float* %v1, align 4, !dbg !228
  %21 = load float, float* %v2, align 4, !dbg !229
  %22 = load float, float* %v2, align 4, !dbg !230
  %mul18 = fmul float %21, %22, !dbg !231
  %23 = call float @llvm.fmuladd.f32(float %19, float %20, float %mul18), !dbg !232
  store float %23, float* %r, align 4, !dbg !233
  br label %while.cond, !dbg !210, !llvm.loop !234

while.end:                                        ; preds = %while.cond
  %24 = load float, float* %r, align 4, !dbg !236
  %conv19 = fpext float %24 to double, !dbg !236
  %call20 = call arm_aapcs_vfpcc float @lms_log(double noundef %conv19) #2, !dbg !237
  %mul21 = fmul float -2.000000e+00, %call20, !dbg !238
  %25 = load float, float* %r, align 4, !dbg !239
  %div = fdiv float %mul21, %25, !dbg !240
  %conv22 = fpext float %div to double, !dbg !241
  %call23 = call arm_aapcs_vfpcc float @lms_sqrt(double noundef %conv22) #2, !dbg !242
  store float %call23, float* %fac, align 4, !dbg !243
  %26 = load float, float* %v1, align 4, !dbg !244
  %27 = load float, float* %fac, align 4, !dbg !245
  %mul24 = fmul float %26, %27, !dbg !246
  store float %mul24, float* @gaussian.gstore, align 4, !dbg !247
  %28 = load float, float* %v2, align 4, !dbg !248
  %29 = load float, float* %fac, align 4, !dbg !249
  %mul25 = fmul float %28, %29, !dbg !250
  store float %mul25, float* %gaus, align 4, !dbg !251
  store i32 1, i32* @gaussian.ready, align 4, !dbg !252
  br label %if.end, !dbg !253

if.else:                                          ; preds = %entry
  store i32 0, i32* @gaussian.ready, align 4, !dbg !254
  %30 = load float, float* @gaussian.gstore, align 4, !dbg !255
  store float %30, float* %gaus, align 4, !dbg !256
  br label %if.end

if.end:                                           ; preds = %if.else, %while.end
  %31 = load float, float* %gaus, align 4, !dbg !257
  ret float %31, !dbg !258
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.fmuladd.f32(float, float, float) #1

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc float @lms_lms(float noundef %x, float noundef %d, float* noundef %b, i32 noundef %l, float noundef %mu, float noundef %alpha) #0 !dbg !259 {
entry:
  %x.addr = alloca float, align 4
  %d.addr = alloca float, align 4
  %b.addr = alloca float*, align 4
  %l.addr = alloca i32, align 4
  %mu.addr = alloca float, align 4
  %alpha.addr = alloca float, align 4
  %ll = alloca i32, align 4
  %e = alloca float, align 4
  %mu_e = alloca float, align 4
  %y = alloca float, align 4
  store float %x, float* %x.addr, align 4
  store float %d, float* %d.addr, align 4
  store float* %b, float** %b.addr, align 4
  store i32 %l, i32* %l.addr, align 4
  store float %mu, float* %mu.addr, align 4
  store float %alpha, float* %alpha.addr, align 4
  %0 = load float, float* %x.addr, align 4, !dbg !260
  store float %0, float* getelementptr inbounds ([51 x float], [51 x float]* @lms_lms.px, i32 0, i32 0), align 4, !dbg !261
  %1 = load float*, float** %b.addr, align 4, !dbg !262
  %arrayidx = getelementptr inbounds float, float* %1, i32 0, !dbg !262
  %2 = load float, float* %arrayidx, align 4, !dbg !262
  %3 = load float, float* getelementptr inbounds ([51 x float], [51 x float]* @lms_lms.px, i32 0, i32 0), align 4, !dbg !263
  %mul = fmul float %2, %3, !dbg !264
  store float %mul, float* %y, align 4, !dbg !265
  store i32 1, i32* %ll, align 4, !dbg !266
  br label %for.cond, !dbg !267

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %ll, align 4, !dbg !268
  %5 = load i32, i32* %l.addr, align 4, !dbg !269
  %cmp = icmp sle i32 %4, %5, !dbg !270
  br i1 %cmp, label %for.body, label %for.end, !dbg !271

for.body:                                         ; preds = %for.cond
  %6 = load float, float* %y, align 4, !dbg !272
  %7 = load float*, float** %b.addr, align 4, !dbg !273
  %8 = load i32, i32* %ll, align 4, !dbg !274
  %arrayidx1 = getelementptr inbounds float, float* %7, i32 %8, !dbg !273
  %9 = load float, float* %arrayidx1, align 4, !dbg !273
  %10 = load i32, i32* %ll, align 4, !dbg !275
  %arrayidx2 = getelementptr inbounds [51 x float], [51 x float]* @lms_lms.px, i32 0, i32 %10, !dbg !276
  %11 = load float, float* %arrayidx2, align 4, !dbg !276
  %12 = call float @llvm.fmuladd.f32(float %9, float %11, float %6), !dbg !277
  store float %12, float* %y, align 4, !dbg !278
  br label %for.inc, !dbg !279

for.inc:                                          ; preds = %for.body
  %13 = load i32, i32* %ll, align 4, !dbg !280
  %inc = add nsw i32 %13, 1, !dbg !280
  store i32 %inc, i32* %ll, align 4, !dbg !280
  br label %for.cond, !dbg !271, !llvm.loop !281

for.end:                                          ; preds = %for.cond
  %14 = load float, float* %d.addr, align 4, !dbg !283
  %15 = load float, float* %y, align 4, !dbg !284
  %sub = fsub float %14, %15, !dbg !285
  store float %sub, float* %e, align 4, !dbg !286
  %16 = load float, float* %alpha.addr, align 4, !dbg !287
  %17 = load float, float* getelementptr inbounds ([51 x float], [51 x float]* @lms_lms.px, i32 0, i32 0), align 4, !dbg !288
  %18 = load float, float* getelementptr inbounds ([51 x float], [51 x float]* @lms_lms.px, i32 0, i32 0), align 4, !dbg !289
  %mul4 = fmul float %17, %18, !dbg !290
  %19 = load float, float* %alpha.addr, align 4, !dbg !291
  %sub6 = fsub float 1.000000e+00, %19, !dbg !292
  %20 = load float, float* @lms_lms.sigma, align 4, !dbg !293
  %mul7 = fmul float %sub6, %20, !dbg !294
  %21 = call float @llvm.fmuladd.f32(float %16, float %mul4, float %mul7), !dbg !295
  store float %21, float* @lms_lms.sigma, align 4, !dbg !296
  %22 = load float, float* %mu.addr, align 4, !dbg !297
  %23 = load float, float* %e, align 4, !dbg !298
  %mul8 = fmul float %22, %23, !dbg !299
  %24 = load float, float* @lms_lms.sigma, align 4, !dbg !300
  %div = fdiv float %mul8, %24, !dbg !301
  store float %div, float* %mu_e, align 4, !dbg !302
  store i32 0, i32* %ll, align 4, !dbg !303
  br label %for.cond9, !dbg !304

for.cond9:                                        ; preds = %for.inc16, %for.end
  %25 = load i32, i32* %ll, align 4, !dbg !305
  %26 = load i32, i32* %l.addr, align 4, !dbg !306
  %cmp10 = icmp sle i32 %25, %26, !dbg !307
  br i1 %cmp10, label %for.body11, label %for.end18, !dbg !308

for.body11:                                       ; preds = %for.cond9
  %27 = load float*, float** %b.addr, align 4, !dbg !309
  %28 = load i32, i32* %ll, align 4, !dbg !310
  %arrayidx12 = getelementptr inbounds float, float* %27, i32 %28, !dbg !309
  %29 = load float, float* %arrayidx12, align 4, !dbg !309
  %30 = load float, float* %mu_e, align 4, !dbg !311
  %31 = load i32, i32* %ll, align 4, !dbg !312
  %arrayidx13 = getelementptr inbounds [51 x float], [51 x float]* @lms_lms.px, i32 0, i32 %31, !dbg !313
  %32 = load float, float* %arrayidx13, align 4, !dbg !313
  %33 = call float @llvm.fmuladd.f32(float %30, float %32, float %29), !dbg !314
  %34 = load float*, float** %b.addr, align 4, !dbg !315
  %35 = load i32, i32* %ll, align 4, !dbg !316
  %arrayidx15 = getelementptr inbounds float, float* %34, i32 %35, !dbg !315
  store float %33, float* %arrayidx15, align 4, !dbg !317
  br label %for.inc16, !dbg !315

for.inc16:                                        ; preds = %for.body11
  %36 = load i32, i32* %ll, align 4, !dbg !318
  %inc17 = add nsw i32 %36, 1, !dbg !318
  store i32 %inc17, i32* %ll, align 4, !dbg !318
  br label %for.cond9, !dbg !308, !llvm.loop !319

for.end18:                                        ; preds = %for.cond9
  %37 = load i32, i32* %l.addr, align 4, !dbg !321
  store i32 %37, i32* %ll, align 4, !dbg !322
  br label %for.cond19, !dbg !323

for.cond19:                                       ; preds = %for.inc25, %for.end18
  %38 = load i32, i32* %ll, align 4, !dbg !324
  %cmp20 = icmp sge i32 %38, 1, !dbg !325
  br i1 %cmp20, label %for.body21, label %for.end26, !dbg !326

for.body21:                                       ; preds = %for.cond19
  %39 = load i32, i32* %ll, align 4, !dbg !327
  %sub22 = sub nsw i32 %39, 1, !dbg !328
  %arrayidx23 = getelementptr inbounds [51 x float], [51 x float]* @lms_lms.px, i32 0, i32 %sub22, !dbg !329
  %40 = load float, float* %arrayidx23, align 4, !dbg !329
  %41 = load i32, i32* %ll, align 4, !dbg !330
  %arrayidx24 = getelementptr inbounds [51 x float], [51 x float]* @lms_lms.px, i32 0, i32 %41, !dbg !331
  store float %40, float* %arrayidx24, align 4, !dbg !332
  br label %for.inc25, !dbg !331

for.inc25:                                        ; preds = %for.body21
  %42 = load i32, i32* %ll, align 4, !dbg !333
  %dec = add nsw i32 %42, -1, !dbg !333
  store i32 %dec, i32* %ll, align 4, !dbg !333
  br label %for.cond19, !dbg !326, !llvm.loop !334

for.end26:                                        ; preds = %for.cond19
  %43 = load float, float* %y, align 4, !dbg !336
  ret float %43, !dbg !337
}

; Function Attrs: noinline nounwind
define internal arm_aapcs_vfpcc float @lms_fabs(float noundef %n) #0 !dbg !338 {
entry:
  %n.addr = alloca float, align 4
  %f = alloca float, align 4
  store float %n, float* %n.addr, align 4
  %0 = load float, float* %n.addr, align 4, !dbg !339
  %cmp = fcmp oge float %0, 0.000000e+00, !dbg !340
  br i1 %cmp, label %if.then, label %if.else, !dbg !339

if.then:                                          ; preds = %entry
  %1 = load float, float* %n.addr, align 4, !dbg !341
  store float %1, float* %f, align 4, !dbg !342
  br label %if.end, !dbg !343

if.else:                                          ; preds = %entry
  %2 = load float, float* %n.addr, align 4, !dbg !344
  %fneg = fneg float %2, !dbg !345
  store float %fneg, float* %f, align 4, !dbg !346
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load float, float* %f, align 4, !dbg !347
  ret float %3, !dbg !348
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: noinline nounwind
define internal arm_aapcs_vfpcc float @lms_log(double noundef %0) #0 !dbg !349 {
entry:
  %r.addr = alloca float, align 4
  %r = fptrunc double %0 to float
  store float %r, float* %r.addr, align 4
  ret float 4.500000e+00, !dbg !350
}

attributes #0 = { noinline nounwind "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nobuiltin "no-builtins" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 14.0.6 (git@github.com:RTS-SYSU/LLVM-TA.git b7f9c4ccdebc6c37532ddd772889e5f0ff989c79)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/workspaces/llvmta/testcases/wcet_bench/lms.c", directory: "/workspaces/llvmta/testcases/util_scripts", checksumkind: CSK_MD5, checksum: "39baeae05f9d1c2bc1e253e3ed849708")
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
!12 = distinct !DISubprogram(name: "lms_rand", scope: !13, file: !13, line: 74, type: !14, scopeLine: 75, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!13 = !DIFile(filename: "wcet_bench/lms.c", directory: "/workspaces/llvmta/testcases", checksumkind: CSK_MD5, checksum: "39baeae05f9d1c2bc1e253e3ed849708")
!14 = !DISubroutineType(types: !15)
!15 = !{}
!16 = !DILocation(line: 78, column: 10, scope: !12)
!17 = !DILocation(line: 78, column: 15, scope: !12)
!18 = !DILocation(line: 78, column: 28, scope: !12)
!19 = !DILocation(line: 78, column: 8, scope: !12)
!20 = !DILocation(line: 79, column: 25, scope: !12)
!21 = !DILocation(line: 79, column: 29, scope: !12)
!22 = !DILocation(line: 79, column: 37, scope: !12)
!23 = !DILocation(line: 79, column: 3, scope: !12)
!24 = distinct !DISubprogram(name: "lms", scope: !13, file: !13, line: 195, type: !14, scopeLine: 196, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!25 = !DILocation(line: 203, column: 18, scope: !24)
!26 = !DILocation(line: 203, column: 16, scope: !24)
!27 = !DILocation(line: 204, column: 21, scope: !24)
!28 = !DILocation(line: 204, column: 20, scope: !24)
!29 = !DILocation(line: 204, column: 17, scope: !24)
!30 = !DILocation(line: 204, column: 15, scope: !24)
!31 = !DILocation(line: 205, column: 9, scope: !24)
!32 = !DILocation(line: 206, column: 11, scope: !24)
!33 = !DILocation(line: 206, column: 9, scope: !24)
!34 = !DILocation(line: 206, column: 17, scope: !24)
!35 = !DILocation(line: 206, column: 19, scope: !24)
!36 = !DILocation(line: 206, column: 5, scope: !24)
!37 = !DILocation(line: 207, column: 16, scope: !24)
!38 = !DILocation(line: 207, column: 35, scope: !24)
!39 = !DILocation(line: 207, column: 39, scope: !24)
!40 = !DILocation(line: 207, column: 38, scope: !24)
!41 = !DILocation(line: 207, column: 27, scope: !24)
!42 = !DILocation(line: 207, column: 44, scope: !24)
!43 = !DILocation(line: 207, column: 54, scope: !24)
!44 = !DILocation(line: 207, column: 53, scope: !24)
!45 = !DILocation(line: 207, column: 42, scope: !24)
!46 = !DILocation(line: 207, column: 11, scope: !24)
!47 = !DILocation(line: 207, column: 9, scope: !24)
!48 = !DILocation(line: 207, column: 14, scope: !24)
!49 = !DILocation(line: 208, column: 5, scope: !24)
!50 = !DILocation(line: 206, column: 26, scope: !24)
!51 = distinct !{!51, !36, !49, !52}
!52 = !{!"llvm.loop.mustprogress"}
!53 = !DILocation(line: 211, column: 14, scope: !24)
!54 = !DILocation(line: 211, column: 13, scope: !24)
!55 = !DILocation(line: 211, column: 16, scope: !24)
!56 = !DILocation(line: 211, column: 10, scope: !24)
!57 = !DILocation(line: 211, column: 8, scope: !24)
!58 = !DILocation(line: 213, column: 7, scope: !24)
!59 = !DILocation(line: 214, column: 11, scope: !24)
!60 = !DILocation(line: 214, column: 9, scope: !24)
!61 = !DILocation(line: 214, column: 17, scope: !24)
!62 = !DILocation(line: 214, column: 19, scope: !24)
!63 = !DILocation(line: 214, column: 5, scope: !24)
!64 = !DILocation(line: 215, column: 17, scope: !24)
!65 = !DILocation(line: 215, column: 21, scope: !24)
!66 = !DILocation(line: 215, column: 19, scope: !24)
!67 = !DILocation(line: 215, column: 28, scope: !24)
!68 = !DILocation(line: 215, column: 9, scope: !24)
!69 = !DILocation(line: 217, column: 15, scope: !24)
!70 = !DILocation(line: 217, column: 13, scope: !24)
!71 = !DILocation(line: 217, column: 11, scope: !24)
!72 = !DILocation(line: 218, column: 5, scope: !24)
!73 = !DILocation(line: 214, column: 26, scope: !24)
!74 = distinct !{!74, !63, !72, !52}
!75 = !DILocation(line: 219, column: 5, scope: !24)
!76 = distinct !DISubprogram(name: "lms_sqrt", scope: !13, file: !13, line: 97, type: !14, scopeLine: 99, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !15)
!77 = !DILocation(line: 100, column: 13, scope: !76)
!78 = !DILocation(line: 100, column: 16, scope: !76)
!79 = !DILocation(line: 100, column: 9, scope: !76)
!80 = !DILocation(line: 105, column: 10, scope: !76)
!81 = !DILocation(line: 109, column: 8, scope: !76)
!82 = !DILocation(line: 110, column: 7, scope: !76)
!83 = !DILocation(line: 110, column: 11, scope: !76)
!84 = !DILocation(line: 110, column: 20, scope: !76)
!85 = !DILocation(line: 110, column: 18, scope: !76)
!86 = !DILocation(line: 112, column: 11, scope: !76)
!87 = !DILocation(line: 112, column: 10, scope: !76)
!88 = !DILocation(line: 112, column: 14, scope: !76)
!89 = !DILocation(line: 112, column: 15, scope: !76)
!90 = !DILocation(line: 112, column: 5, scope: !76)
!91 = !DILocation(line: 114, column: 7, scope: !76)
!92 = !DILocation(line: 114, column: 6, scope: !76)
!93 = !DILocation(line: 115, column: 10, scope: !76)
!94 = !DILocation(line: 115, column: 17, scope: !76)
!95 = !DILocation(line: 115, column: 19, scope: !76)
!96 = !DILocation(line: 115, column: 14, scope: !76)
!97 = !DILocation(line: 115, column: 9, scope: !76)
!98 = !DILocation(line: 115, column: 32, scope: !76)
!99 = !DILocation(line: 115, column: 30, scope: !76)
!100 = !DILocation(line: 115, column: 23, scope: !76)
!101 = !DILocation(line: 115, column: 7, scope: !76)
!102 = !DILocation(line: 116, column: 8, scope: !76)
!103 = !DILocation(line: 116, column: 12, scope: !76)
!104 = !DILocation(line: 116, column: 10, scope: !76)
!105 = !DILocation(line: 116, column: 6, scope: !76)
!106 = !DILocation(line: 117, column: 11, scope: !76)
!107 = !DILocation(line: 117, column: 18, scope: !76)
!108 = !DILocation(line: 117, column: 20, scope: !76)
!109 = !DILocation(line: 117, column: 15, scope: !76)
!110 = !DILocation(line: 117, column: 9, scope: !76)
!111 = !DILocation(line: 118, column: 17, scope: !76)
!112 = !DILocation(line: 118, column: 8, scope: !76)
!113 = !DILocation(line: 118, column: 26, scope: !76)
!114 = !DILocation(line: 118, column: 23, scope: !76)
!115 = !DILocation(line: 118, column: 40, scope: !76)
!116 = !DILocation(line: 118, column: 35, scope: !76)
!117 = !DILocation(line: 119, column: 2, scope: !76)
!118 = !DILocation(line: 122, column: 7, scope: !76)
!119 = !DILocation(line: 112, column: 20, scope: !76)
!120 = distinct !{!120, !90, !118, !52}
!121 = !DILocation(line: 124, column: 11, scope: !76)
!122 = !DILocation(line: 124, column: 3, scope: !76)
!123 = distinct !DISubprogram(name: "lms_sin", scope: !13, file: !13, line: 128, type: !14, scopeLine: 130, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !15)
!124 = !DILocation(line: 134, column: 7, scope: !123)
!125 = !DILocation(line: 136, column: 3, scope: !123)
!126 = !DILocation(line: 136, column: 10, scope: !123)
!127 = !DILocation(line: 136, column: 14, scope: !123)
!128 = !DILocation(line: 137, column: 6, scope: !123)
!129 = distinct !{!129, !125, !130, !52}
!130 = !DILocation(line: 137, column: 11, scope: !123)
!131 = !DILocation(line: 138, column: 3, scope: !123)
!132 = !DILocation(line: 138, column: 10, scope: !123)
!133 = !DILocation(line: 138, column: 14, scope: !123)
!134 = !DILocation(line: 139, column: 9, scope: !123)
!135 = distinct !{!135, !131, !136, !52}
!136 = !DILocation(line: 139, column: 14, scope: !123)
!137 = !DILocation(line: 140, column: 16, scope: !123)
!138 = !DILocation(line: 140, column: 14, scope: !123)
!139 = !DILocation(line: 140, column: 7, scope: !123)
!140 = !DILocation(line: 141, column: 12, scope: !123)
!141 = !DILocation(line: 141, column: 22, scope: !123)
!142 = !DILocation(line: 141, column: 26, scope: !123)
!143 = !DILocation(line: 141, column: 25, scope: !123)
!144 = !DILocation(line: 141, column: 20, scope: !123)
!145 = !DILocation(line: 141, column: 17, scope: !123)
!146 = !DILocation(line: 141, column: 11, scope: !123)
!147 = !DILocation(line: 142, column: 15, scope: !123)
!148 = !DILocation(line: 142, column: 13, scope: !123)
!149 = !DILocation(line: 142, column: 29, scope: !123)
!150 = !DILocation(line: 142, column: 33, scope: !123)
!151 = !DILocation(line: 142, column: 20, scope: !123)
!152 = !DILocation(line: 141, column: 33, scope: !123)
!153 = !DILocation(line: 141, column: 9, scope: !123)
!154 = !DILocation(line: 143, column: 11, scope: !123)
!155 = !DILocation(line: 143, column: 17, scope: !123)
!156 = !DILocation(line: 143, column: 15, scope: !123)
!157 = !DILocation(line: 143, column: 9, scope: !123)
!158 = !DILocation(line: 144, column: 8, scope: !123)
!159 = !DILocation(line: 145, column: 3, scope: !123)
!160 = !DILocation(line: 145, column: 18, scope: !123)
!161 = !DILocation(line: 145, column: 9, scope: !123)
!162 = !DILocation(line: 145, column: 24, scope: !123)
!163 = !DILocation(line: 146, column: 13, scope: !123)
!164 = !DILocation(line: 146, column: 23, scope: !123)
!165 = !DILocation(line: 146, column: 27, scope: !123)
!166 = !DILocation(line: 146, column: 26, scope: !123)
!167 = !DILocation(line: 146, column: 21, scope: !123)
!168 = !DILocation(line: 146, column: 18, scope: !123)
!169 = !DILocation(line: 146, column: 12, scope: !123)
!170 = !DILocation(line: 147, column: 15, scope: !123)
!171 = !DILocation(line: 147, column: 13, scope: !123)
!172 = !DILocation(line: 147, column: 29, scope: !123)
!173 = !DILocation(line: 147, column: 33, scope: !123)
!174 = !DILocation(line: 147, column: 20, scope: !123)
!175 = !DILocation(line: 146, column: 34, scope: !123)
!176 = !DILocation(line: 146, column: 10, scope: !123)
!177 = !DILocation(line: 148, column: 11, scope: !123)
!178 = !DILocation(line: 148, column: 17, scope: !123)
!179 = !DILocation(line: 148, column: 15, scope: !123)
!180 = !DILocation(line: 148, column: 9, scope: !123)
!181 = !DILocation(line: 149, column: 8, scope: !123)
!182 = distinct !{!182, !159, !183, !52}
!183 = !DILocation(line: 150, column: 3, scope: !123)
!184 = !DILocation(line: 152, column: 10, scope: !123)
!185 = !DILocation(line: 152, column: 3, scope: !123)
!186 = distinct !DISubprogram(name: "gaussian", scope: !13, file: !13, line: 155, type: !14, scopeLine: 156, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !15)
!187 = !DILocation(line: 165, column: 8, scope: !186)
!188 = !DILocation(line: 165, column: 14, scope: !186)
!189 = !DILocation(line: 166, column: 25, scope: !186)
!190 = !DILocation(line: 166, column: 18, scope: !186)
!191 = !DILocation(line: 166, column: 38, scope: !186)
!192 = !DILocation(line: 166, column: 36, scope: !186)
!193 = !DILocation(line: 166, column: 16, scope: !186)
!194 = !DILocation(line: 167, column: 25, scope: !186)
!195 = !DILocation(line: 167, column: 18, scope: !186)
!196 = !DILocation(line: 167, column: 38, scope: !186)
!197 = !DILocation(line: 167, column: 36, scope: !186)
!198 = !DILocation(line: 167, column: 16, scope: !186)
!199 = !DILocation(line: 168, column: 19, scope: !186)
!200 = !DILocation(line: 168, column: 16, scope: !186)
!201 = !DILocation(line: 169, column: 19, scope: !186)
!202 = !DILocation(line: 169, column: 16, scope: !186)
!203 = !DILocation(line: 170, column: 17, scope: !186)
!204 = !DILocation(line: 170, column: 20, scope: !186)
!205 = !DILocation(line: 170, column: 25, scope: !186)
!206 = !DILocation(line: 170, column: 28, scope: !186)
!207 = !DILocation(line: 170, column: 27, scope: !186)
!208 = !DILocation(line: 170, column: 23, scope: !186)
!209 = !DILocation(line: 170, column: 15, scope: !186)
!210 = !DILocation(line: 171, column: 9, scope: !186)
!211 = !DILocation(line: 171, column: 16, scope: !186)
!212 = !DILocation(line: 171, column: 18, scope: !186)
!213 = !DILocation(line: 172, column: 25, scope: !186)
!214 = !DILocation(line: 172, column: 18, scope: !186)
!215 = !DILocation(line: 172, column: 38, scope: !186)
!216 = !DILocation(line: 172, column: 36, scope: !186)
!217 = !DILocation(line: 172, column: 16, scope: !186)
!218 = !DILocation(line: 173, column: 25, scope: !186)
!219 = !DILocation(line: 173, column: 18, scope: !186)
!220 = !DILocation(line: 173, column: 38, scope: !186)
!221 = !DILocation(line: 173, column: 36, scope: !186)
!222 = !DILocation(line: 173, column: 16, scope: !186)
!223 = !DILocation(line: 174, column: 19, scope: !186)
!224 = !DILocation(line: 174, column: 16, scope: !186)
!225 = !DILocation(line: 175, column: 19, scope: !186)
!226 = !DILocation(line: 175, column: 16, scope: !186)
!227 = !DILocation(line: 176, column: 17, scope: !186)
!228 = !DILocation(line: 176, column: 20, scope: !186)
!229 = !DILocation(line: 176, column: 25, scope: !186)
!230 = !DILocation(line: 176, column: 28, scope: !186)
!231 = !DILocation(line: 176, column: 27, scope: !186)
!232 = !DILocation(line: 176, column: 23, scope: !186)
!233 = !DILocation(line: 176, column: 15, scope: !186)
!234 = distinct !{!234, !210, !235, !52}
!235 = !DILocation(line: 177, column: 9, scope: !186)
!236 = !DILocation(line: 180, column: 38, scope: !186)
!237 = !DILocation(line: 180, column: 30, scope: !186)
!238 = !DILocation(line: 180, column: 29, scope: !186)
!239 = !DILocation(line: 180, column: 41, scope: !186)
!240 = !DILocation(line: 180, column: 40, scope: !186)
!241 = !DILocation(line: 180, column: 24, scope: !186)
!242 = !DILocation(line: 180, column: 15, scope: !186)
!243 = !DILocation(line: 180, column: 13, scope: !186)
!244 = !DILocation(line: 181, column: 18, scope: !186)
!245 = !DILocation(line: 181, column: 21, scope: !186)
!246 = !DILocation(line: 181, column: 20, scope: !186)
!247 = !DILocation(line: 181, column: 16, scope: !186)
!248 = !DILocation(line: 182, column: 16, scope: !186)
!249 = !DILocation(line: 182, column: 19, scope: !186)
!250 = !DILocation(line: 182, column: 18, scope: !186)
!251 = !DILocation(line: 182, column: 14, scope: !186)
!252 = !DILocation(line: 183, column: 15, scope: !186)
!253 = !DILocation(line: 184, column: 5, scope: !186)
!254 = !DILocation(line: 187, column: 15, scope: !186)
!255 = !DILocation(line: 188, column: 16, scope: !186)
!256 = !DILocation(line: 188, column: 14, scope: !186)
!257 = !DILocation(line: 191, column: 12, scope: !186)
!258 = !DILocation(line: 191, column: 5, scope: !186)
!259 = distinct !DISubprogram(name: "lms_lms", scope: !13, file: !13, line: 238, type: !14, scopeLine: 240, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!260 = !DILocation(line: 246, column: 11, scope: !259)
!261 = !DILocation(line: 246, column: 10, scope: !259)
!262 = !DILocation(line: 249, column: 7, scope: !259)
!263 = !DILocation(line: 249, column: 12, scope: !259)
!264 = !DILocation(line: 249, column: 11, scope: !259)
!265 = !DILocation(line: 249, column: 6, scope: !259)
!266 = !DILocation(line: 253, column: 12, scope: !259)
!267 = !DILocation(line: 253, column: 9, scope: !259)
!268 = !DILocation(line: 253, column: 18, scope: !259)
!269 = !DILocation(line: 253, column: 24, scope: !259)
!270 = !DILocation(line: 253, column: 21, scope: !259)
!271 = !DILocation(line: 253, column: 5, scope: !259)
!272 = !DILocation(line: 254, column: 11, scope: !259)
!273 = !DILocation(line: 254, column: 13, scope: !259)
!274 = !DILocation(line: 254, column: 15, scope: !259)
!275 = !DILocation(line: 254, column: 22, scope: !259)
!276 = !DILocation(line: 254, column: 19, scope: !259)
!277 = !DILocation(line: 254, column: 12, scope: !259)
!278 = !DILocation(line: 254, column: 10, scope: !259)
!279 = !DILocation(line: 254, column: 9, scope: !259)
!280 = !DILocation(line: 253, column: 30, scope: !259)
!281 = distinct !{!281, !271, !282, !52}
!282 = !DILocation(line: 254, column: 24, scope: !259)
!283 = !DILocation(line: 257, column: 7, scope: !259)
!284 = !DILocation(line: 257, column: 9, scope: !259)
!285 = !DILocation(line: 257, column: 8, scope: !259)
!286 = !DILocation(line: 257, column: 6, scope: !259)
!287 = !DILocation(line: 260, column: 11, scope: !259)
!288 = !DILocation(line: 260, column: 18, scope: !259)
!289 = !DILocation(line: 260, column: 24, scope: !259)
!290 = !DILocation(line: 260, column: 23, scope: !259)
!291 = !DILocation(line: 260, column: 34, scope: !259)
!292 = !DILocation(line: 260, column: 33, scope: !259)
!293 = !DILocation(line: 260, column: 41, scope: !259)
!294 = !DILocation(line: 260, column: 40, scope: !259)
!295 = !DILocation(line: 260, column: 30, scope: !259)
!296 = !DILocation(line: 260, column: 10, scope: !259)
!297 = !DILocation(line: 261, column: 10, scope: !259)
!298 = !DILocation(line: 261, column: 13, scope: !259)
!299 = !DILocation(line: 261, column: 12, scope: !259)
!300 = !DILocation(line: 261, column: 15, scope: !259)
!301 = !DILocation(line: 261, column: 14, scope: !259)
!302 = !DILocation(line: 261, column: 9, scope: !259)
!303 = !DILocation(line: 264, column: 12, scope: !259)
!304 = !DILocation(line: 264, column: 9, scope: !259)
!305 = !DILocation(line: 264, column: 18, scope: !259)
!306 = !DILocation(line: 264, column: 24, scope: !259)
!307 = !DILocation(line: 264, column: 21, scope: !259)
!308 = !DILocation(line: 264, column: 5, scope: !259)
!309 = !DILocation(line: 265, column: 15, scope: !259)
!310 = !DILocation(line: 265, column: 17, scope: !259)
!311 = !DILocation(line: 265, column: 21, scope: !259)
!312 = !DILocation(line: 265, column: 29, scope: !259)
!313 = !DILocation(line: 265, column: 26, scope: !259)
!314 = !DILocation(line: 265, column: 20, scope: !259)
!315 = !DILocation(line: 265, column: 9, scope: !259)
!316 = !DILocation(line: 265, column: 11, scope: !259)
!317 = !DILocation(line: 265, column: 14, scope: !259)
!318 = !DILocation(line: 264, column: 30, scope: !259)
!319 = distinct !{!319, !308, !320, !52}
!320 = !DILocation(line: 265, column: 31, scope: !259)
!321 = !DILocation(line: 267, column: 14, scope: !259)
!322 = !DILocation(line: 267, column: 12, scope: !259)
!323 = !DILocation(line: 267, column: 9, scope: !259)
!324 = !DILocation(line: 267, column: 18, scope: !259)
!325 = !DILocation(line: 267, column: 21, scope: !259)
!326 = !DILocation(line: 267, column: 5, scope: !259)
!327 = !DILocation(line: 268, column: 19, scope: !259)
!328 = !DILocation(line: 268, column: 21, scope: !259)
!329 = !DILocation(line: 268, column: 16, scope: !259)
!330 = !DILocation(line: 268, column: 12, scope: !259)
!331 = !DILocation(line: 268, column: 9, scope: !259)
!332 = !DILocation(line: 268, column: 15, scope: !259)
!333 = !DILocation(line: 267, column: 30, scope: !259)
!334 = distinct !{!334, !326, !335, !52}
!335 = !DILocation(line: 268, column: 23, scope: !259)
!336 = !DILocation(line: 270, column: 12, scope: !259)
!337 = !DILocation(line: 270, column: 5, scope: !259)
!338 = distinct !DISubprogram(name: "lms_fabs", scope: !13, file: !13, line: 88, type: !14, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !15)
!339 = !DILocation(line: 92, column: 7, scope: !338)
!340 = !DILocation(line: 92, column: 9, scope: !338)
!341 = !DILocation(line: 92, column: 19, scope: !338)
!342 = !DILocation(line: 92, column: 17, scope: !338)
!343 = !DILocation(line: 92, column: 15, scope: !338)
!344 = !DILocation(line: 93, column: 13, scope: !338)
!345 = !DILocation(line: 93, column: 12, scope: !338)
!346 = !DILocation(line: 93, column: 10, scope: !338)
!347 = !DILocation(line: 94, column: 10, scope: !338)
!348 = !DILocation(line: 94, column: 3, scope: !338)
!349 = distinct !DISubprogram(name: "lms_log", scope: !13, file: !13, line: 82, type: !14, scopeLine: 84, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !15)
!350 = !DILocation(line: 85, column: 3, scope: !349)
