; ModuleID = 'unoptimized.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv4t-unknown-unknown"

%struct.binarysearch_DATA = type { i32, i32 }
%union.dwords = type { i64 }

@binarysearch_seed = dso_local global i32 0, align 4, !dbg !0
@binarysearch_data = dso_local global [15 x %struct.binarysearch_DATA] zeroinitializer, align 4, !dbg !5
@binarysearch_result = dso_local global i32 0, align 4, !dbg !16
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
define dso_local arm_aapcs_vfpcc void @binarysearch_initSeed() #0 !dbg !142 {
entry:
  store volatile i32 0, i32* @binarysearch_seed, align 4, !dbg !146
  ret void, !dbg !147
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @binarysearch_randomInteger() #0 !dbg !148 {
entry:
  %0 = load volatile i32, i32* @binarysearch_seed, align 4, !dbg !152
  %mul = mul nsw i32 %0, 133, !dbg !153
  %add = add nsw i32 %mul, 81, !dbg !154
  %rem = srem i32 %add, 8095, !dbg !155
  store volatile i32 %rem, i32* @binarysearch_seed, align 4, !dbg !156
  %1 = load volatile i32, i32* @binarysearch_seed, align 4, !dbg !157
  ret i32 %1, !dbg !158
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @binarysearch_init() #0 !dbg !159 {
entry:
  call arm_aapcs_vfpcc void @binarysearch_initSeed() #4, !dbg !160
  call void @llvm.dbg.value(metadata i32 0, metadata !161, metadata !DIExpression()), !dbg !162
  br label %for.cond, !dbg !163

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !dbg !165
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !161, metadata !DIExpression()), !dbg !162
  %exitcond.not = icmp eq i32 %i.0, 15, !dbg !166
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !168

for.body:                                         ; preds = %for.cond
  %call = call arm_aapcs_vfpcc i32 @binarysearch_randomInteger() #4, !dbg !169
  %key = getelementptr inbounds [15 x %struct.binarysearch_DATA], [15 x %struct.binarysearch_DATA]* @binarysearch_data, i32 0, i32 %i.0, i32 0, !dbg !171
  store i32 %call, i32* %key, align 4, !dbg !172
  %call1 = call arm_aapcs_vfpcc i32 @binarysearch_randomInteger() #4, !dbg !173
  %value = getelementptr inbounds [15 x %struct.binarysearch_DATA], [15 x %struct.binarysearch_DATA]* @binarysearch_data, i32 0, i32 %i.0, i32 1, !dbg !174
  store i32 %call1, i32* %value, align 4, !dbg !175
  br label %for.inc, !dbg !176

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.0, 1, !dbg !177
  call void @llvm.dbg.value(metadata i32 %inc, metadata !161, metadata !DIExpression()), !dbg !162
  br label %for.cond, !dbg !178, !llvm.loop !179

for.end:                                          ; preds = %for.cond
  ret void, !dbg !182
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @binarysearch_return() #0 !dbg !183 {
entry:
  %0 = load i32, i32* @binarysearch_result, align 4, !dbg !186
  ret i32 %0, !dbg !187
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @binarysearch_binary_search(i32 noundef %x) #0 !dbg !188 {
entry:
  call void @llvm.dbg.value(metadata i32 %x, metadata !191, metadata !DIExpression()), !dbg !192
  call void @llvm.dbg.value(metadata i32 0, metadata !193, metadata !DIExpression()), !dbg !192
  call void @llvm.dbg.value(metadata i32 14, metadata !194, metadata !DIExpression()), !dbg !192
  call void @llvm.dbg.value(metadata i32 -1, metadata !195, metadata !DIExpression()), !dbg !192
  br label %while.cond, !dbg !196

while.cond:                                       ; preds = %if.end10, %entry
  %up.0 = phi i32 [ 14, %entry ], [ %up.2, %if.end10 ], !dbg !192
  %fvalue.0 = phi i32 [ -1, %entry ], [ %fvalue.1, %if.end10 ], !dbg !192
  %low.0 = phi i32 [ 0, %entry ], [ %low.2, %if.end10 ], !dbg !197
  call void @llvm.dbg.value(metadata i32 %low.0, metadata !193, metadata !DIExpression()), !dbg !192
  call void @llvm.dbg.value(metadata i32 %fvalue.0, metadata !195, metadata !DIExpression()), !dbg !192
  call void @llvm.dbg.value(metadata i32 %up.0, metadata !194, metadata !DIExpression()), !dbg !192
  %cmp.not = icmp sgt i32 %low.0, %up.0, !dbg !198
  br i1 %cmp.not, label %while.end, label %while.body, !dbg !196

while.body:                                       ; preds = %while.cond
  %add = add nsw i32 %low.0, %up.0, !dbg !199
  %shr = ashr i32 %add, 1, !dbg !201
  call void @llvm.dbg.value(metadata i32 %shr, metadata !202, metadata !DIExpression()), !dbg !192
  %key = getelementptr inbounds [15 x %struct.binarysearch_DATA], [15 x %struct.binarysearch_DATA]* @binarysearch_data, i32 0, i32 %shr, i32 0, !dbg !203
  %0 = load i32, i32* %key, align 4, !dbg !203
  %cmp1 = icmp eq i32 %0, %x, !dbg !205
  br i1 %cmp1, label %if.then, label %if.else, !dbg !206

if.then:                                          ; preds = %while.body
  %sub = add nsw i32 %low.0, -1, !dbg !207
  call void @llvm.dbg.value(metadata i32 %sub, metadata !194, metadata !DIExpression()), !dbg !192
  %value = getelementptr inbounds [15 x %struct.binarysearch_DATA], [15 x %struct.binarysearch_DATA]* @binarysearch_data, i32 0, i32 %shr, i32 1, !dbg !209
  %1 = load i32, i32* %value, align 4, !dbg !209
  call void @llvm.dbg.value(metadata i32 %1, metadata !195, metadata !DIExpression()), !dbg !192
  br label %if.end10, !dbg !210

if.else:                                          ; preds = %while.body
  %key4 = getelementptr inbounds [15 x %struct.binarysearch_DATA], [15 x %struct.binarysearch_DATA]* @binarysearch_data, i32 0, i32 %shr, i32 0, !dbg !211
  %2 = load i32, i32* %key4, align 4, !dbg !211
  %cmp5 = icmp sgt i32 %2, %x, !dbg !213
  br i1 %cmp5, label %if.then6, label %if.else8, !dbg !214

if.then6:                                         ; preds = %if.else
  %sub7 = add nsw i32 %shr, -1, !dbg !215
  call void @llvm.dbg.value(metadata i32 %sub7, metadata !194, metadata !DIExpression()), !dbg !192
  br label %if.end, !dbg !216

if.else8:                                         ; preds = %if.else
  %add9 = add nsw i32 %shr, 1, !dbg !217
  call void @llvm.dbg.value(metadata i32 %add9, metadata !193, metadata !DIExpression()), !dbg !192
  br label %if.end

if.end:                                           ; preds = %if.else8, %if.then6
  %up.1 = phi i32 [ %sub7, %if.then6 ], [ %up.0, %if.else8 ], !dbg !192
  %low.1 = phi i32 [ %low.0, %if.then6 ], [ %add9, %if.else8 ], !dbg !192
  call void @llvm.dbg.value(metadata i32 %low.1, metadata !193, metadata !DIExpression()), !dbg !192
  call void @llvm.dbg.value(metadata i32 %up.1, metadata !194, metadata !DIExpression()), !dbg !192
  br label %if.end10

if.end10:                                         ; preds = %if.end, %if.then
  %up.2 = phi i32 [ %sub, %if.then ], [ %up.1, %if.end ], !dbg !218
  %fvalue.1 = phi i32 [ %1, %if.then ], [ %fvalue.0, %if.end ], !dbg !192
  %low.2 = phi i32 [ %low.0, %if.then ], [ %low.1, %if.end ], !dbg !197
  call void @llvm.dbg.value(metadata i32 %low.2, metadata !193, metadata !DIExpression()), !dbg !192
  call void @llvm.dbg.value(metadata i32 %fvalue.1, metadata !195, metadata !DIExpression()), !dbg !192
  call void @llvm.dbg.value(metadata i32 %up.2, metadata !194, metadata !DIExpression()), !dbg !192
  br label %while.cond, !dbg !196, !llvm.loop !219

while.end:                                        ; preds = %while.cond
  ret i32 %fvalue.0, !dbg !221
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @binarysearch_main() #0 !dbg !222 {
entry:
  %call = call arm_aapcs_vfpcc i32 @binarysearch_binary_search(i32 noundef 8) #4, !dbg !223
  store i32 %call, i32* @binarysearch_result, align 4, !dbg !224
  ret void, !dbg !225
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @main() #0 !dbg !226 {
entry:
  call arm_aapcs_vfpcc void @binarysearch_init() #4, !dbg !227
  call arm_aapcs_vfpcc void @binarysearch_main() #4, !dbg !228
  %call = call arm_aapcs_vfpcc i32 @binarysearch_return() #4, !dbg !229
  %cmp = icmp ne i32 %call, -1, !dbg !230
  %conv = zext i1 %cmp to i32, !dbg !230
  ret i32 %conv, !dbg !231
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__absvdi2(i64 noundef %a) #1 !dbg !232 {
entry:
  %cmp = icmp eq i64 %a, -9223372036854775808, !dbg !234
  br i1 %cmp, label %if.then, label %if.end, !dbg !235

if.then:                                          ; preds = %entry
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i32 noundef 26, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__absvdi2, i32 0, i32 0)) #5, !dbg !236
  unreachable, !dbg !236

if.end:                                           ; preds = %entry
  %0 = call i64 @llvm.abs.i64(i64 %a, i1 true), !dbg !237
  ret i64 %0, !dbg !238
}

; Function Attrs: noinline noreturn nounwind
define weak hidden arm_aapcscc void @compilerrt_abort_impl(i8* noundef %file, i32 noundef %line, i8* noundef %function) #2 !dbg !239 {
entry:
  unreachable, !dbg !240
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__absvsi2(i32 noundef %a) #1 !dbg !241 {
entry:
  %cmp = icmp eq i32 %a, -2147483648, !dbg !242
  br i1 %cmp, label %if.then, label %if.end, !dbg !243

if.then:                                          ; preds = %entry
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 noundef 26, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__absvsi2, i32 0, i32 0)) #5, !dbg !244
  unreachable, !dbg !244

if.end:                                           ; preds = %entry
  %0 = call i32 @llvm.abs.i32(i32 %a, i1 true), !dbg !245
  ret i32 %0, !dbg !246
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__addvdi3(i64 noundef %a, i64 noundef %b) #1 !dbg !247 {
entry:
  %add = add i64 %a, %b, !dbg !248
  %cmp = icmp sgt i64 %b, -1, !dbg !249
  br i1 %cmp, label %if.then, label %if.else, !dbg !250

if.then:                                          ; preds = %entry
  %cmp1 = icmp slt i64 %add, %a, !dbg !251
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !252

if.then2:                                         ; preds = %if.then
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i32 noundef 28, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__addvdi3, i32 0, i32 0)) #5, !dbg !253
  unreachable, !dbg !253

if.end:                                           ; preds = %if.then
  br label %if.end6, !dbg !254

if.else:                                          ; preds = %entry
  %cmp3.not = icmp slt i64 %add, %a, !dbg !255
  br i1 %cmp3.not, label %if.end5, label %if.then4, !dbg !256

if.then4:                                         ; preds = %if.else
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i32 noundef 33, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__addvdi3, i32 0, i32 0)) #5, !dbg !257
  unreachable, !dbg !257

if.end5:                                          ; preds = %if.else
  br label %if.end6

if.end6:                                          ; preds = %if.end5, %if.end
  ret i64 %add, !dbg !258
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__addvsi3(i32 noundef %a, i32 noundef %b) #1 !dbg !259 {
entry:
  %add = add i32 %a, %b, !dbg !260
  %cmp = icmp sgt i32 %b, -1, !dbg !261
  br i1 %cmp, label %if.then, label %if.else, !dbg !262

if.then:                                          ; preds = %entry
  %cmp1 = icmp slt i32 %add, %a, !dbg !263
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !264

if.then2:                                         ; preds = %if.then
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), i32 noundef 28, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__addvsi3, i32 0, i32 0)) #5, !dbg !265
  unreachable, !dbg !265

if.end:                                           ; preds = %if.then
  br label %if.end6, !dbg !266

if.else:                                          ; preds = %entry
  %cmp3.not = icmp slt i32 %add, %a, !dbg !267
  br i1 %cmp3.not, label %if.end5, label %if.then4, !dbg !268

if.then4:                                         ; preds = %if.else
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), i32 noundef 33, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__addvsi3, i32 0, i32 0)) #5, !dbg !269
  unreachable, !dbg !269

if.end5:                                          ; preds = %if.else
  br label %if.end6

if.end6:                                          ; preds = %if.end5, %if.end
  ret i32 %add, !dbg !270
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__ashldi3(i64 noundef %a, i32 noundef %b) #1 !dbg !271 {
entry:
  %input = alloca %union.dwords, align 8
  %result = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %input, i32 0, i32 0, !dbg !272
  store i64 %a, i64* %all, align 8, !dbg !273
  %and = and i32 %b, 32, !dbg !274
  %tobool.not = icmp eq i32 %and, 0, !dbg !274
  br i1 %tobool.not, label %if.else, label %if.then, !dbg !275

if.then:                                          ; preds = %entry
  %low = bitcast %union.dwords* %result to i32*, !dbg !276
  store i32 0, i32* %low, align 8, !dbg !277
  %low2 = bitcast %union.dwords* %input to i32*, !dbg !278
  %0 = load i32, i32* %low2, align 8, !dbg !278
  %sub = add nsw i32 %b, -32, !dbg !279
  %shl = shl i32 %0, %sub, !dbg !280
  %s3 = bitcast %union.dwords* %result to %struct.binarysearch_DATA*, !dbg !281
  %high = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s3, i32 0, i32 1, !dbg !282
  store i32 %shl, i32* %high, align 4, !dbg !283
  br label %if.end18, !dbg !284

if.else:                                          ; preds = %entry
  %cmp = icmp eq i32 %b, 0, !dbg !285
  br i1 %cmp, label %if.then4, label %if.end, !dbg !286

if.then4:                                         ; preds = %if.else
  br label %return, !dbg !287

if.end:                                           ; preds = %if.else
  %low6 = bitcast %union.dwords* %input to i32*, !dbg !288
  %1 = load i32, i32* %low6, align 8, !dbg !288
  %shl7 = shl i32 %1, %b, !dbg !289
  %low9 = bitcast %union.dwords* %result to i32*, !dbg !290
  store i32 %shl7, i32* %low9, align 8, !dbg !291
  %s10 = bitcast %union.dwords* %input to %struct.binarysearch_DATA*, !dbg !292
  %high11 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s10, i32 0, i32 1, !dbg !293
  %2 = load i32, i32* %high11, align 4, !dbg !293
  %shl12 = shl i32 %2, %b, !dbg !294
  %low14 = bitcast %union.dwords* %input to i32*, !dbg !295
  %3 = load i32, i32* %low14, align 8, !dbg !295
  %sub15 = sub nsw i32 32, %b, !dbg !296
  %shr = lshr i32 %3, %sub15, !dbg !297
  %or = or i32 %shl12, %shr, !dbg !298
  %s16 = bitcast %union.dwords* %result to %struct.binarysearch_DATA*, !dbg !299
  %high17 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s16, i32 0, i32 1, !dbg !300
  store i32 %or, i32* %high17, align 4, !dbg !301
  br label %if.end18

if.end18:                                         ; preds = %if.end, %if.then
  %all19 = getelementptr inbounds %union.dwords, %union.dwords* %result, i32 0, i32 0, !dbg !302
  %4 = load i64, i64* %all19, align 8, !dbg !302
  br label %return, !dbg !303

return:                                           ; preds = %if.end18, %if.then4
  %retval.0 = phi i64 [ %4, %if.end18 ], [ %a, %if.then4 ], !dbg !304
  ret i64 %retval.0, !dbg !305
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__ashrdi3(i64 noundef %a, i32 noundef %b) #1 !dbg !306 {
entry:
  %input = alloca %union.dwords, align 8
  %result = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %input, i32 0, i32 0, !dbg !307
  store i64 %a, i64* %all, align 8, !dbg !308
  %and = and i32 %b, 32, !dbg !309
  %tobool.not = icmp eq i32 %and, 0, !dbg !309
  br i1 %tobool.not, label %if.else, label %if.then, !dbg !310

if.then:                                          ; preds = %entry
  %s = bitcast %union.dwords* %input to %struct.binarysearch_DATA*, !dbg !311
  %high = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s, i32 0, i32 1, !dbg !312
  %0 = load i32, i32* %high, align 4, !dbg !312
  %shr = ashr i32 %0, 31, !dbg !313
  %s1 = bitcast %union.dwords* %result to %struct.binarysearch_DATA*, !dbg !314
  %high2 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s1, i32 0, i32 1, !dbg !315
  store i32 %shr, i32* %high2, align 4, !dbg !316
  %s3 = bitcast %union.dwords* %input to %struct.binarysearch_DATA*, !dbg !317
  %high4 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s3, i32 0, i32 1, !dbg !318
  %1 = load i32, i32* %high4, align 4, !dbg !318
  %sub = add nsw i32 %b, -32, !dbg !319
  %shr5 = ashr i32 %1, %sub, !dbg !320
  %low = bitcast %union.dwords* %result to i32*, !dbg !321
  store i32 %shr5, i32* %low, align 8, !dbg !322
  br label %if.end21, !dbg !323

if.else:                                          ; preds = %entry
  %cmp = icmp eq i32 %b, 0, !dbg !324
  br i1 %cmp, label %if.then7, label %if.end, !dbg !325

if.then7:                                         ; preds = %if.else
  br label %return, !dbg !326

if.end:                                           ; preds = %if.else
  %s8 = bitcast %union.dwords* %input to %struct.binarysearch_DATA*, !dbg !327
  %high9 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s8, i32 0, i32 1, !dbg !328
  %2 = load i32, i32* %high9, align 4, !dbg !328
  %shr10 = ashr i32 %2, %b, !dbg !329
  %s11 = bitcast %union.dwords* %result to %struct.binarysearch_DATA*, !dbg !330
  %high12 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s11, i32 0, i32 1, !dbg !331
  store i32 %shr10, i32* %high12, align 4, !dbg !332
  %s13 = bitcast %union.dwords* %input to %struct.binarysearch_DATA*, !dbg !333
  %high14 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s13, i32 0, i32 1, !dbg !334
  %3 = load i32, i32* %high14, align 4, !dbg !334
  %sub15 = sub nsw i32 32, %b, !dbg !335
  %shl = shl i32 %3, %sub15, !dbg !336
  %low17 = bitcast %union.dwords* %input to i32*, !dbg !337
  %4 = load i32, i32* %low17, align 8, !dbg !337
  %shr18 = lshr i32 %4, %b, !dbg !338
  %or = or i32 %shl, %shr18, !dbg !339
  %low20 = bitcast %union.dwords* %result to i32*, !dbg !340
  store i32 %or, i32* %low20, align 8, !dbg !341
  br label %if.end21

if.end21:                                         ; preds = %if.end, %if.then
  %all22 = getelementptr inbounds %union.dwords, %union.dwords* %result, i32 0, i32 0, !dbg !342
  %5 = load i64, i64* %all22, align 8, !dbg !342
  br label %return, !dbg !343

return:                                           ; preds = %if.end21, %if.then7
  %retval.0 = phi i64 [ %5, %if.end21 ], [ %a, %if.then7 ], !dbg !344
  ret i64 %retval.0, !dbg !345
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__clzdi2(i64 noundef %a) #1 !dbg !346 {
entry:
  %x = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %x, i32 0, i32 0, !dbg !347
  store i64 %a, i64* %all, align 8, !dbg !348
  %s = bitcast %union.dwords* %x to %struct.binarysearch_DATA*, !dbg !349
  %high = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s, i32 0, i32 1, !dbg !350
  %0 = load i32, i32* %high, align 4, !dbg !350
  %cmp = icmp eq i32 %0, 0, !dbg !351
  %s1 = bitcast %union.dwords* %x to %struct.binarysearch_DATA*, !dbg !352
  %high2 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s1, i32 0, i32 1, !dbg !353
  %1 = load i32, i32* %high2, align 4, !dbg !353
  %low = bitcast %union.dwords* %x to i32*, !dbg !354
  %2 = load i32, i32* %low, align 8, !dbg !354
  %3 = select i1 %cmp, i32 %2, i32 %1, !dbg !355
  %4 = call i32 @llvm.ctlz.i32(i32 %3, i1 false), !dbg !356, !range !357
  %and5 = select i1 %cmp, i32 32, i32 0, !dbg !358
  %add = add nuw nsw i32 %4, %and5, !dbg !359
  ret i32 %add, !dbg !360
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #3

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__clzsi2(i32 noundef %a) #1 !dbg !361 {
entry:
  %cmp = icmp ult i32 %a, 65536, !dbg !362
  %shl = select i1 %cmp, i32 16, i32 0, !dbg !363
  %sub = sub nuw nsw i32 16, %shl, !dbg !364
  %shr = lshr i32 %a, %sub, !dbg !365
  %and1 = and i32 %shr, 65280, !dbg !366
  %cmp2 = icmp eq i32 %and1, 0, !dbg !367
  %shl4 = select i1 %cmp2, i32 8, i32 0, !dbg !368
  %sub5 = sub nuw nsw i32 8, %shl4, !dbg !369
  %shr6 = lshr i32 %shr, %sub5, !dbg !370
  %add = or i32 %shl, %shl4, !dbg !371
  %and7 = and i32 %shr6, 240, !dbg !372
  %cmp8 = icmp eq i32 %and7, 0, !dbg !373
  %shl10 = select i1 %cmp8, i32 4, i32 0, !dbg !374
  %sub11 = sub nuw nsw i32 4, %shl10, !dbg !375
  %shr12 = lshr i32 %shr6, %sub11, !dbg !376
  %add13 = or i32 %add, %shl10, !dbg !377
  %and14 = and i32 %shr12, 12, !dbg !378
  %cmp15 = icmp eq i32 %and14, 0, !dbg !379
  %shl17 = select i1 %cmp15, i32 2, i32 0, !dbg !380
  %sub18 = sub nuw nsw i32 2, %shl17, !dbg !381
  %shr19 = lshr i32 %shr12, %sub18, !dbg !382
  %add20 = or i32 %add13, %shl17, !dbg !383
  %sub21 = sub i32 2, %shr19, !dbg !384
  %and22 = lshr i32 %shr19, 1, !dbg !385
  %0 = or i32 %and22, -2, !dbg !385
  %.neg = add nsw i32 %0, 1, !dbg !385
  %and26 = and i32 %sub21, %.neg, !dbg !386
  %add27 = add i32 %add20, %and26, !dbg !387
  ret i32 %add27, !dbg !388
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__cmpdi2(i64 noundef %a, i64 noundef %b) #1 !dbg !389 {
entry:
  %x = alloca %union.dwords, align 8
  %y = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %x, i32 0, i32 0, !dbg !390
  store i64 %a, i64* %all, align 8, !dbg !391
  %all1 = getelementptr inbounds %union.dwords, %union.dwords* %y, i32 0, i32 0, !dbg !392
  store i64 %b, i64* %all1, align 8, !dbg !393
  %s = bitcast %union.dwords* %x to %struct.binarysearch_DATA*, !dbg !394
  %high = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s, i32 0, i32 1, !dbg !395
  %0 = load i32, i32* %high, align 4, !dbg !395
  %s2 = bitcast %union.dwords* %y to %struct.binarysearch_DATA*, !dbg !396
  %high3 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s2, i32 0, i32 1, !dbg !397
  %1 = load i32, i32* %high3, align 4, !dbg !397
  %cmp = icmp slt i32 %0, %1, !dbg !398
  br i1 %cmp, label %if.then, label %if.end, !dbg !399

