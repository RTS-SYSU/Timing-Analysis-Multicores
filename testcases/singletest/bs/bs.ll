; ModuleID = 'unoptimized.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv4t-unknown-unknown"

%struct.DATA = type { i32, i32 }
%union.dwords = type { i64 }

@data = dso_local global [15 x %struct.DATA] [%struct.DATA { i32 1, i32 100 }, %struct.DATA { i32 5, i32 200 }, %struct.DATA { i32 6, i32 300 }, %struct.DATA { i32 7, i32 700 }, %struct.DATA { i32 8, i32 900 }, %struct.DATA { i32 9, i32 250 }, %struct.DATA { i32 10, i32 400 }, %struct.DATA { i32 11, i32 600 }, %struct.DATA { i32 12, i32 800 }, %struct.DATA { i32 13, i32 1500 }, %struct.DATA { i32 14, i32 1200 }, %struct.DATA { i32 15, i32 110 }, %struct.DATA { i32 16, i32 140 }, %struct.DATA { i32 17, i32 133 }, %struct.DATA { i32 18, i32 10 }], align 4, !dbg !0
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
define dso_local arm_aapcs_vfpcc i32 @main() #0 !dbg !137 {
entry:
  %call = call arm_aapcs_vfpcc i32 @binary_search(i32 noundef 8) #4, !dbg !141
  ret i32 %call, !dbg !142
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @binary_search(i32 noundef %x) #0 !dbg !143 {
entry:
  call void @llvm.dbg.value(metadata i32 %x, metadata !146, metadata !DIExpression()), !dbg !147
  call void @llvm.dbg.value(metadata i32 0, metadata !148, metadata !DIExpression()), !dbg !147
  call void @llvm.dbg.value(metadata i32 14, metadata !149, metadata !DIExpression()), !dbg !147
  call void @llvm.dbg.value(metadata i32 -1, metadata !150, metadata !DIExpression()), !dbg !147
  br label %while.cond, !dbg !151

while.cond:                                       ; preds = %if.end10, %entry
  %up.0 = phi i32 [ 14, %entry ], [ %up.2, %if.end10 ], !dbg !147
  %fvalue.0 = phi i32 [ -1, %entry ], [ %fvalue.1, %if.end10 ], !dbg !147
  %low.0 = phi i32 [ 0, %entry ], [ %low.2, %if.end10 ], !dbg !152
  call void @llvm.dbg.value(metadata i32 %low.0, metadata !148, metadata !DIExpression()), !dbg !147
  call void @llvm.dbg.value(metadata i32 %fvalue.0, metadata !150, metadata !DIExpression()), !dbg !147
  call void @llvm.dbg.value(metadata i32 %up.0, metadata !149, metadata !DIExpression()), !dbg !147
  %cmp.not = icmp sgt i32 %low.0, %up.0, !dbg !153
  br i1 %cmp.not, label %while.end, label %while.body, !dbg !151

while.body:                                       ; preds = %while.cond
  %add = add nsw i32 %low.0, %up.0, !dbg !154
  %shr = ashr i32 %add, 1, !dbg !156
  call void @llvm.dbg.value(metadata i32 %shr, metadata !157, metadata !DIExpression()), !dbg !147
  %key = getelementptr inbounds [15 x %struct.DATA], [15 x %struct.DATA]* @data, i32 0, i32 %shr, i32 0, !dbg !158
  %0 = load i32, i32* %key, align 4, !dbg !158
  %cmp1 = icmp eq i32 %0, %x, !dbg !160
  br i1 %cmp1, label %if.then, label %if.else, !dbg !161

if.then:                                          ; preds = %while.body
  %sub = add nsw i32 %low.0, -1, !dbg !162
  call void @llvm.dbg.value(metadata i32 %sub, metadata !149, metadata !DIExpression()), !dbg !147
  %value = getelementptr inbounds [15 x %struct.DATA], [15 x %struct.DATA]* @data, i32 0, i32 %shr, i32 1, !dbg !164
  %1 = load i32, i32* %value, align 4, !dbg !164
  call void @llvm.dbg.value(metadata i32 %1, metadata !150, metadata !DIExpression()), !dbg !147
  br label %if.end10, !dbg !165

if.else:                                          ; preds = %while.body
  %key4 = getelementptr inbounds [15 x %struct.DATA], [15 x %struct.DATA]* @data, i32 0, i32 %shr, i32 0, !dbg !166
  %2 = load i32, i32* %key4, align 4, !dbg !166
  %cmp5 = icmp sgt i32 %2, %x, !dbg !168
  br i1 %cmp5, label %if.then6, label %if.else8, !dbg !169

if.then6:                                         ; preds = %if.else
  %sub7 = add nsw i32 %shr, -1, !dbg !170
  call void @llvm.dbg.value(metadata i32 %sub7, metadata !149, metadata !DIExpression()), !dbg !147
  br label %if.end, !dbg !172

if.else8:                                         ; preds = %if.else
  %add9 = add nsw i32 %shr, 1, !dbg !173
  call void @llvm.dbg.value(metadata i32 %add9, metadata !148, metadata !DIExpression()), !dbg !147
  br label %if.end

if.end:                                           ; preds = %if.else8, %if.then6
  %up.1 = phi i32 [ %sub7, %if.then6 ], [ %up.0, %if.else8 ], !dbg !147
  %low.1 = phi i32 [ %low.0, %if.then6 ], [ %add9, %if.else8 ], !dbg !147
  call void @llvm.dbg.value(metadata i32 %low.1, metadata !148, metadata !DIExpression()), !dbg !147
  call void @llvm.dbg.value(metadata i32 %up.1, metadata !149, metadata !DIExpression()), !dbg !147
  br label %if.end10

if.end10:                                         ; preds = %if.end, %if.then
  %up.2 = phi i32 [ %sub, %if.then ], [ %up.1, %if.end ], !dbg !175
  %fvalue.1 = phi i32 [ %1, %if.then ], [ %fvalue.0, %if.end ], !dbg !147
  %low.2 = phi i32 [ %low.0, %if.then ], [ %low.1, %if.end ], !dbg !152
  call void @llvm.dbg.value(metadata i32 %low.2, metadata !148, metadata !DIExpression()), !dbg !147
  call void @llvm.dbg.value(metadata i32 %fvalue.1, metadata !150, metadata !DIExpression()), !dbg !147
  call void @llvm.dbg.value(metadata i32 %up.2, metadata !149, metadata !DIExpression()), !dbg !147
  br label %while.cond, !dbg !151, !llvm.loop !176

while.end:                                        ; preds = %while.cond
  ret i32 %fvalue.0, !dbg !179
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__absvdi2(i64 noundef %a) #1 !dbg !180 {
entry:
  %cmp = icmp eq i64 %a, -9223372036854775808, !dbg !182
  br i1 %cmp, label %if.then, label %if.end, !dbg !183

if.then:                                          ; preds = %entry
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i32 noundef 26, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__absvdi2, i32 0, i32 0)) #5, !dbg !184
  unreachable, !dbg !184

if.end:                                           ; preds = %entry
  %0 = call i64 @llvm.abs.i64(i64 %a, i1 true), !dbg !185
  ret i64 %0, !dbg !186
}

; Function Attrs: noinline noreturn nounwind
define weak hidden arm_aapcscc void @compilerrt_abort_impl(i8* noundef %file, i32 noundef %line, i8* noundef %function) #2 !dbg !187 {
entry:
  unreachable, !dbg !188
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__absvsi2(i32 noundef %a) #1 !dbg !189 {
entry:
  %cmp = icmp eq i32 %a, -2147483648, !dbg !190
  br i1 %cmp, label %if.then, label %if.end, !dbg !191

if.then:                                          ; preds = %entry
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 noundef 26, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__absvsi2, i32 0, i32 0)) #5, !dbg !192
  unreachable, !dbg !192

if.end:                                           ; preds = %entry
  %0 = call i32 @llvm.abs.i32(i32 %a, i1 true), !dbg !193
  ret i32 %0, !dbg !194
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__addvdi3(i64 noundef %a, i64 noundef %b) #1 !dbg !195 {
entry:
  %add = add i64 %a, %b, !dbg !196
  %cmp = icmp sgt i64 %b, -1, !dbg !197
  br i1 %cmp, label %if.then, label %if.else, !dbg !198

if.then:                                          ; preds = %entry
  %cmp1 = icmp slt i64 %add, %a, !dbg !199
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !200

if.then2:                                         ; preds = %if.then
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i32 noundef 28, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__addvdi3, i32 0, i32 0)) #5, !dbg !201
  unreachable, !dbg !201

if.end:                                           ; preds = %if.then
  br label %if.end6, !dbg !202

if.else:                                          ; preds = %entry
  %cmp3.not = icmp slt i64 %add, %a, !dbg !203
  br i1 %cmp3.not, label %if.end5, label %if.then4, !dbg !204

if.then4:                                         ; preds = %if.else
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i32 noundef 33, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__addvdi3, i32 0, i32 0)) #5, !dbg !205
  unreachable, !dbg !205

if.end5:                                          ; preds = %if.else
  br label %if.end6

if.end6:                                          ; preds = %if.end5, %if.end
  ret i64 %add, !dbg !206
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__addvsi3(i32 noundef %a, i32 noundef %b) #1 !dbg !207 {
entry:
  %add = add i32 %a, %b, !dbg !208
  %cmp = icmp sgt i32 %b, -1, !dbg !209
  br i1 %cmp, label %if.then, label %if.else, !dbg !210

if.then:                                          ; preds = %entry
  %cmp1 = icmp slt i32 %add, %a, !dbg !211
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !212

if.then2:                                         ; preds = %if.then
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), i32 noundef 28, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__addvsi3, i32 0, i32 0)) #5, !dbg !213
  unreachable, !dbg !213

if.end:                                           ; preds = %if.then
  br label %if.end6, !dbg !214

if.else:                                          ; preds = %entry
  %cmp3.not = icmp slt i32 %add, %a, !dbg !215
  br i1 %cmp3.not, label %if.end5, label %if.then4, !dbg !216

if.then4:                                         ; preds = %if.else
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), i32 noundef 33, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__addvsi3, i32 0, i32 0)) #5, !dbg !217
  unreachable, !dbg !217

if.end5:                                          ; preds = %if.else
  br label %if.end6

if.end6:                                          ; preds = %if.end5, %if.end
  ret i32 %add, !dbg !218
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__ashldi3(i64 noundef %a, i32 noundef %b) #1 !dbg !219 {
entry:
  %input = alloca %union.dwords, align 8
  %result = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %input, i32 0, i32 0, !dbg !220
  store i64 %a, i64* %all, align 8, !dbg !221
  %and = and i32 %b, 32, !dbg !222
  %tobool.not = icmp eq i32 %and, 0, !dbg !222
  br i1 %tobool.not, label %if.else, label %if.then, !dbg !223

if.then:                                          ; preds = %entry
  %low = bitcast %union.dwords* %result to i32*, !dbg !224
  store i32 0, i32* %low, align 8, !dbg !225
  %low2 = bitcast %union.dwords* %input to i32*, !dbg !226
  %0 = load i32, i32* %low2, align 8, !dbg !226
  %sub = add nsw i32 %b, -32, !dbg !227
  %shl = shl i32 %0, %sub, !dbg !228
  %s3 = bitcast %union.dwords* %result to %struct.DATA*, !dbg !229
  %high = getelementptr inbounds %struct.DATA, %struct.DATA* %s3, i32 0, i32 1, !dbg !230
  store i32 %shl, i32* %high, align 4, !dbg !231
  br label %if.end18, !dbg !232

if.else:                                          ; preds = %entry
  %cmp = icmp eq i32 %b, 0, !dbg !233
  br i1 %cmp, label %if.then4, label %if.end, !dbg !234

if.then4:                                         ; preds = %if.else
  br label %return, !dbg !235

if.end:                                           ; preds = %if.else
  %low6 = bitcast %union.dwords* %input to i32*, !dbg !236
  %1 = load i32, i32* %low6, align 8, !dbg !236
  %shl7 = shl i32 %1, %b, !dbg !237
  %low9 = bitcast %union.dwords* %result to i32*, !dbg !238
  store i32 %shl7, i32* %low9, align 8, !dbg !239
  %s10 = bitcast %union.dwords* %input to %struct.DATA*, !dbg !240
  %high11 = getelementptr inbounds %struct.DATA, %struct.DATA* %s10, i32 0, i32 1, !dbg !241
  %2 = load i32, i32* %high11, align 4, !dbg !241
  %shl12 = shl i32 %2, %b, !dbg !242
  %low14 = bitcast %union.dwords* %input to i32*, !dbg !243
  %3 = load i32, i32* %low14, align 8, !dbg !243
  %sub15 = sub nsw i32 32, %b, !dbg !244
  %shr = lshr i32 %3, %sub15, !dbg !245
  %or = or i32 %shl12, %shr, !dbg !246
  %s16 = bitcast %union.dwords* %result to %struct.DATA*, !dbg !247
  %high17 = getelementptr inbounds %struct.DATA, %struct.DATA* %s16, i32 0, i32 1, !dbg !248
  store i32 %or, i32* %high17, align 4, !dbg !249
  br label %if.end18

if.end18:                                         ; preds = %if.end, %if.then
  %all19 = getelementptr inbounds %union.dwords, %union.dwords* %result, i32 0, i32 0, !dbg !250
  %4 = load i64, i64* %all19, align 8, !dbg !250
  br label %return, !dbg !251

return:                                           ; preds = %if.end18, %if.then4
  %retval.0 = phi i64 [ %4, %if.end18 ], [ %a, %if.then4 ], !dbg !252
  ret i64 %retval.0, !dbg !253
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__ashrdi3(i64 noundef %a, i32 noundef %b) #1 !dbg !254 {
entry:
  %input = alloca %union.dwords, align 8
  %result = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %input, i32 0, i32 0, !dbg !255
  store i64 %a, i64* %all, align 8, !dbg !256
  %and = and i32 %b, 32, !dbg !257
  %tobool.not = icmp eq i32 %and, 0, !dbg !257
  br i1 %tobool.not, label %if.else, label %if.then, !dbg !258

if.then:                                          ; preds = %entry
  %s = bitcast %union.dwords* %input to %struct.DATA*, !dbg !259
  %high = getelementptr inbounds %struct.DATA, %struct.DATA* %s, i32 0, i32 1, !dbg !260
  %0 = load i32, i32* %high, align 4, !dbg !260
  %shr = ashr i32 %0, 31, !dbg !261
  %s1 = bitcast %union.dwords* %result to %struct.DATA*, !dbg !262
  %high2 = getelementptr inbounds %struct.DATA, %struct.DATA* %s1, i32 0, i32 1, !dbg !263
  store i32 %shr, i32* %high2, align 4, !dbg !264
  %s3 = bitcast %union.dwords* %input to %struct.DATA*, !dbg !265
  %high4 = getelementptr inbounds %struct.DATA, %struct.DATA* %s3, i32 0, i32 1, !dbg !266
  %1 = load i32, i32* %high4, align 4, !dbg !266
  %sub = add nsw i32 %b, -32, !dbg !267
  %shr5 = ashr i32 %1, %sub, !dbg !268
  %low = bitcast %union.dwords* %result to i32*, !dbg !269
  store i32 %shr5, i32* %low, align 8, !dbg !270
  br label %if.end21, !dbg !271

if.else:                                          ; preds = %entry
  %cmp = icmp eq i32 %b, 0, !dbg !272
  br i1 %cmp, label %if.then7, label %if.end, !dbg !273

if.then7:                                         ; preds = %if.else
  br label %return, !dbg !274

if.end:                                           ; preds = %if.else
  %s8 = bitcast %union.dwords* %input to %struct.DATA*, !dbg !275
  %high9 = getelementptr inbounds %struct.DATA, %struct.DATA* %s8, i32 0, i32 1, !dbg !276
  %2 = load i32, i32* %high9, align 4, !dbg !276
  %shr10 = ashr i32 %2, %b, !dbg !277
  %s11 = bitcast %union.dwords* %result to %struct.DATA*, !dbg !278
  %high12 = getelementptr inbounds %struct.DATA, %struct.DATA* %s11, i32 0, i32 1, !dbg !279
  store i32 %shr10, i32* %high12, align 4, !dbg !280
  %s13 = bitcast %union.dwords* %input to %struct.DATA*, !dbg !281
  %high14 = getelementptr inbounds %struct.DATA, %struct.DATA* %s13, i32 0, i32 1, !dbg !282
  %3 = load i32, i32* %high14, align 4, !dbg !282
  %sub15 = sub nsw i32 32, %b, !dbg !283
  %shl = shl i32 %3, %sub15, !dbg !284
  %low17 = bitcast %union.dwords* %input to i32*, !dbg !285
  %4 = load i32, i32* %low17, align 8, !dbg !285
  %shr18 = lshr i32 %4, %b, !dbg !286
  %or = or i32 %shl, %shr18, !dbg !287
  %low20 = bitcast %union.dwords* %result to i32*, !dbg !288
  store i32 %or, i32* %low20, align 8, !dbg !289
  br label %if.end21

if.end21:                                         ; preds = %if.end, %if.then
  %all22 = getelementptr inbounds %union.dwords, %union.dwords* %result, i32 0, i32 0, !dbg !290
  %5 = load i64, i64* %all22, align 8, !dbg !290
  br label %return, !dbg !291

return:                                           ; preds = %if.end21, %if.then7
  %retval.0 = phi i64 [ %5, %if.end21 ], [ %a, %if.then7 ], !dbg !292
  ret i64 %retval.0, !dbg !293
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__clzdi2(i64 noundef %a) #1 !dbg !294 {
entry:
  %x = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %x, i32 0, i32 0, !dbg !295
  store i64 %a, i64* %all, align 8, !dbg !296
  %s = bitcast %union.dwords* %x to %struct.DATA*, !dbg !297
  %high = getelementptr inbounds %struct.DATA, %struct.DATA* %s, i32 0, i32 1, !dbg !298
  %0 = load i32, i32* %high, align 4, !dbg !298
  %cmp = icmp eq i32 %0, 0, !dbg !299
  %s1 = bitcast %union.dwords* %x to %struct.DATA*, !dbg !300
  %high2 = getelementptr inbounds %struct.DATA, %struct.DATA* %s1, i32 0, i32 1, !dbg !301
  %1 = load i32, i32* %high2, align 4, !dbg !301
  %low = bitcast %union.dwords* %x to i32*, !dbg !302
  %2 = load i32, i32* %low, align 8, !dbg !302
  %3 = select i1 %cmp, i32 %2, i32 %1, !dbg !303
  %4 = call i32 @llvm.ctlz.i32(i32 %3, i1 false), !dbg !304, !range !305
  %and5 = select i1 %cmp, i32 32, i32 0, !dbg !306
  %add = add nuw nsw i32 %4, %and5, !dbg !307
  ret i32 %add, !dbg !308
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #3

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__clzsi2(i32 noundef %a) #1 !dbg !309 {
entry:
  %cmp = icmp ult i32 %a, 65536, !dbg !310
  %shl = select i1 %cmp, i32 16, i32 0, !dbg !311
  %sub = sub nuw nsw i32 16, %shl, !dbg !312
  %shr = lshr i32 %a, %sub, !dbg !313
  %and1 = and i32 %shr, 65280, !dbg !314
  %cmp2 = icmp eq i32 %and1, 0, !dbg !315
  %shl4 = select i1 %cmp2, i32 8, i32 0, !dbg !316
  %sub5 = sub nuw nsw i32 8, %shl4, !dbg !317
  %shr6 = lshr i32 %shr, %sub5, !dbg !318
  %add = or i32 %shl, %shl4, !dbg !319
  %and7 = and i32 %shr6, 240, !dbg !320
  %cmp8 = icmp eq i32 %and7, 0, !dbg !321
  %shl10 = select i1 %cmp8, i32 4, i32 0, !dbg !322
  %sub11 = sub nuw nsw i32 4, %shl10, !dbg !323
  %shr12 = lshr i32 %shr6, %sub11, !dbg !324
  %add13 = or i32 %add, %shl10, !dbg !325
  %and14 = and i32 %shr12, 12, !dbg !326
  %cmp15 = icmp eq i32 %and14, 0, !dbg !327
  %shl17 = select i1 %cmp15, i32 2, i32 0, !dbg !328
  %sub18 = sub nuw nsw i32 2, %shl17, !dbg !329
  %shr19 = lshr i32 %shr12, %sub18, !dbg !330
  %add20 = or i32 %add13, %shl17, !dbg !331
  %sub21 = sub i32 2, %shr19, !dbg !332
  %and22 = lshr i32 %shr19, 1, !dbg !333
  %0 = or i32 %and22, -2, !dbg !333
  %.neg = add nsw i32 %0, 1, !dbg !333
  %and26 = and i32 %sub21, %.neg, !dbg !334
  %add27 = add i32 %add20, %and26, !dbg !335
  ret i32 %add27, !dbg !336
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__cmpdi2(i64 noundef %a, i64 noundef %b) #1 !dbg !337 {
entry:
  %x = alloca %union.dwords, align 8
  %y = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %x, i32 0, i32 0, !dbg !338
  store i64 %a, i64* %all, align 8, !dbg !339
  %all1 = getelementptr inbounds %union.dwords, %union.dwords* %y, i32 0, i32 0, !dbg !340
  store i64 %b, i64* %all1, align 8, !dbg !341
  %s = bitcast %union.dwords* %x to %struct.DATA*, !dbg !342
  %high = getelementptr inbounds %struct.DATA, %struct.DATA* %s, i32 0, i32 1, !dbg !343
  %0 = load i32, i32* %high, align 4, !dbg !343
  %s2 = bitcast %union.dwords* %y to %struct.DATA*, !dbg !344
  %high3 = getelementptr inbounds %struct.DATA, %struct.DATA* %s2, i32 0, i32 1, !dbg !345
  %1 = load i32, i32* %high3, align 4, !dbg !345
  %cmp = icmp slt i32 %0, %1, !dbg !346
  br i1 %cmp, label %if.then, label %if.end, !dbg !347

if.then:                                          ; preds = %entry
  br label %return, !dbg !348

if.end:                                           ; preds = %entry
  %s4 = bitcast %union.dwords* %x to %struct.DATA*, !dbg !349
  %high5 = getelementptr inbounds %struct.DATA, %struct.DATA* %s4, i32 0, i32 1, !dbg !350
  %2 = load i32, i32* %high5, align 4, !dbg !350
  %s6 = bitcast %union.dwords* %y to %struct.DATA*, !dbg !351
  %high7 = getelementptr inbounds %struct.DATA, %struct.DATA* %s6, i32 0, i32 1, !dbg !352
  %3 = load i32, i32* %high7, align 4, !dbg !352
  %cmp8 = icmp sgt i32 %2, %3, !dbg !353
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !354

if.then9:                                         ; preds = %if.end
  br label %return, !dbg !355

if.end10:                                         ; preds = %if.end
  %low = bitcast %union.dwords* %x to i32*, !dbg !356
  %4 = load i32, i32* %low, align 8, !dbg !356
  %low13 = bitcast %union.dwords* %y to i32*, !dbg !357
  %5 = load i32, i32* %low13, align 8, !dbg !357
  %cmp14 = icmp ult i32 %4, %5, !dbg !358
  br i1 %cmp14, label %if.then15, label %if.end16, !dbg !359

if.then15:                                        ; preds = %if.end10
  br label %return, !dbg !360

