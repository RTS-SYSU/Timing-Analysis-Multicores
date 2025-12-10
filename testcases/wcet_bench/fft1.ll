; ModuleID = '/workspaces/llvmta/testcases/wcet_bench/fft1.c'
source_filename = "/workspaces/llvmta/testcases/wcet_bench/fft1.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv4t-unknown-unknown"

@ai = dso_local global [8 x double] zeroinitializer, align 8
@ar = dso_local global [8 x double] zeroinitializer, align 8

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @main() #0 !dbg !12 {
entry:
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %flag = alloca i32, align 4
  %chkerr = alloca i32, align 4
  store i32 8, i32* %n, align 4, !dbg !16
  store i32 0, i32* %i, align 4, !dbg !17
  br label %for.cond, !dbg !18

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !19
  %1 = load i32, i32* %n, align 4, !dbg !20
  %cmp = icmp slt i32 %0, %1, !dbg !21
  br i1 %cmp, label %for.body, label %for.end, !dbg !22

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4, !dbg !23
  %conv = sitofp i32 %2 to double, !dbg !23
  %mul = fmul double 6.283180e+00, %conv, !dbg !24
  %3 = load i32, i32* %n, align 4, !dbg !25
  %conv1 = sitofp i32 %3 to double, !dbg !25
  %div = fdiv double %mul, %conv1, !dbg !26
  %call = call arm_aapcs_vfpcc double @cos(double noundef %div) #2, !dbg !27
  %4 = load i32, i32* %i, align 4, !dbg !28
  %arrayidx = getelementptr inbounds [8 x double], [8 x double]* @ar, i32 0, i32 %4, !dbg !29
  store double %call, double* %arrayidx, align 8, !dbg !30
  br label %for.inc, !dbg !29

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4, !dbg !31
  %inc = add nsw i32 %5, 1, !dbg !31
  store i32 %inc, i32* %i, align 4, !dbg !31
  br label %for.cond, !dbg !22, !llvm.loop !32

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %flag, align 4, !dbg !35
  %6 = load i32, i32* %n, align 4, !dbg !36
  %7 = load i32, i32* %flag, align 4, !dbg !37
  %call2 = call arm_aapcs_vfpcc i32 @fft1(i32 noundef %6, i32 noundef %7) #2, !dbg !38
  store i32 %call2, i32* %chkerr, align 4, !dbg !39
  store i32 1, i32* %flag, align 4, !dbg !40
  %8 = load i32, i32* %n, align 4, !dbg !41
  %9 = load i32, i32* %flag, align 4, !dbg !42
  %call3 = call arm_aapcs_vfpcc i32 @fft1(i32 noundef %8, i32 noundef %9) #2, !dbg !43
  store i32 %call3, i32* %chkerr, align 4, !dbg !44
  ret void, !dbg !45
}

; Function Attrs: noinline nounwind
define internal arm_aapcs_vfpcc double @cos(double noundef %rad) #0 !dbg !46 {
entry:
  %rad.addr = alloca double, align 8
  store double %rad, double* %rad.addr, align 8
  %0 = load double, double* %rad.addr, align 8, !dbg !47
  %sub = fsub double 0x3FF921F9F01B866E, %0, !dbg !48
  %call = call arm_aapcs_vfpcc double @sin(double noundef %sub) #2, !dbg !49
  ret double %call, !dbg !50
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @fft1(i32 noundef %n, i32 noundef %flag) #0 !dbg !51 {
entry:
  %retval = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %flag.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %it = alloca i32, align 4
  %xp = alloca i32, align 4
  %xp2 = alloca i32, align 4
  %j1 = alloca i32, align 4
  %j2 = alloca i32, align 4
  %iter = alloca i32, align 4
  %sign = alloca double, align 8
  %w = alloca double, align 8
  %wr = alloca double, align 8
  %wi = alloca double, align 8
  %dr1 = alloca double, align 8
  %dr2 = alloca double, align 8
  %di1 = alloca double, align 8
  %di2 = alloca double, align 8
  %tr = alloca double, align 8
  %ti = alloca double, align 8
  %arg = alloca double, align 8
  store i32 %n, i32* %n.addr, align 4
  store i32 %flag, i32* %flag.addr, align 4
  %0 = load i32, i32* %n.addr, align 4, !dbg !52
  %cmp = icmp slt i32 %0, 2, !dbg !53
  br i1 %cmp, label %if.then, label %if.end, !dbg !52

if.then:                                          ; preds = %entry
  store i32 999, i32* %retval, align 4, !dbg !54
  br label %return, !dbg !54

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %n.addr, align 4, !dbg !55
  %conv = sitofp i32 %1 to double, !dbg !56
  %call = call arm_aapcs_vfpcc double @log(double noundef %conv) #2, !dbg !57
  %call1 = call arm_aapcs_vfpcc double @log(double noundef 2.000000e+00) #2, !dbg !58
  %div = fdiv double %call, %call1, !dbg !59
  %conv2 = fptosi double %div to i32, !dbg !57
  store i32 %conv2, i32* %iter, align 4, !dbg !60
  store i32 1, i32* %j, align 4, !dbg !61
  store i32 0, i32* %i, align 4, !dbg !62
  br label %for.cond, !dbg !63

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i32, i32* %i, align 4, !dbg !64
  %3 = load i32, i32* %iter, align 4, !dbg !65
  %cmp3 = icmp slt i32 %2, %3, !dbg !66
  br i1 %cmp3, label %for.body, label %for.end, !dbg !67

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %j, align 4, !dbg !68
  %mul = mul nsw i32 %4, 2, !dbg !68
  store i32 %mul, i32* %j, align 4, !dbg !68
  br label %for.inc, !dbg !69

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4, !dbg !70
  %inc = add nsw i32 %5, 1, !dbg !70
  store i32 %inc, i32* %i, align 4, !dbg !70
  br label %for.cond, !dbg !67, !llvm.loop !71

for.end:                                          ; preds = %for.cond
  %6 = load i32, i32* %n.addr, align 4, !dbg !73
  %7 = load i32, i32* %j, align 4, !dbg !74
  %sub = sub nsw i32 %6, %7, !dbg !75
  %conv5 = sitofp i32 %sub to double, !dbg !73
  %call6 = call arm_aapcs_vfpcc double @fabs(double noundef %conv5) #2, !dbg !76
  %cmp7 = fcmp ogt double %call6, 0x3EB0C6F7A0B5ED8D, !dbg !77
  br i1 %cmp7, label %if.then9, label %if.end10, !dbg !76

if.then9:                                         ; preds = %for.end
  store i32 1, i32* %retval, align 4, !dbg !78
  br label %return, !dbg !78

if.end10:                                         ; preds = %for.end
  %8 = load i32, i32* %flag.addr, align 4, !dbg !79
  %cmp11 = icmp eq i32 %8, 1, !dbg !80
  %9 = zext i1 %cmp11 to i64, !dbg !81
  %cond = select i1 %cmp11, double 1.000000e+00, double -1.000000e+00, !dbg !81
  store double %cond, double* %sign, align 8, !dbg !82
  %10 = load i32, i32* %n.addr, align 4, !dbg !83
  store i32 %10, i32* %xp2, align 4, !dbg !84
  store i32 0, i32* %it, align 4, !dbg !85
  br label %for.cond13, !dbg !86

