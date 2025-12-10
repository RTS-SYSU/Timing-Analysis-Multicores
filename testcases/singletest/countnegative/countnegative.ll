; ModuleID = 'unoptimized.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv4t-unknown-unknown"

%union.dwords = type { i64 }
%struct.anon = type { i32, i32 }

@countnegative_seed = dso_local global i32 0, align 4, !dbg !0
@countnegative_array = dso_local global [20 x [20 x i32]] zeroinitializer, align 4, !dbg !7
@countnegative_postotal = dso_local global i32 0, align 4, !dbg !14
@countnegative_poscnt = dso_local global i32 0, align 4, !dbg !18
@countnegative_negtotal = dso_local global i32 0, align 4, !dbg !16
@countnegative_negcnt = dso_local global i32 0, align 4, !dbg !20
@.str = private unnamed_addr constant [13 x i8] c"../absvdi2.c\00", align 1
@__func__.__absvdi2 = private unnamed_addr constant [10 x i8] c"__absvdi2\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"../absvsi2.c\00", align 1
@__func__.__absvsi2 = private unnamed_addr constant [10 x i8] c"__absvsi2\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"../addvdi3.c\00", align 1
@__func__.__addvdi3 = private unnamed_addr constant [10 x i8] c"__addvdi3\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"../addvsi3.c\00", align 1
@__func__.__addvsi3 = private unnamed_addr constant [10 x i8] c"__addvsi3\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"../mulvdi3.c\00", align 1
@__func__.__mulvdi3 = private unnamed_addr constant [10 x i8] c"__mulvdi3\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"../mulvsi3.c\00", align 1
@__func__.__mulvsi3 = private unnamed_addr constant [10 x i8] c"__mulvsi3\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"../subvdi3.c\00", align 1
@__func__.__subvdi3 = private unnamed_addr constant [10 x i8] c"__subvdi3\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"../subvsi3.c\00", align 1
@__func__.__subvsi3 = private unnamed_addr constant [10 x i8] c"__subvsi3\00", align 1

@__aeabi_llsl = dso_local alias void (...), bitcast (i64 (i64, i32)* @__ashldi3 to void (...)*)
@__aeabi_lasr = dso_local alias void (...), bitcast (i64 (i64, i32)* @__ashrdi3 to void (...)*)
@__aeabi_idiv = dso_local alias void (...), bitcast (i32 (i32, i32)* @__divsi3 to void (...)*)
@__aeabi_llsr = dso_local alias void (...), bitcast (i64 (i64, i32)* @__lshrdi3 to void (...)*)
@__aeabi_uidiv = dso_local alias void (...), bitcast (i32 (i32, i32)* @__udivsi3 to void (...)*)

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @countnegative_initSeed() #0 !dbg !146 {
entry:
  store volatile i32 0, i32* @countnegative_seed, align 4, !dbg !150
  ret void, !dbg !151
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @countnegative_randomInteger() #0 !dbg !152 {
entry:
  %0 = load volatile i32, i32* @countnegative_seed, align 4, !dbg !154
  %mul = mul nsw i32 %0, 133, !dbg !155
  %add = add nsw i32 %mul, 81, !dbg !156
  %rem = srem i32 %add, 8095, !dbg !157
  store volatile i32 %rem, i32* @countnegative_seed, align 4, !dbg !158
  %1 = load volatile i32, i32* @countnegative_seed, align 4, !dbg !159
  ret i32 %1, !dbg !160
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @countnegative_initialize([20 x i32]* noundef %Array) #0 !dbg !161 {
entry:
  call void @llvm.dbg.value(metadata [20 x i32]* %Array, metadata !167, metadata !DIExpression()), !dbg !168
  call void @llvm.dbg.value(metadata i32 0, metadata !169, metadata !DIExpression()), !dbg !168
  br label %for.cond, !dbg !170

for.cond:                                         ; preds = %for.inc5, %entry
  %OuterIndex.0 = phi i32 [ 0, %entry ], [ %inc6, %for.inc5 ], !dbg !172
  call void @llvm.dbg.value(metadata i32 %OuterIndex.0, metadata !169, metadata !DIExpression()), !dbg !168
  %exitcond1.not = icmp eq i32 %OuterIndex.0, 20, !dbg !173
  br i1 %exitcond1.not, label %for.end7, label %for.body, !dbg !175

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.value(metadata i32 0, metadata !176, metadata !DIExpression()), !dbg !168
  br label %for.cond1, !dbg !177

for.cond1:                                        ; preds = %for.inc, %for.body
  %InnerIndex.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !dbg !179
  call void @llvm.dbg.value(metadata i32 %InnerIndex.0, metadata !176, metadata !DIExpression()), !dbg !168
  %exitcond.not = icmp eq i32 %InnerIndex.0, 20, !dbg !180
  br i1 %exitcond.not, label %for.end, label %for.body3, !dbg !182

for.body3:                                        ; preds = %for.cond1
  %call = call arm_aapcs_vfpcc i32 @countnegative_randomInteger() #4, !dbg !183
  %arrayidx4 = getelementptr inbounds [20 x i32], [20 x i32]* %Array, i32 %OuterIndex.0, i32 %InnerIndex.0, !dbg !184
  store i32 %call, i32* %arrayidx4, align 4, !dbg !185
  br label %for.inc, !dbg !184

for.inc:                                          ; preds = %for.body3
  %inc = add nuw nsw i32 %InnerIndex.0, 1, !dbg !186
  call void @llvm.dbg.value(metadata i32 %inc, metadata !176, metadata !DIExpression()), !dbg !168
  br label %for.cond1, !dbg !187, !llvm.loop !188

for.end:                                          ; preds = %for.cond1
  br label %for.inc5, !dbg !189

for.inc5:                                         ; preds = %for.end
  %inc6 = add nuw nsw i32 %OuterIndex.0, 1, !dbg !191
  call void @llvm.dbg.value(metadata i32 %inc6, metadata !169, metadata !DIExpression()), !dbg !168
  br label %for.cond, !dbg !192, !llvm.loop !193

for.end7:                                         ; preds = %for.cond
  ret void, !dbg !195
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @countnegative_init() #0 !dbg !196 {
entry:
  call arm_aapcs_vfpcc void @countnegative_initSeed() #4, !dbg !197
  call arm_aapcs_vfpcc void @countnegative_initialize([20 x i32]* noundef getelementptr inbounds ([20 x [20 x i32]], [20 x [20 x i32]]* @countnegative_array, i32 0, i32 0)) #4, !dbg !198
  ret void, !dbg !199
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @countnegative_return() #0 !dbg !200 {
entry:
  %0 = load i32, i32* @countnegative_postotal, align 4, !dbg !201
  %1 = load i32, i32* @countnegative_poscnt, align 4, !dbg !202
  %add = add nsw i32 %0, %1, !dbg !203
  %2 = load i32, i32* @countnegative_negtotal, align 4, !dbg !204
  %add1 = add nsw i32 %add, %2, !dbg !205
  %3 = load i32, i32* @countnegative_negcnt, align 4, !dbg !206
  %add2 = add nsw i32 %add1, %3, !dbg !207
  call void @llvm.dbg.value(metadata i32 %add2, metadata !208, metadata !DIExpression()), !dbg !209
  %cmp = icmp ne i32 %add2, 1538270, !dbg !210
  %cond = sext i1 %cmp to i32, !dbg !211
  ret i32 %cond, !dbg !212
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @countnegative_sum([20 x i32]* noundef %Array) #0 !dbg !213 {
entry:
  call void @llvm.dbg.value(metadata [20 x i32]* %Array, metadata !214, metadata !DIExpression()), !dbg !215
  call void @llvm.dbg.value(metadata i32 0, metadata !216, metadata !DIExpression()), !dbg !215
  call void @llvm.dbg.value(metadata i32 0, metadata !217, metadata !DIExpression()), !dbg !215
  call void @llvm.dbg.value(metadata i32 0, metadata !218, metadata !DIExpression()), !dbg !215
  call void @llvm.dbg.value(metadata i32 0, metadata !219, metadata !DIExpression()), !dbg !215
  call void @llvm.dbg.value(metadata i32 0, metadata !220, metadata !DIExpression()), !dbg !215
  br label %for.cond, !dbg !221

for.cond:                                         ; preds = %for.inc13, %entry
  %Pcnt.0 = phi i32 [ 0, %entry ], [ %Pcnt.1, %for.inc13 ], !dbg !223
  %Ntotal.0 = phi i32 [ 0, %entry ], [ %Ntotal.1, %for.inc13 ], !dbg !224
  %Ptotal.0 = phi i32 [ 0, %entry ], [ %Ptotal.1, %for.inc13 ], !dbg !225
  %Outer.0 = phi i32 [ 0, %entry ], [ %inc14, %for.inc13 ], !dbg !226
  %Ncnt.0 = phi i32 [ 0, %entry ], [ %Ncnt.1, %for.inc13 ], !dbg !227
  call void @llvm.dbg.value(metadata i32 %Ncnt.0, metadata !219, metadata !DIExpression()), !dbg !215
  call void @llvm.dbg.value(metadata i32 %Outer.0, metadata !220, metadata !DIExpression()), !dbg !215
  call void @llvm.dbg.value(metadata i32 %Ptotal.0, metadata !216, metadata !DIExpression()), !dbg !215
  call void @llvm.dbg.value(metadata i32 %Ntotal.0, metadata !217, metadata !DIExpression()), !dbg !215
  call void @llvm.dbg.value(metadata i32 %Pcnt.0, metadata !218, metadata !DIExpression()), !dbg !215
  %exitcond1.not = icmp eq i32 %Outer.0, 20, !dbg !228
  br i1 %exitcond1.not, label %for.end15, label %for.body, !dbg !230

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.value(metadata i32 0, metadata !231, metadata !DIExpression()), !dbg !215
  br label %for.cond1, !dbg !232

for.cond1:                                        ; preds = %for.inc, %for.body
  %Pcnt.1 = phi i32 [ %Pcnt.0, %for.body ], [ %Pcnt.2, %for.inc ], !dbg !215
  %Ntotal.1 = phi i32 [ %Ntotal.0, %for.body ], [ %Ntotal.2, %for.inc ], !dbg !224
  %Ptotal.1 = phi i32 [ %Ptotal.0, %for.body ], [ %Ptotal.2, %for.inc ], !dbg !215
  %Inner.0 = phi i32 [ 0, %for.body ], [ %inc12, %for.inc ], !dbg !234
  %Ncnt.1 = phi i32 [ %Ncnt.0, %for.body ], [ %Ncnt.2, %for.inc ], !dbg !227
  call void @llvm.dbg.value(metadata i32 %Ncnt.1, metadata !219, metadata !DIExpression()), !dbg !215
  call void @llvm.dbg.value(metadata i32 %Inner.0, metadata !231, metadata !DIExpression()), !dbg !215
  call void @llvm.dbg.value(metadata i32 %Ptotal.1, metadata !216, metadata !DIExpression()), !dbg !215
  call void @llvm.dbg.value(metadata i32 %Ntotal.1, metadata !217, metadata !DIExpression()), !dbg !215
  call void @llvm.dbg.value(metadata i32 %Pcnt.1, metadata !218, metadata !DIExpression()), !dbg !215
  %exitcond.not = icmp eq i32 %Inner.0, 20, !dbg !235
  br i1 %exitcond.not, label %for.end, label %for.body3, !dbg !237

for.body3:                                        ; preds = %for.cond1
  %arrayidx4 = getelementptr inbounds [20 x i32], [20 x i32]* %Array, i32 %Outer.0, i32 %Inner.0, !dbg !238
  %0 = load i32, i32* %arrayidx4, align 4, !dbg !238
  %cmp5 = icmp sgt i32 %0, -1, !dbg !240
  br i1 %cmp5, label %if.then, label %if.else, !dbg !241

if.then:                                          ; preds = %for.body3
  %arrayidx7 = getelementptr inbounds [20 x i32], [20 x i32]* %Array, i32 %Outer.0, i32 %Inner.0, !dbg !242
  %1 = load i32, i32* %arrayidx7, align 4, !dbg !242
  %add = add nsw i32 %Ptotal.1, %1, !dbg !244
  call void @llvm.dbg.value(metadata i32 %add, metadata !216, metadata !DIExpression()), !dbg !215
  %inc = add nsw i32 %Pcnt.1, 1, !dbg !245
  call void @llvm.dbg.value(metadata i32 %inc, metadata !218, metadata !DIExpression()), !dbg !215
  br label %if.end, !dbg !246

if.else:                                          ; preds = %for.body3
  %arrayidx9 = getelementptr inbounds [20 x i32], [20 x i32]* %Array, i32 %Outer.0, i32 %Inner.0, !dbg !247
  %2 = load i32, i32* %arrayidx9, align 4, !dbg !247
  %add10 = add nsw i32 %Ntotal.1, %2, !dbg !249
  call void @llvm.dbg.value(metadata i32 %add10, metadata !217, metadata !DIExpression()), !dbg !215
  %inc11 = add nsw i32 %Ncnt.1, 1, !dbg !250
  call void @llvm.dbg.value(metadata i32 %inc11, metadata !219, metadata !DIExpression()), !dbg !215
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %Pcnt.2 = phi i32 [ %inc, %if.then ], [ %Pcnt.1, %if.else ], !dbg !215
  %Ntotal.2 = phi i32 [ %Ntotal.1, %if.then ], [ %add10, %if.else ], !dbg !215
  %Ptotal.2 = phi i32 [ %add, %if.then ], [ %Ptotal.1, %if.else ], !dbg !215
  %Ncnt.2 = phi i32 [ %Ncnt.1, %if.then ], [ %inc11, %if.else ], !dbg !215
  call void @llvm.dbg.value(metadata i32 %Ncnt.2, metadata !219, metadata !DIExpression()), !dbg !215
  call void @llvm.dbg.value(metadata i32 %Ptotal.2, metadata !216, metadata !DIExpression()), !dbg !215
  call void @llvm.dbg.value(metadata i32 %Ntotal.2, metadata !217, metadata !DIExpression()), !dbg !215
  call void @llvm.dbg.value(metadata i32 %Pcnt.2, metadata !218, metadata !DIExpression()), !dbg !215
  br label %for.inc, !dbg !251

for.inc:                                          ; preds = %if.end
  %inc12 = add nuw nsw i32 %Inner.0, 1, !dbg !252
  call void @llvm.dbg.value(metadata i32 %inc12, metadata !231, metadata !DIExpression()), !dbg !215
  br label %for.cond1, !dbg !253, !llvm.loop !254

for.end:                                          ; preds = %for.cond1
  br label %for.inc13, !dbg !255

for.inc13:                                        ; preds = %for.end
  %inc14 = add nuw nsw i32 %Outer.0, 1, !dbg !256
  call void @llvm.dbg.value(metadata i32 %inc14, metadata !220, metadata !DIExpression()), !dbg !215
  br label %for.cond, !dbg !257, !llvm.loop !258

for.end15:                                        ; preds = %for.cond
  store i32 %Ptotal.0, i32* @countnegative_postotal, align 4, !dbg !260
  store i32 %Pcnt.0, i32* @countnegative_poscnt, align 4, !dbg !261
  store i32 %Ntotal.0, i32* @countnegative_negtotal, align 4, !dbg !262
  store i32 %Ncnt.0, i32* @countnegative_negcnt, align 4, !dbg !263
  ret void, !dbg !264
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @countnegative_main() #0 !dbg !265 {
entry:
  call arm_aapcs_vfpcc void @countnegative_sum([20 x i32]* noundef getelementptr inbounds ([20 x [20 x i32]], [20 x [20 x i32]]* @countnegative_array, i32 0, i32 0)) #4, !dbg !266
  ret void, !dbg !267
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @main() #0 !dbg !268 {
entry:
  call arm_aapcs_vfpcc void @countnegative_init() #4, !dbg !269
  call arm_aapcs_vfpcc void @countnegative_main() #4, !dbg !270
  %call = call arm_aapcs_vfpcc i32 @countnegative_return() #4, !dbg !271
  ret i32 %call, !dbg !272
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__absvdi2(i64 noundef %a) #1 !dbg !273 {
entry:
  %cmp = icmp eq i64 %a, -9223372036854775808, !dbg !275
  br i1 %cmp, label %if.then, label %if.end, !dbg !276

if.then:                                          ; preds = %entry
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i32 noundef 26, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__absvdi2, i32 0, i32 0)) #5, !dbg !277
  unreachable, !dbg !277

if.end:                                           ; preds = %entry
  %0 = call i64 @llvm.abs.i64(i64 %a, i1 true), !dbg !278
  ret i64 %0, !dbg !279
}

; Function Attrs: noinline noreturn nounwind
define weak hidden arm_aapcscc void @compilerrt_abort_impl(i8* noundef %file, i32 noundef %line, i8* noundef %function) #2 !dbg !280 {
entry:
  unreachable, !dbg !281
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__absvsi2(i32 noundef %a) #1 !dbg !282 {
entry:
  %cmp = icmp eq i32 %a, -2147483648, !dbg !283
  br i1 %cmp, label %if.then, label %if.end, !dbg !284

if.then:                                          ; preds = %entry
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 noundef 26, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__absvsi2, i32 0, i32 0)) #5, !dbg !285
  unreachable, !dbg !285

if.end:                                           ; preds = %entry
  %0 = call i32 @llvm.abs.i32(i32 %a, i1 true), !dbg !286
  ret i32 %0, !dbg !287
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__addvdi3(i64 noundef %a, i64 noundef %b) #1 !dbg !288 {
entry:
  %add = add i64 %a, %b, !dbg !289
  %cmp = icmp sgt i64 %b, -1, !dbg !290
  br i1 %cmp, label %if.then, label %if.else, !dbg !291

if.then:                                          ; preds = %entry
  %cmp1 = icmp slt i64 %add, %a, !dbg !292
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !293

if.then2:                                         ; preds = %if.then
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i32 noundef 28, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__addvdi3, i32 0, i32 0)) #5, !dbg !294
  unreachable, !dbg !294

if.end:                                           ; preds = %if.then
  br label %if.end6, !dbg !295

if.else:                                          ; preds = %entry
  %cmp3.not = icmp slt i64 %add, %a, !dbg !296
  br i1 %cmp3.not, label %if.end5, label %if.then4, !dbg !297

if.then4:                                         ; preds = %if.else
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i32 noundef 33, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__addvdi3, i32 0, i32 0)) #5, !dbg !298
  unreachable, !dbg !298

if.end5:                                          ; preds = %if.else
  br label %if.end6

if.end6:                                          ; preds = %if.end5, %if.end
  ret i64 %add, !dbg !299
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__addvsi3(i32 noundef %a, i32 noundef %b) #1 !dbg !300 {
entry:
  %add = add i32 %a, %b, !dbg !301
  %cmp = icmp sgt i32 %b, -1, !dbg !302
  br i1 %cmp, label %if.then, label %if.else, !dbg !303

if.then:                                          ; preds = %entry
  %cmp1 = icmp slt i32 %add, %a, !dbg !304
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !305

if.then2:                                         ; preds = %if.then
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), i32 noundef 28, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__addvsi3, i32 0, i32 0)) #5, !dbg !306
  unreachable, !dbg !306

if.end:                                           ; preds = %if.then
  br label %if.end6, !dbg !307

if.else:                                          ; preds = %entry
  %cmp3.not = icmp slt i32 %add, %a, !dbg !308
  br i1 %cmp3.not, label %if.end5, label %if.then4, !dbg !309

if.then4:                                         ; preds = %if.else
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), i32 noundef 33, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__addvsi3, i32 0, i32 0)) #5, !dbg !310
  unreachable, !dbg !310

if.end5:                                          ; preds = %if.else
  br label %if.end6

if.end6:                                          ; preds = %if.end5, %if.end
  ret i32 %add, !dbg !311
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__ashldi3(i64 noundef %a, i32 noundef %b) #1 !dbg !312 {
entry:
  %input = alloca %union.dwords, align 8
  %result = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %input, i32 0, i32 0, !dbg !313
  store i64 %a, i64* %all, align 8, !dbg !314
  %and = and i32 %b, 32, !dbg !315
  %tobool.not = icmp eq i32 %and, 0, !dbg !315
  br i1 %tobool.not, label %if.else, label %if.then, !dbg !316

if.then:                                          ; preds = %entry
  %low = bitcast %union.dwords* %result to i32*, !dbg !317
  store i32 0, i32* %low, align 8, !dbg !318
  %low2 = bitcast %union.dwords* %input to i32*, !dbg !319
  %0 = load i32, i32* %low2, align 8, !dbg !319
  %sub = add nsw i32 %b, -32, !dbg !320
  %shl = shl i32 %0, %sub, !dbg !321
  %s3 = bitcast %union.dwords* %result to %struct.anon*, !dbg !322
  %high = getelementptr inbounds %struct.anon, %struct.anon* %s3, i32 0, i32 1, !dbg !323
  store i32 %shl, i32* %high, align 4, !dbg !324
  br label %if.end18, !dbg !325

if.else:                                          ; preds = %entry
  %cmp = icmp eq i32 %b, 0, !dbg !326
  br i1 %cmp, label %if.then4, label %if.end, !dbg !327

if.then4:                                         ; preds = %if.else
  br label %return, !dbg !328

if.end:                                           ; preds = %if.else
  %low6 = bitcast %union.dwords* %input to i32*, !dbg !329
  %1 = load i32, i32* %low6, align 8, !dbg !329
  %shl7 = shl i32 %1, %b, !dbg !330
  %low9 = bitcast %union.dwords* %result to i32*, !dbg !331
  store i32 %shl7, i32* %low9, align 8, !dbg !332
  %s10 = bitcast %union.dwords* %input to %struct.anon*, !dbg !333
  %high11 = getelementptr inbounds %struct.anon, %struct.anon* %s10, i32 0, i32 1, !dbg !334
  %2 = load i32, i32* %high11, align 4, !dbg !334
  %shl12 = shl i32 %2, %b, !dbg !335
  %low14 = bitcast %union.dwords* %input to i32*, !dbg !336
  %3 = load i32, i32* %low14, align 8, !dbg !336
  %sub15 = sub nsw i32 32, %b, !dbg !337
  %shr = lshr i32 %3, %sub15, !dbg !338
  %or = or i32 %shl12, %shr, !dbg !339
  %s16 = bitcast %union.dwords* %result to %struct.anon*, !dbg !340
  %high17 = getelementptr inbounds %struct.anon, %struct.anon* %s16, i32 0, i32 1, !dbg !341
  store i32 %or, i32* %high17, align 4, !dbg !342
  br label %if.end18

if.end18:                                         ; preds = %if.end, %if.then
  %all19 = getelementptr inbounds %union.dwords, %union.dwords* %result, i32 0, i32 0, !dbg !343
  %4 = load i64, i64* %all19, align 8, !dbg !343
  br label %return, !dbg !344

return:                                           ; preds = %if.end18, %if.then4
  %retval.0 = phi i64 [ %4, %if.end18 ], [ %a, %if.then4 ], !dbg !345
  ret i64 %retval.0, !dbg !346
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__ashrdi3(i64 noundef %a, i32 noundef %b) #1 !dbg !347 {
entry:
  %input = alloca %union.dwords, align 8
  %result = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %input, i32 0, i32 0, !dbg !348
  store i64 %a, i64* %all, align 8, !dbg !349
  %and = and i32 %b, 32, !dbg !350
  %tobool.not = icmp eq i32 %and, 0, !dbg !350
  br i1 %tobool.not, label %if.else, label %if.then, !dbg !351

if.then:                                          ; preds = %entry
  %s = bitcast %union.dwords* %input to %struct.anon*, !dbg !352
  %high = getelementptr inbounds %struct.anon, %struct.anon* %s, i32 0, i32 1, !dbg !353
  %0 = load i32, i32* %high, align 4, !dbg !353
  %shr = ashr i32 %0, 31, !dbg !354
  %s1 = bitcast %union.dwords* %result to %struct.anon*, !dbg !355
  %high2 = getelementptr inbounds %struct.anon, %struct.anon* %s1, i32 0, i32 1, !dbg !356
  store i32 %shr, i32* %high2, align 4, !dbg !357
  %s3 = bitcast %union.dwords* %input to %struct.anon*, !dbg !358
  %high4 = getelementptr inbounds %struct.anon, %struct.anon* %s3, i32 0, i32 1, !dbg !359
  %1 = load i32, i32* %high4, align 4, !dbg !359
  %sub = add nsw i32 %b, -32, !dbg !360
  %shr5 = ashr i32 %1, %sub, !dbg !361
  %low = bitcast %union.dwords* %result to i32*, !dbg !362
  store i32 %shr5, i32* %low, align 8, !dbg !363
  br label %if.end21, !dbg !364

if.else:                                          ; preds = %entry
  %cmp = icmp eq i32 %b, 0, !dbg !365
  br i1 %cmp, label %if.then7, label %if.end, !dbg !366

if.then7:                                         ; preds = %if.else
  br label %return, !dbg !367

if.end:                                           ; preds = %if.else
  %s8 = bitcast %union.dwords* %input to %struct.anon*, !dbg !368
  %high9 = getelementptr inbounds %struct.anon, %struct.anon* %s8, i32 0, i32 1, !dbg !369
  %2 = load i32, i32* %high9, align 4, !dbg !369
  %shr10 = ashr i32 %2, %b, !dbg !370
  %s11 = bitcast %union.dwords* %result to %struct.anon*, !dbg !371
  %high12 = getelementptr inbounds %struct.anon, %struct.anon* %s11, i32 0, i32 1, !dbg !372
  store i32 %shr10, i32* %high12, align 4, !dbg !373
  %s13 = bitcast %union.dwords* %input to %struct.anon*, !dbg !374
  %high14 = getelementptr inbounds %struct.anon, %struct.anon* %s13, i32 0, i32 1, !dbg !375
  %3 = load i32, i32* %high14, align 4, !dbg !375
  %sub15 = sub nsw i32 32, %b, !dbg !376
  %shl = shl i32 %3, %sub15, !dbg !377
  %low17 = bitcast %union.dwords* %input to i32*, !dbg !378
  %4 = load i32, i32* %low17, align 8, !dbg !378
  %shr18 = lshr i32 %4, %b, !dbg !379
  %or = or i32 %shl, %shr18, !dbg !380
  %low20 = bitcast %union.dwords* %result to i32*, !dbg !381
  store i32 %or, i32* %low20, align 8, !dbg !382
  br label %if.end21