if.then:                                          ; preds = %entry
  br label %return, !dbg !400

if.end:                                           ; preds = %entry
  %s4 = bitcast %union.dwords* %x to %struct.binarysearch_DATA*, !dbg !401
  %high5 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s4, i32 0, i32 1, !dbg !402
  %2 = load i32, i32* %high5, align 4, !dbg !402
  %s6 = bitcast %union.dwords* %y to %struct.binarysearch_DATA*, !dbg !403
  %high7 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s6, i32 0, i32 1, !dbg !404
  %3 = load i32, i32* %high7, align 4, !dbg !404
  %cmp8 = icmp sgt i32 %2, %3, !dbg !405
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !406

if.then9:                                         ; preds = %if.end
  br label %return, !dbg !407

if.end10:                                         ; preds = %if.end
  %low = bitcast %union.dwords* %x to i32*, !dbg !408
  %4 = load i32, i32* %low, align 8, !dbg !408
  %low13 = bitcast %union.dwords* %y to i32*, !dbg !409
  %5 = load i32, i32* %low13, align 8, !dbg !409
  %cmp14 = icmp ult i32 %4, %5, !dbg !410
  br i1 %cmp14, label %if.then15, label %if.end16, !dbg !411

if.then15:                                        ; preds = %if.end10
  br label %return, !dbg !412

if.end16:                                         ; preds = %if.end10
  %low18 = bitcast %union.dwords* %x to i32*, !dbg !413
  %6 = load i32, i32* %low18, align 8, !dbg !413
  %low20 = bitcast %union.dwords* %y to i32*, !dbg !414
  %7 = load i32, i32* %low20, align 8, !dbg !414
  %cmp21 = icmp ugt i32 %6, %7, !dbg !415
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !416

if.then22:                                        ; preds = %if.end16
  br label %return, !dbg !417

if.end23:                                         ; preds = %if.end16
  br label %return, !dbg !418

return:                                           ; preds = %if.end23, %if.then22, %if.then15, %if.then9, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 2, %if.then9 ], [ 0, %if.then15 ], [ 2, %if.then22 ], [ 1, %if.end23 ], !dbg !419
  ret i32 %retval.0, !dbg !420
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__aeabi_lcmp(i64 noundef %a, i64 noundef %b) #1 !dbg !421 {
entry:
  %call = call arm_aapcscc i32 @__cmpdi2(i64 noundef %a, i64 noundef %b) #4, !dbg !422
  %sub = add nsw i32 %call, -1, !dbg !423
  ret i32 %sub, !dbg !424
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__ctzdi2(i64 noundef %a) #1 !dbg !425 {
entry:
  %x = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %x, i32 0, i32 0, !dbg !426
  store i64 %a, i64* %all, align 8, !dbg !427
  %low = bitcast %union.dwords* %x to i32*, !dbg !428
  %0 = load i32, i32* %low, align 8, !dbg !428
  %cmp = icmp eq i32 %0, 0, !dbg !429
  %s1 = bitcast %union.dwords* %x to %struct.binarysearch_DATA*, !dbg !430
  %high = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s1, i32 0, i32 1, !dbg !431
  %1 = load i32, i32* %high, align 4, !dbg !431
  %2 = select i1 %cmp, i32 %1, i32 %0, !dbg !432
  %3 = call i32 @llvm.cttz.i32(i32 %2, i1 false), !dbg !433, !range !357
  %and5 = select i1 %cmp, i32 32, i32 0, !dbg !434
  %add = add nuw nsw i32 %3, %and5, !dbg !435
  ret i32 %add, !dbg !436
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #3

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__ctzsi2(i32 noundef %a) #1 !dbg !437 {
entry:
  %and = and i32 %a, 65535, !dbg !438
  %cmp = icmp eq i32 %and, 0, !dbg !439
  %shl = select i1 %cmp, i32 16, i32 0, !dbg !440
  %shr = lshr i32 %a, %shl, !dbg !441
  %and1 = and i32 %shr, 255, !dbg !442
  %cmp2 = icmp eq i32 %and1, 0, !dbg !443
  %shl4 = select i1 %cmp2, i32 8, i32 0, !dbg !444
  %shr5 = lshr i32 %shr, %shl4, !dbg !445
  %add = or i32 %shl, %shl4, !dbg !446
  %and6 = and i32 %shr5, 15, !dbg !447
  %cmp7 = icmp eq i32 %and6, 0, !dbg !448
  %shl9 = select i1 %cmp7, i32 4, i32 0, !dbg !449
  %shr10 = lshr i32 %shr5, %shl9, !dbg !450
  %add11 = or i32 %add, %shl9, !dbg !451
  %and12 = and i32 %shr10, 3, !dbg !452
  %cmp13 = icmp eq i32 %and12, 0, !dbg !453
  %shl15 = select i1 %cmp13, i32 2, i32 0, !dbg !454
  %shr16 = lshr i32 %shr10, %shl15, !dbg !455
  %add18 = or i32 %add11, %shl15, !dbg !456
  %and17 = lshr i32 %shr16, 1, !dbg !457
  %shr19 = and i32 %and17, 1, !dbg !457
  %sub = sub nuw nsw i32 2, %shr19, !dbg !458
  %0 = or i32 %shr16, -2, !dbg !459
  %.neg = add nsw i32 %0, 1, !dbg !459
  %and24 = and i32 %sub, %.neg, !dbg !460
  %add25 = add nuw nsw i32 %add18, %and24, !dbg !461
  ret i32 %add25, !dbg !462
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__divdi3(i64 noundef %a, i64 noundef %b) #1 !dbg !463 {
entry:
  %shr = ashr i64 %a, 63, !dbg !464
  %shr1 = ashr i64 %b, 63, !dbg !465
  %xor = xor i64 %shr, %a, !dbg !466
  %sub = sub nsw i64 %xor, %shr, !dbg !467
  %xor2 = xor i64 %shr1, %b, !dbg !468
  %sub3 = sub nsw i64 %xor2, %shr1, !dbg !469
  %xor4 = xor i64 %shr, %shr1, !dbg !470
  %call = call arm_aapcscc i64 @__udivmoddi4(i64 noundef %sub, i64 noundef %sub3, i64* noundef null) #4, !dbg !471
  %xor5 = xor i64 %call, %xor4, !dbg !472
  %sub6 = sub i64 %xor5, %xor4, !dbg !473
  ret i64 %sub6, !dbg !474
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__udivmoddi4(i64 noundef %a, i64 noundef %b, i64* noundef %rem) #1 !dbg !475 {
entry:
  %n = alloca %union.dwords, align 8
  %d = alloca %union.dwords, align 8
  %q = alloca %union.dwords, align 8
  %r = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %n, i32 0, i32 0, !dbg !476
  store i64 %a, i64* %all, align 8, !dbg !477
  %all1 = getelementptr inbounds %union.dwords, %union.dwords* %d, i32 0, i32 0, !dbg !478
  store i64 %b, i64* %all1, align 8, !dbg !479
  %s = bitcast %union.dwords* %n to %struct.binarysearch_DATA*, !dbg !480
  %high = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s, i32 0, i32 1, !dbg !481
  %0 = load i32, i32* %high, align 4, !dbg !481
  %cmp = icmp eq i32 %0, 0, !dbg !482
  br i1 %cmp, label %if.then, label %if.end23, !dbg !483

if.then:                                          ; preds = %entry
  %s2 = bitcast %union.dwords* %d to %struct.binarysearch_DATA*, !dbg !484
  %high3 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s2, i32 0, i32 1, !dbg !485
  %1 = load i32, i32* %high3, align 4, !dbg !485
  %cmp4 = icmp eq i32 %1, 0, !dbg !486
  br i1 %cmp4, label %if.then5, label %if.end16, !dbg !487

if.then5:                                         ; preds = %if.then
  %tobool.not = icmp eq i64* %rem, null, !dbg !488
  br i1 %tobool.not, label %if.end, label %if.then6, !dbg !488

if.then6:                                         ; preds = %if.then5
  %low = bitcast %union.dwords* %n to i32*, !dbg !489
  %2 = load i32, i32* %low, align 8, !dbg !489
  %low9 = bitcast %union.dwords* %d to i32*, !dbg !490
  %3 = load i32, i32* %low9, align 8, !dbg !490
  %rem10 = urem i32 %2, %3, !dbg !491
  %conv = zext i32 %rem10 to i64, !dbg !492
  store i64 %conv, i64* %rem, align 8, !dbg !493
  br label %if.end, !dbg !494

if.end:                                           ; preds = %if.then6, %if.then5
  %low12 = bitcast %union.dwords* %n to i32*, !dbg !495
  %4 = load i32, i32* %low12, align 8, !dbg !495
  %low14 = bitcast %union.dwords* %d to i32*, !dbg !496
  %5 = load i32, i32* %low14, align 8, !dbg !496
  %div = udiv i32 %4, %5, !dbg !497
  %conv15 = zext i32 %div to i64, !dbg !498
  br label %return, !dbg !499

if.end16:                                         ; preds = %if.then
  %tobool17.not = icmp eq i64* %rem, null, !dbg !500
  br i1 %tobool17.not, label %if.end22, label %if.then18, !dbg !500

if.then18:                                        ; preds = %if.end16
  %low20 = bitcast %union.dwords* %n to i32*, !dbg !501
  %6 = load i32, i32* %low20, align 8, !dbg !501
  %conv21 = zext i32 %6 to i64, !dbg !502
  store i64 %conv21, i64* %rem, align 8, !dbg !503
  br label %if.end22, !dbg !504

if.end22:                                         ; preds = %if.then18, %if.end16
  br label %return, !dbg !505

if.end23:                                         ; preds = %entry
  %low25 = bitcast %union.dwords* %d to i32*, !dbg !506
  %7 = load i32, i32* %low25, align 8, !dbg !506
  %cmp26 = icmp eq i32 %7, 0, !dbg !507
  br i1 %cmp26, label %if.then28, label %if.else, !dbg !508

if.then28:                                        ; preds = %if.end23
  %s29 = bitcast %union.dwords* %d to %struct.binarysearch_DATA*, !dbg !509
  %high30 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s29, i32 0, i32 1, !dbg !510
  %8 = load i32, i32* %high30, align 4, !dbg !510
  %cmp31 = icmp eq i32 %8, 0, !dbg !511
  br i1 %cmp31, label %if.then33, label %if.end49, !dbg !512

if.then33:                                        ; preds = %if.then28
  %tobool34.not = icmp eq i64* %rem, null, !dbg !513
  br i1 %tobool34.not, label %if.end42, label %if.then35, !dbg !513

if.then35:                                        ; preds = %if.then33
  %s36 = bitcast %union.dwords* %n to %struct.binarysearch_DATA*, !dbg !514
  %high37 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s36, i32 0, i32 1, !dbg !515
  %9 = load i32, i32* %high37, align 4, !dbg !515
  %low39 = bitcast %union.dwords* %d to i32*, !dbg !516
  %10 = load i32, i32* %low39, align 8, !dbg !516
  %rem40 = urem i32 %9, %10, !dbg !517
  %conv41 = zext i32 %rem40 to i64, !dbg !518
  store i64 %conv41, i64* %rem, align 8, !dbg !519
  br label %if.end42, !dbg !520

if.end42:                                         ; preds = %if.then35, %if.then33
  %s43 = bitcast %union.dwords* %n to %struct.binarysearch_DATA*, !dbg !521
  %high44 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s43, i32 0, i32 1, !dbg !522
  %11 = load i32, i32* %high44, align 4, !dbg !522
  %low46 = bitcast %union.dwords* %d to i32*, !dbg !523
  %12 = load i32, i32* %low46, align 8, !dbg !523
  %div47 = udiv i32 %11, %12, !dbg !524
  %conv48 = zext i32 %div47 to i64, !dbg !525
  br label %return, !dbg !526

if.end49:                                         ; preds = %if.then28
  %low51 = bitcast %union.dwords* %n to i32*, !dbg !527
  %13 = load i32, i32* %low51, align 8, !dbg !527
  %cmp52 = icmp eq i32 %13, 0, !dbg !528
  br i1 %cmp52, label %if.then54, label %if.end74, !dbg !529

if.then54:                                        ; preds = %if.end49
  %tobool55.not = icmp eq i64* %rem, null, !dbg !530
  br i1 %tobool55.not, label %if.end67, label %if.then56, !dbg !530

if.then56:                                        ; preds = %if.then54
  %s57 = bitcast %union.dwords* %n to %struct.binarysearch_DATA*, !dbg !531
  %high58 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s57, i32 0, i32 1, !dbg !532
  %14 = load i32, i32* %high58, align 4, !dbg !532
  %s59 = bitcast %union.dwords* %d to %struct.binarysearch_DATA*, !dbg !533
  %high60 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s59, i32 0, i32 1, !dbg !534
  %15 = load i32, i32* %high60, align 4, !dbg !534
  %rem61 = urem i32 %14, %15, !dbg !535
  %s62 = bitcast %union.dwords* %r to %struct.binarysearch_DATA*, !dbg !536
  %high63 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s62, i32 0, i32 1, !dbg !537
  store i32 %rem61, i32* %high63, align 4, !dbg !538
  %low65 = bitcast %union.dwords* %r to i32*, !dbg !539
  store i32 0, i32* %low65, align 8, !dbg !540
  %all66 = getelementptr inbounds %union.dwords, %union.dwords* %r, i32 0, i32 0, !dbg !541
  %16 = load i64, i64* %all66, align 8, !dbg !541
  store i64 %16, i64* %rem, align 8, !dbg !542
  br label %if.end67, !dbg !543

if.end67:                                         ; preds = %if.then56, %if.then54
  %s68 = bitcast %union.dwords* %n to %struct.binarysearch_DATA*, !dbg !544
  %high69 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s68, i32 0, i32 1, !dbg !545
  %17 = load i32, i32* %high69, align 4, !dbg !545
  %s70 = bitcast %union.dwords* %d to %struct.binarysearch_DATA*, !dbg !546
  %high71 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s70, i32 0, i32 1, !dbg !547
  %18 = load i32, i32* %high71, align 4, !dbg !547
  %div72 = udiv i32 %17, %18, !dbg !548
  %conv73 = zext i32 %div72 to i64, !dbg !549
  br label %return, !dbg !550

if.end74:                                         ; preds = %if.end49
  %s75 = bitcast %union.dwords* %d to %struct.binarysearch_DATA*, !dbg !551
  %high76 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s75, i32 0, i32 1, !dbg !552
  %19 = load i32, i32* %high76, align 4, !dbg !552
  %s77 = bitcast %union.dwords* %d to %struct.binarysearch_DATA*, !dbg !553
  %high78 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s77, i32 0, i32 1, !dbg !554
  %20 = load i32, i32* %high78, align 4, !dbg !554
  %sub = add i32 %20, -1, !dbg !555
  %and = and i32 %19, %sub, !dbg !556
  %cmp79 = icmp eq i32 %and, 0, !dbg !557
  br i1 %cmp79, label %if.then81, label %if.end103, !dbg !558

if.then81:                                        ; preds = %if.end74
  %tobool82.not = icmp eq i64* %rem, null, !dbg !559
  br i1 %tobool82.not, label %if.end97, label %if.then83, !dbg !559

if.then83:                                        ; preds = %if.then81
  %low85 = bitcast %union.dwords* %n to i32*, !dbg !560
  %21 = load i32, i32* %low85, align 8, !dbg !560
  %low87 = bitcast %union.dwords* %r to i32*, !dbg !561
  store i32 %21, i32* %low87, align 8, !dbg !562
  %s88 = bitcast %union.dwords* %n to %struct.binarysearch_DATA*, !dbg !563
  %high89 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s88, i32 0, i32 1, !dbg !564
  %22 = load i32, i32* %high89, align 4, !dbg !564
  %s90 = bitcast %union.dwords* %d to %struct.binarysearch_DATA*, !dbg !565
  %high91 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s90, i32 0, i32 1, !dbg !566
  %23 = load i32, i32* %high91, align 4, !dbg !566
  %sub92 = add i32 %23, -1, !dbg !567
  %and93 = and i32 %22, %sub92, !dbg !568
  %s94 = bitcast %union.dwords* %r to %struct.binarysearch_DATA*, !dbg !569
  %high95 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s94, i32 0, i32 1, !dbg !570
  store i32 %and93, i32* %high95, align 4, !dbg !571
  %all96 = getelementptr inbounds %union.dwords, %union.dwords* %r, i32 0, i32 0, !dbg !572
  %24 = load i64, i64* %all96, align 8, !dbg !572
  store i64 %24, i64* %rem, align 8, !dbg !573
  br label %if.end97, !dbg !574

if.end97:                                         ; preds = %if.then83, %if.then81
  %s98 = bitcast %union.dwords* %n to %struct.binarysearch_DATA*, !dbg !575
  %high99 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s98, i32 0, i32 1, !dbg !576
  %25 = load i32, i32* %high99, align 4, !dbg !576
  %s100 = bitcast %union.dwords* %d to %struct.binarysearch_DATA*, !dbg !577
  %high101 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s100, i32 0, i32 1, !dbg !578
  %26 = load i32, i32* %high101, align 4, !dbg !578
  %27 = call i32 @llvm.cttz.i32(i32 %26, i1 false), !dbg !579, !range !357
  %shr = lshr i32 %25, %27, !dbg !580
  %conv102 = zext i32 %shr to i64, !dbg !581
  br label %return, !dbg !582

if.end103:                                        ; preds = %if.end74
  %s104 = bitcast %union.dwords* %d to %struct.binarysearch_DATA*, !dbg !583
  %high105 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s104, i32 0, i32 1, !dbg !584
  %28 = load i32, i32* %high105, align 4, !dbg !584
  %29 = call i32 @llvm.ctlz.i32(i32 %28, i1 false), !dbg !585, !range !357
  %s106 = bitcast %union.dwords* %n to %struct.binarysearch_DATA*, !dbg !586
  %high107 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s106, i32 0, i32 1, !dbg !587
  %30 = load i32, i32* %high107, align 4, !dbg !587
  %31 = call i32 @llvm.ctlz.i32(i32 %30, i1 false), !dbg !588, !range !357
  %sub108 = sub nsw i32 %29, %31, !dbg !589
  %cmp109 = icmp ugt i32 %sub108, 30, !dbg !590
  br i1 %cmp109, label %if.then111, label %if.end116, !dbg !591

if.then111:                                       ; preds = %if.end103
  %tobool112.not = icmp eq i64* %rem, null, !dbg !592
  br i1 %tobool112.not, label %if.end115, label %if.then113, !dbg !592

if.then113:                                       ; preds = %if.then111
  %all114 = getelementptr inbounds %union.dwords, %union.dwords* %n, i32 0, i32 0, !dbg !593
  %32 = load i64, i64* %all114, align 8, !dbg !593
  store i64 %32, i64* %rem, align 8, !dbg !594
  br label %if.end115, !dbg !595

if.end115:                                        ; preds = %if.then113, %if.then111
  br label %return, !dbg !596

if.end116:                                        ; preds = %if.end103
  %inc = add nsw i32 %sub108, 1, !dbg !597
  %low118 = bitcast %union.dwords* %q to i32*, !dbg !598
  store i32 0, i32* %low118, align 8, !dbg !599
  %low120 = bitcast %union.dwords* %n to i32*, !dbg !600
  %33 = load i32, i32* %low120, align 8, !dbg !600
  %sub121 = sub nsw i32 31, %sub108, !dbg !601
  %shl = shl i32 %33, %sub121, !dbg !602
  %s122 = bitcast %union.dwords* %q to %struct.binarysearch_DATA*, !dbg !603
  %high123 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s122, i32 0, i32 1, !dbg !604
  store i32 %shl, i32* %high123, align 4, !dbg !605
  %s124 = bitcast %union.dwords* %n to %struct.binarysearch_DATA*, !dbg !606
  %high125 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s124, i32 0, i32 1, !dbg !607
  %34 = load i32, i32* %high125, align 4, !dbg !607
  %shr126 = lshr i32 %34, %inc, !dbg !608
  %s127 = bitcast %union.dwords* %r to %struct.binarysearch_DATA*, !dbg !609
  %high128 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s127, i32 0, i32 1, !dbg !610
  store i32 %shr126, i32* %high128, align 4, !dbg !611
  %s129 = bitcast %union.dwords* %n to %struct.binarysearch_DATA*, !dbg !612
  %high130 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s129, i32 0, i32 1, !dbg !613
  %35 = load i32, i32* %high130, align 4, !dbg !613
  %sub131 = sub nsw i32 31, %sub108, !dbg !614
  %shl132 = shl i32 %35, %sub131, !dbg !615
  %low134 = bitcast %union.dwords* %n to i32*, !dbg !616
  %36 = load i32, i32* %low134, align 8, !dbg !616
  %shr135 = lshr i32 %36, %inc, !dbg !617
  %or = or i32 %shl132, %shr135, !dbg !618
  %low137 = bitcast %union.dwords* %r to i32*, !dbg !619
  store i32 %or, i32* %low137, align 8, !dbg !620
  br label %if.end317, !dbg !621

if.else:                                          ; preds = %if.end23
  %s138 = bitcast %union.dwords* %d to %struct.binarysearch_DATA*, !dbg !622
  %high139 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s138, i32 0, i32 1, !dbg !623
  %37 = load i32, i32* %high139, align 4, !dbg !623
  %cmp140 = icmp eq i32 %37, 0, !dbg !624
  br i1 %cmp140, label %if.then142, label %if.else263, !dbg !625

if.then142:                                       ; preds = %if.else
  %low144 = bitcast %union.dwords* %d to i32*, !dbg !626
  %38 = load i32, i32* %low144, align 8, !dbg !626
  %39 = call i32 @llvm.ctpop.i32(i32 %38), !dbg !627, !range !357
  %cmp149 = icmp ult i32 %39, 2, !dbg !627
  br i1 %cmp149, label %if.then151, label %if.end187, !dbg !628

if.then151:                                       ; preds = %if.then142
  %tobool152.not = icmp eq i64* %rem, null, !dbg !629
  br i1 %tobool152.not, label %if.end161, label %if.then153, !dbg !629

if.then153:                                       ; preds = %if.then151
  %low155 = bitcast %union.dwords* %n to i32*, !dbg !630
  %40 = load i32, i32* %low155, align 8, !dbg !630
  %low157 = bitcast %union.dwords* %d to i32*, !dbg !631
  %41 = load i32, i32* %low157, align 8, !dbg !631
  %sub158 = add i32 %41, -1, !dbg !632
  %and159 = and i32 %40, %sub158, !dbg !633
  %conv160 = zext i32 %and159 to i64, !dbg !634
  store i64 %conv160, i64* %rem, align 8, !dbg !635
  br label %if.end161, !dbg !636

if.end161:                                        ; preds = %if.then153, %if.then151
  %low163 = bitcast %union.dwords* %d to i32*, !dbg !637
  %42 = load i32, i32* %low163, align 8, !dbg !637
  %cmp164 = icmp eq i32 %42, 1, !dbg !638
  br i1 %cmp164, label %if.then166, label %if.end168, !dbg !639

if.then166:                                       ; preds = %if.end161
  %all167 = getelementptr inbounds %union.dwords, %union.dwords* %n, i32 0, i32 0, !dbg !640
  %43 = load i64, i64* %all167, align 8, !dbg !640
  br label %return, !dbg !641