if.end16:                                         ; preds = %if.end10
  %low18 = bitcast %union.dwords* %x to i32*, !dbg !361
  %6 = load i32, i32* %low18, align 8, !dbg !361
  %low20 = bitcast %union.dwords* %y to i32*, !dbg !362
  %7 = load i32, i32* %low20, align 8, !dbg !362
  %cmp21 = icmp ugt i32 %6, %7, !dbg !363
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !364

if.then22:                                        ; preds = %if.end16
  br label %return, !dbg !365

if.end23:                                         ; preds = %if.end16
  br label %return, !dbg !366

return:                                           ; preds = %if.end23, %if.then22, %if.then15, %if.then9, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 2, %if.then9 ], [ 0, %if.then15 ], [ 2, %if.then22 ], [ 1, %if.end23 ], !dbg !367
  ret i32 %retval.0, !dbg !368
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__aeabi_lcmp(i64 noundef %a, i64 noundef %b) #1 !dbg !369 {
entry:
  %call = call arm_aapcscc i32 @__cmpdi2(i64 noundef %a, i64 noundef %b) #4, !dbg !370
  %sub = add nsw i32 %call, -1, !dbg !371
  ret i32 %sub, !dbg !372
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__ctzdi2(i64 noundef %a) #1 !dbg !373 {
entry:
  %x = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %x, i32 0, i32 0, !dbg !374
  store i64 %a, i64* %all, align 8, !dbg !375
  %low = bitcast %union.dwords* %x to i32*, !dbg !376
  %0 = load i32, i32* %low, align 8, !dbg !376
  %cmp = icmp eq i32 %0, 0, !dbg !377
  %s1 = bitcast %union.dwords* %x to %struct.DATA*, !dbg !378
  %high = getelementptr inbounds %struct.DATA, %struct.DATA* %s1, i32 0, i32 1, !dbg !379
  %1 = load i32, i32* %high, align 4, !dbg !379
  %2 = select i1 %cmp, i32 %1, i32 %0, !dbg !380
  %3 = call i32 @llvm.cttz.i32(i32 %2, i1 false), !dbg !381, !range !305
  %and5 = select i1 %cmp, i32 32, i32 0, !dbg !382
  %add = add nuw nsw i32 %3, %and5, !dbg !383
  ret i32 %add, !dbg !384
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #3

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__ctzsi2(i32 noundef %a) #1 !dbg !385 {
entry:
  %and = and i32 %a, 65535, !dbg !386
  %cmp = icmp eq i32 %and, 0, !dbg !387
  %shl = select i1 %cmp, i32 16, i32 0, !dbg !388
  %shr = lshr i32 %a, %shl, !dbg !389
  %and1 = and i32 %shr, 255, !dbg !390
  %cmp2 = icmp eq i32 %and1, 0, !dbg !391
  %shl4 = select i1 %cmp2, i32 8, i32 0, !dbg !392
  %shr5 = lshr i32 %shr, %shl4, !dbg !393
  %add = or i32 %shl, %shl4, !dbg !394
  %and6 = and i32 %shr5, 15, !dbg !395
  %cmp7 = icmp eq i32 %and6, 0, !dbg !396
  %shl9 = select i1 %cmp7, i32 4, i32 0, !dbg !397
  %shr10 = lshr i32 %shr5, %shl9, !dbg !398
  %add11 = or i32 %add, %shl9, !dbg !399
  %and12 = and i32 %shr10, 3, !dbg !400
  %cmp13 = icmp eq i32 %and12, 0, !dbg !401
  %shl15 = select i1 %cmp13, i32 2, i32 0, !dbg !402
  %shr16 = lshr i32 %shr10, %shl15, !dbg !403
  %add18 = or i32 %add11, %shl15, !dbg !404
  %and17 = lshr i32 %shr16, 1, !dbg !405
  %shr19 = and i32 %and17, 1, !dbg !405
  %sub = sub nuw nsw i32 2, %shr19, !dbg !406
  %0 = or i32 %shr16, -2, !dbg !407
  %.neg = add nsw i32 %0, 1, !dbg !407
  %and24 = and i32 %sub, %.neg, !dbg !408
  %add25 = add nuw nsw i32 %add18, %and24, !dbg !409
  ret i32 %add25, !dbg !410
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__divdi3(i64 noundef %a, i64 noundef %b) #1 !dbg !411 {
entry:
  %shr = ashr i64 %a, 63, !dbg !412
  %shr1 = ashr i64 %b, 63, !dbg !413
  %xor = xor i64 %shr, %a, !dbg !414
  %sub = sub nsw i64 %xor, %shr, !dbg !415
  %xor2 = xor i64 %shr1, %b, !dbg !416
  %sub3 = sub nsw i64 %xor2, %shr1, !dbg !417
  %xor4 = xor i64 %shr, %shr1, !dbg !418
  %call = call arm_aapcscc i64 @__udivmoddi4(i64 noundef %sub, i64 noundef %sub3, i64* noundef null) #4, !dbg !419
  %xor5 = xor i64 %call, %xor4, !dbg !420
  %sub6 = sub i64 %xor5, %xor4, !dbg !421
  ret i64 %sub6, !dbg !422
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__udivmoddi4(i64 noundef %a, i64 noundef %b, i64* noundef %rem) #1 !dbg !423 {
entry:
  %n = alloca %union.dwords, align 8
  %d = alloca %union.dwords, align 8
  %q = alloca %union.dwords, align 8
  %r = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %n, i32 0, i32 0, !dbg !424
  store i64 %a, i64* %all, align 8, !dbg !425
  %all1 = getelementptr inbounds %union.dwords, %union.dwords* %d, i32 0, i32 0, !dbg !426
  store i64 %b, i64* %all1, align 8, !dbg !427
  %s = bitcast %union.dwords* %n to %struct.DATA*, !dbg !428
  %high = getelementptr inbounds %struct.DATA, %struct.DATA* %s, i32 0, i32 1, !dbg !429
  %0 = load i32, i32* %high, align 4, !dbg !429
  %cmp = icmp eq i32 %0, 0, !dbg !430
  br i1 %cmp, label %if.then, label %if.end23, !dbg !431

if.then:                                          ; preds = %entry
  %s2 = bitcast %union.dwords* %d to %struct.DATA*, !dbg !432
  %high3 = getelementptr inbounds %struct.DATA, %struct.DATA* %s2, i32 0, i32 1, !dbg !433
  %1 = load i32, i32* %high3, align 4, !dbg !433
  %cmp4 = icmp eq i32 %1, 0, !dbg !434
  br i1 %cmp4, label %if.then5, label %if.end16, !dbg !435

if.then5:                                         ; preds = %if.then
  %tobool.not = icmp eq i64* %rem, null, !dbg !436
  br i1 %tobool.not, label %if.end, label %if.then6, !dbg !436

if.then6:                                         ; preds = %if.then5
  %low = bitcast %union.dwords* %n to i32*, !dbg !437
  %2 = load i32, i32* %low, align 8, !dbg !437
  %low9 = bitcast %union.dwords* %d to i32*, !dbg !438
  %3 = load i32, i32* %low9, align 8, !dbg !438
  %rem10 = urem i32 %2, %3, !dbg !439
  %conv = zext i32 %rem10 to i64, !dbg !440
  store i64 %conv, i64* %rem, align 8, !dbg !441
  br label %if.end, !dbg !442

if.end:                                           ; preds = %if.then6, %if.then5
  %low12 = bitcast %union.dwords* %n to i32*, !dbg !443
  %4 = load i32, i32* %low12, align 8, !dbg !443
  %low14 = bitcast %union.dwords* %d to i32*, !dbg !444
  %5 = load i32, i32* %low14, align 8, !dbg !444
  %div = udiv i32 %4, %5, !dbg !445
  %conv15 = zext i32 %div to i64, !dbg !446
  br label %return, !dbg !447

if.end16:                                         ; preds = %if.then
  %tobool17.not = icmp eq i64* %rem, null, !dbg !448
  br i1 %tobool17.not, label %if.end22, label %if.then18, !dbg !448

if.then18:                                        ; preds = %if.end16
  %low20 = bitcast %union.dwords* %n to i32*, !dbg !449
  %6 = load i32, i32* %low20, align 8, !dbg !449
  %conv21 = zext i32 %6 to i64, !dbg !450
  store i64 %conv21, i64* %rem, align 8, !dbg !451
  br label %if.end22, !dbg !452

if.end22:                                         ; preds = %if.then18, %if.end16
  br label %return, !dbg !453

if.end23:                                         ; preds = %entry
  %low25 = bitcast %union.dwords* %d to i32*, !dbg !454
  %7 = load i32, i32* %low25, align 8, !dbg !454
  %cmp26 = icmp eq i32 %7, 0, !dbg !455
  br i1 %cmp26, label %if.then28, label %if.else, !dbg !456

if.then28:                                        ; preds = %if.end23
  %s29 = bitcast %union.dwords* %d to %struct.DATA*, !dbg !457
  %high30 = getelementptr inbounds %struct.DATA, %struct.DATA* %s29, i32 0, i32 1, !dbg !458
  %8 = load i32, i32* %high30, align 4, !dbg !458
  %cmp31 = icmp eq i32 %8, 0, !dbg !459
  br i1 %cmp31, label %if.then33, label %if.end49, !dbg !460

if.then33:                                        ; preds = %if.then28
  %tobool34.not = icmp eq i64* %rem, null, !dbg !461
  br i1 %tobool34.not, label %if.end42, label %if.then35, !dbg !461

if.then35:                                        ; preds = %if.then33
  %s36 = bitcast %union.dwords* %n to %struct.DATA*, !dbg !462
  %high37 = getelementptr inbounds %struct.DATA, %struct.DATA* %s36, i32 0, i32 1, !dbg !463
  %9 = load i32, i32* %high37, align 4, !dbg !463
  %low39 = bitcast %union.dwords* %d to i32*, !dbg !464
  %10 = load i32, i32* %low39, align 8, !dbg !464
  %rem40 = urem i32 %9, %10, !dbg !465
  %conv41 = zext i32 %rem40 to i64, !dbg !466
  store i64 %conv41, i64* %rem, align 8, !dbg !467
  br label %if.end42, !dbg !468

if.end42:                                         ; preds = %if.then35, %if.then33
  %s43 = bitcast %union.dwords* %n to %struct.DATA*, !dbg !469
  %high44 = getelementptr inbounds %struct.DATA, %struct.DATA* %s43, i32 0, i32 1, !dbg !470
  %11 = load i32, i32* %high44, align 4, !dbg !470
  %low46 = bitcast %union.dwords* %d to i32*, !dbg !471
  %12 = load i32, i32* %low46, align 8, !dbg !471
  %div47 = udiv i32 %11, %12, !dbg !472
  %conv48 = zext i32 %div47 to i64, !dbg !473
  br label %return, !dbg !474

if.end49:                                         ; preds = %if.then28
  %low51 = bitcast %union.dwords* %n to i32*, !dbg !475
  %13 = load i32, i32* %low51, align 8, !dbg !475
  %cmp52 = icmp eq i32 %13, 0, !dbg !476
  br i1 %cmp52, label %if.then54, label %if.end74, !dbg !477

if.then54:                                        ; preds = %if.end49
  %tobool55.not = icmp eq i64* %rem, null, !dbg !478
  br i1 %tobool55.not, label %if.end67, label %if.then56, !dbg !478

if.then56:                                        ; preds = %if.then54
  %s57 = bitcast %union.dwords* %n to %struct.DATA*, !dbg !479
  %high58 = getelementptr inbounds %struct.DATA, %struct.DATA* %s57, i32 0, i32 1, !dbg !480
  %14 = load i32, i32* %high58, align 4, !dbg !480
  %s59 = bitcast %union.dwords* %d to %struct.DATA*, !dbg !481
  %high60 = getelementptr inbounds %struct.DATA, %struct.DATA* %s59, i32 0, i32 1, !dbg !482
  %15 = load i32, i32* %high60, align 4, !dbg !482
  %rem61 = urem i32 %14, %15, !dbg !483
  %s62 = bitcast %union.dwords* %r to %struct.DATA*, !dbg !484
  %high63 = getelementptr inbounds %struct.DATA, %struct.DATA* %s62, i32 0, i32 1, !dbg !485
  store i32 %rem61, i32* %high63, align 4, !dbg !486
  %low65 = bitcast %union.dwords* %r to i32*, !dbg !487
  store i32 0, i32* %low65, align 8, !dbg !488
  %all66 = getelementptr inbounds %union.dwords, %union.dwords* %r, i32 0, i32 0, !dbg !489
  %16 = load i64, i64* %all66, align 8, !dbg !489
  store i64 %16, i64* %rem, align 8, !dbg !490
  br label %if.end67, !dbg !491

if.end67:                                         ; preds = %if.then56, %if.then54
  %s68 = bitcast %union.dwords* %n to %struct.DATA*, !dbg !492
  %high69 = getelementptr inbounds %struct.DATA, %struct.DATA* %s68, i32 0, i32 1, !dbg !493
  %17 = load i32, i32* %high69, align 4, !dbg !493
  %s70 = bitcast %union.dwords* %d to %struct.DATA*, !dbg !494
  %high71 = getelementptr inbounds %struct.DATA, %struct.DATA* %s70, i32 0, i32 1, !dbg !495
  %18 = load i32, i32* %high71, align 4, !dbg !495
  %div72 = udiv i32 %17, %18, !dbg !496
  %conv73 = zext i32 %div72 to i64, !dbg !497
  br label %return, !dbg !498

if.end74:                                         ; preds = %if.end49
  %s75 = bitcast %union.dwords* %d to %struct.DATA*, !dbg !499
  %high76 = getelementptr inbounds %struct.DATA, %struct.DATA* %s75, i32 0, i32 1, !dbg !500
  %19 = load i32, i32* %high76, align 4, !dbg !500
  %s77 = bitcast %union.dwords* %d to %struct.DATA*, !dbg !501
  %high78 = getelementptr inbounds %struct.DATA, %struct.DATA* %s77, i32 0, i32 1, !dbg !502
  %20 = load i32, i32* %high78, align 4, !dbg !502
  %sub = add i32 %20, -1, !dbg !503
  %and = and i32 %19, %sub, !dbg !504
  %cmp79 = icmp eq i32 %and, 0, !dbg !505
  br i1 %cmp79, label %if.then81, label %if.end103, !dbg !506

if.then81:                                        ; preds = %if.end74
  %tobool82.not = icmp eq i64* %rem, null, !dbg !507
  br i1 %tobool82.not, label %if.end97, label %if.then83, !dbg !507

if.then83:                                        ; preds = %if.then81
  %low85 = bitcast %union.dwords* %n to i32*, !dbg !508
  %21 = load i32, i32* %low85, align 8, !dbg !508
  %low87 = bitcast %union.dwords* %r to i32*, !dbg !509
  store i32 %21, i32* %low87, align 8, !dbg !510
  %s88 = bitcast %union.dwords* %n to %struct.DATA*, !dbg !511
  %high89 = getelementptr inbounds %struct.DATA, %struct.DATA* %s88, i32 0, i32 1, !dbg !512
  %22 = load i32, i32* %high89, align 4, !dbg !512
  %s90 = bitcast %union.dwords* %d to %struct.DATA*, !dbg !513
  %high91 = getelementptr inbounds %struct.DATA, %struct.DATA* %s90, i32 0, i32 1, !dbg !514
  %23 = load i32, i32* %high91, align 4, !dbg !514
  %sub92 = add i32 %23, -1, !dbg !515
  %and93 = and i32 %22, %sub92, !dbg !516
  %s94 = bitcast %union.dwords* %r to %struct.DATA*, !dbg !517
  %high95 = getelementptr inbounds %struct.DATA, %struct.DATA* %s94, i32 0, i32 1, !dbg !518
  store i32 %and93, i32* %high95, align 4, !dbg !519
  %all96 = getelementptr inbounds %union.dwords, %union.dwords* %r, i32 0, i32 0, !dbg !520
  %24 = load i64, i64* %all96, align 8, !dbg !520
  store i64 %24, i64* %rem, align 8, !dbg !521
  br label %if.end97, !dbg !522

if.end97:                                         ; preds = %if.then83, %if.then81
  %s98 = bitcast %union.dwords* %n to %struct.DATA*, !dbg !523
  %high99 = getelementptr inbounds %struct.DATA, %struct.DATA* %s98, i32 0, i32 1, !dbg !524
  %25 = load i32, i32* %high99, align 4, !dbg !524
  %s100 = bitcast %union.dwords* %d to %struct.DATA*, !dbg !525
  %high101 = getelementptr inbounds %struct.DATA, %struct.DATA* %s100, i32 0, i32 1, !dbg !526
  %26 = load i32, i32* %high101, align 4, !dbg !526
  %27 = call i32 @llvm.cttz.i32(i32 %26, i1 false), !dbg !527, !range !305
  %shr = lshr i32 %25, %27, !dbg !528
  %conv102 = zext i32 %shr to i64, !dbg !529
  br label %return, !dbg !530

if.end103:                                        ; preds = %if.end74
  %s104 = bitcast %union.dwords* %d to %struct.DATA*, !dbg !531
  %high105 = getelementptr inbounds %struct.DATA, %struct.DATA* %s104, i32 0, i32 1, !dbg !532
  %28 = load i32, i32* %high105, align 4, !dbg !532
  %29 = call i32 @llvm.ctlz.i32(i32 %28, i1 false), !dbg !533, !range !305
  %s106 = bitcast %union.dwords* %n to %struct.DATA*, !dbg !534
  %high107 = getelementptr inbounds %struct.DATA, %struct.DATA* %s106, i32 0, i32 1, !dbg !535
  %30 = load i32, i32* %high107, align 4, !dbg !535
  %31 = call i32 @llvm.ctlz.i32(i32 %30, i1 false), !dbg !536, !range !305
  %sub108 = sub nsw i32 %29, %31, !dbg !537
  %cmp109 = icmp ugt i32 %sub108, 30, !dbg !538
  br i1 %cmp109, label %if.then111, label %if.end116, !dbg !539

if.then111:                                       ; preds = %if.end103
  %tobool112.not = icmp eq i64* %rem, null, !dbg !540
  br i1 %tobool112.not, label %if.end115, label %if.then113, !dbg !540

if.then113:                                       ; preds = %if.then111
  %all114 = getelementptr inbounds %union.dwords, %union.dwords* %n, i32 0, i32 0, !dbg !541
  %32 = load i64, i64* %all114, align 8, !dbg !541
  store i64 %32, i64* %rem, align 8, !dbg !542
  br label %if.end115, !dbg !543

if.end115:                                        ; preds = %if.then113, %if.then111
  br label %return, !dbg !544

if.end116:                                        ; preds = %if.end103
  %inc = add nsw i32 %sub108, 1, !dbg !545
  %low118 = bitcast %union.dwords* %q to i32*, !dbg !546
  store i32 0, i32* %low118, align 8, !dbg !547
  %low120 = bitcast %union.dwords* %n to i32*, !dbg !548
  %33 = load i32, i32* %low120, align 8, !dbg !548
  %sub121 = sub nsw i32 31, %sub108, !dbg !549
  %shl = shl i32 %33, %sub121, !dbg !550
  %s122 = bitcast %union.dwords* %q to %struct.DATA*, !dbg !551
  %high123 = getelementptr inbounds %struct.DATA, %struct.DATA* %s122, i32 0, i32 1, !dbg !552
  store i32 %shl, i32* %high123, align 4, !dbg !553
  %s124 = bitcast %union.dwords* %n to %struct.DATA*, !dbg !554
  %high125 = getelementptr inbounds %struct.DATA, %struct.DATA* %s124, i32 0, i32 1, !dbg !555
  %34 = load i32, i32* %high125, align 4, !dbg !555
  %shr126 = lshr i32 %34, %inc, !dbg !556
  %s127 = bitcast %union.dwords* %r to %struct.DATA*, !dbg !557
  %high128 = getelementptr inbounds %struct.DATA, %struct.DATA* %s127, i32 0, i32 1, !dbg !558
  store i32 %shr126, i32* %high128, align 4, !dbg !559
  %s129 = bitcast %union.dwords* %n to %struct.DATA*, !dbg !560
  %high130 = getelementptr inbounds %struct.DATA, %struct.DATA* %s129, i32 0, i32 1, !dbg !561
  %35 = load i32, i32* %high130, align 4, !dbg !561
  %sub131 = sub nsw i32 31, %sub108, !dbg !562
  %shl132 = shl i32 %35, %sub131, !dbg !563
  %low134 = bitcast %union.dwords* %n to i32*, !dbg !564
  %36 = load i32, i32* %low134, align 8, !dbg !564
  %shr135 = lshr i32 %36, %inc, !dbg !565
  %or = or i32 %shl132, %shr135, !dbg !566
  %low137 = bitcast %union.dwords* %r to i32*, !dbg !567
  store i32 %or, i32* %low137, align 8, !dbg !568
  br label %if.end317, !dbg !569

if.else:                                          ; preds = %if.end23
  %s138 = bitcast %union.dwords* %d to %struct.DATA*, !dbg !570
  %high139 = getelementptr inbounds %struct.DATA, %struct.DATA* %s138, i32 0, i32 1, !dbg !571
  %37 = load i32, i32* %high139, align 4, !dbg !571
  %cmp140 = icmp eq i32 %37, 0, !dbg !572
  br i1 %cmp140, label %if.then142, label %if.else263, !dbg !573

if.then142:                                       ; preds = %if.else
  %low144 = bitcast %union.dwords* %d to i32*, !dbg !574
  %38 = load i32, i32* %low144, align 8, !dbg !574
  %39 = call i32 @llvm.ctpop.i32(i32 %38), !dbg !575, !range !305
  %cmp149 = icmp ult i32 %39, 2, !dbg !575
  br i1 %cmp149, label %if.then151, label %if.end187, !dbg !576

if.then151:                                       ; preds = %if.then142
  %tobool152.not = icmp eq i64* %rem, null, !dbg !577
  br i1 %tobool152.not, label %if.end161, label %if.then153, !dbg !577

if.then153:                                       ; preds = %if.then151
  %low155 = bitcast %union.dwords* %n to i32*, !dbg !578
  %40 = load i32, i32* %low155, align 8, !dbg !578
  %low157 = bitcast %union.dwords* %d to i32*, !dbg !579
  %41 = load i32, i32* %low157, align 8, !dbg !579
  %sub158 = add i32 %41, -1, !dbg !580
  %and159 = and i32 %40, %sub158, !dbg !581
  %conv160 = zext i32 %and159 to i64, !dbg !582
  store i64 %conv160, i64* %rem, align 8, !dbg !583
  br label %if.end161, !dbg !584

if.end161:                                        ; preds = %if.then153, %if.then151
  %low163 = bitcast %union.dwords* %d to i32*, !dbg !585
  %42 = load i32, i32* %low163, align 8, !dbg !585
  %cmp164 = icmp eq i32 %42, 1, !dbg !586
  br i1 %cmp164, label %if.then166, label %if.end168, !dbg !587

if.then166:                                       ; preds = %if.end161
  %all167 = getelementptr inbounds %union.dwords, %union.dwords* %n, i32 0, i32 0, !dbg !588
  %43 = load i64, i64* %all167, align 8, !dbg !588
  br label %return, !dbg !589