if.end21:                                         ; preds = %if.end, %if.then
  %all22 = getelementptr inbounds %union.dwords, %union.dwords* %result, i32 0, i32 0, !dbg !383
  %5 = load i64, i64* %all22, align 8, !dbg !383
  br label %return, !dbg !384

return:                                           ; preds = %if.end21, %if.then7
  %retval.0 = phi i64 [ %5, %if.end21 ], [ %a, %if.then7 ], !dbg !385
  ret i64 %retval.0, !dbg !386
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__clzdi2(i64 noundef %a) #1 !dbg !387 {
entry:
  %x = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %x, i32 0, i32 0, !dbg !388
  store i64 %a, i64* %all, align 8, !dbg !389
  %s = bitcast %union.dwords* %x to %struct.anon*, !dbg !390
  %high = getelementptr inbounds %struct.anon, %struct.anon* %s, i32 0, i32 1, !dbg !391
  %0 = load i32, i32* %high, align 4, !dbg !391
  %cmp = icmp eq i32 %0, 0, !dbg !392
  %s1 = bitcast %union.dwords* %x to %struct.anon*, !dbg !393
  %high2 = getelementptr inbounds %struct.anon, %struct.anon* %s1, i32 0, i32 1, !dbg !394
  %1 = load i32, i32* %high2, align 4, !dbg !394
  %low = bitcast %union.dwords* %x to i32*, !dbg !395
  %2 = load i32, i32* %low, align 8, !dbg !395
  %3 = select i1 %cmp, i32 %2, i32 %1, !dbg !396
  %4 = call i32 @llvm.ctlz.i32(i32 %3, i1 false), !dbg !397, !range !398
  %and5 = select i1 %cmp, i32 32, i32 0, !dbg !399
  %add = add nuw nsw i32 %4, %and5, !dbg !400
  ret i32 %add, !dbg !401
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #3

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__clzsi2(i32 noundef %a) #1 !dbg !402 {
entry:
  %cmp = icmp ult i32 %a, 65536, !dbg !403
  %shl = select i1 %cmp, i32 16, i32 0, !dbg !404
  %sub = sub nuw nsw i32 16, %shl, !dbg !405
  %shr = lshr i32 %a, %sub, !dbg !406
  %and1 = and i32 %shr, 65280, !dbg !407
  %cmp2 = icmp eq i32 %and1, 0, !dbg !408
  %shl4 = select i1 %cmp2, i32 8, i32 0, !dbg !409
  %sub5 = sub nuw nsw i32 8, %shl4, !dbg !410
  %shr6 = lshr i32 %shr, %sub5, !dbg !411
  %add = or i32 %shl, %shl4, !dbg !412
  %and7 = and i32 %shr6, 240, !dbg !413
  %cmp8 = icmp eq i32 %and7, 0, !dbg !414
  %shl10 = select i1 %cmp8, i32 4, i32 0, !dbg !415
  %sub11 = sub nuw nsw i32 4, %shl10, !dbg !416
  %shr12 = lshr i32 %shr6, %sub11, !dbg !417
  %add13 = or i32 %add, %shl10, !dbg !418
  %and14 = and i32 %shr12, 12, !dbg !419
  %cmp15 = icmp eq i32 %and14, 0, !dbg !420
  %shl17 = select i1 %cmp15, i32 2, i32 0, !dbg !421
  %sub18 = sub nuw nsw i32 2, %shl17, !dbg !422
  %shr19 = lshr i32 %shr12, %sub18, !dbg !423
  %add20 = or i32 %add13, %shl17, !dbg !424
  %sub21 = sub i32 2, %shr19, !dbg !425
  %and22 = lshr i32 %shr19, 1, !dbg !426
  %0 = or i32 %and22, -2, !dbg !426
  %.neg = add nsw i32 %0, 1, !dbg !426
  %and26 = and i32 %sub21, %.neg, !dbg !427
  %add27 = add i32 %add20, %and26, !dbg !428
  ret i32 %add27, !dbg !429
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__cmpdi2(i64 noundef %a, i64 noundef %b) #1 !dbg !430 {
entry:
  %x = alloca %union.dwords, align 8
  %y = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %x, i32 0, i32 0, !dbg !431
  store i64 %a, i64* %all, align 8, !dbg !432
  %all1 = getelementptr inbounds %union.dwords, %union.dwords* %y, i32 0, i32 0, !dbg !433
  store i64 %b, i64* %all1, align 8, !dbg !434
  %s = bitcast %union.dwords* %x to %struct.anon*, !dbg !435
  %high = getelementptr inbounds %struct.anon, %struct.anon* %s, i32 0, i32 1, !dbg !436
  %0 = load i32, i32* %high, align 4, !dbg !436
  %s2 = bitcast %union.dwords* %y to %struct.anon*, !dbg !437
  %high3 = getelementptr inbounds %struct.anon, %struct.anon* %s2, i32 0, i32 1, !dbg !438
  %1 = load i32, i32* %high3, align 4, !dbg !438
  %cmp = icmp slt i32 %0, %1, !dbg !439
  br i1 %cmp, label %if.then, label %if.end, !dbg !440

if.then:                                          ; preds = %entry
  br label %return, !dbg !441

if.end:                                           ; preds = %entry
  %s4 = bitcast %union.dwords* %x to %struct.anon*, !dbg !442
  %high5 = getelementptr inbounds %struct.anon, %struct.anon* %s4, i32 0, i32 1, !dbg !443
  %2 = load i32, i32* %high5, align 4, !dbg !443
  %s6 = bitcast %union.dwords* %y to %struct.anon*, !dbg !444
  %high7 = getelementptr inbounds %struct.anon, %struct.anon* %s6, i32 0, i32 1, !dbg !445
  %3 = load i32, i32* %high7, align 4, !dbg !445
  %cmp8 = icmp sgt i32 %2, %3, !dbg !446
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !447

if.then9:                                         ; preds = %if.end
  br label %return, !dbg !448

if.end10:                                         ; preds = %if.end
  %low = bitcast %union.dwords* %x to i32*, !dbg !449
  %4 = load i32, i32* %low, align 8, !dbg !449
  %low13 = bitcast %union.dwords* %y to i32*, !dbg !450
  %5 = load i32, i32* %low13, align 8, !dbg !450
  %cmp14 = icmp ult i32 %4, %5, !dbg !451
  br i1 %cmp14, label %if.then15, label %if.end16, !dbg !452

if.then15:                                        ; preds = %if.end10
  br label %return, !dbg !453

if.end16:                                         ; preds = %if.end10
  %low18 = bitcast %union.dwords* %x to i32*, !dbg !454
  %6 = load i32, i32* %low18, align 8, !dbg !454
  %low20 = bitcast %union.dwords* %y to i32*, !dbg !455
  %7 = load i32, i32* %low20, align 8, !dbg !455
  %cmp21 = icmp ugt i32 %6, %7, !dbg !456
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !457

if.then22:                                        ; preds = %if.end16
  br label %return, !dbg !458

if.end23:                                         ; preds = %if.end16
  br label %return, !dbg !459

return:                                           ; preds = %if.end23, %if.then22, %if.then15, %if.then9, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 2, %if.then9 ], [ 0, %if.then15 ], [ 2, %if.then22 ], [ 1, %if.end23 ], !dbg !460
  ret i32 %retval.0, !dbg !461
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__aeabi_lcmp(i64 noundef %a, i64 noundef %b) #1 !dbg !462 {
entry:
  %call = call arm_aapcscc i32 @__cmpdi2(i64 noundef %a, i64 noundef %b) #4, !dbg !463
  %sub = add nsw i32 %call, -1, !dbg !464
  ret i32 %sub, !dbg !465
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__ctzdi2(i64 noundef %a) #1 !dbg !466 {
entry:
  %x = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %x, i32 0, i32 0, !dbg !467
  store i64 %a, i64* %all, align 8, !dbg !468
  %low = bitcast %union.dwords* %x to i32*, !dbg !469
  %0 = load i32, i32* %low, align 8, !dbg !469
  %cmp = icmp eq i32 %0, 0, !dbg !470
  %s1 = bitcast %union.dwords* %x to %struct.anon*, !dbg !471
  %high = getelementptr inbounds %struct.anon, %struct.anon* %s1, i32 0, i32 1, !dbg !472
  %1 = load i32, i32* %high, align 4, !dbg !472
  %2 = select i1 %cmp, i32 %1, i32 %0, !dbg !473
  %3 = call i32 @llvm.cttz.i32(i32 %2, i1 false), !dbg !474, !range !398
  %and5 = select i1 %cmp, i32 32, i32 0, !dbg !475
  %add = add nuw nsw i32 %3, %and5, !dbg !476
  ret i32 %add, !dbg !477
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #3

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__ctzsi2(i32 noundef %a) #1 !dbg !478 {
entry:
  %and = and i32 %a, 65535, !dbg !479
  %cmp = icmp eq i32 %and, 0, !dbg !480
  %shl = select i1 %cmp, i32 16, i32 0, !dbg !481
  %shr = lshr i32 %a, %shl, !dbg !482
  %and1 = and i32 %shr, 255, !dbg !483
  %cmp2 = icmp eq i32 %and1, 0, !dbg !484
  %shl4 = select i1 %cmp2, i32 8, i32 0, !dbg !485
  %shr5 = lshr i32 %shr, %shl4, !dbg !486
  %add = or i32 %shl, %shl4, !dbg !487
  %and6 = and i32 %shr5, 15, !dbg !488
  %cmp7 = icmp eq i32 %and6, 0, !dbg !489
  %shl9 = select i1 %cmp7, i32 4, i32 0, !dbg !490
  %shr10 = lshr i32 %shr5, %shl9, !dbg !491
  %add11 = or i32 %add, %shl9, !dbg !492
  %and12 = and i32 %shr10, 3, !dbg !493
  %cmp13 = icmp eq i32 %and12, 0, !dbg !494
  %shl15 = select i1 %cmp13, i32 2, i32 0, !dbg !495
  %shr16 = lshr i32 %shr10, %shl15, !dbg !496
  %add18 = or i32 %add11, %shl15, !dbg !497
  %and17 = lshr i32 %shr16, 1, !dbg !498
  %shr19 = and i32 %and17, 1, !dbg !498
  %sub = sub nuw nsw i32 2, %shr19, !dbg !499
  %0 = or i32 %shr16, -2, !dbg !500
  %.neg = add nsw i32 %0, 1, !dbg !500
  %and24 = and i32 %sub, %.neg, !dbg !501
  %add25 = add nuw nsw i32 %add18, %and24, !dbg !502
  ret i32 %add25, !dbg !503
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__divdi3(i64 noundef %a, i64 noundef %b) #1 !dbg !504 {
entry:
  %shr = ashr i64 %a, 63, !dbg !505
  %shr1 = ashr i64 %b, 63, !dbg !506
  %xor = xor i64 %shr, %a, !dbg !507
  %sub = sub nsw i64 %xor, %shr, !dbg !508
  %xor2 = xor i64 %shr1, %b, !dbg !509
  %sub3 = sub nsw i64 %xor2, %shr1, !dbg !510
  %xor4 = xor i64 %shr, %shr1, !dbg !511
  %call = call arm_aapcscc i64 @__udivmoddi4(i64 noundef %sub, i64 noundef %sub3, i64* noundef null) #4, !dbg !512
  %xor5 = xor i64 %call, %xor4, !dbg !513
  %sub6 = sub i64 %xor5, %xor4, !dbg !514
  ret i64 %sub6, !dbg !515
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__udivmoddi4(i64 noundef %a, i64 noundef %b, i64* noundef %rem) #1 !dbg !516 {
entry:
  %n = alloca %union.dwords, align 8
  %d = alloca %union.dwords, align 8
  %q = alloca %union.dwords, align 8
  %r = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %n, i32 0, i32 0, !dbg !517
  store i64 %a, i64* %all, align 8, !dbg !518
  %all1 = getelementptr inbounds %union.dwords, %union.dwords* %d, i32 0, i32 0, !dbg !519
  store i64 %b, i64* %all1, align 8, !dbg !520
  %s = bitcast %union.dwords* %n to %struct.anon*, !dbg !521
  %high = getelementptr inbounds %struct.anon, %struct.anon* %s, i32 0, i32 1, !dbg !522
  %0 = load i32, i32* %high, align 4, !dbg !522
  %cmp = icmp eq i32 %0, 0, !dbg !523
  br i1 %cmp, label %if.then, label %if.end23, !dbg !524

if.then:                                          ; preds = %entry
  %s2 = bitcast %union.dwords* %d to %struct.anon*, !dbg !525
  %high3 = getelementptr inbounds %struct.anon, %struct.anon* %s2, i32 0, i32 1, !dbg !526
  %1 = load i32, i32* %high3, align 4, !dbg !526
  %cmp4 = icmp eq i32 %1, 0, !dbg !527
  br i1 %cmp4, label %if.then5, label %if.end16, !dbg !528

if.then5:                                         ; preds = %if.then
  %tobool.not = icmp eq i64* %rem, null, !dbg !529
  br i1 %tobool.not, label %if.end, label %if.then6, !dbg !529

if.then6:                                         ; preds = %if.then5
  %low = bitcast %union.dwords* %n to i32*, !dbg !530
  %2 = load i32, i32* %low, align 8, !dbg !530
  %low9 = bitcast %union.dwords* %d to i32*, !dbg !531
  %3 = load i32, i32* %low9, align 8, !dbg !531
  %rem10 = urem i32 %2, %3, !dbg !532
  %conv = zext i32 %rem10 to i64, !dbg !533
  store i64 %conv, i64* %rem, align 8, !dbg !534
  br label %if.end, !dbg !535

if.end:                                           ; preds = %if.then6, %if.then5
  %low12 = bitcast %union.dwords* %n to i32*, !dbg !536
  %4 = load i32, i32* %low12, align 8, !dbg !536
  %low14 = bitcast %union.dwords* %d to i32*, !dbg !537
  %5 = load i32, i32* %low14, align 8, !dbg !537
  %div = udiv i32 %4, %5, !dbg !538
  %conv15 = zext i32 %div to i64, !dbg !539
  br label %return, !dbg !540

if.end16:                                         ; preds = %if.then
  %tobool17.not = icmp eq i64* %rem, null, !dbg !541
  br i1 %tobool17.not, label %if.end22, label %if.then18, !dbg !541

if.then18:                                        ; preds = %if.end16
  %low20 = bitcast %union.dwords* %n to i32*, !dbg !542
  %6 = load i32, i32* %low20, align 8, !dbg !542
  %conv21 = zext i32 %6 to i64, !dbg !543
  store i64 %conv21, i64* %rem, align 8, !dbg !544
  br label %if.end22, !dbg !545

if.end22:                                         ; preds = %if.then18, %if.end16
  br label %return, !dbg !546

if.end23:                                         ; preds = %entry
  %low25 = bitcast %union.dwords* %d to i32*, !dbg !547
  %7 = load i32, i32* %low25, align 8, !dbg !547
  %cmp26 = icmp eq i32 %7, 0, !dbg !548
  br i1 %cmp26, label %if.then28, label %if.else, !dbg !549

if.then28:                                        ; preds = %if.end23
  %s29 = bitcast %union.dwords* %d to %struct.anon*, !dbg !550
  %high30 = getelementptr inbounds %struct.anon, %struct.anon* %s29, i32 0, i32 1, !dbg !551
  %8 = load i32, i32* %high30, align 4, !dbg !551
  %cmp31 = icmp eq i32 %8, 0, !dbg !552
  br i1 %cmp31, label %if.then33, label %if.end49, !dbg !553

if.then33:                                        ; preds = %if.then28
  %tobool34.not = icmp eq i64* %rem, null, !dbg !554
  br i1 %tobool34.not, label %if.end42, label %if.then35, !dbg !554

if.then35:                                        ; preds = %if.then33
  %s36 = bitcast %union.dwords* %n to %struct.anon*, !dbg !555
  %high37 = getelementptr inbounds %struct.anon, %struct.anon* %s36, i32 0, i32 1, !dbg !556
  %9 = load i32, i32* %high37, align 4, !dbg !556
  %low39 = bitcast %union.dwords* %d to i32*, !dbg !557
  %10 = load i32, i32* %low39, align 8, !dbg !557
  %rem40 = urem i32 %9, %10, !dbg !558
  %conv41 = zext i32 %rem40 to i64, !dbg !559
  store i64 %conv41, i64* %rem, align 8, !dbg !560
  br label %if.end42, !dbg !561

if.end42:                                         ; preds = %if.then35, %if.then33
  %s43 = bitcast %union.dwords* %n to %struct.anon*, !dbg !562
  %high44 = getelementptr inbounds %struct.anon, %struct.anon* %s43, i32 0, i32 1, !dbg !563
  %11 = load i32, i32* %high44, align 4, !dbg !563
  %low46 = bitcast %union.dwords* %d to i32*, !dbg !564
  %12 = load i32, i32* %low46, align 8, !dbg !564
  %div47 = udiv i32 %11, %12, !dbg !565
  %conv48 = zext i32 %div47 to i64, !dbg !566
  br label %return, !dbg !567

if.end49:                                         ; preds = %if.then28
  %low51 = bitcast %union.dwords* %n to i32*, !dbg !568
  %13 = load i32, i32* %low51, align 8, !dbg !568
  %cmp52 = icmp eq i32 %13, 0, !dbg !569
  br i1 %cmp52, label %if.then54, label %if.end74, !dbg !570

if.then54:                                        ; preds = %if.end49
  %tobool55.not = icmp eq i64* %rem, null, !dbg !571
  br i1 %tobool55.not, label %if.end67, label %if.then56, !dbg !571

if.then56:                                        ; preds = %if.then54
  %s57 = bitcast %union.dwords* %n to %struct.anon*, !dbg !572
  %high58 = getelementptr inbounds %struct.anon, %struct.anon* %s57, i32 0, i32 1, !dbg !573
  %14 = load i32, i32* %high58, align 4, !dbg !573
  %s59 = bitcast %union.dwords* %d to %struct.anon*, !dbg !574
  %high60 = getelementptr inbounds %struct.anon, %struct.anon* %s59, i32 0, i32 1, !dbg !575
  %15 = load i32, i32* %high60, align 4, !dbg !575
  %rem61 = urem i32 %14, %15, !dbg !576
  %s62 = bitcast %union.dwords* %r to %struct.anon*, !dbg !577
  %high63 = getelementptr inbounds %struct.anon, %struct.anon* %s62, i32 0, i32 1, !dbg !578
  store i32 %rem61, i32* %high63, align 4, !dbg !579
  %low65 = bitcast %union.dwords* %r to i32*, !dbg !580
  store i32 0, i32* %low65, align 8, !dbg !581
  %all66 = getelementptr inbounds %union.dwords, %union.dwords* %r, i32 0, i32 0, !dbg !582
  %16 = load i64, i64* %all66, align 8, !dbg !582
  store i64 %16, i64* %rem, align 8, !dbg !583
  br label %if.end67, !dbg !584

if.end67:                                         ; preds = %if.then56, %if.then54
  %s68 = bitcast %union.dwords* %n to %struct.anon*, !dbg !585
  %high69 = getelementptr inbounds %struct.anon, %struct.anon* %s68, i32 0, i32 1, !dbg !586
  %17 = load i32, i32* %high69, align 4, !dbg !586
  %s70 = bitcast %union.dwords* %d to %struct.anon*, !dbg !587
  %high71 = getelementptr inbounds %struct.anon, %struct.anon* %s70, i32 0, i32 1, !dbg !588
  %18 = load i32, i32* %high71, align 4, !dbg !588
  %div72 = udiv i32 %17, %18, !dbg !589
  %conv73 = zext i32 %div72 to i64, !dbg !590
  br label %return, !dbg !591

if.end74:                                         ; preds = %if.end49
  %s75 = bitcast %union.dwords* %d to %struct.anon*, !dbg !592
  %high76 = getelementptr inbounds %struct.anon, %struct.anon* %s75, i32 0, i32 1, !dbg !593
  %19 = load i32, i32* %high76, align 4, !dbg !593
  %s77 = bitcast %union.dwords* %d to %struct.anon*, !dbg !594
  %high78 = getelementptr inbounds %struct.anon, %struct.anon* %s77, i32 0, i32 1, !dbg !595
  %20 = load i32, i32* %high78, align 4, !dbg !595
  %sub = add i32 %20, -1, !dbg !596
  %and = and i32 %19, %sub, !dbg !597
  %cmp79 = icmp eq i32 %and, 0, !dbg !598
  br i1 %cmp79, label %if.then81, label %if.end103, !dbg !599

if.then81:                                        ; preds = %if.end74
  %tobool82.not = icmp eq i64* %rem, null, !dbg !600
  br i1 %tobool82.not, label %if.end97, label %if.then83, !dbg !600

if.then83:                                        ; preds = %if.then81
  %low85 = bitcast %union.dwords* %n to i32*, !dbg !601
  %21 = load i32, i32* %low85, align 8, !dbg !601
  %low87 = bitcast %union.dwords* %r to i32*, !dbg !602
  store i32 %21, i32* %low87, align 8, !dbg !603
  %s88 = bitcast %union.dwords* %n to %struct.anon*, !dbg !604
  %high89 = getelementptr inbounds %struct.anon, %struct.anon* %s88, i32 0, i32 1, !dbg !605
  %22 = load i32, i32* %high89, align 4, !dbg !605
  %s90 = bitcast %union.dwords* %d to %struct.anon*, !dbg !606
  %high91 = getelementptr inbounds %struct.anon, %struct.anon* %s90, i32 0, i32 1, !dbg !607
  %23 = load i32, i32* %high91, align 4, !dbg !607
  %sub92 = add i32 %23, -1, !dbg !608
  %and93 = and i32 %22, %sub92, !dbg !609
  %s94 = bitcast %union.dwords* %r to %struct.anon*, !dbg !610
  %high95 = getelementptr inbounds %struct.anon, %struct.anon* %s94, i32 0, i32 1, !dbg !611
  store i32 %and93, i32* %high95, align 4, !dbg !612
  %all96 = getelementptr inbounds %union.dwords, %union.dwords* %r, i32 0, i32 0, !dbg !613
  %24 = load i64, i64* %all96, align 8, !dbg !613
  store i64 %24, i64* %rem, align 8, !dbg !614
  br label %if.end97, !dbg !615

if.end97:                                         ; preds = %if.then83, %if.then81
  %s98 = bitcast %union.dwords* %n to %struct.anon*, !dbg !616
  %high99 = getelementptr inbounds %struct.anon, %struct.anon* %s98, i32 0, i32 1, !dbg !617
  %25 = load i32, i32* %high99, align 4, !dbg !617
  %s100 = bitcast %union.dwords* %d to %struct.anon*, !dbg !618
  %high101 = getelementptr inbounds %struct.anon, %struct.anon* %s100, i32 0, i32 1, !dbg !619
  %26 = load i32, i32* %high101, align 4, !dbg !619
  %27 = call i32 @llvm.cttz.i32(i32 %26, i1 false), !dbg !620, !range !398
  %shr = lshr i32 %25, %27, !dbg !621
  %conv102 = zext i32 %shr to i64, !dbg !622
  br label %return, !dbg !623

if.end103:                                        ; preds = %if.end74
  %s104 = bitcast %union.dwords* %d to %struct.anon*, !dbg !624
  %high105 = getelementptr inbounds %struct.anon, %struct.anon* %s104, i32 0, i32 1, !dbg !625
  %28 = load i32, i32* %high105, align 4, !dbg !625
  %29 = call i32 @llvm.ctlz.i32(i32 %28, i1 false), !dbg !626, !range !398
  %s106 = bitcast %union.dwords* %n to %struct.anon*, !dbg !627
  %high107 = getelementptr inbounds %struct.anon, %struct.anon* %s106, i32 0, i32 1, !dbg !628
  %30 = load i32, i32* %high107, align 4, !dbg !628
  %31 = call i32 @llvm.ctlz.i32(i32 %30, i1 false), !dbg !629, !range !398
  %sub108 = sub nsw i32 %29, %31, !dbg !630
  %cmp109 = icmp ugt i32 %sub108, 30, !dbg !631
  br i1 %cmp109, label %if.then111, label %if.end116, !dbg !632

if.then111:                                       ; preds = %if.end103
  %tobool112.not = icmp eq i64* %rem, null, !dbg !633
  br i1 %tobool112.not, label %if.end115, label %if.then113, !dbg !633

if.then113:                                       ; preds = %if.then111
  %all114 = getelementptr inbounds %union.dwords, %union.dwords* %n, i32 0, i32 0, !dbg !634
  %32 = load i64, i64* %all114, align 8, !dbg !634
  store i64 %32, i64* %rem, align 8, !dbg !635
  br label %if.end115, !dbg !636

if.end115:                                        ; preds = %if.then113, %if.then111
  br label %return, !dbg !637