if.end168:                                        ; preds = %if.end161
  %low170 = bitcast %union.dwords* %d to i32*, !dbg !642
  %44 = load i32, i32* %low170, align 8, !dbg !642
  %45 = call i32 @llvm.cttz.i32(i32 %44, i1 false), !dbg !643, !range !357
  %s171 = bitcast %union.dwords* %n to %struct.binarysearch_DATA*, !dbg !644
  %high172 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s171, i32 0, i32 1, !dbg !645
  %46 = load i32, i32* %high172, align 4, !dbg !645
  %shr173 = lshr i32 %46, %45, !dbg !646
  %s174 = bitcast %union.dwords* %q to %struct.binarysearch_DATA*, !dbg !647
  %high175 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s174, i32 0, i32 1, !dbg !648
  store i32 %shr173, i32* %high175, align 4, !dbg !649
  %s176 = bitcast %union.dwords* %n to %struct.binarysearch_DATA*, !dbg !650
  %high177 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s176, i32 0, i32 1, !dbg !651
  %47 = load i32, i32* %high177, align 4, !dbg !651
  %sub178 = sub nuw nsw i32 32, %45, !dbg !652
  %shl179 = shl i32 %47, %sub178, !dbg !653
  %low181 = bitcast %union.dwords* %n to i32*, !dbg !654
  %48 = load i32, i32* %low181, align 8, !dbg !654
  %shr182 = lshr i32 %48, %45, !dbg !655
  %or183 = or i32 %shl179, %shr182, !dbg !656
  %low185 = bitcast %union.dwords* %q to i32*, !dbg !657
  store i32 %or183, i32* %low185, align 8, !dbg !658
  %all186 = getelementptr inbounds %union.dwords, %union.dwords* %q, i32 0, i32 0, !dbg !659
  %49 = load i64, i64* %all186, align 8, !dbg !659
  br label %return, !dbg !660

if.end187:                                        ; preds = %if.then142
  %low189 = bitcast %union.dwords* %d to i32*, !dbg !661
  %50 = load i32, i32* %low189, align 8, !dbg !661
  %51 = call i32 @llvm.ctlz.i32(i32 %50, i1 false), !dbg !662, !range !357
  %add = add nuw nsw i32 %51, 33, !dbg !663
  %s190 = bitcast %union.dwords* %n to %struct.binarysearch_DATA*, !dbg !664
  %high191 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s190, i32 0, i32 1, !dbg !665
  %52 = load i32, i32* %high191, align 4, !dbg !665
  %53 = call i32 @llvm.ctlz.i32(i32 %52, i1 false), !dbg !666, !range !357
  %sub192 = sub nsw i32 %add, %53, !dbg !667
  %cmp193 = icmp eq i32 %sub192, 32, !dbg !668
  br i1 %cmp193, label %if.then195, label %if.else208, !dbg !669

if.then195:                                       ; preds = %if.end187
  %low197 = bitcast %union.dwords* %q to i32*, !dbg !670
  store i32 0, i32* %low197, align 8, !dbg !671
  %low199 = bitcast %union.dwords* %n to i32*, !dbg !672
  %54 = load i32, i32* %low199, align 8, !dbg !672
  %s200 = bitcast %union.dwords* %q to %struct.binarysearch_DATA*, !dbg !673
  %high201 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s200, i32 0, i32 1, !dbg !674
  store i32 %54, i32* %high201, align 4, !dbg !675
  %s202 = bitcast %union.dwords* %r to %struct.binarysearch_DATA*, !dbg !676
  %high203 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s202, i32 0, i32 1, !dbg !677
  store i32 0, i32* %high203, align 4, !dbg !678
  %s204 = bitcast %union.dwords* %n to %struct.binarysearch_DATA*, !dbg !679
  %high205 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s204, i32 0, i32 1, !dbg !680
  %55 = load i32, i32* %high205, align 4, !dbg !680
  %low207 = bitcast %union.dwords* %r to i32*, !dbg !681
  store i32 %55, i32* %low207, align 8, !dbg !682
  br label %if.end262, !dbg !683

if.else208:                                       ; preds = %if.end187
  %cmp209 = icmp ult i32 %sub192, 32, !dbg !684
  br i1 %cmp209, label %if.then211, label %if.else235, !dbg !685

if.then211:                                       ; preds = %if.else208
  %low213 = bitcast %union.dwords* %q to i32*, !dbg !686
  store i32 0, i32* %low213, align 8, !dbg !687
  %low215 = bitcast %union.dwords* %n to i32*, !dbg !688
  %56 = load i32, i32* %low215, align 8, !dbg !688
  %sub216 = sub nsw i32 32, %sub192, !dbg !689
  %shl217 = shl i32 %56, %sub216, !dbg !690
  %s218 = bitcast %union.dwords* %q to %struct.binarysearch_DATA*, !dbg !691
  %high219 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s218, i32 0, i32 1, !dbg !692
  store i32 %shl217, i32* %high219, align 4, !dbg !693
  %s220 = bitcast %union.dwords* %n to %struct.binarysearch_DATA*, !dbg !694
  %high221 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s220, i32 0, i32 1, !dbg !695
  %57 = load i32, i32* %high221, align 4, !dbg !695
  %shr222 = lshr i32 %57, %sub192, !dbg !696
  %s223 = bitcast %union.dwords* %r to %struct.binarysearch_DATA*, !dbg !697
  %high224 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s223, i32 0, i32 1, !dbg !698
  store i32 %shr222, i32* %high224, align 4, !dbg !699
  %s225 = bitcast %union.dwords* %n to %struct.binarysearch_DATA*, !dbg !700
  %high226 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s225, i32 0, i32 1, !dbg !701
  %58 = load i32, i32* %high226, align 4, !dbg !701
  %sub227 = sub nsw i32 32, %sub192, !dbg !702
  %shl228 = shl i32 %58, %sub227, !dbg !703
  %low230 = bitcast %union.dwords* %n to i32*, !dbg !704
  %59 = load i32, i32* %low230, align 8, !dbg !704
  %shr231 = lshr i32 %59, %sub192, !dbg !705
  %or232 = or i32 %shl228, %shr231, !dbg !706
  %low234 = bitcast %union.dwords* %r to i32*, !dbg !707
  store i32 %or232, i32* %low234, align 8, !dbg !708
  br label %if.end261, !dbg !709

if.else235:                                       ; preds = %if.else208
  %low237 = bitcast %union.dwords* %n to i32*, !dbg !710
  %60 = load i32, i32* %low237, align 8, !dbg !710
  %sub238 = sub nsw i32 64, %sub192, !dbg !711
  %shl239 = shl i32 %60, %sub238, !dbg !712
  %low241 = bitcast %union.dwords* %q to i32*, !dbg !713
  store i32 %shl239, i32* %low241, align 8, !dbg !714
  %s242 = bitcast %union.dwords* %n to %struct.binarysearch_DATA*, !dbg !715
  %high243 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s242, i32 0, i32 1, !dbg !716
  %61 = load i32, i32* %high243, align 4, !dbg !716
  %sub244 = sub nsw i32 64, %sub192, !dbg !717
  %shl245 = shl i32 %61, %sub244, !dbg !718
  %low247 = bitcast %union.dwords* %n to i32*, !dbg !719
  %62 = load i32, i32* %low247, align 8, !dbg !719
  %sub248 = add nsw i32 %sub192, -32, !dbg !720
  %shr249 = lshr i32 %62, %sub248, !dbg !721
  %or250 = or i32 %shl245, %shr249, !dbg !722
  %s251 = bitcast %union.dwords* %q to %struct.binarysearch_DATA*, !dbg !723
  %high252 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s251, i32 0, i32 1, !dbg !724
  store i32 %or250, i32* %high252, align 4, !dbg !725
  %s253 = bitcast %union.dwords* %r to %struct.binarysearch_DATA*, !dbg !726
  %high254 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s253, i32 0, i32 1, !dbg !727
  store i32 0, i32* %high254, align 4, !dbg !728
  %s255 = bitcast %union.dwords* %n to %struct.binarysearch_DATA*, !dbg !729
  %high256 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s255, i32 0, i32 1, !dbg !730
  %63 = load i32, i32* %high256, align 4, !dbg !730
  %sub257 = add nsw i32 %sub192, -32, !dbg !731
  %shr258 = lshr i32 %63, %sub257, !dbg !732
  %low260 = bitcast %union.dwords* %r to i32*, !dbg !733
  store i32 %shr258, i32* %low260, align 8, !dbg !734
  br label %if.end261

if.end261:                                        ; preds = %if.else235, %if.then211
  br label %if.end262

if.end262:                                        ; preds = %if.end261, %if.then195
  br label %if.end316, !dbg !735

if.else263:                                       ; preds = %if.else
  %s264 = bitcast %union.dwords* %d to %struct.binarysearch_DATA*, !dbg !736
  %high265 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s264, i32 0, i32 1, !dbg !737
  %64 = load i32, i32* %high265, align 4, !dbg !737
  %65 = call i32 @llvm.ctlz.i32(i32 %64, i1 false), !dbg !738, !range !357
  %s266 = bitcast %union.dwords* %n to %struct.binarysearch_DATA*, !dbg !739
  %high267 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s266, i32 0, i32 1, !dbg !740
  %66 = load i32, i32* %high267, align 4, !dbg !740
  %67 = call i32 @llvm.ctlz.i32(i32 %66, i1 false), !dbg !741, !range !357
  %sub268 = sub nsw i32 %65, %67, !dbg !742
  %cmp269 = icmp ugt i32 %sub268, 31, !dbg !743
  br i1 %cmp269, label %if.then271, label %if.end276, !dbg !744

if.then271:                                       ; preds = %if.else263
  %tobool272.not = icmp eq i64* %rem, null, !dbg !745
  br i1 %tobool272.not, label %if.end275, label %if.then273, !dbg !745

if.then273:                                       ; preds = %if.then271
  %all274 = getelementptr inbounds %union.dwords, %union.dwords* %n, i32 0, i32 0, !dbg !746
  %68 = load i64, i64* %all274, align 8, !dbg !746
  store i64 %68, i64* %rem, align 8, !dbg !747
  br label %if.end275, !dbg !748

if.end275:                                        ; preds = %if.then273, %if.then271
  br label %return, !dbg !749

if.end276:                                        ; preds = %if.else263
  %inc277 = add nsw i32 %sub268, 1, !dbg !750
  %low279 = bitcast %union.dwords* %q to i32*, !dbg !751
  store i32 0, i32* %low279, align 8, !dbg !752
  %cmp280 = icmp eq i32 %inc277, 32, !dbg !753
  br i1 %cmp280, label %if.then282, label %if.else293, !dbg !754

if.then282:                                       ; preds = %if.end276
  %low284 = bitcast %union.dwords* %n to i32*, !dbg !755
  %69 = load i32, i32* %low284, align 8, !dbg !755
  %s285 = bitcast %union.dwords* %q to %struct.binarysearch_DATA*, !dbg !756
  %high286 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s285, i32 0, i32 1, !dbg !757
  store i32 %69, i32* %high286, align 4, !dbg !758
  %s287 = bitcast %union.dwords* %r to %struct.binarysearch_DATA*, !dbg !759
  %high288 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s287, i32 0, i32 1, !dbg !760
  store i32 0, i32* %high288, align 4, !dbg !761
  %s289 = bitcast %union.dwords* %n to %struct.binarysearch_DATA*, !dbg !762
  %high290 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s289, i32 0, i32 1, !dbg !763
  %70 = load i32, i32* %high290, align 4, !dbg !763
  %low292 = bitcast %union.dwords* %r to i32*, !dbg !764
  store i32 %70, i32* %low292, align 8, !dbg !765
  br label %if.end315, !dbg !766

if.else293:                                       ; preds = %if.end276
  %low295 = bitcast %union.dwords* %n to i32*, !dbg !767
  %71 = load i32, i32* %low295, align 8, !dbg !767
  %sub296 = sub nsw i32 31, %sub268, !dbg !768
  %shl297 = shl i32 %71, %sub296, !dbg !769
  %s298 = bitcast %union.dwords* %q to %struct.binarysearch_DATA*, !dbg !770
  %high299 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s298, i32 0, i32 1, !dbg !771
  store i32 %shl297, i32* %high299, align 4, !dbg !772
  %s300 = bitcast %union.dwords* %n to %struct.binarysearch_DATA*, !dbg !773
  %high301 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s300, i32 0, i32 1, !dbg !774
  %72 = load i32, i32* %high301, align 4, !dbg !774
  %shr302 = lshr i32 %72, %inc277, !dbg !775
  %s303 = bitcast %union.dwords* %r to %struct.binarysearch_DATA*, !dbg !776
  %high304 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s303, i32 0, i32 1, !dbg !777
  store i32 %shr302, i32* %high304, align 4, !dbg !778
  %s305 = bitcast %union.dwords* %n to %struct.binarysearch_DATA*, !dbg !779
  %high306 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s305, i32 0, i32 1, !dbg !780
  %73 = load i32, i32* %high306, align 4, !dbg !780
  %sub307 = sub nsw i32 31, %sub268, !dbg !781
  %shl308 = shl i32 %73, %sub307, !dbg !782
  %low310 = bitcast %union.dwords* %n to i32*, !dbg !783
  %74 = load i32, i32* %low310, align 8, !dbg !783
  %shr311 = lshr i32 %74, %inc277, !dbg !784
  %or312 = or i32 %shl308, %shr311, !dbg !785
  %low314 = bitcast %union.dwords* %r to i32*, !dbg !786
  store i32 %or312, i32* %low314, align 8, !dbg !787
  br label %if.end315

if.end315:                                        ; preds = %if.else293, %if.then282
  br label %if.end316

if.end316:                                        ; preds = %if.end315, %if.end262
  %sr.0 = phi i32 [ %sub192, %if.end262 ], [ %inc277, %if.end315 ], !dbg !788
  br label %if.end317

if.end317:                                        ; preds = %if.end316, %if.end116
  %sr.1 = phi i32 [ %inc, %if.end116 ], [ %sr.0, %if.end316 ], !dbg !788
  br label %for.cond, !dbg !789

for.cond:                                         ; preds = %for.inc, %if.end317
  %sr.2 = phi i32 [ %sr.1, %if.end317 ], [ %dec, %for.inc ], !dbg !788
  %carry.0 = phi i32 [ 0, %if.end317 ], [ %conv360, %for.inc ], !dbg !788
  %cmp318.not = icmp eq i32 %sr.2, 0, !dbg !790
  br i1 %cmp318.not, label %for.end, label %for.body, !dbg !789

for.body:                                         ; preds = %for.cond
  %s320 = bitcast %union.dwords* %r to %struct.binarysearch_DATA*, !dbg !791
  %high321 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s320, i32 0, i32 1, !dbg !792
  %75 = load i32, i32* %high321, align 4, !dbg !792
  %low324 = bitcast %union.dwords* %r to i32*, !dbg !793
  %76 = load i32, i32* %low324, align 8, !dbg !793
  %or326 = call i32 @llvm.fshl.i32(i32 %75, i32 %76, i32 1), !dbg !794
  %s327 = bitcast %union.dwords* %r to %struct.binarysearch_DATA*, !dbg !795
  %high328 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s327, i32 0, i32 1, !dbg !796
  store i32 %or326, i32* %high328, align 4, !dbg !797
  %s332 = bitcast %union.dwords* %q to %struct.binarysearch_DATA*, !dbg !798
  %high333 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s332, i32 0, i32 1, !dbg !799
  %77 = load i32, i32* %high333, align 4, !dbg !799
  %or335 = call i32 @llvm.fshl.i32(i32 %76, i32 %77, i32 1), !dbg !800
  %low337 = bitcast %union.dwords* %r to i32*, !dbg !801
  store i32 %or335, i32* %low337, align 8, !dbg !802
  %s338 = bitcast %union.dwords* %q to %struct.binarysearch_DATA*, !dbg !803
  %high339 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s338, i32 0, i32 1, !dbg !804
  %78 = load i32, i32* %high339, align 4, !dbg !804
  %low342 = bitcast %union.dwords* %q to i32*, !dbg !805
  %79 = load i32, i32* %low342, align 8, !dbg !805
  %or344 = call i32 @llvm.fshl.i32(i32 %78, i32 %79, i32 1), !dbg !806
  %s345 = bitcast %union.dwords* %q to %struct.binarysearch_DATA*, !dbg !807
  %high346 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s345, i32 0, i32 1, !dbg !808
  store i32 %or344, i32* %high346, align 4, !dbg !809
  %shl349 = shl i32 %79, 1, !dbg !810
  %or350 = or i32 %shl349, %carry.0, !dbg !811
  %low352 = bitcast %union.dwords* %q to i32*, !dbg !812
  store i32 %or350, i32* %low352, align 8, !dbg !813
  %all354 = getelementptr inbounds %union.dwords, %union.dwords* %d, i32 0, i32 0, !dbg !814
  %80 = load i64, i64* %all354, align 8, !dbg !814
  %all355 = getelementptr inbounds %union.dwords, %union.dwords* %r, i32 0, i32 0, !dbg !815
  %81 = load i64, i64* %all355, align 8, !dbg !815
  %82 = xor i64 %81, -1, !dbg !816
  %sub357 = add i64 %80, %82, !dbg !816
  %isneg = icmp slt i64 %sub357, 0, !dbg !817
  %and362 = select i1 %isneg, i64 %80, i64 0, !dbg !817
  %all363 = getelementptr inbounds %union.dwords, %union.dwords* %r, i32 0, i32 0, !dbg !818
  %sub364 = sub i64 %81, %and362, !dbg !819
  store i64 %sub364, i64* %all363, align 8, !dbg !819
  br label %for.inc, !dbg !820

for.inc:                                          ; preds = %for.body
  %and359 = lshr i64 %sub357, 63, !dbg !821
  %conv360 = trunc i64 %and359 to i32, !dbg !822
  %dec = add i32 %sr.2, -1, !dbg !823
  br label %for.cond, !dbg !789, !llvm.loop !824

for.end:                                          ; preds = %for.cond
  %all365 = getelementptr inbounds %union.dwords, %union.dwords* %q, i32 0, i32 0, !dbg !825
  %83 = load i64, i64* %all365, align 8, !dbg !825
  %shl366 = shl i64 %83, 1, !dbg !826
  %conv367 = zext i32 %carry.0 to i64, !dbg !827
  %or368 = or i64 %shl366, %conv367, !dbg !828
  %all369 = getelementptr inbounds %union.dwords, %union.dwords* %q, i32 0, i32 0, !dbg !829
  store i64 %or368, i64* %all369, align 8, !dbg !830
  %tobool370.not = icmp eq i64* %rem, null, !dbg !831
  br i1 %tobool370.not, label %if.end373, label %if.then371, !dbg !831

if.then371:                                       ; preds = %for.end
  %all372 = getelementptr inbounds %union.dwords, %union.dwords* %r, i32 0, i32 0, !dbg !832
  %84 = load i64, i64* %all372, align 8, !dbg !832
  store i64 %84, i64* %rem, align 8, !dbg !833
  br label %if.end373, !dbg !834

if.end373:                                        ; preds = %if.then371, %for.end
  %all374 = getelementptr inbounds %union.dwords, %union.dwords* %q, i32 0, i32 0, !dbg !835
  %85 = load i64, i64* %all374, align 8, !dbg !835
  br label %return, !dbg !836

return:                                           ; preds = %if.end373, %if.end275, %if.end168, %if.then166, %if.end115, %if.end97, %if.end67, %if.end42, %if.end22, %if.end
  %retval.0 = phi i64 [ %conv15, %if.end ], [ 0, %if.end22 ], [ %conv48, %if.end42 ], [ %conv73, %if.end67 ], [ %conv102, %if.end97 ], [ 0, %if.end115 ], [ %85, %if.end373 ], [ %43, %if.then166 ], [ %49, %if.end168 ], [ 0, %if.end275 ], !dbg !788
  ret i64 %retval.0, !dbg !837
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__divmoddi4(i64 noundef %a, i64 noundef %b, i64* noundef %rem) #1 !dbg !838 {
entry:
  %call = call arm_aapcscc i64 @__divdi3(i64 noundef %a, i64 noundef %b) #4, !dbg !839
  %mul = mul nsw i64 %call, %b, !dbg !840
  %sub = sub nsw i64 %a, %mul, !dbg !841
  store i64 %sub, i64* %rem, align 8, !dbg !842
  ret i64 %call, !dbg !843
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__divmodsi4(i32 noundef %a, i32 noundef %b, i32* noundef %rem) #1 !dbg !844 {
entry:
  %call = call arm_aapcscc i32 @__divsi3(i32 noundef %a, i32 noundef %b) #4, !dbg !845
  %mul = mul nsw i32 %call, %b, !dbg !846
  %sub = sub nsw i32 %a, %mul, !dbg !847
  store i32 %sub, i32* %rem, align 4, !dbg !848
  ret i32 %call, !dbg !849
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__divsi3(i32 noundef %a, i32 noundef %b) #1 !dbg !850 {
entry:
  %shr = ashr i32 %a, 31, !dbg !851
  %shr1 = ashr i32 %b, 31, !dbg !852
  %xor = xor i32 %shr, %a, !dbg !853
  %sub = sub nsw i32 %xor, %shr, !dbg !854
  %xor2 = xor i32 %shr1, %b, !dbg !855
  %sub3 = sub nsw i32 %xor2, %shr1, !dbg !856
  %xor4 = xor i32 %shr, %shr1, !dbg !857
  %div = udiv i32 %sub, %sub3, !dbg !858
  %xor5 = xor i32 %div, %xor4, !dbg !859
  %sub6 = sub i32 %xor5, %xor4, !dbg !860
  ret i32 %sub6, !dbg !861
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__ffsdi2(i64 noundef %a) #1 !dbg !862 {
entry:
  %x = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %x, i32 0, i32 0, !dbg !863
  store i64 %a, i64* %all, align 8, !dbg !864
  %low = bitcast %union.dwords* %x to i32*, !dbg !865
  %0 = load i32, i32* %low, align 8, !dbg !865
  %cmp = icmp eq i32 %0, 0, !dbg !866
  br i1 %cmp, label %if.then, label %if.end6, !dbg !867

if.then:                                          ; preds = %entry
  %s1 = bitcast %union.dwords* %x to %struct.binarysearch_DATA*, !dbg !868
  %high = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s1, i32 0, i32 1, !dbg !869
  %1 = load i32, i32* %high, align 4, !dbg !869
  %cmp2 = icmp eq i32 %1, 0, !dbg !870
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !871

if.then3:                                         ; preds = %if.then
  br label %return, !dbg !872

if.end:                                           ; preds = %if.then
  %s4 = bitcast %union.dwords* %x to %struct.binarysearch_DATA*, !dbg !873
  %high5 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s4, i32 0, i32 1, !dbg !874
  %2 = load i32, i32* %high5, align 4, !dbg !874
  %3 = call i32 @llvm.cttz.i32(i32 %2, i1 false), !dbg !875, !range !357
  %add = add nuw nsw i32 %3, 33, !dbg !876
  br label %return, !dbg !877

if.end6:                                          ; preds = %entry
  %low8 = bitcast %union.dwords* %x to i32*, !dbg !878
  %4 = load i32, i32* %low8, align 8, !dbg !878
  %5 = call i32 @llvm.cttz.i32(i32 %4, i1 false), !dbg !879, !range !357
  %add9 = add nuw nsw i32 %5, 1, !dbg !880
  br label %return, !dbg !881

return:                                           ; preds = %if.end6, %if.end, %if.then3
  %retval.0 = phi i32 [ 0, %if.then3 ], [ %add, %if.end ], [ %add9, %if.end6 ], !dbg !882
  ret i32 %retval.0, !dbg !883
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__ffssi2(i32 noundef %a) #1 !dbg !884 {
entry:
  %cmp = icmp eq i32 %a, 0, !dbg !885
  br i1 %cmp, label %if.then, label %if.end, !dbg !886

if.then:                                          ; preds = %entry
  br label %return, !dbg !887

if.end:                                           ; preds = %entry
  %0 = call i32 @llvm.cttz.i32(i32 %a, i1 true), !dbg !888, !range !357
  %add = add nuw nsw i32 %0, 1, !dbg !889
  br label %return, !dbg !890

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %add, %if.end ], !dbg !891
  ret i32 %retval.0, !dbg !892
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__lshrdi3(i64 noundef %a, i32 noundef %b) #1 !dbg !893 {
entry:
  %input = alloca %union.dwords, align 8
  %result = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %input, i32 0, i32 0, !dbg !894
  store i64 %a, i64* %all, align 8, !dbg !895
  %and = and i32 %b, 32, !dbg !896
  %tobool.not = icmp eq i32 %and, 0, !dbg !896
  br i1 %tobool.not, label %if.else, label %if.then, !dbg !897