for.cond13:                                       ; preds = %for.inc56, %if.end10
  %11 = load i32, i32* %it, align 4, !dbg !87
  %12 = load i32, i32* %iter, align 4, !dbg !88
  %cmp14 = icmp slt i32 %11, %12, !dbg !89
  br i1 %cmp14, label %for.body16, label %for.end58, !dbg !90

for.body16:                                       ; preds = %for.cond13
  %13 = load i32, i32* %xp2, align 4, !dbg !91
  store i32 %13, i32* %xp, align 4, !dbg !92
  %14 = load i32, i32* %xp2, align 4, !dbg !93
  %div17 = sdiv i32 %14, 2, !dbg !93
  store i32 %div17, i32* %xp2, align 4, !dbg !93
  %15 = load i32, i32* %xp2, align 4, !dbg !94
  %conv18 = sitofp i32 %15 to double, !dbg !94
  %div19 = fdiv double 3.141590e+00, %conv18, !dbg !95
  store double %div19, double* %w, align 8, !dbg !96
  store i32 0, i32* %k, align 4, !dbg !97
  br label %for.cond20, !dbg !98

for.cond20:                                       ; preds = %for.inc53, %for.body16
  %16 = load i32, i32* %k, align 4, !dbg !99
  %17 = load i32, i32* %xp2, align 4, !dbg !100
  %cmp21 = icmp slt i32 %16, %17, !dbg !101
  br i1 %cmp21, label %for.body23, label %for.end55, !dbg !102

for.body23:                                       ; preds = %for.cond20
  %18 = load i32, i32* %k, align 4, !dbg !103
  %conv24 = sitofp i32 %18 to double, !dbg !103
  %19 = load double, double* %w, align 8, !dbg !104
  %mul25 = fmul double %conv24, %19, !dbg !105
  store double %mul25, double* %arg, align 8, !dbg !106
  %20 = load double, double* %arg, align 8, !dbg !107
  %call26 = call arm_aapcs_vfpcc double @cos(double noundef %20) #2, !dbg !108
  store double %call26, double* %wr, align 8, !dbg !109
  %21 = load double, double* %sign, align 8, !dbg !110
  %22 = load double, double* %arg, align 8, !dbg !111
  %call27 = call arm_aapcs_vfpcc double @sin(double noundef %22) #2, !dbg !112
  %mul28 = fmul double %21, %call27, !dbg !113
  store double %mul28, double* %wi, align 8, !dbg !114
  %23 = load i32, i32* %k, align 4, !dbg !115
  %24 = load i32, i32* %xp, align 4, !dbg !116
  %sub29 = sub nsw i32 %23, %24, !dbg !117
  store i32 %sub29, i32* %i, align 4, !dbg !118
  %25 = load i32, i32* %xp, align 4, !dbg !119
  store i32 %25, i32* %j, align 4, !dbg !120
  br label %for.cond30, !dbg !121

for.cond30:                                       ; preds = %for.inc50, %for.body23
  %26 = load i32, i32* %j, align 4, !dbg !122
  %27 = load i32, i32* %n.addr, align 4, !dbg !123
  %cmp31 = icmp sle i32 %26, %27, !dbg !124
  br i1 %cmp31, label %for.body33, label %for.end52, !dbg !125

for.body33:                                       ; preds = %for.cond30
  %28 = load i32, i32* %j, align 4, !dbg !126
  %29 = load i32, i32* %i, align 4, !dbg !127
  %add = add nsw i32 %28, %29, !dbg !128
  store i32 %add, i32* %j1, align 4, !dbg !129
  %30 = load i32, i32* %j1, align 4, !dbg !130
  %31 = load i32, i32* %xp2, align 4, !dbg !131
  %add34 = add nsw i32 %30, %31, !dbg !132
  store i32 %add34, i32* %j2, align 4, !dbg !133
  %32 = load i32, i32* %j1, align 4, !dbg !134
  %arrayidx = getelementptr inbounds [8 x double], [8 x double]* @ar, i32 0, i32 %32, !dbg !135
  %33 = load double, double* %arrayidx, align 8, !dbg !135
  store double %33, double* %dr1, align 8, !dbg !136
  %34 = load i32, i32* %j2, align 4, !dbg !137
  %arrayidx35 = getelementptr inbounds [8 x double], [8 x double]* @ar, i32 0, i32 %34, !dbg !138
  %35 = load double, double* %arrayidx35, align 8, !dbg !138
  store double %35, double* %dr2, align 8, !dbg !139
  %36 = load i32, i32* %j1, align 4, !dbg !140
  %arrayidx36 = getelementptr inbounds [8 x double], [8 x double]* @ai, i32 0, i32 %36, !dbg !141
  %37 = load double, double* %arrayidx36, align 8, !dbg !141
  store double %37, double* %di1, align 8, !dbg !142
  %38 = load i32, i32* %j2, align 4, !dbg !143
  %arrayidx37 = getelementptr inbounds [8 x double], [8 x double]* @ai, i32 0, i32 %38, !dbg !144
  %39 = load double, double* %arrayidx37, align 8, !dbg !144
  store double %39, double* %di2, align 8, !dbg !145
  %40 = load double, double* %dr1, align 8, !dbg !146
  %41 = load double, double* %dr2, align 8, !dbg !147
  %sub38 = fsub double %40, %41, !dbg !148
  store double %sub38, double* %tr, align 8, !dbg !149
  %42 = load double, double* %di1, align 8, !dbg !150
  %43 = load double, double* %di2, align 8, !dbg !151
  %sub39 = fsub double %42, %43, !dbg !152
  store double %sub39, double* %ti, align 8, !dbg !153
  %44 = load double, double* %dr1, align 8, !dbg !154
  %45 = load double, double* %dr2, align 8, !dbg !155
  %add40 = fadd double %44, %45, !dbg !156
  %46 = load i32, i32* %j1, align 4, !dbg !157
  %arrayidx41 = getelementptr inbounds [8 x double], [8 x double]* @ar, i32 0, i32 %46, !dbg !158
  store double %add40, double* %arrayidx41, align 8, !dbg !159
  %47 = load double, double* %di1, align 8, !dbg !160
  %48 = load double, double* %di2, align 8, !dbg !161
  %add42 = fadd double %47, %48, !dbg !162
  %49 = load i32, i32* %j1, align 4, !dbg !163
  %arrayidx43 = getelementptr inbounds [8 x double], [8 x double]* @ai, i32 0, i32 %49, !dbg !164
  store double %add42, double* %arrayidx43, align 8, !dbg !165
  %50 = load double, double* %tr, align 8, !dbg !166
  %51 = load double, double* %wr, align 8, !dbg !167
  %52 = load double, double* %ti, align 8, !dbg !168
  %53 = load double, double* %wi, align 8, !dbg !169
  %mul45 = fmul double %52, %53, !dbg !170
  %neg = fneg double %mul45, !dbg !171
  %54 = call double @llvm.fmuladd.f64(double %50, double %51, double %neg), !dbg !171
  %55 = load i32, i32* %j2, align 4, !dbg !172
  %arrayidx46 = getelementptr inbounds [8 x double], [8 x double]* @ar, i32 0, i32 %55, !dbg !173
  store double %54, double* %arrayidx46, align 8, !dbg !174
  %56 = load double, double* %ti, align 8, !dbg !175
  %57 = load double, double* %wr, align 8, !dbg !176
  %58 = load double, double* %tr, align 8, !dbg !177
  %59 = load double, double* %wi, align 8, !dbg !178
  %mul48 = fmul double %58, %59, !dbg !179
  %60 = call double @llvm.fmuladd.f64(double %56, double %57, double %mul48), !dbg !180
  %61 = load i32, i32* %j2, align 4, !dbg !181
  %arrayidx49 = getelementptr inbounds [8 x double], [8 x double]* @ai, i32 0, i32 %61, !dbg !182
  store double %60, double* %arrayidx49, align 8, !dbg !183
  br label %for.inc50, !dbg !184