if.end168:                                        ; preds = %if.end161
  %low170 = bitcast %union.dwords* %d to i32*, !dbg !590
  %44 = load i32, i32* %low170, align 8, !dbg !590
  %45 = call i32 @llvm.cttz.i32(i32 %44, i1 false), !dbg !591, !range !305
  %s171 = bitcast %union.dwords* %n to %struct.DATA*, !dbg !592
  %high172 = getelementptr inbounds %struct.DATA, %struct.DATA* %s171, i32 0, i32 1, !dbg !593
  %46 = load i32, i32* %high172, align 4, !dbg !593
  %shr173 = lshr i32 %46, %45, !dbg !594
  %s174 = bitcast %union.dwords* %q to %struct.DATA*, !dbg !595
  %high175 = getelementptr inbounds %struct.DATA, %struct.DATA* %s174, i32 0, i32 1, !dbg !596
  store i32 %shr173, i32* %high175, align 4, !dbg !597
  %s176 = bitcast %union.dwords* %n to %struct.DATA*, !dbg !598
  %high177 = getelementptr inbounds %struct.DATA, %struct.DATA* %s176, i32 0, i32 1, !dbg !599
  %47 = load i32, i32* %high177, align 4, !dbg !599
  %sub178 = sub nuw nsw i32 32, %45, !dbg !600
  %shl179 = shl i32 %47, %sub178, !dbg !601
  %low181 = bitcast %union.dwords* %n to i32*, !dbg !602
  %48 = load i32, i32* %low181, align 8, !dbg !602
  %shr182 = lshr i32 %48, %45, !dbg !603
  %or183 = or i32 %shl179, %shr182, !dbg !604
  %low185 = bitcast %union.dwords* %q to i32*, !dbg !605
  store i32 %or183, i32* %low185, align 8, !dbg !606
  %all186 = getelementptr inbounds %union.dwords, %union.dwords* %q, i32 0, i32 0, !dbg !607
  %49 = load i64, i64* %all186, align 8, !dbg !607
  br label %return, !dbg !608

if.end187:                                        ; preds = %if.then142
  %low189 = bitcast %union.dwords* %d to i32*, !dbg !609
  %50 = load i32, i32* %low189, align 8, !dbg !609
  %51 = call i32 @llvm.ctlz.i32(i32 %50, i1 false), !dbg !610, !range !305
  %add = add nuw nsw i32 %51, 33, !dbg !611
  %s190 = bitcast %union.dwords* %n to %struct.DATA*, !dbg !612
  %high191 = getelementptr inbounds %struct.DATA, %struct.DATA* %s190, i32 0, i32 1, !dbg !613
  %52 = load i32, i32* %high191, align 4, !dbg !613
  %53 = call i32 @llvm.ctlz.i32(i32 %52, i1 false), !dbg !614, !range !305
  %sub192 = sub nsw i32 %add, %53, !dbg !615
  %cmp193 = icmp eq i32 %sub192, 32, !dbg !616
  br i1 %cmp193, label %if.then195, label %if.else208, !dbg !617

if.then195:                                       ; preds = %if.end187
  %low197 = bitcast %union.dwords* %q to i32*, !dbg !618
  store i32 0, i32* %low197, align 8, !dbg !619
  %low199 = bitcast %union.dwords* %n to i32*, !dbg !620
  %54 = load i32, i32* %low199, align 8, !dbg !620
  %s200 = bitcast %union.dwords* %q to %struct.DATA*, !dbg !621
  %high201 = getelementptr inbounds %struct.DATA, %struct.DATA* %s200, i32 0, i32 1, !dbg !622
  store i32 %54, i32* %high201, align 4, !dbg !623
  %s202 = bitcast %union.dwords* %r to %struct.DATA*, !dbg !624
  %high203 = getelementptr inbounds %struct.DATA, %struct.DATA* %s202, i32 0, i32 1, !dbg !625
  store i32 0, i32* %high203, align 4, !dbg !626
  %s204 = bitcast %union.dwords* %n to %struct.DATA*, !dbg !627
  %high205 = getelementptr inbounds %struct.DATA, %struct.DATA* %s204, i32 0, i32 1, !dbg !628
  %55 = load i32, i32* %high205, align 4, !dbg !628
  %low207 = bitcast %union.dwords* %r to i32*, !dbg !629
  store i32 %55, i32* %low207, align 8, !dbg !630
  br label %if.end262, !dbg !631

if.else208:                                       ; preds = %if.end187
  %cmp209 = icmp ult i32 %sub192, 32, !dbg !632
  br i1 %cmp209, label %if.then211, label %if.else235, !dbg !633

if.then211:                                       ; preds = %if.else208
  %low213 = bitcast %union.dwords* %q to i32*, !dbg !634
  store i32 0, i32* %low213, align 8, !dbg !635
  %low215 = bitcast %union.dwords* %n to i32*, !dbg !636
  %56 = load i32, i32* %low215, align 8, !dbg !636
  %sub216 = sub nsw i32 32, %sub192, !dbg !637
  %shl217 = shl i32 %56, %sub216, !dbg !638
  %s218 = bitcast %union.dwords* %q to %struct.DATA*, !dbg !639
  %high219 = getelementptr inbounds %struct.DATA, %struct.DATA* %s218, i32 0, i32 1, !dbg !640
  store i32 %shl217, i32* %high219, align 4, !dbg !641
  %s220 = bitcast %union.dwords* %n to %struct.DATA*, !dbg !642
  %high221 = getelementptr inbounds %struct.DATA, %struct.DATA* %s220, i32 0, i32 1, !dbg !643
  %57 = load i32, i32* %high221, align 4, !dbg !643
  %shr222 = lshr i32 %57, %sub192, !dbg !644
  %s223 = bitcast %union.dwords* %r to %struct.DATA*, !dbg !645
  %high224 = getelementptr inbounds %struct.DATA, %struct.DATA* %s223, i32 0, i32 1, !dbg !646
  store i32 %shr222, i32* %high224, align 4, !dbg !647
  %s225 = bitcast %union.dwords* %n to %struct.DATA*, !dbg !648
  %high226 = getelementptr inbounds %struct.DATA, %struct.DATA* %s225, i32 0, i32 1, !dbg !649
  %58 = load i32, i32* %high226, align 4, !dbg !649
  %sub227 = sub nsw i32 32, %sub192, !dbg !650
  %shl228 = shl i32 %58, %sub227, !dbg !651
  %low230 = bitcast %union.dwords* %n to i32*, !dbg !652
  %59 = load i32, i32* %low230, align 8, !dbg !652
  %shr231 = lshr i32 %59, %sub192, !dbg !653
  %or232 = or i32 %shl228, %shr231, !dbg !654
  %low234 = bitcast %union.dwords* %r to i32*, !dbg !655
  store i32 %or232, i32* %low234, align 8, !dbg !656
  br label %if.end261, !dbg !657

if.else235:                                       ; preds = %if.else208
  %low237 = bitcast %union.dwords* %n to i32*, !dbg !658
  %60 = load i32, i32* %low237, align 8, !dbg !658
  %sub238 = sub nsw i32 64, %sub192, !dbg !659
  %shl239 = shl i32 %60, %sub238, !dbg !660
  %low241 = bitcast %union.dwords* %q to i32*, !dbg !661
  store i32 %shl239, i32* %low241, align 8, !dbg !662
  %s242 = bitcast %union.dwords* %n to %struct.DATA*, !dbg !663
  %high243 = getelementptr inbounds %struct.DATA, %struct.DATA* %s242, i32 0, i32 1, !dbg !664
  %61 = load i32, i32* %high243, align 4, !dbg !664
  %sub244 = sub nsw i32 64, %sub192, !dbg !665
  %shl245 = shl i32 %61, %sub244, !dbg !666
  %low247 = bitcast %union.dwords* %n to i32*, !dbg !667
  %62 = load i32, i32* %low247, align 8, !dbg !667
  %sub248 = add nsw i32 %sub192, -32, !dbg !668
  %shr249 = lshr i32 %62, %sub248, !dbg !669
  %or250 = or i32 %shl245, %shr249, !dbg !670
  %s251 = bitcast %union.dwords* %q to %struct.DATA*, !dbg !671
  %high252 = getelementptr inbounds %struct.DATA, %struct.DATA* %s251, i32 0, i32 1, !dbg !672
  store i32 %or250, i32* %high252, align 4, !dbg !673
  %s253 = bitcast %union.dwords* %r to %struct.DATA*, !dbg !674
  %high254 = getelementptr inbounds %struct.DATA, %struct.DATA* %s253, i32 0, i32 1, !dbg !675
  store i32 0, i32* %high254, align 4, !dbg !676
  %s255 = bitcast %union.dwords* %n to %struct.DATA*, !dbg !677
  %high256 = getelementptr inbounds %struct.DATA, %struct.DATA* %s255, i32 0, i32 1, !dbg !678
  %63 = load i32, i32* %high256, align 4, !dbg !678
  %sub257 = add nsw i32 %sub192, -32, !dbg !679
  %shr258 = lshr i32 %63, %sub257, !dbg !680
  %low260 = bitcast %union.dwords* %r to i32*, !dbg !681
  store i32 %shr258, i32* %low260, align 8, !dbg !682
  br label %if.end261

if.end261:                                        ; preds = %if.else235, %if.then211
  br label %if.end262

if.end262:                                        ; preds = %if.end261, %if.then195
  br label %if.end316, !dbg !683

if.else263:                                       ; preds = %if.else
  %s264 = bitcast %union.dwords* %d to %struct.DATA*, !dbg !684
  %high265 = getelementptr inbounds %struct.DATA, %struct.DATA* %s264, i32 0, i32 1, !dbg !685
  %64 = load i32, i32* %high265, align 4, !dbg !685
  %65 = call i32 @llvm.ctlz.i32(i32 %64, i1 false), !dbg !686, !range !305
  %s266 = bitcast %union.dwords* %n to %struct.DATA*, !dbg !687
  %high267 = getelementptr inbounds %struct.DATA, %struct.DATA* %s266, i32 0, i32 1, !dbg !688
  %66 = load i32, i32* %high267, align 4, !dbg !688
  %67 = call i32 @llvm.ctlz.i32(i32 %66, i1 false), !dbg !689, !range !305
  %sub268 = sub nsw i32 %65, %67, !dbg !690
  %cmp269 = icmp ugt i32 %sub268, 31, !dbg !691
  br i1 %cmp269, label %if.then271, label %if.end276, !dbg !692

if.then271:                                       ; preds = %if.else263
  %tobool272.not = icmp eq i64* %rem, null, !dbg !693
  br i1 %tobool272.not, label %if.end275, label %if.then273, !dbg !693

if.then273:                                       ; preds = %if.then271
  %all274 = getelementptr inbounds %union.dwords, %union.dwords* %n, i32 0, i32 0, !dbg !694
  %68 = load i64, i64* %all274, align 8, !dbg !694
  store i64 %68, i64* %rem, align 8, !dbg !695
  br label %if.end275, !dbg !696

if.end275:                                        ; preds = %if.then273, %if.then271
  br label %return, !dbg !697

if.end276:                                        ; preds = %if.else263
  %inc277 = add nsw i32 %sub268, 1, !dbg !698
  %low279 = bitcast %union.dwords* %q to i32*, !dbg !699
  store i32 0, i32* %low279, align 8, !dbg !700
  %cmp280 = icmp eq i32 %inc277, 32, !dbg !701
  br i1 %cmp280, label %if.then282, label %if.else293, !dbg !702

if.then282:                                       ; preds = %if.end276
  %low284 = bitcast %union.dwords* %n to i32*, !dbg !703
  %69 = load i32, i32* %low284, align 8, !dbg !703
  %s285 = bitcast %union.dwords* %q to %struct.DATA*, !dbg !704
  %high286 = getelementptr inbounds %struct.DATA, %struct.DATA* %s285, i32 0, i32 1, !dbg !705
  store i32 %69, i32* %high286, align 4, !dbg !706
  %s287 = bitcast %union.dwords* %r to %struct.DATA*, !dbg !707
  %high288 = getelementptr inbounds %struct.DATA, %struct.DATA* %s287, i32 0, i32 1, !dbg !708
  store i32 0, i32* %high288, align 4, !dbg !709
  %s289 = bitcast %union.dwords* %n to %struct.DATA*, !dbg !710
  %high290 = getelementptr inbounds %struct.DATA, %struct.DATA* %s289, i32 0, i32 1, !dbg !711
  %70 = load i32, i32* %high290, align 4, !dbg !711
  %low292 = bitcast %union.dwords* %r to i32*, !dbg !712
  store i32 %70, i32* %low292, align 8, !dbg !713
  br label %if.end315, !dbg !714

if.else293:                                       ; preds = %if.end276
  %low295 = bitcast %union.dwords* %n to i32*, !dbg !715
  %71 = load i32, i32* %low295, align 8, !dbg !715
  %sub296 = sub nsw i32 31, %sub268, !dbg !716
  %shl297 = shl i32 %71, %sub296, !dbg !717
  %s298 = bitcast %union.dwords* %q to %struct.DATA*, !dbg !718
  %high299 = getelementptr inbounds %struct.DATA, %struct.DATA* %s298, i32 0, i32 1, !dbg !719
  store i32 %shl297, i32* %high299, align 4, !dbg !720
  %s300 = bitcast %union.dwords* %n to %struct.DATA*, !dbg !721
  %high301 = getelementptr inbounds %struct.DATA, %struct.DATA* %s300, i32 0, i32 1, !dbg !722
  %72 = load i32, i32* %high301, align 4, !dbg !722
  %shr302 = lshr i32 %72, %inc277, !dbg !723
  %s303 = bitcast %union.dwords* %r to %struct.DATA*, !dbg !724
  %high304 = getelementptr inbounds %struct.DATA, %struct.DATA* %s303, i32 0, i32 1, !dbg !725
  store i32 %shr302, i32* %high304, align 4, !dbg !726
  %s305 = bitcast %union.dwords* %n to %struct.DATA*, !dbg !727
  %high306 = getelementptr inbounds %struct.DATA, %struct.DATA* %s305, i32 0, i32 1, !dbg !728
  %73 = load i32, i32* %high306, align 4, !dbg !728
  %sub307 = sub nsw i32 31, %sub268, !dbg !729
  %shl308 = shl i32 %73, %sub307, !dbg !730
  %low310 = bitcast %union.dwords* %n to i32*, !dbg !731
  %74 = load i32, i32* %low310, align 8, !dbg !731
  %shr311 = lshr i32 %74, %inc277, !dbg !732
  %or312 = or i32 %shl308, %shr311, !dbg !733
  %low314 = bitcast %union.dwords* %r to i32*, !dbg !734
  store i32 %or312, i32* %low314, align 8, !dbg !735
  br label %if.end315

if.end315:                                        ; preds = %if.else293, %if.then282
  br label %if.end316

if.end316:                                        ; preds = %if.end315, %if.end262
  %sr.0 = phi i32 [ %sub192, %if.end262 ], [ %inc277, %if.end315 ], !dbg !736
  br label %if.end317

if.end317:                                        ; preds = %if.end316, %if.end116
  %sr.1 = phi i32 [ %inc, %if.end116 ], [ %sr.0, %if.end316 ], !dbg !736
  br label %for.cond, !dbg !737

for.cond:                                         ; preds = %for.inc, %if.end317
  %sr.2 = phi i32 [ %sr.1, %if.end317 ], [ %dec, %for.inc ], !dbg !736
  %carry.0 = phi i32 [ 0, %if.end317 ], [ %conv360, %for.inc ], !dbg !736
  %cmp318.not = icmp eq i32 %sr.2, 0, !dbg !738
  br i1 %cmp318.not, label %for.end, label %for.body, !dbg !737

for.body:                                         ; preds = %for.cond
  %s320 = bitcast %union.dwords* %r to %struct.DATA*, !dbg !739
  %high321 = getelementptr inbounds %struct.DATA, %struct.DATA* %s320, i32 0, i32 1, !dbg !740
  %75 = load i32, i32* %high321, align 4, !dbg !740
  %low324 = bitcast %union.dwords* %r to i32*, !dbg !741
  %76 = load i32, i32* %low324, align 8, !dbg !741
  %or326 = call i32 @llvm.fshl.i32(i32 %75, i32 %76, i32 1), !dbg !742
  %s327 = bitcast %union.dwords* %r to %struct.DATA*, !dbg !743
  %high328 = getelementptr inbounds %struct.DATA, %struct.DATA* %s327, i32 0, i32 1, !dbg !744
  store i32 %or326, i32* %high328, align 4, !dbg !745
  %s332 = bitcast %union.dwords* %q to %struct.DATA*, !dbg !746
  %high333 = getelementptr inbounds %struct.DATA, %struct.DATA* %s332, i32 0, i32 1, !dbg !747
  %77 = load i32, i32* %high333, align 4, !dbg !747
  %or335 = call i32 @llvm.fshl.i32(i32 %76, i32 %77, i32 1), !dbg !748
  %low337 = bitcast %union.dwords* %r to i32*, !dbg !749
  store i32 %or335, i32* %low337, align 8, !dbg !750
  %s338 = bitcast %union.dwords* %q to %struct.DATA*, !dbg !751
  %high339 = getelementptr inbounds %struct.DATA, %struct.DATA* %s338, i32 0, i32 1, !dbg !752
  %78 = load i32, i32* %high339, align 4, !dbg !752
  %low342 = bitcast %union.dwords* %q to i32*, !dbg !753
  %79 = load i32, i32* %low342, align 8, !dbg !753
  %or344 = call i32 @llvm.fshl.i32(i32 %78, i32 %79, i32 1), !dbg !754
  %s345 = bitcast %union.dwords* %q to %struct.DATA*, !dbg !755
  %high346 = getelementptr inbounds %struct.DATA, %struct.DATA* %s345, i32 0, i32 1, !dbg !756
  store i32 %or344, i32* %high346, align 4, !dbg !757
  %shl349 = shl i32 %79, 1, !dbg !758
  %or350 = or i32 %shl349, %carry.0, !dbg !759
  %low352 = bitcast %union.dwords* %q to i32*, !dbg !760
  store i32 %or350, i32* %low352, align 8, !dbg !761
  %all354 = getelementptr inbounds %union.dwords, %union.dwords* %d, i32 0, i32 0, !dbg !762
  %80 = load i64, i64* %all354, align 8, !dbg !762
  %all355 = getelementptr inbounds %union.dwords, %union.dwords* %r, i32 0, i32 0, !dbg !763
  %81 = load i64, i64* %all355, align 8, !dbg !763
  %82 = xor i64 %81, -1, !dbg !764
  %sub357 = add i64 %80, %82, !dbg !764
  %isneg = icmp slt i64 %sub357, 0, !dbg !765
  %and362 = select i1 %isneg, i64 %80, i64 0, !dbg !765
  %all363 = getelementptr inbounds %union.dwords, %union.dwords* %r, i32 0, i32 0, !dbg !766
  %sub364 = sub i64 %81, %and362, !dbg !767
  store i64 %sub364, i64* %all363, align 8, !dbg !767
  br label %for.inc, !dbg !768

for.inc:                                          ; preds = %for.body
  %and359 = lshr i64 %sub357, 63, !dbg !769
  %conv360 = trunc i64 %and359 to i32, !dbg !770
  %dec = add i32 %sr.2, -1, !dbg !771
  br label %for.cond, !dbg !737, !llvm.loop !772

for.end:                                          ; preds = %for.cond
  %all365 = getelementptr inbounds %union.dwords, %union.dwords* %q, i32 0, i32 0, !dbg !773
  %83 = load i64, i64* %all365, align 8, !dbg !773
  %shl366 = shl i64 %83, 1, !dbg !774
  %conv367 = zext i32 %carry.0 to i64, !dbg !775
  %or368 = or i64 %shl366, %conv367, !dbg !776
  %all369 = getelementptr inbounds %union.dwords, %union.dwords* %q, i32 0, i32 0, !dbg !777
  store i64 %or368, i64* %all369, align 8, !dbg !778
  %tobool370.not = icmp eq i64* %rem, null, !dbg !779
  br i1 %tobool370.not, label %if.end373, label %if.then371, !dbg !779

if.then371:                                       ; preds = %for.end
  %all372 = getelementptr inbounds %union.dwords, %union.dwords* %r, i32 0, i32 0, !dbg !780
  %84 = load i64, i64* %all372, align 8, !dbg !780
  store i64 %84, i64* %rem, align 8, !dbg !781
  br label %if.end373, !dbg !782

if.end373:                                        ; preds = %if.then371, %for.end
  %all374 = getelementptr inbounds %union.dwords, %union.dwords* %q, i32 0, i32 0, !dbg !783
  %85 = load i64, i64* %all374, align 8, !dbg !783
  br label %return, !dbg !784

return:                                           ; preds = %if.end373, %if.end275, %if.end168, %if.then166, %if.end115, %if.end97, %if.end67, %if.end42, %if.end22, %if.end
  %retval.0 = phi i64 [ %conv15, %if.end ], [ 0, %if.end22 ], [ %conv48, %if.end42 ], [ %conv73, %if.end67 ], [ %conv102, %if.end97 ], [ 0, %if.end115 ], [ %85, %if.end373 ], [ %43, %if.then166 ], [ %49, %if.end168 ], [ 0, %if.end275 ], !dbg !736
  ret i64 %retval.0, !dbg !785
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__divmoddi4(i64 noundef %a, i64 noundef %b, i64* noundef %rem) #1 !dbg !786 {
entry:
  %call = call arm_aapcscc i64 @__divdi3(i64 noundef %a, i64 noundef %b) #4, !dbg !787
  %mul = mul nsw i64 %call, %b, !dbg !788
  %sub = sub nsw i64 %a, %mul, !dbg !789
  store i64 %sub, i64* %rem, align 8, !dbg !790
  ret i64 %call, !dbg !791
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__divmodsi4(i32 noundef %a, i32 noundef %b, i32* noundef %rem) #1 !dbg !792 {
entry:
  %call = call arm_aapcscc i32 @__divsi3(i32 noundef %a, i32 noundef %b) #4, !dbg !793
  %mul = mul nsw i32 %call, %b, !dbg !794
  %sub = sub nsw i32 %a, %mul, !dbg !795
  store i32 %sub, i32* %rem, align 4, !dbg !796
  ret i32 %call, !dbg !797
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__divsi3(i32 noundef %a, i32 noundef %b) #1 !dbg !798 {
entry:
  %shr = ashr i32 %a, 31, !dbg !799
  %shr1 = ashr i32 %b, 31, !dbg !800
  %xor = xor i32 %shr, %a, !dbg !801
  %sub = sub nsw i32 %xor, %shr, !dbg !802
  %xor2 = xor i32 %shr1, %b, !dbg !803
  %sub3 = sub nsw i32 %xor2, %shr1, !dbg !804
  %xor4 = xor i32 %shr, %shr1, !dbg !805
  %div = udiv i32 %sub, %sub3, !dbg !806
  %xor5 = xor i32 %div, %xor4, !dbg !807
  %sub6 = sub i32 %xor5, %xor4, !dbg !808
  ret i32 %sub6, !dbg !809
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__ffsdi2(i64 noundef %a) #1 !dbg !810 {
entry:
  %x = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %x, i32 0, i32 0, !dbg !811
  store i64 %a, i64* %all, align 8, !dbg !812
  %low = bitcast %union.dwords* %x to i32*, !dbg !813
  %0 = load i32, i32* %low, align 8, !dbg !813
  %cmp = icmp eq i32 %0, 0, !dbg !814
  br i1 %cmp, label %if.then, label %if.end6, !dbg !815

if.then:                                          ; preds = %entry
  %s1 = bitcast %union.dwords* %x to %struct.DATA*, !dbg !816
  %high = getelementptr inbounds %struct.DATA, %struct.DATA* %s1, i32 0, i32 1, !dbg !817
  %1 = load i32, i32* %high, align 4, !dbg !817
  %cmp2 = icmp eq i32 %1, 0, !dbg !818
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !819

if.then3:                                         ; preds = %if.then
  br label %return, !dbg !820