if.then:                                          ; preds = %entry
  %s = bitcast %union.dwords* %result to %struct.binarysearch_DATA*, !dbg !898
  %high = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s, i32 0, i32 1, !dbg !899
  store i32 0, i32* %high, align 4, !dbg !900
  %s1 = bitcast %union.dwords* %input to %struct.binarysearch_DATA*, !dbg !901
  %high2 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s1, i32 0, i32 1, !dbg !902
  %0 = load i32, i32* %high2, align 4, !dbg !902
  %sub = add nsw i32 %b, -32, !dbg !903
  %shr = lshr i32 %0, %sub, !dbg !904
  %low = bitcast %union.dwords* %result to i32*, !dbg !905
  store i32 %shr, i32* %low, align 8, !dbg !906
  br label %if.end18, !dbg !907

if.else:                                          ; preds = %entry
  %cmp = icmp eq i32 %b, 0, !dbg !908
  br i1 %cmp, label %if.then4, label %if.end, !dbg !909

if.then4:                                         ; preds = %if.else
  br label %return, !dbg !910

if.end:                                           ; preds = %if.else
  %s5 = bitcast %union.dwords* %input to %struct.binarysearch_DATA*, !dbg !911
  %high6 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s5, i32 0, i32 1, !dbg !912
  %1 = load i32, i32* %high6, align 4, !dbg !912
  %shr7 = lshr i32 %1, %b, !dbg !913
  %s8 = bitcast %union.dwords* %result to %struct.binarysearch_DATA*, !dbg !914
  %high9 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s8, i32 0, i32 1, !dbg !915
  store i32 %shr7, i32* %high9, align 4, !dbg !916
  %s10 = bitcast %union.dwords* %input to %struct.binarysearch_DATA*, !dbg !917
  %high11 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s10, i32 0, i32 1, !dbg !918
  %2 = load i32, i32* %high11, align 4, !dbg !918
  %sub12 = sub nsw i32 32, %b, !dbg !919
  %shl = shl i32 %2, %sub12, !dbg !920
  %low14 = bitcast %union.dwords* %input to i32*, !dbg !921
  %3 = load i32, i32* %low14, align 8, !dbg !921
  %shr15 = lshr i32 %3, %b, !dbg !922
  %or = or i32 %shl, %shr15, !dbg !923
  %low17 = bitcast %union.dwords* %result to i32*, !dbg !924
  store i32 %or, i32* %low17, align 8, !dbg !925
  br label %if.end18

if.end18:                                         ; preds = %if.end, %if.then
  %all19 = getelementptr inbounds %union.dwords, %union.dwords* %result, i32 0, i32 0, !dbg !926
  %4 = load i64, i64* %all19, align 8, !dbg !926
  br label %return, !dbg !927

return:                                           ; preds = %if.end18, %if.then4
  %retval.0 = phi i64 [ %4, %if.end18 ], [ %a, %if.then4 ], !dbg !928
  ret i64 %retval.0, !dbg !929
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__moddi3(i64 noundef %a, i64 noundef %b) #1 !dbg !930 {
entry:
  %r = alloca i64, align 8
  %0 = call i64 @llvm.abs.i64(i64 %b, i1 true), !dbg !931
  %shr1 = ashr i64 %a, 63, !dbg !932
  %xor2 = xor i64 %shr1, %a, !dbg !933
  %sub3 = sub nsw i64 %xor2, %shr1, !dbg !934
  %call = call arm_aapcscc i64 @__udivmoddi4(i64 noundef %sub3, i64 noundef %0, i64* noundef nonnull %r) #4, !dbg !935
  %1 = load i64, i64* %r, align 8, !dbg !936
  %xor4 = xor i64 %1, %shr1, !dbg !937
  %sub5 = sub nsw i64 %xor4, %shr1, !dbg !938
  ret i64 %sub5, !dbg !939
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__modsi3(i32 noundef %a, i32 noundef %b) #1 !dbg !940 {
entry:
  %call = call arm_aapcscc i32 @__divsi3(i32 noundef %a, i32 noundef %b) #4, !dbg !941
  %mul = mul nsw i32 %call, %b, !dbg !942
  %sub = sub nsw i32 %a, %mul, !dbg !943
  ret i32 %sub, !dbg !944
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__mulvdi3(i64 noundef %a, i64 noundef %b) #1 !dbg !945 {
entry:
  %cmp = icmp eq i64 %a, -9223372036854775808, !dbg !946
  br i1 %cmp, label %if.then, label %if.end4, !dbg !947

if.then:                                          ; preds = %entry
  %cmp1 = icmp eq i64 %b, 0, !dbg !948
  br i1 %cmp1, label %if.then3, label %lor.lhs.false, !dbg !949

lor.lhs.false:                                    ; preds = %if.then
  %cmp2 = icmp eq i64 %b, 1, !dbg !950
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !951

if.then3:                                         ; preds = %lor.lhs.false, %if.then
  br label %return, !dbg !952

if.end:                                           ; preds = %lor.lhs.false
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i32 noundef 31, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvdi3, i32 0, i32 0)) #5, !dbg !953
  unreachable, !dbg !953

if.end4:                                          ; preds = %entry
  %cmp5 = icmp eq i64 %b, -9223372036854775808, !dbg !954
  br i1 %cmp5, label %if.then6, label %if.end13, !dbg !955

if.then6:                                         ; preds = %if.end4
  %cmp7 = icmp eq i64 %a, 0, !dbg !956
  br i1 %cmp7, label %if.then10, label %lor.lhs.false8, !dbg !957

lor.lhs.false8:                                   ; preds = %if.then6
  %cmp9 = icmp eq i64 %a, 1, !dbg !958
  br i1 %cmp9, label %if.then10, label %if.end12, !dbg !959

if.then10:                                        ; preds = %lor.lhs.false8, %if.then6
  br label %return, !dbg !960

if.end12:                                         ; preds = %lor.lhs.false8
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i32 noundef 37, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvdi3, i32 0, i32 0)) #5, !dbg !961
  unreachable, !dbg !961

if.end13:                                         ; preds = %if.end4
  %shr = ashr i64 %a, 63, !dbg !962
  %xor = xor i64 %shr, %a, !dbg !963
  %sub = sub nsw i64 %xor, %shr, !dbg !964
  %shr14 = ashr i64 %b, 63, !dbg !965
  %xor15 = xor i64 %shr14, %b, !dbg !966
  %sub16 = sub nsw i64 %xor15, %shr14, !dbg !967
  %cmp17 = icmp slt i64 %sub, 2, !dbg !968
  br i1 %cmp17, label %if.then20, label %lor.lhs.false18, !dbg !969

lor.lhs.false18:                                  ; preds = %if.end13
  %cmp19 = icmp slt i64 %sub16, 2, !dbg !970
  br i1 %cmp19, label %if.then20, label %if.end22, !dbg !971

if.then20:                                        ; preds = %lor.lhs.false18, %if.end13
  br label %return, !dbg !972

if.end22:                                         ; preds = %lor.lhs.false18
  %cmp23 = icmp eq i64 %shr, %shr14, !dbg !973
  br i1 %cmp23, label %if.then24, label %if.else, !dbg !974

if.then24:                                        ; preds = %if.end22
  %div = sdiv i64 9223372036854775807, %sub16, !dbg !975
  %cmp25 = icmp sgt i64 %sub, %div, !dbg !976
  br i1 %cmp25, label %if.then26, label %if.end27, !dbg !977

if.then26:                                        ; preds = %if.then24
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i32 noundef 48, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvdi3, i32 0, i32 0)) #5, !dbg !978
  unreachable, !dbg !978

if.end27:                                         ; preds = %if.then24
  br label %if.end33, !dbg !979

if.else:                                          ; preds = %if.end22
  %sub28 = sub nsw i64 0, %sub16, !dbg !980
  %div29 = sdiv i64 -9223372036854775808, %sub28, !dbg !981
  %cmp30 = icmp sgt i64 %sub, %div29, !dbg !982
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !983

if.then31:                                        ; preds = %if.else
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i32 noundef 53, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvdi3, i32 0, i32 0)) #5, !dbg !984
  unreachable, !dbg !984

if.end32:                                         ; preds = %if.else
  br label %if.end33

if.end33:                                         ; preds = %if.end32, %if.end27
  br label %return, !dbg !985

return:                                           ; preds = %if.end33, %if.then20, %if.then10, %if.then3
  %retval.0 = mul nsw i64 %a, %b, !dbg !986
  ret i64 %retval.0, !dbg !987
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__mulvsi3(i32 noundef %a, i32 noundef %b) #1 !dbg !988 {
entry:
  %cmp = icmp eq i32 %a, -2147483648, !dbg !989
  br i1 %cmp, label %if.then, label %if.end4, !dbg !990

if.then:                                          ; preds = %entry
  %cmp1 = icmp eq i32 %b, 0, !dbg !991
  br i1 %cmp1, label %if.then3, label %lor.lhs.false, !dbg !992

lor.lhs.false:                                    ; preds = %if.then
  %cmp2 = icmp eq i32 %b, 1, !dbg !993
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !994

if.then3:                                         ; preds = %lor.lhs.false, %if.then
  br label %return, !dbg !995

if.end:                                           ; preds = %lor.lhs.false
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), i32 noundef 31, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvsi3, i32 0, i32 0)) #5, !dbg !996
  unreachable, !dbg !996

if.end4:                                          ; preds = %entry
  %cmp5 = icmp eq i32 %b, -2147483648, !dbg !997
  br i1 %cmp5, label %if.then6, label %if.end13, !dbg !998

if.then6:                                         ; preds = %if.end4
  %cmp7 = icmp eq i32 %a, 0, !dbg !999
  br i1 %cmp7, label %if.then10, label %lor.lhs.false8, !dbg !1000

lor.lhs.false8:                                   ; preds = %if.then6
  %cmp9 = icmp eq i32 %a, 1, !dbg !1001
  br i1 %cmp9, label %if.then10, label %if.end12, !dbg !1002

if.then10:                                        ; preds = %lor.lhs.false8, %if.then6
  br label %return, !dbg !1003

if.end12:                                         ; preds = %lor.lhs.false8
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), i32 noundef 37, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvsi3, i32 0, i32 0)) #5, !dbg !1004
  unreachable, !dbg !1004

if.end13:                                         ; preds = %if.end4
  %shr = ashr i32 %a, 31, !dbg !1005
  %xor = xor i32 %shr, %a, !dbg !1006
  %sub = sub nsw i32 %xor, %shr, !dbg !1007
  %shr14 = ashr i32 %b, 31, !dbg !1008
  %xor15 = xor i32 %shr14, %b, !dbg !1009
  %sub16 = sub nsw i32 %xor15, %shr14, !dbg !1010
  %cmp17 = icmp slt i32 %sub, 2, !dbg !1011
  br i1 %cmp17, label %if.then20, label %lor.lhs.false18, !dbg !1012

lor.lhs.false18:                                  ; preds = %if.end13
  %cmp19 = icmp slt i32 %sub16, 2, !dbg !1013
  br i1 %cmp19, label %if.then20, label %if.end22, !dbg !1014

if.then20:                                        ; preds = %lor.lhs.false18, %if.end13
  br label %return, !dbg !1015

if.end22:                                         ; preds = %lor.lhs.false18
  %cmp23 = icmp eq i32 %shr, %shr14, !dbg !1016
  br i1 %cmp23, label %if.then24, label %if.else, !dbg !1017

if.then24:                                        ; preds = %if.end22
  %div = sdiv i32 2147483647, %sub16, !dbg !1018
  %cmp25 = icmp sgt i32 %sub, %div, !dbg !1019
  br i1 %cmp25, label %if.then26, label %if.end27, !dbg !1020

if.then26:                                        ; preds = %if.then24
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), i32 noundef 48, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvsi3, i32 0, i32 0)) #5, !dbg !1021
  unreachable, !dbg !1021

if.end27:                                         ; preds = %if.then24
  br label %if.end33, !dbg !1022

if.else:                                          ; preds = %if.end22
  %sub28 = sub nsw i32 0, %sub16, !dbg !1023
  %div29 = sdiv i32 -2147483648, %sub28, !dbg !1024
  %cmp30 = icmp sgt i32 %sub, %div29, !dbg !1025
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !1026

if.then31:                                        ; preds = %if.else
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), i32 noundef 53, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvsi3, i32 0, i32 0)) #5, !dbg !1027
  unreachable, !dbg !1027

if.end32:                                         ; preds = %if.else
  br label %if.end33

if.end33:                                         ; preds = %if.end32, %if.end27
  br label %return, !dbg !1028

return:                                           ; preds = %if.end33, %if.then20, %if.then10, %if.then3
  %retval.0 = mul nsw i32 %a, %b, !dbg !1029
  ret i32 %retval.0, !dbg !1030
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__paritydi2(i64 noundef %a) #1 !dbg !1031 {
entry:
  %x = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %x, i32 0, i32 0, !dbg !1032
  store i64 %a, i64* %all, align 8, !dbg !1033
  %s = bitcast %union.dwords* %x to %struct.binarysearch_DATA*, !dbg !1034
  %high = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s, i32 0, i32 1, !dbg !1035
  %0 = load i32, i32* %high, align 4, !dbg !1035
  %low = bitcast %union.dwords* %x to i32*, !dbg !1036
  %1 = load i32, i32* %low, align 8, !dbg !1036
  %xor = xor i32 %0, %1, !dbg !1037
  %call = call arm_aapcscc i32 @__paritysi2(i32 noundef %xor) #4, !dbg !1038
  ret i32 %call, !dbg !1039
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__paritysi2(i32 noundef %a) #1 !dbg !1040 {
entry:
  %shr = lshr i32 %a, 16, !dbg !1041
  %xor = xor i32 %shr, %a, !dbg !1042
  %shr1 = lshr i32 %xor, 8, !dbg !1043
  %xor2 = xor i32 %xor, %shr1, !dbg !1044
  %shr3 = lshr i32 %xor2, 4, !dbg !1045
  %xor4 = xor i32 %xor2, %shr3, !dbg !1046
  %and = and i32 %xor4, 15, !dbg !1047
  %shr5 = lshr i32 27030, %and, !dbg !1048
  %and6 = and i32 %shr5, 1, !dbg !1049
  ret i32 %and6, !dbg !1050
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__popcountdi2(i64 noundef %a) #1 !dbg !1051 {
entry:
  %shr = lshr i64 %a, 1, !dbg !1052
  %and = and i64 %shr, 6148914691236517205, !dbg !1053
  %sub = sub i64 %a, %and, !dbg !1054
  %shr1 = lshr i64 %sub, 2, !dbg !1055
  %and2 = and i64 %shr1, 3689348814741910323, !dbg !1056
  %and3 = and i64 %sub, 3689348814741910323, !dbg !1057
  %add = add nuw nsw i64 %and2, %and3, !dbg !1058
  %shr4 = lshr i64 %add, 4, !dbg !1059
  %add5 = add nuw nsw i64 %add, %shr4, !dbg !1060
  %and6 = and i64 %add5, 1085102592571150095, !dbg !1061
  %shr7 = lshr i64 %and6, 32, !dbg !1062
  %add8 = add nuw nsw i64 %and6, %shr7, !dbg !1063
  %conv = trunc i64 %add8 to i32, !dbg !1064
  %shr9 = lshr i32 %conv, 16, !dbg !1065
  %add10 = add nuw nsw i32 %shr9, %conv, !dbg !1066
  %shr11 = lshr i32 %add10, 8, !dbg !1067
  %add12 = add nuw nsw i32 %add10, %shr11, !dbg !1068
  %and13 = and i32 %add12, 127, !dbg !1069
  ret i32 %and13, !dbg !1070
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__popcountsi2(i32 noundef %a) #1 !dbg !1071 {
entry:
  %shr = lshr i32 %a, 1, !dbg !1072
  %and = and i32 %shr, 1431655765, !dbg !1073
  %sub = sub i32 %a, %and, !dbg !1074
  %shr1 = lshr i32 %sub, 2, !dbg !1075
  %and2 = and i32 %shr1, 858993459, !dbg !1076
  %and3 = and i32 %sub, 858993459, !dbg !1077
  %add = add nuw nsw i32 %and2, %and3, !dbg !1078
  %shr4 = lshr i32 %add, 4, !dbg !1079
  %add5 = add nuw nsw i32 %add, %shr4, !dbg !1080
  %and6 = and i32 %add5, 252645135, !dbg !1081
  %shr7 = lshr i32 %and6, 16, !dbg !1082
  %add8 = add nuw nsw i32 %and6, %shr7, !dbg !1083
  %shr9 = lshr i32 %add8, 8, !dbg !1084
  %add10 = add nuw nsw i32 %add8, %shr9, !dbg !1085
  %and11 = and i32 %add10, 63, !dbg !1086
  ret i32 %and11, !dbg !1087
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__subvdi3(i64 noundef %a, i64 noundef %b) #1 !dbg !1088 {
entry:
  %sub = sub i64 %a, %b, !dbg !1089
  %cmp = icmp sgt i64 %b, -1, !dbg !1090
  br i1 %cmp, label %if.then, label %if.else, !dbg !1091

if.then:                                          ; preds = %entry
  %cmp1 = icmp sgt i64 %sub, %a, !dbg !1092
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !1093

if.then2:                                         ; preds = %if.then
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i32 0, i32 0), i32 noundef 28, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__subvdi3, i32 0, i32 0)) #5, !dbg !1094
  unreachable, !dbg !1094

if.end:                                           ; preds = %if.then
  br label %if.end6, !dbg !1095

if.else:                                          ; preds = %entry
  %cmp3.not = icmp sgt i64 %sub, %a, !dbg !1096
  br i1 %cmp3.not, label %if.end5, label %if.then4, !dbg !1097

if.then4:                                         ; preds = %if.else
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i32 0, i32 0), i32 noundef 33, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__subvdi3, i32 0, i32 0)) #5, !dbg !1098
  unreachable, !dbg !1098

if.end5:                                          ; preds = %if.else
  br label %if.end6

if.end6:                                          ; preds = %if.end5, %if.end
  ret i64 %sub, !dbg !1099
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__subvsi3(i32 noundef %a, i32 noundef %b) #1 !dbg !1100 {
entry:
  %sub = sub i32 %a, %b, !dbg !1101
  %cmp = icmp sgt i32 %b, -1, !dbg !1102
  br i1 %cmp, label %if.then, label %if.else, !dbg !1103

if.then:                                          ; preds = %entry
  %cmp1 = icmp sgt i32 %sub, %a, !dbg !1104
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !1105

if.then2:                                         ; preds = %if.then
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i32 0, i32 0), i32 noundef 28, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__subvsi3, i32 0, i32 0)) #5, !dbg !1106
  unreachable, !dbg !1106

if.end:                                           ; preds = %if.then
  br label %if.end6, !dbg !1107

if.else:                                          ; preds = %entry
  %cmp3.not = icmp sgt i32 %sub, %a, !dbg !1108
  br i1 %cmp3.not, label %if.end5, label %if.then4, !dbg !1109

if.then4:                                         ; preds = %if.else
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i32 0, i32 0), i32 noundef 33, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__subvsi3, i32 0, i32 0)) #5, !dbg !1110
  unreachable, !dbg !1110

if.end5:                                          ; preds = %if.else
  br label %if.end6

if.end6:                                          ; preds = %if.end5, %if.end
  ret i32 %sub, !dbg !1111
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__ucmpdi2(i64 noundef %a, i64 noundef %b) #1 !dbg !1112 {
entry:
  %x = alloca %union.dwords, align 8
  %y = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %x, i32 0, i32 0, !dbg !1113
  store i64 %a, i64* %all, align 8, !dbg !1114
  %all1 = getelementptr inbounds %union.dwords, %union.dwords* %y, i32 0, i32 0, !dbg !1115
  store i64 %b, i64* %all1, align 8, !dbg !1116
  %s = bitcast %union.dwords* %x to %struct.binarysearch_DATA*, !dbg !1117
  %high = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s, i32 0, i32 1, !dbg !1118
  %0 = load i32, i32* %high, align 4, !dbg !1118
  %s2 = bitcast %union.dwords* %y to %struct.binarysearch_DATA*, !dbg !1119
  %high3 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s2, i32 0, i32 1, !dbg !1120
  %1 = load i32, i32* %high3, align 4, !dbg !1120
  %cmp = icmp ult i32 %0, %1, !dbg !1121
  br i1 %cmp, label %if.then, label %if.end, !dbg !1122

if.then:                                          ; preds = %entry
  br label %return, !dbg !1123

if.end:                                           ; preds = %entry
  %s4 = bitcast %union.dwords* %x to %struct.binarysearch_DATA*, !dbg !1124
  %high5 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s4, i32 0, i32 1, !dbg !1125
  %2 = load i32, i32* %high5, align 4, !dbg !1125
  %s6 = bitcast %union.dwords* %y to %struct.binarysearch_DATA*, !dbg !1126
  %high7 = getelementptr inbounds %struct.binarysearch_DATA, %struct.binarysearch_DATA* %s6, i32 0, i32 1, !dbg !1127
  %3 = load i32, i32* %high7, align 4, !dbg !1127
  %cmp8 = icmp ugt i32 %2, %3, !dbg !1128
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !1129

if.then9:                                         ; preds = %if.end
  br label %return, !dbg !1130

if.end10:                                         ; preds = %if.end
  %low = bitcast %union.dwords* %x to i32*, !dbg !1131
  %4 = load i32, i32* %low, align 8, !dbg !1131
  %low13 = bitcast %union.dwords* %y to i32*, !dbg !1132
  %5 = load i32, i32* %low13, align 8, !dbg !1132
  %cmp14 = icmp ult i32 %4, %5, !dbg !1133
  br i1 %cmp14, label %if.then15, label %if.end16, !dbg !1134

if.then15:                                        ; preds = %if.end10
  br label %return, !dbg !1135

if.end16:                                         ; preds = %if.end10
  %low18 = bitcast %union.dwords* %x to i32*, !dbg !1136
  %6 = load i32, i32* %low18, align 8, !dbg !1136
  %low20 = bitcast %union.dwords* %y to i32*, !dbg !1137
  %7 = load i32, i32* %low20, align 8, !dbg !1137
  %cmp21 = icmp ugt i32 %6, %7, !dbg !1138
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !1139

if.then22:                                        ; preds = %if.end16
  br label %return, !dbg !1140

if.end23:                                         ; preds = %if.end16
  br label %return, !dbg !1141

return:                                           ; preds = %if.end23, %if.then22, %if.then15, %if.then9, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 2, %if.then9 ], [ 0, %if.then15 ], [ 2, %if.then22 ], [ 1, %if.end23 ], !dbg !1142
  ret i32 %retval.0, !dbg !1143
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__aeabi_ulcmp(i64 noundef %a, i64 noundef %b) #1 !dbg !1144 {
entry:
  %call = call arm_aapcscc i32 @__ucmpdi2(i64 noundef %a, i64 noundef %b) #4, !dbg !1145
  %sub = add nsw i32 %call, -1, !dbg !1146
  ret i32 %sub, !dbg !1147
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__udivdi3(i64 noundef %a, i64 noundef %b) #1 !dbg !1148 {
entry:
  %call = call arm_aapcscc i64 @__udivmoddi4(i64 noundef %a, i64 noundef %b, i64* noundef null) #4, !dbg !1149
  ret i64 %call, !dbg !1150
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__udivmodsi4(i32 noundef %a, i32 noundef %b, i32* noundef %rem) #1 !dbg !1151 {
entry:
  %call = call arm_aapcscc i32 @__udivsi3(i32 noundef %a, i32 noundef %b) #4, !dbg !1152
  %mul = mul i32 %call, %b, !dbg !1153
  %sub = sub i32 %a, %mul, !dbg !1154
  store i32 %sub, i32* %rem, align 4, !dbg !1155
  ret i32 %call, !dbg !1156
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__udivsi3(i32 noundef %n, i32 noundef %d) #1 !dbg !1157 {
entry:
  %cmp = icmp eq i32 %d, 0, !dbg !1158
  br i1 %cmp, label %if.then, label %if.end, !dbg !1159