for.inc50:                                        ; preds = %for.body33
  %62 = load i32, i32* %xp, align 4, !dbg !185
  %63 = load i32, i32* %j, align 4, !dbg !186
  %add51 = add nsw i32 %63, %62, !dbg !186
  store i32 %add51, i32* %j, align 4, !dbg !186
  br label %for.cond30, !dbg !125, !llvm.loop !187

for.end52:                                        ; preds = %for.cond30
  br label %for.inc53, !dbg !188

for.inc53:                                        ; preds = %for.end52
  %64 = load i32, i32* %k, align 4, !dbg !189
  %inc54 = add nsw i32 %64, 1, !dbg !189
  store i32 %inc54, i32* %k, align 4, !dbg !189
  br label %for.cond20, !dbg !102, !llvm.loop !190

for.end55:                                        ; preds = %for.cond20
  br label %for.inc56, !dbg !191

for.inc56:                                        ; preds = %for.end55
  %65 = load i32, i32* %it, align 4, !dbg !192
  %inc57 = add nsw i32 %65, 1, !dbg !192
  store i32 %inc57, i32* %it, align 4, !dbg !192
  br label %for.cond13, !dbg !90, !llvm.loop !193

for.end58:                                        ; preds = %for.cond13
  %66 = load i32, i32* %n.addr, align 4, !dbg !194
  %div59 = sdiv i32 %66, 2, !dbg !195
  store i32 %div59, i32* %j1, align 4, !dbg !196
  %67 = load i32, i32* %n.addr, align 4, !dbg !197
  %sub60 = sub nsw i32 %67, 1, !dbg !198
  store i32 %sub60, i32* %j2, align 4, !dbg !199
  store i32 1, i32* %j, align 4, !dbg !200
  store i32 1, i32* %i, align 4, !dbg !201
  br label %for.cond61, !dbg !202

for.cond61:                                       ; preds = %for.inc90, %for.end58
  %68 = load i32, i32* %i, align 4, !dbg !203
  %69 = load i32, i32* %j2, align 4, !dbg !204
  %cmp62 = icmp sle i32 %68, %69, !dbg !205
  br i1 %cmp62, label %for.body64, label %for.end92, !dbg !206

for.body64:                                       ; preds = %for.cond61
  %70 = load i32, i32* %i, align 4, !dbg !207
  %71 = load i32, i32* %j, align 4, !dbg !208
  %cmp65 = icmp slt i32 %70, %71, !dbg !209
  br i1 %cmp65, label %if.then67, label %if.end84, !dbg !207

if.then67:                                        ; preds = %for.body64
  %72 = load i32, i32* %j, align 4, !dbg !210
  %sub68 = sub nsw i32 %72, 1, !dbg !211
  %arrayidx69 = getelementptr inbounds [8 x double], [8 x double]* @ar, i32 0, i32 %sub68, !dbg !212
  %73 = load double, double* %arrayidx69, align 8, !dbg !212
  store double %73, double* %tr, align 8, !dbg !213
  %74 = load i32, i32* %j, align 4, !dbg !214
  %sub70 = sub nsw i32 %74, 1, !dbg !215
  %arrayidx71 = getelementptr inbounds [8 x double], [8 x double]* @ai, i32 0, i32 %sub70, !dbg !216
  %75 = load double, double* %arrayidx71, align 8, !dbg !216
  store double %75, double* %ti, align 8, !dbg !217
  %76 = load i32, i32* %i, align 4, !dbg !218
  %sub72 = sub nsw i32 %76, 1, !dbg !219
  %arrayidx73 = getelementptr inbounds [8 x double], [8 x double]* @ar, i32 0, i32 %sub72, !dbg !220
  %77 = load double, double* %arrayidx73, align 8, !dbg !220
  %78 = load i32, i32* %j, align 4, !dbg !221
  %sub74 = sub nsw i32 %78, 1, !dbg !222
  %arrayidx75 = getelementptr inbounds [8 x double], [8 x double]* @ar, i32 0, i32 %sub74, !dbg !223
  store double %77, double* %arrayidx75, align 8, !dbg !224
  %79 = load i32, i32* %i, align 4, !dbg !225
  %sub76 = sub nsw i32 %79, 1, !dbg !226
  %arrayidx77 = getelementptr inbounds [8 x double], [8 x double]* @ai, i32 0, i32 %sub76, !dbg !227
  %80 = load double, double* %arrayidx77, align 8, !dbg !227
  %81 = load i32, i32* %j, align 4, !dbg !228
  %sub78 = sub nsw i32 %81, 1, !dbg !229
  %arrayidx79 = getelementptr inbounds [8 x double], [8 x double]* @ai, i32 0, i32 %sub78, !dbg !230
  store double %80, double* %arrayidx79, align 8, !dbg !231
  %82 = load double, double* %tr, align 8, !dbg !232
  %83 = load i32, i32* %i, align 4, !dbg !233
  %sub80 = sub nsw i32 %83, 1, !dbg !234
  %arrayidx81 = getelementptr inbounds [8 x double], [8 x double]* @ar, i32 0, i32 %sub80, !dbg !235
  store double %82, double* %arrayidx81, align 8, !dbg !236
  %84 = load double, double* %ti, align 8, !dbg !237
  %85 = load i32, i32* %i, align 4, !dbg !238
  %sub82 = sub nsw i32 %85, 1, !dbg !239
  %arrayidx83 = getelementptr inbounds [8 x double], [8 x double]* @ai, i32 0, i32 %sub82, !dbg !240
  store double %84, double* %arrayidx83, align 8, !dbg !241
  br label %if.end84, !dbg !242

if.end84:                                         ; preds = %if.then67, %for.body64
  %86 = load i32, i32* %j1, align 4, !dbg !243
  store i32 %86, i32* %k, align 4, !dbg !244
  br label %while.cond, !dbg !245