if.end116:                                        ; preds = %if.end103
  %inc = add nsw i32 %sub108, 1, !dbg !638
  %low118 = bitcast %union.dwords* %q to i32*, !dbg !639
  store i32 0, i32* %low118, align 8, !dbg !640
  %low120 = bitcast %union.dwords* %n to i32*, !dbg !641
  %33 = load i32, i32* %low120, align 8, !dbg !641
  %sub121 = sub nsw i32 31, %sub108, !dbg !642
  %shl = shl i32 %33, %sub121, !dbg !643
  %s122 = bitcast %union.dwords* %q to %struct.anon*, !dbg !644
  %high123 = getelementptr inbounds %struct.anon, %struct.anon* %s122, i32 0, i32 1, !dbg !645
  store i32 %shl, i32* %high123, align 4, !dbg !646
  %s124 = bitcast %union.dwords* %n to %struct.anon*, !dbg !647
  %high125 = getelementptr inbounds %struct.anon, %struct.anon* %s124, i32 0, i32 1, !dbg !648
  %34 = load i32, i32* %high125, align 4, !dbg !648
  %shr126 = lshr i32 %34, %inc, !dbg !649
  %s127 = bitcast %union.dwords* %r to %struct.anon*, !dbg !650
  %high128 = getelementptr inbounds %struct.anon, %struct.anon* %s127, i32 0, i32 1, !dbg !651
  store i32 %shr126, i32* %high128, align 4, !dbg !652
  %s129 = bitcast %union.dwords* %n to %struct.anon*, !dbg !653
  %high130 = getelementptr inbounds %struct.anon, %struct.anon* %s129, i32 0, i32 1, !dbg !654
  %35 = load i32, i32* %high130, align 4, !dbg !654
  %sub131 = sub nsw i32 31, %sub108, !dbg !655
  %shl132 = shl i32 %35, %sub131, !dbg !656
  %low134 = bitcast %union.dwords* %n to i32*, !dbg !657
  %36 = load i32, i32* %low134, align 8, !dbg !657
  %shr135 = lshr i32 %36, %inc, !dbg !658
  %or = or i32 %shl132, %shr135, !dbg !659
  %low137 = bitcast %union.dwords* %r to i32*, !dbg !660
  store i32 %or, i32* %low137, align 8, !dbg !661
  br label %if.end317, !dbg !662

if.else:                                          ; preds = %if.end23
  %s138 = bitcast %union.dwords* %d to %struct.anon*, !dbg !663
  %high139 = getelementptr inbounds %struct.anon, %struct.anon* %s138, i32 0, i32 1, !dbg !664
  %37 = load i32, i32* %high139, align 4, !dbg !664
  %cmp140 = icmp eq i32 %37, 0, !dbg !665
  br i1 %cmp140, label %if.then142, label %if.else263, !dbg !666

if.then142:                                       ; preds = %if.else
  %low144 = bitcast %union.dwords* %d to i32*, !dbg !667
  %38 = load i32, i32* %low144, align 8, !dbg !667
  %39 = call i32 @llvm.ctpop.i32(i32 %38), !dbg !668, !range !398
  %cmp149 = icmp ult i32 %39, 2, !dbg !668
  br i1 %cmp149, label %if.then151, label %if.end187, !dbg !669

if.then151:                                       ; preds = %if.then142
  %tobool152.not = icmp eq i64* %rem, null, !dbg !670
  br i1 %tobool152.not, label %if.end161, label %if.then153, !dbg !670

if.then153:                                       ; preds = %if.then151
  %low155 = bitcast %union.dwords* %n to i32*, !dbg !671
  %40 = load i32, i32* %low155, align 8, !dbg !671
  %low157 = bitcast %union.dwords* %d to i32*, !dbg !672
  %41 = load i32, i32* %low157, align 8, !dbg !672
  %sub158 = add i32 %41, -1, !dbg !673
  %and159 = and i32 %40, %sub158, !dbg !674
  %conv160 = zext i32 %and159 to i64, !dbg !675
  store i64 %conv160, i64* %rem, align 8, !dbg !676
  br label %if.end161, !dbg !677

if.end161:                                        ; preds = %if.then153, %if.then151
  %low163 = bitcast %union.dwords* %d to i32*, !dbg !678
  %42 = load i32, i32* %low163, align 8, !dbg !678
  %cmp164 = icmp eq i32 %42, 1, !dbg !679
  br i1 %cmp164, label %if.then166, label %if.end168, !dbg !680

if.then166:                                       ; preds = %if.end161
  %all167 = getelementptr inbounds %union.dwords, %union.dwords* %n, i32 0, i32 0, !dbg !681
  %43 = load i64, i64* %all167, align 8, !dbg !681
  br label %return, !dbg !682

if.end168:                                        ; preds = %if.end161
  %low170 = bitcast %union.dwords* %d to i32*, !dbg !683
  %44 = load i32, i32* %low170, align 8, !dbg !683
  %45 = call i32 @llvm.cttz.i32(i32 %44, i1 false), !dbg !684, !range !398
  %s171 = bitcast %union.dwords* %n to %struct.anon*, !dbg !685
  %high172 = getelementptr inbounds %struct.anon, %struct.anon* %s171, i32 0, i32 1, !dbg !686
  %46 = load i32, i32* %high172, align 4, !dbg !686
  %shr173 = lshr i32 %46, %45, !dbg !687
  %s174 = bitcast %union.dwords* %q to %struct.anon*, !dbg !688
  %high175 = getelementptr inbounds %struct.anon, %struct.anon* %s174, i32 0, i32 1, !dbg !689
  store i32 %shr173, i32* %high175, align 4, !dbg !690
  %s176 = bitcast %union.dwords* %n to %struct.anon*, !dbg !691
  %high177 = getelementptr inbounds %struct.anon, %struct.anon* %s176, i32 0, i32 1, !dbg !692
  %47 = load i32, i32* %high177, align 4, !dbg !692
  %sub178 = sub nuw nsw i32 32, %45, !dbg !693
  %shl179 = shl i32 %47, %sub178, !dbg !694
  %low181 = bitcast %union.dwords* %n to i32*, !dbg !695
  %48 = load i32, i32* %low181, align 8, !dbg !695
  %shr182 = lshr i32 %48, %45, !dbg !696
  %or183 = or i32 %shl179, %shr182, !dbg !697
  %low185 = bitcast %union.dwords* %q to i32*, !dbg !698
  store i32 %or183, i32* %low185, align 8, !dbg !699
  %all186 = getelementptr inbounds %union.dwords, %union.dwords* %q, i32 0, i32 0, !dbg !700
  %49 = load i64, i64* %all186, align 8, !dbg !700
  br label %return, !dbg !701

if.end187:                                        ; preds = %if.then142
  %low189 = bitcast %union.dwords* %d to i32*, !dbg !702
  %50 = load i32, i32* %low189, align 8, !dbg !702
  %51 = call i32 @llvm.ctlz.i32(i32 %50, i1 false), !dbg !703, !range !398
  %add = add nuw nsw i32 %51, 33, !dbg !704
  %s190 = bitcast %union.dwords* %n to %struct.anon*, !dbg !705
  %high191 = getelementptr inbounds %struct.anon, %struct.anon* %s190, i32 0, i32 1, !dbg !706
  %52 = load i32, i32* %high191, align 4, !dbg !706
  %53 = call i32 @llvm.ctlz.i32(i32 %52, i1 false), !dbg !707, !range !398
  %sub192 = sub nsw i32 %add, %53, !dbg !708
  %cmp193 = icmp eq i32 %sub192, 32, !dbg !709
  br i1 %cmp193, label %if.then195, label %if.else208, !dbg !710

if.then195:                                       ; preds = %if.end187
  %low197 = bitcast %union.dwords* %q to i32*, !dbg !711
  store i32 0, i32* %low197, align 8, !dbg !712
  %low199 = bitcast %union.dwords* %n to i32*, !dbg !713
  %54 = load i32, i32* %low199, align 8, !dbg !713
  %s200 = bitcast %union.dwords* %q to %struct.anon*, !dbg !714
  %high201 = getelementptr inbounds %struct.anon, %struct.anon* %s200, i32 0, i32 1, !dbg !715
  store i32 %54, i32* %high201, align 4, !dbg !716
  %s202 = bitcast %union.dwords* %r to %struct.anon*, !dbg !717
  %high203 = getelementptr inbounds %struct.anon, %struct.anon* %s202, i32 0, i32 1, !dbg !718
  store i32 0, i32* %high203, align 4, !dbg !719
  %s204 = bitcast %union.dwords* %n to %struct.anon*, !dbg !720
  %high205 = getelementptr inbounds %struct.anon, %struct.anon* %s204, i32 0, i32 1, !dbg !721
  %55 = load i32, i32* %high205, align 4, !dbg !721
  %low207 = bitcast %union.dwords* %r to i32*, !dbg !722
  store i32 %55, i32* %low207, align 8, !dbg !723
  br label %if.end262, !dbg !724

if.else208:                                       ; preds = %if.end187
  %cmp209 = icmp ult i32 %sub192, 32, !dbg !725
  br i1 %cmp209, label %if.then211, label %if.else235, !dbg !726

if.then211:                                       ; preds = %if.else208
  %low213 = bitcast %union.dwords* %q to i32*, !dbg !727
  store i32 0, i32* %low213, align 8, !dbg !728
  %low215 = bitcast %union.dwords* %n to i32*, !dbg !729
  %56 = load i32, i32* %low215, align 8, !dbg !729
  %sub216 = sub nsw i32 32, %sub192, !dbg !730
  %shl217 = shl i32 %56, %sub216, !dbg !731
  %s218 = bitcast %union.dwords* %q to %struct.anon*, !dbg !732
  %high219 = getelementptr inbounds %struct.anon, %struct.anon* %s218, i32 0, i32 1, !dbg !733
  store i32 %shl217, i32* %high219, align 4, !dbg !734
  %s220 = bitcast %union.dwords* %n to %struct.anon*, !dbg !735
  %high221 = getelementptr inbounds %struct.anon, %struct.anon* %s220, i32 0, i32 1, !dbg !736
  %57 = load i32, i32* %high221, align 4, !dbg !736
  %shr222 = lshr i32 %57, %sub192, !dbg !737
  %s223 = bitcast %union.dwords* %r to %struct.anon*, !dbg !738
  %high224 = getelementptr inbounds %struct.anon, %struct.anon* %s223, i32 0, i32 1, !dbg !739
  store i32 %shr222, i32* %high224, align 4, !dbg !740
  %s225 = bitcast %union.dwords* %n to %struct.anon*, !dbg !741
  %high226 = getelementptr inbounds %struct.anon, %struct.anon* %s225, i32 0, i32 1, !dbg !742
  %58 = load i32, i32* %high226, align 4, !dbg !742
  %sub227 = sub nsw i32 32, %sub192, !dbg !743
  %shl228 = shl i32 %58, %sub227, !dbg !744
  %low230 = bitcast %union.dwords* %n to i32*, !dbg !745
  %59 = load i32, i32* %low230, align 8, !dbg !745
  %shr231 = lshr i32 %59, %sub192, !dbg !746
  %or232 = or i32 %shl228, %shr231, !dbg !747
  %low234 = bitcast %union.dwords* %r to i32*, !dbg !748
  store i32 %or232, i32* %low234, align 8, !dbg !749
  br label %if.end261, !dbg !750

if.else235:                                       ; preds = %if.else208
  %low237 = bitcast %union.dwords* %n to i32*, !dbg !751
  %60 = load i32, i32* %low237, align 8, !dbg !751
  %sub238 = sub nsw i32 64, %sub192, !dbg !752
  %shl239 = shl i32 %60, %sub238, !dbg !753
  %low241 = bitcast %union.dwords* %q to i32*, !dbg !754
  store i32 %shl239, i32* %low241, align 8, !dbg !755
  %s242 = bitcast %union.dwords* %n to %struct.anon*, !dbg !756
  %high243 = getelementptr inbounds %struct.anon, %struct.anon* %s242, i32 0, i32 1, !dbg !757
  %61 = load i32, i32* %high243, align 4, !dbg !757
  %sub244 = sub nsw i32 64, %sub192, !dbg !758
  %shl245 = shl i32 %61, %sub244, !dbg !759
  %low247 = bitcast %union.dwords* %n to i32*, !dbg !760
  %62 = load i32, i32* %low247, align 8, !dbg !760
  %sub248 = add nsw i32 %sub192, -32, !dbg !761
  %shr249 = lshr i32 %62, %sub248, !dbg !762
  %or250 = or i32 %shl245, %shr249, !dbg !763
  %s251 = bitcast %union.dwords* %q to %struct.anon*, !dbg !764
  %high252 = getelementptr inbounds %struct.anon, %struct.anon* %s251, i32 0, i32 1, !dbg !765
  store i32 %or250, i32* %high252, align 4, !dbg !766
  %s253 = bitcast %union.dwords* %r to %struct.anon*, !dbg !767
  %high254 = getelementptr inbounds %struct.anon, %struct.anon* %s253, i32 0, i32 1, !dbg !768
  store i32 0, i32* %high254, align 4, !dbg !769
  %s255 = bitcast %union.dwords* %n to %struct.anon*, !dbg !770
  %high256 = getelementptr inbounds %struct.anon, %struct.anon* %s255, i32 0, i32 1, !dbg !771
  %63 = load i32, i32* %high256, align 4, !dbg !771
  %sub257 = add nsw i32 %sub192, -32, !dbg !772
  %shr258 = lshr i32 %63, %sub257, !dbg !773
  %low260 = bitcast %union.dwords* %r to i32*, !dbg !774
  store i32 %shr258, i32* %low260, align 8, !dbg !775
  br label %if.end261

if.end261:                                        ; preds = %if.else235, %if.then211
  br label %if.end262

if.end262:                                        ; preds = %if.end261, %if.then195
  br label %if.end316, !dbg !776

if.else263:                                       ; preds = %if.else
  %s264 = bitcast %union.dwords* %d to %struct.anon*, !dbg !777
  %high265 = getelementptr inbounds %struct.anon, %struct.anon* %s264, i32 0, i32 1, !dbg !778
  %64 = load i32, i32* %high265, align 4, !dbg !778
  %65 = call i32 @llvm.ctlz.i32(i32 %64, i1 false), !dbg !779, !range !398
  %s266 = bitcast %union.dwords* %n to %struct.anon*, !dbg !780
  %high267 = getelementptr inbounds %struct.anon, %struct.anon* %s266, i32 0, i32 1, !dbg !781
  %66 = load i32, i32* %high267, align 4, !dbg !781
  %67 = call i32 @llvm.ctlz.i32(i32 %66, i1 false), !dbg !782, !range !398
  %sub268 = sub nsw i32 %65, %67, !dbg !783
  %cmp269 = icmp ugt i32 %sub268, 31, !dbg !784
  br i1 %cmp269, label %if.then271, label %if.end276, !dbg !785

if.then271:                                       ; preds = %if.else263
  %tobool272.not = icmp eq i64* %rem, null, !dbg !786
  br i1 %tobool272.not, label %if.end275, label %if.then273, !dbg !786

if.then273:                                       ; preds = %if.then271
  %all274 = getelementptr inbounds %union.dwords, %union.dwords* %n, i32 0, i32 0, !dbg !787
  %68 = load i64, i64* %all274, align 8, !dbg !787
  store i64 %68, i64* %rem, align 8, !dbg !788
  br label %if.end275, !dbg !789

if.end275:                                        ; preds = %if.then273, %if.then271
  br label %return, !dbg !790

if.end276:                                        ; preds = %if.else263
  %inc277 = add nsw i32 %sub268, 1, !dbg !791
  %low279 = bitcast %union.dwords* %q to i32*, !dbg !792
  store i32 0, i32* %low279, align 8, !dbg !793
  %cmp280 = icmp eq i32 %inc277, 32, !dbg !794
  br i1 %cmp280, label %if.then282, label %if.else293, !dbg !795

if.then282:                                       ; preds = %if.end276
  %low284 = bitcast %union.dwords* %n to i32*, !dbg !796
  %69 = load i32, i32* %low284, align 8, !dbg !796
  %s285 = bitcast %union.dwords* %q to %struct.anon*, !dbg !797
  %high286 = getelementptr inbounds %struct.anon, %struct.anon* %s285, i32 0, i32 1, !dbg !798
  store i32 %69, i32* %high286, align 4, !dbg !799
  %s287 = bitcast %union.dwords* %r to %struct.anon*, !dbg !800
  %high288 = getelementptr inbounds %struct.anon, %struct.anon* %s287, i32 0, i32 1, !dbg !801
  store i32 0, i32* %high288, align 4, !dbg !802
  %s289 = bitcast %union.dwords* %n to %struct.anon*, !dbg !803
  %high290 = getelementptr inbounds %struct.anon, %struct.anon* %s289, i32 0, i32 1, !dbg !804
  %70 = load i32, i32* %high290, align 4, !dbg !804
  %low292 = bitcast %union.dwords* %r to i32*, !dbg !805
  store i32 %70, i32* %low292, align 8, !dbg !806
  br label %if.end315, !dbg !807

if.else293:                                       ; preds = %if.end276
  %low295 = bitcast %union.dwords* %n to i32*, !dbg !808
  %71 = load i32, i32* %low295, align 8, !dbg !808
  %sub296 = sub nsw i32 31, %sub268, !dbg !809
  %shl297 = shl i32 %71, %sub296, !dbg !810
  %s298 = bitcast %union.dwords* %q to %struct.anon*, !dbg !811
  %high299 = getelementptr inbounds %struct.anon, %struct.anon* %s298, i32 0, i32 1, !dbg !812
  store i32 %shl297, i32* %high299, align 4, !dbg !813
  %s300 = bitcast %union.dwords* %n to %struct.anon*, !dbg !814
  %high301 = getelementptr inbounds %struct.anon, %struct.anon* %s300, i32 0, i32 1, !dbg !815
  %72 = load i32, i32* %high301, align 4, !dbg !815
  %shr302 = lshr i32 %72, %inc277, !dbg !816
  %s303 = bitcast %union.dwords* %r to %struct.anon*, !dbg !817
  %high304 = getelementptr inbounds %struct.anon, %struct.anon* %s303, i32 0, i32 1, !dbg !818
  store i32 %shr302, i32* %high304, align 4, !dbg !819
  %s305 = bitcast %union.dwords* %n to %struct.anon*, !dbg !820
  %high306 = getelementptr inbounds %struct.anon, %struct.anon* %s305, i32 0, i32 1, !dbg !821
  %73 = load i32, i32* %high306, align 4, !dbg !821
  %sub307 = sub nsw i32 31, %sub268, !dbg !822
  %shl308 = shl i32 %73, %sub307, !dbg !823
  %low310 = bitcast %union.dwords* %n to i32*, !dbg !824
  %74 = load i32, i32* %low310, align 8, !dbg !824
  %shr311 = lshr i32 %74, %inc277, !dbg !825
  %or312 = or i32 %shl308, %shr311, !dbg !826
  %low314 = bitcast %union.dwords* %r to i32*, !dbg !827
  store i32 %or312, i32* %low314, align 8, !dbg !828
  br label %if.end315

if.end315:                                        ; preds = %if.else293, %if.then282
  br label %if.end316

if.end316:                                        ; preds = %if.end315, %if.end262
  %sr.0 = phi i32 [ %sub192, %if.end262 ], [ %inc277, %if.end315 ], !dbg !829
  br label %if.end317

if.end317:                                        ; preds = %if.end316, %if.end116
  %sr.1 = phi i32 [ %inc, %if.end116 ], [ %sr.0, %if.end316 ], !dbg !829
  br label %for.cond, !dbg !830

for.cond:                                         ; preds = %for.inc, %if.end317
  %sr.2 = phi i32 [ %sr.1, %if.end317 ], [ %dec, %for.inc ], !dbg !829
  %carry.0 = phi i32 [ 0, %if.end317 ], [ %conv360, %for.inc ], !dbg !829
  %cmp318.not = icmp eq i32 %sr.2, 0, !dbg !831
  br i1 %cmp318.not, label %for.end, label %for.body, !dbg !830

for.body:                                         ; preds = %for.cond
  %s320 = bitcast %union.dwords* %r to %struct.anon*, !dbg !832
  %high321 = getelementptr inbounds %struct.anon, %struct.anon* %s320, i32 0, i32 1, !dbg !833
  %75 = load i32, i32* %high321, align 4, !dbg !833
  %low324 = bitcast %union.dwords* %r to i32*, !dbg !834
  %76 = load i32, i32* %low324, align 8, !dbg !834
  %or326 = call i32 @llvm.fshl.i32(i32 %75, i32 %76, i32 1), !dbg !835
  %s327 = bitcast %union.dwords* %r to %struct.anon*, !dbg !836
  %high328 = getelementptr inbounds %struct.anon, %struct.anon* %s327, i32 0, i32 1, !dbg !837
  store i32 %or326, i32* %high328, align 4, !dbg !838
  %s332 = bitcast %union.dwords* %q to %struct.anon*, !dbg !839
  %high333 = getelementptr inbounds %struct.anon, %struct.anon* %s332, i32 0, i32 1, !dbg !840
  %77 = load i32, i32* %high333, align 4, !dbg !840
  %or335 = call i32 @llvm.fshl.i32(i32 %76, i32 %77, i32 1), !dbg !841
  %low337 = bitcast %union.dwords* %r to i32*, !dbg !842
  store i32 %or335, i32* %low337, align 8, !dbg !843
  %s338 = bitcast %union.dwords* %q to %struct.anon*, !dbg !844
  %high339 = getelementptr inbounds %struct.anon, %struct.anon* %s338, i32 0, i32 1, !dbg !845
  %78 = load i32, i32* %high339, align 4, !dbg !845
  %low342 = bitcast %union.dwords* %q to i32*, !dbg !846
  %79 = load i32, i32* %low342, align 8, !dbg !846
  %or344 = call i32 @llvm.fshl.i32(i32 %78, i32 %79, i32 1), !dbg !847
  %s345 = bitcast %union.dwords* %q to %struct.anon*, !dbg !848
  %high346 = getelementptr inbounds %struct.anon, %struct.anon* %s345, i32 0, i32 1, !dbg !849
  store i32 %or344, i32* %high346, align 4, !dbg !850
  %shl349 = shl i32 %79, 1, !dbg !851
  %or350 = or i32 %shl349, %carry.0, !dbg !852
  %low352 = bitcast %union.dwords* %q to i32*, !dbg !853
  store i32 %or350, i32* %low352, align 8, !dbg !854
  %all354 = getelementptr inbounds %union.dwords, %union.dwords* %d, i32 0, i32 0, !dbg !855
  %80 = load i64, i64* %all354, align 8, !dbg !855
  %all355 = getelementptr inbounds %union.dwords, %union.dwords* %r, i32 0, i32 0, !dbg !856
  %81 = load i64, i64* %all355, align 8, !dbg !856
  %82 = xor i64 %81, -1, !dbg !857
  %sub357 = add i64 %80, %82, !dbg !857
  %isneg = icmp slt i64 %sub357, 0, !dbg !858
  %and362 = select i1 %isneg, i64 %80, i64 0, !dbg !858
  %all363 = getelementptr inbounds %union.dwords, %union.dwords* %r, i32 0, i32 0, !dbg !859
  %sub364 = sub i64 %81, %and362, !dbg !860
  store i64 %sub364, i64* %all363, align 8, !dbg !860
  br label %for.inc, !dbg !861

for.inc:                                          ; preds = %for.body
  %and359 = lshr i64 %sub357, 63, !dbg !862
  %conv360 = trunc i64 %and359 to i32, !dbg !863
  %dec = add i32 %sr.2, -1, !dbg !864
  br label %for.cond, !dbg !830, !llvm.loop !865

for.end:                                          ; preds = %for.cond
  %all365 = getelementptr inbounds %union.dwords, %union.dwords* %q, i32 0, i32 0, !dbg !866
  %83 = load i64, i64* %all365, align 8, !dbg !866
  %shl366 = shl i64 %83, 1, !dbg !867
  %conv367 = zext i32 %carry.0 to i64, !dbg !868
  %or368 = or i64 %shl366, %conv367, !dbg !869
  %all369 = getelementptr inbounds %union.dwords, %union.dwords* %q, i32 0, i32 0, !dbg !870
  store i64 %or368, i64* %all369, align 8, !dbg !871
  %tobool370.not = icmp eq i64* %rem, null, !dbg !872
  br i1 %tobool370.not, label %if.end373, label %if.then371, !dbg !872

if.then371:                                       ; preds = %for.end
  %all372 = getelementptr inbounds %union.dwords, %union.dwords* %r, i32 0, i32 0, !dbg !873
  %84 = load i64, i64* %all372, align 8, !dbg !873
  store i64 %84, i64* %rem, align 8, !dbg !874
  br label %if.end373, !dbg !875

if.end373:                                        ; preds = %if.then371, %for.end
  %all374 = getelementptr inbounds %union.dwords, %union.dwords* %q, i32 0, i32 0, !dbg !876
  %85 = load i64, i64* %all374, align 8, !dbg !876
  br label %return, !dbg !877