if.then:                                          ; preds = %entry
  br label %return, !dbg !1160

if.end:                                           ; preds = %entry
  %cmp1 = icmp eq i32 %n, 0, !dbg !1161
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !1162

if.then2:                                         ; preds = %if.end
  br label %return, !dbg !1163

if.end3:                                          ; preds = %if.end
  %0 = call i32 @llvm.ctlz.i32(i32 %d, i1 true), !dbg !1164, !range !357
  %1 = call i32 @llvm.ctlz.i32(i32 %n, i1 true), !dbg !1165, !range !357
  %sub = sub nsw i32 %0, %1, !dbg !1166
  %cmp4 = icmp ugt i32 %sub, 31, !dbg !1167
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !1168

if.then5:                                         ; preds = %if.end3
  br label %return, !dbg !1169

if.end6:                                          ; preds = %if.end3
  %cmp7 = icmp eq i32 %sub, 31, !dbg !1170
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !1171

if.then8:                                         ; preds = %if.end6
  br label %return, !dbg !1172

if.end9:                                          ; preds = %if.end6
  %inc = add nsw i32 %sub, 1, !dbg !1173
  %sub10 = sub nsw i32 31, %sub, !dbg !1174
  %shl = shl i32 %n, %sub10, !dbg !1175
  %shr = lshr i32 %n, %inc, !dbg !1176
  br label %for.cond, !dbg !1177

for.cond:                                         ; preds = %for.inc, %if.end9
  %q.0 = phi i32 [ %shl, %if.end9 ], [ %or15, %for.inc ], !dbg !1178
  %r.0 = phi i32 [ %shr, %if.end9 ], [ %sub20, %for.inc ], !dbg !1178
  %sr.0 = phi i32 [ %inc, %if.end9 ], [ %dec, %for.inc ], !dbg !1178
  %carry.0 = phi i32 [ 0, %if.end9 ], [ %and, %for.inc ], !dbg !1178
  %cmp11.not = icmp eq i32 %sr.0, 0, !dbg !1179
  br i1 %cmp11.not, label %for.end, label %for.body, !dbg !1177

for.body:                                         ; preds = %for.cond
  %or = call i32 @llvm.fshl.i32(i32 %r.0, i32 %q.0, i32 1), !dbg !1180
  %2 = xor i32 %or, -1, !dbg !1181
  %sub17 = add i32 %2, %d, !dbg !1181
  br label %for.inc, !dbg !1182

for.inc:                                          ; preds = %for.body
  %isneg = icmp slt i32 %sub17, 0, !dbg !1183
  %and19 = select i1 %isneg, i32 %d, i32 0, !dbg !1183
  %sub20 = sub i32 %or, %and19, !dbg !1184
  %and = lshr i32 %sub17, 31, !dbg !1185
  %shl14 = shl i32 %q.0, 1, !dbg !1186
  %or15 = or i32 %shl14, %carry.0, !dbg !1187
  %dec = add i32 %sr.0, -1, !dbg !1188
  br label %for.cond, !dbg !1177, !llvm.loop !1189

for.end:                                          ; preds = %for.cond
  %shl21 = shl i32 %q.0, 1, !dbg !1190
  %or22 = or i32 %shl21, %carry.0, !dbg !1191
  br label %return, !dbg !1192

return:                                           ; preds = %for.end, %if.then8, %if.then5, %if.then2, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then2 ], [ 0, %if.then5 ], [ %n, %if.then8 ], [ %or22, %for.end ], !dbg !1178
  ret i32 %retval.0, !dbg !1193
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__umoddi3(i64 noundef %a, i64 noundef %b) #1 !dbg !1194 {
entry:
  %r = alloca i64, align 8
  %call = call arm_aapcscc i64 @__udivmoddi4(i64 noundef %a, i64 noundef %b, i64* noundef nonnull %r) #4, !dbg !1195
  %0 = load i64, i64* %r, align 8, !dbg !1196
  ret i64 %0, !dbg !1197
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__umodsi3(i32 noundef %a, i32 noundef %b) #1 !dbg !1198 {
entry:
  %call = call arm_aapcscc i32 @__udivsi3(i32 noundef %a, i32 noundef %b) #4, !dbg !1199
  %mul = mul i32 %call, %b, !dbg !1200
  %sub = sub i32 %a, %mul, !dbg !1201
  ret i32 %sub, !dbg !1202
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i8* @memcpy(i8* noundef %destination, i8* noundef %source, i32 noundef %num) #1 !dbg !1203 {
entry:
  br label %for.cond, !dbg !1204

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !dbg !1205
  %exitcond.not = icmp eq i32 %i.0, %num, !dbg !1206
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !1207

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds i8, i8* %source, i32 %i.0, !dbg !1208
  %0 = load i8, i8* %arrayidx, align 1, !dbg !1208
  %arrayidx1 = getelementptr inbounds i8, i8* %destination, i32 %i.0, !dbg !1209
  store i8 %0, i8* %arrayidx1, align 1, !dbg !1210
  br label %for.inc, !dbg !1211

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.0, 1, !dbg !1212
  br label %for.cond, !dbg !1207, !llvm.loop !1213

for.end:                                          ; preds = %for.cond
  ret i8* undef, !dbg !1214
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i8* @memset(i8* noundef %ptr, i32 noundef %value, i32 noundef %num) #1 !dbg !1215 {
entry:
  br label %for.cond, !dbg !1216

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !dbg !1217
  %exitcond.not = icmp eq i32 %i.0, %num, !dbg !1218
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !1219

for.body:                                         ; preds = %for.cond
  %conv = trunc i32 %value to i8, !dbg !1220
  %arrayidx = getelementptr inbounds i8, i8* %ptr, i32 %i.0, !dbg !1221
  store i8 %conv, i8* %arrayidx, align 1, !dbg !1222
  br label %for.inc, !dbg !1223

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.0, 1, !dbg !1224
  br label %for.cond, !dbg !1219, !llvm.loop !1225

for.end:                                          ; preds = %for.cond
  ret i8* %ptr, !dbg !1226
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