if.end:                                           ; preds = %if.then
  %s4 = bitcast %union.dwords* %x to %struct.DATA*, !dbg !821
  %high5 = getelementptr inbounds %struct.DATA, %struct.DATA* %s4, i32 0, i32 1, !dbg !822
  %2 = load i32, i32* %high5, align 4, !dbg !822
  %3 = call i32 @llvm.cttz.i32(i32 %2, i1 false), !dbg !823, !range !305
  %add = add nuw nsw i32 %3, 33, !dbg !824
  br label %return, !dbg !825

if.end6:                                          ; preds = %entry
  %low8 = bitcast %union.dwords* %x to i32*, !dbg !826
  %4 = load i32, i32* %low8, align 8, !dbg !826
  %5 = call i32 @llvm.cttz.i32(i32 %4, i1 false), !dbg !827, !range !305
  %add9 = add nuw nsw i32 %5, 1, !dbg !828
  br label %return, !dbg !829

return:                                           ; preds = %if.end6, %if.end, %if.then3
  %retval.0 = phi i32 [ 0, %if.then3 ], [ %add, %if.end ], [ %add9, %if.end6 ], !dbg !830
  ret i32 %retval.0, !dbg !831
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__ffssi2(i32 noundef %a) #1 !dbg !832 {
entry:
  %cmp = icmp eq i32 %a, 0, !dbg !833
  br i1 %cmp, label %if.then, label %if.end, !dbg !834

if.then:                                          ; preds = %entry
  br label %return, !dbg !835

if.end:                                           ; preds = %entry
  %0 = call i32 @llvm.cttz.i32(i32 %a, i1 true), !dbg !836, !range !305
  %add = add nuw nsw i32 %0, 1, !dbg !837
  br label %return, !dbg !838

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %add, %if.end ], !dbg !839
  ret i32 %retval.0, !dbg !840
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__lshrdi3(i64 noundef %a, i32 noundef %b) #1 !dbg !841 {
entry:
  %input = alloca %union.dwords, align 8
  %result = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %input, i32 0, i32 0, !dbg !842
  store i64 %a, i64* %all, align 8, !dbg !843
  %and = and i32 %b, 32, !dbg !844
  %tobool.not = icmp eq i32 %and, 0, !dbg !844
  br i1 %tobool.not, label %if.else, label %if.then, !dbg !845

if.then:                                          ; preds = %entry
  %s = bitcast %union.dwords* %result to %struct.DATA*, !dbg !846
  %high = getelementptr inbounds %struct.DATA, %struct.DATA* %s, i32 0, i32 1, !dbg !847
  store i32 0, i32* %high, align 4, !dbg !848
  %s1 = bitcast %union.dwords* %input to %struct.DATA*, !dbg !849
  %high2 = getelementptr inbounds %struct.DATA, %struct.DATA* %s1, i32 0, i32 1, !dbg !850
  %0 = load i32, i32* %high2, align 4, !dbg !850
  %sub = add nsw i32 %b, -32, !dbg !851
  %shr = lshr i32 %0, %sub, !dbg !852
  %low = bitcast %union.dwords* %result to i32*, !dbg !853
  store i32 %shr, i32* %low, align 8, !dbg !854
  br label %if.end18, !dbg !855

if.else:                                          ; preds = %entry
  %cmp = icmp eq i32 %b, 0, !dbg !856
  br i1 %cmp, label %if.then4, label %if.end, !dbg !857

if.then4:                                         ; preds = %if.else
  br label %return, !dbg !858

if.end:                                           ; preds = %if.else
  %s5 = bitcast %union.dwords* %input to %struct.DATA*, !dbg !859
  %high6 = getelementptr inbounds %struct.DATA, %struct.DATA* %s5, i32 0, i32 1, !dbg !860
  %1 = load i32, i32* %high6, align 4, !dbg !860
  %shr7 = lshr i32 %1, %b, !dbg !861
  %s8 = bitcast %union.dwords* %result to %struct.DATA*, !dbg !862
  %high9 = getelementptr inbounds %struct.DATA, %struct.DATA* %s8, i32 0, i32 1, !dbg !863
  store i32 %shr7, i32* %high9, align 4, !dbg !864
  %s10 = bitcast %union.dwords* %input to %struct.DATA*, !dbg !865
  %high11 = getelementptr inbounds %struct.DATA, %struct.DATA* %s10, i32 0, i32 1, !dbg !866
  %2 = load i32, i32* %high11, align 4, !dbg !866
  %sub12 = sub nsw i32 32, %b, !dbg !867
  %shl = shl i32 %2, %sub12, !dbg !868
  %low14 = bitcast %union.dwords* %input to i32*, !dbg !869
  %3 = load i32, i32* %low14, align 8, !dbg !869
  %shr15 = lshr i32 %3, %b, !dbg !870
  %or = or i32 %shl, %shr15, !dbg !871
  %low17 = bitcast %union.dwords* %result to i32*, !dbg !872
  store i32 %or, i32* %low17, align 8, !dbg !873
  br label %if.end18

if.end18:                                         ; preds = %if.end, %if.then
  %all19 = getelementptr inbounds %union.dwords, %union.dwords* %result, i32 0, i32 0, !dbg !874
  %4 = load i64, i64* %all19, align 8, !dbg !874
  br label %return, !dbg !875

return:                                           ; preds = %if.end18, %if.then4
  %retval.0 = phi i64 [ %4, %if.end18 ], [ %a, %if.then4 ], !dbg !876
  ret i64 %retval.0, !dbg !877
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__moddi3(i64 noundef %a, i64 noundef %b) #1 !dbg !878 {
entry:
  %r = alloca i64, align 8
  %0 = call i64 @llvm.abs.i64(i64 %b, i1 true), !dbg !879
  %shr1 = ashr i64 %a, 63, !dbg !880
  %xor2 = xor i64 %shr1, %a, !dbg !881
  %sub3 = sub nsw i64 %xor2, %shr1, !dbg !882
  %call = call arm_aapcscc i64 @__udivmoddi4(i64 noundef %sub3, i64 noundef %0, i64* noundef nonnull %r) #4, !dbg !883
  %1 = load i64, i64* %r, align 8, !dbg !884
  %xor4 = xor i64 %1, %shr1, !dbg !885
  %sub5 = sub nsw i64 %xor4, %shr1, !dbg !886
  ret i64 %sub5, !dbg !887
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__modsi3(i32 noundef %a, i32 noundef %b) #1 !dbg !888 {
entry:
  %call = call arm_aapcscc i32 @__divsi3(i32 noundef %a, i32 noundef %b) #4, !dbg !889
  %mul = mul nsw i32 %call, %b, !dbg !890
  %sub = sub nsw i32 %a, %mul, !dbg !891
  ret i32 %sub, !dbg !892
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__mulvdi3(i64 noundef %a, i64 noundef %b) #1 !dbg !893 {
entry:
  %cmp = icmp eq i64 %a, -9223372036854775808, !dbg !894
  br i1 %cmp, label %if.then, label %if.end4, !dbg !895

if.then:                                          ; preds = %entry
  %cmp1 = icmp eq i64 %b, 0, !dbg !896
  br i1 %cmp1, label %if.then3, label %lor.lhs.false, !dbg !897

lor.lhs.false:                                    ; preds = %if.then
  %cmp2 = icmp eq i64 %b, 1, !dbg !898
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !899

if.then3:                                         ; preds = %lor.lhs.false, %if.then
  br label %return, !dbg !900

if.end:                                           ; preds = %lor.lhs.false
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i32 noundef 31, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvdi3, i32 0, i32 0)) #5, !dbg !901
  unreachable, !dbg !901

if.end4:                                          ; preds = %entry
  %cmp5 = icmp eq i64 %b, -9223372036854775808, !dbg !902
  br i1 %cmp5, label %if.then6, label %if.end13, !dbg !903

if.then6:                                         ; preds = %if.end4
  %cmp7 = icmp eq i64 %a, 0, !dbg !904
  br i1 %cmp7, label %if.then10, label %lor.lhs.false8, !dbg !905

lor.lhs.false8:                                   ; preds = %if.then6
  %cmp9 = icmp eq i64 %a, 1, !dbg !906
  br i1 %cmp9, label %if.then10, label %if.end12, !dbg !907

if.then10:                                        ; preds = %lor.lhs.false8, %if.then6
  br label %return, !dbg !908

if.end12:                                         ; preds = %lor.lhs.false8
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i32 noundef 37, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvdi3, i32 0, i32 0)) #5, !dbg !909
  unreachable, !dbg !909

if.end13:                                         ; preds = %if.end4
  %shr = ashr i64 %a, 63, !dbg !910
  %xor = xor i64 %shr, %a, !dbg !911
  %sub = sub nsw i64 %xor, %shr, !dbg !912
  %shr14 = ashr i64 %b, 63, !dbg !913
  %xor15 = xor i64 %shr14, %b, !dbg !914
  %sub16 = sub nsw i64 %xor15, %shr14, !dbg !915
  %cmp17 = icmp slt i64 %sub, 2, !dbg !916
  br i1 %cmp17, label %if.then20, label %lor.lhs.false18, !dbg !917

lor.lhs.false18:                                  ; preds = %if.end13
  %cmp19 = icmp slt i64 %sub16, 2, !dbg !918
  br i1 %cmp19, label %if.then20, label %if.end22, !dbg !919

if.then20:                                        ; preds = %lor.lhs.false18, %if.end13
  br label %return, !dbg !920

if.end22:                                         ; preds = %lor.lhs.false18
  %cmp23 = icmp eq i64 %shr, %shr14, !dbg !921
  br i1 %cmp23, label %if.then24, label %if.else, !dbg !922

if.then24:                                        ; preds = %if.end22
  %div = sdiv i64 9223372036854775807, %sub16, !dbg !923
  %cmp25 = icmp sgt i64 %sub, %div, !dbg !924
  br i1 %cmp25, label %if.then26, label %if.end27, !dbg !925

if.then26:                                        ; preds = %if.then24
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i32 noundef 48, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvdi3, i32 0, i32 0)) #5, !dbg !926
  unreachable, !dbg !926

if.end27:                                         ; preds = %if.then24
  br label %if.end33, !dbg !927

if.else:                                          ; preds = %if.end22
  %sub28 = sub nsw i64 0, %sub16, !dbg !928
  %div29 = sdiv i64 -9223372036854775808, %sub28, !dbg !929
  %cmp30 = icmp sgt i64 %sub, %div29, !dbg !930
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !931

if.then31:                                        ; preds = %if.else
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i32 noundef 53, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvdi3, i32 0, i32 0)) #5, !dbg !932
  unreachable, !dbg !932

if.end32:                                         ; preds = %if.else
  br label %if.end33

if.end33:                                         ; preds = %if.end32, %if.end27
  br label %return, !dbg !933

return:                                           ; preds = %if.end33, %if.then20, %if.then10, %if.then3
  %retval.0 = mul nsw i64 %a, %b, !dbg !934
  ret i64 %retval.0, !dbg !935
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__mulvsi3(i32 noundef %a, i32 noundef %b) #1 !dbg !936 {
entry:
  %cmp = icmp eq i32 %a, -2147483648, !dbg !937
  br i1 %cmp, label %if.then, label %if.end4, !dbg !938

if.then:                                          ; preds = %entry
  %cmp1 = icmp eq i32 %b, 0, !dbg !939
  br i1 %cmp1, label %if.then3, label %lor.lhs.false, !dbg !940

lor.lhs.false:                                    ; preds = %if.then
  %cmp2 = icmp eq i32 %b, 1, !dbg !941
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !942

if.then3:                                         ; preds = %lor.lhs.false, %if.then
  br label %return, !dbg !943

if.end:                                           ; preds = %lor.lhs.false
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), i32 noundef 31, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvsi3, i32 0, i32 0)) #5, !dbg !944
  unreachable, !dbg !944

if.end4:                                          ; preds = %entry
  %cmp5 = icmp eq i32 %b, -2147483648, !dbg !945
  br i1 %cmp5, label %if.then6, label %if.end13, !dbg !946

if.then6:                                         ; preds = %if.end4
  %cmp7 = icmp eq i32 %a, 0, !dbg !947
  br i1 %cmp7, label %if.then10, label %lor.lhs.false8, !dbg !948

lor.lhs.false8:                                   ; preds = %if.then6
  %cmp9 = icmp eq i32 %a, 1, !dbg !949
  br i1 %cmp9, label %if.then10, label %if.end12, !dbg !950

if.then10:                                        ; preds = %lor.lhs.false8, %if.then6
  br label %return, !dbg !951

if.end12:                                         ; preds = %lor.lhs.false8
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), i32 noundef 37, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvsi3, i32 0, i32 0)) #5, !dbg !952
  unreachable, !dbg !952

if.end13:                                         ; preds = %if.end4
  %shr = ashr i32 %a, 31, !dbg !953
  %xor = xor i32 %shr, %a, !dbg !954
  %sub = sub nsw i32 %xor, %shr, !dbg !955
  %shr14 = ashr i32 %b, 31, !dbg !956
  %xor15 = xor i32 %shr14, %b, !dbg !957
  %sub16 = sub nsw i32 %xor15, %shr14, !dbg !958
  %cmp17 = icmp slt i32 %sub, 2, !dbg !959
  br i1 %cmp17, label %if.then20, label %lor.lhs.false18, !dbg !960

lor.lhs.false18:                                  ; preds = %if.end13
  %cmp19 = icmp slt i32 %sub16, 2, !dbg !961
  br i1 %cmp19, label %if.then20, label %if.end22, !dbg !962

if.then20:                                        ; preds = %lor.lhs.false18, %if.end13
  br label %return, !dbg !963

if.end22:                                         ; preds = %lor.lhs.false18
  %cmp23 = icmp eq i32 %shr, %shr14, !dbg !964
  br i1 %cmp23, label %if.then24, label %if.else, !dbg !965

if.then24:                                        ; preds = %if.end22
  %div = sdiv i32 2147483647, %sub16, !dbg !966
  %cmp25 = icmp sgt i32 %sub, %div, !dbg !967
  br i1 %cmp25, label %if.then26, label %if.end27, !dbg !968

if.then26:                                        ; preds = %if.then24
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), i32 noundef 48, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvsi3, i32 0, i32 0)) #5, !dbg !969
  unreachable, !dbg !969

if.end27:                                         ; preds = %if.then24
  br label %if.end33, !dbg !970

if.else:                                          ; preds = %if.end22
  %sub28 = sub nsw i32 0, %sub16, !dbg !971
  %div29 = sdiv i32 -2147483648, %sub28, !dbg !972
  %cmp30 = icmp sgt i32 %sub, %div29, !dbg !973
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !974

if.then31:                                        ; preds = %if.else
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), i32 noundef 53, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvsi3, i32 0, i32 0)) #5, !dbg !975
  unreachable, !dbg !975

if.end32:                                         ; preds = %if.else
  br label %if.end33

if.end33:                                         ; preds = %if.end32, %if.end27
  br label %return, !dbg !976

return:                                           ; preds = %if.end33, %if.then20, %if.then10, %if.then3
  %retval.0 = mul nsw i32 %a, %b, !dbg !977
  ret i32 %retval.0, !dbg !978
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__paritydi2(i64 noundef %a) #1 !dbg !979 {
entry:
  %x = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %x, i32 0, i32 0, !dbg !980
  store i64 %a, i64* %all, align 8, !dbg !981
  %s = bitcast %union.dwords* %x to %struct.DATA*, !dbg !982
  %high = getelementptr inbounds %struct.DATA, %struct.DATA* %s, i32 0, i32 1, !dbg !983
  %0 = load i32, i32* %high, align 4, !dbg !983
  %low = bitcast %union.dwords* %x to i32*, !dbg !984
  %1 = load i32, i32* %low, align 8, !dbg !984
  %xor = xor i32 %0, %1, !dbg !985
  %call = call arm_aapcscc i32 @__paritysi2(i32 noundef %xor) #4, !dbg !986
  ret i32 %call, !dbg !987
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__paritysi2(i32 noundef %a) #1 !dbg !988 {
entry:
  %shr = lshr i32 %a, 16, !dbg !989
  %xor = xor i32 %shr, %a, !dbg !990
  %shr1 = lshr i32 %xor, 8, !dbg !991
  %xor2 = xor i32 %xor, %shr1, !dbg !992
  %shr3 = lshr i32 %xor2, 4, !dbg !993
  %xor4 = xor i32 %xor2, %shr3, !dbg !994
  %and = and i32 %xor4, 15, !dbg !995
  %shr5 = lshr i32 27030, %and, !dbg !996
  %and6 = and i32 %shr5, 1, !dbg !997
  ret i32 %and6, !dbg !998
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__popcountdi2(i64 noundef %a) #1 !dbg !999 {
entry:
  %shr = lshr i64 %a, 1, !dbg !1000
  %and = and i64 %shr, 6148914691236517205, !dbg !1001
  %sub = sub i64 %a, %and, !dbg !1002
  %shr1 = lshr i64 %sub, 2, !dbg !1003
  %and2 = and i64 %shr1, 3689348814741910323, !dbg !1004
  %and3 = and i64 %sub, 3689348814741910323, !dbg !1005
  %add = add nuw nsw i64 %and2, %and3, !dbg !1006
  %shr4 = lshr i64 %add, 4, !dbg !1007
  %add5 = add nuw nsw i64 %add, %shr4, !dbg !1008
  %and6 = and i64 %add5, 1085102592571150095, !dbg !1009
  %shr7 = lshr i64 %and6, 32, !dbg !1010
  %add8 = add nuw nsw i64 %and6, %shr7, !dbg !1011
  %conv = trunc i64 %add8 to i32, !dbg !1012
  %shr9 = lshr i32 %conv, 16, !dbg !1013
  %add10 = add nuw nsw i32 %shr9, %conv, !dbg !1014
  %shr11 = lshr i32 %add10, 8, !dbg !1015
  %add12 = add nuw nsw i32 %add10, %shr11, !dbg !1016
  %and13 = and i32 %add12, 127, !dbg !1017
  ret i32 %and13, !dbg !1018
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__popcountsi2(i32 noundef %a) #1 !dbg !1019 {
entry:
  %shr = lshr i32 %a, 1, !dbg !1020
  %and = and i32 %shr, 1431655765, !dbg !1021
  %sub = sub i32 %a, %and, !dbg !1022
  %shr1 = lshr i32 %sub, 2, !dbg !1023
  %and2 = and i32 %shr1, 858993459, !dbg !1024
  %and3 = and i32 %sub, 858993459, !dbg !1025
  %add = add nuw nsw i32 %and2, %and3, !dbg !1026
  %shr4 = lshr i32 %add, 4, !dbg !1027
  %add5 = add nuw nsw i32 %add, %shr4, !dbg !1028
  %and6 = and i32 %add5, 252645135, !dbg !1029
  %shr7 = lshr i32 %and6, 16, !dbg !1030
  %add8 = add nuw nsw i32 %and6, %shr7, !dbg !1031
  %shr9 = lshr i32 %add8, 8, !dbg !1032
  %add10 = add nuw nsw i32 %add8, %shr9, !dbg !1033
  %and11 = and i32 %add10, 63, !dbg !1034
  ret i32 %and11, !dbg !1035
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__subvdi3(i64 noundef %a, i64 noundef %b) #1 !dbg !1036 {
entry:
  %sub = sub i64 %a, %b, !dbg !1037
  %cmp = icmp sgt i64 %b, -1, !dbg !1038
  br i1 %cmp, label %if.then, label %if.else, !dbg !1039

if.then:                                          ; preds = %entry
  %cmp1 = icmp sgt i64 %sub, %a, !dbg !1040
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !1041

if.then2:                                         ; preds = %if.then
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i32 0, i32 0), i32 noundef 28, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__subvdi3, i32 0, i32 0)) #5, !dbg !1042
  unreachable, !dbg !1042

if.end:                                           ; preds = %if.then
  br label %if.end6, !dbg !1043

if.else:                                          ; preds = %entry
  %cmp3.not = icmp sgt i64 %sub, %a, !dbg !1044
  br i1 %cmp3.not, label %if.end5, label %if.then4, !dbg !1045

if.then4:                                         ; preds = %if.else
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i32 0, i32 0), i32 noundef 33, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__subvdi3, i32 0, i32 0)) #5, !dbg !1046
  unreachable, !dbg !1046

if.end5:                                          ; preds = %if.else
  br label %if.end6

if.end6:                                          ; preds = %if.end5, %if.end
  ret i64 %sub, !dbg !1047
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__subvsi3(i32 noundef %a, i32 noundef %b) #1 !dbg !1048 {
entry:
  %sub = sub i32 %a, %b, !dbg !1049
  %cmp = icmp sgt i32 %b, -1, !dbg !1050
  br i1 %cmp, label %if.then, label %if.else, !dbg !1051

if.then:                                          ; preds = %entry
  %cmp1 = icmp sgt i32 %sub, %a, !dbg !1052
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !1053

if.then2:                                         ; preds = %if.then
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i32 0, i32 0), i32 noundef 28, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__subvsi3, i32 0, i32 0)) #5, !dbg !1054
  unreachable, !dbg !1054

if.end:                                           ; preds = %if.then
  br label %if.end6, !dbg !1055

if.else:                                          ; preds = %entry
  %cmp3.not = icmp sgt i32 %sub, %a, !dbg !1056
  br i1 %cmp3.not, label %if.end5, label %if.then4, !dbg !1057

if.then4:                                         ; preds = %if.else
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i32 0, i32 0), i32 noundef 33, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__subvsi3, i32 0, i32 0)) #5, !dbg !1058
  unreachable, !dbg !1058

if.end5:                                          ; preds = %if.else
  br label %if.end6

if.end6:                                          ; preds = %if.end5, %if.end
  ret i32 %sub, !dbg !1059
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__ucmpdi2(i64 noundef %a, i64 noundef %b) #1 !dbg !1060 {
entry:
  %x = alloca %union.dwords, align 8
  %y = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %x, i32 0, i32 0, !dbg !1061
  store i64 %a, i64* %all, align 8, !dbg !1062
  %all1 = getelementptr inbounds %union.dwords, %union.dwords* %y, i32 0, i32 0, !dbg !1063
  store i64 %b, i64* %all1, align 8, !dbg !1064
  %s = bitcast %union.dwords* %x to %struct.DATA*, !dbg !1065
  %high = getelementptr inbounds %struct.DATA, %struct.DATA* %s, i32 0, i32 1, !dbg !1066
  %0 = load i32, i32* %high, align 4, !dbg !1066
  %s2 = bitcast %union.dwords* %y to %struct.DATA*, !dbg !1067
  %high3 = getelementptr inbounds %struct.DATA, %struct.DATA* %s2, i32 0, i32 1, !dbg !1068
  %1 = load i32, i32* %high3, align 4, !dbg !1068
  %cmp = icmp ult i32 %0, %1, !dbg !1069
  br i1 %cmp, label %if.then, label %if.end, !dbg !1070

if.then:                                          ; preds = %entry
  br label %return, !dbg !1071

if.end:                                           ; preds = %entry
  %s4 = bitcast %union.dwords* %x to %struct.DATA*, !dbg !1072
  %high5 = getelementptr inbounds %struct.DATA, %struct.DATA* %s4, i32 0, i32 1, !dbg !1073
  %2 = load i32, i32* %high5, align 4, !dbg !1073
  %s6 = bitcast %union.dwords* %y to %struct.DATA*, !dbg !1074
  %high7 = getelementptr inbounds %struct.DATA, %struct.DATA* %s6, i32 0, i32 1, !dbg !1075
  %3 = load i32, i32* %high7, align 4, !dbg !1075
  %cmp8 = icmp ugt i32 %2, %3, !dbg !1076
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !1077