return:                                           ; preds = %if.end373, %if.end275, %if.end168, %if.then166, %if.end115, %if.end97, %if.end67, %if.end42, %if.end22, %if.end
  %retval.0 = phi i64 [ %conv15, %if.end ], [ 0, %if.end22 ], [ %conv48, %if.end42 ], [ %conv73, %if.end67 ], [ %conv102, %if.end97 ], [ 0, %if.end115 ], [ %85, %if.end373 ], [ %43, %if.then166 ], [ %49, %if.end168 ], [ 0, %if.end275 ], !dbg !829
  ret i64 %retval.0, !dbg !878
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__divmoddi4(i64 noundef %a, i64 noundef %b, i64* noundef %rem) #1 !dbg !879 {
entry:
  %call = call arm_aapcscc i64 @__divdi3(i64 noundef %a, i64 noundef %b) #4, !dbg !880
  %mul = mul nsw i64 %call, %b, !dbg !881
  %sub = sub nsw i64 %a, %mul, !dbg !882
  store i64 %sub, i64* %rem, align 8, !dbg !883
  ret i64 %call, !dbg !884
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__divmodsi4(i32 noundef %a, i32 noundef %b, i32* noundef %rem) #1 !dbg !885 {
entry:
  %call = call arm_aapcscc i32 @__divsi3(i32 noundef %a, i32 noundef %b) #4, !dbg !886
  %mul = mul nsw i32 %call, %b, !dbg !887
  %sub = sub nsw i32 %a, %mul, !dbg !888
  store i32 %sub, i32* %rem, align 4, !dbg !889
  ret i32 %call, !dbg !890
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__divsi3(i32 noundef %a, i32 noundef %b) #1 !dbg !891 {
entry:
  %shr = ashr i32 %a, 31, !dbg !892
  %shr1 = ashr i32 %b, 31, !dbg !893
  %xor = xor i32 %shr, %a, !dbg !894
  %sub = sub nsw i32 %xor, %shr, !dbg !895
  %xor2 = xor i32 %shr1, %b, !dbg !896
  %sub3 = sub nsw i32 %xor2, %shr1, !dbg !897
  %xor4 = xor i32 %shr, %shr1, !dbg !898
  %div = udiv i32 %sub, %sub3, !dbg !899
  %xor5 = xor i32 %div, %xor4, !dbg !900
  %sub6 = sub i32 %xor5, %xor4, !dbg !901
  ret i32 %sub6, !dbg !902
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__ffsdi2(i64 noundef %a) #1 !dbg !903 {
entry:
  %x = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %x, i32 0, i32 0, !dbg !904
  store i64 %a, i64* %all, align 8, !dbg !905
  %low = bitcast %union.dwords* %x to i32*, !dbg !906
  %0 = load i32, i32* %low, align 8, !dbg !906
  %cmp = icmp eq i32 %0, 0, !dbg !907
  br i1 %cmp, label %if.then, label %if.end6, !dbg !908

if.then:                                          ; preds = %entry
  %s1 = bitcast %union.dwords* %x to %struct.anon*, !dbg !909
  %high = getelementptr inbounds %struct.anon, %struct.anon* %s1, i32 0, i32 1, !dbg !910
  %1 = load i32, i32* %high, align 4, !dbg !910
  %cmp2 = icmp eq i32 %1, 0, !dbg !911
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !912

if.then3:                                         ; preds = %if.then
  br label %return, !dbg !913

if.end:                                           ; preds = %if.then
  %s4 = bitcast %union.dwords* %x to %struct.anon*, !dbg !914
  %high5 = getelementptr inbounds %struct.anon, %struct.anon* %s4, i32 0, i32 1, !dbg !915
  %2 = load i32, i32* %high5, align 4, !dbg !915
  %3 = call i32 @llvm.cttz.i32(i32 %2, i1 false), !dbg !916, !range !398
  %add = add nuw nsw i32 %3, 33, !dbg !917
  br label %return, !dbg !918

if.end6:                                          ; preds = %entry
  %low8 = bitcast %union.dwords* %x to i32*, !dbg !919
  %4 = load i32, i32* %low8, align 8, !dbg !919
  %5 = call i32 @llvm.cttz.i32(i32 %4, i1 false), !dbg !920, !range !398
  %add9 = add nuw nsw i32 %5, 1, !dbg !921
  br label %return, !dbg !922

return:                                           ; preds = %if.end6, %if.end, %if.then3
  %retval.0 = phi i32 [ 0, %if.then3 ], [ %add, %if.end ], [ %add9, %if.end6 ], !dbg !923
  ret i32 %retval.0, !dbg !924
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__ffssi2(i32 noundef %a) #1 !dbg !925 {
entry:
  %cmp = icmp eq i32 %a, 0, !dbg !926
  br i1 %cmp, label %if.then, label %if.end, !dbg !927

if.then:                                          ; preds = %entry
  br label %return, !dbg !928

if.end:                                           ; preds = %entry
  %0 = call i32 @llvm.cttz.i32(i32 %a, i1 true), !dbg !929, !range !398
  %add = add nuw nsw i32 %0, 1, !dbg !930
  br label %return, !dbg !931

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %add, %if.end ], !dbg !932
  ret i32 %retval.0, !dbg !933
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__lshrdi3(i64 noundef %a, i32 noundef %b) #1 !dbg !934 {
entry:
  %input = alloca %union.dwords, align 8
  %result = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %input, i32 0, i32 0, !dbg !935
  store i64 %a, i64* %all, align 8, !dbg !936
  %and = and i32 %b, 32, !dbg !937
  %tobool.not = icmp eq i32 %and, 0, !dbg !937
  br i1 %tobool.not, label %if.else, label %if.then, !dbg !938

if.then:                                          ; preds = %entry
  %s = bitcast %union.dwords* %result to %struct.anon*, !dbg !939
  %high = getelementptr inbounds %struct.anon, %struct.anon* %s, i32 0, i32 1, !dbg !940
  store i32 0, i32* %high, align 4, !dbg !941
  %s1 = bitcast %union.dwords* %input to %struct.anon*, !dbg !942
  %high2 = getelementptr inbounds %struct.anon, %struct.anon* %s1, i32 0, i32 1, !dbg !943
  %0 = load i32, i32* %high2, align 4, !dbg !943
  %sub = add nsw i32 %b, -32, !dbg !944
  %shr = lshr i32 %0, %sub, !dbg !945
  %low = bitcast %union.dwords* %result to i32*, !dbg !946
  store i32 %shr, i32* %low, align 8, !dbg !947
  br label %if.end18, !dbg !948

if.else:                                          ; preds = %entry
  %cmp = icmp eq i32 %b, 0, !dbg !949
  br i1 %cmp, label %if.then4, label %if.end, !dbg !950

if.then4:                                         ; preds = %if.else
  br label %return, !dbg !951

if.end:                                           ; preds = %if.else
  %s5 = bitcast %union.dwords* %input to %struct.anon*, !dbg !952
  %high6 = getelementptr inbounds %struct.anon, %struct.anon* %s5, i32 0, i32 1, !dbg !953
  %1 = load i32, i32* %high6, align 4, !dbg !953
  %shr7 = lshr i32 %1, %b, !dbg !954
  %s8 = bitcast %union.dwords* %result to %struct.anon*, !dbg !955
  %high9 = getelementptr inbounds %struct.anon, %struct.anon* %s8, i32 0, i32 1, !dbg !956
  store i32 %shr7, i32* %high9, align 4, !dbg !957
  %s10 = bitcast %union.dwords* %input to %struct.anon*, !dbg !958
  %high11 = getelementptr inbounds %struct.anon, %struct.anon* %s10, i32 0, i32 1, !dbg !959
  %2 = load i32, i32* %high11, align 4, !dbg !959
  %sub12 = sub nsw i32 32, %b, !dbg !960
  %shl = shl i32 %2, %sub12, !dbg !961
  %low14 = bitcast %union.dwords* %input to i32*, !dbg !962
  %3 = load i32, i32* %low14, align 8, !dbg !962
  %shr15 = lshr i32 %3, %b, !dbg !963
  %or = or i32 %shl, %shr15, !dbg !964
  %low17 = bitcast %union.dwords* %result to i32*, !dbg !965
  store i32 %or, i32* %low17, align 8, !dbg !966
  br label %if.end18

if.end18:                                         ; preds = %if.end, %if.then
  %all19 = getelementptr inbounds %union.dwords, %union.dwords* %result, i32 0, i32 0, !dbg !967
  %4 = load i64, i64* %all19, align 8, !dbg !967
  br label %return, !dbg !968

return:                                           ; preds = %if.end18, %if.then4
  %retval.0 = phi i64 [ %4, %if.end18 ], [ %a, %if.then4 ], !dbg !969
  ret i64 %retval.0, !dbg !970
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__moddi3(i64 noundef %a, i64 noundef %b) #1 !dbg !971 {
entry:
  %r = alloca i64, align 8
  %0 = call i64 @llvm.abs.i64(i64 %b, i1 true), !dbg !972
  %shr1 = ashr i64 %a, 63, !dbg !973
  %xor2 = xor i64 %shr1, %a, !dbg !974
  %sub3 = sub nsw i64 %xor2, %shr1, !dbg !975
  %call = call arm_aapcscc i64 @__udivmoddi4(i64 noundef %sub3, i64 noundef %0, i64* noundef nonnull %r) #4, !dbg !976
  %1 = load i64, i64* %r, align 8, !dbg !977
  %xor4 = xor i64 %1, %shr1, !dbg !978
  %sub5 = sub nsw i64 %xor4, %shr1, !dbg !979
  ret i64 %sub5, !dbg !980
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__modsi3(i32 noundef %a, i32 noundef %b) #1 !dbg !981 {
entry:
  %call = call arm_aapcscc i32 @__divsi3(i32 noundef %a, i32 noundef %b) #4, !dbg !982
  %mul = mul nsw i32 %call, %b, !dbg !983
  %sub = sub nsw i32 %a, %mul, !dbg !984
  ret i32 %sub, !dbg !985
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__mulvdi3(i64 noundef %a, i64 noundef %b) #1 !dbg !986 {
entry:
  %cmp = icmp eq i64 %a, -9223372036854775808, !dbg !987
  br i1 %cmp, label %if.then, label %if.end4, !dbg !988

if.then:                                          ; preds = %entry
  %cmp1 = icmp eq i64 %b, 0, !dbg !989
  br i1 %cmp1, label %if.then3, label %lor.lhs.false, !dbg !990

lor.lhs.false:                                    ; preds = %if.then
  %cmp2 = icmp eq i64 %b, 1, !dbg !991
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !992

if.then3:                                         ; preds = %lor.lhs.false, %if.then
  br label %return, !dbg !993

if.end:                                           ; preds = %lor.lhs.false
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i32 noundef 31, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvdi3, i32 0, i32 0)) #5, !dbg !994
  unreachable, !dbg !994

if.end4:                                          ; preds = %entry
  %cmp5 = icmp eq i64 %b, -9223372036854775808, !dbg !995
  br i1 %cmp5, label %if.then6, label %if.end13, !dbg !996

if.then6:                                         ; preds = %if.end4
  %cmp7 = icmp eq i64 %a, 0, !dbg !997
  br i1 %cmp7, label %if.then10, label %lor.lhs.false8, !dbg !998

lor.lhs.false8:                                   ; preds = %if.then6
  %cmp9 = icmp eq i64 %a, 1, !dbg !999
  br i1 %cmp9, label %if.then10, label %if.end12, !dbg !1000

if.then10:                                        ; preds = %lor.lhs.false8, %if.then6
  br label %return, !dbg !1001

if.end12:                                         ; preds = %lor.lhs.false8
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i32 noundef 37, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvdi3, i32 0, i32 0)) #5, !dbg !1002
  unreachable, !dbg !1002

if.end13:                                         ; preds = %if.end4
  %shr = ashr i64 %a, 63, !dbg !1003
  %xor = xor i64 %shr, %a, !dbg !1004
  %sub = sub nsw i64 %xor, %shr, !dbg !1005
  %shr14 = ashr i64 %b, 63, !dbg !1006
  %xor15 = xor i64 %shr14, %b, !dbg !1007
  %sub16 = sub nsw i64 %xor15, %shr14, !dbg !1008
  %cmp17 = icmp slt i64 %sub, 2, !dbg !1009
  br i1 %cmp17, label %if.then20, label %lor.lhs.false18, !dbg !1010

lor.lhs.false18:                                  ; preds = %if.end13
  %cmp19 = icmp slt i64 %sub16, 2, !dbg !1011
  br i1 %cmp19, label %if.then20, label %if.end22, !dbg !1012

if.then20:                                        ; preds = %lor.lhs.false18, %if.end13
  br label %return, !dbg !1013

if.end22:                                         ; preds = %lor.lhs.false18
  %cmp23 = icmp eq i64 %shr, %shr14, !dbg !1014
  br i1 %cmp23, label %if.then24, label %if.else, !dbg !1015

if.then24:                                        ; preds = %if.end22
  %div = sdiv i64 9223372036854775807, %sub16, !dbg !1016
  %cmp25 = icmp sgt i64 %sub, %div, !dbg !1017
  br i1 %cmp25, label %if.then26, label %if.end27, !dbg !1018

if.then26:                                        ; preds = %if.then24
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i32 noundef 48, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvdi3, i32 0, i32 0)) #5, !dbg !1019
  unreachable, !dbg !1019

if.end27:                                         ; preds = %if.then24
  br label %if.end33, !dbg !1020

if.else:                                          ; preds = %if.end22
  %sub28 = sub nsw i64 0, %sub16, !dbg !1021
  %div29 = sdiv i64 -9223372036854775808, %sub28, !dbg !1022
  %cmp30 = icmp sgt i64 %sub, %div29, !dbg !1023
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !1024

if.then31:                                        ; preds = %if.else
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i32 noundef 53, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvdi3, i32 0, i32 0)) #5, !dbg !1025
  unreachable, !dbg !1025

if.end32:                                         ; preds = %if.else
  br label %if.end33

if.end33:                                         ; preds = %if.end32, %if.end27
  br label %return, !dbg !1026

return:                                           ; preds = %if.end33, %if.then20, %if.then10, %if.then3
  %retval.0 = mul nsw i64 %a, %b, !dbg !1027
  ret i64 %retval.0, !dbg !1028
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__mulvsi3(i32 noundef %a, i32 noundef %b) #1 !dbg !1029 {
entry:
  %cmp = icmp eq i32 %a, -2147483648, !dbg !1030
  br i1 %cmp, label %if.then, label %if.end4, !dbg !1031

if.then:                                          ; preds = %entry
  %cmp1 = icmp eq i32 %b, 0, !dbg !1032
  br i1 %cmp1, label %if.then3, label %lor.lhs.false, !dbg !1033

lor.lhs.false:                                    ; preds = %if.then
  %cmp2 = icmp eq i32 %b, 1, !dbg !1034
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !1035

if.then3:                                         ; preds = %lor.lhs.false, %if.then
  br label %return, !dbg !1036

if.end:                                           ; preds = %lor.lhs.false
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), i32 noundef 31, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvsi3, i32 0, i32 0)) #5, !dbg !1037
  unreachable, !dbg !1037

if.end4:                                          ; preds = %entry
  %cmp5 = icmp eq i32 %b, -2147483648, !dbg !1038
  br i1 %cmp5, label %if.then6, label %if.end13, !dbg !1039

if.then6:                                         ; preds = %if.end4
  %cmp7 = icmp eq i32 %a, 0, !dbg !1040
  br i1 %cmp7, label %if.then10, label %lor.lhs.false8, !dbg !1041

lor.lhs.false8:                                   ; preds = %if.then6
  %cmp9 = icmp eq i32 %a, 1, !dbg !1042
  br i1 %cmp9, label %if.then10, label %if.end12, !dbg !1043

if.then10:                                        ; preds = %lor.lhs.false8, %if.then6
  br label %return, !dbg !1044

if.end12:                                         ; preds = %lor.lhs.false8
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), i32 noundef 37, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvsi3, i32 0, i32 0)) #5, !dbg !1045
  unreachable, !dbg !1045

if.end13:                                         ; preds = %if.end4
  %shr = ashr i32 %a, 31, !dbg !1046
  %xor = xor i32 %shr, %a, !dbg !1047
  %sub = sub nsw i32 %xor, %shr, !dbg !1048
  %shr14 = ashr i32 %b, 31, !dbg !1049
  %xor15 = xor i32 %shr14, %b, !dbg !1050
  %sub16 = sub nsw i32 %xor15, %shr14, !dbg !1051
  %cmp17 = icmp slt i32 %sub, 2, !dbg !1052
  br i1 %cmp17, label %if.then20, label %lor.lhs.false18, !dbg !1053

lor.lhs.false18:                                  ; preds = %if.end13
  %cmp19 = icmp slt i32 %sub16, 2, !dbg !1054
  br i1 %cmp19, label %if.then20, label %if.end22, !dbg !1055

if.then20:                                        ; preds = %lor.lhs.false18, %if.end13
  br label %return, !dbg !1056

if.end22:                                         ; preds = %lor.lhs.false18
  %cmp23 = icmp eq i32 %shr, %shr14, !dbg !1057
  br i1 %cmp23, label %if.then24, label %if.else, !dbg !1058

if.then24:                                        ; preds = %if.end22
  %div = sdiv i32 2147483647, %sub16, !dbg !1059
  %cmp25 = icmp sgt i32 %sub, %div, !dbg !1060
  br i1 %cmp25, label %if.then26, label %if.end27, !dbg !1061

if.then26:                                        ; preds = %if.then24
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), i32 noundef 48, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvsi3, i32 0, i32 0)) #5, !dbg !1062
  unreachable, !dbg !1062

if.end27:                                         ; preds = %if.then24
  br label %if.end33, !dbg !1063

if.else:                                          ; preds = %if.end22
  %sub28 = sub nsw i32 0, %sub16, !dbg !1064
  %div29 = sdiv i32 -2147483648, %sub28, !dbg !1065
  %cmp30 = icmp sgt i32 %sub, %div29, !dbg !1066
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !1067

if.then31:                                        ; preds = %if.else
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), i32 noundef 53, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvsi3, i32 0, i32 0)) #5, !dbg !1068
  unreachable, !dbg !1068

if.end32:                                         ; preds = %if.else
  br label %if.end33

if.end33:                                         ; preds = %if.end32, %if.end27
  br label %return, !dbg !1069

return:                                           ; preds = %if.end33, %if.then20, %if.then10, %if.then3
  %retval.0 = mul nsw i32 %a, %b, !dbg !1070
  ret i32 %retval.0, !dbg !1071
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__paritydi2(i64 noundef %a) #1 !dbg !1072 {
entry:
  %x = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %x, i32 0, i32 0, !dbg !1073
  store i64 %a, i64* %all, align 8, !dbg !1074
  %s = bitcast %union.dwords* %x to %struct.anon*, !dbg !1075
  %high = getelementptr inbounds %struct.anon, %struct.anon* %s, i32 0, i32 1, !dbg !1076
  %0 = load i32, i32* %high, align 4, !dbg !1076
  %low = bitcast %union.dwords* %x to i32*, !dbg !1077
  %1 = load i32, i32* %low, align 8, !dbg !1077
  %xor = xor i32 %0, %1, !dbg !1078
  %call = call arm_aapcscc i32 @__paritysi2(i32 noundef %xor) #4, !dbg !1079
  ret i32 %call, !dbg !1080
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__paritysi2(i32 noundef %a) #1 !dbg !1081 {
entry:
  %shr = lshr i32 %a, 16, !dbg !1082
  %xor = xor i32 %shr, %a, !dbg !1083
  %shr1 = lshr i32 %xor, 8, !dbg !1084
  %xor2 = xor i32 %xor, %shr1, !dbg !1085
  %shr3 = lshr i32 %xor2, 4, !dbg !1086
  %xor4 = xor i32 %xor2, %shr3, !dbg !1087
  %and = and i32 %xor4, 15, !dbg !1088
  %shr5 = lshr i32 27030, %and, !dbg !1089
  %and6 = and i32 %shr5, 1, !dbg !1090
  ret i32 %and6, !dbg !1091
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__popcountdi2(i64 noundef %a) #1 !dbg !1092 {
entry:
  %shr = lshr i64 %a, 1, !dbg !1093
  %and = and i64 %shr, 6148914691236517205, !dbg !1094
  %sub = sub i64 %a, %and, !dbg !1095
  %shr1 = lshr i64 %sub, 2, !dbg !1096
  %and2 = and i64 %shr1, 3689348814741910323, !dbg !1097
  %and3 = and i64 %sub, 3689348814741910323, !dbg !1098
  %add = add nuw nsw i64 %and2, %and3, !dbg !1099
  %shr4 = lshr i64 %add, 4, !dbg !1100
  %add5 = add nuw nsw i64 %add, %shr4, !dbg !1101
  %and6 = and i64 %add5, 1085102592571150095, !dbg !1102
  %shr7 = lshr i64 %and6, 32, !dbg !1103
  %add8 = add nuw nsw i64 %and6, %shr7, !dbg !1104
  %conv = trunc i64 %add8 to i32, !dbg !1105
  %shr9 = lshr i32 %conv, 16, !dbg !1106
  %add10 = add nuw nsw i32 %shr9, %conv, !dbg !1107
  %shr11 = lshr i32 %add10, 8, !dbg !1108
  %add12 = add nuw nsw i32 %add10, %shr11, !dbg !1109
  %and13 = and i32 %add12, 127, !dbg !1110
  ret i32 %and13, !dbg !1111
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__popcountsi2(i32 noundef %a) #1 !dbg !1112 {
entry:
  %shr = lshr i32 %a, 1, !dbg !1113
  %and = and i32 %shr, 1431655765, !dbg !1114
  %sub = sub i32 %a, %and, !dbg !1115
  %shr1 = lshr i32 %sub, 2, !dbg !1116
  %and2 = and i32 %shr1, 858993459, !dbg !1117
  %and3 = and i32 %sub, 858993459, !dbg !1118
  %add = add nuw nsw i32 %and2, %and3, !dbg !1119
  %shr4 = lshr i32 %add, 4, !dbg !1120
  %add5 = add nuw nsw i32 %add, %shr4, !dbg !1121
  %and6 = and i32 %add5, 252645135, !dbg !1122
  %shr7 = lshr i32 %and6, 16, !dbg !1123
  %add8 = add nuw nsw i32 %and6, %shr7, !dbg !1124
  %shr9 = lshr i32 %add8, 8, !dbg !1125
  %add10 = add nuw nsw i32 %add8, %shr9, !dbg !1126
  %and11 = and i32 %add10, 63, !dbg !1127
  ret i32 %and11, !dbg !1128
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__subvdi3(i64 noundef %a, i64 noundef %b) #1 !dbg !1129 {
entry:
  %sub = sub i64 %a, %b, !dbg !1130
  %cmp = icmp sgt i64 %b, -1, !dbg !1131
  br i1 %cmp, label %if.then, label %if.else, !dbg !1132

if.then:                                          ; preds = %entry
  %cmp1 = icmp sgt i64 %sub, %a, !dbg !1133
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !1134

if.then2:                                         ; preds = %if.then
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i32 0, i32 0), i32 noundef 28, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__subvdi3, i32 0, i32 0)) #5, !dbg !1135
  unreachable, !dbg !1135

if.end:                                           ; preds = %if.then
  br label %if.end6, !dbg !1136

if.else:                                          ; preds = %entry
  %cmp3.not = icmp sgt i64 %sub, %a, !dbg !1137
  br i1 %cmp3.not, label %if.end5, label %if.then4, !dbg !1138

if.then4:                                         ; preds = %if.else
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i32 0, i32 0), i32 noundef 33, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__subvdi3, i32 0, i32 0)) #5, !dbg !1139
  unreachable, !dbg !1139

if.end5:                                          ; preds = %if.else
  br label %if.end6

if.end6:                                          ; preds = %if.end5, %if.end
  ret i64 %sub, !dbg !1140
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__subvsi3(i32 noundef %a, i32 noundef %b) #1 !dbg !1141 {
entry:
  %sub = sub i32 %a, %b, !dbg !1142
  %cmp = icmp sgt i32 %b, -1, !dbg !1143
  br i1 %cmp, label %if.then, label %if.else, !dbg !1144

if.then:                                          ; preds = %entry
  %cmp1 = icmp sgt i32 %sub, %a, !dbg !1145
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !1146

if.then2:                                         ; preds = %if.then
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i32 0, i32 0), i32 noundef 28, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__subvsi3, i32 0, i32 0)) #5, !dbg !1147
  unreachable, !dbg !1147

if.end:                                           ; preds = %if.then
  br label %if.end6, !dbg !1148

if.else:                                          ; preds = %entry
  %cmp3.not = icmp sgt i32 %sub, %a, !dbg !1149
  br i1 %cmp3.not, label %if.end5, label %if.then4, !dbg !1150

if.then4:                                         ; preds = %if.else
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i32 0, i32 0), i32 noundef 33, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__subvsi3, i32 0, i32 0)) #5, !dbg !1151
  unreachable, !dbg !1151

if.end5:                                          ; preds = %if.else
  br label %if.end6

if.end6:                                          ; preds = %if.end5, %if.end
  ret i32 %sub, !dbg !1152
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__ucmpdi2(i64 noundef %a, i64 noundef %b) #1 !dbg !1153 {
entry:
  %x = alloca %union.dwords, align 8
  %y = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %x, i32 0, i32 0, !dbg !1154
  store i64 %a, i64* %all, align 8, !dbg !1155
  %all1 = getelementptr inbounds %union.dwords, %union.dwords* %y, i32 0, i32 0, !dbg !1156
  store i64 %b, i64* %all1, align 8, !dbg !1157
  %s = bitcast %union.dwords* %x to %struct.anon*, !dbg !1158
  %high = getelementptr inbounds %struct.anon, %struct.anon* %s, i32 0, i32 1, !dbg !1159
  %0 = load i32, i32* %high, align 4, !dbg !1159
  %s2 = bitcast %union.dwords* %y to %struct.anon*, !dbg !1160
  %high3 = getelementptr inbounds %struct.anon, %struct.anon* %s2, i32 0, i32 1, !dbg !1161
  %1 = load i32, i32* %high3, align 4, !dbg !1161
  %cmp = icmp ult i32 %0, %1, !dbg !1162
  br i1 %cmp, label %if.then, label %if.end, !dbg !1163

if.then:                                          ; preds = %entry
  br label %return, !dbg !1164