!llvm.dbg.cu = !{!2, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129}
!llvm.ident = !{!131, !132, !132, !132, !132, !132, !132, !132, !132, !132, !132, !132, !132, !132, !132, !132, !132, !132, !132, !132, !132, !132, !132, !132, !132, !132, !132, !132, !132, !132, !132, !132, !132, !132, !132, !132, !132, !132, !132, !132, !132, !132, !132, !132, !132, !132, !132, !132, !132, !132, !132, !132, !132, !132, !132, !132, !132}
!llvm.module.flags = !{!133, !134, !135, !136, !137, !138, !139, !140, !141}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "binarysearch_seed", scope: !2, file: !7, line: 51, type: !18, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 14.0.6 (git@github.com:RTS-SYSU/LLVM-TA.git b7f9c4ccdebc6c37532ddd772889e5f0ff989c79)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !4, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/workspaces/llvmta/testcases/singletest/binarysearch/binarysearch.c", directory: "/workspaces/llvmta/testcases/singletest")
!4 = !{!0, !5, !16}
!5 = !DIGlobalVariableExpression(var: !6, expr: !DIExpression())
!6 = distinct !DIGlobalVariable(name: "binarysearch_data", scope: !2, file: !7, line: 58, type: !8, isLocal: false, isDefinition: true)
!7 = !DIFile(filename: "binarysearch/binarysearch.c", directory: "/workspaces/llvmta/testcases/singletest")
!8 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 960, elements: !14)
!9 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "binarysearch_DATA", file: !7, line: 53, size: 64, elements: !10)
!10 = !{!11, !13}
!11 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !9, file: !7, line: 54, baseType: !12, size: 32)
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !9, file: !7, line: 55, baseType: !12, size: 32, offset: 32)
!14 = !{!15}
!15 = !DISubrange(count: 15)
!16 = !DIGlobalVariableExpression(var: !17, expr: !DIExpression())
!17 = distinct !DIGlobalVariable(name: "binarysearch_result", scope: !2, file: !7, line: 60, type: !12, isLocal: false, isDefinition: true)
!18 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !12)
!19 = distinct !DICompileUnit(language: DW_LANG_C99, file: !20, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!20 = !DIFile(filename: "../absvdi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "f0fa545ed84eab29322431dd903e1bd2")
!21 = distinct !DICompileUnit(language: DW_LANG_C99, file: !22, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!22 = !DIFile(filename: "../absvsi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "4c623fefc2c7ed3929c6e73514b667d1")
!23 = distinct !DICompileUnit(language: DW_LANG_C99, file: !24, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!24 = !DIFile(filename: "../absvti2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "37a4bc629baa89b5b7c1570be0d03e1f")
!25 = distinct !DICompileUnit(language: DW_LANG_C99, file: !26, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!26 = !DIFile(filename: "../addvdi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "aa240ee8ce7c28b2c3bcec10a7603d3f")
!27 = distinct !DICompileUnit(language: DW_LANG_C99, file: !28, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!28 = !DIFile(filename: "../addvsi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "6cd4d40cc00928f1aaf6f29e299078cd")
!29 = distinct !DICompileUnit(language: DW_LANG_C99, file: !30, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!30 = !DIFile(filename: "../addvti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "0db25cee24f6026e13fc556e48cb2a4f")
!31 = distinct !DICompileUnit(language: DW_LANG_C99, file: !32, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!32 = !DIFile(filename: "../ashldi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "ae5236ddcefaf3e5efc4feba69d334b1")
!33 = distinct !DICompileUnit(language: DW_LANG_C99, file: !34, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!34 = !DIFile(filename: "../ashlti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "040402442e4641b723a41224f90bb33c")
!35 = distinct !DICompileUnit(language: DW_LANG_C99, file: !36, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!36 = !DIFile(filename: "../ashrdi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "df60b7a82095e7d7b5c11e1095a5679a")
!37 = distinct !DICompileUnit(language: DW_LANG_C99, file: !38, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!38 = !DIFile(filename: "../ashrti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "d09af17b4c5b806431a14ef018da30a2")
!39 = distinct !DICompileUnit(language: DW_LANG_C99, file: !40, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!40 = !DIFile(filename: "../clzdi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "901c40e0319a50689080965b20695c3e")
!41 = distinct !DICompileUnit(language: DW_LANG_C99, file: !42, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!42 = !DIFile(filename: "../clzsi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "9b0156c55102d3143e17bdf85bafbc30")
!43 = distinct !DICompileUnit(language: DW_LANG_C99, file: !44, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!44 = !DIFile(filename: "../clzti2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "6289c95e51f48974308ae457c947fa76")
!45 = distinct !DICompileUnit(language: DW_LANG_C99, file: !46, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!46 = !DIFile(filename: "../cmpdi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "79ec8a4b383c8374d228cd0869637319")
!47 = distinct !DICompileUnit(language: DW_LANG_C99, file: !48, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!48 = !DIFile(filename: "../cmpti2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "8b9214d8b14681920bdf2cff2acab581")
!49 = distinct !DICompileUnit(language: DW_LANG_C99, file: !50, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!50 = !DIFile(filename: "../ctzdi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "0415a3f61808ca646548bc24b48a844a")
!51 = distinct !DICompileUnit(language: DW_LANG_C99, file: !52, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!52 = !DIFile(filename: "../ctzsi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "0372a2c6647eddaa73c0b61d8d03c3b1")
!53 = distinct !DICompileUnit(language: DW_LANG_C99, file: !54, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!54 = !DIFile(filename: "../ctzti2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "13fd6233b75667ee3310f19e92769490")
!55 = distinct !DICompileUnit(language: DW_LANG_C99, file: !56, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!56 = !DIFile(filename: "../divdi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "281227589e0794a81d7211e4ee4a402c")
!57 = distinct !DICompileUnit(language: DW_LANG_C99, file: !58, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!58 = !DIFile(filename: "../divmoddi4.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "bd72633dccf26f3dd8ee74bf04f7fdac")
!59 = distinct !DICompileUnit(language: DW_LANG_C99, file: !60, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!60 = !DIFile(filename: "../divmodsi4.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "0cf7caca427f8ea020b675e27b5985b5")
!61 = distinct !DICompileUnit(language: DW_LANG_C99, file: !62, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!62 = !DIFile(filename: "../divsi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "7845e3e46788425cf69d463f3cfe00e5")
!63 = distinct !DICompileUnit(language: DW_LANG_C99, file: !64, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!64 = !DIFile(filename: "../divti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "6f197084470906a806c88d3dd279e870")
!65 = distinct !DICompileUnit(language: DW_LANG_C99, file: !66, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!66 = !DIFile(filename: "../ffsdi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "4b800e1cad35a0bc99971441032171a3")
!67 = distinct !DICompileUnit(language: DW_LANG_C99, file: !68, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!68 = !DIFile(filename: "../ffssi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "182169d6765bddc2bf1b03cc7a4f47cb")
!69 = distinct !DICompileUnit(language: DW_LANG_C99, file: !70, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!70 = !DIFile(filename: "../ffsti2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "828ab085c50c22a6e163e289ad75e357")
!71 = distinct !DICompileUnit(language: DW_LANG_C99, file: !72, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!72 = !DIFile(filename: "../int_util.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "7ceb1d4e85bede509d8e6a0974078bc9")
!73 = distinct !DICompileUnit(language: DW_LANG_C99, file: !74, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!74 = !DIFile(filename: "../lshrdi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "c456e45323b3205c3b32d82b51570771")
!75 = distinct !DICompileUnit(language: DW_LANG_C99, file: !76, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!76 = !DIFile(filename: "../lshrti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "a0deefe7ea6369a844ff00cfd3adca3e")
!77 = distinct !DICompileUnit(language: DW_LANG_C99, file: !78, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!78 = !DIFile(filename: "../moddi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "76733914157a978303cbe3d6f6d1c647")
!79 = distinct !DICompileUnit(language: DW_LANG_C99, file: !80, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!80 = !DIFile(filename: "../modsi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "ada583aff17540d2228ce14dc879fdc8")
!81 = distinct !DICompileUnit(language: DW_LANG_C99, file: !82, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!82 = !DIFile(filename: "../modti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "7d8393bf5eb9f0ba6dd3cb5fd0d18b1c")
!83 = distinct !DICompileUnit(language: DW_LANG_C99, file: !84, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!84 = !DIFile(filename: "../mulvdi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "bb6aa1440e4e37fe94db90279d27db10")
!85 = distinct !DICompileUnit(language: DW_LANG_C99, file: !86, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!86 = !DIFile(filename: "../mulvsi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "32cd947949fac3c039bd0839cd5d7c78")
!87 = distinct !DICompileUnit(language: DW_LANG_C99, file: !88, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!88 = !DIFile(filename: "../mulvti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "600972d5762784972446ff2942320803")
!89 = distinct !DICompileUnit(language: DW_LANG_C99, file: !90, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!90 = !DIFile(filename: "../paritydi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "bd9549e31bcebf1c2265048ea6f18a77")
!91 = distinct !DICompileUnit(language: DW_LANG_C99, file: !92, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!92 = !DIFile(filename: "../paritysi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "235e89e1ac3c55fb43879550247ea25b")
!93 = distinct !DICompileUnit(language: DW_LANG_C99, file: !94, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!94 = !DIFile(filename: "../parityti2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "731d722977e9d8c0cd1987cb790d412a")
!95 = distinct !DICompileUnit(language: DW_LANG_C99, file: !96, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!96 = !DIFile(filename: "../popcountdi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "05f001da7fc478c773612fd707769c2a")
!97 = distinct !DICompileUnit(language: DW_LANG_C99, file: !98, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!98 = !DIFile(filename: "../popcountsi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "f9ebedb2d8810ee5a54fff38e1b09d64")
!99 = distinct !DICompileUnit(language: DW_LANG_C99, file: !100, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!100 = !DIFile(filename: "../popcountti2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "cc3baf5a1f58193aeafb2e81bae65208")
!101 = distinct !DICompileUnit(language: DW_LANG_C99, file: !102, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!102 = !DIFile(filename: "../subvdi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "5774ab7a3a8e168deb55531047d6a873")
!103 = distinct !DICompileUnit(language: DW_LANG_C99, file: !104, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!104 = !DIFile(filename: "../subvsi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "c9558a85e8fabce36f42a29933bd87e9")
!105 = distinct !DICompileUnit(language: DW_LANG_C99, file: !106, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!106 = !DIFile(filename: "../subvti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "ae43c388730e95c5ad9b20d37f73fd82")
!107 = distinct !DICompileUnit(language: DW_LANG_C99, file: !108, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!108 = !DIFile(filename: "../ucmpdi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "79f778ef54939446d175079e19d07756")
!109 = distinct !DICompileUnit(language: DW_LANG_C99, file: !110, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!110 = !DIFile(filename: "../ucmpti2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "d30b659e82f7851c826242cd1de6f293")
!111 = distinct !DICompileUnit(language: DW_LANG_C99, file: !112, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!112 = !DIFile(filename: "../udivdi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "580a28989090b62fc3d261faa6e31a6b")
!113 = distinct !DICompileUnit(language: DW_LANG_C99, file: !114, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!114 = !DIFile(filename: "../udivmoddi4.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "eca4b147be989cda91330ba5b56ed879")
!115 = distinct !DICompileUnit(language: DW_LANG_C99, file: !116, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!116 = !DIFile(filename: "../udivmodsi4.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "c0341684574a20dbcfbe4df0ab9f8538")
!117 = distinct !DICompileUnit(language: DW_LANG_C99, file: !118, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!118 = !DIFile(filename: "../udivmodti4.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "876858111b283249167fa6a71cc4682f")
!119 = distinct !DICompileUnit(language: DW_LANG_C99, file: !120, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!120 = !DIFile(filename: "../udivsi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "b74987a973aededf95faab34db33f58a")
!121 = distinct !DICompileUnit(language: DW_LANG_C99, file: !122, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!122 = !DIFile(filename: "../udivti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "c9304f2e77edc1023290a4f40073f6f7")
!123 = distinct !DICompileUnit(language: DW_LANG_C99, file: !124, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!124 = !DIFile(filename: "../umoddi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "1a99e635325595a81040fb97dab88295")
!125 = distinct !DICompileUnit(language: DW_LANG_C99, file: !126, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!126 = !DIFile(filename: "../umodsi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "ce74ac33cd2bd170a84f43824cae8961")
!127 = distinct !DICompileUnit(language: DW_LANG_C99, file: !128, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!128 = !DIFile(filename: "../umodti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "f900660feeec718da080f01b23c74384")
!129 = distinct !DICompileUnit(language: DW_LANG_C99, file: !130, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!130 = !DIFile(filename: "../memory.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsstd/buildarmv4", checksumkind: CSK_MD5, checksum: "fa9c872a007b30a353222cd13b38538d")
!131 = !{!"clang version 14.0.6 (git@github.com:RTS-SYSU/LLVM-TA.git b7f9c4ccdebc6c37532ddd772889e5f0ff989c79)"}
!132 = !{!"clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)"}
!133 = !{i32 7, !"Dwarf Version", i32 5}
!134 = !{i32 2, !"Debug Info Version", i32 3}
!135 = !{i32 1, !"wchar_size", i32 4}
!136 = !{i32 1, !"min_enum_size", i32 4}
!137 = !{i32 1, !"branch-target-enforcement", i32 0}
!138 = !{i32 1, !"sign-return-address", i32 0}
!139 = !{i32 1, !"sign-return-address-all", i32 0}
!140 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!141 = !{i32 7, !"frame-pointer", i32 2}
!142 = distinct !DISubprogram(name: "binarysearch_initSeed", scope: !7, file: !7, line: 71, type: !143, scopeLine: 72, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !145)
!143 = !DISubroutineType(types: !144)
!144 = !{null}
!145 = !{}
!146 = !DILocation(line: 73, column: 21, scope: !142)
!147 = !DILocation(line: 74, column: 1, scope: !142)
!148 = distinct !DISubprogram(name: "binarysearch_randomInteger", scope: !7, file: !7, line: 80, type: !149, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !145)
!149 = !DISubroutineType(types: !150)
!150 = !{!151}
!151 = !DIBasicType(name: "long", size: 32, encoding: DW_ATE_signed)
!152 = !DILocation(line: 82, column: 27, scope: !148)
!153 = !DILocation(line: 82, column: 45, scope: !148)
!154 = !DILocation(line: 82, column: 53, scope: !148)
!155 = !DILocation(line: 82, column: 60, scope: !148)
!156 = !DILocation(line: 82, column: 21, scope: !148)
!157 = !DILocation(line: 83, column: 12, scope: !148)
!158 = !DILocation(line: 83, column: 3, scope: !148)
!159 = distinct !DISubprogram(name: "binarysearch_init", scope: !7, file: !7, line: 87, type: !143, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !145)
!160 = !DILocation(line: 91, column: 3, scope: !159)
!161 = !DILocalVariable(name: "i", scope: !159, file: !7, line: 89, type: !12)
!162 = !DILocation(line: 0, scope: !159)
!163 = !DILocation(line: 94, column: 9, scope: !164)
!164 = distinct !DILexicalBlock(scope: !159, file: !7, line: 94, column: 3)
!165 = !DILocation(line: 0, scope: !164)
!166 = !DILocation(line: 94, column: 18, scope: !167)
!167 = distinct !DILexicalBlock(scope: !164, file: !7, line: 94, column: 3)
!168 = !DILocation(line: 94, column: 3, scope: !164)
!169 = !DILocation(line: 95, column: 34, scope: !170)
!170 = distinct !DILexicalBlock(scope: !167, file: !7, line: 94, column: 30)
!171 = !DILocation(line: 95, column: 28, scope: !170)
!172 = !DILocation(line: 95, column: 32, scope: !170)
!173 = !DILocation(line: 96, column: 36, scope: !170)
!174 = !DILocation(line: 96, column: 28, scope: !170)
!175 = !DILocation(line: 96, column: 34, scope: !170)
!176 = !DILocation(line: 97, column: 3, scope: !170)
!177 = !DILocation(line: 94, column: 24, scope: !167)
!178 = !DILocation(line: 94, column: 3, scope: !167)
!179 = distinct !{!179, !168, !180, !181}
!180 = !DILocation(line: 97, column: 3, scope: !164)
!181 = !{!"llvm.loop.mustprogress"}
!182 = !DILocation(line: 98, column: 1, scope: !159)
!183 = distinct !DISubprogram(name: "binarysearch_return", scope: !7, file: !7, line: 101, type: !184, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !145)
!184 = !DISubroutineType(types: !185)
!185 = !{!12}
!186 = !DILocation(line: 103, column: 12, scope: !183)
!187 = !DILocation(line: 103, column: 3, scope: !183)
!188 = distinct !DISubprogram(name: "binarysearch_binary_search", scope: !7, file: !7, line: 111, type: !189, scopeLine: 112, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !145)
!189 = !DISubroutineType(types: !190)
!190 = !{!12, !12}
!191 = !DILocalVariable(name: "x", arg: 1, scope: !188, file: !7, line: 111, type: !12)
!192 = !DILocation(line: 0, scope: !188)
!193 = !DILocalVariable(name: "low", scope: !188, file: !7, line: 113, type: !12)
!194 = !DILocalVariable(name: "up", scope: !188, file: !7, line: 113, type: !12)
!195 = !DILocalVariable(name: "fvalue", scope: !188, file: !7, line: 113, type: !12)
!196 = !DILocation(line: 120, column: 3, scope: !188)
!197 = !DILocation(line: 115, column: 7, scope: !188)
!198 = !DILocation(line: 120, column: 15, scope: !188)
!199 = !DILocation(line: 121, column: 17, scope: !200)
!200 = distinct !DILexicalBlock(scope: !188, file: !7, line: 120, column: 23)
!201 = !DILocation(line: 121, column: 24, scope: !200)
!202 = !DILocalVariable(name: "mid", scope: !188, file: !7, line: 113, type: !12)
!203 = !DILocation(line: 123, column: 35, scope: !204)
!204 = distinct !DILexicalBlock(scope: !200, file: !7, line: 123, column: 10)
!205 = !DILocation(line: 123, column: 39, scope: !204)
!206 = !DILocation(line: 123, column: 10, scope: !200)
!207 = !DILocation(line: 125, column: 16, scope: !208)
!208 = distinct !DILexicalBlock(scope: !204, file: !7, line: 123, column: 46)
!209 = !DILocation(line: 126, column: 41, scope: !208)
!210 = !DILocation(line: 127, column: 5, scope: !208)
!211 = !DILocation(line: 129, column: 37, scope: !212)
!212 = distinct !DILexicalBlock(scope: !204, file: !7, line: 129, column: 12)
!213 = !DILocation(line: 129, column: 41, scope: !212)
!214 = !DILocation(line: 129, column: 12, scope: !204)
!215 = !DILocation(line: 131, column: 18, scope: !212)
!216 = !DILocation(line: 131, column: 9, scope: !212)
!217 = !DILocation(line: 133, column: 19, scope: !212)
!218 = !DILocation(line: 0, scope: !204)
!219 = distinct !{!219, !196, !220, !181}
!220 = !DILocation(line: 134, column: 3, scope: !188)
!221 = !DILocation(line: 136, column: 3, scope: !188)
!222 = distinct !DISubprogram(name: "binarysearch_main", scope: !7, file: !7, line: 144, type: !143, scopeLine: 145, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !145)
!223 = !DILocation(line: 146, column: 25, scope: !222)
!224 = !DILocation(line: 146, column: 23, scope: !222)
!225 = !DILocation(line: 147, column: 1, scope: !222)
!226 = distinct !DISubprogram(name: "main", scope: !7, file: !7, line: 150, type: !184, scopeLine: 151, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !145)
!227 = !DILocation(line: 152, column: 3, scope: !226)
!228 = !DILocation(line: 153, column: 3, scope: !226)
!229 = !DILocation(line: 155, column: 12, scope: !226)
!230 = !DILocation(line: 155, column: 43, scope: !226)
!231 = !DILocation(line: 155, column: 3, scope: !226)
!232 = distinct !DISubprogram(name: "__absvdi2", scope: !20, file: !20, line: 22, type: !233, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !19, retainedNodes: !145)
!233 = !DISubroutineType(types: !145)
!234 = !DILocation(line: 25, column: 11, scope: !232)
!235 = !DILocation(line: 25, column: 9, scope: !232)
!236 = !DILocation(line: 26, column: 9, scope: !232)
!237 = !DILocation(line: 28, column: 20, scope: !232)
!238 = !DILocation(line: 28, column: 5, scope: !232)
!239 = distinct !DISubprogram(name: "compilerrt_abort_impl", scope: !72, file: !72, line: 57, type: !233, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !71, retainedNodes: !145)
!240 = !DILocation(line: 59, column: 1, scope: !239)
!241 = distinct !DISubprogram(name: "__absvsi2", scope: !22, file: !22, line: 22, type: !233, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !21, retainedNodes: !145)
!242 = !DILocation(line: 25, column: 11, scope: !241)
!243 = !DILocation(line: 25, column: 9, scope: !241)
!244 = !DILocation(line: 26, column: 9, scope: !241)
!245 = !DILocation(line: 28, column: 20, scope: !241)
!246 = !DILocation(line: 28, column: 5, scope: !241)
!247 = distinct !DISubprogram(name: "__addvdi3", scope: !26, file: !26, line: 22, type: !233, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, retainedNodes: !145)
!248 = !DILocation(line: 24, column: 27, scope: !247)
!249 = !DILocation(line: 25, column: 11, scope: !247)
!250 = !DILocation(line: 25, column: 9, scope: !247)
!251 = !DILocation(line: 27, column: 15, scope: !247)
!252 = !DILocation(line: 27, column: 13, scope: !247)
!253 = !DILocation(line: 28, column: 13, scope: !247)
!254 = !DILocation(line: 29, column: 5, scope: !247)
!255 = !DILocation(line: 32, column: 15, scope: !247)
!256 = !DILocation(line: 32, column: 13, scope: !247)
!257 = !DILocation(line: 33, column: 13, scope: !247)
!258 = !DILocation(line: 35, column: 5, scope: !247)
!259 = distinct !DISubprogram(name: "__addvsi3", scope: !28, file: !28, line: 22, type: !233, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !27, retainedNodes: !145)
!260 = !DILocation(line: 24, column: 27, scope: !259)
!261 = !DILocation(line: 25, column: 11, scope: !259)
!262 = !DILocation(line: 25, column: 9, scope: !259)
!263 = !DILocation(line: 27, column: 15, scope: !259)
!264 = !DILocation(line: 27, column: 13, scope: !259)
!265 = !DILocation(line: 28, column: 13, scope: !259)
!266 = !DILocation(line: 29, column: 5, scope: !259)
!267 = !DILocation(line: 32, column: 15, scope: !259)
!268 = !DILocation(line: 32, column: 13, scope: !259)
!269 = !DILocation(line: 33, column: 13, scope: !259)
!270 = !DILocation(line: 35, column: 5, scope: !259)
!271 = distinct !DISubprogram(name: "__ashldi3", scope: !32, file: !32, line: 24, type: !233, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !31, retainedNodes: !145)
!272 = !DILocation(line: 29, column: 11, scope: !271)
!273 = !DILocation(line: 29, column: 15, scope: !271)
!274 = !DILocation(line: 30, column: 11, scope: !271)
!275 = !DILocation(line: 30, column: 9, scope: !271)
!276 = !DILocation(line: 32, column: 18, scope: !271)
!277 = !DILocation(line: 32, column: 22, scope: !271)
!278 = !DILocation(line: 33, column: 33, scope: !271)
!279 = !DILocation(line: 33, column: 43, scope: !271)
!280 = !DILocation(line: 33, column: 37, scope: !271)
!281 = !DILocation(line: 33, column: 16, scope: !271)
!282 = !DILocation(line: 33, column: 18, scope: !271)
!283 = !DILocation(line: 33, column: 23, scope: !271)
!284 = !DILocation(line: 34, column: 5, scope: !271)
!285 = !DILocation(line: 37, column: 15, scope: !271)
!286 = !DILocation(line: 37, column: 13, scope: !271)
!287 = !DILocation(line: 38, column: 13, scope: !271)
!288 = !DILocation(line: 39, column: 33, scope: !271)
!289 = !DILocation(line: 39, column: 37, scope: !271)
!290 = !DILocation(line: 39, column: 18, scope: !271)
!291 = !DILocation(line: 39, column: 23, scope: !271)
!292 = !DILocation(line: 40, column: 32, scope: !271)
!293 = !DILocation(line: 40, column: 34, scope: !271)
!294 = !DILocation(line: 40, column: 39, scope: !271)
!295 = !DILocation(line: 40, column: 56, scope: !271)
!296 = !DILocation(line: 40, column: 77, scope: !271)
!297 = !DILocation(line: 40, column: 60, scope: !271)
!298 = !DILocation(line: 40, column: 45, scope: !271)
!299 = !DILocation(line: 40, column: 16, scope: !271)
!300 = !DILocation(line: 40, column: 18, scope: !271)
!301 = !DILocation(line: 40, column: 23, scope: !271)
!302 = !DILocation(line: 42, column: 19, scope: !271)
!303 = !DILocation(line: 42, column: 5, scope: !271)
!304 = !DILocation(line: 0, scope: !271)
!305 = !DILocation(line: 43, column: 1, scope: !271)
!306 = distinct !DISubprogram(name: "__ashrdi3", scope: !36, file: !36, line: 24, type: !233, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !35, retainedNodes: !145)
!307 = !DILocation(line: 29, column: 11, scope: !306)
!308 = !DILocation(line: 29, column: 15, scope: !306)
!309 = !DILocation(line: 30, column: 11, scope: !306)
!310 = !DILocation(line: 30, column: 9, scope: !306)
!311 = !DILocation(line: 33, column: 31, scope: !306)
!312 = !DILocation(line: 33, column: 33, scope: !306)
!313 = !DILocation(line: 33, column: 38, scope: !306)
!314 = !DILocation(line: 33, column: 16, scope: !306)
!315 = !DILocation(line: 33, column: 18, scope: !306)
!316 = !DILocation(line: 33, column: 23, scope: !306)
!317 = !DILocation(line: 34, column: 30, scope: !306)
!318 = !DILocation(line: 34, column: 32, scope: !306)
!319 = !DILocation(line: 34, column: 43, scope: !306)
!320 = !DILocation(line: 34, column: 37, scope: !306)
!321 = !DILocation(line: 34, column: 18, scope: !306)
!322 = !DILocation(line: 34, column: 22, scope: !306)
!323 = !DILocation(line: 35, column: 5, scope: !306)
!324 = !DILocation(line: 38, column: 15, scope: !306)
!325 = !DILocation(line: 38, column: 13, scope: !306)
!326 = !DILocation(line: 39, column: 13, scope: !306)
!327 = !DILocation(line: 40, column: 32, scope: !306)
!328 = !DILocation(line: 40, column: 34, scope: !306)
!329 = !DILocation(line: 40, column: 39, scope: !306)
!330 = !DILocation(line: 40, column: 16, scope: !306)
!331 = !DILocation(line: 40, column: 18, scope: !306)
!332 = !DILocation(line: 40, column: 24, scope: !306)
!333 = !DILocation(line: 41, column: 31, scope: !306)
!334 = !DILocation(line: 41, column: 33, scope: !306)
!335 = !DILocation(line: 41, column: 55, scope: !306)
!336 = !DILocation(line: 41, column: 38, scope: !306)
!337 = !DILocation(line: 41, column: 72, scope: !306)
!338 = !DILocation(line: 41, column: 76, scope: !306)
!339 = !DILocation(line: 41, column: 61, scope: !306)
!340 = !DILocation(line: 41, column: 18, scope: !306)
!341 = !DILocation(line: 41, column: 22, scope: !306)
!342 = !DILocation(line: 43, column: 19, scope: !306)
!343 = !DILocation(line: 43, column: 5, scope: !306)
!344 = !DILocation(line: 0, scope: !306)
!345 = !DILocation(line: 44, column: 1, scope: !306)
!346 = distinct !DISubprogram(name: "__clzdi2", scope: !40, file: !40, line: 22, type: !233, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !39, retainedNodes: !145)
!347 = !DILocation(line: 25, column: 7, scope: !346)
!348 = !DILocation(line: 25, column: 11, scope: !346)
!349 = !DILocation(line: 26, column: 26, scope: !346)
!350 = !DILocation(line: 26, column: 28, scope: !346)
!351 = !DILocation(line: 26, column: 33, scope: !346)
!352 = !DILocation(line: 27, column: 29, scope: !346)
!353 = !DILocation(line: 27, column: 31, scope: !346)
!354 = !DILocation(line: 27, column: 49, scope: !346)
!355 = !DILocation(line: 27, column: 42, scope: !346)
!356 = !DILocation(line: 27, column: 12, scope: !346)
!357 = !{i32 0, i32 33}
!358 = !DILocation(line: 28, column: 15, scope: !346)
!359 = !DILocation(line: 27, column: 59, scope: !346)
!360 = !DILocation(line: 27, column: 5, scope: !346)
!361 = distinct !DISubprogram(name: "__clzsi2", scope: !42, file: !42, line: 22, type: !233, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !41, retainedNodes: !145)
!362 = !DILocation(line: 25, column: 34, scope: !361)
!363 = !DILocation(line: 25, column: 40, scope: !361)
!364 = !DILocation(line: 26, column: 14, scope: !361)
!365 = !DILocation(line: 26, column: 7, scope: !361)
!366 = !DILocation(line: 29, column: 13, scope: !361)
!367 = !DILocation(line: 29, column: 23, scope: !361)
!368 = !DILocation(line: 29, column: 29, scope: !361)
!369 = !DILocation(line: 30, column: 13, scope: !361)
!370 = !DILocation(line: 30, column: 7, scope: !361)
!371 = !DILocation(line: 31, column: 7, scope: !361)
!372 = !DILocation(line: 33, column: 13, scope: !361)
!373 = !DILocation(line: 33, column: 21, scope: !361)
!374 = !DILocation(line: 33, column: 27, scope: !361)
!375 = !DILocation(line: 34, column: 13, scope: !361)
!376 = !DILocation(line: 34, column: 7, scope: !361)
!377 = !DILocation(line: 35, column: 7, scope: !361)
!378 = !DILocation(line: 37, column: 13, scope: !361)
!379 = !DILocation(line: 37, column: 20, scope: !361)
!380 = !DILocation(line: 37, column: 26, scope: !361)
!381 = !DILocation(line: 38, column: 13, scope: !361)
!382 = !DILocation(line: 38, column: 7, scope: !361)
!383 = !DILocation(line: 39, column: 7, scope: !361)
!384 = !DILocation(line: 52, column: 20, scope: !361)
!385 = !DILocation(line: 52, column: 37, scope: !361)
!386 = !DILocation(line: 52, column: 25, scope: !361)
!387 = !DILocation(line: 52, column: 14, scope: !361)
!388 = !DILocation(line: 52, column: 5, scope: !361)
!389 = distinct !DISubprogram(name: "__cmpdi2", scope: !46, file: !46, line: 23, type: !233, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !45, retainedNodes: !145)
!390 = !DILocation(line: 26, column: 7, scope: !389)
!391 = !DILocation(line: 26, column: 11, scope: !389)
!392 = !DILocation(line: 28, column: 7, scope: !389)
!393 = !DILocation(line: 28, column: 11, scope: !389)
!394 = !DILocation(line: 29, column: 11, scope: !389)
!395 = !DILocation(line: 29, column: 13, scope: !389)
!396 = !DILocation(line: 29, column: 22, scope: !389)
!397 = !DILocation(line: 29, column: 24, scope: !389)
!398 = !DILocation(line: 29, column: 18, scope: !389)
!399 = !DILocation(line: 29, column: 9, scope: !389)
!400 = !DILocation(line: 30, column: 9, scope: !389)
!401 = !DILocation(line: 31, column: 11, scope: !389)
!402 = !DILocation(line: 31, column: 13, scope: !389)
!403 = !DILocation(line: 31, column: 22, scope: !389)
!404 = !DILocation(line: 31, column: 24, scope: !389)
!405 = !DILocation(line: 31, column: 18, scope: !389)
!406 = !DILocation(line: 31, column: 9, scope: !389)
!407 = !DILocation(line: 32, column: 9, scope: !389)
!408 = !DILocation(line: 33, column: 13, scope: !389)
!409 = !DILocation(line: 33, column: 23, scope: !389)
!410 = !DILocation(line: 33, column: 17, scope: !389)
!411 = !DILocation(line: 33, column: 9, scope: !389)
!412 = !DILocation(line: 34, column: 9, scope: !389)
!413 = !DILocation(line: 35, column: 13, scope: !389)
!414 = !DILocation(line: 35, column: 23, scope: !389)
!415 = !DILocation(line: 35, column: 17, scope: !389)
!416 = !DILocation(line: 35, column: 9, scope: !389)
!417 = !DILocation(line: 36, column: 9, scope: !389)
!418 = !DILocation(line: 37, column: 5, scope: !389)
!419 = !DILocation(line: 0, scope: !389)
!420 = !DILocation(line: 38, column: 1, scope: !389)
!421 = distinct !DISubprogram(name: "__aeabi_lcmp", scope: !46, file: !46, line: 46, type: !233, scopeLine: 47, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !45, retainedNodes: !145)
!422 = !DILocation(line: 48, column: 9, scope: !421)
!423 = !DILocation(line: 48, column: 24, scope: !421)
!424 = !DILocation(line: 48, column: 2, scope: !421)
!425 = distinct !DISubprogram(name: "__ctzdi2", scope: !50, file: !50, line: 22, type: !233, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !49, retainedNodes: !145)
!426 = !DILocation(line: 25, column: 7, scope: !425)
!427 = !DILocation(line: 25, column: 11, scope: !425)
!428 = !DILocation(line: 26, column: 28, scope: !425)
!429 = !DILocation(line: 26, column: 32, scope: !425)
!430 = !DILocation(line: 27, column: 29, scope: !425)
!431 = !DILocation(line: 27, column: 31, scope: !425)
!432 = !DILocation(line: 27, column: 41, scope: !425)
!433 = !DILocation(line: 27, column: 12, scope: !425)
!434 = !DILocation(line: 28, column: 18, scope: !425)
!435 = !DILocation(line: 27, column: 59, scope: !425)
!436 = !DILocation(line: 27, column: 5, scope: !425)
!437 = distinct !DISubprogram(name: "__ctzsi2", scope: !52, file: !52, line: 22, type: !233, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !51, retainedNodes: !145)
!438 = !DILocation(line: 25, column: 20, scope: !437)
!439 = !DILocation(line: 25, column: 34, scope: !437)
!440 = !DILocation(line: 25, column: 40, scope: !437)
!441 = !DILocation(line: 26, column: 7, scope: !437)
!442 = !DILocation(line: 29, column: 13, scope: !437)
!443 = !DILocation(line: 29, column: 23, scope: !437)
!444 = !DILocation(line: 29, column: 29, scope: !437)
!445 = !DILocation(line: 30, column: 7, scope: !437)
!446 = !DILocation(line: 31, column: 7, scope: !437)
!447 = !DILocation(line: 33, column: 13, scope: !437)
!448 = !DILocation(line: 33, column: 21, scope: !437)
!449 = !DILocation(line: 33, column: 27, scope: !437)
!450 = !DILocation(line: 34, column: 7, scope: !437)
!451 = !DILocation(line: 35, column: 7, scope: !437)
!452 = !DILocation(line: 37, column: 13, scope: !437)
!453 = !DILocation(line: 37, column: 20, scope: !437)
!454 = !DILocation(line: 37, column: 26, scope: !437)
!455 = !DILocation(line: 38, column: 7, scope: !437)
!456 = !DILocation(line: 40, column: 7, scope: !437)
!457 = !DILocation(line: 56, column: 25, scope: !437)
!458 = !DILocation(line: 56, column: 20, scope: !437)
!459 = !DILocation(line: 56, column: 44, scope: !437)
!460 = !DILocation(line: 56, column: 32, scope: !437)
!461 = !DILocation(line: 56, column: 14, scope: !437)
!462 = !DILocation(line: 56, column: 5, scope: !437)
!463 = distinct !DISubprogram(name: "__divdi3", scope: !56, file: !56, line: 20, type: !233, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !55, retainedNodes: !145)
!464 = !DILocation(line: 23, column: 20, scope: !463)
!465 = !DILocation(line: 24, column: 20, scope: !463)
!466 = !DILocation(line: 25, column: 12, scope: !463)
!467 = !DILocation(line: 25, column: 19, scope: !463)
!468 = !DILocation(line: 26, column: 12, scope: !463)
!469 = !DILocation(line: 26, column: 19, scope: !463)
!470 = !DILocation(line: 27, column: 9, scope: !463)
!471 = !DILocation(line: 28, column: 13, scope: !463)
!472 = !DILocation(line: 28, column: 44, scope: !463)
!473 = !DILocation(line: 28, column: 51, scope: !463)
!474 = !DILocation(line: 28, column: 5, scope: !463)
!475 = distinct !DISubprogram(name: "__udivmoddi4", scope: !114, file: !114, line: 24, type: !233, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !113, retainedNodes: !145)
!476 = !DILocation(line: 29, column: 7, scope: !475)
!477 = !DILocation(line: 29, column: 11, scope: !475)
!478 = !DILocation(line: 31, column: 7, scope: !475)
!479 = !DILocation(line: 31, column: 11, scope: !475)
!480 = !DILocation(line: 36, column: 11, scope: !475)
!481 = !DILocation(line: 36, column: 13, scope: !475)
!482 = !DILocation(line: 36, column: 18, scope: !475)
!483 = !DILocation(line: 36, column: 9, scope: !475)
!484 = !DILocation(line: 38, column: 15, scope: !475)
!485 = !DILocation(line: 38, column: 17, scope: !475)
!486 = !DILocation(line: 38, column: 22, scope: !475)
!487 = !DILocation(line: 38, column: 13, scope: !475)
!488 = !DILocation(line: 44, column: 17, scope: !475)
!489 = !DILocation(line: 45, column: 28, scope: !475)
!490 = !DILocation(line: 45, column: 38, scope: !475)
!491 = !DILocation(line: 45, column: 32, scope: !475)
!492 = !DILocation(line: 45, column: 24, scope: !475)
!493 = !DILocation(line: 45, column: 22, scope: !475)
!494 = !DILocation(line: 45, column: 17, scope: !475)
!495 = !DILocation(line: 46, column: 24, scope: !475)
!496 = !DILocation(line: 46, column: 34, scope: !475)
!497 = !DILocation(line: 46, column: 28, scope: !475)
!498 = !DILocation(line: 46, column: 20, scope: !475)
!499 = !DILocation(line: 46, column: 13, scope: !475)
!500 = !DILocation(line: 52, column: 13, scope: !475)
!501 = !DILocation(line: 53, column: 24, scope: !475)
!502 = !DILocation(line: 53, column: 20, scope: !475)
!503 = !DILocation(line: 53, column: 18, scope: !475)
!504 = !DILocation(line: 53, column: 13, scope: !475)
!505 = !DILocation(line: 54, column: 9, scope: !475)
!506 = !DILocation(line: 57, column: 13, scope: !475)
!507 = !DILocation(line: 57, column: 17, scope: !475)
!508 = !DILocation(line: 57, column: 9, scope: !475)
!509 = !DILocation(line: 59, column: 15, scope: !475)
!510 = !DILocation(line: 59, column: 17, scope: !475)
!511 = !DILocation(line: 59, column: 22, scope: !475)
!512 = !DILocation(line: 59, column: 13, scope: !475)
!513 = !DILocation(line: 65, column: 17, scope: !475)
!514 = !DILocation(line: 66, column: 26, scope: !475)
!515 = !DILocation(line: 66, column: 28, scope: !475)
!516 = !DILocation(line: 66, column: 39, scope: !475)
!517 = !DILocation(line: 66, column: 33, scope: !475)
!518 = !DILocation(line: 66, column: 24, scope: !475)
!519 = !DILocation(line: 66, column: 22, scope: !475)
!520 = !DILocation(line: 66, column: 17, scope: !475)
!521 = !DILocation(line: 67, column: 22, scope: !475)
!522 = !DILocation(line: 67, column: 24, scope: !475)
!523 = !DILocation(line: 67, column: 35, scope: !475)
!524 = !DILocation(line: 67, column: 29, scope: !475)
!525 = !DILocation(line: 67, column: 20, scope: !475)
!526 = !DILocation(line: 67, column: 13, scope: !475)
!527 = !DILocation(line: 70, column: 17, scope: !475)
!528 = !DILocation(line: 70, column: 21, scope: !475)
!529 = !DILocation(line: 70, column: 13, scope: !475)
!530 = !DILocation(line: 76, column: 17, scope: !475)
!531 = !DILocation(line: 78, column: 30, scope: !475)
!532 = !DILocation(line: 78, column: 32, scope: !475)
!533 = !DILocation(line: 78, column: 41, scope: !475)
!534 = !DILocation(line: 78, column: 43, scope: !475)
!535 = !DILocation(line: 78, column: 37, scope: !475)
!536 = !DILocation(line: 78, column: 19, scope: !475)
!537 = !DILocation(line: 78, column: 21, scope: !475)
!538 = !DILocation(line: 78, column: 26, scope: !475)
!539 = !DILocation(line: 79, column: 21, scope: !475)
!540 = !DILocation(line: 79, column: 25, scope: !475)
!541 = !DILocation(line: 80, column: 26, scope: !475)
!542 = !DILocation(line: 80, column: 22, scope: !475)
!543 = !DILocation(line: 81, column: 13, scope: !475)
!544 = !DILocation(line: 82, column: 22, scope: !475)
!545 = !DILocation(line: 82, column: 24, scope: !475)
!546 = !DILocation(line: 82, column: 33, scope: !475)
!547 = !DILocation(line: 82, column: 35, scope: !475)
!548 = !DILocation(line: 82, column: 29, scope: !475)
!549 = !DILocation(line: 82, column: 20, scope: !475)
!550 = !DILocation(line: 82, column: 13, scope: !475)
!551 = !DILocation(line: 88, column: 16, scope: !475)
!552 = !DILocation(line: 88, column: 18, scope: !475)
!553 = !DILocation(line: 88, column: 28, scope: !475)
!554 = !DILocation(line: 88, column: 30, scope: !475)
!555 = !DILocation(line: 88, column: 35, scope: !475)
!556 = !DILocation(line: 88, column: 23, scope: !475)
!557 = !DILocation(line: 88, column: 41, scope: !475)
!558 = !DILocation(line: 88, column: 13, scope: !475)
!559 = !DILocation(line: 90, column: 17, scope: !475)
!560 = !DILocation(line: 92, column: 31, scope: !475)
!561 = !DILocation(line: 92, column: 21, scope: !475)
!562 = !DILocation(line: 92, column: 25, scope: !475)
!563 = !DILocation(line: 93, column: 30, scope: !475)
!564 = !DILocation(line: 93, column: 32, scope: !475)
!565 = !DILocation(line: 93, column: 42, scope: !475)
!566 = !DILocation(line: 93, column: 44, scope: !475)
!567 = !DILocation(line: 93, column: 49, scope: !475)
!568 = !DILocation(line: 93, column: 37, scope: !475)
!569 = !DILocation(line: 93, column: 19, scope: !475)
!570 = !DILocation(line: 93, column: 21, scope: !475)
!571 = !DILocation(line: 93, column: 26, scope: !475)
!572 = !DILocation(line: 94, column: 26, scope: !475)
!573 = !DILocation(line: 94, column: 22, scope: !475)
!574 = !DILocation(line: 95, column: 13, scope: !475)
!575 = !DILocation(line: 96, column: 22, scope: !475)
!576 = !DILocation(line: 96, column: 24, scope: !475)
!577 = !DILocation(line: 96, column: 48, scope: !475)
!578 = !DILocation(line: 96, column: 50, scope: !475)
!579 = !DILocation(line: 96, column: 32, scope: !475)
!580 = !DILocation(line: 96, column: 29, scope: !475)
!581 = !DILocation(line: 96, column: 20, scope: !475)
!582 = !DILocation(line: 96, column: 13, scope: !475)
!583 = !DILocation(line: 102, column: 30, scope: !475)
!584 = !DILocation(line: 102, column: 32, scope: !475)
!585 = !DILocation(line: 102, column: 14, scope: !475)
!586 = !DILocation(line: 102, column: 56, scope: !475)
!587 = !DILocation(line: 102, column: 58, scope: !475)
!588 = !DILocation(line: 102, column: 40, scope: !475)
!589 = !DILocation(line: 102, column: 38, scope: !475)
!590 = !DILocation(line: 104, column: 16, scope: !475)
!591 = !DILocation(line: 104, column: 13, scope: !475)
!592 = !DILocation(line: 106, column: 16, scope: !475)
!593 = !DILocation(line: 107, column: 26, scope: !475)
!594 = !DILocation(line: 107, column: 22, scope: !475)
!595 = !DILocation(line: 107, column: 17, scope: !475)
!596 = !DILocation(line: 108, column: 13, scope: !475)
!597 = !DILocation(line: 110, column: 9, scope: !475)
!598 = !DILocation(line: 113, column: 13, scope: !475)
!599 = !DILocation(line: 113, column: 17, scope: !475)
!600 = !DILocation(line: 114, column: 24, scope: !475)
!601 = !DILocation(line: 114, column: 45, scope: !475)
!602 = !DILocation(line: 114, column: 28, scope: !475)
!603 = !DILocation(line: 114, column: 11, scope: !475)
!604 = !DILocation(line: 114, column: 13, scope: !475)
!605 = !DILocation(line: 114, column: 18, scope: !475)
!606 = !DILocation(line: 116, column: 22, scope: !475)
!607 = !DILocation(line: 116, column: 24, scope: !475)
!608 = !DILocation(line: 116, column: 29, scope: !475)
!609 = !DILocation(line: 116, column: 11, scope: !475)
!610 = !DILocation(line: 116, column: 13, scope: !475)
!611 = !DILocation(line: 116, column: 18, scope: !475)
!612 = !DILocation(line: 117, column: 22, scope: !475)
!613 = !DILocation(line: 117, column: 24, scope: !475)
!614 = !DILocation(line: 117, column: 46, scope: !475)
!615 = !DILocation(line: 117, column: 29, scope: !475)
!616 = !DILocation(line: 117, column: 60, scope: !475)
!617 = !DILocation(line: 117, column: 64, scope: !475)
!618 = !DILocation(line: 117, column: 53, scope: !475)
!619 = !DILocation(line: 117, column: 13, scope: !475)
!620 = !DILocation(line: 117, column: 17, scope: !475)
!621 = !DILocation(line: 118, column: 5, scope: !475)
!622 = !DILocation(line: 121, column: 15, scope: !475)
!623 = !DILocation(line: 121, column: 17, scope: !475)
!624 = !DILocation(line: 121, column: 22, scope: !475)
!625 = !DILocation(line: 121, column: 13, scope: !475)
!626 = !DILocation(line: 127, column: 22, scope: !475)
!627 = !DILocation(line: 127, column: 43, scope: !475)
!628 = !DILocation(line: 127, column: 17, scope: !475)
!629 = !DILocation(line: 129, column: 21, scope: !475)
!630 = !DILocation(line: 130, column: 32, scope: !475)
!631 = !DILocation(line: 130, column: 43, scope: !475)
!632 = !DILocation(line: 130, column: 47, scope: !475)
!633 = !DILocation(line: 130, column: 36, scope: !475)
!634 = !DILocation(line: 130, column: 28, scope: !475)
!635 = !DILocation(line: 130, column: 26, scope: !475)
!636 = !DILocation(line: 130, column: 21, scope: !475)
!637 = !DILocation(line: 131, column: 25, scope: !475)
!638 = !DILocation(line: 131, column: 29, scope: !475)
!639 = !DILocation(line: 131, column: 21, scope: !475)
!640 = !DILocation(line: 132, column: 30, scope: !475)
!641 = !DILocation(line: 132, column: 21, scope: !475)
!642 = !DILocation(line: 133, column: 40, scope: !475)
!643 = !DILocation(line: 133, column: 22, scope: !475)
!644 = !DILocation(line: 134, column: 30, scope: !475)
!645 = !DILocation(line: 134, column: 32, scope: !475)
!646 = !DILocation(line: 134, column: 37, scope: !475)
!647 = !DILocation(line: 134, column: 19, scope: !475)
!648 = !DILocation(line: 134, column: 21, scope: !475)
!649 = !DILocation(line: 134, column: 26, scope: !475)
!650 = !DILocation(line: 135, column: 30, scope: !475)
!651 = !DILocation(line: 135, column: 32, scope: !475)
!652 = !DILocation(line: 135, column: 54, scope: !475)
!653 = !DILocation(line: 135, column: 37, scope: !475)
!654 = !DILocation(line: 135, column: 68, scope: !475)
!655 = !DILocation(line: 135, column: 72, scope: !475)
!656 = !DILocation(line: 135, column: 61, scope: !475)
!657 = !DILocation(line: 135, column: 21, scope: !475)
!658 = !DILocation(line: 135, column: 25, scope: !475)
!659 = !DILocation(line: 136, column: 26, scope: !475)
!660 = !DILocation(line: 136, column: 17, scope: !475)
!661 = !DILocation(line: 142, column: 55, scope: !475)
!662 = !DILocation(line: 142, column: 37, scope: !475)
!663 = !DILocation(line: 142, column: 35, scope: !475)
!664 = !DILocation(line: 142, column: 78, scope: !475)
!665 = !DILocation(line: 142, column: 80, scope: !475)
!666 = !DILocation(line: 142, column: 62, scope: !475)
!667 = !DILocation(line: 142, column: 60, scope: !475)
!668 = !DILocation(line: 147, column: 20, scope: !475)
!669 = !DILocation(line: 147, column: 17, scope: !475)
!670 = !DILocation(line: 149, column: 21, scope: !475)
!671 = !DILocation(line: 149, column: 25, scope: !475)
!672 = !DILocation(line: 150, column: 32, scope: !475)
!673 = !DILocation(line: 150, column: 19, scope: !475)
!674 = !DILocation(line: 150, column: 21, scope: !475)
!675 = !DILocation(line: 150, column: 26, scope: !475)
!676 = !DILocation(line: 151, column: 19, scope: !475)
!677 = !DILocation(line: 151, column: 21, scope: !475)
!678 = !DILocation(line: 151, column: 26, scope: !475)
!679 = !DILocation(line: 152, column: 29, scope: !475)
!680 = !DILocation(line: 152, column: 31, scope: !475)
!681 = !DILocation(line: 152, column: 21, scope: !475)
!682 = !DILocation(line: 152, column: 25, scope: !475)
!683 = !DILocation(line: 153, column: 13, scope: !475)
!684 = !DILocation(line: 154, column: 25, scope: !475)
!685 = !DILocation(line: 154, column: 22, scope: !475)
!686 = !DILocation(line: 156, column: 21, scope: !475)
!687 = !DILocation(line: 156, column: 25, scope: !475)
!688 = !DILocation(line: 157, column: 32, scope: !475)
!689 = !DILocation(line: 157, column: 53, scope: !475)
!690 = !DILocation(line: 157, column: 36, scope: !475)
!691 = !DILocation(line: 157, column: 19, scope: !475)
!692 = !DILocation(line: 157, column: 21, scope: !475)
!693 = !DILocation(line: 157, column: 26, scope: !475)
!694 = !DILocation(line: 158, column: 30, scope: !475)
!695 = !DILocation(line: 158, column: 32, scope: !475)
!696 = !DILocation(line: 158, column: 37, scope: !475)
!697 = !DILocation(line: 158, column: 19, scope: !475)
!698 = !DILocation(line: 158, column: 21, scope: !475)
!699 = !DILocation(line: 158, column: 26, scope: !475)
!700 = !DILocation(line: 159, column: 30, scope: !475)
!701 = !DILocation(line: 159, column: 32, scope: !475)
!702 = !DILocation(line: 159, column: 54, scope: !475)
!703 = !DILocation(line: 159, column: 37, scope: !475)
!704 = !DILocation(line: 159, column: 68, scope: !475)
!705 = !DILocation(line: 159, column: 72, scope: !475)
!706 = !DILocation(line: 159, column: 61, scope: !475)
!707 = !DILocation(line: 159, column: 21, scope: !475)
!708 = !DILocation(line: 159, column: 25, scope: !475)
!709 = !DILocation(line: 160, column: 13, scope: !475)
!710 = !DILocation(line: 163, column: 31, scope: !475)
!711 = !DILocation(line: 163, column: 53, scope: !475)
!712 = !DILocation(line: 163, column: 35, scope: !475)
!713 = !DILocation(line: 163, column: 21, scope: !475)
!714 = !DILocation(line: 163, column: 25, scope: !475)
!715 = !DILocation(line: 164, column: 31, scope: !475)
!716 = !DILocation(line: 164, column: 33, scope: !475)
!717 = !DILocation(line: 164, column: 56, scope: !475)
!718 = !DILocation(line: 164, column: 38, scope: !475)
!719 = !DILocation(line: 165, column: 33, scope: !475)
!720 = !DILocation(line: 165, column: 44, scope: !475)
!721 = !DILocation(line: 165, column: 37, scope: !475)
!722 = !DILocation(line: 164, column: 63, scope: !475)
!723 = !DILocation(line: 164, column: 19, scope: !475)
!724 = !DILocation(line: 164, column: 21, scope: !475)
!725 = !DILocation(line: 164, column: 26, scope: !475)
!726 = !DILocation(line: 166, column: 19, scope: !475)
!727 = !DILocation(line: 166, column: 21, scope: !475)
!728 = !DILocation(line: 166, column: 26, scope: !475)
!729 = !DILocation(line: 167, column: 29, scope: !475)
!730 = !DILocation(line: 167, column: 31, scope: !475)
!731 = !DILocation(line: 167, column: 43, scope: !475)
!732 = !DILocation(line: 167, column: 36, scope: !475)
!733 = !DILocation(line: 167, column: 21, scope: !475)
!734 = !DILocation(line: 167, column: 25, scope: !475)
!735 = !DILocation(line: 169, column: 9, scope: !475)
!736 = !DILocation(line: 176, column: 34, scope: !475)
!737 = !DILocation(line: 176, column: 36, scope: !475)
!738 = !DILocation(line: 176, column: 18, scope: !475)
!739 = !DILocation(line: 176, column: 60, scope: !475)
!740 = !DILocation(line: 176, column: 62, scope: !475)
!741 = !DILocation(line: 176, column: 44, scope: !475)
!742 = !DILocation(line: 176, column: 42, scope: !475)
!743 = !DILocation(line: 178, column: 20, scope: !475)
!744 = !DILocation(line: 178, column: 17, scope: !475)
!745 = !DILocation(line: 180, column: 21, scope: !475)
!746 = !DILocation(line: 181, column: 30, scope: !475)
!747 = !DILocation(line: 181, column: 26, scope: !475)
!748 = !DILocation(line: 181, column: 21, scope: !475)
!749 = !DILocation(line: 182, column: 17, scope: !475)
!750 = !DILocation(line: 184, column: 13, scope: !475)
!751 = !DILocation(line: 187, column: 17, scope: !475)
!752 = !DILocation(line: 187, column: 21, scope: !475)
!753 = !DILocation(line: 188, column: 20, scope: !475)
!754 = !DILocation(line: 188, column: 17, scope: !475)
!755 = !DILocation(line: 190, column: 32, scope: !475)
!756 = !DILocation(line: 190, column: 19, scope: !475)
!757 = !DILocation(line: 190, column: 21, scope: !475)
!758 = !DILocation(line: 190, column: 26, scope: !475)
!759 = !DILocation(line: 191, column: 19, scope: !475)
!760 = !DILocation(line: 191, column: 21, scope: !475)
!761 = !DILocation(line: 191, column: 26, scope: !475)
!762 = !DILocation(line: 192, column: 29, scope: !475)
!763 = !DILocation(line: 192, column: 31, scope: !475)
!764 = !DILocation(line: 192, column: 21, scope: !475)
!765 = !DILocation(line: 192, column: 25, scope: !475)
!766 = !DILocation(line: 193, column: 13, scope: !475)
!767 = !DILocation(line: 196, column: 32, scope: !475)
!768 = !DILocation(line: 196, column: 53, scope: !475)
!769 = !DILocation(line: 196, column: 36, scope: !475)
!770 = !DILocation(line: 196, column: 19, scope: !475)
!771 = !DILocation(line: 196, column: 21, scope: !475)
!772 = !DILocation(line: 196, column: 26, scope: !475)
!773 = !DILocation(line: 197, column: 30, scope: !475)
!774 = !DILocation(line: 197, column: 32, scope: !475)
!775 = !DILocation(line: 197, column: 37, scope: !475)
!776 = !DILocation(line: 197, column: 19, scope: !475)
!777 = !DILocation(line: 197, column: 21, scope: !475)
!778 = !DILocation(line: 197, column: 26, scope: !475)
!779 = !DILocation(line: 198, column: 30, scope: !475)
!780 = !DILocation(line: 198, column: 32, scope: !475)
!781 = !DILocation(line: 198, column: 54, scope: !475)
!782 = !DILocation(line: 198, column: 37, scope: !475)
!783 = !DILocation(line: 198, column: 68, scope: !475)
!784 = !DILocation(line: 198, column: 72, scope: !475)
!785 = !DILocation(line: 198, column: 61, scope: !475)
!786 = !DILocation(line: 198, column: 21, scope: !475)
!787 = !DILocation(line: 198, column: 25, scope: !475)
!788 = !DILocation(line: 0, scope: !475)
!789 = !DILocation(line: 209, column: 5, scope: !475)
!790 = !DILocation(line: 209, column: 15, scope: !475)
!791 = !DILocation(line: 212, column: 23, scope: !475)
!792 = !DILocation(line: 212, column: 25, scope: !475)
!793 = !DILocation(line: 212, column: 43, scope: !475)
!794 = !DILocation(line: 212, column: 36, scope: !475)
!795 = !DILocation(line: 212, column: 11, scope: !475)
!796 = !DILocation(line: 212, column: 13, scope: !475)
!797 = !DILocation(line: 212, column: 18, scope: !475)
!798 = !DILocation(line: 213, column: 41, scope: !475)
!799 = !DILocation(line: 213, column: 43, scope: !475)
!800 = !DILocation(line: 213, column: 36, scope: !475)
!801 = !DILocation(line: 213, column: 13, scope: !475)
!802 = !DILocation(line: 213, column: 18, scope: !475)
!803 = !DILocation(line: 214, column: 23, scope: !475)
!804 = !DILocation(line: 214, column: 25, scope: !475)
!805 = !DILocation(line: 214, column: 43, scope: !475)
!806 = !DILocation(line: 214, column: 36, scope: !475)
!807 = !DILocation(line: 214, column: 11, scope: !475)
!808 = !DILocation(line: 214, column: 13, scope: !475)
!809 = !DILocation(line: 214, column: 18, scope: !475)
!810 = !DILocation(line: 215, column: 30, scope: !475)
!811 = !DILocation(line: 215, column: 36, scope: !475)
!812 = !DILocation(line: 215, column: 13, scope: !475)
!813 = !DILocation(line: 215, column: 18, scope: !475)
!814 = !DILocation(line: 223, column: 37, scope: !475)
!815 = !DILocation(line: 223, column: 45, scope: !475)
!816 = !DILocation(line: 223, column: 49, scope: !475)
!817 = !DILocation(line: 225, column: 24, scope: !475)
!818 = !DILocation(line: 225, column: 11, scope: !475)
!819 = !DILocation(line: 225, column: 15, scope: !475)
!820 = !DILocation(line: 226, column: 5, scope: !475)
!821 = !DILocation(line: 224, column: 19, scope: !475)
!822 = !DILocation(line: 224, column: 17, scope: !475)
!823 = !DILocation(line: 209, column: 20, scope: !475)
!824 = distinct !{!824, !789, !820, !181}
!825 = !DILocation(line: 227, column: 16, scope: !475)
!826 = !DILocation(line: 227, column: 20, scope: !475)
!827 = !DILocation(line: 227, column: 28, scope: !475)
!828 = !DILocation(line: 227, column: 26, scope: !475)
!829 = !DILocation(line: 227, column: 7, scope: !475)
!830 = !DILocation(line: 227, column: 11, scope: !475)
!831 = !DILocation(line: 228, column: 9, scope: !475)
!832 = !DILocation(line: 229, column: 18, scope: !475)
!833 = !DILocation(line: 229, column: 14, scope: !475)
!834 = !DILocation(line: 229, column: 9, scope: !475)
!835 = !DILocation(line: 230, column: 14, scope: !475)
!836 = !DILocation(line: 230, column: 5, scope: !475)
!837 = !DILocation(line: 231, column: 1, scope: !475)
!838 = distinct !DISubprogram(name: "__divmoddi4", scope: !58, file: !58, line: 20, type: !233, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !57, retainedNodes: !145)
!839 = !DILocation(line: 22, column: 14, scope: !838)
!840 = !DILocation(line: 23, column: 16, scope: !838)
!841 = !DILocation(line: 23, column: 12, scope: !838)
!842 = !DILocation(line: 23, column: 8, scope: !838)
!843 = !DILocation(line: 24, column: 3, scope: !838)
!844 = distinct !DISubprogram(name: "__divmodsi4", scope: !60, file: !60, line: 20, type: !233, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !59, retainedNodes: !145)
!845 = !DILocation(line: 22, column: 14, scope: !844)
!846 = !DILocation(line: 23, column: 16, scope: !844)
!847 = !DILocation(line: 23, column: 12, scope: !844)
!848 = !DILocation(line: 23, column: 8, scope: !844)
!849 = !DILocation(line: 24, column: 3, scope: !844)
!850 = distinct !DISubprogram(name: "__divsi3", scope: !62, file: !62, line: 22, type: !233, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !61, retainedNodes: !145)
!851 = !DILocation(line: 25, column: 20, scope: !850)
!852 = !DILocation(line: 26, column: 20, scope: !850)
!853 = !DILocation(line: 27, column: 12, scope: !850)
!854 = !DILocation(line: 27, column: 19, scope: !850)
!855 = !DILocation(line: 28, column: 12, scope: !850)
!856 = !DILocation(line: 28, column: 19, scope: !850)
!857 = !DILocation(line: 29, column: 9, scope: !850)
!858 = !DILocation(line: 36, column: 22, scope: !850)
!859 = !DILocation(line: 36, column: 33, scope: !850)
!860 = !DILocation(line: 36, column: 40, scope: !850)
!861 = !DILocation(line: 36, column: 5, scope: !850)
!862 = distinct !DISubprogram(name: "__ffsdi2", scope: !66, file: !66, line: 22, type: !233, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !65, retainedNodes: !145)
!863 = !DILocation(line: 25, column: 7, scope: !862)
!864 = !DILocation(line: 25, column: 11, scope: !862)
!865 = !DILocation(line: 26, column: 13, scope: !862)
!866 = !DILocation(line: 26, column: 17, scope: !862)
!867 = !DILocation(line: 26, column: 9, scope: !862)
!868 = !DILocation(line: 28, column: 15, scope: !862)
!869 = !DILocation(line: 28, column: 17, scope: !862)
!870 = !DILocation(line: 28, column: 22, scope: !862)
!871 = !DILocation(line: 28, column: 13, scope: !862)
!872 = !DILocation(line: 29, column: 13, scope: !862)
!873 = !DILocation(line: 30, column: 32, scope: !862)
!874 = !DILocation(line: 30, column: 34, scope: !862)
!875 = !DILocation(line: 30, column: 16, scope: !862)
!876 = !DILocation(line: 30, column: 40, scope: !862)
!877 = !DILocation(line: 30, column: 9, scope: !862)
!878 = !DILocation(line: 32, column: 30, scope: !862)
!879 = !DILocation(line: 32, column: 12, scope: !862)
!880 = !DILocation(line: 32, column: 35, scope: !862)
!881 = !DILocation(line: 32, column: 5, scope: !862)
!882 = !DILocation(line: 0, scope: !862)
!883 = !DILocation(line: 33, column: 1, scope: !862)
!884 = distinct !DISubprogram(name: "__ffssi2", scope: !68, file: !68, line: 22, type: !233, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !67, retainedNodes: !145)
!885 = !DILocation(line: 24, column: 11, scope: !884)
!886 = !DILocation(line: 24, column: 9, scope: !884)
!887 = !DILocation(line: 26, column: 9, scope: !884)
!888 = !DILocation(line: 28, column: 12, scope: !884)
!889 = !DILocation(line: 28, column: 29, scope: !884)
!890 = !DILocation(line: 28, column: 5, scope: !884)
!891 = !DILocation(line: 0, scope: !884)
!892 = !DILocation(line: 29, column: 1, scope: !884)
!893 = distinct !DISubprogram(name: "__lshrdi3", scope: !74, file: !74, line: 24, type: !233, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !73, retainedNodes: !145)
!894 = !DILocation(line: 29, column: 11, scope: !893)
!895 = !DILocation(line: 29, column: 15, scope: !893)
!896 = !DILocation(line: 30, column: 11, scope: !893)
!897 = !DILocation(line: 30, column: 9, scope: !893)
!898 = !DILocation(line: 32, column: 16, scope: !893)
!899 = !DILocation(line: 32, column: 18, scope: !893)
!900 = !DILocation(line: 32, column: 23, scope: !893)
!901 = !DILocation(line: 33, column: 30, scope: !893)
!902 = !DILocation(line: 33, column: 32, scope: !893)
!903 = !DILocation(line: 33, column: 43, scope: !893)
!904 = !DILocation(line: 33, column: 37, scope: !893)
!905 = !DILocation(line: 33, column: 18, scope: !893)
!906 = !DILocation(line: 33, column: 22, scope: !893)
!907 = !DILocation(line: 34, column: 5, scope: !893)
!908 = !DILocation(line: 37, column: 15, scope: !893)
!909 = !DILocation(line: 37, column: 13, scope: !893)
!910 = !DILocation(line: 38, column: 13, scope: !893)
!911 = !DILocation(line: 39, column: 32, scope: !893)
!912 = !DILocation(line: 39, column: 34, scope: !893)
!913 = !DILocation(line: 39, column: 39, scope: !893)
!914 = !DILocation(line: 39, column: 16, scope: !893)
!915 = !DILocation(line: 39, column: 18, scope: !893)
!916 = !DILocation(line: 39, column: 24, scope: !893)
!917 = !DILocation(line: 40, column: 31, scope: !893)
!918 = !DILocation(line: 40, column: 33, scope: !893)
!919 = !DILocation(line: 40, column: 55, scope: !893)
!920 = !DILocation(line: 40, column: 38, scope: !893)
!921 = !DILocation(line: 40, column: 72, scope: !893)
!922 = !DILocation(line: 40, column: 76, scope: !893)
!923 = !DILocation(line: 40, column: 61, scope: !893)
!924 = !DILocation(line: 40, column: 18, scope: !893)
!925 = !DILocation(line: 40, column: 22, scope: !893)
!926 = !DILocation(line: 42, column: 19, scope: !893)
!927 = !DILocation(line: 42, column: 5, scope: !893)
!928 = !DILocation(line: 0, scope: !893)
!929 = !DILocation(line: 43, column: 1, scope: !893)
!930 = distinct !DISubprogram(name: "__moddi3", scope: !78, file: !78, line: 20, type: !233, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !77, retainedNodes: !145)
!931 = !DILocation(line: 24, column: 17, scope: !930)
!932 = !DILocation(line: 25, column: 11, scope: !930)
!933 = !DILocation(line: 26, column: 12, scope: !930)
!934 = !DILocation(line: 26, column: 17, scope: !930)
!935 = !DILocation(line: 28, column: 5, scope: !930)
!936 = !DILocation(line: 29, column: 21, scope: !930)
!937 = !DILocation(line: 29, column: 23, scope: !930)
!938 = !DILocation(line: 29, column: 28, scope: !930)
!939 = !DILocation(line: 29, column: 5, scope: !930)
!940 = distinct !DISubprogram(name: "__modsi3", scope: !80, file: !80, line: 20, type: !233, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !79, retainedNodes: !145)
!941 = !DILocation(line: 22, column: 16, scope: !940)
!942 = !DILocation(line: 22, column: 31, scope: !940)
!943 = !DILocation(line: 22, column: 14, scope: !940)
!944 = !DILocation(line: 22, column: 5, scope: !940)
!945 = distinct !DISubprogram(name: "__mulvdi3", scope: !84, file: !84, line: 22, type: !233, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !83, retainedNodes: !145)
!946 = !DILocation(line: 27, column: 11, scope: !945)
!947 = !DILocation(line: 27, column: 9, scope: !945)
!948 = !DILocation(line: 29, column: 15, scope: !945)
!949 = !DILocation(line: 29, column: 20, scope: !945)
!950 = !DILocation(line: 29, column: 25, scope: !945)
!951 = !DILocation(line: 29, column: 13, scope: !945)
!952 = !DILocation(line: 30, column: 13, scope: !945)
!953 = !DILocation(line: 31, column: 9, scope: !945)
!954 = !DILocation(line: 33, column: 11, scope: !945)
!955 = !DILocation(line: 33, column: 9, scope: !945)
!956 = !DILocation(line: 35, column: 15, scope: !945)
!957 = !DILocation(line: 35, column: 20, scope: !945)
!958 = !DILocation(line: 35, column: 25, scope: !945)
!959 = !DILocation(line: 35, column: 13, scope: !945)
!960 = !DILocation(line: 36, column: 13, scope: !945)
!961 = !DILocation(line: 37, column: 9, scope: !945)
!962 = !DILocation(line: 39, column: 19, scope: !945)
!963 = !DILocation(line: 40, column: 23, scope: !945)
!964 = !DILocation(line: 40, column: 29, scope: !945)
!965 = !DILocation(line: 41, column: 19, scope: !945)
!966 = !DILocation(line: 42, column: 23, scope: !945)
!967 = !DILocation(line: 42, column: 29, scope: !945)
!968 = !DILocation(line: 43, column: 15, scope: !945)
!969 = !DILocation(line: 43, column: 19, scope: !945)
!970 = !DILocation(line: 43, column: 28, scope: !945)
!971 = !DILocation(line: 43, column: 9, scope: !945)
!972 = !DILocation(line: 44, column: 9, scope: !945)
!973 = !DILocation(line: 45, column: 12, scope: !945)
!974 = !DILocation(line: 45, column: 9, scope: !945)
!975 = !DILocation(line: 47, column: 25, scope: !945)
!976 = !DILocation(line: 47, column: 19, scope: !945)
!977 = !DILocation(line: 47, column: 13, scope: !945)
!978 = !DILocation(line: 48, column: 13, scope: !945)
!979 = !DILocation(line: 49, column: 5, scope: !945)
!980 = !DILocation(line: 52, column: 27, scope: !945)
!981 = !DILocation(line: 52, column: 25, scope: !945)
!982 = !DILocation(line: 52, column: 19, scope: !945)
!983 = !DILocation(line: 52, column: 13, scope: !945)
!984 = !DILocation(line: 53, column: 13, scope: !945)
!985 = !DILocation(line: 55, column: 5, scope: !945)
!986 = !DILocation(line: 0, scope: !945)
!987 = !DILocation(line: 56, column: 1, scope: !945)
!988 = distinct !DISubprogram(name: "__mulvsi3", scope: !86, file: !86, line: 22, type: !233, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !85, retainedNodes: !145)
!989 = !DILocation(line: 27, column: 11, scope: !988)
!990 = !DILocation(line: 27, column: 9, scope: !988)
!991 = !DILocation(line: 29, column: 15, scope: !988)
!992 = !DILocation(line: 29, column: 20, scope: !988)
!993 = !DILocation(line: 29, column: 25, scope: !988)
!994 = !DILocation(line: 29, column: 13, scope: !988)
!995 = !DILocation(line: 30, column: 13, scope: !988)
!996 = !DILocation(line: 31, column: 9, scope: !988)
!997 = !DILocation(line: 33, column: 11, scope: !988)
!998 = !DILocation(line: 33, column: 9, scope: !988)
!999 = !DILocation(line: 35, column: 15, scope: !988)
!1000 = !DILocation(line: 35, column: 20, scope: !988)
!1001 = !DILocation(line: 35, column: 25, scope: !988)
!1002 = !DILocation(line: 35, column: 13, scope: !988)
!1003 = !DILocation(line: 36, column: 13, scope: !988)
!1004 = !DILocation(line: 37, column: 9, scope: !988)
!1005 = !DILocation(line: 39, column: 19, scope: !988)
!1006 = !DILocation(line: 40, column: 23, scope: !988)
!1007 = !DILocation(line: 40, column: 29, scope: !988)
!1008 = !DILocation(line: 41, column: 19, scope: !988)
!1009 = !DILocation(line: 42, column: 23, scope: !988)
!1010 = !DILocation(line: 42, column: 29, scope: !988)
!1011 = !DILocation(line: 43, column: 15, scope: !988)
!1012 = !DILocation(line: 43, column: 19, scope: !988)
!1013 = !DILocation(line: 43, column: 28, scope: !988)
!1014 = !DILocation(line: 43, column: 9, scope: !988)
!1015 = !DILocation(line: 44, column: 9, scope: !988)
!1016 = !DILocation(line: 45, column: 12, scope: !988)
!1017 = !DILocation(line: 45, column: 9, scope: !988)
!1018 = !DILocation(line: 47, column: 25, scope: !988)
!1019 = !DILocation(line: 47, column: 19, scope: !988)
!1020 = !DILocation(line: 47, column: 13, scope: !988)
!1021 = !DILocation(line: 48, column: 13, scope: !988)
!1022 = !DILocation(line: 49, column: 5, scope: !988)
!1023 = !DILocation(line: 52, column: 27, scope: !988)
!1024 = !DILocation(line: 52, column: 25, scope: !988)
!1025 = !DILocation(line: 52, column: 19, scope: !988)
!1026 = !DILocation(line: 52, column: 13, scope: !988)
!1027 = !DILocation(line: 53, column: 13, scope: !988)
!1028 = !DILocation(line: 55, column: 5, scope: !988)
!1029 = !DILocation(line: 0, scope: !988)
!1030 = !DILocation(line: 56, column: 1, scope: !988)
!1031 = distinct !DISubprogram(name: "__paritydi2", scope: !90, file: !90, line: 20, type: !233, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, retainedNodes: !145)
!1032 = !DILocation(line: 23, column: 7, scope: !1031)
!1033 = !DILocation(line: 23, column: 11, scope: !1031)
!1034 = !DILocation(line: 24, column: 26, scope: !1031)
!1035 = !DILocation(line: 24, column: 28, scope: !1031)
!1036 = !DILocation(line: 24, column: 39, scope: !1031)
!1037 = !DILocation(line: 24, column: 33, scope: !1031)
!1038 = !DILocation(line: 24, column: 12, scope: !1031)
!1039 = !DILocation(line: 24, column: 5, scope: !1031)
!1040 = distinct !DISubprogram(name: "__paritysi2", scope: !92, file: !92, line: 20, type: !233, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !91, retainedNodes: !145)
!1041 = !DILocation(line: 23, column: 12, scope: !1040)
!1042 = !DILocation(line: 23, column: 7, scope: !1040)
!1043 = !DILocation(line: 24, column: 12, scope: !1040)
!1044 = !DILocation(line: 24, column: 7, scope: !1040)
!1045 = !DILocation(line: 25, column: 12, scope: !1040)
!1046 = !DILocation(line: 25, column: 7, scope: !1040)
!1047 = !DILocation(line: 26, column: 26, scope: !1040)
!1048 = !DILocation(line: 26, column: 20, scope: !1040)
!1049 = !DILocation(line: 26, column: 34, scope: !1040)
!1050 = !DILocation(line: 26, column: 5, scope: !1040)
!1051 = distinct !DISubprogram(name: "__popcountdi2", scope: !96, file: !96, line: 20, type: !233, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !95, retainedNodes: !145)
!1052 = !DILocation(line: 23, column: 20, scope: !1051)
!1053 = !DILocation(line: 23, column: 26, scope: !1051)
!1054 = !DILocation(line: 23, column: 13, scope: !1051)
!1055 = !DILocation(line: 25, column: 15, scope: !1051)
!1056 = !DILocation(line: 25, column: 21, scope: !1051)
!1057 = !DILocation(line: 25, column: 52, scope: !1051)
!1058 = !DILocation(line: 25, column: 46, scope: !1051)
!1059 = !DILocation(line: 27, column: 20, scope: !1051)
!1060 = !DILocation(line: 27, column: 14, scope: !1051)
!1061 = !DILocation(line: 27, column: 27, scope: !1051)
!1062 = !DILocation(line: 29, column: 34, scope: !1051)
!1063 = !DILocation(line: 29, column: 28, scope: !1051)
!1064 = !DILocation(line: 29, column: 16, scope: !1051)
!1065 = !DILocation(line: 32, column: 16, scope: !1051)
!1066 = !DILocation(line: 32, column: 11, scope: !1051)
!1067 = !DILocation(line: 35, column: 20, scope: !1051)
!1068 = !DILocation(line: 35, column: 15, scope: !1051)
!1069 = !DILocation(line: 35, column: 27, scope: !1051)
!1070 = !DILocation(line: 35, column: 5, scope: !1051)
!1071 = distinct !DISubprogram(name: "__popcountsi2", scope: !98, file: !98, line: 20, type: !233, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !97, retainedNodes: !145)
!1072 = !DILocation(line: 23, column: 17, scope: !1071)
!1073 = !DILocation(line: 23, column: 23, scope: !1071)
!1074 = !DILocation(line: 23, column: 11, scope: !1071)
!1075 = !DILocation(line: 25, column: 13, scope: !1071)
!1076 = !DILocation(line: 25, column: 19, scope: !1071)
!1077 = !DILocation(line: 25, column: 38, scope: !1071)
!1078 = !DILocation(line: 25, column: 33, scope: !1071)
!1079 = !DILocation(line: 27, column: 17, scope: !1071)
!1080 = !DILocation(line: 27, column: 12, scope: !1071)
!1081 = !DILocation(line: 27, column: 24, scope: !1071)
!1082 = !DILocation(line: 29, column: 17, scope: !1071)
!1083 = !DILocation(line: 29, column: 12, scope: !1071)
!1084 = !DILocation(line: 32, column: 20, scope: !1071)
!1085 = !DILocation(line: 32, column: 15, scope: !1071)
!1086 = !DILocation(line: 32, column: 27, scope: !1071)
!1087 = !DILocation(line: 32, column: 5, scope: !1071)
!1088 = distinct !DISubprogram(name: "__subvdi3", scope: !102, file: !102, line: 22, type: !233, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !101, retainedNodes: !145)
!1089 = !DILocation(line: 24, column: 27, scope: !1088)
!1090 = !DILocation(line: 25, column: 11, scope: !1088)
!1091 = !DILocation(line: 25, column: 9, scope: !1088)
!1092 = !DILocation(line: 27, column: 15, scope: !1088)
!1093 = !DILocation(line: 27, column: 13, scope: !1088)
!1094 = !DILocation(line: 28, column: 13, scope: !1088)
!1095 = !DILocation(line: 29, column: 5, scope: !1088)
!1096 = !DILocation(line: 32, column: 15, scope: !1088)
!1097 = !DILocation(line: 32, column: 13, scope: !1088)
!1098 = !DILocation(line: 33, column: 13, scope: !1088)
!1099 = !DILocation(line: 35, column: 5, scope: !1088)
!1100 = distinct !DISubprogram(name: "__subvsi3", scope: !104, file: !104, line: 22, type: !233, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !103, retainedNodes: !145)
!1101 = !DILocation(line: 24, column: 27, scope: !1100)
!1102 = !DILocation(line: 25, column: 11, scope: !1100)
!1103 = !DILocation(line: 25, column: 9, scope: !1100)
!1104 = !DILocation(line: 27, column: 15, scope: !1100)
!1105 = !DILocation(line: 27, column: 13, scope: !1100)
!1106 = !DILocation(line: 28, column: 13, scope: !1100)
!1107 = !DILocation(line: 29, column: 5, scope: !1100)
!1108 = !DILocation(line: 32, column: 15, scope: !1100)
!1109 = !DILocation(line: 32, column: 13, scope: !1100)
!1110 = !DILocation(line: 33, column: 13, scope: !1100)
!1111 = !DILocation(line: 35, column: 5, scope: !1100)
!1112 = distinct !DISubprogram(name: "__ucmpdi2", scope: !108, file: !108, line: 23, type: !233, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !107, retainedNodes: !145)
!1113 = !DILocation(line: 26, column: 7, scope: !1112)
!1114 = !DILocation(line: 26, column: 11, scope: !1112)
!1115 = !DILocation(line: 28, column: 7, scope: !1112)
!1116 = !DILocation(line: 28, column: 11, scope: !1112)
!1117 = !DILocation(line: 29, column: 11, scope: !1112)
!1118 = !DILocation(line: 29, column: 13, scope: !1112)
!1119 = !DILocation(line: 29, column: 22, scope: !1112)
!1120 = !DILocation(line: 29, column: 24, scope: !1112)
!1121 = !DILocation(line: 29, column: 18, scope: !1112)
!1122 = !DILocation(line: 29, column: 9, scope: !1112)
!1123 = !DILocation(line: 30, column: 9, scope: !1112)
!1124 = !DILocation(line: 31, column: 11, scope: !1112)
!1125 = !DILocation(line: 31, column: 13, scope: !1112)
!1126 = !DILocation(line: 31, column: 22, scope: !1112)
!1127 = !DILocation(line: 31, column: 24, scope: !1112)
!1128 = !DILocation(line: 31, column: 18, scope: !1112)
!1129 = !DILocation(line: 31, column: 9, scope: !1112)
!1130 = !DILocation(line: 32, column: 9, scope: !1112)
!1131 = !DILocation(line: 33, column: 13, scope: !1112)
!1132 = !DILocation(line: 33, column: 23, scope: !1112)
!1133 = !DILocation(line: 33, column: 17, scope: !1112)
!1134 = !DILocation(line: 33, column: 9, scope: !1112)
!1135 = !DILocation(line: 34, column: 9, scope: !1112)
!1136 = !DILocation(line: 35, column: 13, scope: !1112)
!1137 = !DILocation(line: 35, column: 23, scope: !1112)
!1138 = !DILocation(line: 35, column: 17, scope: !1112)
!1139 = !DILocation(line: 35, column: 9, scope: !1112)
!1140 = !DILocation(line: 36, column: 9, scope: !1112)
!1141 = !DILocation(line: 37, column: 5, scope: !1112)
!1142 = !DILocation(line: 0, scope: !1112)
!1143 = !DILocation(line: 38, column: 1, scope: !1112)
!1144 = distinct !DISubprogram(name: "__aeabi_ulcmp", scope: !108, file: !108, line: 46, type: !233, scopeLine: 47, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !107, retainedNodes: !145)
!1145 = !DILocation(line: 48, column: 9, scope: !1144)
!1146 = !DILocation(line: 48, column: 25, scope: !1144)
!1147 = !DILocation(line: 48, column: 2, scope: !1144)
!1148 = distinct !DISubprogram(name: "__udivdi3", scope: !112, file: !112, line: 20, type: !233, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !111, retainedNodes: !145)
!1149 = !DILocation(line: 22, column: 12, scope: !1148)
!1150 = !DILocation(line: 22, column: 5, scope: !1148)
!1151 = distinct !DISubprogram(name: "__udivmodsi4", scope: !116, file: !116, line: 20, type: !233, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !115, retainedNodes: !145)
!1152 = !DILocation(line: 22, column: 14, scope: !1151)
!1153 = !DILocation(line: 23, column: 16, scope: !1151)
!1154 = !DILocation(line: 23, column: 12, scope: !1151)
!1155 = !DILocation(line: 23, column: 8, scope: !1151)
!1156 = !DILocation(line: 24, column: 3, scope: !1151)
!1157 = distinct !DISubprogram(name: "__udivsi3", scope: !120, file: !120, line: 25, type: !233, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !119, retainedNodes: !145)
!1158 = !DILocation(line: 32, column: 11, scope: !1157)
!1159 = !DILocation(line: 32, column: 9, scope: !1157)
!1160 = !DILocation(line: 33, column: 9, scope: !1157)
!1161 = !DILocation(line: 34, column: 11, scope: !1157)
!1162 = !DILocation(line: 34, column: 9, scope: !1157)
!1163 = !DILocation(line: 35, column: 9, scope: !1157)
!1164 = !DILocation(line: 36, column: 10, scope: !1157)
!1165 = !DILocation(line: 36, column: 29, scope: !1157)
!1166 = !DILocation(line: 36, column: 27, scope: !1157)
!1167 = !DILocation(line: 38, column: 12, scope: !1157)
!1168 = !DILocation(line: 38, column: 9, scope: !1157)
!1169 = !DILocation(line: 39, column: 9, scope: !1157)
!1170 = !DILocation(line: 40, column: 12, scope: !1157)
!1171 = !DILocation(line: 40, column: 9, scope: !1157)
!1172 = !DILocation(line: 41, column: 9, scope: !1157)
!1173 = !DILocation(line: 42, column: 5, scope: !1157)
!1174 = !DILocation(line: 45, column: 28, scope: !1157)
!1175 = !DILocation(line: 45, column: 11, scope: !1157)
!1176 = !DILocation(line: 46, column: 11, scope: !1157)
!1177 = !DILocation(line: 48, column: 5, scope: !1157)
!1178 = !DILocation(line: 0, scope: !1157)
!1179 = !DILocation(line: 48, column: 15, scope: !1157)
!1180 = !DILocation(line: 51, column: 22, scope: !1157)
!1181 = !DILocation(line: 60, column: 41, scope: !1157)
!1182 = !DILocation(line: 63, column: 5, scope: !1157)
!1183 = !DILocation(line: 62, column: 16, scope: !1157)
!1184 = !DILocation(line: 62, column: 11, scope: !1157)
!1185 = !DILocation(line: 61, column: 19, scope: !1157)
!1186 = !DILocation(line: 52, column: 16, scope: !1157)
!1187 = !DILocation(line: 52, column: 22, scope: !1157)
!1188 = !DILocation(line: 48, column: 20, scope: !1157)
!1189 = distinct !{!1189, !1177, !1182, !181}
!1190 = !DILocation(line: 64, column: 12, scope: !1157)
!1191 = !DILocation(line: 64, column: 18, scope: !1157)
!1192 = !DILocation(line: 65, column: 5, scope: !1157)
!1193 = !DILocation(line: 66, column: 1, scope: !1157)
!1194 = distinct !DISubprogram(name: "__umoddi3", scope: !124, file: !124, line: 20, type: !233, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !123, retainedNodes: !145)
!1195 = !DILocation(line: 23, column: 5, scope: !1194)
!1196 = !DILocation(line: 24, column: 12, scope: !1194)
!1197 = !DILocation(line: 24, column: 5, scope: !1194)
!1198 = distinct !DISubprogram(name: "__umodsi3", scope: !126, file: !126, line: 20, type: !233, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !125, retainedNodes: !145)
!1199 = !DILocation(line: 22, column: 16, scope: !1198)
!1200 = !DILocation(line: 22, column: 32, scope: !1198)
!1201 = !DILocation(line: 22, column: 14, scope: !1198)
!1202 = !DILocation(line: 22, column: 5, scope: !1198)
!1203 = distinct !DISubprogram(name: "memcpy", scope: !130, file: !130, line: 3, type: !233, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !129, retainedNodes: !145)
!1204 = !DILocation(line: 8, column: 6, scope: !1203)
!1205 = !DILocation(line: 0, scope: !1203)
!1206 = !DILocation(line: 8, column: 19, scope: !1203)
!1207 = !DILocation(line: 8, column: 2, scope: !1203)
!1208 = !DILocation(line: 9, column: 21, scope: !1203)
!1209 = !DILocation(line: 9, column: 3, scope: !1203)
!1210 = !DILocation(line: 9, column: 19, scope: !1203)
!1211 = !DILocation(line: 10, column: 2, scope: !1203)
!1212 = !DILocation(line: 8, column: 26, scope: !1203)
!1213 = distinct !{!1213, !1207, !1211, !181}
!1214 = !DILocation(line: 11, column: 1, scope: !1203)
!1215 = distinct !DISubprogram(name: "memset", scope: !130, file: !130, line: 13, type: !233, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !129, retainedNodes: !145)
!1216 = !DILocation(line: 17, column: 6, scope: !1215)
!1217 = !DILocation(line: 0, scope: !1215)
!1218 = !DILocation(line: 17, column: 19, scope: !1215)
!1219 = !DILocation(line: 17, column: 2, scope: !1215)
!1220 = !DILocation(line: 18, column: 13, scope: !1215)
!1221 = !DILocation(line: 18, column: 3, scope: !1215)
!1222 = !DILocation(line: 18, column: 11, scope: !1215)
!1223 = !DILocation(line: 19, column: 2, scope: !1215)
!1224 = !DILocation(line: 17, column: 26, scope: !1215)
!1225 = distinct !{!1225, !1219, !1223, !181}
!1226 = !DILocation(line: 20, column: 2, scope: !1215)