while.cond:                                       ; preds = %while.body, %if.end84
  %87 = load i32, i32* %k, align 4, !dbg !246
  %88 = load i32, i32* %j, align 4, !dbg !247
  %cmp85 = icmp slt i32 %87, %88, !dbg !248
  br i1 %cmp85, label %while.body, label %while.end, !dbg !245

while.body:                                       ; preds = %while.cond
  %89 = load i32, i32* %k, align 4, !dbg !249
  %90 = load i32, i32* %j, align 4, !dbg !250
  %sub87 = sub nsw i32 %90, %89, !dbg !250
  store i32 %sub87, i32* %j, align 4, !dbg !250
  %91 = load i32, i32* %k, align 4, !dbg !251
  %div88 = sdiv i32 %91, 2, !dbg !251
  store i32 %div88, i32* %k, align 4, !dbg !251
  br label %while.cond, !dbg !245, !llvm.loop !252

while.end:                                        ; preds = %while.cond
  %92 = load i32, i32* %k, align 4, !dbg !254
  %93 = load i32, i32* %j, align 4, !dbg !255
  %add89 = add nsw i32 %93, %92, !dbg !255
  store i32 %add89, i32* %j, align 4, !dbg !255
  br label %for.inc90, !dbg !256

for.inc90:                                        ; preds = %while.end
  %94 = load i32, i32* %i, align 4, !dbg !257
  %inc91 = add nsw i32 %94, 1, !dbg !257
  store i32 %inc91, i32* %i, align 4, !dbg !257
  br label %for.cond61, !dbg !206, !llvm.loop !258

for.end92:                                        ; preds = %for.cond61
  %95 = load i32, i32* %flag.addr, align 4, !dbg !259
  %cmp93 = icmp eq i32 %95, 0, !dbg !260
  br i1 %cmp93, label %if.then95, label %if.end96, !dbg !259

if.then95:                                        ; preds = %for.end92
  store i32 0, i32* %retval, align 4, !dbg !261
  br label %return, !dbg !261

if.end96:                                         ; preds = %for.end92
  %96 = load i32, i32* %n.addr, align 4, !dbg !262
  %conv97 = sitofp i32 %96 to double, !dbg !262
  store double %conv97, double* %w, align 8, !dbg !263
  store i32 0, i32* %i, align 4, !dbg !264
  br label %for.cond98, !dbg !265

for.cond98:                                       ; preds = %for.inc106, %if.end96
  %97 = load i32, i32* %i, align 4, !dbg !266
  %98 = load i32, i32* %n.addr, align 4, !dbg !267
  %cmp99 = icmp slt i32 %97, %98, !dbg !268
  br i1 %cmp99, label %for.body101, label %for.end108, !dbg !269

for.body101:                                      ; preds = %for.cond98
  %99 = load double, double* %w, align 8, !dbg !270
  %100 = load i32, i32* %i, align 4, !dbg !271
  %arrayidx102 = getelementptr inbounds [8 x double], [8 x double]* @ar, i32 0, i32 %100, !dbg !272
  %101 = load double, double* %arrayidx102, align 8, !dbg !273
  %div103 = fdiv double %101, %99, !dbg !273
  store double %div103, double* %arrayidx102, align 8, !dbg !273
  %102 = load double, double* %w, align 8, !dbg !274
  %103 = load i32, i32* %i, align 4, !dbg !275
  %arrayidx104 = getelementptr inbounds [8 x double], [8 x double]* @ai, i32 0, i32 %103, !dbg !276
  %104 = load double, double* %arrayidx104, align 8, !dbg !277
  %div105 = fdiv double %104, %102, !dbg !277
  store double %div105, double* %arrayidx104, align 8, !dbg !277
  br label %for.inc106, !dbg !278

for.inc106:                                       ; preds = %for.body101
  %105 = load i32, i32* %i, align 4, !dbg !279
  %inc107 = add nsw i32 %105, 1, !dbg !279
  store i32 %inc107, i32* %i, align 4, !dbg !279
  br label %for.cond98, !dbg !269, !llvm.loop !280

for.end108:                                       ; preds = %for.cond98
  store i32 0, i32* %retval, align 4, !dbg !281
  br label %return, !dbg !281

return:                                           ; preds = %for.end108, %if.then95, %if.then9, %if.then
  %106 = load i32, i32* %retval, align 4, !dbg !282
  ret i32 %106, !dbg !282
}

; Function Attrs: noinline nounwind
define internal arm_aapcs_vfpcc double @log(double noundef %n) #0 !dbg !283 {
entry:
  %n.addr = alloca double, align 8
  store double %n, double* %n.addr, align 8
  ret double 4.500000e+00, !dbg !284
}

; Function Attrs: noinline nounwind
define internal arm_aapcs_vfpcc double @fabs(double noundef %n) #0 !dbg !285 {
entry:
  %n.addr = alloca double, align 8
  %f = alloca double, align 8
  store double %n, double* %n.addr, align 8
  %0 = load double, double* %n.addr, align 8, !dbg !286
  %cmp = fcmp oge double %0, 0.000000e+00, !dbg !287
  br i1 %cmp, label %if.then, label %if.else, !dbg !286

if.then:                                          ; preds = %entry
  %1 = load double, double* %n.addr, align 8, !dbg !288
  store double %1, double* %f, align 8, !dbg !289
  br label %if.end, !dbg !290

if.else:                                          ; preds = %entry
  %2 = load double, double* %n.addr, align 8, !dbg !291
  %fneg = fneg double %2, !dbg !292
  store double %fneg, double* %f, align 8, !dbg !293
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load double, double* %f, align 8, !dbg !294
  ret double %3, !dbg !295
}

; Function Attrs: noinline nounwind
define internal arm_aapcs_vfpcc double @sin(double noundef %rad) #0 !dbg !296 {
entry:
  %rad.addr = alloca double, align 8
  %app = alloca double, align 8
  %diff = alloca double, align 8
  %inc = alloca i32, align 4
  store double %rad, double* %rad.addr, align 8
  store i32 1, i32* %inc, align 4, !dbg !297
  br label %while.cond, !dbg !298

while.cond:                                       ; preds = %while.body, %entry
  %0 = load double, double* %rad.addr, align 8, !dbg !299
  %cmp = fcmp ogt double %0, 6.283180e+00, !dbg !300
  br i1 %cmp, label %while.body, label %while.end, !dbg !298

while.body:                                       ; preds = %while.cond
  %1 = load double, double* %rad.addr, align 8, !dbg !301
  %sub = fsub double %1, 6.283180e+00, !dbg !301
  store double %sub, double* %rad.addr, align 8, !dbg !301
  br label %while.cond, !dbg !298, !llvm.loop !302

while.end:                                        ; preds = %while.cond
  br label %while.cond1, !dbg !304

while.cond1:                                      ; preds = %while.body3, %while.end
  %2 = load double, double* %rad.addr, align 8, !dbg !305
  %cmp2 = fcmp olt double %2, -6.283180e+00, !dbg !306
  br i1 %cmp2, label %while.body3, label %while.end4, !dbg !304