if.then9:                                         ; preds = %if.end
  br label %return, !dbg !1078

if.end10:                                         ; preds = %if.end
  %low = bitcast %union.dwords* %x to i32*, !dbg !1079
  %4 = load i32, i32* %low, align 8, !dbg !1079
  %low13 = bitcast %union.dwords* %y to i32*, !dbg !1080
  %5 = load i32, i32* %low13, align 8, !dbg !1080
  %cmp14 = icmp ult i32 %4, %5, !dbg !1081
  br i1 %cmp14, label %if.then15, label %if.end16, !dbg !1082

if.then15:                                        ; preds = %if.end10
  br label %return, !dbg !1083

if.end16:                                         ; preds = %if.end10
  %low18 = bitcast %union.dwords* %x to i32*, !dbg !1084
  %6 = load i32, i32* %low18, align 8, !dbg !1084
  %low20 = bitcast %union.dwords* %y to i32*, !dbg !1085
  %7 = load i32, i32* %low20, align 8, !dbg !1085
  %cmp21 = icmp ugt i32 %6, %7, !dbg !1086
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !1087

if.then22:                                        ; preds = %if.end16
  br label %return, !dbg !1088

if.end23:                                         ; preds = %if.end16
  br label %return, !dbg !1089

return:                                           ; preds = %if.end23, %if.then22, %if.then15, %if.then9, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 2, %if.then9 ], [ 0, %if.then15 ], [ 2, %if.then22 ], [ 1, %if.end23 ], !dbg !1090
  ret i32 %retval.0, !dbg !1091
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__aeabi_ulcmp(i64 noundef %a, i64 noundef %b) #1 !dbg !1092 {
entry:
  %call = call arm_aapcscc i32 @__ucmpdi2(i64 noundef %a, i64 noundef %b) #4, !dbg !1093
  %sub = add nsw i32 %call, -1, !dbg !1094
  ret i32 %sub, !dbg !1095
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__udivdi3(i64 noundef %a, i64 noundef %b) #1 !dbg !1096 {
entry:
  %call = call arm_aapcscc i64 @__udivmoddi4(i64 noundef %a, i64 noundef %b, i64* noundef null) #4, !dbg !1097
  ret i64 %call, !dbg !1098
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__udivmodsi4(i32 noundef %a, i32 noundef %b, i32* noundef %rem) #1 !dbg !1099 {
entry:
  %call = call arm_aapcscc i32 @__udivsi3(i32 noundef %a, i32 noundef %b) #4, !dbg !1100
  %mul = mul i32 %call, %b, !dbg !1101
  %sub = sub i32 %a, %mul, !dbg !1102
  store i32 %sub, i32* %rem, align 4, !dbg !1103
  ret i32 %call, !dbg !1104
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__udivsi3(i32 noundef %n, i32 noundef %d) #1 !dbg !1105 {
entry:
  %cmp = icmp eq i32 %d, 0, !dbg !1106
  br i1 %cmp, label %if.then, label %if.end, !dbg !1107

if.then:                                          ; preds = %entry
  br label %return, !dbg !1108

if.end:                                           ; preds = %entry
  %cmp1 = icmp eq i32 %n, 0, !dbg !1109
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !1110

if.then2:                                         ; preds = %if.end
  br label %return, !dbg !1111

if.end3:                                          ; preds = %if.end
  %0 = call i32 @llvm.ctlz.i32(i32 %d, i1 true), !dbg !1112, !range !305
  %1 = call i32 @llvm.ctlz.i32(i32 %n, i1 true), !dbg !1113, !range !305
  %sub = sub nsw i32 %0, %1, !dbg !1114
  %cmp4 = icmp ugt i32 %sub, 31, !dbg !1115
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !1116

if.then5:                                         ; preds = %if.end3
  br label %return, !dbg !1117

if.end6:                                          ; preds = %if.end3
  %cmp7 = icmp eq i32 %sub, 31, !dbg !1118
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !1119

if.then8:                                         ; preds = %if.end6
  br label %return, !dbg !1120

if.end9:                                          ; preds = %if.end6
  %inc = add nsw i32 %sub, 1, !dbg !1121
  %sub10 = sub nsw i32 31, %sub, !dbg !1122
  %shl = shl i32 %n, %sub10, !dbg !1123
  %shr = lshr i32 %n, %inc, !dbg !1124
  br label %for.cond, !dbg !1125

for.cond:                                         ; preds = %for.inc, %if.end9
  %q.0 = phi i32 [ %shl, %if.end9 ], [ %or15, %for.inc ], !dbg !1126
  %r.0 = phi i32 [ %shr, %if.end9 ], [ %sub20, %for.inc ], !dbg !1126
  %sr.0 = phi i32 [ %inc, %if.end9 ], [ %dec, %for.inc ], !dbg !1126
  %carry.0 = phi i32 [ 0, %if.end9 ], [ %and, %for.inc ], !dbg !1126
  %cmp11.not = icmp eq i32 %sr.0, 0, !dbg !1127
  br i1 %cmp11.not, label %for.end, label %for.body, !dbg !1125

for.body:                                         ; preds = %for.cond
  %or = call i32 @llvm.fshl.i32(i32 %r.0, i32 %q.0, i32 1), !dbg !1128
  %2 = xor i32 %or, -1, !dbg !1129
  %sub17 = add i32 %2, %d, !dbg !1129
  br label %for.inc, !dbg !1130

for.inc:                                          ; preds = %for.body
  %isneg = icmp slt i32 %sub17, 0, !dbg !1131
  %and19 = select i1 %isneg, i32 %d, i32 0, !dbg !1131
  %sub20 = sub i32 %or, %and19, !dbg !1132
  %and = lshr i32 %sub17, 31, !dbg !1133
  %shl14 = shl i32 %q.0, 1, !dbg !1134
  %or15 = or i32 %shl14, %carry.0, !dbg !1135
  %dec = add i32 %sr.0, -1, !dbg !1136
  br label %for.cond, !dbg !1125, !llvm.loop !1137

for.end:                                          ; preds = %for.cond
  %shl21 = shl i32 %q.0, 1, !dbg !1138
  %or22 = or i32 %shl21, %carry.0, !dbg !1139
  br label %return, !dbg !1140

return:                                           ; preds = %for.end, %if.then8, %if.then5, %if.then2, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then2 ], [ 0, %if.then5 ], [ %n, %if.then8 ], [ %or22, %for.end ], !dbg !1126
  ret i32 %retval.0, !dbg !1141
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__umoddi3(i64 noundef %a, i64 noundef %b) #1 !dbg !1142 {
entry:
  %r = alloca i64, align 8
  %call = call arm_aapcscc i64 @__udivmoddi4(i64 noundef %a, i64 noundef %b, i64* noundef nonnull %r) #4, !dbg !1143
  %0 = load i64, i64* %r, align 8, !dbg !1144
  ret i64 %0, !dbg !1145
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__umodsi3(i32 noundef %a, i32 noundef %b) #1 !dbg !1146 {
entry:
  %call = call arm_aapcscc i32 @__udivsi3(i32 noundef %a, i32 noundef %b) #4, !dbg !1147
  %mul = mul i32 %call, %b, !dbg !1148
  %sub = sub i32 %a, %mul, !dbg !1149
  ret i32 %sub, !dbg !1150
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i8* @memcpy(i8* noundef %destination, i8* noundef %source, i32 noundef %num) #1 !dbg !1151 {
entry:
  br label %for.cond, !dbg !1152

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !dbg !1153
  %exitcond.not = icmp eq i32 %i.0, %num, !dbg !1154
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !1155

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds i8, i8* %source, i32 %i.0, !dbg !1156
  %0 = load i8, i8* %arrayidx, align 1, !dbg !1156
  %arrayidx1 = getelementptr inbounds i8, i8* %destination, i32 %i.0, !dbg !1157
  store i8 %0, i8* %arrayidx1, align 1, !dbg !1158
  br label %for.inc, !dbg !1159

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.0, 1, !dbg !1160
  br label %for.cond, !dbg !1155, !llvm.loop !1161

for.end:                                          ; preds = %for.cond
  ret i8* undef, !dbg !1162
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i8* @memset(i8* noundef %ptr, i32 noundef %value, i32 noundef %num) #1 !dbg !1163 {
entry:
  br label %for.cond, !dbg !1164

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !dbg !1165
  %exitcond.not = icmp eq i32 %i.0, %num, !dbg !1166
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !1167

for.body:                                         ; preds = %for.cond
  %conv = trunc i32 %value to i8, !dbg !1168
  %arrayidx = getelementptr inbounds i8, i8* %ptr, i32 %i.0, !dbg !1169
  store i8 %conv, i8* %arrayidx, align 1, !dbg !1170
  br label %for.inc, !dbg !1171

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.0, 1, !dbg !1172
  br label %for.cond, !dbg !1167, !llvm.loop !1173

for.end:                                          ; preds = %for.cond
  ret i8* %ptr, !dbg !1174
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