if.end:                                           ; preds = %entry
  %s4 = bitcast %union.dwords* %x to %struct.anon*, !dbg !1165
  %high5 = getelementptr inbounds %struct.anon, %struct.anon* %s4, i32 0, i32 1, !dbg !1166
  %2 = load i32, i32* %high5, align 4, !dbg !1166
  %s6 = bitcast %union.dwords* %y to %struct.anon*, !dbg !1167
  %high7 = getelementptr inbounds %struct.anon, %struct.anon* %s6, i32 0, i32 1, !dbg !1168
  %3 = load i32, i32* %high7, align 4, !dbg !1168
  %cmp8 = icmp ugt i32 %2, %3, !dbg !1169
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !1170

if.then9:                                         ; preds = %if.end
  br label %return, !dbg !1171

if.end10:                                         ; preds = %if.end
  %low = bitcast %union.dwords* %x to i32*, !dbg !1172
  %4 = load i32, i32* %low, align 8, !dbg !1172
  %low13 = bitcast %union.dwords* %y to i32*, !dbg !1173
  %5 = load i32, i32* %low13, align 8, !dbg !1173
  %cmp14 = icmp ult i32 %4, %5, !dbg !1174
  br i1 %cmp14, label %if.then15, label %if.end16, !dbg !1175

if.then15:                                        ; preds = %if.end10
  br label %return, !dbg !1176

if.end16:                                         ; preds = %if.end10
  %low18 = bitcast %union.dwords* %x to i32*, !dbg !1177
  %6 = load i32, i32* %low18, align 8, !dbg !1177
  %low20 = bitcast %union.dwords* %y to i32*, !dbg !1178
  %7 = load i32, i32* %low20, align 8, !dbg !1178
  %cmp21 = icmp ugt i32 %6, %7, !dbg !1179
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !1180

if.then22:                                        ; preds = %if.end16
  br label %return, !dbg !1181

if.end23:                                         ; preds = %if.end16
  br label %return, !dbg !1182

return:                                           ; preds = %if.end23, %if.then22, %if.then15, %if.then9, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 2, %if.then9 ], [ 0, %if.then15 ], [ 2, %if.then22 ], [ 1, %if.end23 ], !dbg !1183
  ret i32 %retval.0, !dbg !1184
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__aeabi_ulcmp(i64 noundef %a, i64 noundef %b) #1 !dbg !1185 {
entry:
  %call = call arm_aapcscc i32 @__ucmpdi2(i64 noundef %a, i64 noundef %b) #4, !dbg !1186
  %sub = add nsw i32 %call, -1, !dbg !1187
  ret i32 %sub, !dbg !1188
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__udivdi3(i64 noundef %a, i64 noundef %b) #1 !dbg !1189 {
entry:
  %call = call arm_aapcscc i64 @__udivmoddi4(i64 noundef %a, i64 noundef %b, i64* noundef null) #4, !dbg !1190
  ret i64 %call, !dbg !1191
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__udivmodsi4(i32 noundef %a, i32 noundef %b, i32* noundef %rem) #1 !dbg !1192 {
entry:
  %call = call arm_aapcscc i32 @__udivsi3(i32 noundef %a, i32 noundef %b) #4, !dbg !1193
  %mul = mul i32 %call, %b, !dbg !1194
  %sub = sub i32 %a, %mul, !dbg !1195
  store i32 %sub, i32* %rem, align 4, !dbg !1196
  ret i32 %call, !dbg !1197
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__udivsi3(i32 noundef %n, i32 noundef %d) #1 !dbg !1198 {
entry:
  %cmp = icmp eq i32 %d, 0, !dbg !1199
  br i1 %cmp, label %if.then, label %if.end, !dbg !1200

if.then:                                          ; preds = %entry
  br label %return, !dbg !1201

if.end:                                           ; preds = %entry
  %cmp1 = icmp eq i32 %n, 0, !dbg !1202
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !1203

if.then2:                                         ; preds = %if.end
  br label %return, !dbg !1204

if.end3:                                          ; preds = %if.end
  %0 = call i32 @llvm.ctlz.i32(i32 %d, i1 true), !dbg !1205, !range !398
  %1 = call i32 @llvm.ctlz.i32(i32 %n, i1 true), !dbg !1206, !range !398
  %sub = sub nsw i32 %0, %1, !dbg !1207
  %cmp4 = icmp ugt i32 %sub, 31, !dbg !1208
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !1209

if.then5:                                         ; preds = %if.end3
  br label %return, !dbg !1210

if.end6:                                          ; preds = %if.end3
  %cmp7 = icmp eq i32 %sub, 31, !dbg !1211
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !1212

if.then8:                                         ; preds = %if.end6
  br label %return, !dbg !1213

if.end9:                                          ; preds = %if.end6
  %inc = add nsw i32 %sub, 1, !dbg !1214
  %sub10 = sub nsw i32 31, %sub, !dbg !1215
  %shl = shl i32 %n, %sub10, !dbg !1216
  %shr = lshr i32 %n, %inc, !dbg !1217
  br label %for.cond, !dbg !1218

for.cond:                                         ; preds = %for.inc, %if.end9
  %q.0 = phi i32 [ %shl, %if.end9 ], [ %or15, %for.inc ], !dbg !1219
  %r.0 = phi i32 [ %shr, %if.end9 ], [ %sub20, %for.inc ], !dbg !1219
  %sr.0 = phi i32 [ %inc, %if.end9 ], [ %dec, %for.inc ], !dbg !1219
  %carry.0 = phi i32 [ 0, %if.end9 ], [ %and, %for.inc ], !dbg !1219
  %cmp11.not = icmp eq i32 %sr.0, 0, !dbg !1220
  br i1 %cmp11.not, label %for.end, label %for.body, !dbg !1218

for.body:                                         ; preds = %for.cond
  %or = call i32 @llvm.fshl.i32(i32 %r.0, i32 %q.0, i32 1), !dbg !1221
  %2 = xor i32 %or, -1, !dbg !1222
  %sub17 = add i32 %2, %d, !dbg !1222
  br label %for.inc, !dbg !1223

for.inc:                                          ; preds = %for.body
  %isneg = icmp slt i32 %sub17, 0, !dbg !1224
  %and19 = select i1 %isneg, i32 %d, i32 0, !dbg !1224
  %sub20 = sub i32 %or, %and19, !dbg !1225
  %and = lshr i32 %sub17, 31, !dbg !1226
  %shl14 = shl i32 %q.0, 1, !dbg !1227
  %or15 = or i32 %shl14, %carry.0, !dbg !1228
  %dec = add i32 %sr.0, -1, !dbg !1229
  br label %for.cond, !dbg !1218, !llvm.loop !1230

for.end:                                          ; preds = %for.cond
  %shl21 = shl i32 %q.0, 1, !dbg !1231
  %or22 = or i32 %shl21, %carry.0, !dbg !1232
  br label %return, !dbg !1233

return:                                           ; preds = %for.end, %if.then8, %if.then5, %if.then2, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then2 ], [ 0, %if.then5 ], [ %n, %if.then8 ], [ %or22, %for.end ], !dbg !1219
  ret i32 %retval.0, !dbg !1234
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__umoddi3(i64 noundef %a, i64 noundef %b) #1 !dbg !1235 {
entry:
  %r = alloca i64, align 8
  %call = call arm_aapcscc i64 @__udivmoddi4(i64 noundef %a, i64 noundef %b, i64* noundef nonnull %r) #4, !dbg !1236
  %0 = load i64, i64* %r, align 8, !dbg !1237
  ret i64 %0, !dbg !1238
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__umodsi3(i32 noundef %a, i32 noundef %b) #1 !dbg !1239 {
entry:
  %call = call arm_aapcscc i32 @__udivsi3(i32 noundef %a, i32 noundef %b) #4, !dbg !1240
  %mul = mul i32 %call, %b, !dbg !1241
  %sub = sub i32 %a, %mul, !dbg !1242
  ret i32 %sub, !dbg !1243
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i8* @memcpy(i8* noundef %destination, i8* noundef %source, i32 noundef %num) #1 !dbg !1244 {
entry:
  br label %for.cond, !dbg !1245

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !dbg !1246
  %exitcond.not = icmp eq i32 %i.0, %num, !dbg !1247
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !1248

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds i8, i8* %source, i32 %i.0, !dbg !1249
  %0 = load i8, i8* %arrayidx, align 1, !dbg !1249
  %arrayidx1 = getelementptr inbounds i8, i8* %destination, i32 %i.0, !dbg !1250
  store i8 %0, i8* %arrayidx1, align 1, !dbg !1251
  br label %for.inc, !dbg !1252

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.0, 1, !dbg !1253
  br label %for.cond, !dbg !1248, !llvm.loop !1254

for.end:                                          ; preds = %for.cond
  ret i8* undef, !dbg !1255
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i8* @memset(i8* noundef %ptr, i32 noundef %value, i32 noundef %num) #1 !dbg !1256 {
entry:
  br label %for.cond, !dbg !1257

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !dbg !1258
  %exitcond.not = icmp eq i32 %i.0, %num, !dbg !1259
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !1260

for.body:                                         ; preds = %for.cond
  %conv = trunc i32 %value to i8, !dbg !1261
  %arrayidx = getelementptr inbounds i8, i8* %ptr, i32 %i.0, !dbg !1262
  store i8 %conv, i8* %arrayidx, align 1, !dbg !1263
  br label %for.inc, !dbg !1264

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.0, 1, !dbg !1265
  br label %for.cond, !dbg !1260, !llvm.loop !1266

for.end:                                          ; preds = %for.cond
  ret i8* %ptr, !dbg !1267
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #3

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #3

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #3

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #3

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #3

attributes #0 = { noinline nounwind "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #1 = { noinline nounwind "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { noinline noreturn nounwind "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nobuiltin "no-builtins" }
attributes #5 = { nobuiltin noreturn "no-builtins" }