while.body3:                                      ; preds = %while.cond1
  %3 = load double, double* %rad.addr, align 8, !dbg !307
  %add = fadd double %3, 6.283180e+00, !dbg !307
  store double %add, double* %rad.addr, align 8, !dbg !307
  br label %while.cond1, !dbg !304, !llvm.loop !308

while.end4:                                       ; preds = %while.cond1
  %4 = load double, double* %rad.addr, align 8, !dbg !310
  store double %4, double* %diff, align 8, !dbg !311
  store double %4, double* %app, align 8, !dbg !312
  %5 = load double, double* %diff, align 8, !dbg !313
  %6 = load double, double* %rad.addr, align 8, !dbg !314
  %7 = load double, double* %rad.addr, align 8, !dbg !315
  %mul = fmul double %6, %7, !dbg !316
  %fneg = fneg double %mul, !dbg !317
  %mul5 = fmul double %5, %fneg, !dbg !318
  %8 = load i32, i32* %inc, align 4, !dbg !319
  %conv = sitofp i32 %8 to double, !dbg !319
  %mul6 = fmul double 2.000000e+00, %conv, !dbg !320
  %9 = load i32, i32* %inc, align 4, !dbg !321
  %conv7 = sitofp i32 %9 to double, !dbg !321
  %10 = call double @llvm.fmuladd.f64(double 2.000000e+00, double %conv7, double 1.000000e+00), !dbg !322
  %mul9 = fmul double %mul6, %10, !dbg !323
  %div = fdiv double %mul5, %mul9, !dbg !324
  store double %div, double* %diff, align 8, !dbg !325
  %11 = load double, double* %app, align 8, !dbg !326
  %12 = load double, double* %diff, align 8, !dbg !327
  %add10 = fadd double %11, %12, !dbg !328
  store double %add10, double* %app, align 8, !dbg !329
  %13 = load i32, i32* %inc, align 4, !dbg !330
  %inc11 = add nsw i32 %13, 1, !dbg !330
  store i32 %inc11, i32* %inc, align 4, !dbg !330
  br label %while.cond12, !dbg !331

while.cond12:                                     ; preds = %while.body15, %while.end4
  %14 = load double, double* %diff, align 8, !dbg !332
  %call = call arm_aapcs_vfpcc double @fabs(double noundef %14) #2, !dbg !333
  %cmp13 = fcmp oge double %call, 1.000000e-05, !dbg !334
  br i1 %cmp13, label %while.body15, label %while.end27, !dbg !331

while.body15:                                     ; preds = %while.cond12
  %15 = load double, double* %diff, align 8, !dbg !335
  %16 = load double, double* %rad.addr, align 8, !dbg !336
  %17 = load double, double* %rad.addr, align 8, !dbg !337
  %mul16 = fmul double %16, %17, !dbg !338
  %fneg17 = fneg double %mul16, !dbg !339
  %mul18 = fmul double %15, %fneg17, !dbg !340
  %18 = load i32, i32* %inc, align 4, !dbg !341
  %conv19 = sitofp i32 %18 to double, !dbg !341
  %mul20 = fmul double 2.000000e+00, %conv19, !dbg !342
  %19 = load i32, i32* %inc, align 4, !dbg !343
  %conv21 = sitofp i32 %19 to double, !dbg !343
  %20 = call double @llvm.fmuladd.f64(double 2.000000e+00, double %conv21, double 1.000000e+00), !dbg !344
  %mul23 = fmul double %mul20, %20, !dbg !345
  %div24 = fdiv double %mul18, %mul23, !dbg !346
  store double %div24, double* %diff, align 8, !dbg !347
  %21 = load double, double* %app, align 8, !dbg !348
  %22 = load double, double* %diff, align 8, !dbg !349
  %add25 = fadd double %21, %22, !dbg !350
  store double %add25, double* %app, align 8, !dbg !351
  %23 = load i32, i32* %inc, align 4, !dbg !352
  %inc26 = add nsw i32 %23, 1, !dbg !352
  store i32 %inc26, i32* %inc, align 4, !dbg !352
  br label %while.cond12, !dbg !331, !llvm.loop !353