!llvm.dbg.cu = !{!2, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124}
!llvm.ident = !{!126, !127, !127, !127, !127, !127, !127, !127, !127, !127, !127, !127, !127, !127, !127, !127, !127, !127, !127, !127, !127, !127, !127, !127, !127, !127, !127, !127, !127, !127, !127, !127, !127, !127, !127, !127, !127, !127, !127, !127, !127, !127, !127, !127, !127, !127, !127, !127, !127, !127, !127, !127, !127, !127, !127, !127, !127}
!llvm.module.flags = !{!128, !129, !130, !131, !132, !133, !134, !135, !136}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "data", scope: !2, file: !5, line: 52, type: !6, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 14.0.6 (git@github.com:RTS-SYSU/LLVM-TA.git b7f9c4ccdebc6c37532ddd772889e5f0ff989c79)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !4, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/workspaces/llvmta/testcases/singletest/bs/bs.c", directory: "/workspaces/llvmta/testcases/singletest/binarysearch")
!4 = !{!0}
!5 = !DIFile(filename: "bs/bs.c", directory: "/workspaces/llvmta/testcases/singletest")
!6 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 960, elements: !12)
!7 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "DATA", file: !5, line: 43, size: 64, elements: !8)
!8 = !{!9, !11}
!9 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !7, file: !5, line: 44, baseType: !10, size: 32)
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !7, file: !5, line: 45, baseType: !10, size: 32, offset: 32)
!12 = !{!13}
!13 = !DISubrange(count: 15)
!14 = distinct !DICompileUnit(language: DW_LANG_C99, file: !15, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!15 = !DIFile(filename: "../absvdi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "f0fa545ed84eab29322431dd903e1bd2")
!16 = distinct !DICompileUnit(language: DW_LANG_C99, file: !17, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!17 = !DIFile(filename: "../absvsi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "4c623fefc2c7ed3929c6e73514b667d1")
!18 = distinct !DICompileUnit(language: DW_LANG_C99, file: !19, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!19 = !DIFile(filename: "../absvti2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "37a4bc629baa89b5b7c1570be0d03e1f")
!20 = distinct !DICompileUnit(language: DW_LANG_C99, file: !21, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!21 = !DIFile(filename: "../addvdi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "aa240ee8ce7c28b2c3bcec10a7603d3f")
!22 = distinct !DICompileUnit(language: DW_LANG_C99, file: !23, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!23 = !DIFile(filename: "../addvsi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "6cd4d40cc00928f1aaf6f29e299078cd")
!24 = distinct !DICompileUnit(language: DW_LANG_C99, file: !25, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!25 = !DIFile(filename: "../addvti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "0db25cee24f6026e13fc556e48cb2a4f")
!26 = distinct !DICompileUnit(language: DW_LANG_C99, file: !27, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!27 = !DIFile(filename: "../ashldi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "ae5236ddcefaf3e5efc4feba69d334b1")
!28 = distinct !DICompileUnit(language: DW_LANG_C99, file: !29, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!29 = !DIFile(filename: "../ashlti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "040402442e4641b723a41224f90bb33c")
!30 = distinct !DICompileUnit(language: DW_LANG_C99, file: !31, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!31 = !DIFile(filename: "../ashrdi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "df60b7a82095e7d7b5c11e1095a5679a")
!32 = distinct !DICompileUnit(language: DW_LANG_C99, file: !33, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!33 = !DIFile(filename: "../ashrti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "d09af17b4c5b806431a14ef018da30a2")
!34 = distinct !DICompileUnit(language: DW_LANG_C99, file: !35, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!35 = !DIFile(filename: "../clzdi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "901c40e0319a50689080965b20695c3e")
!36 = distinct !DICompileUnit(language: DW_LANG_C99, file: !37, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!37 = !DIFile(filename: "../clzsi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "9b0156c55102d3143e17bdf85bafbc30")
!38 = distinct !DICompileUnit(language: DW_LANG_C99, file: !39, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!39 = !DIFile(filename: "../clzti2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "6289c95e51f48974308ae457c947fa76")
!40 = distinct !DICompileUnit(language: DW_LANG_C99, file: !41, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!41 = !DIFile(filename: "../cmpdi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "79ec8a4b383c8374d228cd0869637319")
!42 = distinct !DICompileUnit(language: DW_LANG_C99, file: !43, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!43 = !DIFile(filename: "../cmpti2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "8b9214d8b14681920bdf2cff2acab581")
!44 = distinct !DICompileUnit(language: DW_LANG_C99, file: !45, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!45 = !DIFile(filename: "../ctzdi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "0415a3f61808ca646548bc24b48a844a")
!46 = distinct !DICompileUnit(language: DW_LANG_C99, file: !47, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!47 = !DIFile(filename: "../ctzsi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "0372a2c6647eddaa73c0b61d8d03c3b1")
!48 = distinct !DICompileUnit(language: DW_LANG_C99, file: !49, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!49 = !DIFile(filename: "../ctzti2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "13fd6233b75667ee3310f19e92769490")
!50 = distinct !DICompileUnit(language: DW_LANG_C99, file: !51, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!51 = !DIFile(filename: "../divdi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "281227589e0794a81d7211e4ee4a402c")
!52 = distinct !DICompileUnit(language: DW_LANG_C99, file: !53, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!53 = !DIFile(filename: "../divmoddi4.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "bd72633dccf26f3dd8ee74bf04f7fdac")
!54 = distinct !DICompileUnit(language: DW_LANG_C99, file: !55, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!55 = !DIFile(filename: "../divmodsi4.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "0cf7caca427f8ea020b675e27b5985b5")
!56 = distinct !DICompileUnit(language: DW_LANG_C99, file: !57, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!57 = !DIFile(filename: "../divsi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "7845e3e46788425cf69d463f3cfe00e5")
!58 = distinct !DICompileUnit(language: DW_LANG_C99, file: !59, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!59 = !DIFile(filename: "../divti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "6f197084470906a806c88d3dd279e870")
!60 = distinct !DICompileUnit(language: DW_LANG_C99, file: !61, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!61 = !DIFile(filename: "../ffsdi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "4b800e1cad35a0bc99971441032171a3")
!62 = distinct !DICompileUnit(language: DW_LANG_C99, file: !63, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!63 = !DIFile(filename: "../ffssi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "182169d6765bddc2bf1b03cc7a4f47cb")
!64 = distinct !DICompileUnit(language: DW_LANG_C99, file: !65, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!65 = !DIFile(filename: "../ffsti2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "828ab085c50c22a6e163e289ad75e357")
!66 = distinct !DICompileUnit(language: DW_LANG_C99, file: !67, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!67 = !DIFile(filename: "../int_util.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "7ceb1d4e85bede509d8e6a0974078bc9")
!68 = distinct !DICompileUnit(language: DW_LANG_C99, file: !69, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!69 = !DIFile(filename: "../lshrdi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "c456e45323b3205c3b32d82b51570771")
!70 = distinct !DICompileUnit(language: DW_LANG_C99, file: !71, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!71 = !DIFile(filename: "../lshrti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "a0deefe7ea6369a844ff00cfd3adca3e")
!72 = distinct !DICompileUnit(language: DW_LANG_C99, file: !73, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!73 = !DIFile(filename: "../moddi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "76733914157a978303cbe3d6f6d1c647")
!74 = distinct !DICompileUnit(language: DW_LANG_C99, file: !75, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!75 = !DIFile(filename: "../modsi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "ada583aff17540d2228ce14dc879fdc8")
!76 = distinct !DICompileUnit(language: DW_LANG_C99, file: !77, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!77 = !DIFile(filename: "../modti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "7d8393bf5eb9f0ba6dd3cb5fd0d18b1c")
!78 = distinct !DICompileUnit(language: DW_LANG_C99, file: !79, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!79 = !DIFile(filename: "../mulvdi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "bb6aa1440e4e37fe94db90279d27db10")
!80 = distinct !DICompileUnit(language: DW_LANG_C99, file: !81, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!81 = !DIFile(filename: "../mulvsi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "32cd947949fac3c039bd0839cd5d7c78")
!82 = distinct !DICompileUnit(language: DW_LANG_C99, file: !83, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!83 = !DIFile(filename: "../mulvti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "600972d5762784972446ff2942320803")
!84 = distinct !DICompileUnit(language: DW_LANG_C99, file: !85, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!85 = !DIFile(filename: "../paritydi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "bd9549e31bcebf1c2265048ea6f18a77")
!86 = distinct !DICompileUnit(language: DW_LANG_C99, file: !87, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!87 = !DIFile(filename: "../paritysi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "235e89e1ac3c55fb43879550247ea25b")
!88 = distinct !DICompileUnit(language: DW_LANG_C99, file: !89, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!89 = !DIFile(filename: "../parityti2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "731d722977e9d8c0cd1987cb790d412a")
!90 = distinct !DICompileUnit(language: DW_LANG_C99, file: !91, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!91 = !DIFile(filename: "../popcountdi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "05f001da7fc478c773612fd707769c2a")
!92 = distinct !DICompileUnit(language: DW_LANG_C99, file: !93, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!93 = !DIFile(filename: "../popcountsi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "f9ebedb2d8810ee5a54fff38e1b09d64")
!94 = distinct !DICompileUnit(language: DW_LANG_C99, file: !95, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!95 = !DIFile(filename: "../popcountti2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "cc3baf5a1f58193aeafb2e81bae65208")
!96 = distinct !DICompileUnit(language: DW_LANG_C99, file: !97, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!97 = !DIFile(filename: "../subvdi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "5774ab7a3a8e168deb55531047d6a873")
!98 = distinct !DICompileUnit(language: DW_LANG_C99, file: !99, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!99 = !DIFile(filename: "../subvsi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "c9558a85e8fabce36f42a29933bd87e9")
!100 = distinct !DICompileUnit(language: DW_LANG_C99, file: !101, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!101 = !DIFile(filename: "../subvti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "ae43c388730e95c5ad9b20d37f73fd82")
!102 = distinct !DICompileUnit(language: DW_LANG_C99, file: !103, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!103 = !DIFile(filename: "../ucmpdi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "79f778ef54939446d175079e19d07756")
!104 = distinct !DICompileUnit(language: DW_LANG_C99, file: !105, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!105 = !DIFile(filename: "../ucmpti2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "d30b659e82f7851c826242cd1de6f293")
!106 = distinct !DICompileUnit(language: DW_LANG_C99, file: !107, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!107 = !DIFile(filename: "../udivdi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "580a28989090b62fc3d261faa6e31a6b")
!108 = distinct !DICompileUnit(language: DW_LANG_C99, file: !109, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!109 = !DIFile(filename: "../udivmoddi4.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "eca4b147be989cda91330ba5b56ed879")
!110 = distinct !DICompileUnit(language: DW_LANG_C99, file: !111, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!111 = !DIFile(filename: "../udivmodsi4.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "c0341684574a20dbcfbe4df0ab9f8538")
!112 = distinct !DICompileUnit(language: DW_LANG_C99, file: !113, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!113 = !DIFile(filename: "../udivmodti4.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "876858111b283249167fa6a71cc4682f")
!114 = distinct !DICompileUnit(language: DW_LANG_C99, file: !115, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!115 = !DIFile(filename: "../udivsi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "b74987a973aededf95faab34db33f58a")
!116 = distinct !DICompileUnit(language: DW_LANG_C99, file: !117, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!117 = !DIFile(filename: "../udivti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "c9304f2e77edc1023290a4f40073f6f7")
!118 = distinct !DICompileUnit(language: DW_LANG_C99, file: !119, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!119 = !DIFile(filename: "../umoddi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "1a99e635325595a81040fb97dab88295")
!120 = distinct !DICompileUnit(language: DW_LANG_C99, file: !121, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!121 = !DIFile(filename: "../umodsi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "ce74ac33cd2bd170a84f43824cae8961")
!122 = distinct !DICompileUnit(language: DW_LANG_C99, file: !123, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!123 = !DIFile(filename: "../umodti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "f900660feeec718da080f01b23c74384")
!124 = distinct !DICompileUnit(language: DW_LANG_C99, file: !125, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!125 = !DIFile(filename: "../memory.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsstd/buildarmv4", checksumkind: CSK_MD5, checksum: "fa9c872a007b30a353222cd13b38538d")
!126 = !{!"clang version 14.0.6 (git@github.com:RTS-SYSU/LLVM-TA.git b7f9c4ccdebc6c37532ddd772889e5f0ff989c79)"}
!127 = !{!"clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)"}
!128 = !{i32 7, !"Dwarf Version", i32 5}
!129 = !{i32 2, !"Debug Info Version", i32 3}
!130 = !{i32 1, !"wchar_size", i32 4}
!131 = !{i32 1, !"min_enum_size", i32 4}
!132 = !{i32 1, !"branch-target-enforcement", i32 0}
!133 = !{i32 1, !"sign-return-address", i32 0}
!134 = !{i32 1, !"sign-return-address-all", i32 0}
!135 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!136 = !{i32 7, !"frame-pointer", i32 2}
!137 = distinct !DISubprogram(name: "main", scope: !5, file: !5, line: 58, type: !138, scopeLine: 58, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !140)
!138 = !DISubroutineType(types: !139)
!139 = !{!10}
!140 = !{}
!141 = !DILocation(line: 58, column: 21, scope: !137)
!142 = !DILocation(line: 58, column: 14, scope: !137)
!143 = distinct !DISubprogram(name: "binary_search", scope: !5, file: !5, line: 60, type: !144, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !140)
!144 = !DISubroutineType(types: !145)
!145 = !{!10, !10}
!146 = !DILocalVariable(name: "x", arg: 1, scope: !143, file: !5, line: 60, type: !10)
!147 = !DILocation(line: 0, scope: !143)
!148 = !DILocalVariable(name: "low", scope: !143, file: !5, line: 61, type: !10)
!149 = !DILocalVariable(name: "up", scope: !143, file: !5, line: 61, type: !10)
!150 = !DILocalVariable(name: "fvalue", scope: !143, file: !5, line: 61, type: !10)
!151 = !DILocation(line: 66, column: 3, scope: !143)
!152 = !DILocation(line: 63, column: 7, scope: !143)
!153 = !DILocation(line: 66, column: 14, scope: !143)
!154 = !DILocation(line: 67, column: 16, scope: !155)
!155 = distinct !DILexicalBlock(scope: !143, file: !5, line: 66, column: 21)
!156 = !DILocation(line: 67, column: 22, scope: !155)
!157 = !DILocalVariable(name: "mid", scope: !143, file: !5, line: 61, type: !10)
!158 = !DILocation(line: 68, column: 19, scope: !159)
!159 = distinct !DILexicalBlock(scope: !155, file: !5, line: 68, column: 9)
!160 = !DILocation(line: 68, column: 23, scope: !159)
!161 = !DILocation(line: 68, column: 9, scope: !155)
!162 = !DILocation(line: 69, column: 16, scope: !163)
!163 = distinct !DILexicalBlock(scope: !159, file: !5, line: 68, column: 29)
!164 = !DILocation(line: 70, column: 26, scope: !163)
!165 = !DILocation(line: 74, column: 5, scope: !163)
!166 = !DILocation(line: 75, column: 21, scope: !167)
!167 = distinct !DILexicalBlock(scope: !159, file: !5, line: 75, column: 11)
!168 = !DILocation(line: 75, column: 25, scope: !167)
!169 = !DILocation(line: 75, column: 11, scope: !159)
!170 = !DILocation(line: 76, column: 18, scope: !171)
!171 = distinct !DILexicalBlock(scope: !167, file: !5, line: 75, column: 30)
!172 = !DILocation(line: 80, column: 7, scope: !171)
!173 = !DILocation(line: 81, column: 19, scope: !174)
!174 = distinct !DILexicalBlock(scope: !167, file: !5, line: 80, column: 14)
!175 = !DILocation(line: 0, scope: !159)
!176 = distinct !{!176, !151, !177, !178}
!177 = !DILocation(line: 89, column: 3, scope: !143)
!178 = !{!"llvm.loop.mustprogress"}
!179 = !DILocation(line: 93, column: 3, scope: !143)
!180 = distinct !DISubprogram(name: "__absvdi2", scope: !15, file: !15, line: 22, type: !181, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !14, retainedNodes: !140)
!181 = !DISubroutineType(types: !140)
!182 = !DILocation(line: 25, column: 11, scope: !180)
!183 = !DILocation(line: 25, column: 9, scope: !180)
!184 = !DILocation(line: 26, column: 9, scope: !180)
!185 = !DILocation(line: 28, column: 20, scope: !180)
!186 = !DILocation(line: 28, column: 5, scope: !180)
!187 = distinct !DISubprogram(name: "compilerrt_abort_impl", scope: !67, file: !67, line: 57, type: !181, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !140)
!188 = !DILocation(line: 59, column: 1, scope: !187)
!189 = distinct !DISubprogram(name: "__absvsi2", scope: !17, file: !17, line: 22, type: !181, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !16, retainedNodes: !140)
!190 = !DILocation(line: 25, column: 11, scope: !189)
!191 = !DILocation(line: 25, column: 9, scope: !189)
!192 = !DILocation(line: 26, column: 9, scope: !189)
!193 = !DILocation(line: 28, column: 20, scope: !189)
!194 = !DILocation(line: 28, column: 5, scope: !189)
!195 = distinct !DISubprogram(name: "__addvdi3", scope: !21, file: !21, line: 22, type: !181, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !20, retainedNodes: !140)
!196 = !DILocation(line: 24, column: 27, scope: !195)
!197 = !DILocation(line: 25, column: 11, scope: !195)
!198 = !DILocation(line: 25, column: 9, scope: !195)
!199 = !DILocation(line: 27, column: 15, scope: !195)
!200 = !DILocation(line: 27, column: 13, scope: !195)
!201 = !DILocation(line: 28, column: 13, scope: !195)
!202 = !DILocation(line: 29, column: 5, scope: !195)
!203 = !DILocation(line: 32, column: 15, scope: !195)
!204 = !DILocation(line: 32, column: 13, scope: !195)
!205 = !DILocation(line: 33, column: 13, scope: !195)
!206 = !DILocation(line: 35, column: 5, scope: !195)
!207 = distinct !DISubprogram(name: "__addvsi3", scope: !23, file: !23, line: 22, type: !181, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !22, retainedNodes: !140)
!208 = !DILocation(line: 24, column: 27, scope: !207)
!209 = !DILocation(line: 25, column: 11, scope: !207)
!210 = !DILocation(line: 25, column: 9, scope: !207)
!211 = !DILocation(line: 27, column: 15, scope: !207)
!212 = !DILocation(line: 27, column: 13, scope: !207)
!213 = !DILocation(line: 28, column: 13, scope: !207)
!214 = !DILocation(line: 29, column: 5, scope: !207)
!215 = !DILocation(line: 32, column: 15, scope: !207)
!216 = !DILocation(line: 32, column: 13, scope: !207)
!217 = !DILocation(line: 33, column: 13, scope: !207)
!218 = !DILocation(line: 35, column: 5, scope: !207)
!219 = distinct !DISubprogram(name: "__ashldi3", scope: !27, file: !27, line: 24, type: !181, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !26, retainedNodes: !140)
!220 = !DILocation(line: 29, column: 11, scope: !219)
!221 = !DILocation(line: 29, column: 15, scope: !219)
!222 = !DILocation(line: 30, column: 11, scope: !219)
!223 = !DILocation(line: 30, column: 9, scope: !219)
!224 = !DILocation(line: 32, column: 18, scope: !219)
!225 = !DILocation(line: 32, column: 22, scope: !219)
!226 = !DILocation(line: 33, column: 33, scope: !219)
!227 = !DILocation(line: 33, column: 43, scope: !219)
!228 = !DILocation(line: 33, column: 37, scope: !219)
!229 = !DILocation(line: 33, column: 16, scope: !219)
!230 = !DILocation(line: 33, column: 18, scope: !219)
!231 = !DILocation(line: 33, column: 23, scope: !219)
!232 = !DILocation(line: 34, column: 5, scope: !219)
!233 = !DILocation(line: 37, column: 15, scope: !219)
!234 = !DILocation(line: 37, column: 13, scope: !219)
!235 = !DILocation(line: 38, column: 13, scope: !219)
!236 = !DILocation(line: 39, column: 33, scope: !219)
!237 = !DILocation(line: 39, column: 37, scope: !219)
!238 = !DILocation(line: 39, column: 18, scope: !219)
!239 = !DILocation(line: 39, column: 23, scope: !219)
!240 = !DILocation(line: 40, column: 32, scope: !219)
!241 = !DILocation(line: 40, column: 34, scope: !219)
!242 = !DILocation(line: 40, column: 39, scope: !219)
!243 = !DILocation(line: 40, column: 56, scope: !219)
!244 = !DILocation(line: 40, column: 77, scope: !219)
!245 = !DILocation(line: 40, column: 60, scope: !219)
!246 = !DILocation(line: 40, column: 45, scope: !219)
!247 = !DILocation(line: 40, column: 16, scope: !219)
!248 = !DILocation(line: 40, column: 18, scope: !219)
!249 = !DILocation(line: 40, column: 23, scope: !219)
!250 = !DILocation(line: 42, column: 19, scope: !219)
!251 = !DILocation(line: 42, column: 5, scope: !219)
!252 = !DILocation(line: 0, scope: !219)
!253 = !DILocation(line: 43, column: 1, scope: !219)
!254 = distinct !DISubprogram(name: "__ashrdi3", scope: !31, file: !31, line: 24, type: !181, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !30, retainedNodes: !140)
!255 = !DILocation(line: 29, column: 11, scope: !254)
!256 = !DILocation(line: 29, column: 15, scope: !254)
!257 = !DILocation(line: 30, column: 11, scope: !254)
!258 = !DILocation(line: 30, column: 9, scope: !254)
!259 = !DILocation(line: 33, column: 31, scope: !254)
!260 = !DILocation(line: 33, column: 33, scope: !254)
!261 = !DILocation(line: 33, column: 38, scope: !254)
!262 = !DILocation(line: 33, column: 16, scope: !254)
!263 = !DILocation(line: 33, column: 18, scope: !254)
!264 = !DILocation(line: 33, column: 23, scope: !254)
!265 = !DILocation(line: 34, column: 30, scope: !254)
!266 = !DILocation(line: 34, column: 32, scope: !254)
!267 = !DILocation(line: 34, column: 43, scope: !254)
!268 = !DILocation(line: 34, column: 37, scope: !254)
!269 = !DILocation(line: 34, column: 18, scope: !254)
!270 = !DILocation(line: 34, column: 22, scope: !254)
!271 = !DILocation(line: 35, column: 5, scope: !254)
!272 = !DILocation(line: 38, column: 15, scope: !254)
!273 = !DILocation(line: 38, column: 13, scope: !254)
!274 = !DILocation(line: 39, column: 13, scope: !254)
!275 = !DILocation(line: 40, column: 32, scope: !254)
!276 = !DILocation(line: 40, column: 34, scope: !254)
!277 = !DILocation(line: 40, column: 39, scope: !254)
!278 = !DILocation(line: 40, column: 16, scope: !254)
!279 = !DILocation(line: 40, column: 18, scope: !254)
!280 = !DILocation(line: 40, column: 24, scope: !254)
!281 = !DILocation(line: 41, column: 31, scope: !254)
!282 = !DILocation(line: 41, column: 33, scope: !254)
!283 = !DILocation(line: 41, column: 55, scope: !254)
!284 = !DILocation(line: 41, column: 38, scope: !254)
!285 = !DILocation(line: 41, column: 72, scope: !254)
!286 = !DILocation(line: 41, column: 76, scope: !254)
!287 = !DILocation(line: 41, column: 61, scope: !254)
!288 = !DILocation(line: 41, column: 18, scope: !254)
!289 = !DILocation(line: 41, column: 22, scope: !254)
!290 = !DILocation(line: 43, column: 19, scope: !254)
!291 = !DILocation(line: 43, column: 5, scope: !254)
!292 = !DILocation(line: 0, scope: !254)
!293 = !DILocation(line: 44, column: 1, scope: !254)
!294 = distinct !DISubprogram(name: "__clzdi2", scope: !35, file: !35, line: 22, type: !181, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !34, retainedNodes: !140)
!295 = !DILocation(line: 25, column: 7, scope: !294)
!296 = !DILocation(line: 25, column: 11, scope: !294)
!297 = !DILocation(line: 26, column: 26, scope: !294)
!298 = !DILocation(line: 26, column: 28, scope: !294)
!299 = !DILocation(line: 26, column: 33, scope: !294)
!300 = !DILocation(line: 27, column: 29, scope: !294)
!301 = !DILocation(line: 27, column: 31, scope: !294)
!302 = !DILocation(line: 27, column: 49, scope: !294)
!303 = !DILocation(line: 27, column: 42, scope: !294)
!304 = !DILocation(line: 27, column: 12, scope: !294)
!305 = !{i32 0, i32 33}
!306 = !DILocation(line: 28, column: 15, scope: !294)
!307 = !DILocation(line: 27, column: 59, scope: !294)
!308 = !DILocation(line: 27, column: 5, scope: !294)
!309 = distinct !DISubprogram(name: "__clzsi2", scope: !37, file: !37, line: 22, type: !181, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !36, retainedNodes: !140)
!310 = !DILocation(line: 25, column: 34, scope: !309)
!311 = !DILocation(line: 25, column: 40, scope: !309)
!312 = !DILocation(line: 26, column: 14, scope: !309)
!313 = !DILocation(line: 26, column: 7, scope: !309)
!314 = !DILocation(line: 29, column: 13, scope: !309)
!315 = !DILocation(line: 29, column: 23, scope: !309)
!316 = !DILocation(line: 29, column: 29, scope: !309)
!317 = !DILocation(line: 30, column: 13, scope: !309)
!318 = !DILocation(line: 30, column: 7, scope: !309)
!319 = !DILocation(line: 31, column: 7, scope: !309)
!320 = !DILocation(line: 33, column: 13, scope: !309)
!321 = !DILocation(line: 33, column: 21, scope: !309)
!322 = !DILocation(line: 33, column: 27, scope: !309)
!323 = !DILocation(line: 34, column: 13, scope: !309)
!324 = !DILocation(line: 34, column: 7, scope: !309)
!325 = !DILocation(line: 35, column: 7, scope: !309)
!326 = !DILocation(line: 37, column: 13, scope: !309)
!327 = !DILocation(line: 37, column: 20, scope: !309)
!328 = !DILocation(line: 37, column: 26, scope: !309)
!329 = !DILocation(line: 38, column: 13, scope: !309)
!330 = !DILocation(line: 38, column: 7, scope: !309)
!331 = !DILocation(line: 39, column: 7, scope: !309)
!332 = !DILocation(line: 52, column: 20, scope: !309)
!333 = !DILocation(line: 52, column: 37, scope: !309)
!334 = !DILocation(line: 52, column: 25, scope: !309)
!335 = !DILocation(line: 52, column: 14, scope: !309)
!336 = !DILocation(line: 52, column: 5, scope: !309)
!337 = distinct !DISubprogram(name: "__cmpdi2", scope: !41, file: !41, line: 23, type: !181, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !40, retainedNodes: !140)
!338 = !DILocation(line: 26, column: 7, scope: !337)
!339 = !DILocation(line: 26, column: 11, scope: !337)
!340 = !DILocation(line: 28, column: 7, scope: !337)
!341 = !DILocation(line: 28, column: 11, scope: !337)
!342 = !DILocation(line: 29, column: 11, scope: !337)
!343 = !DILocation(line: 29, column: 13, scope: !337)
!344 = !DILocation(line: 29, column: 22, scope: !337)
!345 = !DILocation(line: 29, column: 24, scope: !337)
!346 = !DILocation(line: 29, column: 18, scope: !337)
!347 = !DILocation(line: 29, column: 9, scope: !337)
!348 = !DILocation(line: 30, column: 9, scope: !337)
!349 = !DILocation(line: 31, column: 11, scope: !337)
!350 = !DILocation(line: 31, column: 13, scope: !337)
!351 = !DILocation(line: 31, column: 22, scope: !337)
!352 = !DILocation(line: 31, column: 24, scope: !337)
!353 = !DILocation(line: 31, column: 18, scope: !337)
!354 = !DILocation(line: 31, column: 9, scope: !337)
!355 = !DILocation(line: 32, column: 9, scope: !337)
!356 = !DILocation(line: 33, column: 13, scope: !337)
!357 = !DILocation(line: 33, column: 23, scope: !337)
!358 = !DILocation(line: 33, column: 17, scope: !337)
!359 = !DILocation(line: 33, column: 9, scope: !337)
!360 = !DILocation(line: 34, column: 9, scope: !337)
!361 = !DILocation(line: 35, column: 13, scope: !337)
!362 = !DILocation(line: 35, column: 23, scope: !337)
!363 = !DILocation(line: 35, column: 17, scope: !337)
!364 = !DILocation(line: 35, column: 9, scope: !337)
!365 = !DILocation(line: 36, column: 9, scope: !337)
!366 = !DILocation(line: 37, column: 5, scope: !337)
!367 = !DILocation(line: 0, scope: !337)
!368 = !DILocation(line: 38, column: 1, scope: !337)
!369 = distinct !DISubprogram(name: "__aeabi_lcmp", scope: !41, file: !41, line: 46, type: !181, scopeLine: 47, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !40, retainedNodes: !140)
!370 = !DILocation(line: 48, column: 9, scope: !369)
!371 = !DILocation(line: 48, column: 24, scope: !369)
!372 = !DILocation(line: 48, column: 2, scope: !369)
!373 = distinct !DISubprogram(name: "__ctzdi2", scope: !45, file: !45, line: 22, type: !181, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !140)
!374 = !DILocation(line: 25, column: 7, scope: !373)
!375 = !DILocation(line: 25, column: 11, scope: !373)
!376 = !DILocation(line: 26, column: 28, scope: !373)
!377 = !DILocation(line: 26, column: 32, scope: !373)
!378 = !DILocation(line: 27, column: 29, scope: !373)
!379 = !DILocation(line: 27, column: 31, scope: !373)
!380 = !DILocation(line: 27, column: 41, scope: !373)
!381 = !DILocation(line: 27, column: 12, scope: !373)
!382 = !DILocation(line: 28, column: 18, scope: !373)
!383 = !DILocation(line: 27, column: 59, scope: !373)
!384 = !DILocation(line: 27, column: 5, scope: !373)
!385 = distinct !DISubprogram(name: "__ctzsi2", scope: !47, file: !47, line: 22, type: !181, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !46, retainedNodes: !140)
!386 = !DILocation(line: 25, column: 20, scope: !385)
!387 = !DILocation(line: 25, column: 34, scope: !385)
!388 = !DILocation(line: 25, column: 40, scope: !385)
!389 = !DILocation(line: 26, column: 7, scope: !385)
!390 = !DILocation(line: 29, column: 13, scope: !385)
!391 = !DILocation(line: 29, column: 23, scope: !385)
!392 = !DILocation(line: 29, column: 29, scope: !385)
!393 = !DILocation(line: 30, column: 7, scope: !385)
!394 = !DILocation(line: 31, column: 7, scope: !385)
!395 = !DILocation(line: 33, column: 13, scope: !385)
!396 = !DILocation(line: 33, column: 21, scope: !385)
!397 = !DILocation(line: 33, column: 27, scope: !385)
!398 = !DILocation(line: 34, column: 7, scope: !385)
!399 = !DILocation(line: 35, column: 7, scope: !385)
!400 = !DILocation(line: 37, column: 13, scope: !385)
!401 = !DILocation(line: 37, column: 20, scope: !385)
!402 = !DILocation(line: 37, column: 26, scope: !385)
!403 = !DILocation(line: 38, column: 7, scope: !385)
!404 = !DILocation(line: 40, column: 7, scope: !385)
!405 = !DILocation(line: 56, column: 25, scope: !385)
!406 = !DILocation(line: 56, column: 20, scope: !385)
!407 = !DILocation(line: 56, column: 44, scope: !385)
!408 = !DILocation(line: 56, column: 32, scope: !385)
!409 = !DILocation(line: 56, column: 14, scope: !385)
!410 = !DILocation(line: 56, column: 5, scope: !385)
!411 = distinct !DISubprogram(name: "__divdi3", scope: !51, file: !51, line: 20, type: !181, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !50, retainedNodes: !140)
!412 = !DILocation(line: 23, column: 20, scope: !411)
!413 = !DILocation(line: 24, column: 20, scope: !411)
!414 = !DILocation(line: 25, column: 12, scope: !411)
!415 = !DILocation(line: 25, column: 19, scope: !411)
!416 = !DILocation(line: 26, column: 12, scope: !411)
!417 = !DILocation(line: 26, column: 19, scope: !411)
!418 = !DILocation(line: 27, column: 9, scope: !411)
!419 = !DILocation(line: 28, column: 13, scope: !411)
!420 = !DILocation(line: 28, column: 44, scope: !411)
!421 = !DILocation(line: 28, column: 51, scope: !411)
!422 = !DILocation(line: 28, column: 5, scope: !411)
!423 = distinct !DISubprogram(name: "__udivmoddi4", scope: !109, file: !109, line: 24, type: !181, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !108, retainedNodes: !140)
!424 = !DILocation(line: 29, column: 7, scope: !423)
!425 = !DILocation(line: 29, column: 11, scope: !423)
!426 = !DILocation(line: 31, column: 7, scope: !423)
!427 = !DILocation(line: 31, column: 11, scope: !423)
!428 = !DILocation(line: 36, column: 11, scope: !423)
!429 = !DILocation(line: 36, column: 13, scope: !423)
!430 = !DILocation(line: 36, column: 18, scope: !423)
!431 = !DILocation(line: 36, column: 9, scope: !423)
!432 = !DILocation(line: 38, column: 15, scope: !423)
!433 = !DILocation(line: 38, column: 17, scope: !423)
!434 = !DILocation(line: 38, column: 22, scope: !423)
!435 = !DILocation(line: 38, column: 13, scope: !423)
!436 = !DILocation(line: 44, column: 17, scope: !423)
!437 = !DILocation(line: 45, column: 28, scope: !423)
!438 = !DILocation(line: 45, column: 38, scope: !423)
!439 = !DILocation(line: 45, column: 32, scope: !423)
!440 = !DILocation(line: 45, column: 24, scope: !423)
!441 = !DILocation(line: 45, column: 22, scope: !423)
!442 = !DILocation(line: 45, column: 17, scope: !423)
!443 = !DILocation(line: 46, column: 24, scope: !423)
!444 = !DILocation(line: 46, column: 34, scope: !423)
!445 = !DILocation(line: 46, column: 28, scope: !423)
!446 = !DILocation(line: 46, column: 20, scope: !423)
!447 = !DILocation(line: 46, column: 13, scope: !423)
!448 = !DILocation(line: 52, column: 13, scope: !423)
!449 = !DILocation(line: 53, column: 24, scope: !423)
!450 = !DILocation(line: 53, column: 20, scope: !423)
!451 = !DILocation(line: 53, column: 18, scope: !423)
!452 = !DILocation(line: 53, column: 13, scope: !423)
!453 = !DILocation(line: 54, column: 9, scope: !423)
!454 = !DILocation(line: 57, column: 13, scope: !423)
!455 = !DILocation(line: 57, column: 17, scope: !423)
!456 = !DILocation(line: 57, column: 9, scope: !423)
!457 = !DILocation(line: 59, column: 15, scope: !423)
!458 = !DILocation(line: 59, column: 17, scope: !423)
!459 = !DILocation(line: 59, column: 22, scope: !423)
!460 = !DILocation(line: 59, column: 13, scope: !423)
!461 = !DILocation(line: 65, column: 17, scope: !423)
!462 = !DILocation(line: 66, column: 26, scope: !423)
!463 = !DILocation(line: 66, column: 28, scope: !423)
!464 = !DILocation(line: 66, column: 39, scope: !423)
!465 = !DILocation(line: 66, column: 33, scope: !423)
!466 = !DILocation(line: 66, column: 24, scope: !423)
!467 = !DILocation(line: 66, column: 22, scope: !423)
!468 = !DILocation(line: 66, column: 17, scope: !423)
!469 = !DILocation(line: 67, column: 22, scope: !423)
!470 = !DILocation(line: 67, column: 24, scope: !423)
!471 = !DILocation(line: 67, column: 35, scope: !423)
!472 = !DILocation(line: 67, column: 29, scope: !423)
!473 = !DILocation(line: 67, column: 20, scope: !423)
!474 = !DILocation(line: 67, column: 13, scope: !423)
!475 = !DILocation(line: 70, column: 17, scope: !423)
!476 = !DILocation(line: 70, column: 21, scope: !423)
!477 = !DILocation(line: 70, column: 13, scope: !423)
!478 = !DILocation(line: 76, column: 17, scope: !423)
!479 = !DILocation(line: 78, column: 30, scope: !423)
!480 = !DILocation(line: 78, column: 32, scope: !423)
!481 = !DILocation(line: 78, column: 41, scope: !423)
!482 = !DILocation(line: 78, column: 43, scope: !423)
!483 = !DILocation(line: 78, column: 37, scope: !423)
!484 = !DILocation(line: 78, column: 19, scope: !423)
!485 = !DILocation(line: 78, column: 21, scope: !423)
!486 = !DILocation(line: 78, column: 26, scope: !423)
!487 = !DILocation(line: 79, column: 21, scope: !423)
!488 = !DILocation(line: 79, column: 25, scope: !423)
!489 = !DILocation(line: 80, column: 26, scope: !423)
!490 = !DILocation(line: 80, column: 22, scope: !423)
!491 = !DILocation(line: 81, column: 13, scope: !423)
!492 = !DILocation(line: 82, column: 22, scope: !423)
!493 = !DILocation(line: 82, column: 24, scope: !423)
!494 = !DILocation(line: 82, column: 33, scope: !423)
!495 = !DILocation(line: 82, column: 35, scope: !423)
!496 = !DILocation(line: 82, column: 29, scope: !423)
!497 = !DILocation(line: 82, column: 20, scope: !423)
!498 = !DILocation(line: 82, column: 13, scope: !423)
!499 = !DILocation(line: 88, column: 16, scope: !423)
!500 = !DILocation(line: 88, column: 18, scope: !423)
!501 = !DILocation(line: 88, column: 28, scope: !423)
!502 = !DILocation(line: 88, column: 30, scope: !423)
!503 = !DILocation(line: 88, column: 35, scope: !423)
!504 = !DILocation(line: 88, column: 23, scope: !423)
!505 = !DILocation(line: 88, column: 41, scope: !423)
!506 = !DILocation(line: 88, column: 13, scope: !423)
!507 = !DILocation(line: 90, column: 17, scope: !423)
!508 = !DILocation(line: 92, column: 31, scope: !423)
!509 = !DILocation(line: 92, column: 21, scope: !423)
!510 = !DILocation(line: 92, column: 25, scope: !423)
!511 = !DILocation(line: 93, column: 30, scope: !423)
!512 = !DILocation(line: 93, column: 32, scope: !423)
!513 = !DILocation(line: 93, column: 42, scope: !423)
!514 = !DILocation(line: 93, column: 44, scope: !423)
!515 = !DILocation(line: 93, column: 49, scope: !423)
!516 = !DILocation(line: 93, column: 37, scope: !423)
!517 = !DILocation(line: 93, column: 19, scope: !423)
!518 = !DILocation(line: 93, column: 21, scope: !423)
!519 = !DILocation(line: 93, column: 26, scope: !423)
!520 = !DILocation(line: 94, column: 26, scope: !423)
!521 = !DILocation(line: 94, column: 22, scope: !423)
!522 = !DILocation(line: 95, column: 13, scope: !423)
!523 = !DILocation(line: 96, column: 22, scope: !423)
!524 = !DILocation(line: 96, column: 24, scope: !423)
!525 = !DILocation(line: 96, column: 48, scope: !423)
!526 = !DILocation(line: 96, column: 50, scope: !423)
!527 = !DILocation(line: 96, column: 32, scope: !423)
!528 = !DILocation(line: 96, column: 29, scope: !423)
!529 = !DILocation(line: 96, column: 20, scope: !423)
!530 = !DILocation(line: 96, column: 13, scope: !423)
!531 = !DILocation(line: 102, column: 30, scope: !423)
!532 = !DILocation(line: 102, column: 32, scope: !423)
!533 = !DILocation(line: 102, column: 14, scope: !423)
!534 = !DILocation(line: 102, column: 56, scope: !423)
!535 = !DILocation(line: 102, column: 58, scope: !423)
!536 = !DILocation(line: 102, column: 40, scope: !423)
!537 = !DILocation(line: 102, column: 38, scope: !423)
!538 = !DILocation(line: 104, column: 16, scope: !423)
!539 = !DILocation(line: 104, column: 13, scope: !423)
!540 = !DILocation(line: 106, column: 16, scope: !423)
!541 = !DILocation(line: 107, column: 26, scope: !423)
!542 = !DILocation(line: 107, column: 22, scope: !423)
!543 = !DILocation(line: 107, column: 17, scope: !423)
!544 = !DILocation(line: 108, column: 13, scope: !423)
!545 = !DILocation(line: 110, column: 9, scope: !423)
!546 = !DILocation(line: 113, column: 13, scope: !423)
!547 = !DILocation(line: 113, column: 17, scope: !423)
!548 = !DILocation(line: 114, column: 24, scope: !423)
!549 = !DILocation(line: 114, column: 45, scope: !423)
!550 = !DILocation(line: 114, column: 28, scope: !423)
!551 = !DILocation(line: 114, column: 11, scope: !423)
!552 = !DILocation(line: 114, column: 13, scope: !423)
!553 = !DILocation(line: 114, column: 18, scope: !423)
!554 = !DILocation(line: 116, column: 22, scope: !423)
!555 = !DILocation(line: 116, column: 24, scope: !423)
!556 = !DILocation(line: 116, column: 29, scope: !423)
!557 = !DILocation(line: 116, column: 11, scope: !423)
!558 = !DILocation(line: 116, column: 13, scope: !423)
!559 = !DILocation(line: 116, column: 18, scope: !423)
!560 = !DILocation(line: 117, column: 22, scope: !423)
!561 = !DILocation(line: 117, column: 24, scope: !423)
!562 = !DILocation(line: 117, column: 46, scope: !423)
!563 = !DILocation(line: 117, column: 29, scope: !423)
!564 = !DILocation(line: 117, column: 60, scope: !423)
!565 = !DILocation(line: 117, column: 64, scope: !423)
!566 = !DILocation(line: 117, column: 53, scope: !423)
!567 = !DILocation(line: 117, column: 13, scope: !423)
!568 = !DILocation(line: 117, column: 17, scope: !423)
!569 = !DILocation(line: 118, column: 5, scope: !423)
!570 = !DILocation(line: 121, column: 15, scope: !423)
!571 = !DILocation(line: 121, column: 17, scope: !423)
!572 = !DILocation(line: 121, column: 22, scope: !423)
!573 = !DILocation(line: 121, column: 13, scope: !423)
!574 = !DILocation(line: 127, column: 22, scope: !423)
!575 = !DILocation(line: 127, column: 43, scope: !423)
!576 = !DILocation(line: 127, column: 17, scope: !423)
!577 = !DILocation(line: 129, column: 21, scope: !423)
!578 = !DILocation(line: 130, column: 32, scope: !423)
!579 = !DILocation(line: 130, column: 43, scope: !423)
!580 = !DILocation(line: 130, column: 47, scope: !423)
!581 = !DILocation(line: 130, column: 36, scope: !423)
!582 = !DILocation(line: 130, column: 28, scope: !423)
!583 = !DILocation(line: 130, column: 26, scope: !423)
!584 = !DILocation(line: 130, column: 21, scope: !423)
!585 = !DILocation(line: 131, column: 25, scope: !423)
!586 = !DILocation(line: 131, column: 29, scope: !423)
!587 = !DILocation(line: 131, column: 21, scope: !423)
!588 = !DILocation(line: 132, column: 30, scope: !423)
!589 = !DILocation(line: 132, column: 21, scope: !423)
!590 = !DILocation(line: 133, column: 40, scope: !423)
!591 = !DILocation(line: 133, column: 22, scope: !423)
!592 = !DILocation(line: 134, column: 30, scope: !423)
!593 = !DILocation(line: 134, column: 32, scope: !423)
!594 = !DILocation(line: 134, column: 37, scope: !423)
!595 = !DILocation(line: 134, column: 19, scope: !423)
!596 = !DILocation(line: 134, column: 21, scope: !423)
!597 = !DILocation(line: 134, column: 26, scope: !423)
!598 = !DILocation(line: 135, column: 30, scope: !423)
!599 = !DILocation(line: 135, column: 32, scope: !423)
!600 = !DILocation(line: 135, column: 54, scope: !423)
!601 = !DILocation(line: 135, column: 37, scope: !423)
!602 = !DILocation(line: 135, column: 68, scope: !423)
!603 = !DILocation(line: 135, column: 72, scope: !423)
!604 = !DILocation(line: 135, column: 61, scope: !423)
!605 = !DILocation(line: 135, column: 21, scope: !423)
!606 = !DILocation(line: 135, column: 25, scope: !423)
!607 = !DILocation(line: 136, column: 26, scope: !423)
!608 = !DILocation(line: 136, column: 17, scope: !423)
!609 = !DILocation(line: 142, column: 55, scope: !423)
!610 = !DILocation(line: 142, column: 37, scope: !423)
!611 = !DILocation(line: 142, column: 35, scope: !423)
!612 = !DILocation(line: 142, column: 78, scope: !423)
!613 = !DILocation(line: 142, column: 80, scope: !423)
!614 = !DILocation(line: 142, column: 62, scope: !423)
!615 = !DILocation(line: 142, column: 60, scope: !423)
!616 = !DILocation(line: 147, column: 20, scope: !423)
!617 = !DILocation(line: 147, column: 17, scope: !423)
!618 = !DILocation(line: 149, column: 21, scope: !423)
!619 = !DILocation(line: 149, column: 25, scope: !423)
!620 = !DILocation(line: 150, column: 32, scope: !423)
!621 = !DILocation(line: 150, column: 19, scope: !423)
!622 = !DILocation(line: 150, column: 21, scope: !423)
!623 = !DILocation(line: 150, column: 26, scope: !423)
!624 = !DILocation(line: 151, column: 19, scope: !423)
!625 = !DILocation(line: 151, column: 21, scope: !423)
!626 = !DILocation(line: 151, column: 26, scope: !423)
!627 = !DILocation(line: 152, column: 29, scope: !423)
!628 = !DILocation(line: 152, column: 31, scope: !423)
!629 = !DILocation(line: 152, column: 21, scope: !423)
!630 = !DILocation(line: 152, column: 25, scope: !423)
!631 = !DILocation(line: 153, column: 13, scope: !423)
!632 = !DILocation(line: 154, column: 25, scope: !423)
!633 = !DILocation(line: 154, column: 22, scope: !423)
!634 = !DILocation(line: 156, column: 21, scope: !423)
!635 = !DILocation(line: 156, column: 25, scope: !423)
!636 = !DILocation(line: 157, column: 32, scope: !423)
!637 = !DILocation(line: 157, column: 53, scope: !423)
!638 = !DILocation(line: 157, column: 36, scope: !423)
!639 = !DILocation(line: 157, column: 19, scope: !423)
!640 = !DILocation(line: 157, column: 21, scope: !423)
!641 = !DILocation(line: 157, column: 26, scope: !423)
!642 = !DILocation(line: 158, column: 30, scope: !423)
!643 = !DILocation(line: 158, column: 32, scope: !423)
!644 = !DILocation(line: 158, column: 37, scope: !423)
!645 = !DILocation(line: 158, column: 19, scope: !423)
!646 = !DILocation(line: 158, column: 21, scope: !423)
!647 = !DILocation(line: 158, column: 26, scope: !423)
!648 = !DILocation(line: 159, column: 30, scope: !423)
!649 = !DILocation(line: 159, column: 32, scope: !423)
!650 = !DILocation(line: 159, column: 54, scope: !423)
!651 = !DILocation(line: 159, column: 37, scope: !423)
!652 = !DILocation(line: 159, column: 68, scope: !423)
!653 = !DILocation(line: 159, column: 72, scope: !423)
!654 = !DILocation(line: 159, column: 61, scope: !423)
!655 = !DILocation(line: 159, column: 21, scope: !423)
!656 = !DILocation(line: 159, column: 25, scope: !423)
!657 = !DILocation(line: 160, column: 13, scope: !423)
!658 = !DILocation(line: 163, column: 31, scope: !423)
!659 = !DILocation(line: 163, column: 53, scope: !423)
!660 = !DILocation(line: 163, column: 35, scope: !423)
!661 = !DILocation(line: 163, column: 21, scope: !423)
!662 = !DILocation(line: 163, column: 25, scope: !423)
!663 = !DILocation(line: 164, column: 31, scope: !423)
!664 = !DILocation(line: 164, column: 33, scope: !423)
!665 = !DILocation(line: 164, column: 56, scope: !423)
!666 = !DILocation(line: 164, column: 38, scope: !423)
!667 = !DILocation(line: 165, column: 33, scope: !423)
!668 = !DILocation(line: 165, column: 44, scope: !423)
!669 = !DILocation(line: 165, column: 37, scope: !423)
!670 = !DILocation(line: 164, column: 63, scope: !423)
!671 = !DILocation(line: 164, column: 19, scope: !423)
!672 = !DILocation(line: 164, column: 21, scope: !423)
!673 = !DILocation(line: 164, column: 26, scope: !423)
!674 = !DILocation(line: 166, column: 19, scope: !423)
!675 = !DILocation(line: 166, column: 21, scope: !423)
!676 = !DILocation(line: 166, column: 26, scope: !423)
!677 = !DILocation(line: 167, column: 29, scope: !423)
!678 = !DILocation(line: 167, column: 31, scope: !423)
!679 = !DILocation(line: 167, column: 43, scope: !423)
!680 = !DILocation(line: 167, column: 36, scope: !423)
!681 = !DILocation(line: 167, column: 21, scope: !423)
!682 = !DILocation(line: 167, column: 25, scope: !423)
!683 = !DILocation(line: 169, column: 9, scope: !423)
!684 = !DILocation(line: 176, column: 34, scope: !423)
!685 = !DILocation(line: 176, column: 36, scope: !423)
!686 = !DILocation(line: 176, column: 18, scope: !423)
!687 = !DILocation(line: 176, column: 60, scope: !423)
!688 = !DILocation(line: 176, column: 62, scope: !423)
!689 = !DILocation(line: 176, column: 44, scope: !423)
!690 = !DILocation(line: 176, column: 42, scope: !423)
!691 = !DILocation(line: 178, column: 20, scope: !423)
!692 = !DILocation(line: 178, column: 17, scope: !423)
!693 = !DILocation(line: 180, column: 21, scope: !423)
!694 = !DILocation(line: 181, column: 30, scope: !423)
!695 = !DILocation(line: 181, column: 26, scope: !423)
!696 = !DILocation(line: 181, column: 21, scope: !423)
!697 = !DILocation(line: 182, column: 17, scope: !423)
!698 = !DILocation(line: 184, column: 13, scope: !423)
!699 = !DILocation(line: 187, column: 17, scope: !423)
!700 = !DILocation(line: 187, column: 21, scope: !423)
!701 = !DILocation(line: 188, column: 20, scope: !423)
!702 = !DILocation(line: 188, column: 17, scope: !423)
!703 = !DILocation(line: 190, column: 32, scope: !423)
!704 = !DILocation(line: 190, column: 19, scope: !423)
!705 = !DILocation(line: 190, column: 21, scope: !423)
!706 = !DILocation(line: 190, column: 26, scope: !423)
!707 = !DILocation(line: 191, column: 19, scope: !423)
!708 = !DILocation(line: 191, column: 21, scope: !423)
!709 = !DILocation(line: 191, column: 26, scope: !423)
!710 = !DILocation(line: 192, column: 29, scope: !423)
!711 = !DILocation(line: 192, column: 31, scope: !423)
!712 = !DILocation(line: 192, column: 21, scope: !423)
!713 = !DILocation(line: 192, column: 25, scope: !423)
!714 = !DILocation(line: 193, column: 13, scope: !423)
!715 = !DILocation(line: 196, column: 32, scope: !423)
!716 = !DILocation(line: 196, column: 53, scope: !423)
!717 = !DILocation(line: 196, column: 36, scope: !423)
!718 = !DILocation(line: 196, column: 19, scope: !423)
!719 = !DILocation(line: 196, column: 21, scope: !423)
!720 = !DILocation(line: 196, column: 26, scope: !423)
!721 = !DILocation(line: 197, column: 30, scope: !423)
!722 = !DILocation(line: 197, column: 32, scope: !423)
!723 = !DILocation(line: 197, column: 37, scope: !423)
!724 = !DILocation(line: 197, column: 19, scope: !423)
!725 = !DILocation(line: 197, column: 21, scope: !423)
!726 = !DILocation(line: 197, column: 26, scope: !423)
!727 = !DILocation(line: 198, column: 30, scope: !423)
!728 = !DILocation(line: 198, column: 32, scope: !423)
!729 = !DILocation(line: 198, column: 54, scope: !423)
!730 = !DILocation(line: 198, column: 37, scope: !423)
!731 = !DILocation(line: 198, column: 68, scope: !423)
!732 = !DILocation(line: 198, column: 72, scope: !423)
!733 = !DILocation(line: 198, column: 61, scope: !423)
!734 = !DILocation(line: 198, column: 21, scope: !423)
!735 = !DILocation(line: 198, column: 25, scope: !423)
!736 = !DILocation(line: 0, scope: !423)
!737 = !DILocation(line: 209, column: 5, scope: !423)
!738 = !DILocation(line: 209, column: 15, scope: !423)
!739 = !DILocation(line: 212, column: 23, scope: !423)
!740 = !DILocation(line: 212, column: 25, scope: !423)
!741 = !DILocation(line: 212, column: 43, scope: !423)
!742 = !DILocation(line: 212, column: 36, scope: !423)
!743 = !DILocation(line: 212, column: 11, scope: !423)
!744 = !DILocation(line: 212, column: 13, scope: !423)
!745 = !DILocation(line: 212, column: 18, scope: !423)
!746 = !DILocation(line: 213, column: 41, scope: !423)
!747 = !DILocation(line: 213, column: 43, scope: !423)
!748 = !DILocation(line: 213, column: 36, scope: !423)
!749 = !DILocation(line: 213, column: 13, scope: !423)
!750 = !DILocation(line: 213, column: 18, scope: !423)
!751 = !DILocation(line: 214, column: 23, scope: !423)
!752 = !DILocation(line: 214, column: 25, scope: !423)
!753 = !DILocation(line: 214, column: 43, scope: !423)
!754 = !DILocation(line: 214, column: 36, scope: !423)
!755 = !DILocation(line: 214, column: 11, scope: !423)
!756 = !DILocation(line: 214, column: 13, scope: !423)
!757 = !DILocation(line: 214, column: 18, scope: !423)
!758 = !DILocation(line: 215, column: 30, scope: !423)
!759 = !DILocation(line: 215, column: 36, scope: !423)
!760 = !DILocation(line: 215, column: 13, scope: !423)
!761 = !DILocation(line: 215, column: 18, scope: !423)
!762 = !DILocation(line: 223, column: 37, scope: !423)
!763 = !DILocation(line: 223, column: 45, scope: !423)
!764 = !DILocation(line: 223, column: 49, scope: !423)
!765 = !DILocation(line: 225, column: 24, scope: !423)
!766 = !DILocation(line: 225, column: 11, scope: !423)
!767 = !DILocation(line: 225, column: 15, scope: !423)
!768 = !DILocation(line: 226, column: 5, scope: !423)
!769 = !DILocation(line: 224, column: 19, scope: !423)
!770 = !DILocation(line: 224, column: 17, scope: !423)
!771 = !DILocation(line: 209, column: 20, scope: !423)
!772 = distinct !{!772, !737, !768, !178}
!773 = !DILocation(line: 227, column: 16, scope: !423)
!774 = !DILocation(line: 227, column: 20, scope: !423)
!775 = !DILocation(line: 227, column: 28, scope: !423)
!776 = !DILocation(line: 227, column: 26, scope: !423)
!777 = !DILocation(line: 227, column: 7, scope: !423)
!778 = !DILocation(line: 227, column: 11, scope: !423)
!779 = !DILocation(line: 228, column: 9, scope: !423)
!780 = !DILocation(line: 229, column: 18, scope: !423)
!781 = !DILocation(line: 229, column: 14, scope: !423)
!782 = !DILocation(line: 229, column: 9, scope: !423)
!783 = !DILocation(line: 230, column: 14, scope: !423)
!784 = !DILocation(line: 230, column: 5, scope: !423)
!785 = !DILocation(line: 231, column: 1, scope: !423)
!786 = distinct !DISubprogram(name: "__divmoddi4", scope: !53, file: !53, line: 20, type: !181, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !52, retainedNodes: !140)
!787 = !DILocation(line: 22, column: 14, scope: !786)
!788 = !DILocation(line: 23, column: 16, scope: !786)
!789 = !DILocation(line: 23, column: 12, scope: !786)
!790 = !DILocation(line: 23, column: 8, scope: !786)
!791 = !DILocation(line: 24, column: 3, scope: !786)
!792 = distinct !DISubprogram(name: "__divmodsi4", scope: !55, file: !55, line: 20, type: !181, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !54, retainedNodes: !140)
!793 = !DILocation(line: 22, column: 14, scope: !792)
!794 = !DILocation(line: 23, column: 16, scope: !792)
!795 = !DILocation(line: 23, column: 12, scope: !792)
!796 = !DILocation(line: 23, column: 8, scope: !792)
!797 = !DILocation(line: 24, column: 3, scope: !792)
!798 = distinct !DISubprogram(name: "__divsi3", scope: !57, file: !57, line: 22, type: !181, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !56, retainedNodes: !140)
!799 = !DILocation(line: 25, column: 20, scope: !798)
!800 = !DILocation(line: 26, column: 20, scope: !798)
!801 = !DILocation(line: 27, column: 12, scope: !798)
!802 = !DILocation(line: 27, column: 19, scope: !798)
!803 = !DILocation(line: 28, column: 12, scope: !798)
!804 = !DILocation(line: 28, column: 19, scope: !798)
!805 = !DILocation(line: 29, column: 9, scope: !798)
!806 = !DILocation(line: 36, column: 22, scope: !798)
!807 = !DILocation(line: 36, column: 33, scope: !798)
!808 = !DILocation(line: 36, column: 40, scope: !798)
!809 = !DILocation(line: 36, column: 5, scope: !798)
!810 = distinct !DISubprogram(name: "__ffsdi2", scope: !61, file: !61, line: 22, type: !181, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !60, retainedNodes: !140)
!811 = !DILocation(line: 25, column: 7, scope: !810)
!812 = !DILocation(line: 25, column: 11, scope: !810)
!813 = !DILocation(line: 26, column: 13, scope: !810)
!814 = !DILocation(line: 26, column: 17, scope: !810)
!815 = !DILocation(line: 26, column: 9, scope: !810)
!816 = !DILocation(line: 28, column: 15, scope: !810)
!817 = !DILocation(line: 28, column: 17, scope: !810)
!818 = !DILocation(line: 28, column: 22, scope: !810)
!819 = !DILocation(line: 28, column: 13, scope: !810)
!820 = !DILocation(line: 29, column: 13, scope: !810)
!821 = !DILocation(line: 30, column: 32, scope: !810)
!822 = !DILocation(line: 30, column: 34, scope: !810)
!823 = !DILocation(line: 30, column: 16, scope: !810)
!824 = !DILocation(line: 30, column: 40, scope: !810)
!825 = !DILocation(line: 30, column: 9, scope: !810)
!826 = !DILocation(line: 32, column: 30, scope: !810)
!827 = !DILocation(line: 32, column: 12, scope: !810)
!828 = !DILocation(line: 32, column: 35, scope: !810)
!829 = !DILocation(line: 32, column: 5, scope: !810)
!830 = !DILocation(line: 0, scope: !810)
!831 = !DILocation(line: 33, column: 1, scope: !810)
!832 = distinct !DISubprogram(name: "__ffssi2", scope: !63, file: !63, line: 22, type: !181, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !62, retainedNodes: !140)
!833 = !DILocation(line: 24, column: 11, scope: !832)
!834 = !DILocation(line: 24, column: 9, scope: !832)
!835 = !DILocation(line: 26, column: 9, scope: !832)
!836 = !DILocation(line: 28, column: 12, scope: !832)
!837 = !DILocation(line: 28, column: 29, scope: !832)
!838 = !DILocation(line: 28, column: 5, scope: !832)
!839 = !DILocation(line: 0, scope: !832)
!840 = !DILocation(line: 29, column: 1, scope: !832)
!841 = distinct !DISubprogram(name: "__lshrdi3", scope: !69, file: !69, line: 24, type: !181, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !68, retainedNodes: !140)
!842 = !DILocation(line: 29, column: 11, scope: !841)
!843 = !DILocation(line: 29, column: 15, scope: !841)
!844 = !DILocation(line: 30, column: 11, scope: !841)
!845 = !DILocation(line: 30, column: 9, scope: !841)
!846 = !DILocation(line: 32, column: 16, scope: !841)
!847 = !DILocation(line: 32, column: 18, scope: !841)
!848 = !DILocation(line: 32, column: 23, scope: !841)
!849 = !DILocation(line: 33, column: 30, scope: !841)
!850 = !DILocation(line: 33, column: 32, scope: !841)
!851 = !DILocation(line: 33, column: 43, scope: !841)
!852 = !DILocation(line: 33, column: 37, scope: !841)
!853 = !DILocation(line: 33, column: 18, scope: !841)
!854 = !DILocation(line: 33, column: 22, scope: !841)
!855 = !DILocation(line: 34, column: 5, scope: !841)
!856 = !DILocation(line: 37, column: 15, scope: !841)
!857 = !DILocation(line: 37, column: 13, scope: !841)
!858 = !DILocation(line: 38, column: 13, scope: !841)
!859 = !DILocation(line: 39, column: 32, scope: !841)
!860 = !DILocation(line: 39, column: 34, scope: !841)
!861 = !DILocation(line: 39, column: 39, scope: !841)
!862 = !DILocation(line: 39, column: 16, scope: !841)
!863 = !DILocation(line: 39, column: 18, scope: !841)
!864 = !DILocation(line: 39, column: 24, scope: !841)
!865 = !DILocation(line: 40, column: 31, scope: !841)
!866 = !DILocation(line: 40, column: 33, scope: !841)
!867 = !DILocation(line: 40, column: 55, scope: !841)
!868 = !DILocation(line: 40, column: 38, scope: !841)
!869 = !DILocation(line: 40, column: 72, scope: !841)
!870 = !DILocation(line: 40, column: 76, scope: !841)
!871 = !DILocation(line: 40, column: 61, scope: !841)
!872 = !DILocation(line: 40, column: 18, scope: !841)
!873 = !DILocation(line: 40, column: 22, scope: !841)
!874 = !DILocation(line: 42, column: 19, scope: !841)
!875 = !DILocation(line: 42, column: 5, scope: !841)
!876 = !DILocation(line: 0, scope: !841)
!877 = !DILocation(line: 43, column: 1, scope: !841)
!878 = distinct !DISubprogram(name: "__moddi3", scope: !73, file: !73, line: 20, type: !181, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !72, retainedNodes: !140)
!879 = !DILocation(line: 24, column: 17, scope: !878)
!880 = !DILocation(line: 25, column: 11, scope: !878)
!881 = !DILocation(line: 26, column: 12, scope: !878)
!882 = !DILocation(line: 26, column: 17, scope: !878)
!883 = !DILocation(line: 28, column: 5, scope: !878)
!884 = !DILocation(line: 29, column: 21, scope: !878)
!885 = !DILocation(line: 29, column: 23, scope: !878)
!886 = !DILocation(line: 29, column: 28, scope: !878)
!887 = !DILocation(line: 29, column: 5, scope: !878)
!888 = distinct !DISubprogram(name: "__modsi3", scope: !75, file: !75, line: 20, type: !181, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !74, retainedNodes: !140)
!889 = !DILocation(line: 22, column: 16, scope: !888)
!890 = !DILocation(line: 22, column: 31, scope: !888)
!891 = !DILocation(line: 22, column: 14, scope: !888)
!892 = !DILocation(line: 22, column: 5, scope: !888)
!893 = distinct !DISubprogram(name: "__mulvdi3", scope: !79, file: !79, line: 22, type: !181, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !78, retainedNodes: !140)
!894 = !DILocation(line: 27, column: 11, scope: !893)
!895 = !DILocation(line: 27, column: 9, scope: !893)
!896 = !DILocation(line: 29, column: 15, scope: !893)
!897 = !DILocation(line: 29, column: 20, scope: !893)
!898 = !DILocation(line: 29, column: 25, scope: !893)
!899 = !DILocation(line: 29, column: 13, scope: !893)
!900 = !DILocation(line: 30, column: 13, scope: !893)
!901 = !DILocation(line: 31, column: 9, scope: !893)
!902 = !DILocation(line: 33, column: 11, scope: !893)
!903 = !DILocation(line: 33, column: 9, scope: !893)
!904 = !DILocation(line: 35, column: 15, scope: !893)
!905 = !DILocation(line: 35, column: 20, scope: !893)
!906 = !DILocation(line: 35, column: 25, scope: !893)
!907 = !DILocation(line: 35, column: 13, scope: !893)
!908 = !DILocation(line: 36, column: 13, scope: !893)
!909 = !DILocation(line: 37, column: 9, scope: !893)
!910 = !DILocation(line: 39, column: 19, scope: !893)
!911 = !DILocation(line: 40, column: 23, scope: !893)
!912 = !DILocation(line: 40, column: 29, scope: !893)
!913 = !DILocation(line: 41, column: 19, scope: !893)
!914 = !DILocation(line: 42, column: 23, scope: !893)
!915 = !DILocation(line: 42, column: 29, scope: !893)
!916 = !DILocation(line: 43, column: 15, scope: !893)
!917 = !DILocation(line: 43, column: 19, scope: !893)
!918 = !DILocation(line: 43, column: 28, scope: !893)
!919 = !DILocation(line: 43, column: 9, scope: !893)
!920 = !DILocation(line: 44, column: 9, scope: !893)
!921 = !DILocation(line: 45, column: 12, scope: !893)
!922 = !DILocation(line: 45, column: 9, scope: !893)
!923 = !DILocation(line: 47, column: 25, scope: !893)
!924 = !DILocation(line: 47, column: 19, scope: !893)
!925 = !DILocation(line: 47, column: 13, scope: !893)
!926 = !DILocation(line: 48, column: 13, scope: !893)
!927 = !DILocation(line: 49, column: 5, scope: !893)
!928 = !DILocation(line: 52, column: 27, scope: !893)
!929 = !DILocation(line: 52, column: 25, scope: !893)
!930 = !DILocation(line: 52, column: 19, scope: !893)
!931 = !DILocation(line: 52, column: 13, scope: !893)
!932 = !DILocation(line: 53, column: 13, scope: !893)
!933 = !DILocation(line: 55, column: 5, scope: !893)
!934 = !DILocation(line: 0, scope: !893)
!935 = !DILocation(line: 56, column: 1, scope: !893)
!936 = distinct !DISubprogram(name: "__mulvsi3", scope: !81, file: !81, line: 22, type: !181, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !80, retainedNodes: !140)
!937 = !DILocation(line: 27, column: 11, scope: !936)
!938 = !DILocation(line: 27, column: 9, scope: !936)
!939 = !DILocation(line: 29, column: 15, scope: !936)
!940 = !DILocation(line: 29, column: 20, scope: !936)
!941 = !DILocation(line: 29, column: 25, scope: !936)
!942 = !DILocation(line: 29, column: 13, scope: !936)
!943 = !DILocation(line: 30, column: 13, scope: !936)
!944 = !DILocation(line: 31, column: 9, scope: !936)
!945 = !DILocation(line: 33, column: 11, scope: !936)
!946 = !DILocation(line: 33, column: 9, scope: !936)
!947 = !DILocation(line: 35, column: 15, scope: !936)
!948 = !DILocation(line: 35, column: 20, scope: !936)
!949 = !DILocation(line: 35, column: 25, scope: !936)
!950 = !DILocation(line: 35, column: 13, scope: !936)
!951 = !DILocation(line: 36, column: 13, scope: !936)
!952 = !DILocation(line: 37, column: 9, scope: !936)
!953 = !DILocation(line: 39, column: 19, scope: !936)
!954 = !DILocation(line: 40, column: 23, scope: !936)
!955 = !DILocation(line: 40, column: 29, scope: !936)
!956 = !DILocation(line: 41, column: 19, scope: !936)
!957 = !DILocation(line: 42, column: 23, scope: !936)
!958 = !DILocation(line: 42, column: 29, scope: !936)
!959 = !DILocation(line: 43, column: 15, scope: !936)
!960 = !DILocation(line: 43, column: 19, scope: !936)
!961 = !DILocation(line: 43, column: 28, scope: !936)
!962 = !DILocation(line: 43, column: 9, scope: !936)
!963 = !DILocation(line: 44, column: 9, scope: !936)
!964 = !DILocation(line: 45, column: 12, scope: !936)
!965 = !DILocation(line: 45, column: 9, scope: !936)
!966 = !DILocation(line: 47, column: 25, scope: !936)
!967 = !DILocation(line: 47, column: 19, scope: !936)
!968 = !DILocation(line: 47, column: 13, scope: !936)
!969 = !DILocation(line: 48, column: 13, scope: !936)
!970 = !DILocation(line: 49, column: 5, scope: !936)
!971 = !DILocation(line: 52, column: 27, scope: !936)
!972 = !DILocation(line: 52, column: 25, scope: !936)
!973 = !DILocation(line: 52, column: 19, scope: !936)
!974 = !DILocation(line: 52, column: 13, scope: !936)
!975 = !DILocation(line: 53, column: 13, scope: !936)
!976 = !DILocation(line: 55, column: 5, scope: !936)
!977 = !DILocation(line: 0, scope: !936)
!978 = !DILocation(line: 56, column: 1, scope: !936)
!979 = distinct !DISubprogram(name: "__paritydi2", scope: !85, file: !85, line: 20, type: !181, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !84, retainedNodes: !140)
!980 = !DILocation(line: 23, column: 7, scope: !979)
!981 = !DILocation(line: 23, column: 11, scope: !979)
!982 = !DILocation(line: 24, column: 26, scope: !979)
!983 = !DILocation(line: 24, column: 28, scope: !979)
!984 = !DILocation(line: 24, column: 39, scope: !979)
!985 = !DILocation(line: 24, column: 33, scope: !979)
!986 = !DILocation(line: 24, column: 12, scope: !979)
!987 = !DILocation(line: 24, column: 5, scope: !979)
!988 = distinct !DISubprogram(name: "__paritysi2", scope: !87, file: !87, line: 20, type: !181, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !86, retainedNodes: !140)
!989 = !DILocation(line: 23, column: 12, scope: !988)
!990 = !DILocation(line: 23, column: 7, scope: !988)
!991 = !DILocation(line: 24, column: 12, scope: !988)
!992 = !DILocation(line: 24, column: 7, scope: !988)
!993 = !DILocation(line: 25, column: 12, scope: !988)
!994 = !DILocation(line: 25, column: 7, scope: !988)
!995 = !DILocation(line: 26, column: 26, scope: !988)
!996 = !DILocation(line: 26, column: 20, scope: !988)
!997 = !DILocation(line: 26, column: 34, scope: !988)
!998 = !DILocation(line: 26, column: 5, scope: !988)
!999 = distinct !DISubprogram(name: "__popcountdi2", scope: !91, file: !91, line: 20, type: !181, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !90, retainedNodes: !140)
!1000 = !DILocation(line: 23, column: 20, scope: !999)
!1001 = !DILocation(line: 23, column: 26, scope: !999)
!1002 = !DILocation(line: 23, column: 13, scope: !999)
!1003 = !DILocation(line: 25, column: 15, scope: !999)
!1004 = !DILocation(line: 25, column: 21, scope: !999)
!1005 = !DILocation(line: 25, column: 52, scope: !999)
!1006 = !DILocation(line: 25, column: 46, scope: !999)
!1007 = !DILocation(line: 27, column: 20, scope: !999)
!1008 = !DILocation(line: 27, column: 14, scope: !999)
!1009 = !DILocation(line: 27, column: 27, scope: !999)
!1010 = !DILocation(line: 29, column: 34, scope: !999)
!1011 = !DILocation(line: 29, column: 28, scope: !999)
!1012 = !DILocation(line: 29, column: 16, scope: !999)
!1013 = !DILocation(line: 32, column: 16, scope: !999)
!1014 = !DILocation(line: 32, column: 11, scope: !999)
!1015 = !DILocation(line: 35, column: 20, scope: !999)
!1016 = !DILocation(line: 35, column: 15, scope: !999)
!1017 = !DILocation(line: 35, column: 27, scope: !999)
!1018 = !DILocation(line: 35, column: 5, scope: !999)
!1019 = distinct !DISubprogram(name: "__popcountsi2", scope: !93, file: !93, line: 20, type: !181, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !92, retainedNodes: !140)
!1020 = !DILocation(line: 23, column: 17, scope: !1019)
!1021 = !DILocation(line: 23, column: 23, scope: !1019)
!1022 = !DILocation(line: 23, column: 11, scope: !1019)
!1023 = !DILocation(line: 25, column: 13, scope: !1019)
!1024 = !DILocation(line: 25, column: 19, scope: !1019)
!1025 = !DILocation(line: 25, column: 38, scope: !1019)
!1026 = !DILocation(line: 25, column: 33, scope: !1019)
!1027 = !DILocation(line: 27, column: 17, scope: !1019)
!1028 = !DILocation(line: 27, column: 12, scope: !1019)
!1029 = !DILocation(line: 27, column: 24, scope: !1019)
!1030 = !DILocation(line: 29, column: 17, scope: !1019)
!1031 = !DILocation(line: 29, column: 12, scope: !1019)
!1032 = !DILocation(line: 32, column: 20, scope: !1019)
!1033 = !DILocation(line: 32, column: 15, scope: !1019)
!1034 = !DILocation(line: 32, column: 27, scope: !1019)
!1035 = !DILocation(line: 32, column: 5, scope: !1019)
!1036 = distinct !DISubprogram(name: "__subvdi3", scope: !97, file: !97, line: 22, type: !181, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !96, retainedNodes: !140)
!1037 = !DILocation(line: 24, column: 27, scope: !1036)
!1038 = !DILocation(line: 25, column: 11, scope: !1036)
!1039 = !DILocation(line: 25, column: 9, scope: !1036)
!1040 = !DILocation(line: 27, column: 15, scope: !1036)
!1041 = !DILocation(line: 27, column: 13, scope: !1036)
!1042 = !DILocation(line: 28, column: 13, scope: !1036)
!1043 = !DILocation(line: 29, column: 5, scope: !1036)
!1044 = !DILocation(line: 32, column: 15, scope: !1036)
!1045 = !DILocation(line: 32, column: 13, scope: !1036)
!1046 = !DILocation(line: 33, column: 13, scope: !1036)
!1047 = !DILocation(line: 35, column: 5, scope: !1036)
!1048 = distinct !DISubprogram(name: "__subvsi3", scope: !99, file: !99, line: 22, type: !181, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !98, retainedNodes: !140)
!1049 = !DILocation(line: 24, column: 27, scope: !1048)
!1050 = !DILocation(line: 25, column: 11, scope: !1048)
!1051 = !DILocation(line: 25, column: 9, scope: !1048)
!1052 = !DILocation(line: 27, column: 15, scope: !1048)
!1053 = !DILocation(line: 27, column: 13, scope: !1048)
!1054 = !DILocation(line: 28, column: 13, scope: !1048)
!1055 = !DILocation(line: 29, column: 5, scope: !1048)
!1056 = !DILocation(line: 32, column: 15, scope: !1048)
!1057 = !DILocation(line: 32, column: 13, scope: !1048)
!1058 = !DILocation(line: 33, column: 13, scope: !1048)
!1059 = !DILocation(line: 35, column: 5, scope: !1048)
!1060 = distinct !DISubprogram(name: "__ucmpdi2", scope: !103, file: !103, line: 23, type: !181, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !102, retainedNodes: !140)
!1061 = !DILocation(line: 26, column: 7, scope: !1060)
!1062 = !DILocation(line: 26, column: 11, scope: !1060)
!1063 = !DILocation(line: 28, column: 7, scope: !1060)
!1064 = !DILocation(line: 28, column: 11, scope: !1060)
!1065 = !DILocation(line: 29, column: 11, scope: !1060)
!1066 = !DILocation(line: 29, column: 13, scope: !1060)
!1067 = !DILocation(line: 29, column: 22, scope: !1060)
!1068 = !DILocation(line: 29, column: 24, scope: !1060)
!1069 = !DILocation(line: 29, column: 18, scope: !1060)
!1070 = !DILocation(line: 29, column: 9, scope: !1060)
!1071 = !DILocation(line: 30, column: 9, scope: !1060)
!1072 = !DILocation(line: 31, column: 11, scope: !1060)
!1073 = !DILocation(line: 31, column: 13, scope: !1060)
!1074 = !DILocation(line: 31, column: 22, scope: !1060)
!1075 = !DILocation(line: 31, column: 24, scope: !1060)
!1076 = !DILocation(line: 31, column: 18, scope: !1060)
!1077 = !DILocation(line: 31, column: 9, scope: !1060)
!1078 = !DILocation(line: 32, column: 9, scope: !1060)
!1079 = !DILocation(line: 33, column: 13, scope: !1060)
!1080 = !DILocation(line: 33, column: 23, scope: !1060)
!1081 = !DILocation(line: 33, column: 17, scope: !1060)
!1082 = !DILocation(line: 33, column: 9, scope: !1060)
!1083 = !DILocation(line: 34, column: 9, scope: !1060)
!1084 = !DILocation(line: 35, column: 13, scope: !1060)
!1085 = !DILocation(line: 35, column: 23, scope: !1060)
!1086 = !DILocation(line: 35, column: 17, scope: !1060)
!1087 = !DILocation(line: 35, column: 9, scope: !1060)
!1088 = !DILocation(line: 36, column: 9, scope: !1060)
!1089 = !DILocation(line: 37, column: 5, scope: !1060)
!1090 = !DILocation(line: 0, scope: !1060)
!1091 = !DILocation(line: 38, column: 1, scope: !1060)
!1092 = distinct !DISubprogram(name: "__aeabi_ulcmp", scope: !103, file: !103, line: 46, type: !181, scopeLine: 47, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !102, retainedNodes: !140)
!1093 = !DILocation(line: 48, column: 9, scope: !1092)
!1094 = !DILocation(line: 48, column: 25, scope: !1092)
!1095 = !DILocation(line: 48, column: 2, scope: !1092)
!1096 = distinct !DISubprogram(name: "__udivdi3", scope: !107, file: !107, line: 20, type: !181, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !106, retainedNodes: !140)
!1097 = !DILocation(line: 22, column: 12, scope: !1096)
!1098 = !DILocation(line: 22, column: 5, scope: !1096)
!1099 = distinct !DISubprogram(name: "__udivmodsi4", scope: !111, file: !111, line: 20, type: !181, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !110, retainedNodes: !140)
!1100 = !DILocation(line: 22, column: 14, scope: !1099)
!1101 = !DILocation(line: 23, column: 16, scope: !1099)
!1102 = !DILocation(line: 23, column: 12, scope: !1099)
!1103 = !DILocation(line: 23, column: 8, scope: !1099)
!1104 = !DILocation(line: 24, column: 3, scope: !1099)
!1105 = distinct !DISubprogram(name: "__udivsi3", scope: !115, file: !115, line: 25, type: !181, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !114, retainedNodes: !140)
!1106 = !DILocation(line: 32, column: 11, scope: !1105)
!1107 = !DILocation(line: 32, column: 9, scope: !1105)
!1108 = !DILocation(line: 33, column: 9, scope: !1105)
!1109 = !DILocation(line: 34, column: 11, scope: !1105)
!1110 = !DILocation(line: 34, column: 9, scope: !1105)
!1111 = !DILocation(line: 35, column: 9, scope: !1105)
!1112 = !DILocation(line: 36, column: 10, scope: !1105)
!1113 = !DILocation(line: 36, column: 29, scope: !1105)
!1114 = !DILocation(line: 36, column: 27, scope: !1105)
!1115 = !DILocation(line: 38, column: 12, scope: !1105)
!1116 = !DILocation(line: 38, column: 9, scope: !1105)
!1117 = !DILocation(line: 39, column: 9, scope: !1105)
!1118 = !DILocation(line: 40, column: 12, scope: !1105)
!1119 = !DILocation(line: 40, column: 9, scope: !1105)
!1120 = !DILocation(line: 41, column: 9, scope: !1105)
!1121 = !DILocation(line: 42, column: 5, scope: !1105)
!1122 = !DILocation(line: 45, column: 28, scope: !1105)
!1123 = !DILocation(line: 45, column: 11, scope: !1105)
!1124 = !DILocation(line: 46, column: 11, scope: !1105)
!1125 = !DILocation(line: 48, column: 5, scope: !1105)
!1126 = !DILocation(line: 0, scope: !1105)
!1127 = !DILocation(line: 48, column: 15, scope: !1105)
!1128 = !DILocation(line: 51, column: 22, scope: !1105)
!1129 = !DILocation(line: 60, column: 41, scope: !1105)
!1130 = !DILocation(line: 63, column: 5, scope: !1105)
!1131 = !DILocation(line: 62, column: 16, scope: !1105)
!1132 = !DILocation(line: 62, column: 11, scope: !1105)
!1133 = !DILocation(line: 61, column: 19, scope: !1105)
!1134 = !DILocation(line: 52, column: 16, scope: !1105)
!1135 = !DILocation(line: 52, column: 22, scope: !1105)
!1136 = !DILocation(line: 48, column: 20, scope: !1105)
!1137 = distinct !{!1137, !1125, !1130, !178}
!1138 = !DILocation(line: 64, column: 12, scope: !1105)
!1139 = !DILocation(line: 64, column: 18, scope: !1105)
!1140 = !DILocation(line: 65, column: 5, scope: !1105)
!1141 = !DILocation(line: 66, column: 1, scope: !1105)
!1142 = distinct !DISubprogram(name: "__umoddi3", scope: !119, file: !119, line: 20, type: !181, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !118, retainedNodes: !140)
!1143 = !DILocation(line: 23, column: 5, scope: !1142)
!1144 = !DILocation(line: 24, column: 12, scope: !1142)
!1145 = !DILocation(line: 24, column: 5, scope: !1142)
!1146 = distinct !DISubprogram(name: "__umodsi3", scope: !121, file: !121, line: 20, type: !181, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !120, retainedNodes: !140)
!1147 = !DILocation(line: 22, column: 16, scope: !1146)
!1148 = !DILocation(line: 22, column: 32, scope: !1146)
!1149 = !DILocation(line: 22, column: 14, scope: !1146)
!1150 = !DILocation(line: 22, column: 5, scope: !1146)
!1151 = distinct !DISubprogram(name: "memcpy", scope: !125, file: !125, line: 3, type: !181, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !124, retainedNodes: !140)
!1152 = !DILocation(line: 8, column: 6, scope: !1151)
!1153 = !DILocation(line: 0, scope: !1151)
!1154 = !DILocation(line: 8, column: 19, scope: !1151)
!1155 = !DILocation(line: 8, column: 2, scope: !1151)
!1156 = !DILocation(line: 9, column: 21, scope: !1151)
!1157 = !DILocation(line: 9, column: 3, scope: !1151)
!1158 = !DILocation(line: 9, column: 19, scope: !1151)
!1159 = !DILocation(line: 10, column: 2, scope: !1151)
!1160 = !DILocation(line: 8, column: 26, scope: !1151)
!1161 = distinct !{!1161, !1155, !1159, !178}
!1162 = !DILocation(line: 11, column: 1, scope: !1151)
!1163 = distinct !DISubprogram(name: "memset", scope: !125, file: !125, line: 13, type: !181, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !124, retainedNodes: !140)
!1164 = !DILocation(line: 17, column: 6, scope: !1163)
!1165 = !DILocation(line: 0, scope: !1163)
!1166 = !DILocation(line: 17, column: 19, scope: !1163)
!1167 = !DILocation(line: 17, column: 2, scope: !1163)
!1168 = !DILocation(line: 18, column: 13, scope: !1163)
!1169 = !DILocation(line: 18, column: 3, scope: !1163)
!1170 = !DILocation(line: 18, column: 11, scope: !1163)
!1171 = !DILocation(line: 19, column: 2, scope: !1163)
!1172 = !DILocation(line: 17, column: 26, scope: !1163)
!1173 = distinct !{!1173, !1167, !1171, !178}
!1174 = !DILocation(line: 20, column: 2, scope: !1163)