!llvm.dbg.cu = !{!2, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133}
!llvm.ident = !{!135, !136, !136, !136, !136, !136, !136, !136, !136, !136, !136, !136, !136, !136, !136, !136, !136, !136, !136, !136, !136, !136, !136, !136, !136, !136, !136, !136, !136, !136, !136, !136, !136, !136, !136, !136, !136, !136, !136, !136, !136, !136, !136, !136, !136, !136, !136, !136, !136, !136, !136, !136, !136, !136, !136, !136, !136}
!llvm.module.flags = !{!137, !138, !139, !140, !141, !142, !143, !144, !145}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "countnegative_seed", scope: !2, file: !9, line: 47, type: !22, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 14.0.6 (git@github.com:RTS-SYSU/LLVM-TA.git b7f9c4ccdebc6c37532ddd772889e5f0ff989c79)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !6, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/workspaces/llvmta/testcases/singletest/countnegative/countnegative.c", directory: "/workspaces/llvmta/testcases/singletest/cosf")
!4 = !{!5}
!5 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!6 = !{!0, !7, !14, !16, !18, !20}
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "countnegative_array", scope: !2, file: !9, line: 48, type: !10, isLocal: false, isDefinition: true)
!9 = !DIFile(filename: "countnegative/countnegative.c", directory: "/workspaces/llvmta/testcases/singletest")
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "matrix", file: !9, line: 30, baseType: !11)
!11 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 12800, elements: !12)
!12 = !{!13, !13}
!13 = !DISubrange(count: 20)
!14 = !DIGlobalVariableExpression(var: !15, expr: !DIExpression())
!15 = distinct !DIGlobalVariable(name: "countnegative_postotal", scope: !2, file: !9, line: 49, type: !5, isLocal: false, isDefinition: true)
!16 = !DIGlobalVariableExpression(var: !17, expr: !DIExpression())
!17 = distinct !DIGlobalVariable(name: "countnegative_negtotal", scope: !2, file: !9, line: 49, type: !5, isLocal: false, isDefinition: true)
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression())
!19 = distinct !DIGlobalVariable(name: "countnegative_poscnt", scope: !2, file: !9, line: 50, type: !5, isLocal: false, isDefinition: true)
!20 = !DIGlobalVariableExpression(var: !21, expr: !DIExpression())
!21 = distinct !DIGlobalVariable(name: "countnegative_negcnt", scope: !2, file: !9, line: 50, type: !5, isLocal: false, isDefinition: true)
!22 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !5)
!23 = distinct !DICompileUnit(language: DW_LANG_C99, file: !24, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!24 = !DIFile(filename: "../absvdi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "f0fa545ed84eab29322431dd903e1bd2")
!25 = distinct !DICompileUnit(language: DW_LANG_C99, file: !26, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!26 = !DIFile(filename: "../absvsi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "4c623fefc2c7ed3929c6e73514b667d1")
!27 = distinct !DICompileUnit(language: DW_LANG_C99, file: !28, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!28 = !DIFile(filename: "../absvti2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "37a4bc629baa89b5b7c1570be0d03e1f")
!29 = distinct !DICompileUnit(language: DW_LANG_C99, file: !30, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!30 = !DIFile(filename: "../addvdi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "aa240ee8ce7c28b2c3bcec10a7603d3f")
!31 = distinct !DICompileUnit(language: DW_LANG_C99, file: !32, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!32 = !DIFile(filename: "../addvsi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "6cd4d40cc00928f1aaf6f29e299078cd")
!33 = distinct !DICompileUnit(language: DW_LANG_C99, file: !34, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!34 = !DIFile(filename: "../addvti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "0db25cee24f6026e13fc556e48cb2a4f")
!35 = distinct !DICompileUnit(language: DW_LANG_C99, file: !36, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!36 = !DIFile(filename: "../ashldi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "ae5236ddcefaf3e5efc4feba69d334b1")
!37 = distinct !DICompileUnit(language: DW_LANG_C99, file: !38, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!38 = !DIFile(filename: "../ashlti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "040402442e4641b723a41224f90bb33c")
!39 = distinct !DICompileUnit(language: DW_LANG_C99, file: !40, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!40 = !DIFile(filename: "../ashrdi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "df60b7a82095e7d7b5c11e1095a5679a")
!41 = distinct !DICompileUnit(language: DW_LANG_C99, file: !42, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!42 = !DIFile(filename: "../ashrti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "d09af17b4c5b806431a14ef018da30a2")
!43 = distinct !DICompileUnit(language: DW_LANG_C99, file: !44, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!44 = !DIFile(filename: "../clzdi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "901c40e0319a50689080965b20695c3e")
!45 = distinct !DICompileUnit(language: DW_LANG_C99, file: !46, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!46 = !DIFile(filename: "../clzsi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "9b0156c55102d3143e17bdf85bafbc30")
!47 = distinct !DICompileUnit(language: DW_LANG_C99, file: !48, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!48 = !DIFile(filename: "../clzti2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "6289c95e51f48974308ae457c947fa76")
!49 = distinct !DICompileUnit(language: DW_LANG_C99, file: !50, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!50 = !DIFile(filename: "../cmpdi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "79ec8a4b383c8374d228cd0869637319")
!51 = distinct !DICompileUnit(language: DW_LANG_C99, file: !52, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!52 = !DIFile(filename: "../cmpti2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "8b9214d8b14681920bdf2cff2acab581")
!53 = distinct !DICompileUnit(language: DW_LANG_C99, file: !54, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!54 = !DIFile(filename: "../ctzdi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "0415a3f61808ca646548bc24b48a844a")
!55 = distinct !DICompileUnit(language: DW_LANG_C99, file: !56, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!56 = !DIFile(filename: "../ctzsi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "0372a2c6647eddaa73c0b61d8d03c3b1")
!57 = distinct !DICompileUnit(language: DW_LANG_C99, file: !58, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!58 = !DIFile(filename: "../ctzti2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "13fd6233b75667ee3310f19e92769490")
!59 = distinct !DICompileUnit(language: DW_LANG_C99, file: !60, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!60 = !DIFile(filename: "../divdi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "281227589e0794a81d7211e4ee4a402c")
!61 = distinct !DICompileUnit(language: DW_LANG_C99, file: !62, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!62 = !DIFile(filename: "../divmoddi4.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "bd72633dccf26f3dd8ee74bf04f7fdac")
!63 = distinct !DICompileUnit(language: DW_LANG_C99, file: !64, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!64 = !DIFile(filename: "../divmodsi4.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "0cf7caca427f8ea020b675e27b5985b5")
!65 = distinct !DICompileUnit(language: DW_LANG_C99, file: !66, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!66 = !DIFile(filename: "../divsi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "7845e3e46788425cf69d463f3cfe00e5")
!67 = distinct !DICompileUnit(language: DW_LANG_C99, file: !68, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!68 = !DIFile(filename: "../divti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "6f197084470906a806c88d3dd279e870")
!69 = distinct !DICompileUnit(language: DW_LANG_C99, file: !70, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!70 = !DIFile(filename: "../ffsdi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "4b800e1cad35a0bc99971441032171a3")
!71 = distinct !DICompileUnit(language: DW_LANG_C99, file: !72, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!72 = !DIFile(filename: "../ffssi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "182169d6765bddc2bf1b03cc7a4f47cb")
!73 = distinct !DICompileUnit(language: DW_LANG_C99, file: !74, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!74 = !DIFile(filename: "../ffsti2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "828ab085c50c22a6e163e289ad75e357")
!75 = distinct !DICompileUnit(language: DW_LANG_C99, file: !76, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!76 = !DIFile(filename: "../int_util.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "7ceb1d4e85bede509d8e6a0974078bc9")
!77 = distinct !DICompileUnit(language: DW_LANG_C99, file: !78, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!78 = !DIFile(filename: "../lshrdi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "c456e45323b3205c3b32d82b51570771")
!79 = distinct !DICompileUnit(language: DW_LANG_C99, file: !80, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!80 = !DIFile(filename: "../lshrti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "a0deefe7ea6369a844ff00cfd3adca3e")
!81 = distinct !DICompileUnit(language: DW_LANG_C99, file: !82, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!82 = !DIFile(filename: "../moddi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "76733914157a978303cbe3d6f6d1c647")
!83 = distinct !DICompileUnit(language: DW_LANG_C99, file: !84, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!84 = !DIFile(filename: "../modsi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "ada583aff17540d2228ce14dc879fdc8")
!85 = distinct !DICompileUnit(language: DW_LANG_C99, file: !86, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!86 = !DIFile(filename: "../modti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "7d8393bf5eb9f0ba6dd3cb5fd0d18b1c")
!87 = distinct !DICompileUnit(language: DW_LANG_C99, file: !88, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!88 = !DIFile(filename: "../mulvdi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "bb6aa1440e4e37fe94db90279d27db10")
!89 = distinct !DICompileUnit(language: DW_LANG_C99, file: !90, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!90 = !DIFile(filename: "../mulvsi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "32cd947949fac3c039bd0839cd5d7c78")
!91 = distinct !DICompileUnit(language: DW_LANG_C99, file: !92, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!92 = !DIFile(filename: "../mulvti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "600972d5762784972446ff2942320803")
!93 = distinct !DICompileUnit(language: DW_LANG_C99, file: !94, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!94 = !DIFile(filename: "../paritydi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "bd9549e31bcebf1c2265048ea6f18a77")
!95 = distinct !DICompileUnit(language: DW_LANG_C99, file: !96, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!96 = !DIFile(filename: "../paritysi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "235e89e1ac3c55fb43879550247ea25b")
!97 = distinct !DICompileUnit(language: DW_LANG_C99, file: !98, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!98 = !DIFile(filename: "../parityti2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "731d722977e9d8c0cd1987cb790d412a")
!99 = distinct !DICompileUnit(language: DW_LANG_C99, file: !100, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!100 = !DIFile(filename: "../popcountdi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "05f001da7fc478c773612fd707769c2a")
!101 = distinct !DICompileUnit(language: DW_LANG_C99, file: !102, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!102 = !DIFile(filename: "../popcountsi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "f9ebedb2d8810ee5a54fff38e1b09d64")
!103 = distinct !DICompileUnit(language: DW_LANG_C99, file: !104, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!104 = !DIFile(filename: "../popcountti2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "cc3baf5a1f58193aeafb2e81bae65208")
!105 = distinct !DICompileUnit(language: DW_LANG_C99, file: !106, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!106 = !DIFile(filename: "../subvdi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "5774ab7a3a8e168deb55531047d6a873")
!107 = distinct !DICompileUnit(language: DW_LANG_C99, file: !108, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!108 = !DIFile(filename: "../subvsi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "c9558a85e8fabce36f42a29933bd87e9")
!109 = distinct !DICompileUnit(language: DW_LANG_C99, file: !110, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!110 = !DIFile(filename: "../subvti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "ae43c388730e95c5ad9b20d37f73fd82")
!111 = distinct !DICompileUnit(language: DW_LANG_C99, file: !112, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!112 = !DIFile(filename: "../ucmpdi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "79f778ef54939446d175079e19d07756")
!113 = distinct !DICompileUnit(language: DW_LANG_C99, file: !114, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!114 = !DIFile(filename: "../ucmpti2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "d30b659e82f7851c826242cd1de6f293")
!115 = distinct !DICompileUnit(language: DW_LANG_C99, file: !116, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!116 = !DIFile(filename: "../udivdi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "580a28989090b62fc3d261faa6e31a6b")
!117 = distinct !DICompileUnit(language: DW_LANG_C99, file: !118, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!118 = !DIFile(filename: "../udivmoddi4.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "eca4b147be989cda91330ba5b56ed879")
!119 = distinct !DICompileUnit(language: DW_LANG_C99, file: !120, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!120 = !DIFile(filename: "../udivmodsi4.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "c0341684574a20dbcfbe4df0ab9f8538")
!121 = distinct !DICompileUnit(language: DW_LANG_C99, file: !122, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!122 = !DIFile(filename: "../udivmodti4.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "876858111b283249167fa6a71cc4682f")
!123 = distinct !DICompileUnit(language: DW_LANG_C99, file: !124, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!124 = !DIFile(filename: "../udivsi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "b74987a973aededf95faab34db33f58a")
!125 = distinct !DICompileUnit(language: DW_LANG_C99, file: !126, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!126 = !DIFile(filename: "../udivti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "c9304f2e77edc1023290a4f40073f6f7")
!127 = distinct !DICompileUnit(language: DW_LANG_C99, file: !128, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!128 = !DIFile(filename: "../umoddi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "1a99e635325595a81040fb97dab88295")
!129 = distinct !DICompileUnit(language: DW_LANG_C99, file: !130, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!130 = !DIFile(filename: "../umodsi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "ce74ac33cd2bd170a84f43824cae8961")
!131 = distinct !DICompileUnit(language: DW_LANG_C99, file: !132, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!132 = !DIFile(filename: "../umodti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "f900660feeec718da080f01b23c74384")
!133 = distinct !DICompileUnit(language: DW_LANG_C99, file: !134, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!134 = !DIFile(filename: "../memory.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsstd/buildarmv4", checksumkind: CSK_MD5, checksum: "fa9c872a007b30a353222cd13b38538d")
!135 = !{!"clang version 14.0.6 (git@github.com:RTS-SYSU/LLVM-TA.git b7f9c4ccdebc6c37532ddd772889e5f0ff989c79)"}
!136 = !{!"clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)"}
!137 = !{i32 7, !"Dwarf Version", i32 5}
!138 = !{i32 2, !"Debug Info Version", i32 3}
!139 = !{i32 1, !"wchar_size", i32 4}
!140 = !{i32 1, !"min_enum_size", i32 4}
!141 = !{i32 1, !"branch-target-enforcement", i32 0}
!142 = !{i32 1, !"sign-return-address", i32 0}
!143 = !{i32 1, !"sign-return-address-all", i32 0}
!144 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!145 = !{i32 7, !"frame-pointer", i32 2}
!146 = distinct !DISubprogram(name: "countnegative_initSeed", scope: !9, file: !9, line: 55, type: !147, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !149)
!147 = !DISubroutineType(types: !148)
!148 = !{null}
!149 = !{}
!150 = !DILocation(line: 57, column: 22, scope: !146)
!151 = !DILocation(line: 58, column: 1, scope: !146)
!152 = distinct !DISubprogram(name: "countnegative_randomInteger", scope: !9, file: !9, line: 63, type: !153, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !149)
!153 = !DISubroutineType(types: !4)
!154 = !DILocation(line: 65, column: 28, scope: !152)
!155 = !DILocation(line: 65, column: 47, scope: !152)
!156 = !DILocation(line: 65, column: 55, scope: !152)
!157 = !DILocation(line: 65, column: 62, scope: !152)
!158 = !DILocation(line: 65, column: 22, scope: !152)
!159 = !DILocation(line: 66, column: 11, scope: !152)
!160 = !DILocation(line: 66, column: 3, scope: !152)
!161 = distinct !DISubprogram(name: "countnegative_initialize", scope: !9, file: !9, line: 72, type: !162, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !149)
!162 = !DISubroutineType(types: !163)
!163 = !{null, !164}
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 32)
!165 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 640, elements: !166)
!166 = !{!13}
!167 = !DILocalVariable(name: "Array", arg: 1, scope: !161, file: !9, line: 72, type: !164)
!168 = !DILocation(line: 0, scope: !161)
!169 = !DILocalVariable(name: "OuterIndex", scope: !161, file: !9, line: 74, type: !5)
!170 = !DILocation(line: 77, column: 9, scope: !171)
!171 = distinct !DILexicalBlock(scope: !161, file: !9, line: 77, column: 3)
!172 = !DILocation(line: 0, scope: !171)
!173 = !DILocation(line: 77, column: 36, scope: !174)
!174 = distinct !DILexicalBlock(scope: !171, file: !9, line: 77, column: 3)
!175 = !DILocation(line: 77, column: 3, scope: !171)
!176 = !DILocalVariable(name: "InnerIndex", scope: !161, file: !9, line: 74, type: !5)
!177 = !DILocation(line: 79, column: 11, scope: !178)
!178 = distinct !DILexicalBlock(scope: !174, file: !9, line: 79, column: 5)
!179 = !DILocation(line: 0, scope: !178)
!180 = !DILocation(line: 79, column: 38, scope: !181)
!181 = distinct !DILexicalBlock(scope: !178, file: !9, line: 79, column: 5)
!182 = !DILocation(line: 79, column: 5, scope: !178)
!183 = !DILocation(line: 80, column: 44, scope: !181)
!184 = !DILocation(line: 80, column: 7, scope: !181)
!185 = !DILocation(line: 80, column: 41, scope: !181)
!186 = !DILocation(line: 79, column: 59, scope: !181)
!187 = !DILocation(line: 79, column: 5, scope: !181)
!188 = distinct !{!188, !182, !189, !190}
!189 = !DILocation(line: 80, column: 72, scope: !178)
!190 = !{!"llvm.loop.mustprogress"}
!191 = !DILocation(line: 77, column: 57, scope: !174)
!192 = !DILocation(line: 77, column: 3, scope: !174)
!193 = distinct !{!193, !175, !194, !190}
!194 = !DILocation(line: 80, column: 72, scope: !171)
!195 = !DILocation(line: 81, column: 1, scope: !161)
!196 = distinct !DISubprogram(name: "countnegative_init", scope: !9, file: !9, line: 83, type: !147, scopeLine: 84, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !149)
!197 = !DILocation(line: 85, column: 3, scope: !196)
!198 = !DILocation(line: 86, column: 3, scope: !196)
!199 = !DILocation(line: 87, column: 1, scope: !196)
!200 = distinct !DISubprogram(name: "countnegative_return", scope: !9, file: !9, line: 89, type: !153, scopeLine: 90, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !149)
!201 = !DILocation(line: 91, column: 20, scope: !200)
!202 = !DILocation(line: 92, column: 20, scope: !200)
!203 = !DILocation(line: 91, column: 43, scope: !200)
!204 = !DILocation(line: 93, column: 20, scope: !200)
!205 = !DILocation(line: 92, column: 41, scope: !200)
!206 = !DILocation(line: 94, column: 20, scope: !200)
!207 = !DILocation(line: 93, column: 43, scope: !200)
!208 = !DILocalVariable(name: "checksum", scope: !200, file: !9, line: 91, type: !5)
!209 = !DILocation(line: 0, scope: !200)
!210 = !DILocation(line: 96, column: 23, scope: !200)
!211 = !DILocation(line: 96, column: 12, scope: !200)
!212 = !DILocation(line: 96, column: 3, scope: !200)
!213 = distinct !DISubprogram(name: "countnegative_sum", scope: !9, file: !9, line: 99, type: !162, scopeLine: 100, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !149)
!214 = !DILocalVariable(name: "Array", arg: 1, scope: !213, file: !9, line: 99, type: !164)
!215 = !DILocation(line: 0, scope: !213)
!216 = !DILocalVariable(name: "Ptotal", scope: !213, file: !9, line: 103, type: !5)
!217 = !DILocalVariable(name: "Ntotal", scope: !213, file: !9, line: 104, type: !5)
!218 = !DILocalVariable(name: "Pcnt", scope: !213, file: !9, line: 105, type: !5)
!219 = !DILocalVariable(name: "Ncnt", scope: !213, file: !9, line: 106, type: !5)
!220 = !DILocalVariable(name: "Outer", scope: !213, file: !9, line: 101, type: !5)
!221 = !DILocation(line: 109, column: 9, scope: !222)
!222 = distinct !DILexicalBlock(scope: !213, file: !9, line: 109, column: 3)
!223 = !DILocation(line: 105, column: 7, scope: !213)
!224 = !DILocation(line: 104, column: 7, scope: !213)
!225 = !DILocation(line: 103, column: 7, scope: !213)
!226 = !DILocation(line: 0, scope: !222)
!227 = !DILocation(line: 106, column: 7, scope: !213)
!228 = !DILocation(line: 109, column: 26, scope: !229)
!229 = distinct !DILexicalBlock(scope: !222, file: !9, line: 109, column: 3)
!230 = !DILocation(line: 109, column: 3, scope: !222)
!231 = !DILocalVariable(name: "Inner", scope: !213, file: !9, line: 101, type: !5)
!232 = !DILocation(line: 111, column: 11, scope: !233)
!233 = distinct !DILexicalBlock(scope: !229, file: !9, line: 111, column: 5)
!234 = !DILocation(line: 0, scope: !233)
!235 = !DILocation(line: 111, column: 28, scope: !236)
!236 = distinct !DILexicalBlock(scope: !233, file: !9, line: 111, column: 5)
!237 = !DILocation(line: 111, column: 5, scope: !233)
!238 = !DILocation(line: 112, column: 12, scope: !239)
!239 = distinct !DILexicalBlock(scope: !236, file: !9, line: 112, column: 12)
!240 = !DILocation(line: 112, column: 36, scope: !239)
!241 = !DILocation(line: 112, column: 12, scope: !236)
!242 = !DILocation(line: 113, column: 19, scope: !243)
!243 = distinct !DILexicalBlock(scope: !239, file: !9, line: 112, column: 43)
!244 = !DILocation(line: 113, column: 16, scope: !243)
!245 = !DILocation(line: 114, column: 13, scope: !243)
!246 = !DILocation(line: 115, column: 7, scope: !243)
!247 = !DILocation(line: 116, column: 19, scope: !248)
!248 = distinct !DILexicalBlock(scope: !239, file: !9, line: 115, column: 14)
!249 = !DILocation(line: 116, column: 16, scope: !248)
!250 = !DILocation(line: 117, column: 13, scope: !248)
!251 = !DILocation(line: 112, column: 39, scope: !239)
!252 = !DILocation(line: 111, column: 44, scope: !236)
!253 = !DILocation(line: 111, column: 5, scope: !236)
!254 = distinct !{!254, !237, !255, !190}
!255 = !DILocation(line: 118, column: 7, scope: !233)
!256 = !DILocation(line: 109, column: 42, scope: !229)
!257 = !DILocation(line: 109, column: 3, scope: !229)
!258 = distinct !{!258, !230, !259, !190}
!259 = !DILocation(line: 118, column: 7, scope: !222)
!260 = !DILocation(line: 120, column: 26, scope: !213)
!261 = !DILocation(line: 121, column: 24, scope: !213)
!262 = !DILocation(line: 122, column: 26, scope: !213)
!263 = !DILocation(line: 123, column: 24, scope: !213)
!264 = !DILocation(line: 124, column: 1, scope: !213)
!265 = distinct !DISubprogram(name: "countnegative_main", scope: !9, file: !9, line: 129, type: !147, scopeLine: 130, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !149)
!266 = !DILocation(line: 131, column: 3, scope: !265)
!267 = !DILocation(line: 132, column: 1, scope: !265)
!268 = distinct !DISubprogram(name: "main", scope: !9, file: !9, line: 134, type: !153, scopeLine: 135, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !149)
!269 = !DILocation(line: 136, column: 3, scope: !268)
!270 = !DILocation(line: 137, column: 3, scope: !268)
!271 = !DILocation(line: 139, column: 12, scope: !268)
!272 = !DILocation(line: 139, column: 3, scope: !268)
!273 = distinct !DISubprogram(name: "__absvdi2", scope: !24, file: !24, line: 22, type: !274, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !23, retainedNodes: !149)
!274 = !DISubroutineType(types: !149)
!275 = !DILocation(line: 25, column: 11, scope: !273)
!276 = !DILocation(line: 25, column: 9, scope: !273)
!277 = !DILocation(line: 26, column: 9, scope: !273)
!278 = !DILocation(line: 28, column: 20, scope: !273)
!279 = !DILocation(line: 28, column: 5, scope: !273)
!280 = distinct !DISubprogram(name: "compilerrt_abort_impl", scope: !76, file: !76, line: 57, type: !274, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !75, retainedNodes: !149)
!281 = !DILocation(line: 59, column: 1, scope: !280)
!282 = distinct !DISubprogram(name: "__absvsi2", scope: !26, file: !26, line: 22, type: !274, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, retainedNodes: !149)
!283 = !DILocation(line: 25, column: 11, scope: !282)
!284 = !DILocation(line: 25, column: 9, scope: !282)
!285 = !DILocation(line: 26, column: 9, scope: !282)
!286 = !DILocation(line: 28, column: 20, scope: !282)
!287 = !DILocation(line: 28, column: 5, scope: !282)
!288 = distinct !DISubprogram(name: "__addvdi3", scope: !30, file: !30, line: 22, type: !274, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !29, retainedNodes: !149)
!289 = !DILocation(line: 24, column: 27, scope: !288)
!290 = !DILocation(line: 25, column: 11, scope: !288)
!291 = !DILocation(line: 25, column: 9, scope: !288)
!292 = !DILocation(line: 27, column: 15, scope: !288)
!293 = !DILocation(line: 27, column: 13, scope: !288)
!294 = !DILocation(line: 28, column: 13, scope: !288)
!295 = !DILocation(line: 29, column: 5, scope: !288)
!296 = !DILocation(line: 32, column: 15, scope: !288)
!297 = !DILocation(line: 32, column: 13, scope: !288)
!298 = !DILocation(line: 33, column: 13, scope: !288)
!299 = !DILocation(line: 35, column: 5, scope: !288)
!300 = distinct !DISubprogram(name: "__addvsi3", scope: !32, file: !32, line: 22, type: !274, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !31, retainedNodes: !149)
!301 = !DILocation(line: 24, column: 27, scope: !300)
!302 = !DILocation(line: 25, column: 11, scope: !300)
!303 = !DILocation(line: 25, column: 9, scope: !300)
!304 = !DILocation(line: 27, column: 15, scope: !300)
!305 = !DILocation(line: 27, column: 13, scope: !300)
!306 = !DILocation(line: 28, column: 13, scope: !300)
!307 = !DILocation(line: 29, column: 5, scope: !300)
!308 = !DILocation(line: 32, column: 15, scope: !300)
!309 = !DILocation(line: 32, column: 13, scope: !300)
!310 = !DILocation(line: 33, column: 13, scope: !300)
!311 = !DILocation(line: 35, column: 5, scope: !300)
!312 = distinct !DISubprogram(name: "__ashldi3", scope: !36, file: !36, line: 24, type: !274, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !35, retainedNodes: !149)
!313 = !DILocation(line: 29, column: 11, scope: !312)
!314 = !DILocation(line: 29, column: 15, scope: !312)
!315 = !DILocation(line: 30, column: 11, scope: !312)
!316 = !DILocation(line: 30, column: 9, scope: !312)
!317 = !DILocation(line: 32, column: 18, scope: !312)
!318 = !DILocation(line: 32, column: 22, scope: !312)
!319 = !DILocation(line: 33, column: 33, scope: !312)
!320 = !DILocation(line: 33, column: 43, scope: !312)
!321 = !DILocation(line: 33, column: 37, scope: !312)
!322 = !DILocation(line: 33, column: 16, scope: !312)
!323 = !DILocation(line: 33, column: 18, scope: !312)
!324 = !DILocation(line: 33, column: 23, scope: !312)
!325 = !DILocation(line: 34, column: 5, scope: !312)
!326 = !DILocation(line: 37, column: 15, scope: !312)
!327 = !DILocation(line: 37, column: 13, scope: !312)
!328 = !DILocation(line: 38, column: 13, scope: !312)
!329 = !DILocation(line: 39, column: 33, scope: !312)
!330 = !DILocation(line: 39, column: 37, scope: !312)
!331 = !DILocation(line: 39, column: 18, scope: !312)
!332 = !DILocation(line: 39, column: 23, scope: !312)
!333 = !DILocation(line: 40, column: 32, scope: !312)
!334 = !DILocation(line: 40, column: 34, scope: !312)
!335 = !DILocation(line: 40, column: 39, scope: !312)
!336 = !DILocation(line: 40, column: 56, scope: !312)
!337 = !DILocation(line: 40, column: 77, scope: !312)
!338 = !DILocation(line: 40, column: 60, scope: !312)
!339 = !DILocation(line: 40, column: 45, scope: !312)
!340 = !DILocation(line: 40, column: 16, scope: !312)
!341 = !DILocation(line: 40, column: 18, scope: !312)
!342 = !DILocation(line: 40, column: 23, scope: !312)
!343 = !DILocation(line: 42, column: 19, scope: !312)
!344 = !DILocation(line: 42, column: 5, scope: !312)
!345 = !DILocation(line: 0, scope: !312)
!346 = !DILocation(line: 43, column: 1, scope: !312)
!347 = distinct !DISubprogram(name: "__ashrdi3", scope: !40, file: !40, line: 24, type: !274, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !39, retainedNodes: !149)
!348 = !DILocation(line: 29, column: 11, scope: !347)
!349 = !DILocation(line: 29, column: 15, scope: !347)
!350 = !DILocation(line: 30, column: 11, scope: !347)
!351 = !DILocation(line: 30, column: 9, scope: !347)
!352 = !DILocation(line: 33, column: 31, scope: !347)
!353 = !DILocation(line: 33, column: 33, scope: !347)
!354 = !DILocation(line: 33, column: 38, scope: !347)
!355 = !DILocation(line: 33, column: 16, scope: !347)
!356 = !DILocation(line: 33, column: 18, scope: !347)
!357 = !DILocation(line: 33, column: 23, scope: !347)
!358 = !DILocation(line: 34, column: 30, scope: !347)
!359 = !DILocation(line: 34, column: 32, scope: !347)
!360 = !DILocation(line: 34, column: 43, scope: !347)
!361 = !DILocation(line: 34, column: 37, scope: !347)
!362 = !DILocation(line: 34, column: 18, scope: !347)
!363 = !DILocation(line: 34, column: 22, scope: !347)
!364 = !DILocation(line: 35, column: 5, scope: !347)
!365 = !DILocation(line: 38, column: 15, scope: !347)
!366 = !DILocation(line: 38, column: 13, scope: !347)
!367 = !DILocation(line: 39, column: 13, scope: !347)
!368 = !DILocation(line: 40, column: 32, scope: !347)
!369 = !DILocation(line: 40, column: 34, scope: !347)
!370 = !DILocation(line: 40, column: 39, scope: !347)
!371 = !DILocation(line: 40, column: 16, scope: !347)
!372 = !DILocation(line: 40, column: 18, scope: !347)
!373 = !DILocation(line: 40, column: 24, scope: !347)
!374 = !DILocation(line: 41, column: 31, scope: !347)
!375 = !DILocation(line: 41, column: 33, scope: !347)
!376 = !DILocation(line: 41, column: 55, scope: !347)
!377 = !DILocation(line: 41, column: 38, scope: !347)
!378 = !DILocation(line: 41, column: 72, scope: !347)
!379 = !DILocation(line: 41, column: 76, scope: !347)
!380 = !DILocation(line: 41, column: 61, scope: !347)
!381 = !DILocation(line: 41, column: 18, scope: !347)
!382 = !DILocation(line: 41, column: 22, scope: !347)
!383 = !DILocation(line: 43, column: 19, scope: !347)
!384 = !DILocation(line: 43, column: 5, scope: !347)
!385 = !DILocation(line: 0, scope: !347)
!386 = !DILocation(line: 44, column: 1, scope: !347)
!387 = distinct !DISubprogram(name: "__clzdi2", scope: !44, file: !44, line: 22, type: !274, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !43, retainedNodes: !149)
!388 = !DILocation(line: 25, column: 7, scope: !387)
!389 = !DILocation(line: 25, column: 11, scope: !387)
!390 = !DILocation(line: 26, column: 26, scope: !387)
!391 = !DILocation(line: 26, column: 28, scope: !387)
!392 = !DILocation(line: 26, column: 33, scope: !387)
!393 = !DILocation(line: 27, column: 29, scope: !387)
!394 = !DILocation(line: 27, column: 31, scope: !387)
!395 = !DILocation(line: 27, column: 49, scope: !387)
!396 = !DILocation(line: 27, column: 42, scope: !387)
!397 = !DILocation(line: 27, column: 12, scope: !387)
!398 = !{i32 0, i32 33}
!399 = !DILocation(line: 28, column: 15, scope: !387)
!400 = !DILocation(line: 27, column: 59, scope: !387)
!401 = !DILocation(line: 27, column: 5, scope: !387)
!402 = distinct !DISubprogram(name: "__clzsi2", scope: !46, file: !46, line: 22, type: !274, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !45, retainedNodes: !149)
!403 = !DILocation(line: 25, column: 34, scope: !402)
!404 = !DILocation(line: 25, column: 40, scope: !402)
!405 = !DILocation(line: 26, column: 14, scope: !402)
!406 = !DILocation(line: 26, column: 7, scope: !402)
!407 = !DILocation(line: 29, column: 13, scope: !402)
!408 = !DILocation(line: 29, column: 23, scope: !402)
!409 = !DILocation(line: 29, column: 29, scope: !402)
!410 = !DILocation(line: 30, column: 13, scope: !402)
!411 = !DILocation(line: 30, column: 7, scope: !402)
!412 = !DILocation(line: 31, column: 7, scope: !402)
!413 = !DILocation(line: 33, column: 13, scope: !402)
!414 = !DILocation(line: 33, column: 21, scope: !402)
!415 = !DILocation(line: 33, column: 27, scope: !402)
!416 = !DILocation(line: 34, column: 13, scope: !402)
!417 = !DILocation(line: 34, column: 7, scope: !402)
!418 = !DILocation(line: 35, column: 7, scope: !402)
!419 = !DILocation(line: 37, column: 13, scope: !402)
!420 = !DILocation(line: 37, column: 20, scope: !402)
!421 = !DILocation(line: 37, column: 26, scope: !402)
!422 = !DILocation(line: 38, column: 13, scope: !402)
!423 = !DILocation(line: 38, column: 7, scope: !402)
!424 = !DILocation(line: 39, column: 7, scope: !402)
!425 = !DILocation(line: 52, column: 20, scope: !402)
!426 = !DILocation(line: 52, column: 37, scope: !402)
!427 = !DILocation(line: 52, column: 25, scope: !402)
!428 = !DILocation(line: 52, column: 14, scope: !402)
!429 = !DILocation(line: 52, column: 5, scope: !402)
!430 = distinct !DISubprogram(name: "__cmpdi2", scope: !50, file: !50, line: 23, type: !274, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !49, retainedNodes: !149)
!431 = !DILocation(line: 26, column: 7, scope: !430)
!432 = !DILocation(line: 26, column: 11, scope: !430)
!433 = !DILocation(line: 28, column: 7, scope: !430)
!434 = !DILocation(line: 28, column: 11, scope: !430)
!435 = !DILocation(line: 29, column: 11, scope: !430)
!436 = !DILocation(line: 29, column: 13, scope: !430)
!437 = !DILocation(line: 29, column: 22, scope: !430)
!438 = !DILocation(line: 29, column: 24, scope: !430)
!439 = !DILocation(line: 29, column: 18, scope: !430)
!440 = !DILocation(line: 29, column: 9, scope: !430)
!441 = !DILocation(line: 30, column: 9, scope: !430)
!442 = !DILocation(line: 31, column: 11, scope: !430)
!443 = !DILocation(line: 31, column: 13, scope: !430)
!444 = !DILocation(line: 31, column: 22, scope: !430)
!445 = !DILocation(line: 31, column: 24, scope: !430)
!446 = !DILocation(line: 31, column: 18, scope: !430)
!447 = !DILocation(line: 31, column: 9, scope: !430)
!448 = !DILocation(line: 32, column: 9, scope: !430)
!449 = !DILocation(line: 33, column: 13, scope: !430)
!450 = !DILocation(line: 33, column: 23, scope: !430)
!451 = !DILocation(line: 33, column: 17, scope: !430)
!452 = !DILocation(line: 33, column: 9, scope: !430)
!453 = !DILocation(line: 34, column: 9, scope: !430)
!454 = !DILocation(line: 35, column: 13, scope: !430)
!455 = !DILocation(line: 35, column: 23, scope: !430)
!456 = !DILocation(line: 35, column: 17, scope: !430)
!457 = !DILocation(line: 35, column: 9, scope: !430)
!458 = !DILocation(line: 36, column: 9, scope: !430)
!459 = !DILocation(line: 37, column: 5, scope: !430)
!460 = !DILocation(line: 0, scope: !430)
!461 = !DILocation(line: 38, column: 1, scope: !430)
!462 = distinct !DISubprogram(name: "__aeabi_lcmp", scope: !50, file: !50, line: 46, type: !274, scopeLine: 47, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !49, retainedNodes: !149)
!463 = !DILocation(line: 48, column: 9, scope: !462)
!464 = !DILocation(line: 48, column: 24, scope: !462)
!465 = !DILocation(line: 48, column: 2, scope: !462)
!466 = distinct !DISubprogram(name: "__ctzdi2", scope: !54, file: !54, line: 22, type: !274, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !53, retainedNodes: !149)
!467 = !DILocation(line: 25, column: 7, scope: !466)
!468 = !DILocation(line: 25, column: 11, scope: !466)
!469 = !DILocation(line: 26, column: 28, scope: !466)
!470 = !DILocation(line: 26, column: 32, scope: !466)
!471 = !DILocation(line: 27, column: 29, scope: !466)
!472 = !DILocation(line: 27, column: 31, scope: !466)
!473 = !DILocation(line: 27, column: 41, scope: !466)
!474 = !DILocation(line: 27, column: 12, scope: !466)
!475 = !DILocation(line: 28, column: 18, scope: !466)
!476 = !DILocation(line: 27, column: 59, scope: !466)
!477 = !DILocation(line: 27, column: 5, scope: !466)
!478 = distinct !DISubprogram(name: "__ctzsi2", scope: !56, file: !56, line: 22, type: !274, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !55, retainedNodes: !149)
!479 = !DILocation(line: 25, column: 20, scope: !478)
!480 = !DILocation(line: 25, column: 34, scope: !478)
!481 = !DILocation(line: 25, column: 40, scope: !478)
!482 = !DILocation(line: 26, column: 7, scope: !478)
!483 = !DILocation(line: 29, column: 13, scope: !478)
!484 = !DILocation(line: 29, column: 23, scope: !478)
!485 = !DILocation(line: 29, column: 29, scope: !478)
!486 = !DILocation(line: 30, column: 7, scope: !478)
!487 = !DILocation(line: 31, column: 7, scope: !478)
!488 = !DILocation(line: 33, column: 13, scope: !478)
!489 = !DILocation(line: 33, column: 21, scope: !478)
!490 = !DILocation(line: 33, column: 27, scope: !478)
!491 = !DILocation(line: 34, column: 7, scope: !478)
!492 = !DILocation(line: 35, column: 7, scope: !478)
!493 = !DILocation(line: 37, column: 13, scope: !478)
!494 = !DILocation(line: 37, column: 20, scope: !478)
!495 = !DILocation(line: 37, column: 26, scope: !478)
!496 = !DILocation(line: 38, column: 7, scope: !478)
!497 = !DILocation(line: 40, column: 7, scope: !478)
!498 = !DILocation(line: 56, column: 25, scope: !478)
!499 = !DILocation(line: 56, column: 20, scope: !478)
!500 = !DILocation(line: 56, column: 44, scope: !478)
!501 = !DILocation(line: 56, column: 32, scope: !478)
!502 = !DILocation(line: 56, column: 14, scope: !478)
!503 = !DILocation(line: 56, column: 5, scope: !478)
!504 = distinct !DISubprogram(name: "__divdi3", scope: !60, file: !60, line: 20, type: !274, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !59, retainedNodes: !149)
!505 = !DILocation(line: 23, column: 20, scope: !504)
!506 = !DILocation(line: 24, column: 20, scope: !504)
!507 = !DILocation(line: 25, column: 12, scope: !504)
!508 = !DILocation(line: 25, column: 19, scope: !504)
!509 = !DILocation(line: 26, column: 12, scope: !504)
!510 = !DILocation(line: 26, column: 19, scope: !504)
!511 = !DILocation(line: 27, column: 9, scope: !504)
!512 = !DILocation(line: 28, column: 13, scope: !504)
!513 = !DILocation(line: 28, column: 44, scope: !504)
!514 = !DILocation(line: 28, column: 51, scope: !504)
!515 = !DILocation(line: 28, column: 5, scope: !504)
!516 = distinct !DISubprogram(name: "__udivmoddi4", scope: !118, file: !118, line: 24, type: !274, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !117, retainedNodes: !149)
!517 = !DILocation(line: 29, column: 7, scope: !516)
!518 = !DILocation(line: 29, column: 11, scope: !516)
!519 = !DILocation(line: 31, column: 7, scope: !516)
!520 = !DILocation(line: 31, column: 11, scope: !516)
!521 = !DILocation(line: 36, column: 11, scope: !516)
!522 = !DILocation(line: 36, column: 13, scope: !516)
!523 = !DILocation(line: 36, column: 18, scope: !516)
!524 = !DILocation(line: 36, column: 9, scope: !516)
!525 = !DILocation(line: 38, column: 15, scope: !516)
!526 = !DILocation(line: 38, column: 17, scope: !516)
!527 = !DILocation(line: 38, column: 22, scope: !516)
!528 = !DILocation(line: 38, column: 13, scope: !516)
!529 = !DILocation(line: 44, column: 17, scope: !516)
!530 = !DILocation(line: 45, column: 28, scope: !516)
!531 = !DILocation(line: 45, column: 38, scope: !516)
!532 = !DILocation(line: 45, column: 32, scope: !516)
!533 = !DILocation(line: 45, column: 24, scope: !516)
!534 = !DILocation(line: 45, column: 22, scope: !516)
!535 = !DILocation(line: 45, column: 17, scope: !516)
!536 = !DILocation(line: 46, column: 24, scope: !516)
!537 = !DILocation(line: 46, column: 34, scope: !516)
!538 = !DILocation(line: 46, column: 28, scope: !516)
!539 = !DILocation(line: 46, column: 20, scope: !516)
!540 = !DILocation(line: 46, column: 13, scope: !516)
!541 = !DILocation(line: 52, column: 13, scope: !516)
!542 = !DILocation(line: 53, column: 24, scope: !516)
!543 = !DILocation(line: 53, column: 20, scope: !516)
!544 = !DILocation(line: 53, column: 18, scope: !516)
!545 = !DILocation(line: 53, column: 13, scope: !516)
!546 = !DILocation(line: 54, column: 9, scope: !516)
!547 = !DILocation(line: 57, column: 13, scope: !516)
!548 = !DILocation(line: 57, column: 17, scope: !516)
!549 = !DILocation(line: 57, column: 9, scope: !516)
!550 = !DILocation(line: 59, column: 15, scope: !516)
!551 = !DILocation(line: 59, column: 17, scope: !516)
!552 = !DILocation(line: 59, column: 22, scope: !516)
!553 = !DILocation(line: 59, column: 13, scope: !516)
!554 = !DILocation(line: 65, column: 17, scope: !516)
!555 = !DILocation(line: 66, column: 26, scope: !516)
!556 = !DILocation(line: 66, column: 28, scope: !516)
!557 = !DILocation(line: 66, column: 39, scope: !516)
!558 = !DILocation(line: 66, column: 33, scope: !516)
!559 = !DILocation(line: 66, column: 24, scope: !516)
!560 = !DILocation(line: 66, column: 22, scope: !516)
!561 = !DILocation(line: 66, column: 17, scope: !516)
!562 = !DILocation(line: 67, column: 22, scope: !516)
!563 = !DILocation(line: 67, column: 24, scope: !516)
!564 = !DILocation(line: 67, column: 35, scope: !516)
!565 = !DILocation(line: 67, column: 29, scope: !516)
!566 = !DILocation(line: 67, column: 20, scope: !516)
!567 = !DILocation(line: 67, column: 13, scope: !516)
!568 = !DILocation(line: 70, column: 17, scope: !516)
!569 = !DILocation(line: 70, column: 21, scope: !516)
!570 = !DILocation(line: 70, column: 13, scope: !516)
!571 = !DILocation(line: 76, column: 17, scope: !516)
!572 = !DILocation(line: 78, column: 30, scope: !516)
!573 = !DILocation(line: 78, column: 32, scope: !516)
!574 = !DILocation(line: 78, column: 41, scope: !516)
!575 = !DILocation(line: 78, column: 43, scope: !516)
!576 = !DILocation(line: 78, column: 37, scope: !516)
!577 = !DILocation(line: 78, column: 19, scope: !516)
!578 = !DILocation(line: 78, column: 21, scope: !516)
!579 = !DILocation(line: 78, column: 26, scope: !516)
!580 = !DILocation(line: 79, column: 21, scope: !516)
!581 = !DILocation(line: 79, column: 25, scope: !516)
!582 = !DILocation(line: 80, column: 26, scope: !516)
!583 = !DILocation(line: 80, column: 22, scope: !516)
!584 = !DILocation(line: 81, column: 13, scope: !516)
!585 = !DILocation(line: 82, column: 22, scope: !516)
!586 = !DILocation(line: 82, column: 24, scope: !516)
!587 = !DILocation(line: 82, column: 33, scope: !516)
!588 = !DILocation(line: 82, column: 35, scope: !516)
!589 = !DILocation(line: 82, column: 29, scope: !516)
!590 = !DILocation(line: 82, column: 20, scope: !516)
!591 = !DILocation(line: 82, column: 13, scope: !516)
!592 = !DILocation(line: 88, column: 16, scope: !516)
!593 = !DILocation(line: 88, column: 18, scope: !516)
!594 = !DILocation(line: 88, column: 28, scope: !516)
!595 = !DILocation(line: 88, column: 30, scope: !516)
!596 = !DILocation(line: 88, column: 35, scope: !516)
!597 = !DILocation(line: 88, column: 23, scope: !516)
!598 = !DILocation(line: 88, column: 41, scope: !516)
!599 = !DILocation(line: 88, column: 13, scope: !516)
!600 = !DILocation(line: 90, column: 17, scope: !516)
!601 = !DILocation(line: 92, column: 31, scope: !516)
!602 = !DILocation(line: 92, column: 21, scope: !516)
!603 = !DILocation(line: 92, column: 25, scope: !516)
!604 = !DILocation(line: 93, column: 30, scope: !516)
!605 = !DILocation(line: 93, column: 32, scope: !516)
!606 = !DILocation(line: 93, column: 42, scope: !516)
!607 = !DILocation(line: 93, column: 44, scope: !516)
!608 = !DILocation(line: 93, column: 49, scope: !516)
!609 = !DILocation(line: 93, column: 37, scope: !516)
!610 = !DILocation(line: 93, column: 19, scope: !516)
!611 = !DILocation(line: 93, column: 21, scope: !516)
!612 = !DILocation(line: 93, column: 26, scope: !516)
!613 = !DILocation(line: 94, column: 26, scope: !516)
!614 = !DILocation(line: 94, column: 22, scope: !516)
!615 = !DILocation(line: 95, column: 13, scope: !516)
!616 = !DILocation(line: 96, column: 22, scope: !516)
!617 = !DILocation(line: 96, column: 24, scope: !516)
!618 = !DILocation(line: 96, column: 48, scope: !516)
!619 = !DILocation(line: 96, column: 50, scope: !516)
!620 = !DILocation(line: 96, column: 32, scope: !516)
!621 = !DILocation(line: 96, column: 29, scope: !516)
!622 = !DILocation(line: 96, column: 20, scope: !516)
!623 = !DILocation(line: 96, column: 13, scope: !516)
!624 = !DILocation(line: 102, column: 30, scope: !516)
!625 = !DILocation(line: 102, column: 32, scope: !516)
!626 = !DILocation(line: 102, column: 14, scope: !516)
!627 = !DILocation(line: 102, column: 56, scope: !516)
!628 = !DILocation(line: 102, column: 58, scope: !516)
!629 = !DILocation(line: 102, column: 40, scope: !516)
!630 = !DILocation(line: 102, column: 38, scope: !516)
!631 = !DILocation(line: 104, column: 16, scope: !516)
!632 = !DILocation(line: 104, column: 13, scope: !516)
!633 = !DILocation(line: 106, column: 16, scope: !516)
!634 = !DILocation(line: 107, column: 26, scope: !516)
!635 = !DILocation(line: 107, column: 22, scope: !516)
!636 = !DILocation(line: 107, column: 17, scope: !516)
!637 = !DILocation(line: 108, column: 13, scope: !516)
!638 = !DILocation(line: 110, column: 9, scope: !516)
!639 = !DILocation(line: 113, column: 13, scope: !516)
!640 = !DILocation(line: 113, column: 17, scope: !516)
!641 = !DILocation(line: 114, column: 24, scope: !516)
!642 = !DILocation(line: 114, column: 45, scope: !516)
!643 = !DILocation(line: 114, column: 28, scope: !516)
!644 = !DILocation(line: 114, column: 11, scope: !516)
!645 = !DILocation(line: 114, column: 13, scope: !516)
!646 = !DILocation(line: 114, column: 18, scope: !516)
!647 = !DILocation(line: 116, column: 22, scope: !516)
!648 = !DILocation(line: 116, column: 24, scope: !516)
!649 = !DILocation(line: 116, column: 29, scope: !516)
!650 = !DILocation(line: 116, column: 11, scope: !516)
!651 = !DILocation(line: 116, column: 13, scope: !516)
!652 = !DILocation(line: 116, column: 18, scope: !516)
!653 = !DILocation(line: 117, column: 22, scope: !516)
!654 = !DILocation(line: 117, column: 24, scope: !516)
!655 = !DILocation(line: 117, column: 46, scope: !516)
!656 = !DILocation(line: 117, column: 29, scope: !516)
!657 = !DILocation(line: 117, column: 60, scope: !516)
!658 = !DILocation(line: 117, column: 64, scope: !516)
!659 = !DILocation(line: 117, column: 53, scope: !516)
!660 = !DILocation(line: 117, column: 13, scope: !516)
!661 = !DILocation(line: 117, column: 17, scope: !516)
!662 = !DILocation(line: 118, column: 5, scope: !516)
!663 = !DILocation(line: 121, column: 15, scope: !516)
!664 = !DILocation(line: 121, column: 17, scope: !516)
!665 = !DILocation(line: 121, column: 22, scope: !516)
!666 = !DILocation(line: 121, column: 13, scope: !516)
!667 = !DILocation(line: 127, column: 22, scope: !516)
!668 = !DILocation(line: 127, column: 43, scope: !516)
!669 = !DILocation(line: 127, column: 17, scope: !516)
!670 = !DILocation(line: 129, column: 21, scope: !516)
!671 = !DILocation(line: 130, column: 32, scope: !516)
!672 = !DILocation(line: 130, column: 43, scope: !516)
!673 = !DILocation(line: 130, column: 47, scope: !516)
!674 = !DILocation(line: 130, column: 36, scope: !516)
!675 = !DILocation(line: 130, column: 28, scope: !516)
!676 = !DILocation(line: 130, column: 26, scope: !516)
!677 = !DILocation(line: 130, column: 21, scope: !516)
!678 = !DILocation(line: 131, column: 25, scope: !516)
!679 = !DILocation(line: 131, column: 29, scope: !516)
!680 = !DILocation(line: 131, column: 21, scope: !516)
!681 = !DILocation(line: 132, column: 30, scope: !516)
!682 = !DILocation(line: 132, column: 21, scope: !516)
!683 = !DILocation(line: 133, column: 40, scope: !516)
!684 = !DILocation(line: 133, column: 22, scope: !516)
!685 = !DILocation(line: 134, column: 30, scope: !516)
!686 = !DILocation(line: 134, column: 32, scope: !516)
!687 = !DILocation(line: 134, column: 37, scope: !516)
!688 = !DILocation(line: 134, column: 19, scope: !516)
!689 = !DILocation(line: 134, column: 21, scope: !516)
!690 = !DILocation(line: 134, column: 26, scope: !516)
!691 = !DILocation(line: 135, column: 30, scope: !516)
!692 = !DILocation(line: 135, column: 32, scope: !516)
!693 = !DILocation(line: 135, column: 54, scope: !516)
!694 = !DILocation(line: 135, column: 37, scope: !516)
!695 = !DILocation(line: 135, column: 68, scope: !516)
!696 = !DILocation(line: 135, column: 72, scope: !516)
!697 = !DILocation(line: 135, column: 61, scope: !516)
!698 = !DILocation(line: 135, column: 21, scope: !516)
!699 = !DILocation(line: 135, column: 25, scope: !516)
!700 = !DILocation(line: 136, column: 26, scope: !516)
!701 = !DILocation(line: 136, column: 17, scope: !516)
!702 = !DILocation(line: 142, column: 55, scope: !516)
!703 = !DILocation(line: 142, column: 37, scope: !516)
!704 = !DILocation(line: 142, column: 35, scope: !516)
!705 = !DILocation(line: 142, column: 78, scope: !516)
!706 = !DILocation(line: 142, column: 80, scope: !516)
!707 = !DILocation(line: 142, column: 62, scope: !516)
!708 = !DILocation(line: 142, column: 60, scope: !516)
!709 = !DILocation(line: 147, column: 20, scope: !516)
!710 = !DILocation(line: 147, column: 17, scope: !516)
!711 = !DILocation(line: 149, column: 21, scope: !516)
!712 = !DILocation(line: 149, column: 25, scope: !516)
!713 = !DILocation(line: 150, column: 32, scope: !516)
!714 = !DILocation(line: 150, column: 19, scope: !516)
!715 = !DILocation(line: 150, column: 21, scope: !516)
!716 = !DILocation(line: 150, column: 26, scope: !516)
!717 = !DILocation(line: 151, column: 19, scope: !516)
!718 = !DILocation(line: 151, column: 21, scope: !516)
!719 = !DILocation(line: 151, column: 26, scope: !516)
!720 = !DILocation(line: 152, column: 29, scope: !516)
!721 = !DILocation(line: 152, column: 31, scope: !516)
!722 = !DILocation(line: 152, column: 21, scope: !516)
!723 = !DILocation(line: 152, column: 25, scope: !516)
!724 = !DILocation(line: 153, column: 13, scope: !516)
!725 = !DILocation(line: 154, column: 25, scope: !516)
!726 = !DILocation(line: 154, column: 22, scope: !516)
!727 = !DILocation(line: 156, column: 21, scope: !516)
!728 = !DILocation(line: 156, column: 25, scope: !516)
!729 = !DILocation(line: 157, column: 32, scope: !516)
!730 = !DILocation(line: 157, column: 53, scope: !516)
!731 = !DILocation(line: 157, column: 36, scope: !516)
!732 = !DILocation(line: 157, column: 19, scope: !516)
!733 = !DILocation(line: 157, column: 21, scope: !516)
!734 = !DILocation(line: 157, column: 26, scope: !516)
!735 = !DILocation(line: 158, column: 30, scope: !516)
!736 = !DILocation(line: 158, column: 32, scope: !516)
!737 = !DILocation(line: 158, column: 37, scope: !516)
!738 = !DILocation(line: 158, column: 19, scope: !516)
!739 = !DILocation(line: 158, column: 21, scope: !516)
!740 = !DILocation(line: 158, column: 26, scope: !516)
!741 = !DILocation(line: 159, column: 30, scope: !516)
!742 = !DILocation(line: 159, column: 32, scope: !516)
!743 = !DILocation(line: 159, column: 54, scope: !516)
!744 = !DILocation(line: 159, column: 37, scope: !516)
!745 = !DILocation(line: 159, column: 68, scope: !516)
!746 = !DILocation(line: 159, column: 72, scope: !516)
!747 = !DILocation(line: 159, column: 61, scope: !516)
!748 = !DILocation(line: 159, column: 21, scope: !516)
!749 = !DILocation(line: 159, column: 25, scope: !516)
!750 = !DILocation(line: 160, column: 13, scope: !516)
!751 = !DILocation(line: 163, column: 31, scope: !516)
!752 = !DILocation(line: 163, column: 53, scope: !516)
!753 = !DILocation(line: 163, column: 35, scope: !516)
!754 = !DILocation(line: 163, column: 21, scope: !516)
!755 = !DILocation(line: 163, column: 25, scope: !516)
!756 = !DILocation(line: 164, column: 31, scope: !516)
!757 = !DILocation(line: 164, column: 33, scope: !516)
!758 = !DILocation(line: 164, column: 56, scope: !516)
!759 = !DILocation(line: 164, column: 38, scope: !516)
!760 = !DILocation(line: 165, column: 33, scope: !516)
!761 = !DILocation(line: 165, column: 44, scope: !516)
!762 = !DILocation(line: 165, column: 37, scope: !516)
!763 = !DILocation(line: 164, column: 63, scope: !516)
!764 = !DILocation(line: 164, column: 19, scope: !516)
!765 = !DILocation(line: 164, column: 21, scope: !516)
!766 = !DILocation(line: 164, column: 26, scope: !516)
!767 = !DILocation(line: 166, column: 19, scope: !516)
!768 = !DILocation(line: 166, column: 21, scope: !516)
!769 = !DILocation(line: 166, column: 26, scope: !516)
!770 = !DILocation(line: 167, column: 29, scope: !516)
!771 = !DILocation(line: 167, column: 31, scope: !516)
!772 = !DILocation(line: 167, column: 43, scope: !516)
!773 = !DILocation(line: 167, column: 36, scope: !516)
!774 = !DILocation(line: 167, column: 21, scope: !516)
!775 = !DILocation(line: 167, column: 25, scope: !516)
!776 = !DILocation(line: 169, column: 9, scope: !516)
!777 = !DILocation(line: 176, column: 34, scope: !516)
!778 = !DILocation(line: 176, column: 36, scope: !516)
!779 = !DILocation(line: 176, column: 18, scope: !516)
!780 = !DILocation(line: 176, column: 60, scope: !516)
!781 = !DILocation(line: 176, column: 62, scope: !516)
!782 = !DILocation(line: 176, column: 44, scope: !516)
!783 = !DILocation(line: 176, column: 42, scope: !516)
!784 = !DILocation(line: 178, column: 20, scope: !516)
!785 = !DILocation(line: 178, column: 17, scope: !516)
!786 = !DILocation(line: 180, column: 21, scope: !516)
!787 = !DILocation(line: 181, column: 30, scope: !516)
!788 = !DILocation(line: 181, column: 26, scope: !516)
!789 = !DILocation(line: 181, column: 21, scope: !516)
!790 = !DILocation(line: 182, column: 17, scope: !516)
!791 = !DILocation(line: 184, column: 13, scope: !516)
!792 = !DILocation(line: 187, column: 17, scope: !516)
!793 = !DILocation(line: 187, column: 21, scope: !516)
!794 = !DILocation(line: 188, column: 20, scope: !516)
!795 = !DILocation(line: 188, column: 17, scope: !516)
!796 = !DILocation(line: 190, column: 32, scope: !516)
!797 = !DILocation(line: 190, column: 19, scope: !516)
!798 = !DILocation(line: 190, column: 21, scope: !516)
!799 = !DILocation(line: 190, column: 26, scope: !516)
!800 = !DILocation(line: 191, column: 19, scope: !516)
!801 = !DILocation(line: 191, column: 21, scope: !516)
!802 = !DILocation(line: 191, column: 26, scope: !516)
!803 = !DILocation(line: 192, column: 29, scope: !516)
!804 = !DILocation(line: 192, column: 31, scope: !516)
!805 = !DILocation(line: 192, column: 21, scope: !516)
!806 = !DILocation(line: 192, column: 25, scope: !516)
!807 = !DILocation(line: 193, column: 13, scope: !516)
!808 = !DILocation(line: 196, column: 32, scope: !516)
!809 = !DILocation(line: 196, column: 53, scope: !516)
!810 = !DILocation(line: 196, column: 36, scope: !516)
!811 = !DILocation(line: 196, column: 19, scope: !516)
!812 = !DILocation(line: 196, column: 21, scope: !516)
!813 = !DILocation(line: 196, column: 26, scope: !516)
!814 = !DILocation(line: 197, column: 30, scope: !516)
!815 = !DILocation(line: 197, column: 32, scope: !516)
!816 = !DILocation(line: 197, column: 37, scope: !516)
!817 = !DILocation(line: 197, column: 19, scope: !516)
!818 = !DILocation(line: 197, column: 21, scope: !516)
!819 = !DILocation(line: 197, column: 26, scope: !516)
!820 = !DILocation(line: 198, column: 30, scope: !516)
!821 = !DILocation(line: 198, column: 32, scope: !516)
!822 = !DILocation(line: 198, column: 54, scope: !516)
!823 = !DILocation(line: 198, column: 37, scope: !516)
!824 = !DILocation(line: 198, column: 68, scope: !516)
!825 = !DILocation(line: 198, column: 72, scope: !516)
!826 = !DILocation(line: 198, column: 61, scope: !516)
!827 = !DILocation(line: 198, column: 21, scope: !516)
!828 = !DILocation(line: 198, column: 25, scope: !516)
!829 = !DILocation(line: 0, scope: !516)
!830 = !DILocation(line: 209, column: 5, scope: !516)
!831 = !DILocation(line: 209, column: 15, scope: !516)
!832 = !DILocation(line: 212, column: 23, scope: !516)
!833 = !DILocation(line: 212, column: 25, scope: !516)
!834 = !DILocation(line: 212, column: 43, scope: !516)
!835 = !DILocation(line: 212, column: 36, scope: !516)
!836 = !DILocation(line: 212, column: 11, scope: !516)
!837 = !DILocation(line: 212, column: 13, scope: !516)
!838 = !DILocation(line: 212, column: 18, scope: !516)
!839 = !DILocation(line: 213, column: 41, scope: !516)
!840 = !DILocation(line: 213, column: 43, scope: !516)
!841 = !DILocation(line: 213, column: 36, scope: !516)
!842 = !DILocation(line: 213, column: 13, scope: !516)
!843 = !DILocation(line: 213, column: 18, scope: !516)
!844 = !DILocation(line: 214, column: 23, scope: !516)
!845 = !DILocation(line: 214, column: 25, scope: !516)
!846 = !DILocation(line: 214, column: 43, scope: !516)
!847 = !DILocation(line: 214, column: 36, scope: !516)
!848 = !DILocation(line: 214, column: 11, scope: !516)
!849 = !DILocation(line: 214, column: 13, scope: !516)
!850 = !DILocation(line: 214, column: 18, scope: !516)
!851 = !DILocation(line: 215, column: 30, scope: !516)
!852 = !DILocation(line: 215, column: 36, scope: !516)
!853 = !DILocation(line: 215, column: 13, scope: !516)
!854 = !DILocation(line: 215, column: 18, scope: !516)
!855 = !DILocation(line: 223, column: 37, scope: !516)
!856 = !DILocation(line: 223, column: 45, scope: !516)
!857 = !DILocation(line: 223, column: 49, scope: !516)
!858 = !DILocation(line: 225, column: 24, scope: !516)
!859 = !DILocation(line: 225, column: 11, scope: !516)
!860 = !DILocation(line: 225, column: 15, scope: !516)
!861 = !DILocation(line: 226, column: 5, scope: !516)
!862 = !DILocation(line: 224, column: 19, scope: !516)
!863 = !DILocation(line: 224, column: 17, scope: !516)
!864 = !DILocation(line: 209, column: 20, scope: !516)
!865 = distinct !{!865, !830, !861, !190}
!866 = !DILocation(line: 227, column: 16, scope: !516)
!867 = !DILocation(line: 227, column: 20, scope: !516)
!868 = !DILocation(line: 227, column: 28, scope: !516)
!869 = !DILocation(line: 227, column: 26, scope: !516)
!870 = !DILocation(line: 227, column: 7, scope: !516)
!871 = !DILocation(line: 227, column: 11, scope: !516)
!872 = !DILocation(line: 228, column: 9, scope: !516)
!873 = !DILocation(line: 229, column: 18, scope: !516)
!874 = !DILocation(line: 229, column: 14, scope: !516)
!875 = !DILocation(line: 229, column: 9, scope: !516)
!876 = !DILocation(line: 230, column: 14, scope: !516)
!877 = !DILocation(line: 230, column: 5, scope: !516)
!878 = !DILocation(line: 231, column: 1, scope: !516)
!879 = distinct !DISubprogram(name: "__divmoddi4", scope: !62, file: !62, line: 20, type: !274, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !61, retainedNodes: !149)
!880 = !DILocation(line: 22, column: 14, scope: !879)
!881 = !DILocation(line: 23, column: 16, scope: !879)
!882 = !DILocation(line: 23, column: 12, scope: !879)
!883 = !DILocation(line: 23, column: 8, scope: !879)
!884 = !DILocation(line: 24, column: 3, scope: !879)
!885 = distinct !DISubprogram(name: "__divmodsi4", scope: !64, file: !64, line: 20, type: !274, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !63, retainedNodes: !149)
!886 = !DILocation(line: 22, column: 14, scope: !885)
!887 = !DILocation(line: 23, column: 16, scope: !885)
!888 = !DILocation(line: 23, column: 12, scope: !885)
!889 = !DILocation(line: 23, column: 8, scope: !885)
!890 = !DILocation(line: 24, column: 3, scope: !885)
!891 = distinct !DISubprogram(name: "__divsi3", scope: !66, file: !66, line: 22, type: !274, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !65, retainedNodes: !149)
!892 = !DILocation(line: 25, column: 20, scope: !891)
!893 = !DILocation(line: 26, column: 20, scope: !891)
!894 = !DILocation(line: 27, column: 12, scope: !891)
!895 = !DILocation(line: 27, column: 19, scope: !891)
!896 = !DILocation(line: 28, column: 12, scope: !891)
!897 = !DILocation(line: 28, column: 19, scope: !891)
!898 = !DILocation(line: 29, column: 9, scope: !891)
!899 = !DILocation(line: 36, column: 22, scope: !891)
!900 = !DILocation(line: 36, column: 33, scope: !891)
!901 = !DILocation(line: 36, column: 40, scope: !891)
!902 = !DILocation(line: 36, column: 5, scope: !891)
!903 = distinct !DISubprogram(name: "__ffsdi2", scope: !70, file: !70, line: 22, type: !274, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !69, retainedNodes: !149)
!904 = !DILocation(line: 25, column: 7, scope: !903)
!905 = !DILocation(line: 25, column: 11, scope: !903)
!906 = !DILocation(line: 26, column: 13, scope: !903)
!907 = !DILocation(line: 26, column: 17, scope: !903)
!908 = !DILocation(line: 26, column: 9, scope: !903)
!909 = !DILocation(line: 28, column: 15, scope: !903)
!910 = !DILocation(line: 28, column: 17, scope: !903)
!911 = !DILocation(line: 28, column: 22, scope: !903)
!912 = !DILocation(line: 28, column: 13, scope: !903)
!913 = !DILocation(line: 29, column: 13, scope: !903)
!914 = !DILocation(line: 30, column: 32, scope: !903)
!915 = !DILocation(line: 30, column: 34, scope: !903)
!916 = !DILocation(line: 30, column: 16, scope: !903)
!917 = !DILocation(line: 30, column: 40, scope: !903)
!918 = !DILocation(line: 30, column: 9, scope: !903)
!919 = !DILocation(line: 32, column: 30, scope: !903)
!920 = !DILocation(line: 32, column: 12, scope: !903)
!921 = !DILocation(line: 32, column: 35, scope: !903)
!922 = !DILocation(line: 32, column: 5, scope: !903)
!923 = !DILocation(line: 0, scope: !903)
!924 = !DILocation(line: 33, column: 1, scope: !903)
!925 = distinct !DISubprogram(name: "__ffssi2", scope: !72, file: !72, line: 22, type: !274, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !71, retainedNodes: !149)
!926 = !DILocation(line: 24, column: 11, scope: !925)
!927 = !DILocation(line: 24, column: 9, scope: !925)
!928 = !DILocation(line: 26, column: 9, scope: !925)
!929 = !DILocation(line: 28, column: 12, scope: !925)
!930 = !DILocation(line: 28, column: 29, scope: !925)
!931 = !DILocation(line: 28, column: 5, scope: !925)
!932 = !DILocation(line: 0, scope: !925)
!933 = !DILocation(line: 29, column: 1, scope: !925)
!934 = distinct !DISubprogram(name: "__lshrdi3", scope: !78, file: !78, line: 24, type: !274, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !149)
!935 = !DILocation(line: 29, column: 11, scope: !934)
!936 = !DILocation(line: 29, column: 15, scope: !934)
!937 = !DILocation(line: 30, column: 11, scope: !934)
!938 = !DILocation(line: 30, column: 9, scope: !934)
!939 = !DILocation(line: 32, column: 16, scope: !934)
!940 = !DILocation(line: 32, column: 18, scope: !934)
!941 = !DILocation(line: 32, column: 23, scope: !934)
!942 = !DILocation(line: 33, column: 30, scope: !934)
!943 = !DILocation(line: 33, column: 32, scope: !934)
!944 = !DILocation(line: 33, column: 43, scope: !934)
!945 = !DILocation(line: 33, column: 37, scope: !934)
!946 = !DILocation(line: 33, column: 18, scope: !934)
!947 = !DILocation(line: 33, column: 22, scope: !934)
!948 = !DILocation(line: 34, column: 5, scope: !934)
!949 = !DILocation(line: 37, column: 15, scope: !934)
!950 = !DILocation(line: 37, column: 13, scope: !934)
!951 = !DILocation(line: 38, column: 13, scope: !934)
!952 = !DILocation(line: 39, column: 32, scope: !934)
!953 = !DILocation(line: 39, column: 34, scope: !934)
!954 = !DILocation(line: 39, column: 39, scope: !934)
!955 = !DILocation(line: 39, column: 16, scope: !934)
!956 = !DILocation(line: 39, column: 18, scope: !934)
!957 = !DILocation(line: 39, column: 24, scope: !934)
!958 = !DILocation(line: 40, column: 31, scope: !934)
!959 = !DILocation(line: 40, column: 33, scope: !934)
!960 = !DILocation(line: 40, column: 55, scope: !934)
!961 = !DILocation(line: 40, column: 38, scope: !934)
!962 = !DILocation(line: 40, column: 72, scope: !934)
!963 = !DILocation(line: 40, column: 76, scope: !934)
!964 = !DILocation(line: 40, column: 61, scope: !934)
!965 = !DILocation(line: 40, column: 18, scope: !934)
!966 = !DILocation(line: 40, column: 22, scope: !934)
!967 = !DILocation(line: 42, column: 19, scope: !934)
!968 = !DILocation(line: 42, column: 5, scope: !934)
!969 = !DILocation(line: 0, scope: !934)
!970 = !DILocation(line: 43, column: 1, scope: !934)
!971 = distinct !DISubprogram(name: "__moddi3", scope: !82, file: !82, line: 20, type: !274, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !81, retainedNodes: !149)
!972 = !DILocation(line: 24, column: 17, scope: !971)
!973 = !DILocation(line: 25, column: 11, scope: !971)
!974 = !DILocation(line: 26, column: 12, scope: !971)
!975 = !DILocation(line: 26, column: 17, scope: !971)
!976 = !DILocation(line: 28, column: 5, scope: !971)
!977 = !DILocation(line: 29, column: 21, scope: !971)
!978 = !DILocation(line: 29, column: 23, scope: !971)
!979 = !DILocation(line: 29, column: 28, scope: !971)
!980 = !DILocation(line: 29, column: 5, scope: !971)
!981 = distinct !DISubprogram(name: "__modsi3", scope: !84, file: !84, line: 20, type: !274, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !83, retainedNodes: !149)
!982 = !DILocation(line: 22, column: 16, scope: !981)
!983 = !DILocation(line: 22, column: 31, scope: !981)
!984 = !DILocation(line: 22, column: 14, scope: !981)
!985 = !DILocation(line: 22, column: 5, scope: !981)
!986 = distinct !DISubprogram(name: "__mulvdi3", scope: !88, file: !88, line: 22, type: !274, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !87, retainedNodes: !149)
!987 = !DILocation(line: 27, column: 11, scope: !986)
!988 = !DILocation(line: 27, column: 9, scope: !986)
!989 = !DILocation(line: 29, column: 15, scope: !986)
!990 = !DILocation(line: 29, column: 20, scope: !986)
!991 = !DILocation(line: 29, column: 25, scope: !986)
!992 = !DILocation(line: 29, column: 13, scope: !986)
!993 = !DILocation(line: 30, column: 13, scope: !986)
!994 = !DILocation(line: 31, column: 9, scope: !986)
!995 = !DILocation(line: 33, column: 11, scope: !986)
!996 = !DILocation(line: 33, column: 9, scope: !986)
!997 = !DILocation(line: 35, column: 15, scope: !986)
!998 = !DILocation(line: 35, column: 20, scope: !986)
!999 = !DILocation(line: 35, column: 25, scope: !986)
!1000 = !DILocation(line: 35, column: 13, scope: !986)
!1001 = !DILocation(line: 36, column: 13, scope: !986)
!1002 = !DILocation(line: 37, column: 9, scope: !986)
!1003 = !DILocation(line: 39, column: 19, scope: !986)
!1004 = !DILocation(line: 40, column: 23, scope: !986)
!1005 = !DILocation(line: 40, column: 29, scope: !986)
!1006 = !DILocation(line: 41, column: 19, scope: !986)
!1007 = !DILocation(line: 42, column: 23, scope: !986)
!1008 = !DILocation(line: 42, column: 29, scope: !986)
!1009 = !DILocation(line: 43, column: 15, scope: !986)
!1010 = !DILocation(line: 43, column: 19, scope: !986)
!1011 = !DILocation(line: 43, column: 28, scope: !986)
!1012 = !DILocation(line: 43, column: 9, scope: !986)
!1013 = !DILocation(line: 44, column: 9, scope: !986)
!1014 = !DILocation(line: 45, column: 12, scope: !986)
!1015 = !DILocation(line: 45, column: 9, scope: !986)
!1016 = !DILocation(line: 47, column: 25, scope: !986)
!1017 = !DILocation(line: 47, column: 19, scope: !986)
!1018 = !DILocation(line: 47, column: 13, scope: !986)
!1019 = !DILocation(line: 48, column: 13, scope: !986)
!1020 = !DILocation(line: 49, column: 5, scope: !986)
!1021 = !DILocation(line: 52, column: 27, scope: !986)
!1022 = !DILocation(line: 52, column: 25, scope: !986)
!1023 = !DILocation(line: 52, column: 19, scope: !986)
!1024 = !DILocation(line: 52, column: 13, scope: !986)
!1025 = !DILocation(line: 53, column: 13, scope: !986)
!1026 = !DILocation(line: 55, column: 5, scope: !986)
!1027 = !DILocation(line: 0, scope: !986)
!1028 = !DILocation(line: 56, column: 1, scope: !986)
!1029 = distinct !DISubprogram(name: "__mulvsi3", scope: !90, file: !90, line: 22, type: !274, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, retainedNodes: !149)
!1030 = !DILocation(line: 27, column: 11, scope: !1029)
!1031 = !DILocation(line: 27, column: 9, scope: !1029)
!1032 = !DILocation(line: 29, column: 15, scope: !1029)
!1033 = !DILocation(line: 29, column: 20, scope: !1029)
!1034 = !DILocation(line: 29, column: 25, scope: !1029)
!1035 = !DILocation(line: 29, column: 13, scope: !1029)
!1036 = !DILocation(line: 30, column: 13, scope: !1029)
!1037 = !DILocation(line: 31, column: 9, scope: !1029)
!1038 = !DILocation(line: 33, column: 11, scope: !1029)
!1039 = !DILocation(line: 33, column: 9, scope: !1029)
!1040 = !DILocation(line: 35, column: 15, scope: !1029)
!1041 = !DILocation(line: 35, column: 20, scope: !1029)
!1042 = !DILocation(line: 35, column: 25, scope: !1029)
!1043 = !DILocation(line: 35, column: 13, scope: !1029)
!1044 = !DILocation(line: 36, column: 13, scope: !1029)
!1045 = !DILocation(line: 37, column: 9, scope: !1029)
!1046 = !DILocation(line: 39, column: 19, scope: !1029)
!1047 = !DILocation(line: 40, column: 23, scope: !1029)
!1048 = !DILocation(line: 40, column: 29, scope: !1029)
!1049 = !DILocation(line: 41, column: 19, scope: !1029)
!1050 = !DILocation(line: 42, column: 23, scope: !1029)
!1051 = !DILocation(line: 42, column: 29, scope: !1029)
!1052 = !DILocation(line: 43, column: 15, scope: !1029)
!1053 = !DILocation(line: 43, column: 19, scope: !1029)
!1054 = !DILocation(line: 43, column: 28, scope: !1029)
!1055 = !DILocation(line: 43, column: 9, scope: !1029)
!1056 = !DILocation(line: 44, column: 9, scope: !1029)
!1057 = !DILocation(line: 45, column: 12, scope: !1029)
!1058 = !DILocation(line: 45, column: 9, scope: !1029)
!1059 = !DILocation(line: 47, column: 25, scope: !1029)
!1060 = !DILocation(line: 47, column: 19, scope: !1029)
!1061 = !DILocation(line: 47, column: 13, scope: !1029)
!1062 = !DILocation(line: 48, column: 13, scope: !1029)
!1063 = !DILocation(line: 49, column: 5, scope: !1029)
!1064 = !DILocation(line: 52, column: 27, scope: !1029)
!1065 = !DILocation(line: 52, column: 25, scope: !1029)
!1066 = !DILocation(line: 52, column: 19, scope: !1029)
!1067 = !DILocation(line: 52, column: 13, scope: !1029)
!1068 = !DILocation(line: 53, column: 13, scope: !1029)
!1069 = !DILocation(line: 55, column: 5, scope: !1029)
!1070 = !DILocation(line: 0, scope: !1029)
!1071 = !DILocation(line: 56, column: 1, scope: !1029)
!1072 = distinct !DISubprogram(name: "__paritydi2", scope: !94, file: !94, line: 20, type: !274, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !93, retainedNodes: !149)
!1073 = !DILocation(line: 23, column: 7, scope: !1072)
!1074 = !DILocation(line: 23, column: 11, scope: !1072)
!1075 = !DILocation(line: 24, column: 26, scope: !1072)
!1076 = !DILocation(line: 24, column: 28, scope: !1072)
!1077 = !DILocation(line: 24, column: 39, scope: !1072)
!1078 = !DILocation(line: 24, column: 33, scope: !1072)
!1079 = !DILocation(line: 24, column: 12, scope: !1072)
!1080 = !DILocation(line: 24, column: 5, scope: !1072)
!1081 = distinct !DISubprogram(name: "__paritysi2", scope: !96, file: !96, line: 20, type: !274, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !95, retainedNodes: !149)
!1082 = !DILocation(line: 23, column: 12, scope: !1081)
!1083 = !DILocation(line: 23, column: 7, scope: !1081)
!1084 = !DILocation(line: 24, column: 12, scope: !1081)
!1085 = !DILocation(line: 24, column: 7, scope: !1081)
!1086 = !DILocation(line: 25, column: 12, scope: !1081)
!1087 = !DILocation(line: 25, column: 7, scope: !1081)
!1088 = !DILocation(line: 26, column: 26, scope: !1081)
!1089 = !DILocation(line: 26, column: 20, scope: !1081)
!1090 = !DILocation(line: 26, column: 34, scope: !1081)
!1091 = !DILocation(line: 26, column: 5, scope: !1081)
!1092 = distinct !DISubprogram(name: "__popcountdi2", scope: !100, file: !100, line: 20, type: !274, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !99, retainedNodes: !149)
!1093 = !DILocation(line: 23, column: 20, scope: !1092)
!1094 = !DILocation(line: 23, column: 26, scope: !1092)
!1095 = !DILocation(line: 23, column: 13, scope: !1092)
!1096 = !DILocation(line: 25, column: 15, scope: !1092)
!1097 = !DILocation(line: 25, column: 21, scope: !1092)
!1098 = !DILocation(line: 25, column: 52, scope: !1092)
!1099 = !DILocation(line: 25, column: 46, scope: !1092)
!1100 = !DILocation(line: 27, column: 20, scope: !1092)
!1101 = !DILocation(line: 27, column: 14, scope: !1092)
!1102 = !DILocation(line: 27, column: 27, scope: !1092)
!1103 = !DILocation(line: 29, column: 34, scope: !1092)
!1104 = !DILocation(line: 29, column: 28, scope: !1092)
!1105 = !DILocation(line: 29, column: 16, scope: !1092)
!1106 = !DILocation(line: 32, column: 16, scope: !1092)
!1107 = !DILocation(line: 32, column: 11, scope: !1092)
!1108 = !DILocation(line: 35, column: 20, scope: !1092)
!1109 = !DILocation(line: 35, column: 15, scope: !1092)
!1110 = !DILocation(line: 35, column: 27, scope: !1092)
!1111 = !DILocation(line: 35, column: 5, scope: !1092)
!1112 = distinct !DISubprogram(name: "__popcountsi2", scope: !102, file: !102, line: 20, type: !274, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !101, retainedNodes: !149)
!1113 = !DILocation(line: 23, column: 17, scope: !1112)
!1114 = !DILocation(line: 23, column: 23, scope: !1112)
!1115 = !DILocation(line: 23, column: 11, scope: !1112)
!1116 = !DILocation(line: 25, column: 13, scope: !1112)
!1117 = !DILocation(line: 25, column: 19, scope: !1112)
!1118 = !DILocation(line: 25, column: 38, scope: !1112)
!1119 = !DILocation(line: 25, column: 33, scope: !1112)
!1120 = !DILocation(line: 27, column: 17, scope: !1112)
!1121 = !DILocation(line: 27, column: 12, scope: !1112)
!1122 = !DILocation(line: 27, column: 24, scope: !1112)
!1123 = !DILocation(line: 29, column: 17, scope: !1112)
!1124 = !DILocation(line: 29, column: 12, scope: !1112)
!1125 = !DILocation(line: 32, column: 20, scope: !1112)
!1126 = !DILocation(line: 32, column: 15, scope: !1112)
!1127 = !DILocation(line: 32, column: 27, scope: !1112)
!1128 = !DILocation(line: 32, column: 5, scope: !1112)
!1129 = distinct !DISubprogram(name: "__subvdi3", scope: !106, file: !106, line: 22, type: !274, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !105, retainedNodes: !149)
!1130 = !DILocation(line: 24, column: 27, scope: !1129)
!1131 = !DILocation(line: 25, column: 11, scope: !1129)
!1132 = !DILocation(line: 25, column: 9, scope: !1129)
!1133 = !DILocation(line: 27, column: 15, scope: !1129)
!1134 = !DILocation(line: 27, column: 13, scope: !1129)
!1135 = !DILocation(line: 28, column: 13, scope: !1129)
!1136 = !DILocation(line: 29, column: 5, scope: !1129)
!1137 = !DILocation(line: 32, column: 15, scope: !1129)
!1138 = !DILocation(line: 32, column: 13, scope: !1129)
!1139 = !DILocation(line: 33, column: 13, scope: !1129)
!1140 = !DILocation(line: 35, column: 5, scope: !1129)
!1141 = distinct !DISubprogram(name: "__subvsi3", scope: !108, file: !108, line: 22, type: !274, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !107, retainedNodes: !149)
!1142 = !DILocation(line: 24, column: 27, scope: !1141)
!1143 = !DILocation(line: 25, column: 11, scope: !1141)
!1144 = !DILocation(line: 25, column: 9, scope: !1141)
!1145 = !DILocation(line: 27, column: 15, scope: !1141)
!1146 = !DILocation(line: 27, column: 13, scope: !1141)
!1147 = !DILocation(line: 28, column: 13, scope: !1141)
!1148 = !DILocation(line: 29, column: 5, scope: !1141)
!1149 = !DILocation(line: 32, column: 15, scope: !1141)
!1150 = !DILocation(line: 32, column: 13, scope: !1141)
!1151 = !DILocation(line: 33, column: 13, scope: !1141)
!1152 = !DILocation(line: 35, column: 5, scope: !1141)
!1153 = distinct !DISubprogram(name: "__ucmpdi2", scope: !112, file: !112, line: 23, type: !274, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !111, retainedNodes: !149)
!1154 = !DILocation(line: 26, column: 7, scope: !1153)
!1155 = !DILocation(line: 26, column: 11, scope: !1153)
!1156 = !DILocation(line: 28, column: 7, scope: !1153)
!1157 = !DILocation(line: 28, column: 11, scope: !1153)
!1158 = !DILocation(line: 29, column: 11, scope: !1153)
!1159 = !DILocation(line: 29, column: 13, scope: !1153)
!1160 = !DILocation(line: 29, column: 22, scope: !1153)
!1161 = !DILocation(line: 29, column: 24, scope: !1153)
!1162 = !DILocation(line: 29, column: 18, scope: !1153)
!1163 = !DILocation(line: 29, column: 9, scope: !1153)
!1164 = !DILocation(line: 30, column: 9, scope: !1153)
!1165 = !DILocation(line: 31, column: 11, scope: !1153)
!1166 = !DILocation(line: 31, column: 13, scope: !1153)
!1167 = !DILocation(line: 31, column: 22, scope: !1153)
!1168 = !DILocation(line: 31, column: 24, scope: !1153)
!1169 = !DILocation(line: 31, column: 18, scope: !1153)
!1170 = !DILocation(line: 31, column: 9, scope: !1153)
!1171 = !DILocation(line: 32, column: 9, scope: !1153)
!1172 = !DILocation(line: 33, column: 13, scope: !1153)
!1173 = !DILocation(line: 33, column: 23, scope: !1153)
!1174 = !DILocation(line: 33, column: 17, scope: !1153)
!1175 = !DILocation(line: 33, column: 9, scope: !1153)
!1176 = !DILocation(line: 34, column: 9, scope: !1153)
!1177 = !DILocation(line: 35, column: 13, scope: !1153)
!1178 = !DILocation(line: 35, column: 23, scope: !1153)
!1179 = !DILocation(line: 35, column: 17, scope: !1153)
!1180 = !DILocation(line: 35, column: 9, scope: !1153)
!1181 = !DILocation(line: 36, column: 9, scope: !1153)
!1182 = !DILocation(line: 37, column: 5, scope: !1153)
!1183 = !DILocation(line: 0, scope: !1153)
!1184 = !DILocation(line: 38, column: 1, scope: !1153)
!1185 = distinct !DISubprogram(name: "__aeabi_ulcmp", scope: !112, file: !112, line: 46, type: !274, scopeLine: 47, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !111, retainedNodes: !149)
!1186 = !DILocation(line: 48, column: 9, scope: !1185)
!1187 = !DILocation(line: 48, column: 25, scope: !1185)
!1188 = !DILocation(line: 48, column: 2, scope: !1185)
!1189 = distinct !DISubprogram(name: "__udivdi3", scope: !116, file: !116, line: 20, type: !274, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !115, retainedNodes: !149)
!1190 = !DILocation(line: 22, column: 12, scope: !1189)
!1191 = !DILocation(line: 22, column: 5, scope: !1189)
!1192 = distinct !DISubprogram(name: "__udivmodsi4", scope: !120, file: !120, line: 20, type: !274, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !119, retainedNodes: !149)
!1193 = !DILocation(line: 22, column: 14, scope: !1192)
!1194 = !DILocation(line: 23, column: 16, scope: !1192)
!1195 = !DILocation(line: 23, column: 12, scope: !1192)
!1196 = !DILocation(line: 23, column: 8, scope: !1192)
!1197 = !DILocation(line: 24, column: 3, scope: !1192)
!1198 = distinct !DISubprogram(name: "__udivsi3", scope: !124, file: !124, line: 25, type: !274, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !123, retainedNodes: !149)
!1199 = !DILocation(line: 32, column: 11, scope: !1198)
!1200 = !DILocation(line: 32, column: 9, scope: !1198)
!1201 = !DILocation(line: 33, column: 9, scope: !1198)
!1202 = !DILocation(line: 34, column: 11, scope: !1198)
!1203 = !DILocation(line: 34, column: 9, scope: !1198)
!1204 = !DILocation(line: 35, column: 9, scope: !1198)
!1205 = !DILocation(line: 36, column: 10, scope: !1198)
!1206 = !DILocation(line: 36, column: 29, scope: !1198)
!1207 = !DILocation(line: 36, column: 27, scope: !1198)
!1208 = !DILocation(line: 38, column: 12, scope: !1198)
!1209 = !DILocation(line: 38, column: 9, scope: !1198)
!1210 = !DILocation(line: 39, column: 9, scope: !1198)
!1211 = !DILocation(line: 40, column: 12, scope: !1198)
!1212 = !DILocation(line: 40, column: 9, scope: !1198)
!1213 = !DILocation(line: 41, column: 9, scope: !1198)
!1214 = !DILocation(line: 42, column: 5, scope: !1198)
!1215 = !DILocation(line: 45, column: 28, scope: !1198)
!1216 = !DILocation(line: 45, column: 11, scope: !1198)
!1217 = !DILocation(line: 46, column: 11, scope: !1198)
!1218 = !DILocation(line: 48, column: 5, scope: !1198)
!1219 = !DILocation(line: 0, scope: !1198)
!1220 = !DILocation(line: 48, column: 15, scope: !1198)
!1221 = !DILocation(line: 51, column: 22, scope: !1198)
!1222 = !DILocation(line: 60, column: 41, scope: !1198)
!1223 = !DILocation(line: 63, column: 5, scope: !1198)
!1224 = !DILocation(line: 62, column: 16, scope: !1198)
!1225 = !DILocation(line: 62, column: 11, scope: !1198)
!1226 = !DILocation(line: 61, column: 19, scope: !1198)
!1227 = !DILocation(line: 52, column: 16, scope: !1198)
!1228 = !DILocation(line: 52, column: 22, scope: !1198)
!1229 = !DILocation(line: 48, column: 20, scope: !1198)
!1230 = distinct !{!1230, !1218, !1223, !190}
!1231 = !DILocation(line: 64, column: 12, scope: !1198)
!1232 = !DILocation(line: 64, column: 18, scope: !1198)
!1233 = !DILocation(line: 65, column: 5, scope: !1198)
!1234 = !DILocation(line: 66, column: 1, scope: !1198)
!1235 = distinct !DISubprogram(name: "__umoddi3", scope: !128, file: !128, line: 20, type: !274, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !127, retainedNodes: !149)
!1236 = !DILocation(line: 23, column: 5, scope: !1235)
!1237 = !DILocation(line: 24, column: 12, scope: !1235)
!1238 = !DILocation(line: 24, column: 5, scope: !1235)
!1239 = distinct !DISubprogram(name: "__umodsi3", scope: !130, file: !130, line: 20, type: !274, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !129, retainedNodes: !149)
!1240 = !DILocation(line: 22, column: 16, scope: !1239)
!1241 = !DILocation(line: 22, column: 32, scope: !1239)
!1242 = !DILocation(line: 22, column: 14, scope: !1239)
!1243 = !DILocation(line: 22, column: 5, scope: !1239)
!1244 = distinct !DISubprogram(name: "memcpy", scope: !134, file: !134, line: 3, type: !274, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !133, retainedNodes: !149)
!1245 = !DILocation(line: 8, column: 6, scope: !1244)
!1246 = !DILocation(line: 0, scope: !1244)
!1247 = !DILocation(line: 8, column: 19, scope: !1244)
!1248 = !DILocation(line: 8, column: 2, scope: !1244)
!1249 = !DILocation(line: 9, column: 21, scope: !1244)
!1250 = !DILocation(line: 9, column: 3, scope: !1244)
!1251 = !DILocation(line: 9, column: 19, scope: !1244)
!1252 = !DILocation(line: 10, column: 2, scope: !1244)
!1253 = !DILocation(line: 8, column: 26, scope: !1244)
!1254 = distinct !{!1254, !1248, !1252, !190}
!1255 = !DILocation(line: 11, column: 1, scope: !1244)
!1256 = distinct !DISubprogram(name: "memset", scope: !134, file: !134, line: 13, type: !274, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !133, retainedNodes: !149)
!1257 = !DILocation(line: 17, column: 6, scope: !1256)
!1258 = !DILocation(line: 0, scope: !1256)
!1259 = !DILocation(line: 17, column: 19, scope: !1256)
!1260 = !DILocation(line: 17, column: 2, scope: !1256)
!1261 = !DILocation(line: 18, column: 13, scope: !1256)
!1262 = !DILocation(line: 18, column: 3, scope: !1256)
!1263 = !DILocation(line: 18, column: 11, scope: !1256)
!1264 = !DILocation(line: 19, column: 2, scope: !1256)
!1265 = !DILocation(line: 17, column: 26, scope: !1256)
!1266 = distinct !{!1266, !1260, !1264, !190}
!1267 = !DILocation(line: 20, column: 2, scope: !1256)