while.end27:                                      ; preds = %while.cond12
  %24 = load double, double* %app, align 8, !dbg !355
  ret double %24, !dbg !356
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
!1 = !DIFile(filename: "/workspaces/llvmta/testcases/wcet_bench/fft1.c", directory: "/workspaces/llvmta/testcases/util_scripts", checksumkind: CSK_MD5, checksum: "c4bb1efa62f49ee865bad833d773f1bb")
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
!12 = distinct !DISubprogram(name: "main", scope: !13, file: !13, line: 109, type: !14, scopeLine: 110, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!13 = !DIFile(filename: "wcet_bench/fft1.c", directory: "/workspaces/llvmta/testcases", checksumkind: CSK_MD5, checksum: "c4bb1efa62f49ee865bad833d773f1bb")
!14 = !DISubroutineType(types: !15)
!15 = !{}
!16 = !DILocation(line: 112, column: 10, scope: !12)
!17 = !DILocation(line: 116, column: 8, scope: !12)
!18 = !DILocation(line: 116, column: 6, scope: !12)
!19 = !DILocation(line: 116, column: 13, scope: !12)
!20 = !DILocation(line: 116, column: 17, scope: !12)
!21 = !DILocation(line: 116, column: 15, scope: !12)
!22 = !DILocation(line: 116, column: 2, scope: !12)
!23 = !DILocation(line: 117, column: 23, scope: !12)
!24 = !DILocation(line: 117, column: 22, scope: !12)
!25 = !DILocation(line: 117, column: 25, scope: !12)
!26 = !DILocation(line: 117, column: 24, scope: !12)
!27 = !DILocation(line: 117, column: 12, scope: !12)
!28 = !DILocation(line: 117, column: 7, scope: !12)
!29 = !DILocation(line: 117, column: 4, scope: !12)
!30 = !DILocation(line: 117, column: 10, scope: !12)
!31 = !DILocation(line: 116, column: 21, scope: !12)
!32 = distinct !{!32, !22, !33, !34}
!33 = !DILocation(line: 117, column: 26, scope: !12)
!34 = !{!"llvm.loop.mustprogress"}
!35 = !DILocation(line: 120, column: 7, scope: !12)
!36 = !DILocation(line: 121, column: 16, scope: !12)
!37 = !DILocation(line: 121, column: 19, scope: !12)
!38 = !DILocation(line: 121, column: 11, scope: !12)
!39 = !DILocation(line: 121, column: 9, scope: !12)
!40 = !DILocation(line: 124, column: 7, scope: !12)
!41 = !DILocation(line: 125, column: 16, scope: !12)
!42 = !DILocation(line: 125, column: 19, scope: !12)
!43 = !DILocation(line: 125, column: 11, scope: !12)
!44 = !DILocation(line: 125, column: 9, scope: !12)
!45 = !DILocation(line: 127, column: 1, scope: !12)
!46 = distinct !DISubprogram(name: "cos", scope: !13, file: !13, line: 101, type: !14, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !15)
!47 = !DILocation(line: 105, column: 27, scope: !46)
!48 = !DILocation(line: 105, column: 25, scope: !46)
!49 = !DILocation(line: 105, column: 11, scope: !46)
!50 = !DILocation(line: 105, column: 3, scope: !46)
!51 = distinct !DISubprogram(name: "fft1", scope: !13, file: !13, line: 131, type: !14, scopeLine: 132, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!52 = !DILocation(line: 137, column: 6, scope: !51)
!53 = !DILocation(line: 137, column: 8, scope: !51)
!54 = !DILocation(line: 137, column: 13, scope: !51)
!55 = !DILocation(line: 138, column: 22, scope: !51)
!56 = !DILocation(line: 138, column: 14, scope: !51)
!57 = !DILocation(line: 138, column: 10, scope: !51)
!58 = !DILocation(line: 138, column: 25, scope: !51)
!59 = !DILocation(line: 138, column: 24, scope: !51)
!60 = !DILocation(line: 138, column: 8, scope: !51)
!61 = !DILocation(line: 139, column: 5, scope: !51)
!62 = !DILocation(line: 143, column: 9, scope: !51)
!63 = !DILocation(line: 143, column: 7, scope: !51)
!64 = !DILocation(line: 143, column: 14, scope: !51)
!65 = !DILocation(line: 143, column: 18, scope: !51)
!66 = !DILocation(line: 143, column: 16, scope: !51)
!67 = !DILocation(line: 143, column: 3, scope: !51)
!68 = !DILocation(line: 144, column: 7, scope: !51)
!69 = !DILocation(line: 144, column: 5, scope: !51)
!70 = !DILocation(line: 143, column: 25, scope: !51)
!71 = distinct !{!71, !67, !72, !34}
!72 = !DILocation(line: 144, column: 10, scope: !51)
!73 = !DILocation(line: 145, column: 11, scope: !51)
!74 = !DILocation(line: 145, column: 13, scope: !51)
!75 = !DILocation(line: 145, column: 12, scope: !51)
!76 = !DILocation(line: 145, column: 6, scope: !51)
!77 = !DILocation(line: 145, column: 16, scope: !51)
!78 = !DILocation(line: 146, column: 5, scope: !51)
!79 = !DILocation(line: 149, column: 12, scope: !51)
!80 = !DILocation(line: 149, column: 17, scope: !51)
!81 = !DILocation(line: 149, column: 11, scope: !51)
!82 = !DILocation(line: 149, column: 8, scope: !51)
!83 = !DILocation(line: 150, column: 9, scope: !51)
!84 = !DILocation(line: 150, column: 7, scope: !51)
!85 = !DILocation(line: 151, column: 10, scope: !51)
!86 = !DILocation(line: 151, column: 7, scope: !51)
!87 = !DILocation(line: 151, column: 15, scope: !51)
!88 = !DILocation(line: 151, column: 20, scope: !51)
!89 = !DILocation(line: 151, column: 18, scope: !51)
!90 = !DILocation(line: 151, column: 3, scope: !51)
!91 = !DILocation(line: 153, column: 10, scope: !51)
!92 = !DILocation(line: 153, column: 8, scope: !51)
!93 = !DILocation(line: 154, column: 9, scope: !51)
!94 = !DILocation(line: 155, column: 14, scope: !51)
!95 = !DILocation(line: 155, column: 12, scope: !51)
!96 = !DILocation(line: 155, column: 7, scope: !51)
!97 = !DILocation(line: 159, column: 11, scope: !51)
!98 = !DILocation(line: 159, column: 9, scope: !51)
!99 = !DILocation(line: 159, column: 16, scope: !51)
!100 = !DILocation(line: 159, column: 20, scope: !51)
!101 = !DILocation(line: 159, column: 18, scope: !51)
!102 = !DILocation(line: 159, column: 5, scope: !51)
!103 = !DILocation(line: 161, column: 13, scope: !51)
!104 = !DILocation(line: 161, column: 17, scope: !51)
!105 = !DILocation(line: 161, column: 15, scope: !51)
!106 = !DILocation(line: 161, column: 11, scope: !51)
!107 = !DILocation(line: 162, column: 16, scope: !51)
!108 = !DILocation(line: 162, column: 12, scope: !51)
!109 = !DILocation(line: 162, column: 10, scope: !51)
!110 = !DILocation(line: 163, column: 12, scope: !51)
!111 = !DILocation(line: 163, column: 23, scope: !51)
!112 = !DILocation(line: 163, column: 19, scope: !51)
!113 = !DILocation(line: 163, column: 17, scope: !51)
!114 = !DILocation(line: 163, column: 10, scope: !51)
!115 = !DILocation(line: 164, column: 11, scope: !51)
!116 = !DILocation(line: 164, column: 15, scope: !51)
!117 = !DILocation(line: 164, column: 13, scope: !51)
!118 = !DILocation(line: 164, column: 9, scope: !51)
!119 = !DILocation(line: 165, column: 15, scope: !51)
!120 = !DILocation(line: 165, column: 13, scope: !51)
!121 = !DILocation(line: 165, column: 11, scope: !51)
!122 = !DILocation(line: 165, column: 19, scope: !51)
!123 = !DILocation(line: 165, column: 24, scope: !51)
!124 = !DILocation(line: 165, column: 21, scope: !51)
!125 = !DILocation(line: 165, column: 7, scope: !51)
!126 = !DILocation(line: 167, column: 14, scope: !51)
!127 = !DILocation(line: 167, column: 18, scope: !51)
!128 = !DILocation(line: 167, column: 16, scope: !51)
!129 = !DILocation(line: 167, column: 12, scope: !51)
!130 = !DILocation(line: 168, column: 14, scope: !51)
!131 = !DILocation(line: 168, column: 19, scope: !51)
!132 = !DILocation(line: 168, column: 17, scope: !51)
!133 = !DILocation(line: 168, column: 12, scope: !51)
!134 = !DILocation(line: 169, column: 18, scope: !51)
!135 = !DILocation(line: 169, column: 15, scope: !51)
!136 = !DILocation(line: 169, column: 13, scope: !51)
!137 = !DILocation(line: 170, column: 18, scope: !51)
!138 = !DILocation(line: 170, column: 15, scope: !51)
!139 = !DILocation(line: 170, column: 13, scope: !51)
!140 = !DILocation(line: 171, column: 18, scope: !51)
!141 = !DILocation(line: 171, column: 15, scope: !51)
!142 = !DILocation(line: 171, column: 13, scope: !51)
!143 = !DILocation(line: 172, column: 18, scope: !51)
!144 = !DILocation(line: 172, column: 15, scope: !51)
!145 = !DILocation(line: 172, column: 13, scope: !51)
!146 = !DILocation(line: 173, column: 14, scope: !51)
!147 = !DILocation(line: 173, column: 20, scope: !51)
!148 = !DILocation(line: 173, column: 18, scope: !51)
!149 = !DILocation(line: 173, column: 12, scope: !51)
!150 = !DILocation(line: 174, column: 14, scope: !51)
!151 = !DILocation(line: 174, column: 20, scope: !51)
!152 = !DILocation(line: 174, column: 18, scope: !51)
!153 = !DILocation(line: 174, column: 12, scope: !51)
!154 = !DILocation(line: 175, column: 18, scope: !51)
!155 = !DILocation(line: 175, column: 24, scope: !51)
!156 = !DILocation(line: 175, column: 22, scope: !51)
!157 = !DILocation(line: 175, column: 12, scope: !51)
!158 = !DILocation(line: 175, column: 9, scope: !51)
!159 = !DILocation(line: 175, column: 16, scope: !51)
!160 = !DILocation(line: 176, column: 18, scope: !51)
!161 = !DILocation(line: 176, column: 24, scope: !51)
!162 = !DILocation(line: 176, column: 22, scope: !51)
!163 = !DILocation(line: 176, column: 12, scope: !51)
!164 = !DILocation(line: 176, column: 9, scope: !51)
!165 = !DILocation(line: 176, column: 16, scope: !51)
!166 = !DILocation(line: 177, column: 18, scope: !51)
!167 = !DILocation(line: 177, column: 23, scope: !51)
!168 = !DILocation(line: 177, column: 28, scope: !51)
!169 = !DILocation(line: 177, column: 33, scope: !51)
!170 = !DILocation(line: 177, column: 31, scope: !51)
!171 = !DILocation(line: 177, column: 26, scope: !51)
!172 = !DILocation(line: 177, column: 12, scope: !51)
!173 = !DILocation(line: 177, column: 9, scope: !51)
!174 = !DILocation(line: 177, column: 16, scope: !51)
!175 = !DILocation(line: 178, column: 18, scope: !51)
!176 = !DILocation(line: 178, column: 23, scope: !51)
!177 = !DILocation(line: 178, column: 28, scope: !51)
!178 = !DILocation(line: 178, column: 33, scope: !51)
!179 = !DILocation(line: 178, column: 31, scope: !51)
!180 = !DILocation(line: 178, column: 26, scope: !51)
!181 = !DILocation(line: 178, column: 12, scope: !51)
!182 = !DILocation(line: 178, column: 9, scope: !51)
!183 = !DILocation(line: 178, column: 16, scope: !51)
!184 = !DILocation(line: 179, column: 7, scope: !51)
!185 = !DILocation(line: 165, column: 32, scope: !51)
!186 = !DILocation(line: 165, column: 29, scope: !51)
!187 = distinct !{!187, !125, !184, !34}
!188 = !DILocation(line: 180, column: 5, scope: !51)
!189 = !DILocation(line: 159, column: 26, scope: !51)
!190 = distinct !{!190, !102, !188, !34}
!191 = !DILocation(line: 181, column: 3, scope: !51)
!192 = !DILocation(line: 151, column: 28, scope: !51)
!193 = distinct !{!193, !90, !191, !34}
!194 = !DILocation(line: 185, column: 8, scope: !51)
!195 = !DILocation(line: 185, column: 10, scope: !51)
!196 = !DILocation(line: 185, column: 6, scope: !51)
!197 = !DILocation(line: 186, column: 8, scope: !51)
!198 = !DILocation(line: 186, column: 10, scope: !51)
!199 = !DILocation(line: 186, column: 6, scope: !51)
!200 = !DILocation(line: 187, column: 5, scope: !51)
!201 = !DILocation(line: 191, column: 9, scope: !51)
!202 = !DILocation(line: 191, column: 7, scope: !51)
!203 = !DILocation(line: 191, column: 14, scope: !51)
!204 = !DILocation(line: 191, column: 19, scope: !51)
!205 = !DILocation(line: 191, column: 16, scope: !51)
!206 = !DILocation(line: 191, column: 3, scope: !51)
!207 = !DILocation(line: 193, column: 8, scope: !51)
!208 = !DILocation(line: 193, column: 12, scope: !51)
!209 = !DILocation(line: 193, column: 10, scope: !51)
!210 = !DILocation(line: 195, column: 14, scope: !51)
!211 = !DILocation(line: 195, column: 15, scope: !51)
!212 = !DILocation(line: 195, column: 11, scope: !51)
!213 = !DILocation(line: 195, column: 9, scope: !51)
!214 = !DILocation(line: 196, column: 14, scope: !51)
!215 = !DILocation(line: 196, column: 15, scope: !51)
!216 = !DILocation(line: 196, column: 11, scope: !51)
!217 = !DILocation(line: 196, column: 9, scope: !51)
!218 = !DILocation(line: 197, column: 19, scope: !51)
!219 = !DILocation(line: 197, column: 20, scope: !51)
!220 = !DILocation(line: 197, column: 16, scope: !51)
!221 = !DILocation(line: 197, column: 9, scope: !51)
!222 = !DILocation(line: 197, column: 10, scope: !51)
!223 = !DILocation(line: 197, column: 6, scope: !51)
!224 = !DILocation(line: 197, column: 14, scope: !51)
!225 = !DILocation(line: 198, column: 19, scope: !51)
!226 = !DILocation(line: 198, column: 20, scope: !51)
!227 = !DILocation(line: 198, column: 16, scope: !51)
!228 = !DILocation(line: 198, column: 9, scope: !51)
!229 = !DILocation(line: 198, column: 10, scope: !51)
!230 = !DILocation(line: 198, column: 6, scope: !51)
!231 = !DILocation(line: 198, column: 14, scope: !51)
!232 = !DILocation(line: 199, column: 16, scope: !51)
!233 = !DILocation(line: 199, column: 9, scope: !51)
!234 = !DILocation(line: 199, column: 10, scope: !51)
!235 = !DILocation(line: 199, column: 6, scope: !51)
!236 = !DILocation(line: 199, column: 14, scope: !51)
!237 = !DILocation(line: 200, column: 16, scope: !51)
!238 = !DILocation(line: 200, column: 9, scope: !51)
!239 = !DILocation(line: 200, column: 10, scope: !51)
!240 = !DILocation(line: 200, column: 6, scope: !51)
!241 = !DILocation(line: 200, column: 14, scope: !51)
!242 = !DILocation(line: 201, column: 5, scope: !51)
!243 = !DILocation(line: 202, column: 9, scope: !51)
!244 = !DILocation(line: 202, column: 7, scope: !51)
!245 = !DILocation(line: 203, column: 5, scope: !51)
!246 = !DILocation(line: 203, column: 11, scope: !51)
!247 = !DILocation(line: 203, column: 15, scope: !51)
!248 = !DILocation(line: 203, column: 13, scope: !51)
!249 = !DILocation(line: 205, column: 11, scope: !51)
!250 = !DILocation(line: 205, column: 8, scope: !51)
!251 = !DILocation(line: 206, column: 8, scope: !51)
!252 = distinct !{!252, !245, !253, !34}
!253 = !DILocation(line: 207, column: 5, scope: !51)
!254 = !DILocation(line: 208, column: 10, scope: !51)
!255 = !DILocation(line: 208, column: 7, scope: !51)
!256 = !DILocation(line: 209, column: 3, scope: !51)
!257 = !DILocation(line: 191, column: 24, scope: !51)
!258 = distinct !{!258, !206, !256, !34}
!259 = !DILocation(line: 210, column: 6, scope: !51)
!260 = !DILocation(line: 210, column: 11, scope: !51)
!261 = !DILocation(line: 210, column: 17, scope: !51)
!262 = !DILocation(line: 211, column: 7, scope: !51)
!263 = !DILocation(line: 211, column: 5, scope: !51)
!264 = !DILocation(line: 212, column: 9, scope: !51)
!265 = !DILocation(line: 212, column: 7, scope: !51)
!266 = !DILocation(line: 212, column: 14, scope: !51)
!267 = !DILocation(line: 212, column: 18, scope: !51)
!268 = !DILocation(line: 212, column: 16, scope: !51)
!269 = !DILocation(line: 212, column: 3, scope: !51)
!270 = !DILocation(line: 214, column: 14, scope: !51)
!271 = !DILocation(line: 214, column: 8, scope: !51)
!272 = !DILocation(line: 214, column: 5, scope: !51)
!273 = !DILocation(line: 214, column: 11, scope: !51)
!274 = !DILocation(line: 215, column: 14, scope: !51)
!275 = !DILocation(line: 215, column: 8, scope: !51)
!276 = !DILocation(line: 215, column: 5, scope: !51)
!277 = !DILocation(line: 215, column: 11, scope: !51)
!278 = !DILocation(line: 216, column: 3, scope: !51)
!279 = !DILocation(line: 212, column: 22, scope: !51)
!280 = distinct !{!280, !269, !278, !34}
!281 = !DILocation(line: 217, column: 3, scope: !51)
!282 = !DILocation(line: 218, column: 1, scope: !51)
!283 = distinct !DISubprogram(name: "log", scope: !13, file: !13, line: 67, type: !14, scopeLine: 68, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !15)
!284 = !DILocation(line: 69, column: 3, scope: !283)
!285 = distinct !DISubprogram(name: "fabs", scope: !13, file: !13, line: 58, type: !14, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !15)
!286 = !DILocation(line: 62, column: 7, scope: !285)
!287 = !DILocation(line: 62, column: 9, scope: !285)
!288 = !DILocation(line: 62, column: 19, scope: !285)
!289 = !DILocation(line: 62, column: 17, scope: !285)
!290 = !DILocation(line: 62, column: 15, scope: !285)
!291 = !DILocation(line: 63, column: 13, scope: !285)
!292 = !DILocation(line: 63, column: 12, scope: !285)
!293 = !DILocation(line: 63, column: 10, scope: !285)
!294 = !DILocation(line: 64, column: 10, scope: !285)
!295 = !DILocation(line: 64, column: 3, scope: !285)
!296 = distinct !DISubprogram(name: "sin", scope: !13, file: !13, line: 73, type: !14, scopeLine: 75, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !15)
!297 = !DILocation(line: 79, column: 7, scope: !296)
!298 = !DILocation(line: 81, column: 3, scope: !296)
!299 = !DILocation(line: 81, column: 10, scope: !296)
!300 = !DILocation(line: 81, column: 14, scope: !296)
!301 = !DILocation(line: 82, column: 6, scope: !296)
!302 = distinct !{!302, !298, !303, !34}
!303 = !DILocation(line: 82, column: 11, scope: !296)
!304 = !DILocation(line: 83, column: 3, scope: !296)
!305 = !DILocation(line: 83, column: 10, scope: !296)
!306 = !DILocation(line: 83, column: 14, scope: !296)
!307 = !DILocation(line: 84, column: 9, scope: !296)
!308 = distinct !{!308, !304, !309, !34}
!309 = !DILocation(line: 84, column: 14, scope: !296)
!310 = !DILocation(line: 85, column: 16, scope: !296)
!311 = !DILocation(line: 85, column: 14, scope: !296)
!312 = !DILocation(line: 85, column: 7, scope: !296)
!313 = !DILocation(line: 86, column: 12, scope: !296)
!314 = !DILocation(line: 86, column: 22, scope: !296)
!315 = !DILocation(line: 86, column: 26, scope: !296)
!316 = !DILocation(line: 86, column: 25, scope: !296)
!317 = !DILocation(line: 86, column: 20, scope: !296)
!318 = !DILocation(line: 86, column: 17, scope: !296)
!319 = !DILocation(line: 87, column: 15, scope: !296)
!320 = !DILocation(line: 87, column: 13, scope: !296)
!321 = !DILocation(line: 87, column: 29, scope: !296)
!322 = !DILocation(line: 87, column: 33, scope: !296)
!323 = !DILocation(line: 87, column: 20, scope: !296)
!324 = !DILocation(line: 86, column: 33, scope: !296)
!325 = !DILocation(line: 86, column: 9, scope: !296)
!326 = !DILocation(line: 88, column: 11, scope: !296)
!327 = !DILocation(line: 88, column: 17, scope: !296)
!328 = !DILocation(line: 88, column: 15, scope: !296)
!329 = !DILocation(line: 88, column: 9, scope: !296)
!330 = !DILocation(line: 89, column: 8, scope: !296)
!331 = !DILocation(line: 90, column: 3, scope: !296)
!332 = !DILocation(line: 90, column: 14, scope: !296)
!333 = !DILocation(line: 90, column: 9, scope: !296)
!334 = !DILocation(line: 90, column: 20, scope: !296)
!335 = !DILocation(line: 91, column: 13, scope: !296)
!336 = !DILocation(line: 91, column: 23, scope: !296)
!337 = !DILocation(line: 91, column: 27, scope: !296)
!338 = !DILocation(line: 91, column: 26, scope: !296)
!339 = !DILocation(line: 91, column: 21, scope: !296)
!340 = !DILocation(line: 91, column: 18, scope: !296)
!341 = !DILocation(line: 92, column: 15, scope: !296)
!342 = !DILocation(line: 92, column: 13, scope: !296)
!343 = !DILocation(line: 92, column: 29, scope: !296)
!344 = !DILocation(line: 92, column: 33, scope: !296)
!345 = !DILocation(line: 92, column: 20, scope: !296)
!346 = !DILocation(line: 91, column: 34, scope: !296)
!347 = !DILocation(line: 91, column: 10, scope: !296)
!348 = !DILocation(line: 93, column: 11, scope: !296)
!349 = !DILocation(line: 93, column: 17, scope: !296)
!350 = !DILocation(line: 93, column: 15, scope: !296)
!351 = !DILocation(line: 93, column: 9, scope: !296)
!352 = !DILocation(line: 94, column: 8, scope: !296)
!353 = distinct !{!353, !331, !354, !34}
!354 = !DILocation(line: 95, column: 3, scope: !296)
!355 = !DILocation(line: 97, column: 10, scope: !296)
!356 = !DILocation(line: 97, column: 3, scope: !296)
