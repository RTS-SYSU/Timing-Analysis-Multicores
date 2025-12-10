; ModuleID = 'unoptimized.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv4t-unknown-unknown"

%struct.g723_enc_state_t = type { i32, i16, i16, i16, i16, [2 x i16], [6 x i16], [2 x i16], [6 x i16], [2 x i16], i8 }
%union.dwords = type { i64 }
%struct.anon = type { i32, i32 }

@g723_enc_INPUT = dso_local global [256 x i32] [i32 51, i32 17, i32 31, i32 53, i32 95, i32 17, i32 70, i32 22, i32 49, i32 12, i32 8, i32 39, i32 28, i32 37, i32 99, i32 54, i32 77, i32 65, i32 77, i32 78, i32 83, i32 15, i32 63, i32 31, i32 35, i32 92, i32 52, i32 40, i32 61, i32 79, i32 94, i32 87, i32 87, i32 68, i32 76, i32 58, i32 39, i32 35, i32 20, i32 83, i32 42, i32 46, i32 98, i32 12, i32 21, i32 96, i32 74, i32 41, i32 78, i32 76, i32 96, i32 2, i32 32, i32 76, i32 24, i32 59, i32 4, i32 96, i32 32, i32 5, i32 44, i32 92, i32 57, i32 12, i32 57, i32 25, i32 50, i32 23, i32 48, i32 41, i32 88, i32 43, i32 36, i32 38, i32 4, i32 16, i32 52, i32 70, i32 9, i32 40, i32 78, i32 24, i32 34, i32 23, i32 30, i32 30, i32 89, i32 3, i32 65, i32 40, i32 68, i32 73, i32 94, i32 23, i32 84, i32 97, i32 78, i32 43, i32 68, i32 81, i32 16, i32 28, i32 13, i32 87, i32 75, i32 21, i32 14, i32 29, i32 81, i32 22, i32 56, i32 72, i32 19, i32 99, i32 25, i32 43, i32 76, i32 86, i32 90, i32 98, i32 39, i32 43, i32 12, i32 46, i32 24, i32 99, i32 65, i32 61, i32 24, i32 45, i32 79, i32 7, i32 48, i32 15, i32 24, i32 95, i32 62, i32 99, i32 48, i32 80, i32 75, i32 38, i32 48, i32 53, i32 9, i32 60, i32 35, i32 14, i32 78, i32 71, i32 45, i32 71, i32 9, i32 97, i32 55, i32 74, i32 58, i32 64, i32 78, i32 18, i32 30, i32 28, i32 69, i32 29, i32 57, i32 42, i32 30, i32 44, i32 57, i32 49, i32 61, i32 42, i32 13, i32 25, i32 3, i32 98, i32 11, i32 38, i32 65, i32 35, i32 55, i32 36, i32 57, i32 48, i32 16, i32 62, i32 17, i32 56, i32 29, i32 88, i32 84, i32 85, i32 90, i32 60, i32 54, i32 16, i32 66, i32 69, i32 26, i32 10, i32 82, i32 19, i32 42, i32 35, i32 84, i32 13, i32 26, i32 17, i32 48, i32 38, i32 50, i32 50, i32 35, i32 53, i32 12, i32 52, i32 61, i32 74, i32 56, i32 34, i32 80, i32 59, i32 26, i32 67, i32 55, i32 79, i32 89, i32 89, i32 6, i32 80, i32 91, i32 65, i32 16, i32 30, i32 16, i32 28, i32 85, i32 54, i32 3, i32 20, i32 2, i32 36, i32 62, i32 52, i32 55, i32 15, i32 83, i32 3, i32 2, i32 38, i32 62, i32 2, i32 63, i32 92, i32 37, i32 73], align 4, !dbg !0
@g723_enc_power2 = dso_local global [15 x i16] [i16 1, i16 2, i16 4, i16 8, i16 16, i16 32, i16 64, i16 128, i16 256, i16 512, i16 1024, i16 2048, i16 4096, i16 8192, i16 16384], align 2, !dbg !7
@g723_enc_qtab_723_24 = dso_local global [3 x i16] [i16 8, i16 218, i16 331], align 2, !dbg !14
@g723_enc_dqlntab = dso_local global [16 x i16] [i16 -2048, i16 4, i16 135, i16 213, i16 273, i16 323, i16 373, i16 425, i16 425, i16 373, i16 323, i16 273, i16 213, i16 135, i16 4, i16 -2048], align 2, !dbg !19
@g723_enc_witab = dso_local global [16 x i16] [i16 -12, i16 18, i16 41, i16 64, i16 112, i16 198, i16 355, i16 1122, i16 1122, i16 355, i16 198, i16 112, i16 64, i16 41, i16 18, i16 -12], align 2, !dbg !24
@g723_enc_fitab = dso_local global [16 x i16] [i16 0, i16 0, i16 0, i16 512, i16 512, i16 512, i16 1536, i16 3584, i16 3584, i16 1536, i16 512, i16 512, i16 512, i16 0, i16 0, i16 0], align 2, !dbg !26
@g723_enc_pack_output.out_buffer = internal global i32 0, align 4, !dbg !28
@g723_enc_pack_output.out_bits = internal global i32 0, align 4, !dbg !36
@g723_enc_pack_output.i = internal global i32 0, align 4, !dbg !38
@g723_enc_OUTPUT = dso_local global [256 x i32] zeroinitializer, align 4, !dbg !63
@g723_enc_state = dso_local global %struct.g723_enc_state_t zeroinitializer, align 4, !dbg !40
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
define dso_local arm_aapcs_vfpcc i32 @g723_enc_fmult(i32 noundef %an, i32 noundef %srn) #0 !dbg !191 {
entry:
  call void @llvm.dbg.value(metadata i32 %an, metadata !194, metadata !DIExpression()), !dbg !195
  call void @llvm.dbg.value(metadata i32 %srn, metadata !196, metadata !DIExpression()), !dbg !195
  %cmp = icmp sgt i32 %an, 0, !dbg !197
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !198

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !198

cond.false:                                       ; preds = %entry
  %sub = sub nsw i32 0, %an, !dbg !199
  %and = and i32 %sub, 8191, !dbg !200
  br label %cond.end, !dbg !198

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %an, %cond.true ], [ %and, %cond.false ], !dbg !198
  call void @llvm.dbg.value(metadata i32 %cond, metadata !201, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !195
  %sext = shl i32 %cond, 16, !dbg !202
  %conv2 = ashr exact i32 %sext, 16, !dbg !202
  %call = call arm_aapcs_vfpcc i32 @g723_enc_quan(i32 noundef %conv2, i16* noundef getelementptr inbounds ([15 x i16], [15 x i16]* @g723_enc_power2, i32 0, i32 0), i32 noundef 3) #4, !dbg !203
  %0 = trunc i32 %call to i16, !dbg !203
  %conv4 = add i16 %0, -6, !dbg !203
  call void @llvm.dbg.value(metadata i16 %conv4, metadata !204, metadata !DIExpression()), !dbg !195
  %sext1.mask = and i32 %cond, 65535, !dbg !205
  %cmp6 = icmp eq i32 %sext1.mask, 0, !dbg !205
  br i1 %cmp6, label %cond.true8, label %cond.false9, !dbg !206

cond.true8:                                       ; preds = %cond.end
  br label %cond.end22, !dbg !206

cond.false9:                                      ; preds = %cond.end
  %cmp11 = icmp sgt i16 %conv4, -1, !dbg !207
  br i1 %cmp11, label %cond.true13, label %cond.false16, !dbg !208

cond.true13:                                      ; preds = %cond.false9
  %sext8 = shl i32 %cond, 16, !dbg !209
  %conv14 = ashr exact i32 %sext8, 16, !dbg !209
  %conv159 = zext i16 %conv4 to i32, !dbg !210
  %shr = ashr i32 %conv14, %conv159, !dbg !210
  br label %cond.end20, !dbg !208

cond.false16:                                     ; preds = %cond.false9
  %sext2 = shl i32 %cond, 16, !dbg !211
  %conv17 = ashr exact i32 %sext2, 16, !dbg !211
  %conv18 = sext i16 %conv4 to i32, !dbg !212
  %sub19 = sub nsw i32 0, %conv18, !dbg !213
  %shl = shl i32 %conv17, %sub19, !dbg !214
  br label %cond.end20, !dbg !208

cond.end20:                                       ; preds = %cond.false16, %cond.true13
  %cond21 = phi i32 [ %shr, %cond.true13 ], [ %shl, %cond.false16 ], !dbg !208
  br label %cond.end22, !dbg !206

cond.end22:                                       ; preds = %cond.end20, %cond.true8
  %cond23 = phi i32 [ 32, %cond.true8 ], [ %cond21, %cond.end20 ], !dbg !206
  call void @llvm.dbg.value(metadata i32 %cond23, metadata !215, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !195
  %1 = trunc i32 %srn to i16, !dbg !216
  %2 = lshr i16 %1, 6, !dbg !216
  %3 = and i16 %2, 15, !dbg !216
  %4 = add i16 %3, %conv4, !dbg !216
  %conv29 = add i16 %4, -13, !dbg !216
  call void @llvm.dbg.value(metadata i16 %conv29, metadata !217, metadata !DIExpression()), !dbg !195
  %sext4 = shl i32 %cond23, 16, !dbg !218
  %conv30 = ashr exact i32 %sext4, 16, !dbg !218
  %and31 = and i32 %srn, 63, !dbg !219
  %mul = mul nsw i32 %conv30, %and31, !dbg !220
  %add32 = add nsw i32 %mul, 48, !dbg !221
  %5 = lshr i32 %add32, 4, !dbg !222
  call void @llvm.dbg.value(metadata i32 %5, metadata !223, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !195
  %cmp36 = icmp sgt i16 %conv29, -1, !dbg !224
  br i1 %cmp36, label %cond.true38, label %cond.false43, !dbg !225

cond.true38:                                      ; preds = %cond.end22
  call void @llvm.dbg.value(metadata i32 %5, metadata !223, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !195
  %conv407 = zext i16 %conv29 to i32, !dbg !226
  %shl41 = shl i32 %5, %conv407, !dbg !226
  %and42 = and i32 %shl41, 32767, !dbg !227
  br label %cond.end48, !dbg !225

cond.false43:                                     ; preds = %cond.end22
  %sext5 = shl i32 %5, 16, !dbg !228
  %conv44 = ashr exact i32 %sext5, 16, !dbg !228
  %conv45 = sext i16 %conv29 to i32, !dbg !229
  %sub46 = sub nsw i32 0, %conv45, !dbg !230
  %shr47 = ashr i32 %conv44, %sub46, !dbg !231
  br label %cond.end48, !dbg !225

cond.end48:                                       ; preds = %cond.false43, %cond.true38
  %cond49 = phi i32 [ %and42, %cond.true38 ], [ %shr47, %cond.false43 ], !dbg !225
  call void @llvm.dbg.value(metadata i32 %cond49, metadata !232, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !195
  %xor = xor i32 %an, %srn, !dbg !233
  %cmp51 = icmp slt i32 %xor, 0, !dbg !234
  br i1 %cmp51, label %cond.true53, label %cond.false56, !dbg !235

cond.true53:                                      ; preds = %cond.end48
  call void @llvm.dbg.value(metadata i32 %cond49, metadata !232, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !195
  %sub55 = sub nsw i32 0, %cond49, !dbg !236
  br label %cond.end58, !dbg !235

cond.false56:                                     ; preds = %cond.end48
  br label %cond.end58, !dbg !235

cond.end58:                                       ; preds = %cond.false56, %cond.true53
  %cond59 = phi i32 [ %sub55, %cond.true53 ], [ %cond49, %cond.false56 ], !dbg !235
  ret i32 %cond59, !dbg !237
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @g723_enc_quan(i32 noundef %val, i16* noundef %table, i32 noundef %size) #0 !dbg !238 {
entry:
  call void @llvm.dbg.value(metadata i32 %val, metadata !242, metadata !DIExpression()), !dbg !243
  call void @llvm.dbg.value(metadata i16* %table, metadata !244, metadata !DIExpression()), !dbg !243
  call void @llvm.dbg.value(metadata i32 %size, metadata !245, metadata !DIExpression()), !dbg !243
  call void @llvm.dbg.value(metadata i32 0, metadata !246, metadata !DIExpression()), !dbg !243
  call void @llvm.dbg.value(metadata i32 1, metadata !247, metadata !DIExpression()), !dbg !243
  call void @llvm.dbg.value(metadata i32 0, metadata !248, metadata !DIExpression()), !dbg !243
  %smax = call i32 @llvm.smax.i32(i32 %size, i32 0), !dbg !249
  br label %for.cond, !dbg !249

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !dbg !251
  %j.0 = phi i32 [ 0, %entry ], [ %j.2, %for.inc ], !dbg !243
  %table.addr.0 = phi i16* [ %table, %entry ], [ %table.addr.1, %for.inc ]
  %k.0 = phi i32 [ 1, %entry ], [ %k.2, %for.inc ], !dbg !243
  call void @llvm.dbg.value(metadata i32 %k.0, metadata !247, metadata !DIExpression()), !dbg !243
  call void @llvm.dbg.value(metadata i16* %table.addr.0, metadata !244, metadata !DIExpression()), !dbg !243
  call void @llvm.dbg.value(metadata i32 %j.0, metadata !246, metadata !DIExpression()), !dbg !243
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !248, metadata !DIExpression()), !dbg !243
  %exitcond.not = icmp eq i32 %i.0, %smax, !dbg !252
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !254

for.body:                                         ; preds = %for.cond
  %tobool.not = icmp eq i32 %k.0, 0, !dbg !255
  br i1 %tobool.not, label %if.end4, label %if.then, !dbg !258

if.then:                                          ; preds = %for.body
  %incdec.ptr = getelementptr inbounds i16, i16* %table.addr.0, i32 1, !dbg !259
  call void @llvm.dbg.value(metadata i16* %incdec.ptr, metadata !244, metadata !DIExpression()), !dbg !243
  %0 = load i16, i16* %table.addr.0, align 2, !dbg !262
  %conv = sext i16 %0 to i32, !dbg !262
  %cmp1 = icmp sgt i32 %conv, %val, !dbg !263
  br i1 %cmp1, label %if.then3, label %if.end, !dbg !264

if.then3:                                         ; preds = %if.then
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !246, metadata !DIExpression()), !dbg !243
  call void @llvm.dbg.value(metadata i32 0, metadata !247, metadata !DIExpression()), !dbg !243
  br label %if.end, !dbg !265

if.end:                                           ; preds = %if.then3, %if.then
  %j.1 = phi i32 [ %i.0, %if.then3 ], [ %j.0, %if.then ], !dbg !243
  %k.1 = phi i32 [ 0, %if.then3 ], [ %k.0, %if.then ], !dbg !243
  call void @llvm.dbg.value(metadata i32 %k.1, metadata !247, metadata !DIExpression()), !dbg !243
  call void @llvm.dbg.value(metadata i32 %j.1, metadata !246, metadata !DIExpression()), !dbg !243
  br label %if.end4, !dbg !267

if.end4:                                          ; preds = %if.end, %for.body
  %j.2 = phi i32 [ %j.1, %if.end ], [ %j.0, %for.body ], !dbg !243
  %table.addr.1 = phi i16* [ %incdec.ptr, %if.end ], [ %table.addr.0, %for.body ]
  %k.2 = phi i32 [ %k.1, %if.end ], [ %k.0, %for.body ], !dbg !243
  call void @llvm.dbg.value(metadata i32 %k.2, metadata !247, metadata !DIExpression()), !dbg !243
  call void @llvm.dbg.value(metadata i16* %table.addr.1, metadata !244, metadata !DIExpression()), !dbg !243
  call void @llvm.dbg.value(metadata i32 %j.2, metadata !246, metadata !DIExpression()), !dbg !243
  br label %for.inc, !dbg !268

for.inc:                                          ; preds = %if.end4
  %inc = add nuw i32 %i.0, 1, !dbg !269
  call void @llvm.dbg.value(metadata i32 %inc, metadata !248, metadata !DIExpression()), !dbg !243
  br label %for.cond, !dbg !270, !llvm.loop !271

for.end:                                          ; preds = %for.cond
  ret i32 %j.0, !dbg !274
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @g723_enc_abs(i32 noundef %num) #0 !dbg !275 {
entry:
  call void @llvm.dbg.value(metadata i32 %num, metadata !278, metadata !DIExpression()), !dbg !279
  %cmp = icmp slt i32 %num, 0, !dbg !280
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !281

cond.true:                                        ; preds = %entry
  %sub = sub nsw i32 0, %num, !dbg !282
  br label %cond.end, !dbg !281

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !281

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub, %cond.true ], [ %num, %cond.false ], !dbg !281
  ret i32 %cond, !dbg !283
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @g723_enc_predictor_zero(%struct.g723_enc_state_t* noundef %state_ptr) #0 !dbg !284 {
entry:
  call void @llvm.dbg.value(metadata %struct.g723_enc_state_t* %state_ptr, metadata !288, metadata !DIExpression()), !dbg !289
  %arrayidx = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %state_ptr, i32 0, i32 6, i32 0, !dbg !290
  %0 = load i16, i16* %arrayidx, align 4, !dbg !290
  %1 = ashr i16 %0, 2, !dbg !291
  %shr = sext i16 %1 to i32, !dbg !291
  %arrayidx1 = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %state_ptr, i32 0, i32 8, i32 0, !dbg !292
  %2 = load i16, i16* %arrayidx1, align 4, !dbg !292
  %conv2 = sext i16 %2 to i32, !dbg !292
  %call = call arm_aapcs_vfpcc i32 @g723_enc_fmult(i32 noundef %shr, i32 noundef %conv2) #4, !dbg !293
  call void @llvm.dbg.value(metadata i32 %call, metadata !294, metadata !DIExpression()), !dbg !289
  call void @llvm.dbg.value(metadata i32 1, metadata !295, metadata !DIExpression()), !dbg !289
  br label %for.cond, !dbg !296

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 1, %entry ], [ %inc, %for.inc ], !dbg !298
  %sezi.0 = phi i32 [ %call, %entry ], [ %add, %for.inc ], !dbg !289
  call void @llvm.dbg.value(metadata i32 %sezi.0, metadata !294, metadata !DIExpression()), !dbg !289
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !295, metadata !DIExpression()), !dbg !289
  %exitcond.not = icmp eq i32 %i.0, 6, !dbg !299
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !301

for.body:                                         ; preds = %for.cond
  %arrayidx5 = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %state_ptr, i32 0, i32 6, i32 %i.0, !dbg !302
  %3 = load i16, i16* %arrayidx5, align 2, !dbg !302
  %4 = ashr i16 %3, 2, !dbg !303
  %shr7 = sext i16 %4 to i32, !dbg !303
  %arrayidx9 = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %state_ptr, i32 0, i32 8, i32 %i.0, !dbg !304
  %5 = load i16, i16* %arrayidx9, align 2, !dbg !304
  %conv10 = sext i16 %5 to i32, !dbg !304
  %call11 = call arm_aapcs_vfpcc i32 @g723_enc_fmult(i32 noundef %shr7, i32 noundef %conv10) #4, !dbg !305
  call void @llvm.dbg.value(metadata !DIArgList(i32 %sezi.0, i32 %call11), metadata !294, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !289
  br label %for.inc, !dbg !306

for.inc:                                          ; preds = %for.body
  %add = add nsw i32 %sezi.0, %call11, !dbg !307
  call void @llvm.dbg.value(metadata i32 %add, metadata !294, metadata !DIExpression()), !dbg !289
  %inc = add nuw nsw i32 %i.0, 1, !dbg !308
  call void @llvm.dbg.value(metadata i32 %inc, metadata !295, metadata !DIExpression()), !dbg !289
  br label %for.cond, !dbg !309, !llvm.loop !310

for.end:                                          ; preds = %for.cond
  ret i32 %sezi.0, !dbg !312
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @g723_enc_predictor_pole(%struct.g723_enc_state_t* noundef %state_ptr) #0 !dbg !313 {
entry:
  call void @llvm.dbg.value(metadata %struct.g723_enc_state_t* %state_ptr, metadata !314, metadata !DIExpression()), !dbg !315
  %arrayidx = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %state_ptr, i32 0, i32 5, i32 1, !dbg !316
  %0 = load i16, i16* %arrayidx, align 2, !dbg !316
  %1 = ashr i16 %0, 2, !dbg !317
  %shr = sext i16 %1 to i32, !dbg !317
  %arrayidx1 = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %state_ptr, i32 0, i32 9, i32 1, !dbg !318
  %2 = load i16, i16* %arrayidx1, align 2, !dbg !318
  %conv2 = sext i16 %2 to i32, !dbg !318
  %call = call arm_aapcs_vfpcc i32 @g723_enc_fmult(i32 noundef %shr, i32 noundef %conv2) #4, !dbg !319
  %arrayidx4 = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %state_ptr, i32 0, i32 5, i32 0, !dbg !320
  %3 = load i16, i16* %arrayidx4, align 4, !dbg !320
  %4 = ashr i16 %3, 2, !dbg !321
  %shr6 = sext i16 %4 to i32, !dbg !321
  %arrayidx8 = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %state_ptr, i32 0, i32 9, i32 0, !dbg !322
  %5 = load i16, i16* %arrayidx8, align 4, !dbg !322
  %conv9 = sext i16 %5 to i32, !dbg !322
  %call10 = call arm_aapcs_vfpcc i32 @g723_enc_fmult(i32 noundef %shr6, i32 noundef %conv9) #4, !dbg !323
  %add = add nsw i32 %call, %call10, !dbg !324
  ret i32 %add, !dbg !325
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @g723_enc_step_size(%struct.g723_enc_state_t* noundef %state_ptr) #0 !dbg !326 {
entry:
  call void @llvm.dbg.value(metadata %struct.g723_enc_state_t* %state_ptr, metadata !327, metadata !DIExpression()), !dbg !328
  %ap = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %state_ptr, i32 0, i32 4, !dbg !329
  %0 = load i16, i16* %ap, align 2, !dbg !329
  %cmp = icmp sgt i16 %0, 255, !dbg !331
  br i1 %cmp, label %if.then, label %if.else, !dbg !332

if.then:                                          ; preds = %entry
  %yu = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %state_ptr, i32 0, i32 1, !dbg !333
  %1 = load i16, i16* %yu, align 4, !dbg !333
  %conv2 = sext i16 %1 to i32, !dbg !334
  br label %return, !dbg !335

if.else:                                          ; preds = %entry
  %yl = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %state_ptr, i32 0, i32 0, !dbg !336
  %2 = load i32, i32* %yl, align 4, !dbg !336
  %shr = ashr i32 %2, 6, !dbg !338
  call void @llvm.dbg.value(metadata i32 %shr, metadata !339, metadata !DIExpression()), !dbg !328
  %yu3 = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %state_ptr, i32 0, i32 1, !dbg !340
  %3 = load i16, i16* %yu3, align 4, !dbg !340
  %conv4 = sext i16 %3 to i32, !dbg !341
  %sub = sub nsw i32 %conv4, %shr, !dbg !342
  call void @llvm.dbg.value(metadata i32 %sub, metadata !343, metadata !DIExpression()), !dbg !328
  %ap5 = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %state_ptr, i32 0, i32 4, !dbg !344
  %4 = load i16, i16* %ap5, align 2, !dbg !344
  %5 = ashr i16 %4, 2, !dbg !345
  %shr7 = sext i16 %5 to i32, !dbg !345
  call void @llvm.dbg.value(metadata i32 %shr7, metadata !346, metadata !DIExpression()), !dbg !328
  %cmp8 = icmp sgt i32 %sub, 0, !dbg !347
  br i1 %cmp8, label %if.then10, label %if.else12, !dbg !349

if.then10:                                        ; preds = %if.else
  %mul = mul nsw i32 %sub, %shr7, !dbg !350
  %shr11 = ashr i32 %mul, 6, !dbg !351
  %add = add nsw i32 %shr, %shr11, !dbg !352
  call void @llvm.dbg.value(metadata i32 %add, metadata !339, metadata !DIExpression()), !dbg !328
  br label %if.end20, !dbg !353

if.else12:                                        ; preds = %if.else
  %cmp13 = icmp slt i32 %sub, 0, !dbg !354
  br i1 %cmp13, label %if.then15, label %if.end, !dbg !356

if.then15:                                        ; preds = %if.else12
  %mul16 = mul nsw i32 %sub, %shr7, !dbg !357
  %add17 = add nsw i32 %mul16, 63, !dbg !358
  %shr18 = ashr i32 %add17, 6, !dbg !359
  %add19 = add nsw i32 %shr, %shr18, !dbg !360
  call void @llvm.dbg.value(metadata i32 %add19, metadata !339, metadata !DIExpression()), !dbg !328
  br label %if.end, !dbg !361

if.end:                                           ; preds = %if.then15, %if.else12
  %y.0 = phi i32 [ %add19, %if.then15 ], [ %shr, %if.else12 ], !dbg !362
  call void @llvm.dbg.value(metadata i32 %y.0, metadata !339, metadata !DIExpression()), !dbg !328
  br label %if.end20

if.end20:                                         ; preds = %if.end, %if.then10
  %y.1 = phi i32 [ %add, %if.then10 ], [ %y.0, %if.end ], !dbg !363
  call void @llvm.dbg.value(metadata i32 %y.1, metadata !339, metadata !DIExpression()), !dbg !328
  br label %return, !dbg !364

return:                                           ; preds = %if.end20, %if.then
  %retval.0 = phi i32 [ %conv2, %if.then ], [ %y.1, %if.end20 ], !dbg !365
  ret i32 %retval.0, !dbg !366
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @g723_enc_quantize(i32 noundef %d, i32 noundef %y, i16* noundef %table, i32 noundef %size) #0 !dbg !367 {
entry:
  call void @llvm.dbg.value(metadata i32 %d, metadata !370, metadata !DIExpression()), !dbg !371
  call void @llvm.dbg.value(metadata i32 %y, metadata !372, metadata !DIExpression()), !dbg !371
  call void @llvm.dbg.value(metadata i16* %table, metadata !373, metadata !DIExpression()), !dbg !371
  call void @llvm.dbg.value(metadata i32 %size, metadata !374, metadata !DIExpression()), !dbg !371
  %call = call arm_aapcs_vfpcc i32 @g723_enc_abs(i32 noundef %d) #4, !dbg !375
  call void @llvm.dbg.value(metadata i32 %call, metadata !376, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !371
  %sext = shl i32 %call, 16, !dbg !377
  %shr = ashr i32 %sext, 17, !dbg !378
  %call2 = call arm_aapcs_vfpcc i32 @g723_enc_quan(i32 noundef %shr, i16* noundef getelementptr inbounds ([15 x i16], [15 x i16]* @g723_enc_power2, i32 0, i32 0), i32 noundef 15) #4, !dbg !379
  call void @llvm.dbg.value(metadata i32 %call2, metadata !380, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !371
  %sext1 = shl i32 %call, 16, !dbg !381
  %shl = ashr exact i32 %sext1, 9, !dbg !382
  %sext2 = shl i32 %call2, 16, !dbg !383
  %conv5 = ashr exact i32 %sext2, 16, !dbg !383
  %shr6 = ashr i32 %shl, %conv5, !dbg !384
  call void @llvm.dbg.value(metadata i32 %shr6, metadata !385, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_constu, 127, DW_OP_and, DW_OP_stack_value)), !dbg !371
  call void @llvm.dbg.value(metadata !DIArgList(i32 %call2, i32 %shr6), metadata !386, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 7, DW_OP_shl, DW_OP_LLVM_arg, 1, DW_OP_constu, 127, DW_OP_and, DW_OP_or, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !371
  %0 = shl i32 %call2, 23, !dbg !387
  %conv7 = shl i32 %shr6, 16, !dbg !387
  %1 = and i32 %conv7, 8323072, !dbg !387
  %sext4 = or i32 %0, %1, !dbg !387
  call void @llvm.dbg.value(metadata !DIArgList(i32 %sext4, i32 %y), metadata !388, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 16, DW_OP_shr, DW_OP_LLVM_arg, 1, DW_OP_constu, 2, DW_OP_shr, DW_OP_minus, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !371
  %2 = shl i32 %y, 14, !dbg !389
  %sub6 = and i32 %2, -65536, !dbg !389
  %3 = sub i32 %sext4, %sub6, !dbg !389
  %conv15 = ashr exact i32 %3, 16, !dbg !389
  %call16 = call arm_aapcs_vfpcc i32 @g723_enc_quan(i32 noundef %conv15, i16* noundef %table, i32 noundef %size) #4, !dbg !390
  call void @llvm.dbg.value(metadata i32 %call16, metadata !391, metadata !DIExpression()), !dbg !371
  %cmp = icmp slt i32 %d, 0, !dbg !392
  br i1 %cmp, label %if.then, label %if.else, !dbg !394

if.then:                                          ; preds = %entry
  %shl18 = shl i32 %size, 1, !dbg !395
  %add19 = or i32 %shl18, 1, !dbg !396
  %sub20 = sub nsw i32 %add19, %call16, !dbg !397
  br label %return, !dbg !398

if.else:                                          ; preds = %entry
  %cmp21 = icmp eq i32 %call16, 0, !dbg !399
  br i1 %cmp21, label %if.then23, label %if.else26, !dbg !401

if.then23:                                        ; preds = %if.else
  %shl24 = shl i32 %size, 1, !dbg !402
  %add25 = or i32 %shl24, 1, !dbg !403
  br label %return, !dbg !404

if.else26:                                        ; preds = %if.else
  br label %return, !dbg !405

return:                                           ; preds = %if.else26, %if.then23, %if.then
  %retval.0 = phi i32 [ %sub20, %if.then ], [ %add25, %if.then23 ], [ %call16, %if.else26 ], !dbg !406
  ret i32 %retval.0, !dbg !407
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @g723_enc_reconstruct(i32 noundef %sign, i32 noundef %dqln, i32 noundef %y) #0 !dbg !408 {
entry:
  call void @llvm.dbg.value(metadata i32 %sign, metadata !411, metadata !DIExpression()), !dbg !412
  call void @llvm.dbg.value(metadata i32 %dqln, metadata !413, metadata !DIExpression()), !dbg !412
  call void @llvm.dbg.value(metadata i32 %y, metadata !414, metadata !DIExpression()), !dbg !412
  %0 = lshr i32 %y, 2, !dbg !415
  %add = add i32 %0, %dqln, !dbg !416
  call void @llvm.dbg.value(metadata i32 %add, metadata !417, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !412
  %sext.mask = and i32 %add, 32768, !dbg !418
  %cmp.not = icmp eq i32 %sext.mask, 0, !dbg !418
  br i1 %cmp.not, label %if.else, label %if.then, !dbg !420

if.then:                                          ; preds = %entry
  %tobool.not = icmp eq i32 %sign, 0, !dbg !421
  %cond = select i1 %tobool.not, i32 0, i32 -32768, !dbg !421
  br label %return, !dbg !422

if.else:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata i32 %add, metadata !417, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !412
  %1 = lshr i32 %add, 7, !dbg !423
  %conv5 = and i32 %1, 15, !dbg !423
  call void @llvm.dbg.value(metadata i32 %add, metadata !425, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_constu, 7, DW_OP_shr, DW_OP_constu, 15, DW_OP_and, DW_OP_stack_value)), !dbg !412
  call void @llvm.dbg.value(metadata i32 %add, metadata !426, metadata !DIExpression(DW_OP_constu, 127, DW_OP_and, DW_OP_constu, 128, DW_OP_or, DW_OP_stack_value)), !dbg !412
  %2 = shl i32 %add, 7, !dbg !427
  %conv9 = and i32 %2, 16256, !dbg !427
  %shl = or i32 %conv9, 16384, !dbg !427
  %sub = sub nsw i32 14, %conv5, !dbg !428
  %shr12 = lshr i32 %shl, %sub, !dbg !429
  call void @llvm.dbg.value(metadata i32 %shr12, metadata !430, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !412
  %tobool14.not = icmp eq i32 %sign, 0, !dbg !431
  br i1 %tobool14.not, label %cond.false, label %cond.true, !dbg !431

cond.true:                                        ; preds = %if.else
  call void @llvm.dbg.value(metadata i32 %shr12, metadata !430, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !412
  %sext1 = shl i32 %shr12, 16, !dbg !432
  %conv15 = ashr exact i32 %sext1, 16, !dbg !432
  %sub16 = add nsw i32 %conv15, -32768, !dbg !433
  br label %cond.end, !dbg !431

cond.false:                                       ; preds = %if.else
  %sext = shl i32 %shr12, 16, !dbg !434
  %conv17 = ashr exact i32 %sext, 16, !dbg !434
  br label %cond.end, !dbg !431

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond18 = phi i32 [ %sub16, %cond.true ], [ %conv17, %cond.false ], !dbg !431
  br label %return, !dbg !435

return:                                           ; preds = %cond.end, %if.then
  %retval.0 = phi i32 [ %cond, %if.then ], [ %cond18, %cond.end ], !dbg !436
  ret i32 %retval.0, !dbg !437
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @g723_enc_update(i32 noundef %code_size, i32 noundef %y, i32 noundef %wi, i32 noundef %fi, i32 noundef %dq, i32 noundef %sr, i32 noundef %dqsez, %struct.g723_enc_state_t* noundef %state_ptr) #0 !dbg !438 {
entry:
  call void @llvm.dbg.value(metadata i32 %code_size, metadata !441, metadata !DIExpression()), !dbg !442
  call void @llvm.dbg.value(metadata i32 %y, metadata !443, metadata !DIExpression()), !dbg !442
  call void @llvm.dbg.value(metadata i32 %wi, metadata !444, metadata !DIExpression()), !dbg !442
  call void @llvm.dbg.value(metadata i32 %fi, metadata !445, metadata !DIExpression()), !dbg !442
  call void @llvm.dbg.value(metadata i32 %dq, metadata !446, metadata !DIExpression()), !dbg !442
  call void @llvm.dbg.value(metadata i32 %sr, metadata !447, metadata !DIExpression()), !dbg !442
  call void @llvm.dbg.value(metadata i32 %dqsez, metadata !448, metadata !DIExpression()), !dbg !442
  call void @llvm.dbg.value(metadata %struct.g723_enc_state_t* %state_ptr, metadata !449, metadata !DIExpression()), !dbg !442
  %dqsez.lobit = lshr i32 %dqsez, 31, !dbg !450
  %0 = trunc i32 %dqsez.lobit to i16, !dbg !450
  call void @llvm.dbg.value(metadata i16 %0, metadata !451, metadata !DIExpression()), !dbg !442
  %1 = trunc i32 %dq to i16, !dbg !452
  %conv1 = and i16 %1, 32767, !dbg !452
  call void @llvm.dbg.value(metadata i16 %conv1, metadata !453, metadata !DIExpression()), !dbg !442
  %yl = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %state_ptr, i32 0, i32 0, !dbg !454
  %2 = load i32, i32* %yl, align 4, !dbg !454
  %3 = lshr i32 %2, 15, !dbg !455
  call void @llvm.dbg.value(metadata i32 %3, metadata !456, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !442
  call void @llvm.dbg.value(metadata i32 %2, metadata !457, metadata !DIExpression(DW_OP_constu, 10, DW_OP_shr, DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !442
  call void @llvm.dbg.value(metadata !DIArgList(i32 %2, i32 %3), metadata !458, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 10, DW_OP_shr, DW_OP_constu, 31, DW_OP_and, DW_OP_constu, 32, DW_OP_or, DW_OP_LLVM_arg, 1, DW_OP_constu, 16, DW_OP_shl, DW_OP_constu, 16, DW_OP_shra, DW_OP_shl, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !442
  %sext1 = shl i32 %3, 16, !dbg !459
  %cmp11 = icmp sgt i32 %sext1, 589824, !dbg !460
  br i1 %cmp11, label %cond.true, label %cond.false, !dbg !461

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !461

cond.false:                                       ; preds = %entry
  %4 = lshr i32 %2, 10, !dbg !462
  call void @llvm.dbg.value(metadata i32 %4, metadata !457, metadata !DIExpression(DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !442
  call void @llvm.dbg.value(metadata !DIArgList(i32 %4, i32 %3), metadata !458, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 31, DW_OP_and, DW_OP_constu, 32, DW_OP_or, DW_OP_LLVM_arg, 1, DW_OP_constu, 16, DW_OP_shl, DW_OP_constu, 16, DW_OP_shra, DW_OP_shl, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !442
  %conv6 = and i32 %4, 31, !dbg !462
  call void @llvm.dbg.value(metadata i32 %conv6, metadata !457, metadata !DIExpression()), !dbg !442
  call void @llvm.dbg.value(metadata !DIArgList(i32 %conv6, i32 %3), metadata !458, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 32, DW_OP_or, DW_OP_LLVM_arg, 1, DW_OP_constu, 16, DW_OP_shl, DW_OP_constu, 16, DW_OP_shra, DW_OP_shl, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !442
  %add = or i32 %conv6, 32, !dbg !463
  call void @llvm.dbg.value(metadata !DIArgList(i32 %add, i32 %3), metadata !458, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 16, DW_OP_shl, DW_OP_constu, 16, DW_OP_shra, DW_OP_shl, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !442
  %sext = shl i32 %3, 16, !dbg !464
  call void @llvm.dbg.value(metadata !DIArgList(i32 %2, i32 %sext), metadata !458, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 10, DW_OP_shr, DW_OP_constu, 31, DW_OP_and, DW_OP_constu, 32, DW_OP_or, DW_OP_LLVM_arg, 1, DW_OP_constu, 16, DW_OP_shra, DW_OP_shl, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !442
  %conv8 = ashr exact i32 %sext, 16, !dbg !464
  call void @llvm.dbg.value(metadata !DIArgList(i32 %2, i32 %conv8), metadata !458, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 10, DW_OP_shr, DW_OP_constu, 31, DW_OP_and, DW_OP_constu, 32, DW_OP_or, DW_OP_LLVM_arg, 1, DW_OP_shl, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !442
  %shl = shl i32 %add, %conv8, !dbg !465
  call void @llvm.dbg.value(metadata i32 %shl, metadata !458, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !442
  call void @llvm.dbg.value(metadata i32 %shl, metadata !458, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !442
  %sext2 = shl i32 %shl, 16, !dbg !466
  %conv13 = ashr exact i32 %sext2, 16, !dbg !466
  br label %cond.end, !dbg !461

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond14 = phi i32 [ 31744, %cond.true ], [ %conv13, %cond.false ], !dbg !461
  call void @llvm.dbg.value(metadata i32 %cond14, metadata !467, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !442
  call void @llvm.dbg.value(metadata !DIArgList(i32 %cond14, i32 %cond14), metadata !468, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_shra, DW_OP_plus, DW_OP_constu, 1, DW_OP_shra, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !442
  %td = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %state_ptr, i32 0, i32 10, !dbg !469
  %5 = load i8, i8* %td, align 4, !dbg !469
  %cmp23 = icmp eq i8 %5, 0, !dbg !471
  br i1 %cmp23, label %if.then, label %if.else, !dbg !472

if.then:                                          ; preds = %cond.end
  call void @llvm.dbg.value(metadata i8 0, metadata !473, metadata !DIExpression()), !dbg !442
  br label %if.end31, !dbg !474

if.else:                                          ; preds = %cond.end
  %shr18 = ashr i32 %cond14, 1, !dbg !475
  call void @llvm.dbg.value(metadata !DIArgList(i32 %cond14, i32 %shr18), metadata !468, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_constu, 1, DW_OP_shra, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !442
  %add19 = add nsw i32 %cond14, %shr18, !dbg !476
  call void @llvm.dbg.value(metadata i32 %add19, metadata !468, metadata !DIExpression(DW_OP_constu, 1, DW_OP_shra, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !442
  call void @llvm.dbg.value(metadata i32 %add19, metadata !468, metadata !DIExpression(DW_OP_constu, 1, DW_OP_shr, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !442
  %conv25 = zext i16 %conv1 to i32, !dbg !477
  %conv26 = ashr i32 %add19, 1, !dbg !479
  %cmp27.not = icmp slt i32 %conv26, %conv25, !dbg !480
  br i1 %cmp27.not, label %if.else30, label %if.then29, !dbg !481

if.then29:                                        ; preds = %if.else
  call void @llvm.dbg.value(metadata i8 0, metadata !473, metadata !DIExpression()), !dbg !442
  br label %if.end, !dbg !482

if.else30:                                        ; preds = %if.else
  call void @llvm.dbg.value(metadata i8 1, metadata !473, metadata !DIExpression()), !dbg !442
  br label %if.end

if.end:                                           ; preds = %if.else30, %if.then29
  %tr.0 = phi i8 [ 0, %if.then29 ], [ 1, %if.else30 ], !dbg !483
  call void @llvm.dbg.value(metadata i8 %tr.0, metadata !473, metadata !DIExpression()), !dbg !442
  br label %if.end31

if.end31:                                         ; preds = %if.end, %if.then
  %tr.1 = phi i8 [ 0, %if.then ], [ %tr.0, %if.end ], !dbg !484
  call void @llvm.dbg.value(metadata i8 %tr.1, metadata !473, metadata !DIExpression()), !dbg !442
  %sub = sub nsw i32 %wi, %y, !dbg !485
  %6 = lshr i32 %sub, 5, !dbg !486
  %add33 = add i32 %6, %y, !dbg !487
  %conv34 = trunc i32 %add33 to i16, !dbg !488
  %yu = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %state_ptr, i32 0, i32 1, !dbg !489
  store i16 %conv34, i16* %yu, align 4, !dbg !490
  %sext4 = shl i32 %add33, 16, !dbg !491
  %cmp37 = icmp slt i32 %sext4, 35651584, !dbg !493
  br i1 %cmp37, label %if.then39, label %if.else41, !dbg !494

if.then39:                                        ; preds = %if.end31
  %yu40 = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %state_ptr, i32 0, i32 1, !dbg !495
  store i16 544, i16* %yu40, align 4, !dbg !496
  br label %if.end49, !dbg !497

if.else41:                                        ; preds = %if.end31
  %yu42 = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %state_ptr, i32 0, i32 1, !dbg !498
  %7 = load i16, i16* %yu42, align 4, !dbg !498
  %cmp44 = icmp sgt i16 %7, 5120, !dbg !500
  br i1 %cmp44, label %if.then46, label %if.end48, !dbg !501

if.then46:                                        ; preds = %if.else41
  %yu47 = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %state_ptr, i32 0, i32 1, !dbg !502
  store i16 5120, i16* %yu47, align 4, !dbg !503
  br label %if.end48, !dbg !504

if.end48:                                         ; preds = %if.then46, %if.else41
  br label %if.end49

if.end49:                                         ; preds = %if.end48, %if.then39
  %yu50 = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %state_ptr, i32 0, i32 1, !dbg !505
  %8 = load i16, i16* %yu50, align 4, !dbg !505
  %conv51 = sext i16 %8 to i32, !dbg !506
  %yl52 = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %state_ptr, i32 0, i32 0, !dbg !507
  %9 = load i32, i32* %yl52, align 4, !dbg !507
  %sub53 = sub nsw i32 0, %9, !dbg !508
  %shr54 = ashr i32 %sub53, 6, !dbg !509
  %add55 = add nsw i32 %shr54, %conv51, !dbg !510
  %yl56 = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %state_ptr, i32 0, i32 0, !dbg !511
  %add57 = add nsw i32 %9, %add55, !dbg !512
  store i32 %add57, i32* %yl56, align 4, !dbg !512
  %cmp59 = icmp eq i8 %tr.1, 1, !dbg !513
  br i1 %cmp59, label %if.then61, label %if.else75, !dbg !515

if.then61:                                        ; preds = %if.end49
  %arrayidx = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %state_ptr, i32 0, i32 5, i32 0, !dbg !516
  store i16 0, i16* %arrayidx, align 4, !dbg !518
  %arrayidx63 = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %state_ptr, i32 0, i32 5, i32 1, !dbg !519
  store i16 0, i16* %arrayidx63, align 2, !dbg !520
  %arrayidx64 = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %state_ptr, i32 0, i32 6, i32 0, !dbg !521
  store i16 0, i16* %arrayidx64, align 4, !dbg !522
  %arrayidx66 = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %state_ptr, i32 0, i32 6, i32 1, !dbg !523
  store i16 0, i16* %arrayidx66, align 2, !dbg !524
  %arrayidx68 = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %state_ptr, i32 0, i32 6, i32 2, !dbg !525
  store i16 0, i16* %arrayidx68, align 4, !dbg !526
  %arrayidx70 = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %state_ptr, i32 0, i32 6, i32 3, !dbg !527
  store i16 0, i16* %arrayidx70, align 2, !dbg !528
  %arrayidx72 = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %state_ptr, i32 0, i32 6, i32 4, !dbg !529
  store i16 0, i16* %arrayidx72, align 4, !dbg !530
  %arrayidx74 = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %state_ptr, i32 0, i32 6, i32 5, !dbg !531
  store i16 0, i16* %arrayidx74, align 2, !dbg !532
  br label %if.end275, !dbg !533

if.else75:                                        ; preds = %if.end49
  %arrayidx77 = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %state_ptr, i32 0, i32 7, i32 0, !dbg !534
  %10 = load i16, i16* %arrayidx77, align 4, !dbg !534
  %11 = trunc i32 %dqsez.lobit to i16, !dbg !536
  %conv79 = xor i16 %10, %11, !dbg !536
  call void @llvm.dbg.value(metadata i16 %conv79, metadata !537, metadata !DIExpression()), !dbg !442
  %arrayidx81 = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %state_ptr, i32 0, i32 5, i32 1, !dbg !538
  %12 = load i16, i16* %arrayidx81, align 2, !dbg !538
  %13 = ashr i16 %12, 7, !dbg !539
  %sub87 = sub i16 %12, %13, !dbg !540
  call void @llvm.dbg.value(metadata i16 %sub87, metadata !541, metadata !DIExpression()), !dbg !442
  %cmp89.not = icmp eq i32 %dqsez, 0, !dbg !542
  br i1 %cmp89.not, label %if.end167, label %if.then91, !dbg !544

if.then91:                                        ; preds = %if.else75
  %tobool.not = icmp eq i16 %conv79, 0, !dbg !545
  br i1 %tobool.not, label %cond.false97, label %cond.true93, !dbg !545

cond.true93:                                      ; preds = %if.then91
  %arrayidx95 = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %state_ptr, i32 0, i32 5, i32 0, !dbg !547
  %14 = load i16, i16* %arrayidx95, align 4, !dbg !547
  br label %cond.end102, !dbg !545

cond.false97:                                     ; preds = %if.then91
  %arrayidx99 = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %state_ptr, i32 0, i32 5, i32 0, !dbg !548
  %15 = load i16, i16* %arrayidx99, align 4, !dbg !548
  %sub101 = sub i16 0, %15, !dbg !549
  br label %cond.end102, !dbg !545

cond.end102:                                      ; preds = %cond.false97, %cond.true93
  %cond103 = phi i16 [ %14, %cond.true93 ], [ %sub101, %cond.false97 ], !dbg !545
  call void @llvm.dbg.value(metadata i16 %cond103, metadata !550, metadata !DIExpression()), !dbg !442
  %cmp106 = icmp slt i16 %cond103, -8191, !dbg !551
  br i1 %cmp106, label %if.then108, label %if.else112, !dbg !553

if.then108:                                       ; preds = %cond.end102
  %sub110 = add i16 %sub87, -256, !dbg !554
  call void @llvm.dbg.value(metadata i16 %sub110, metadata !541, metadata !DIExpression()), !dbg !442
  br label %if.end127, !dbg !555

if.else112:                                       ; preds = %cond.end102
  %cmp114 = icmp sgt i16 %cond103, 8191, !dbg !556
  br i1 %cmp114, label %if.then116, label %if.else120, !dbg !558

if.then116:                                       ; preds = %if.else112
  %add118 = add i16 %sub87, 255, !dbg !559
  call void @llvm.dbg.value(metadata i16 %add118, metadata !541, metadata !DIExpression()), !dbg !442
  br label %if.end126, !dbg !560

if.else120:                                       ; preds = %if.else112
  %16 = ashr i16 %cond103, 5, !dbg !561
  %add124 = add i16 %sub87, %16, !dbg !562
  call void @llvm.dbg.value(metadata i16 %add124, metadata !541, metadata !DIExpression()), !dbg !442
  br label %if.end126

if.end126:                                        ; preds = %if.else120, %if.then116
  %a2p.0 = phi i16 [ %add118, %if.then116 ], [ %add124, %if.else120 ], !dbg !563
  call void @llvm.dbg.value(metadata i16 %a2p.0, metadata !541, metadata !DIExpression()), !dbg !442
  br label %if.end127

if.end127:                                        ; preds = %if.end126, %if.then108
  %a2p.1 = phi i16 [ %sub110, %if.then108 ], [ %a2p.0, %if.end126 ], !dbg !564
  call void @llvm.dbg.value(metadata i16 %a2p.1, metadata !541, metadata !DIExpression()), !dbg !442
  %arrayidx130 = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %state_ptr, i32 0, i32 7, i32 1, !dbg !565
  %17 = load i16, i16* %arrayidx130, align 2, !dbg !565
  %conv131 = sext i16 %17 to i32, !dbg !565
  %tobool133.not = icmp eq i32 %dqsez.lobit, %conv131, !dbg !567
  br i1 %tobool133.not, label %if.else150, label %if.then134, !dbg !568

if.then134:                                       ; preds = %if.end127
  %cmp136 = icmp slt i16 %a2p.1, -12159, !dbg !569
  br i1 %cmp136, label %if.then138, label %if.else139, !dbg !571

if.then138:                                       ; preds = %if.then134
  call void @llvm.dbg.value(metadata i16 -12288, metadata !541, metadata !DIExpression()), !dbg !442
  br label %if.end149, !dbg !572

if.else139:                                       ; preds = %if.then134
  %cmp141 = icmp sgt i16 %a2p.1, 12415, !dbg !573
  br i1 %cmp141, label %if.then143, label %if.else144, !dbg !575

if.then143:                                       ; preds = %if.else139
  call void @llvm.dbg.value(metadata i16 12288, metadata !541, metadata !DIExpression()), !dbg !442
  br label %if.end148, !dbg !576

if.else144:                                       ; preds = %if.else139
  %sub146 = add i16 %a2p.1, -128, !dbg !577
  call void @llvm.dbg.value(metadata i16 %sub146, metadata !541, metadata !DIExpression()), !dbg !442
  br label %if.end148

if.end148:                                        ; preds = %if.else144, %if.then143
  %a2p.2 = phi i16 [ 12288, %if.then143 ], [ %sub146, %if.else144 ], !dbg !578
  call void @llvm.dbg.value(metadata i16 %a2p.2, metadata !541, metadata !DIExpression()), !dbg !442
  br label %if.end149

if.end149:                                        ; preds = %if.end148, %if.then138
  %a2p.3 = phi i16 [ -12288, %if.then138 ], [ %a2p.2, %if.end148 ], !dbg !579
  call void @llvm.dbg.value(metadata i16 %a2p.3, metadata !541, metadata !DIExpression()), !dbg !442
  br label %if.end166, !dbg !580

if.else150:                                       ; preds = %if.end127
  %cmp152 = icmp slt i16 %a2p.1, -12415, !dbg !581
  br i1 %cmp152, label %if.then154, label %if.else155, !dbg !583

if.then154:                                       ; preds = %if.else150
  call void @llvm.dbg.value(metadata i16 -12288, metadata !541, metadata !DIExpression()), !dbg !442
  br label %if.end165, !dbg !584

if.else155:                                       ; preds = %if.else150
  %cmp157 = icmp sgt i16 %a2p.1, 12159, !dbg !585
  br i1 %cmp157, label %if.then159, label %if.else160, !dbg !587

if.then159:                                       ; preds = %if.else155
  call void @llvm.dbg.value(metadata i16 12288, metadata !541, metadata !DIExpression()), !dbg !442
  br label %if.end164, !dbg !588

if.else160:                                       ; preds = %if.else155
  %add162 = add i16 %a2p.1, 128, !dbg !589
  call void @llvm.dbg.value(metadata i16 %add162, metadata !541, metadata !DIExpression()), !dbg !442
  br label %if.end164

if.end164:                                        ; preds = %if.else160, %if.then159
  %a2p.4 = phi i16 [ 12288, %if.then159 ], [ %add162, %if.else160 ], !dbg !590
  call void @llvm.dbg.value(metadata i16 %a2p.4, metadata !541, metadata !DIExpression()), !dbg !442
  br label %if.end165

if.end165:                                        ; preds = %if.end164, %if.then154
  %a2p.5 = phi i16 [ -12288, %if.then154 ], [ %a2p.4, %if.end164 ], !dbg !591
  call void @llvm.dbg.value(metadata i16 %a2p.5, metadata !541, metadata !DIExpression()), !dbg !442
  br label %if.end166

if.end166:                                        ; preds = %if.end165, %if.end149
  %a2p.6 = phi i16 [ %a2p.3, %if.end149 ], [ %a2p.5, %if.end165 ], !dbg !592
  call void @llvm.dbg.value(metadata i16 %a2p.6, metadata !541, metadata !DIExpression()), !dbg !442
  br label %if.end167, !dbg !593

if.end167:                                        ; preds = %if.end166, %if.else75
  %a2p.7 = phi i16 [ %a2p.6, %if.end166 ], [ %sub87, %if.else75 ], !dbg !594
  call void @llvm.dbg.value(metadata i16 %a2p.7, metadata !541, metadata !DIExpression()), !dbg !442
  %arrayidx169 = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %state_ptr, i32 0, i32 5, i32 1, !dbg !595
  store i16 %a2p.7, i16* %arrayidx169, align 2, !dbg !596
  %arrayidx171 = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %state_ptr, i32 0, i32 5, i32 0, !dbg !597
  %18 = load i16, i16* %arrayidx171, align 4, !dbg !597
  %19 = ashr i16 %18, 8, !dbg !598
  %arrayidx175 = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %state_ptr, i32 0, i32 5, i32 0, !dbg !599
  %sub177 = sub i16 %18, %19, !dbg !600
  store i16 %sub177, i16* %arrayidx175, align 4, !dbg !600
  %cmp179.not = icmp eq i32 %dqsez, 0, !dbg !601
  br i1 %cmp179.not, label %if.end198, label %if.then181, !dbg !603

if.then181:                                       ; preds = %if.end167
  %cmp183 = icmp eq i16 %conv79, 0, !dbg !604
  br i1 %cmp183, label %if.then185, label %if.else191, !dbg !607

if.then185:                                       ; preds = %if.then181
  %arrayidx187 = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %state_ptr, i32 0, i32 5, i32 0, !dbg !608
  %20 = load i16, i16* %arrayidx187, align 4, !dbg !609
  %add189 = add i16 %20, 192, !dbg !609
  store i16 %add189, i16* %arrayidx187, align 4, !dbg !609
  br label %if.end197, !dbg !608

if.else191:                                       ; preds = %if.then181
  %arrayidx193 = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %state_ptr, i32 0, i32 5, i32 0, !dbg !610
  %21 = load i16, i16* %arrayidx193, align 4, !dbg !611
  %sub195 = add i16 %21, -192, !dbg !611
  store i16 %sub195, i16* %arrayidx193, align 4, !dbg !611
  br label %if.end197

if.end197:                                        ; preds = %if.else191, %if.then185
  br label %if.end198, !dbg !612

if.end198:                                        ; preds = %if.end197, %if.end167
  %sub200 = sub i16 15360, %a2p.7, !dbg !613
  call void @llvm.dbg.value(metadata i16 %sub200, metadata !614, metadata !DIExpression()), !dbg !442
  %arrayidx203 = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %state_ptr, i32 0, i32 5, i32 0, !dbg !615
  %22 = load i16, i16* %arrayidx203, align 4, !dbg !615
  %conv204 = sext i16 %22 to i32, !dbg !615
  %conv205 = sext i16 %sub200 to i32, !dbg !617
  %sub206 = sub nsw i32 0, %conv205, !dbg !618
  %cmp207 = icmp slt i32 %conv204, %sub206, !dbg !619
  br i1 %cmp207, label %if.then209, label %if.else215, !dbg !620

if.then209:                                       ; preds = %if.end198
  %sub200.neg = add i16 %a2p.7, -15360, !dbg !613
  %arrayidx214 = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %state_ptr, i32 0, i32 5, i32 0, !dbg !621
  store i16 %sub200.neg, i16* %arrayidx214, align 4, !dbg !622
  br label %if.end226, !dbg !621

if.else215:                                       ; preds = %if.end198
  %arrayidx217 = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %state_ptr, i32 0, i32 5, i32 0, !dbg !623
  %23 = load i16, i16* %arrayidx217, align 4, !dbg !623
  %cmp220 = icmp sgt i16 %23, %sub200, !dbg !625
  br i1 %cmp220, label %if.then222, label %if.end225, !dbg !626

if.then222:                                       ; preds = %if.else215
  %arrayidx224 = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %state_ptr, i32 0, i32 5, i32 0, !dbg !627
  store i16 %sub200, i16* %arrayidx224, align 4, !dbg !628
  br label %if.end225, !dbg !627

if.end225:                                        ; preds = %if.then222, %if.else215
  br label %if.end226

if.end226:                                        ; preds = %if.end225, %if.then209
  call void @llvm.dbg.value(metadata i32 0, metadata !629, metadata !DIExpression()), !dbg !442
  br label %for.cond, !dbg !630

for.cond:                                         ; preds = %for.inc, %if.end226
  %cnt.0 = phi i32 [ 0, %if.end226 ], [ %inc, %for.inc ], !dbg !632
  call void @llvm.dbg.value(metadata i32 %cnt.0, metadata !629, metadata !DIExpression()), !dbg !442
  %exitcond.not = icmp eq i32 %cnt.0, 6, !dbg !633
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !635

for.body:                                         ; preds = %for.cond
  %cmp229 = icmp eq i32 %code_size, 5, !dbg !636
  br i1 %cmp229, label %if.then231, label %if.else241, !dbg !639

if.then231:                                       ; preds = %for.body
  %arrayidx233 = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %state_ptr, i32 0, i32 6, i32 %cnt.0, !dbg !640
  %24 = load i16, i16* %arrayidx233, align 2, !dbg !640
  %25 = ashr i16 %24, 9, !dbg !641
  %arrayidx237 = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %state_ptr, i32 0, i32 6, i32 %cnt.0, !dbg !642
  %sub239 = sub i16 %24, %25, !dbg !643
  store i16 %sub239, i16* %arrayidx237, align 2, !dbg !643
  br label %if.end251, !dbg !642

if.else241:                                       ; preds = %for.body
  %arrayidx243 = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %state_ptr, i32 0, i32 6, i32 %cnt.0, !dbg !644
  %26 = load i16, i16* %arrayidx243, align 2, !dbg !644
  %27 = ashr i16 %26, 8, !dbg !645
  %arrayidx247 = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %state_ptr, i32 0, i32 6, i32 %cnt.0, !dbg !646
  %sub249 = sub i16 %26, %27, !dbg !647
  store i16 %sub249, i16* %arrayidx247, align 2, !dbg !647
  br label %if.end251

if.end251:                                        ; preds = %if.else241, %if.then231
  %and252 = and i32 %dq, 32767, !dbg !648
  %tobool253.not = icmp eq i32 %and252, 0, !dbg !648
  br i1 %tobool253.not, label %if.end274, label %if.then254, !dbg !650

if.then254:                                       ; preds = %if.end251
  %arrayidx256 = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %state_ptr, i32 0, i32 8, i32 %cnt.0, !dbg !651
  %28 = load i16, i16* %arrayidx256, align 2, !dbg !651
  %conv257 = sext i16 %28 to i32, !dbg !651
  %xor258 = xor i32 %conv257, %dq, !dbg !654
  %cmp259 = icmp sgt i32 %xor258, -1, !dbg !655
  br i1 %cmp259, label %if.then261, label %if.else267, !dbg !656

if.then261:                                       ; preds = %if.then254
  %arrayidx263 = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %state_ptr, i32 0, i32 6, i32 %cnt.0, !dbg !657
  %29 = load i16, i16* %arrayidx263, align 2, !dbg !658
  %add265 = add i16 %29, 128, !dbg !658
  store i16 %add265, i16* %arrayidx263, align 2, !dbg !658
  br label %if.end273, !dbg !657

if.else267:                                       ; preds = %if.then254
  %arrayidx269 = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %state_ptr, i32 0, i32 6, i32 %cnt.0, !dbg !659
  %30 = load i16, i16* %arrayidx269, align 2, !dbg !660
  %sub271 = add i16 %30, -128, !dbg !660
  store i16 %sub271, i16* %arrayidx269, align 2, !dbg !660
  br label %if.end273

if.end273:                                        ; preds = %if.else267, %if.then261
  br label %if.end274, !dbg !661

if.end274:                                        ; preds = %if.end273, %if.end251
  br label %for.inc, !dbg !662

for.inc:                                          ; preds = %if.end274
  %inc = add nuw nsw i32 %cnt.0, 1, !dbg !663
  call void @llvm.dbg.value(metadata i32 %inc, metadata !629, metadata !DIExpression()), !dbg !442
  br label %for.cond, !dbg !664, !llvm.loop !665

for.end:                                          ; preds = %for.cond
  br label %if.end275

if.end275:                                        ; preds = %for.end, %if.then61
  %a2p.8 = phi i16 [ undef, %if.then61 ], [ %a2p.7, %for.end ]
  call void @llvm.dbg.value(metadata i16 %a2p.8, metadata !541, metadata !DIExpression()), !dbg !442
  call void @llvm.dbg.value(metadata i32 5, metadata !629, metadata !DIExpression()), !dbg !442
  br label %for.cond276, !dbg !667

for.cond276:                                      ; preds = %for.inc285, %if.end275
  %cnt.1 = phi i32 [ 5, %if.end275 ], [ %dec, %for.inc285 ], !dbg !669
  call void @llvm.dbg.value(metadata i32 %cnt.1, metadata !629, metadata !DIExpression()), !dbg !442
  %cmp277.not = icmp eq i32 %cnt.1, 0, !dbg !670
  br i1 %cmp277.not, label %for.end286, label %for.body279, !dbg !672

for.body279:                                      ; preds = %for.cond276
  %sub281 = add nsw i32 %cnt.1, -1, !dbg !673
  %arrayidx282 = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %state_ptr, i32 0, i32 8, i32 %sub281, !dbg !674
  %31 = load i16, i16* %arrayidx282, align 2, !dbg !674
  %arrayidx284 = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %state_ptr, i32 0, i32 8, i32 %cnt.1, !dbg !675
  store i16 %31, i16* %arrayidx284, align 2, !dbg !676
  br label %for.inc285, !dbg !675

for.inc285:                                       ; preds = %for.body279
  %dec = add nsw i32 %cnt.1, -1, !dbg !677
  call void @llvm.dbg.value(metadata i32 %dec, metadata !629, metadata !DIExpression()), !dbg !442
  br label %for.cond276, !dbg !678, !llvm.loop !679

for.end286:                                       ; preds = %for.cond276
  %cmp288 = icmp eq i16 %conv1, 0, !dbg !681
  br i1 %cmp288, label %if.then290, label %if.else297, !dbg !683

if.then290:                                       ; preds = %for.end286
  %cmp291 = icmp sgt i32 %dq, -1, !dbg !684
  %conv294 = select i1 %cmp291, i16 32, i16 -992, !dbg !685
  %arrayidx296 = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %state_ptr, i32 0, i32 8, i32 0, !dbg !686
  store i16 %conv294, i16* %arrayidx296, align 4, !dbg !687
  br label %if.end324, !dbg !686

if.else297:                                       ; preds = %for.end286
  %conv298 = zext i16 %conv1 to i32, !dbg !688
  %call = call arm_aapcs_vfpcc i32 @g723_enc_quan(i32 noundef %conv298, i16* noundef getelementptr inbounds ([15 x i16], [15 x i16]* @g723_enc_power2, i32 0, i32 0), i32 noundef 15) #4, !dbg !690
  call void @llvm.dbg.value(metadata i32 %call, metadata !691, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !442
  %cmp300 = icmp sgt i32 %dq, -1, !dbg !692
  br i1 %cmp300, label %cond.true302, label %cond.false310, !dbg !693

cond.true302:                                     ; preds = %if.else297
  call void @llvm.dbg.value(metadata i32 %call, metadata !691, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !442
  %sext18 = shl i32 %call, 16, !dbg !694
  %shl304 = ashr exact i32 %sext18, 10, !dbg !695
  %conv305 = zext i16 %conv1 to i32, !dbg !696
  %shl306 = shl nuw nsw i32 %conv305, 6, !dbg !697
  %sext19 = shl i32 %call, 16, !dbg !698
  %conv307 = ashr exact i32 %sext19, 16, !dbg !698
  %shr308 = lshr i32 %shl306, %conv307, !dbg !699
  %add309 = add nsw i32 %shl304, %shr308, !dbg !700
  br label %cond.end319, !dbg !693

cond.false310:                                    ; preds = %if.else297
  %sext6 = shl i32 %call, 16, !dbg !701
  %shl312 = ashr exact i32 %sext6, 10, !dbg !702
  %conv313 = zext i16 %conv1 to i32, !dbg !703
  %shl314 = shl nuw nsw i32 %conv313, 6, !dbg !704
  %sext7 = shl i32 %call, 16, !dbg !705
  %conv315 = ashr exact i32 %sext7, 16, !dbg !705
  %shr316 = lshr i32 %shl314, %conv315, !dbg !706
  %add317 = add nsw i32 %shl312, %shr316, !dbg !707
  %sub318 = add nsw i32 %add317, -1024, !dbg !708
  br label %cond.end319, !dbg !693

cond.end319:                                      ; preds = %cond.false310, %cond.true302
  %cond320 = phi i32 [ %add309, %cond.true302 ], [ %sub318, %cond.false310 ], !dbg !693
  %conv321 = trunc i32 %cond320 to i16, !dbg !693
  %arrayidx323 = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %state_ptr, i32 0, i32 8, i32 0, !dbg !709
  store i16 %conv321, i16* %arrayidx323, align 4, !dbg !710
  br label %if.end324

if.end324:                                        ; preds = %cond.end319, %if.then290
  %arrayidx326 = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %state_ptr, i32 0, i32 9, i32 0, !dbg !711
  %32 = load i16, i16* %arrayidx326, align 4, !dbg !711
  %arrayidx328 = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %state_ptr, i32 0, i32 9, i32 1, !dbg !712
  store i16 %32, i16* %arrayidx328, align 2, !dbg !713
  %cmp329 = icmp eq i32 %sr, 0, !dbg !714
  br i1 %cmp329, label %if.then331, label %if.else334, !dbg !716

if.then331:                                       ; preds = %if.end324
  %arrayidx333 = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %state_ptr, i32 0, i32 9, i32 0, !dbg !717
  store i16 32, i16* %arrayidx333, align 4, !dbg !718
  br label %if.end374, !dbg !717

if.else334:                                       ; preds = %if.end324
  %cmp335 = icmp sgt i32 %sr, 0, !dbg !719
  br i1 %cmp335, label %if.then337, label %if.else349, !dbg !721

if.then337:                                       ; preds = %if.else334
  %call338 = call arm_aapcs_vfpcc i32 @g723_enc_quan(i32 noundef %sr, i16* noundef getelementptr inbounds ([15 x i16], [15 x i16]* @g723_enc_power2, i32 0, i32 0), i32 noundef 15) #4, !dbg !722
  call void @llvm.dbg.value(metadata i32 %call338, metadata !691, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !442
  %33 = shl i32 %call338, 6, !dbg !724
  %shl342 = shl i32 %sr, 6, !dbg !725
  %sext17 = shl i32 %call338, 16, !dbg !726
  %conv343 = ashr exact i32 %sext17, 16, !dbg !726
  %shr344 = ashr i32 %shl342, %conv343, !dbg !727
  %add345 = add i32 %33, %shr344, !dbg !728
  %conv346 = trunc i32 %add345 to i16, !dbg !729
  %arrayidx348 = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %state_ptr, i32 0, i32 9, i32 0, !dbg !730
  store i16 %conv346, i16* %arrayidx348, align 4, !dbg !731
  br label %if.end373, !dbg !732

if.else349:                                       ; preds = %if.else334
  %cmp350 = icmp sgt i32 %sr, -32768, !dbg !733
  br i1 %cmp350, label %if.then352, label %if.else369, !dbg !735

if.then352:                                       ; preds = %if.else349
  %34 = trunc i32 %sr to i16, !dbg !736
  %conv354 = sub i16 0, %34, !dbg !736
  call void @llvm.dbg.value(metadata i16 %conv354, metadata !453, metadata !DIExpression()), !dbg !442
  %conv355 = sext i16 %conv354 to i32, !dbg !738
  %call356 = call arm_aapcs_vfpcc i32 @g723_enc_quan(i32 noundef %conv355, i16* noundef getelementptr inbounds ([15 x i16], [15 x i16]* @g723_enc_power2, i32 0, i32 0), i32 noundef 15) #4, !dbg !739
  call void @llvm.dbg.value(metadata i32 %call356, metadata !691, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !442
  %35 = shl i32 %call356, 6, !dbg !740
  %conv360 = sext i16 %conv354 to i32, !dbg !741
  %shl361 = shl nsw i32 %conv360, 6, !dbg !742
  %sext15 = shl i32 %call356, 16, !dbg !743
  %conv362 = ashr exact i32 %sext15, 16, !dbg !743
  %shr363 = ashr i32 %shl361, %conv362, !dbg !744
  %add364 = add i32 %35, %shr363, !dbg !745
  %36 = trunc i32 %add364 to i16, !dbg !746
  %conv366 = add i16 %36, -1024, !dbg !746
  %arrayidx368 = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %state_ptr, i32 0, i32 9, i32 0, !dbg !747
  store i16 %conv366, i16* %arrayidx368, align 4, !dbg !748
  br label %if.end372, !dbg !749

if.else369:                                       ; preds = %if.else349
  %arrayidx371 = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %state_ptr, i32 0, i32 9, i32 0, !dbg !750
  store i16 -992, i16* %arrayidx371, align 4, !dbg !751
  br label %if.end372

if.end372:                                        ; preds = %if.else369, %if.then352
  br label %if.end373

if.end373:                                        ; preds = %if.end372, %if.then337
  br label %if.end374

if.end374:                                        ; preds = %if.end373, %if.then331
  %arrayidx376 = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %state_ptr, i32 0, i32 7, i32 0, !dbg !752
  %37 = load i16, i16* %arrayidx376, align 4, !dbg !752
  %arrayidx378 = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %state_ptr, i32 0, i32 7, i32 1, !dbg !753
  store i16 %37, i16* %arrayidx378, align 2, !dbg !754
  %arrayidx380 = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %state_ptr, i32 0, i32 7, i32 0, !dbg !755
  store i16 %0, i16* %arrayidx380, align 4, !dbg !756
  %cmp382 = icmp eq i8 %tr.1, 1, !dbg !757
  br i1 %cmp382, label %if.then384, label %if.else386, !dbg !759

if.then384:                                       ; preds = %if.end374
  %td385 = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %state_ptr, i32 0, i32 10, !dbg !760
  store i8 0, i8* %td385, align 4, !dbg !761
  br label %if.end395, !dbg !762

if.else386:                                       ; preds = %if.end374
  %cmp388 = icmp slt i16 %a2p.8, -11776, !dbg !763
  br i1 %cmp388, label %if.then390, label %if.else392, !dbg !765

if.then390:                                       ; preds = %if.else386
  %td391 = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %state_ptr, i32 0, i32 10, !dbg !766
  store i8 1, i8* %td391, align 4, !dbg !767
  br label %if.end394, !dbg !768

if.else392:                                       ; preds = %if.else386
  %td393 = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %state_ptr, i32 0, i32 10, !dbg !769
  store i8 0, i8* %td393, align 4, !dbg !770
  br label %if.end394

if.end394:                                        ; preds = %if.else392, %if.then390
  br label %if.end395

if.end395:                                        ; preds = %if.end394, %if.then384
  %dms = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %state_ptr, i32 0, i32 2, !dbg !771
  %38 = load i16, i16* %dms, align 2, !dbg !771
  %conv396 = sext i16 %38 to i32, !dbg !772
  %sub397 = sub nsw i32 %fi, %conv396, !dbg !773
  %39 = lshr i32 %sub397, 5, !dbg !774
  %dms399 = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %state_ptr, i32 0, i32 2, !dbg !775
  %40 = trunc i32 %39 to i16, !dbg !776
  %conv402 = add i16 %38, %40, !dbg !776
  store i16 %conv402, i16* %dms399, align 2, !dbg !776
  %shl403 = shl i32 %fi, 2, !dbg !777
  %dml = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %state_ptr, i32 0, i32 3, !dbg !778
  %41 = load i16, i16* %dml, align 4, !dbg !778
  %conv404 = sext i16 %41 to i32, !dbg !779
  %sub405 = sub nsw i32 %shl403, %conv404, !dbg !780
  %42 = lshr i32 %sub405, 7, !dbg !781
  %dml407 = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %state_ptr, i32 0, i32 3, !dbg !782
  %43 = trunc i32 %42 to i16, !dbg !783
  %conv410 = add i16 %41, %43, !dbg !783
  store i16 %conv410, i16* %dml407, align 4, !dbg !783
  %cmp412 = icmp eq i8 %tr.1, 1, !dbg !784
  br i1 %cmp412, label %if.then414, label %if.else415, !dbg !786

if.then414:                                       ; preds = %if.end395
  %ap = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %state_ptr, i32 0, i32 4, !dbg !787
  store i16 256, i16* %ap, align 2, !dbg !788
  br label %if.end475, !dbg !789

if.else415:                                       ; preds = %if.end395
  %cmp416 = icmp slt i32 %y, 1536, !dbg !790
  br i1 %cmp416, label %if.then418, label %if.else427, !dbg !792

if.then418:                                       ; preds = %if.else415
  %ap419 = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %state_ptr, i32 0, i32 4, !dbg !793
  %44 = load i16, i16* %ap419, align 2, !dbg !793
  %conv420 = sext i16 %44 to i32, !dbg !794
  %sub421 = sub nsw i32 512, %conv420, !dbg !795
  %shr422 = ashr i32 %sub421, 4, !dbg !796
  %ap423 = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %state_ptr, i32 0, i32 4, !dbg !797
  %45 = trunc i32 %shr422 to i16, !dbg !798
  %conv426 = add i16 %44, %45, !dbg !798
  store i16 %conv426, i16* %ap423, align 2, !dbg !798
  br label %if.end474, !dbg !799

if.else427:                                       ; preds = %if.else415
  %td428 = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %state_ptr, i32 0, i32 10, !dbg !800
  %46 = load i8, i8* %td428, align 4, !dbg !800
  %cmp430 = icmp eq i8 %46, 1, !dbg !802
  br i1 %cmp430, label %if.then432, label %if.else441, !dbg !803

if.then432:                                       ; preds = %if.else427
  %ap433 = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %state_ptr, i32 0, i32 4, !dbg !804
  %47 = load i16, i16* %ap433, align 2, !dbg !804
  %conv434 = sext i16 %47 to i32, !dbg !805
  %sub435 = sub nsw i32 512, %conv434, !dbg !806
  %shr436 = ashr i32 %sub435, 4, !dbg !807
  %ap437 = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %state_ptr, i32 0, i32 4, !dbg !808
  %48 = trunc i32 %shr436 to i16, !dbg !809
  %conv440 = add i16 %47, %48, !dbg !809
  store i16 %conv440, i16* %ap437, align 2, !dbg !809
  br label %if.end473, !dbg !810

if.else441:                                       ; preds = %if.else427
  %dms442 = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %state_ptr, i32 0, i32 2, !dbg !811
  %49 = load i16, i16* %dms442, align 2, !dbg !811
  %conv443 = sext i16 %49 to i32, !dbg !813
  %shl444 = shl nsw i32 %conv443, 2, !dbg !814
  %dml445 = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %state_ptr, i32 0, i32 3, !dbg !815
  %50 = load i16, i16* %dml445, align 4, !dbg !815
  %conv446 = sext i16 %50 to i32, !dbg !816
  %sub447 = sub nsw i32 %shl444, %conv446, !dbg !817
  %call448 = call arm_aapcs_vfpcc i32 @g723_enc_abs(i32 noundef %sub447) #4, !dbg !818
  %dml449 = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %state_ptr, i32 0, i32 3, !dbg !819
  %51 = load i16, i16* %dml449, align 4, !dbg !819
  %52 = ashr i16 %51, 3, !dbg !820
  %shr451 = sext i16 %52 to i32, !dbg !820
  %cmp452.not = icmp slt i32 %call448, %shr451, !dbg !821
  br i1 %cmp452.not, label %if.else463, label %if.then454, !dbg !822

if.then454:                                       ; preds = %if.else441
  %ap455 = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %state_ptr, i32 0, i32 4, !dbg !823
  %53 = load i16, i16* %ap455, align 2, !dbg !823
  %conv456 = sext i16 %53 to i32, !dbg !824
  %sub457 = sub nsw i32 512, %conv456, !dbg !825
  %shr458 = ashr i32 %sub457, 4, !dbg !826
  %ap459 = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %state_ptr, i32 0, i32 4, !dbg !827
  %54 = trunc i32 %shr458 to i16, !dbg !828
  %conv462 = add i16 %53, %54, !dbg !828
  store i16 %conv462, i16* %ap459, align 2, !dbg !828
  br label %if.end472, !dbg !829

if.else463:                                       ; preds = %if.else441
  %ap464 = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %state_ptr, i32 0, i32 4, !dbg !830
  %55 = load i16, i16* %ap464, align 2, !dbg !830
  %conv465 = sext i16 %55 to i32, !dbg !831
  %sub466 = sub nsw i32 0, %conv465, !dbg !832
  %shr467 = ashr i32 %sub466, 4, !dbg !833
  %ap468 = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %state_ptr, i32 0, i32 4, !dbg !834
  %56 = trunc i32 %shr467 to i16, !dbg !835
  %conv471 = add i16 %55, %56, !dbg !835
  store i16 %conv471, i16* %ap468, align 2, !dbg !835
  br label %if.end472

if.end472:                                        ; preds = %if.else463, %if.then454
  br label %if.end473

if.end473:                                        ; preds = %if.end472, %if.then432
  br label %if.end474

if.end474:                                        ; preds = %if.end473, %if.then418
  br label %if.end475

if.end475:                                        ; preds = %if.end474, %if.then414
  ret void, !dbg !836
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @g723_enc_alaw2linear(i8 noundef zeroext %a_val) #0 !dbg !837 {
entry:
  call void @llvm.dbg.value(metadata i8 %a_val, metadata !840, metadata !DIExpression()), !dbg !841
  %0 = xor i8 %a_val, 85, !dbg !842
  call void @llvm.dbg.value(metadata i8 %a_val, metadata !840, metadata !DIExpression(DW_OP_constu, 85, DW_OP_xor, DW_OP_stack_value)), !dbg !841
  %1 = shl i8 %0, 4, !dbg !843
  %shl = zext i8 %1 to i32, !dbg !843
  call void @llvm.dbg.value(metadata i32 %shl, metadata !844, metadata !DIExpression()), !dbg !841
  %2 = lshr i8 %0, 4, !dbg !845
  %3 = and i8 %2, 7, !dbg !845
  %shr = zext i8 %3 to i32, !dbg !845
  call void @llvm.dbg.value(metadata i32 %shr, metadata !846, metadata !DIExpression()), !dbg !841
  switch i32 %shr, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb5
  ], !dbg !847

sw.bb:                                            ; preds = %entry
  %add = or i32 %shl, 8, !dbg !848
  call void @llvm.dbg.value(metadata i32 %add, metadata !844, metadata !DIExpression()), !dbg !841
  br label %sw.epilog, !dbg !850

sw.bb5:                                           ; preds = %entry
  %add6 = or i32 %shl, 264, !dbg !851
  call void @llvm.dbg.value(metadata i32 %add6, metadata !844, metadata !DIExpression()), !dbg !841
  br label %sw.epilog, !dbg !852

sw.default:                                       ; preds = %entry
  %add7 = or i32 %shl, 264, !dbg !853
  call void @llvm.dbg.value(metadata i32 %add7, metadata !844, metadata !DIExpression()), !dbg !841
  %sub = add nsw i32 %shr, -1, !dbg !854
  %shl8 = shl i32 %add7, %sub, !dbg !855
  call void @llvm.dbg.value(metadata i32 %shl8, metadata !844, metadata !DIExpression()), !dbg !841
  br label %sw.epilog, !dbg !856

sw.epilog:                                        ; preds = %sw.default, %sw.bb5, %sw.bb
  %t.0 = phi i32 [ %shl8, %sw.default ], [ %add6, %sw.bb5 ], [ %add, %sw.bb ], !dbg !857
  call void @llvm.dbg.value(metadata i32 %t.0, metadata !844, metadata !DIExpression()), !dbg !841
  %tobool.not = icmp sgt i8 %a_val, -1, !dbg !858
  br i1 %tobool.not, label %cond.false, label %cond.true, !dbg !859

cond.true:                                        ; preds = %sw.epilog
  br label %cond.end, !dbg !859

cond.false:                                       ; preds = %sw.epilog
  %sub11 = sub nsw i32 0, %t.0, !dbg !860
  br label %cond.end, !dbg !859

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %t.0, %cond.true ], [ %sub11, %cond.false ], !dbg !859
  ret i32 %cond, !dbg !861
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @g723_enc_ulaw2linear(i8 noundef zeroext %u_val) #0 !dbg !862 {
entry:
  call void @llvm.dbg.value(metadata i8 %u_val, metadata !863, metadata !DIExpression()), !dbg !864
  %neg = xor i8 %u_val, -1, !dbg !865
  call void @llvm.dbg.value(metadata i8 %neg, metadata !863, metadata !DIExpression()), !dbg !864
  %0 = shl i8 %neg, 3, !dbg !866
  %1 = or i8 %0, -124, !dbg !867
  %add = zext i8 %1 to i32, !dbg !867
  call void @llvm.dbg.value(metadata i32 %add, metadata !868, metadata !DIExpression()), !dbg !864
  %2 = lshr i8 %neg, 4, !dbg !869
  %3 = and i8 %2, 7, !dbg !869
  %shr = zext i8 %3 to i32, !dbg !869
  %shl5 = shl i32 %add, %shr, !dbg !870
  call void @llvm.dbg.value(metadata i32 %shl5, metadata !868, metadata !DIExpression()), !dbg !864
  %tobool.not = icmp slt i8 %u_val, 0, !dbg !871
  br i1 %tobool.not, label %cond.false, label %cond.true, !dbg !872

cond.true:                                        ; preds = %entry
  %sub = sub nsw i32 132, %shl5, !dbg !873
  br label %cond.end, !dbg !872

cond.false:                                       ; preds = %entry
  %sub8 = add nsw i32 %shl5, -132, !dbg !874
  br label %cond.end, !dbg !872

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub, %cond.true ], [ %sub8, %cond.false ], !dbg !872
  ret i32 %cond, !dbg !875
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @g723_enc_g723_24_encoder(i32 noundef %sl, i32 noundef %in_coding, %struct.g723_enc_state_t* noundef %state_ptr) #0 !dbg !876 {
entry:
  call void @llvm.dbg.value(metadata i32 %sl, metadata !879, metadata !DIExpression()), !dbg !880
  call void @llvm.dbg.value(metadata i32 %in_coding, metadata !881, metadata !DIExpression()), !dbg !880
  call void @llvm.dbg.value(metadata %struct.g723_enc_state_t* %state_ptr, metadata !882, metadata !DIExpression()), !dbg !880
  switch i32 %in_coding, label %sw.default [
    i32 2, label %sw.bb
    i32 1, label %sw.bb1
    i32 3, label %sw.bb5
  ], !dbg !883

sw.bb:                                            ; preds = %entry
  %conv = trunc i32 %sl to i8, !dbg !884
  %call = call arm_aapcs_vfpcc i32 @g723_enc_alaw2linear(i8 noundef zeroext %conv) #4, !dbg !886
  call void @llvm.dbg.value(metadata i32 %call, metadata !879, metadata !DIExpression(DW_OP_constu, 2, DW_OP_shra, DW_OP_stack_value)), !dbg !880
  br label %sw.epilog, !dbg !887

sw.bb1:                                           ; preds = %entry
  %conv2 = trunc i32 %sl to i8, !dbg !888
  %call3 = call arm_aapcs_vfpcc i32 @g723_enc_ulaw2linear(i8 noundef zeroext %conv2) #4, !dbg !889
  call void @llvm.dbg.value(metadata i32 %call3, metadata !879, metadata !DIExpression(DW_OP_constu, 2, DW_OP_shra, DW_OP_stack_value)), !dbg !880
  br label %sw.epilog, !dbg !890

sw.bb5:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata i32 %sl, metadata !879, metadata !DIExpression(DW_OP_constu, 2, DW_OP_shra, DW_OP_stack_value)), !dbg !880
  br label %sw.epilog, !dbg !891

sw.default:                                       ; preds = %entry
  br label %return, !dbg !892

sw.epilog:                                        ; preds = %sw.bb5, %sw.bb1, %sw.bb
  %sl.addr.0.in = phi i32 [ %sl, %sw.bb5 ], [ %call3, %sw.bb1 ], [ %call, %sw.bb ]
  %0 = lshr i32 %sl.addr.0.in, 2, !dbg !893
  call void @llvm.dbg.value(metadata i32 %sl.addr.0.in, metadata !879, metadata !DIExpression(DW_OP_constu, 2, DW_OP_shra, DW_OP_stack_value)), !dbg !880
  %call7 = call arm_aapcs_vfpcc i32 @g723_enc_predictor_zero(%struct.g723_enc_state_t* noundef %state_ptr) #4, !dbg !894
  call void @llvm.dbg.value(metadata i32 %call7, metadata !895, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !880
  %sext = shl i32 %call7, 16, !dbg !896
  %shr10 = ashr i32 %sext, 17, !dbg !897
  call void @llvm.dbg.value(metadata i32 %shr10, metadata !898, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !880
  %call13 = call arm_aapcs_vfpcc i32 @g723_enc_predictor_pole(%struct.g723_enc_state_t* noundef %state_ptr) #4, !dbg !899
  %add = add i32 %call7, %call13, !dbg !900
  call void @llvm.dbg.value(metadata i32 %add, metadata !901, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !880
  %sext2 = shl i32 %add, 16, !dbg !902
  %shr16 = ashr i32 %sext2, 17, !dbg !903
  call void @llvm.dbg.value(metadata i32 %shr16, metadata !904, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !880
  %sub = sub nsw i32 %0, %shr16, !dbg !905
  call void @llvm.dbg.value(metadata i32 %sub, metadata !906, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !880
  %call20 = call arm_aapcs_vfpcc i32 @g723_enc_step_size(%struct.g723_enc_state_t* noundef %state_ptr) #4, !dbg !907
  call void @llvm.dbg.value(metadata i32 %call20, metadata !908, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !880
  %sext3 = shl i32 %sub, 16, !dbg !909
  %conv22 = ashr exact i32 %sext3, 16, !dbg !909
  %sext4 = shl i32 %call20, 16, !dbg !910
  %conv23 = ashr exact i32 %sext4, 16, !dbg !910
  %call24 = call arm_aapcs_vfpcc i32 @g723_enc_quantize(i32 noundef %conv22, i32 noundef %conv23, i16* noundef getelementptr inbounds ([3 x i16], [3 x i16]* @g723_enc_qtab_723_24, i32 0, i32 0), i32 noundef 3) #4, !dbg !911
  call void @llvm.dbg.value(metadata i32 %call24, metadata !912, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !880
  %and = and i32 %call24, 4, !dbg !913
  %sext6 = shl i32 %call24, 16, !dbg !914
  %idxprom = ashr exact i32 %sext6, 16, !dbg !914
  %arrayidx = getelementptr inbounds [16 x i16], [16 x i16]* @g723_enc_dqlntab, i32 0, i32 %idxprom, !dbg !914
  %1 = load i16, i16* %arrayidx, align 2, !dbg !914
  %conv27 = sext i16 %1 to i32, !dbg !914
  %sext7 = shl i32 %call20, 16, !dbg !915
  %conv28 = ashr exact i32 %sext7, 16, !dbg !915
  %call29 = call arm_aapcs_vfpcc i32 @g723_enc_reconstruct(i32 noundef %and, i32 noundef %conv27, i32 noundef %conv28) #4, !dbg !916
  call void @llvm.dbg.value(metadata i32 %call29, metadata !917, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !880
  %sext8.mask = and i32 %call29, 32768, !dbg !918
  %cmp.not = icmp eq i32 %sext8.mask, 0, !dbg !918
  br i1 %cmp.not, label %cond.false, label %cond.true, !dbg !919

cond.true:                                        ; preds = %sw.epilog
  call void @llvm.dbg.value(metadata i32 %call29, metadata !917, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !880
  call void @llvm.dbg.value(metadata i32 %shr16, metadata !904, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !880
  %and35 = and i32 %call29, 16383, !dbg !920
  %sub36 = sub nsw i32 %shr16, %and35, !dbg !921
  br label %cond.end, !dbg !919

cond.false:                                       ; preds = %sw.epilog
  %sext9 = shl i32 %call29, 16, !dbg !922
  %conv38 = ashr exact i32 %sext9, 16, !dbg !922
  %add39 = add nsw i32 %shr16, %conv38, !dbg !923
  br label %cond.end, !dbg !919

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub36, %cond.true ], [ %add39, %cond.false ], !dbg !919
  call void @llvm.dbg.value(metadata i32 %cond, metadata !924, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !880
  %add43 = add nsw i32 %cond, %shr10, !dbg !925
  %sub45 = sub nsw i32 %add43, %shr16, !dbg !926
  call void @llvm.dbg.value(metadata i32 %sub45, metadata !927, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !880
  %sext11 = shl i32 %call20, 16, !dbg !928
  %conv47 = ashr exact i32 %sext11, 16, !dbg !928
  %sext12 = shl i32 %call24, 16, !dbg !929
  %idxprom48 = ashr exact i32 %sext12, 16, !dbg !929
  %arrayidx49 = getelementptr inbounds [16 x i16], [16 x i16]* @g723_enc_witab, i32 0, i32 %idxprom48, !dbg !929
  %2 = load i16, i16* %arrayidx49, align 2, !dbg !929
  %conv50 = sext i16 %2 to i32, !dbg !929
  %sext13 = shl i32 %call24, 16, !dbg !930
  %idxprom51 = ashr exact i32 %sext13, 16, !dbg !930
  %arrayidx52 = getelementptr inbounds [16 x i16], [16 x i16]* @g723_enc_fitab, i32 0, i32 %idxprom51, !dbg !930
  %3 = load i16, i16* %arrayidx52, align 2, !dbg !930
  %conv53 = sext i16 %3 to i32, !dbg !930
  %sext14 = shl i32 %call29, 16, !dbg !931
  %conv54 = ashr exact i32 %sext14, 16, !dbg !931
  %sext15 = shl i32 %cond, 16, !dbg !932
  %conv55 = ashr exact i32 %sext15, 16, !dbg !932
  %sext16 = shl i32 %sub45, 16, !dbg !933
  %conv56 = ashr exact i32 %sext16, 16, !dbg !933
  call arm_aapcs_vfpcc void @g723_enc_update(i32 noundef 3, i32 noundef %conv47, i32 noundef %conv50, i32 noundef %conv53, i32 noundef %conv54, i32 noundef %conv55, i32 noundef %conv56, %struct.g723_enc_state_t* noundef %state_ptr) #4, !dbg !934
  %sext17 = shl i32 %call24, 16, !dbg !935
  %conv57 = ashr exact i32 %sext17, 16, !dbg !935
  br label %return, !dbg !936

return:                                           ; preds = %cond.end, %sw.default
  %retval.0 = phi i32 [ -1, %sw.default ], [ %conv57, %cond.end ], !dbg !880
  ret i32 %retval.0, !dbg !937
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @g723_enc_pack_output(i8 noundef zeroext %code, i32 noundef %bits) #0 !dbg !30 {
entry:
  call void @llvm.dbg.value(metadata i8 %code, metadata !938, metadata !DIExpression()), !dbg !939
  call void @llvm.dbg.value(metadata i32 %bits, metadata !940, metadata !DIExpression()), !dbg !939
  %conv = zext i8 %code to i32, !dbg !941
  %0 = load i32, i32* @g723_enc_pack_output.out_bits, align 4, !dbg !942
  %shl = shl i32 %conv, %0, !dbg !943
  %1 = load i32, i32* @g723_enc_pack_output.out_buffer, align 4, !dbg !944
  %or = or i32 %1, %shl, !dbg !944
  store i32 %or, i32* @g723_enc_pack_output.out_buffer, align 4, !dbg !944
  %add = add nsw i32 %0, %bits, !dbg !945
  store i32 %add, i32* @g723_enc_pack_output.out_bits, align 4, !dbg !945
  %cmp = icmp sgt i32 %add, 7, !dbg !946
  br i1 %cmp, label %if.then, label %if.end, !dbg !948

if.then:                                          ; preds = %entry
  %2 = load i32, i32* @g723_enc_pack_output.out_buffer, align 4, !dbg !949
  call void @llvm.dbg.value(metadata i32 %2, metadata !951, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !939
  %3 = load i32, i32* @g723_enc_pack_output.out_bits, align 4, !dbg !952
  %sub = add nsw i32 %3, -8, !dbg !952
  store i32 %sub, i32* @g723_enc_pack_output.out_bits, align 4, !dbg !952
  %shr = lshr i32 %2, 8, !dbg !953
  store i32 %shr, i32* @g723_enc_pack_output.out_buffer, align 4, !dbg !953
  %conv3 = and i32 %2, 255, !dbg !954
  %4 = load i32, i32* @g723_enc_pack_output.i, align 4, !dbg !955
  %arrayidx = getelementptr inbounds [256 x i32], [256 x i32]* @g723_enc_OUTPUT, i32 0, i32 %4, !dbg !956
  store i32 %conv3, i32* %arrayidx, align 4, !dbg !957
  %add4 = add nsw i32 %4, 1, !dbg !958
  store i32 %add4, i32* @g723_enc_pack_output.i, align 4, !dbg !959
  br label %if.end, !dbg !960

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, i32* @g723_enc_pack_output.out_bits, align 4, !dbg !961
  %cmp5 = icmp sgt i32 %5, 0, !dbg !962
  %conv6 = zext i1 %cmp5 to i32, !dbg !962
  ret i32 %conv6, !dbg !963
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @g723_enc_init_state(%struct.g723_enc_state_t* noundef %state_ptr) #0 !dbg !964 {
entry:
  call void @llvm.dbg.value(metadata %struct.g723_enc_state_t* %state_ptr, metadata !967, metadata !DIExpression()), !dbg !968
  %yl = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %state_ptr, i32 0, i32 0, !dbg !969
  store i32 34816, i32* %yl, align 4, !dbg !970
  %yu = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %state_ptr, i32 0, i32 1, !dbg !971
  store i16 544, i16* %yu, align 4, !dbg !972
  %dms = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %state_ptr, i32 0, i32 2, !dbg !973
  store i16 0, i16* %dms, align 2, !dbg !974
  %dml = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %state_ptr, i32 0, i32 3, !dbg !975
  store i16 0, i16* %dml, align 4, !dbg !976
  %ap = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %state_ptr, i32 0, i32 4, !dbg !977
  store i16 0, i16* %ap, align 2, !dbg !978
  call void @llvm.dbg.value(metadata i32 0, metadata !979, metadata !DIExpression()), !dbg !968
  br label %for.cond, !dbg !980

for.cond:                                         ; preds = %for.inc, %entry
  %cnta.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !dbg !982
  call void @llvm.dbg.value(metadata i32 %cnta.0, metadata !979, metadata !DIExpression()), !dbg !968
  %exitcond.not = icmp eq i32 %cnta.0, 2, !dbg !983
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !985

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %state_ptr, i32 0, i32 5, i32 %cnta.0, !dbg !986
  store i16 0, i16* %arrayidx, align 2, !dbg !988
  %arrayidx1 = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %state_ptr, i32 0, i32 7, i32 %cnta.0, !dbg !989
  store i16 0, i16* %arrayidx1, align 2, !dbg !990
  %arrayidx2 = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %state_ptr, i32 0, i32 9, i32 %cnta.0, !dbg !991
  store i16 32, i16* %arrayidx2, align 2, !dbg !992
  br label %for.inc, !dbg !993

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %cnta.0, 1, !dbg !994
  call void @llvm.dbg.value(metadata i32 %inc, metadata !979, metadata !DIExpression()), !dbg !968
  br label %for.cond, !dbg !995, !llvm.loop !996

for.end:                                          ; preds = %for.cond
  call void @llvm.dbg.value(metadata i32 0, metadata !979, metadata !DIExpression()), !dbg !968
  br label %for.cond3, !dbg !998

for.cond3:                                        ; preds = %for.inc8, %for.end
  %cnta.1 = phi i32 [ 0, %for.end ], [ %inc9, %for.inc8 ], !dbg !1000
  call void @llvm.dbg.value(metadata i32 %cnta.1, metadata !979, metadata !DIExpression()), !dbg !968
  %exitcond1.not = icmp eq i32 %cnta.1, 6, !dbg !1001
  br i1 %exitcond1.not, label %for.end10, label %for.body5, !dbg !1003

for.body5:                                        ; preds = %for.cond3
  %arrayidx6 = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %state_ptr, i32 0, i32 6, i32 %cnta.1, !dbg !1004
  store i16 0, i16* %arrayidx6, align 2, !dbg !1006
  %arrayidx7 = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %state_ptr, i32 0, i32 8, i32 %cnta.1, !dbg !1007
  store i16 32, i16* %arrayidx7, align 2, !dbg !1008
  br label %for.inc8, !dbg !1009

for.inc8:                                         ; preds = %for.body5
  %inc9 = add nuw nsw i32 %cnta.1, 1, !dbg !1010
  call void @llvm.dbg.value(metadata i32 %inc9, metadata !979, metadata !DIExpression()), !dbg !968
  br label %for.cond3, !dbg !1011, !llvm.loop !1012

for.end10:                                        ; preds = %for.cond3
  %td = getelementptr inbounds %struct.g723_enc_state_t, %struct.g723_enc_state_t* %state_ptr, i32 0, i32 10, !dbg !1014
  store i8 0, i8* %td, align 4, !dbg !1015
  ret void, !dbg !1016
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @g723_enc_init() #0 !dbg !1017 {
entry:
  %x = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %x, metadata !1020, metadata !DIExpression()), !dbg !1022
  store volatile i32 0, i32* %x, align 4, !dbg !1022
  call arm_aapcs_vfpcc void @g723_enc_init_state(%struct.g723_enc_state_t* noundef nonnull @g723_enc_state) #4, !dbg !1023
  call void @llvm.dbg.value(metadata i32 0, metadata !1024, metadata !DIExpression()), !dbg !1025
  br label %for.cond, !dbg !1026

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !dbg !1028
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !1024, metadata !DIExpression()), !dbg !1025
  %exitcond.not = icmp eq i32 %i.0, 256, !dbg !1029
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !1031

for.body:                                         ; preds = %for.cond
  %0 = load volatile i32, i32* %x, align 4, !dbg !1032
  %arrayidx = getelementptr inbounds [256 x i32], [256 x i32]* @g723_enc_INPUT, i32 0, i32 %i.0, !dbg !1033
  %1 = load i32, i32* %arrayidx, align 4, !dbg !1034
  %add = add i32 %1, %0, !dbg !1034
  store i32 %add, i32* %arrayidx, align 4, !dbg !1034
  br label %for.inc, !dbg !1033

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.0, 1, !dbg !1035
  call void @llvm.dbg.value(metadata i32 %inc, metadata !1024, metadata !DIExpression()), !dbg !1025
  br label %for.cond, !dbg !1036, !llvm.loop !1037

for.end:                                          ; preds = %for.cond
  ret void, !dbg !1039
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @g723_enc_return() #0 !dbg !1040 {
entry:
  call void @llvm.dbg.value(metadata i32 0, metadata !1043, metadata !DIExpression()), !dbg !1044
  call void @llvm.dbg.value(metadata i32 0, metadata !1045, metadata !DIExpression()), !dbg !1044
  br label %for.cond, !dbg !1046

for.cond:                                         ; preds = %for.inc, %entry
  %check_sum.0 = phi i32 [ 0, %entry ], [ %add, %for.inc ], !dbg !1044
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !dbg !1048
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !1045, metadata !DIExpression()), !dbg !1044
  call void @llvm.dbg.value(metadata i32 %check_sum.0, metadata !1043, metadata !DIExpression()), !dbg !1044
  %exitcond.not = icmp eq i32 %i.0, 256, !dbg !1049
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !1051

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.value(metadata !DIArgList(i32 %check_sum.0, i32 undef), metadata !1043, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !1044
  br label %for.inc, !dbg !1052

for.inc:                                          ; preds = %for.body
  %arrayidx = getelementptr inbounds [256 x i32], [256 x i32]* @g723_enc_OUTPUT, i32 0, i32 %i.0, !dbg !1053
  %0 = load i32, i32* %arrayidx, align 4, !dbg !1053
  call void @llvm.dbg.value(metadata !DIArgList(i32 %check_sum.0, i32 %0), metadata !1043, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !1044
  %add = add i32 %check_sum.0, %0, !dbg !1054
  call void @llvm.dbg.value(metadata i32 %add, metadata !1043, metadata !DIExpression()), !dbg !1044
  %inc = add nuw nsw i32 %i.0, 1, !dbg !1055
  call void @llvm.dbg.value(metadata i32 %inc, metadata !1045, metadata !DIExpression()), !dbg !1044
  br label %for.cond, !dbg !1056, !llvm.loop !1057

for.end:                                          ; preds = %for.cond
  %cmp1 = icmp ne i32 %check_sum.0, 24284, !dbg !1059
  %conv = zext i1 %cmp1 to i32, !dbg !1059
  ret i32 %conv, !dbg !1060
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @g723_enc_main() #0 !dbg !1061 {
entry:
  call void @llvm.dbg.value(metadata i32 0, metadata !1062, metadata !DIExpression()), !dbg !1063
  call void @llvm.dbg.value(metadata i32 3, metadata !1064, metadata !DIExpression()), !dbg !1063
  call void @llvm.dbg.value(metadata i32 2, metadata !1065, metadata !DIExpression()), !dbg !1063
  call void @llvm.dbg.value(metadata i16* undef, metadata !1066, metadata !DIExpression()), !dbg !1063
  call void @llvm.dbg.value(metadata i32 0, metadata !1062, metadata !DIExpression()), !dbg !1063
  br label %for.cond, !dbg !1067

for.cond:                                         ; preds = %for.inc, %entry
  %resid.0 = phi i32 [ undef, %entry ], [ %call3, %for.inc ]
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !dbg !1069
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !1062, metadata !DIExpression()), !dbg !1063
  call void @llvm.dbg.value(metadata i32 %resid.0, metadata !1070, metadata !DIExpression()), !dbg !1063
  %exitcond.not = icmp eq i32 %i.0, 256, !dbg !1071
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !1073

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds [256 x i32], [256 x i32]* @g723_enc_INPUT, i32 0, i32 %i.0, !dbg !1074
  %0 = load i32, i32* %arrayidx, align 4, !dbg !1074
  call void @llvm.dbg.value(metadata i32 %0, metadata !1076, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1063
  %sext = shl i32 %0, 16, !dbg !1077
  %conv1 = ashr exact i32 %sext, 16, !dbg !1077
  %call = call arm_aapcs_vfpcc i32 @g723_enc_g723_24_encoder(i32 noundef %conv1, i32 noundef 2, %struct.g723_enc_state_t* noundef nonnull @g723_enc_state) #4, !dbg !1078
  %conv2 = trunc i32 %call to i8, !dbg !1078
  call void @llvm.dbg.value(metadata i8 %conv2, metadata !1079, metadata !DIExpression()), !dbg !1063
  %call3 = call arm_aapcs_vfpcc i32 @g723_enc_pack_output(i8 noundef zeroext %conv2, i32 noundef 3) #4, !dbg !1080
  call void @llvm.dbg.value(metadata i32 %call3, metadata !1070, metadata !DIExpression()), !dbg !1063
  br label %for.inc, !dbg !1081

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.0, 1, !dbg !1082
  call void @llvm.dbg.value(metadata i32 %inc, metadata !1062, metadata !DIExpression()), !dbg !1063
  br label %for.cond, !dbg !1083, !llvm.loop !1084

for.end:                                          ; preds = %for.cond
  br label %while.cond, !dbg !1086

while.cond:                                       ; preds = %while.body, %for.end
  %resid.1 = phi i32 [ %resid.0, %for.end ], [ %call4, %while.body ]
  call void @llvm.dbg.value(metadata i32 %resid.1, metadata !1070, metadata !DIExpression()), !dbg !1063
  %tobool.not = icmp eq i32 %resid.1, 0, !dbg !1086
  br i1 %tobool.not, label %while.end, label %while.body, !dbg !1086

while.body:                                       ; preds = %while.cond
  %call4 = call arm_aapcs_vfpcc i32 @g723_enc_pack_output(i8 noundef zeroext 0, i32 noundef 3) #4, !dbg !1087
  call void @llvm.dbg.value(metadata i32 %call4, metadata !1070, metadata !DIExpression()), !dbg !1063
  br label %while.cond, !dbg !1086, !llvm.loop !1088

while.end:                                        ; preds = %while.cond
  ret void, !dbg !1090
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @main() #0 !dbg !1091 {
entry:
  call arm_aapcs_vfpcc void @g723_enc_init() #4, !dbg !1092
  call arm_aapcs_vfpcc void @g723_enc_main() #4, !dbg !1093
  %call = call arm_aapcs_vfpcc i32 @g723_enc_return() #4, !dbg !1094
  ret i32 %call, !dbg !1095
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__absvdi2(i64 noundef %a) #2 !dbg !1096 {
entry:
  %cmp = icmp eq i64 %a, -9223372036854775808, !dbg !1098
  br i1 %cmp, label %if.then, label %if.end, !dbg !1099

if.then:                                          ; preds = %entry
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i32 noundef 26, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__absvdi2, i32 0, i32 0)) #5, !dbg !1100
  unreachable, !dbg !1100

if.end:                                           ; preds = %entry
  %0 = call i64 @llvm.abs.i64(i64 %a, i1 true), !dbg !1101
  ret i64 %0, !dbg !1102
}

; Function Attrs: noinline noreturn nounwind
define weak hidden arm_aapcscc void @compilerrt_abort_impl(i8* noundef %file, i32 noundef %line, i8* noundef %function) #3 !dbg !1103 {
entry:
  unreachable, !dbg !1104
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__absvsi2(i32 noundef %a) #2 !dbg !1105 {
entry:
  %cmp = icmp eq i32 %a, -2147483648, !dbg !1106
  br i1 %cmp, label %if.then, label %if.end, !dbg !1107

if.then:                                          ; preds = %entry
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 noundef 26, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__absvsi2, i32 0, i32 0)) #5, !dbg !1108
  unreachable, !dbg !1108

if.end:                                           ; preds = %entry
  %0 = call i32 @llvm.abs.i32(i32 %a, i1 true), !dbg !1109
  ret i32 %0, !dbg !1110
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__addvdi3(i64 noundef %a, i64 noundef %b) #2 !dbg !1111 {
entry:
  %add = add i64 %a, %b, !dbg !1112
  %cmp = icmp sgt i64 %b, -1, !dbg !1113
  br i1 %cmp, label %if.then, label %if.else, !dbg !1114

if.then:                                          ; preds = %entry
  %cmp1 = icmp slt i64 %add, %a, !dbg !1115
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !1116

if.then2:                                         ; preds = %if.then
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i32 noundef 28, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__addvdi3, i32 0, i32 0)) #5, !dbg !1117
  unreachable, !dbg !1117

if.end:                                           ; preds = %if.then
  br label %if.end6, !dbg !1118

if.else:                                          ; preds = %entry
  %cmp3.not = icmp slt i64 %add, %a, !dbg !1119
  br i1 %cmp3.not, label %if.end5, label %if.then4, !dbg !1120

if.then4:                                         ; preds = %if.else
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i32 noundef 33, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__addvdi3, i32 0, i32 0)) #5, !dbg !1121
  unreachable, !dbg !1121

if.end5:                                          ; preds = %if.else
  br label %if.end6

if.end6:                                          ; preds = %if.end5, %if.end
  ret i64 %add, !dbg !1122
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__addvsi3(i32 noundef %a, i32 noundef %b) #2 !dbg !1123 {
entry:
  %add = add i32 %a, %b, !dbg !1124
  %cmp = icmp sgt i32 %b, -1, !dbg !1125
  br i1 %cmp, label %if.then, label %if.else, !dbg !1126

if.then:                                          ; preds = %entry
  %cmp1 = icmp slt i32 %add, %a, !dbg !1127
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !1128

if.then2:                                         ; preds = %if.then
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), i32 noundef 28, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__addvsi3, i32 0, i32 0)) #5, !dbg !1129
  unreachable, !dbg !1129

if.end:                                           ; preds = %if.then
  br label %if.end6, !dbg !1130

if.else:                                          ; preds = %entry
  %cmp3.not = icmp slt i32 %add, %a, !dbg !1131
  br i1 %cmp3.not, label %if.end5, label %if.then4, !dbg !1132

if.then4:                                         ; preds = %if.else
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), i32 noundef 33, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__addvsi3, i32 0, i32 0)) #5, !dbg !1133
  unreachable, !dbg !1133

if.end5:                                          ; preds = %if.else
  br label %if.end6

if.end6:                                          ; preds = %if.end5, %if.end
  ret i32 %add, !dbg !1134
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__ashldi3(i64 noundef %a, i32 noundef %b) #2 !dbg !1135 {
entry:
  %input = alloca %union.dwords, align 8
  %result = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %input, i32 0, i32 0, !dbg !1136
  store i64 %a, i64* %all, align 8, !dbg !1137
  %and = and i32 %b, 32, !dbg !1138
  %tobool.not = icmp eq i32 %and, 0, !dbg !1138
  br i1 %tobool.not, label %if.else, label %if.then, !dbg !1139

if.then:                                          ; preds = %entry
  %low = bitcast %union.dwords* %result to i32*, !dbg !1140
  store i32 0, i32* %low, align 8, !dbg !1141
  %low2 = bitcast %union.dwords* %input to i32*, !dbg !1142
  %0 = load i32, i32* %low2, align 8, !dbg !1142
  %sub = add nsw i32 %b, -32, !dbg !1143
  %shl = shl i32 %0, %sub, !dbg !1144
  %s3 = bitcast %union.dwords* %result to %struct.anon*, !dbg !1145
  %high = getelementptr inbounds %struct.anon, %struct.anon* %s3, i32 0, i32 1, !dbg !1146
  store i32 %shl, i32* %high, align 4, !dbg !1147
  br label %if.end18, !dbg !1148

if.else:                                          ; preds = %entry
  %cmp = icmp eq i32 %b, 0, !dbg !1149
  br i1 %cmp, label %if.then4, label %if.end, !dbg !1150

if.then4:                                         ; preds = %if.else
  br label %return, !dbg !1151

if.end:                                           ; preds = %if.else
  %low6 = bitcast %union.dwords* %input to i32*, !dbg !1152
  %1 = load i32, i32* %low6, align 8, !dbg !1152
  %shl7 = shl i32 %1, %b, !dbg !1153
  %low9 = bitcast %union.dwords* %result to i32*, !dbg !1154
  store i32 %shl7, i32* %low9, align 8, !dbg !1155
  %s10 = bitcast %union.dwords* %input to %struct.anon*, !dbg !1156
  %high11 = getelementptr inbounds %struct.anon, %struct.anon* %s10, i32 0, i32 1, !dbg !1157
  %2 = load i32, i32* %high11, align 4, !dbg !1157
  %shl12 = shl i32 %2, %b, !dbg !1158
  %low14 = bitcast %union.dwords* %input to i32*, !dbg !1159
  %3 = load i32, i32* %low14, align 8, !dbg !1159
  %sub15 = sub nsw i32 32, %b, !dbg !1160
  %shr = lshr i32 %3, %sub15, !dbg !1161
  %or = or i32 %shl12, %shr, !dbg !1162
  %s16 = bitcast %union.dwords* %result to %struct.anon*, !dbg !1163
  %high17 = getelementptr inbounds %struct.anon, %struct.anon* %s16, i32 0, i32 1, !dbg !1164
  store i32 %or, i32* %high17, align 4, !dbg !1165
  br label %if.end18

if.end18:                                         ; preds = %if.end, %if.then
  %all19 = getelementptr inbounds %union.dwords, %union.dwords* %result, i32 0, i32 0, !dbg !1166
  %4 = load i64, i64* %all19, align 8, !dbg !1166
  br label %return, !dbg !1167

return:                                           ; preds = %if.end18, %if.then4
  %retval.0 = phi i64 [ %4, %if.end18 ], [ %a, %if.then4 ], !dbg !1168
  ret i64 %retval.0, !dbg !1169
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__ashrdi3(i64 noundef %a, i32 noundef %b) #2 !dbg !1170 {
entry:
  %input = alloca %union.dwords, align 8
  %result = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %input, i32 0, i32 0, !dbg !1171
  store i64 %a, i64* %all, align 8, !dbg !1172
  %and = and i32 %b, 32, !dbg !1173
  %tobool.not = icmp eq i32 %and, 0, !dbg !1173
  br i1 %tobool.not, label %if.else, label %if.then, !dbg !1174

if.then:                                          ; preds = %entry
  %s = bitcast %union.dwords* %input to %struct.anon*, !dbg !1175
  %high = getelementptr inbounds %struct.anon, %struct.anon* %s, i32 0, i32 1, !dbg !1176
  %0 = load i32, i32* %high, align 4, !dbg !1176
  %shr = ashr i32 %0, 31, !dbg !1177
  %s1 = bitcast %union.dwords* %result to %struct.anon*, !dbg !1178
  %high2 = getelementptr inbounds %struct.anon, %struct.anon* %s1, i32 0, i32 1, !dbg !1179
  store i32 %shr, i32* %high2, align 4, !dbg !1180
  %s3 = bitcast %union.dwords* %input to %struct.anon*, !dbg !1181
  %high4 = getelementptr inbounds %struct.anon, %struct.anon* %s3, i32 0, i32 1, !dbg !1182
  %1 = load i32, i32* %high4, align 4, !dbg !1182
  %sub = add nsw i32 %b, -32, !dbg !1183
  %shr5 = ashr i32 %1, %sub, !dbg !1184
  %low = bitcast %union.dwords* %result to i32*, !dbg !1185
  store i32 %shr5, i32* %low, align 8, !dbg !1186
  br label %if.end21, !dbg !1187

if.else:                                          ; preds = %entry
  %cmp = icmp eq i32 %b, 0, !dbg !1188
  br i1 %cmp, label %if.then7, label %if.end, !dbg !1189

if.then7:                                         ; preds = %if.else
  br label %return, !dbg !1190

if.end:                                           ; preds = %if.else
  %s8 = bitcast %union.dwords* %input to %struct.anon*, !dbg !1191
  %high9 = getelementptr inbounds %struct.anon, %struct.anon* %s8, i32 0, i32 1, !dbg !1192
  %2 = load i32, i32* %high9, align 4, !dbg !1192
  %shr10 = ashr i32 %2, %b, !dbg !1193
  %s11 = bitcast %union.dwords* %result to %struct.anon*, !dbg !1194
  %high12 = getelementptr inbounds %struct.anon, %struct.anon* %s11, i32 0, i32 1, !dbg !1195
  store i32 %shr10, i32* %high12, align 4, !dbg !1196
  %s13 = bitcast %union.dwords* %input to %struct.anon*, !dbg !1197
  %high14 = getelementptr inbounds %struct.anon, %struct.anon* %s13, i32 0, i32 1, !dbg !1198
  %3 = load i32, i32* %high14, align 4, !dbg !1198
  %sub15 = sub nsw i32 32, %b, !dbg !1199
  %shl = shl i32 %3, %sub15, !dbg !1200
  %low17 = bitcast %union.dwords* %input to i32*, !dbg !1201
  %4 = load i32, i32* %low17, align 8, !dbg !1201
  %shr18 = lshr i32 %4, %b, !dbg !1202
  %or = or i32 %shl, %shr18, !dbg !1203
  %low20 = bitcast %union.dwords* %result to i32*, !dbg !1204
  store i32 %or, i32* %low20, align 8, !dbg !1205
  br label %if.end21

if.end21:                                         ; preds = %if.end, %if.then
  %all22 = getelementptr inbounds %union.dwords, %union.dwords* %result, i32 0, i32 0, !dbg !1206
  %5 = load i64, i64* %all22, align 8, !dbg !1206
  br label %return, !dbg !1207

return:                                           ; preds = %if.end21, %if.then7
  %retval.0 = phi i64 [ %5, %if.end21 ], [ %a, %if.then7 ], !dbg !1208
  ret i64 %retval.0, !dbg !1209
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__clzdi2(i64 noundef %a) #2 !dbg !1210 {
entry:
  %x = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %x, i32 0, i32 0, !dbg !1211
  store i64 %a, i64* %all, align 8, !dbg !1212
  %s = bitcast %union.dwords* %x to %struct.anon*, !dbg !1213
  %high = getelementptr inbounds %struct.anon, %struct.anon* %s, i32 0, i32 1, !dbg !1214
  %0 = load i32, i32* %high, align 4, !dbg !1214
  %cmp = icmp eq i32 %0, 0, !dbg !1215
  %s1 = bitcast %union.dwords* %x to %struct.anon*, !dbg !1216
  %high2 = getelementptr inbounds %struct.anon, %struct.anon* %s1, i32 0, i32 1, !dbg !1217
  %1 = load i32, i32* %high2, align 4, !dbg !1217
  %low = bitcast %union.dwords* %x to i32*, !dbg !1218
  %2 = load i32, i32* %low, align 8, !dbg !1218
  %3 = select i1 %cmp, i32 %2, i32 %1, !dbg !1219
  %4 = call i32 @llvm.ctlz.i32(i32 %3, i1 false), !dbg !1220, !range !1221
  %and5 = select i1 %cmp, i32 32, i32 0, !dbg !1222
  %add = add nuw nsw i32 %4, %and5, !dbg !1223
  ret i32 %add, !dbg !1224
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #1

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__clzsi2(i32 noundef %a) #2 !dbg !1225 {
entry:
  %cmp = icmp ult i32 %a, 65536, !dbg !1226
  %shl = select i1 %cmp, i32 16, i32 0, !dbg !1227
  %sub = sub nuw nsw i32 16, %shl, !dbg !1228
  %shr = lshr i32 %a, %sub, !dbg !1229
  %and1 = and i32 %shr, 65280, !dbg !1230
  %cmp2 = icmp eq i32 %and1, 0, !dbg !1231
  %shl4 = select i1 %cmp2, i32 8, i32 0, !dbg !1232
  %sub5 = sub nuw nsw i32 8, %shl4, !dbg !1233
  %shr6 = lshr i32 %shr, %sub5, !dbg !1234
  %add = or i32 %shl, %shl4, !dbg !1235
  %and7 = and i32 %shr6, 240, !dbg !1236
  %cmp8 = icmp eq i32 %and7, 0, !dbg !1237
  %shl10 = select i1 %cmp8, i32 4, i32 0, !dbg !1238
  %sub11 = sub nuw nsw i32 4, %shl10, !dbg !1239
  %shr12 = lshr i32 %shr6, %sub11, !dbg !1240
  %add13 = or i32 %add, %shl10, !dbg !1241
  %and14 = and i32 %shr12, 12, !dbg !1242
  %cmp15 = icmp eq i32 %and14, 0, !dbg !1243
  %shl17 = select i1 %cmp15, i32 2, i32 0, !dbg !1244
  %sub18 = sub nuw nsw i32 2, %shl17, !dbg !1245
  %shr19 = lshr i32 %shr12, %sub18, !dbg !1246
  %add20 = or i32 %add13, %shl17, !dbg !1247
  %sub21 = sub i32 2, %shr19, !dbg !1248
  %and22 = lshr i32 %shr19, 1, !dbg !1249
  %0 = or i32 %and22, -2, !dbg !1249
  %.neg = add nsw i32 %0, 1, !dbg !1249
  %and26 = and i32 %sub21, %.neg, !dbg !1250
  %add27 = add i32 %add20, %and26, !dbg !1251
  ret i32 %add27, !dbg !1252
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__cmpdi2(i64 noundef %a, i64 noundef %b) #2 !dbg !1253 {
entry:
  %x = alloca %union.dwords, align 8
  %y = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %x, i32 0, i32 0, !dbg !1254
  store i64 %a, i64* %all, align 8, !dbg !1255
  %all1 = getelementptr inbounds %union.dwords, %union.dwords* %y, i32 0, i32 0, !dbg !1256
  store i64 %b, i64* %all1, align 8, !dbg !1257
  %s = bitcast %union.dwords* %x to %struct.anon*, !dbg !1258
  %high = getelementptr inbounds %struct.anon, %struct.anon* %s, i32 0, i32 1, !dbg !1259
  %0 = load i32, i32* %high, align 4, !dbg !1259
  %s2 = bitcast %union.dwords* %y to %struct.anon*, !dbg !1260
  %high3 = getelementptr inbounds %struct.anon, %struct.anon* %s2, i32 0, i32 1, !dbg !1261
  %1 = load i32, i32* %high3, align 4, !dbg !1261
  %cmp = icmp slt i32 %0, %1, !dbg !1262
  br i1 %cmp, label %if.then, label %if.end, !dbg !1263

if.then:                                          ; preds = %entry
  br label %return, !dbg !1264

if.end:                                           ; preds = %entry
  %s4 = bitcast %union.dwords* %x to %struct.anon*, !dbg !1265
  %high5 = getelementptr inbounds %struct.anon, %struct.anon* %s4, i32 0, i32 1, !dbg !1266
  %2 = load i32, i32* %high5, align 4, !dbg !1266
  %s6 = bitcast %union.dwords* %y to %struct.anon*, !dbg !1267
  %high7 = getelementptr inbounds %struct.anon, %struct.anon* %s6, i32 0, i32 1, !dbg !1268
  %3 = load i32, i32* %high7, align 4, !dbg !1268
  %cmp8 = icmp sgt i32 %2, %3, !dbg !1269
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !1270

if.then9:                                         ; preds = %if.end
  br label %return, !dbg !1271

if.end10:                                         ; preds = %if.end
  %low = bitcast %union.dwords* %x to i32*, !dbg !1272
  %4 = load i32, i32* %low, align 8, !dbg !1272
  %low13 = bitcast %union.dwords* %y to i32*, !dbg !1273
  %5 = load i32, i32* %low13, align 8, !dbg !1273
  %cmp14 = icmp ult i32 %4, %5, !dbg !1274
  br i1 %cmp14, label %if.then15, label %if.end16, !dbg !1275

if.then15:                                        ; preds = %if.end10
  br label %return, !dbg !1276

if.end16:                                         ; preds = %if.end10
  %low18 = bitcast %union.dwords* %x to i32*, !dbg !1277
  %6 = load i32, i32* %low18, align 8, !dbg !1277
  %low20 = bitcast %union.dwords* %y to i32*, !dbg !1278
  %7 = load i32, i32* %low20, align 8, !dbg !1278
  %cmp21 = icmp ugt i32 %6, %7, !dbg !1279
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !1280

if.then22:                                        ; preds = %if.end16
  br label %return, !dbg !1281

if.end23:                                         ; preds = %if.end16
  br label %return, !dbg !1282

return:                                           ; preds = %if.end23, %if.then22, %if.then15, %if.then9, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 2, %if.then9 ], [ 0, %if.then15 ], [ 2, %if.then22 ], [ 1, %if.end23 ], !dbg !1283
  ret i32 %retval.0, !dbg !1284
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__aeabi_lcmp(i64 noundef %a, i64 noundef %b) #2 !dbg !1285 {
entry:
  %call = call arm_aapcscc i32 @__cmpdi2(i64 noundef %a, i64 noundef %b) #4, !dbg !1286
  %sub = add nsw i32 %call, -1, !dbg !1287
  ret i32 %sub, !dbg !1288
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__ctzdi2(i64 noundef %a) #2 !dbg !1289 {
entry:
  %x = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %x, i32 0, i32 0, !dbg !1290
  store i64 %a, i64* %all, align 8, !dbg !1291
  %low = bitcast %union.dwords* %x to i32*, !dbg !1292
  %0 = load i32, i32* %low, align 8, !dbg !1292
  %cmp = icmp eq i32 %0, 0, !dbg !1293
  %s1 = bitcast %union.dwords* %x to %struct.anon*, !dbg !1294
  %high = getelementptr inbounds %struct.anon, %struct.anon* %s1, i32 0, i32 1, !dbg !1295
  %1 = load i32, i32* %high, align 4, !dbg !1295
  %2 = select i1 %cmp, i32 %1, i32 %0, !dbg !1296
  %3 = call i32 @llvm.cttz.i32(i32 %2, i1 false), !dbg !1297, !range !1221
  %and5 = select i1 %cmp, i32 32, i32 0, !dbg !1298
  %add = add nuw nsw i32 %3, %and5, !dbg !1299
  ret i32 %add, !dbg !1300
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #1

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__ctzsi2(i32 noundef %a) #2 !dbg !1301 {
entry:
  %and = and i32 %a, 65535, !dbg !1302
  %cmp = icmp eq i32 %and, 0, !dbg !1303
  %shl = select i1 %cmp, i32 16, i32 0, !dbg !1304
  %shr = lshr i32 %a, %shl, !dbg !1305
  %and1 = and i32 %shr, 255, !dbg !1306
  %cmp2 = icmp eq i32 %and1, 0, !dbg !1307
  %shl4 = select i1 %cmp2, i32 8, i32 0, !dbg !1308
  %shr5 = lshr i32 %shr, %shl4, !dbg !1309
  %add = or i32 %shl, %shl4, !dbg !1310
  %and6 = and i32 %shr5, 15, !dbg !1311
  %cmp7 = icmp eq i32 %and6, 0, !dbg !1312
  %shl9 = select i1 %cmp7, i32 4, i32 0, !dbg !1313
  %shr10 = lshr i32 %shr5, %shl9, !dbg !1314
  %add11 = or i32 %add, %shl9, !dbg !1315
  %and12 = and i32 %shr10, 3, !dbg !1316
  %cmp13 = icmp eq i32 %and12, 0, !dbg !1317
  %shl15 = select i1 %cmp13, i32 2, i32 0, !dbg !1318
  %shr16 = lshr i32 %shr10, %shl15, !dbg !1319
  %add18 = or i32 %add11, %shl15, !dbg !1320
  %and17 = lshr i32 %shr16, 1, !dbg !1321
  %shr19 = and i32 %and17, 1, !dbg !1321
  %sub = sub nuw nsw i32 2, %shr19, !dbg !1322
  %0 = or i32 %shr16, -2, !dbg !1323
  %.neg = add nsw i32 %0, 1, !dbg !1323
  %and24 = and i32 %sub, %.neg, !dbg !1324
  %add25 = add nuw nsw i32 %add18, %and24, !dbg !1325
  ret i32 %add25, !dbg !1326
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__divdi3(i64 noundef %a, i64 noundef %b) #2 !dbg !1327 {
entry:
  %shr = ashr i64 %a, 63, !dbg !1328
  %shr1 = ashr i64 %b, 63, !dbg !1329
  %xor = xor i64 %shr, %a, !dbg !1330
  %sub = sub nsw i64 %xor, %shr, !dbg !1331
  %xor2 = xor i64 %shr1, %b, !dbg !1332
  %sub3 = sub nsw i64 %xor2, %shr1, !dbg !1333
  %xor4 = xor i64 %shr, %shr1, !dbg !1334
  %call = call arm_aapcscc i64 @__udivmoddi4(i64 noundef %sub, i64 noundef %sub3, i64* noundef null) #4, !dbg !1335
  %xor5 = xor i64 %call, %xor4, !dbg !1336
  %sub6 = sub i64 %xor5, %xor4, !dbg !1337
  ret i64 %sub6, !dbg !1338
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__udivmoddi4(i64 noundef %a, i64 noundef %b, i64* noundef %rem) #2 !dbg !1339 {
entry:
  %n = alloca %union.dwords, align 8
  %d = alloca %union.dwords, align 8
  %q = alloca %union.dwords, align 8
  %r = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %n, i32 0, i32 0, !dbg !1340
  store i64 %a, i64* %all, align 8, !dbg !1341
  %all1 = getelementptr inbounds %union.dwords, %union.dwords* %d, i32 0, i32 0, !dbg !1342
  store i64 %b, i64* %all1, align 8, !dbg !1343
  %s = bitcast %union.dwords* %n to %struct.anon*, !dbg !1344
  %high = getelementptr inbounds %struct.anon, %struct.anon* %s, i32 0, i32 1, !dbg !1345
  %0 = load i32, i32* %high, align 4, !dbg !1345
  %cmp = icmp eq i32 %0, 0, !dbg !1346
  br i1 %cmp, label %if.then, label %if.end23, !dbg !1347

if.then:                                          ; preds = %entry
  %s2 = bitcast %union.dwords* %d to %struct.anon*, !dbg !1348
  %high3 = getelementptr inbounds %struct.anon, %struct.anon* %s2, i32 0, i32 1, !dbg !1349
  %1 = load i32, i32* %high3, align 4, !dbg !1349
  %cmp4 = icmp eq i32 %1, 0, !dbg !1350
  br i1 %cmp4, label %if.then5, label %if.end16, !dbg !1351

if.then5:                                         ; preds = %if.then
  %tobool.not = icmp eq i64* %rem, null, !dbg !1352
  br i1 %tobool.not, label %if.end, label %if.then6, !dbg !1352

if.then6:                                         ; preds = %if.then5
  %low = bitcast %union.dwords* %n to i32*, !dbg !1353
  %2 = load i32, i32* %low, align 8, !dbg !1353
  %low9 = bitcast %union.dwords* %d to i32*, !dbg !1354
  %3 = load i32, i32* %low9, align 8, !dbg !1354
  %rem10 = urem i32 %2, %3, !dbg !1355
  %conv = zext i32 %rem10 to i64, !dbg !1356
  store i64 %conv, i64* %rem, align 8, !dbg !1357
  br label %if.end, !dbg !1358

if.end:                                           ; preds = %if.then6, %if.then5
  %low12 = bitcast %union.dwords* %n to i32*, !dbg !1359
  %4 = load i32, i32* %low12, align 8, !dbg !1359
  %low14 = bitcast %union.dwords* %d to i32*, !dbg !1360
  %5 = load i32, i32* %low14, align 8, !dbg !1360
  %div = udiv i32 %4, %5, !dbg !1361
  %conv15 = zext i32 %div to i64, !dbg !1362
  br label %return, !dbg !1363

if.end16:                                         ; preds = %if.then
  %tobool17.not = icmp eq i64* %rem, null, !dbg !1364
  br i1 %tobool17.not, label %if.end22, label %if.then18, !dbg !1364

if.then18:                                        ; preds = %if.end16
  %low20 = bitcast %union.dwords* %n to i32*, !dbg !1365
  %6 = load i32, i32* %low20, align 8, !dbg !1365
  %conv21 = zext i32 %6 to i64, !dbg !1366
  store i64 %conv21, i64* %rem, align 8, !dbg !1367
  br label %if.end22, !dbg !1368

if.end22:                                         ; preds = %if.then18, %if.end16
  br label %return, !dbg !1369

if.end23:                                         ; preds = %entry
  %low25 = bitcast %union.dwords* %d to i32*, !dbg !1370
  %7 = load i32, i32* %low25, align 8, !dbg !1370
  %cmp26 = icmp eq i32 %7, 0, !dbg !1371
  br i1 %cmp26, label %if.then28, label %if.else, !dbg !1372

if.then28:                                        ; preds = %if.end23
  %s29 = bitcast %union.dwords* %d to %struct.anon*, !dbg !1373
  %high30 = getelementptr inbounds %struct.anon, %struct.anon* %s29, i32 0, i32 1, !dbg !1374
  %8 = load i32, i32* %high30, align 4, !dbg !1374
  %cmp31 = icmp eq i32 %8, 0, !dbg !1375
  br i1 %cmp31, label %if.then33, label %if.end49, !dbg !1376

if.then33:                                        ; preds = %if.then28
  %tobool34.not = icmp eq i64* %rem, null, !dbg !1377
  br i1 %tobool34.not, label %if.end42, label %if.then35, !dbg !1377

if.then35:                                        ; preds = %if.then33
  %s36 = bitcast %union.dwords* %n to %struct.anon*, !dbg !1378
  %high37 = getelementptr inbounds %struct.anon, %struct.anon* %s36, i32 0, i32 1, !dbg !1379
  %9 = load i32, i32* %high37, align 4, !dbg !1379
  %low39 = bitcast %union.dwords* %d to i32*, !dbg !1380
  %10 = load i32, i32* %low39, align 8, !dbg !1380
  %rem40 = urem i32 %9, %10, !dbg !1381
  %conv41 = zext i32 %rem40 to i64, !dbg !1382
  store i64 %conv41, i64* %rem, align 8, !dbg !1383
  br label %if.end42, !dbg !1384

if.end42:                                         ; preds = %if.then35, %if.then33
  %s43 = bitcast %union.dwords* %n to %struct.anon*, !dbg !1385
  %high44 = getelementptr inbounds %struct.anon, %struct.anon* %s43, i32 0, i32 1, !dbg !1386
  %11 = load i32, i32* %high44, align 4, !dbg !1386
  %low46 = bitcast %union.dwords* %d to i32*, !dbg !1387
  %12 = load i32, i32* %low46, align 8, !dbg !1387
  %div47 = udiv i32 %11, %12, !dbg !1388
  %conv48 = zext i32 %div47 to i64, !dbg !1389
  br label %return, !dbg !1390

if.end49:                                         ; preds = %if.then28
  %low51 = bitcast %union.dwords* %n to i32*, !dbg !1391
  %13 = load i32, i32* %low51, align 8, !dbg !1391
  %cmp52 = icmp eq i32 %13, 0, !dbg !1392
  br i1 %cmp52, label %if.then54, label %if.end74, !dbg !1393

if.then54:                                        ; preds = %if.end49
  %tobool55.not = icmp eq i64* %rem, null, !dbg !1394
  br i1 %tobool55.not, label %if.end67, label %if.then56, !dbg !1394

if.then56:                                        ; preds = %if.then54
  %s57 = bitcast %union.dwords* %n to %struct.anon*, !dbg !1395
  %high58 = getelementptr inbounds %struct.anon, %struct.anon* %s57, i32 0, i32 1, !dbg !1396
  %14 = load i32, i32* %high58, align 4, !dbg !1396
  %s59 = bitcast %union.dwords* %d to %struct.anon*, !dbg !1397
  %high60 = getelementptr inbounds %struct.anon, %struct.anon* %s59, i32 0, i32 1, !dbg !1398
  %15 = load i32, i32* %high60, align 4, !dbg !1398
  %rem61 = urem i32 %14, %15, !dbg !1399
  %s62 = bitcast %union.dwords* %r to %struct.anon*, !dbg !1400
  %high63 = getelementptr inbounds %struct.anon, %struct.anon* %s62, i32 0, i32 1, !dbg !1401
  store i32 %rem61, i32* %high63, align 4, !dbg !1402
  %low65 = bitcast %union.dwords* %r to i32*, !dbg !1403
  store i32 0, i32* %low65, align 8, !dbg !1404
  %all66 = getelementptr inbounds %union.dwords, %union.dwords* %r, i32 0, i32 0, !dbg !1405
  %16 = load i64, i64* %all66, align 8, !dbg !1405
  store i64 %16, i64* %rem, align 8, !dbg !1406
  br label %if.end67, !dbg !1407

if.end67:                                         ; preds = %if.then56, %if.then54
  %s68 = bitcast %union.dwords* %n to %struct.anon*, !dbg !1408
  %high69 = getelementptr inbounds %struct.anon, %struct.anon* %s68, i32 0, i32 1, !dbg !1409
  %17 = load i32, i32* %high69, align 4, !dbg !1409
  %s70 = bitcast %union.dwords* %d to %struct.anon*, !dbg !1410
  %high71 = getelementptr inbounds %struct.anon, %struct.anon* %s70, i32 0, i32 1, !dbg !1411
  %18 = load i32, i32* %high71, align 4, !dbg !1411
  %div72 = udiv i32 %17, %18, !dbg !1412
  %conv73 = zext i32 %div72 to i64, !dbg !1413
  br label %return, !dbg !1414

if.end74:                                         ; preds = %if.end49
  %s75 = bitcast %union.dwords* %d to %struct.anon*, !dbg !1415
  %high76 = getelementptr inbounds %struct.anon, %struct.anon* %s75, i32 0, i32 1, !dbg !1416
  %19 = load i32, i32* %high76, align 4, !dbg !1416
  %s77 = bitcast %union.dwords* %d to %struct.anon*, !dbg !1417
  %high78 = getelementptr inbounds %struct.anon, %struct.anon* %s77, i32 0, i32 1, !dbg !1418
  %20 = load i32, i32* %high78, align 4, !dbg !1418
  %sub = add i32 %20, -1, !dbg !1419
  %and = and i32 %19, %sub, !dbg !1420
  %cmp79 = icmp eq i32 %and, 0, !dbg !1421
  br i1 %cmp79, label %if.then81, label %if.end103, !dbg !1422

if.then81:                                        ; preds = %if.end74
  %tobool82.not = icmp eq i64* %rem, null, !dbg !1423
  br i1 %tobool82.not, label %if.end97, label %if.then83, !dbg !1423

if.then83:                                        ; preds = %if.then81
  %low85 = bitcast %union.dwords* %n to i32*, !dbg !1424
  %21 = load i32, i32* %low85, align 8, !dbg !1424
  %low87 = bitcast %union.dwords* %r to i32*, !dbg !1425
  store i32 %21, i32* %low87, align 8, !dbg !1426
  %s88 = bitcast %union.dwords* %n to %struct.anon*, !dbg !1427
  %high89 = getelementptr inbounds %struct.anon, %struct.anon* %s88, i32 0, i32 1, !dbg !1428
  %22 = load i32, i32* %high89, align 4, !dbg !1428
  %s90 = bitcast %union.dwords* %d to %struct.anon*, !dbg !1429
  %high91 = getelementptr inbounds %struct.anon, %struct.anon* %s90, i32 0, i32 1, !dbg !1430
  %23 = load i32, i32* %high91, align 4, !dbg !1430
  %sub92 = add i32 %23, -1, !dbg !1431
  %and93 = and i32 %22, %sub92, !dbg !1432
  %s94 = bitcast %union.dwords* %r to %struct.anon*, !dbg !1433
  %high95 = getelementptr inbounds %struct.anon, %struct.anon* %s94, i32 0, i32 1, !dbg !1434
  store i32 %and93, i32* %high95, align 4, !dbg !1435
  %all96 = getelementptr inbounds %union.dwords, %union.dwords* %r, i32 0, i32 0, !dbg !1436
  %24 = load i64, i64* %all96, align 8, !dbg !1436
  store i64 %24, i64* %rem, align 8, !dbg !1437
  br label %if.end97, !dbg !1438

if.end97:                                         ; preds = %if.then83, %if.then81
  %s98 = bitcast %union.dwords* %n to %struct.anon*, !dbg !1439
  %high99 = getelementptr inbounds %struct.anon, %struct.anon* %s98, i32 0, i32 1, !dbg !1440
  %25 = load i32, i32* %high99, align 4, !dbg !1440
  %s100 = bitcast %union.dwords* %d to %struct.anon*, !dbg !1441
  %high101 = getelementptr inbounds %struct.anon, %struct.anon* %s100, i32 0, i32 1, !dbg !1442
  %26 = load i32, i32* %high101, align 4, !dbg !1442
  %27 = call i32 @llvm.cttz.i32(i32 %26, i1 false), !dbg !1443, !range !1221
  %shr = lshr i32 %25, %27, !dbg !1444
  %conv102 = zext i32 %shr to i64, !dbg !1445
  br label %return, !dbg !1446

if.end103:                                        ; preds = %if.end74
  %s104 = bitcast %union.dwords* %d to %struct.anon*, !dbg !1447
  %high105 = getelementptr inbounds %struct.anon, %struct.anon* %s104, i32 0, i32 1, !dbg !1448
  %28 = load i32, i32* %high105, align 4, !dbg !1448
  %29 = call i32 @llvm.ctlz.i32(i32 %28, i1 false), !dbg !1449, !range !1221
  %s106 = bitcast %union.dwords* %n to %struct.anon*, !dbg !1450
  %high107 = getelementptr inbounds %struct.anon, %struct.anon* %s106, i32 0, i32 1, !dbg !1451
  %30 = load i32, i32* %high107, align 4, !dbg !1451
  %31 = call i32 @llvm.ctlz.i32(i32 %30, i1 false), !dbg !1452, !range !1221
  %sub108 = sub nsw i32 %29, %31, !dbg !1453
  %cmp109 = icmp ugt i32 %sub108, 30, !dbg !1454
  br i1 %cmp109, label %if.then111, label %if.end116, !dbg !1455

if.then111:                                       ; preds = %if.end103
  %tobool112.not = icmp eq i64* %rem, null, !dbg !1456
  br i1 %tobool112.not, label %if.end115, label %if.then113, !dbg !1456

if.then113:                                       ; preds = %if.then111
  %all114 = getelementptr inbounds %union.dwords, %union.dwords* %n, i32 0, i32 0, !dbg !1457
  %32 = load i64, i64* %all114, align 8, !dbg !1457
  store i64 %32, i64* %rem, align 8, !dbg !1458
  br label %if.end115, !dbg !1459

if.end115:                                        ; preds = %if.then113, %if.then111
  br label %return, !dbg !1460

if.end116:                                        ; preds = %if.end103
  %inc = add nsw i32 %sub108, 1, !dbg !1461
  %low118 = bitcast %union.dwords* %q to i32*, !dbg !1462
  store i32 0, i32* %low118, align 8, !dbg !1463
  %low120 = bitcast %union.dwords* %n to i32*, !dbg !1464
  %33 = load i32, i32* %low120, align 8, !dbg !1464
  %sub121 = sub nsw i32 31, %sub108, !dbg !1465
  %shl = shl i32 %33, %sub121, !dbg !1466
  %s122 = bitcast %union.dwords* %q to %struct.anon*, !dbg !1467
  %high123 = getelementptr inbounds %struct.anon, %struct.anon* %s122, i32 0, i32 1, !dbg !1468
  store i32 %shl, i32* %high123, align 4, !dbg !1469
  %s124 = bitcast %union.dwords* %n to %struct.anon*, !dbg !1470
  %high125 = getelementptr inbounds %struct.anon, %struct.anon* %s124, i32 0, i32 1, !dbg !1471
  %34 = load i32, i32* %high125, align 4, !dbg !1471
  %shr126 = lshr i32 %34, %inc, !dbg !1472
  %s127 = bitcast %union.dwords* %r to %struct.anon*, !dbg !1473
  %high128 = getelementptr inbounds %struct.anon, %struct.anon* %s127, i32 0, i32 1, !dbg !1474
  store i32 %shr126, i32* %high128, align 4, !dbg !1475
  %s129 = bitcast %union.dwords* %n to %struct.anon*, !dbg !1476
  %high130 = getelementptr inbounds %struct.anon, %struct.anon* %s129, i32 0, i32 1, !dbg !1477
  %35 = load i32, i32* %high130, align 4, !dbg !1477
  %sub131 = sub nsw i32 31, %sub108, !dbg !1478
  %shl132 = shl i32 %35, %sub131, !dbg !1479
  %low134 = bitcast %union.dwords* %n to i32*, !dbg !1480
  %36 = load i32, i32* %low134, align 8, !dbg !1480
  %shr135 = lshr i32 %36, %inc, !dbg !1481
  %or = or i32 %shl132, %shr135, !dbg !1482
  %low137 = bitcast %union.dwords* %r to i32*, !dbg !1483
  store i32 %or, i32* %low137, align 8, !dbg !1484
  br label %if.end317, !dbg !1485

if.else:                                          ; preds = %if.end23
  %s138 = bitcast %union.dwords* %d to %struct.anon*, !dbg !1486
  %high139 = getelementptr inbounds %struct.anon, %struct.anon* %s138, i32 0, i32 1, !dbg !1487
  %37 = load i32, i32* %high139, align 4, !dbg !1487
  %cmp140 = icmp eq i32 %37, 0, !dbg !1488
  br i1 %cmp140, label %if.then142, label %if.else263, !dbg !1489

if.then142:                                       ; preds = %if.else
  %low144 = bitcast %union.dwords* %d to i32*, !dbg !1490
  %38 = load i32, i32* %low144, align 8, !dbg !1490
  %39 = call i32 @llvm.ctpop.i32(i32 %38), !dbg !1491, !range !1221
  %cmp149 = icmp ult i32 %39, 2, !dbg !1491
  br i1 %cmp149, label %if.then151, label %if.end187, !dbg !1492

if.then151:                                       ; preds = %if.then142
  %tobool152.not = icmp eq i64* %rem, null, !dbg !1493
  br i1 %tobool152.not, label %if.end161, label %if.then153, !dbg !1493

if.then153:                                       ; preds = %if.then151
  %low155 = bitcast %union.dwords* %n to i32*, !dbg !1494
  %40 = load i32, i32* %low155, align 8, !dbg !1494
  %low157 = bitcast %union.dwords* %d to i32*, !dbg !1495
  %41 = load i32, i32* %low157, align 8, !dbg !1495
  %sub158 = add i32 %41, -1, !dbg !1496
  %and159 = and i32 %40, %sub158, !dbg !1497
  %conv160 = zext i32 %and159 to i64, !dbg !1498
  store i64 %conv160, i64* %rem, align 8, !dbg !1499
  br label %if.end161, !dbg !1500

if.end161:                                        ; preds = %if.then153, %if.then151
  %low163 = bitcast %union.dwords* %d to i32*, !dbg !1501
  %42 = load i32, i32* %low163, align 8, !dbg !1501
  %cmp164 = icmp eq i32 %42, 1, !dbg !1502
  br i1 %cmp164, label %if.then166, label %if.end168, !dbg !1503

if.then166:                                       ; preds = %if.end161
  %all167 = getelementptr inbounds %union.dwords, %union.dwords* %n, i32 0, i32 0, !dbg !1504
  %43 = load i64, i64* %all167, align 8, !dbg !1504
  br label %return, !dbg !1505

if.end168:                                        ; preds = %if.end161
  %low170 = bitcast %union.dwords* %d to i32*, !dbg !1506
  %44 = load i32, i32* %low170, align 8, !dbg !1506
  %45 = call i32 @llvm.cttz.i32(i32 %44, i1 false), !dbg !1507, !range !1221
  %s171 = bitcast %union.dwords* %n to %struct.anon*, !dbg !1508
  %high172 = getelementptr inbounds %struct.anon, %struct.anon* %s171, i32 0, i32 1, !dbg !1509
  %46 = load i32, i32* %high172, align 4, !dbg !1509
  %shr173 = lshr i32 %46, %45, !dbg !1510
  %s174 = bitcast %union.dwords* %q to %struct.anon*, !dbg !1511
  %high175 = getelementptr inbounds %struct.anon, %struct.anon* %s174, i32 0, i32 1, !dbg !1512
  store i32 %shr173, i32* %high175, align 4, !dbg !1513
  %s176 = bitcast %union.dwords* %n to %struct.anon*, !dbg !1514
  %high177 = getelementptr inbounds %struct.anon, %struct.anon* %s176, i32 0, i32 1, !dbg !1515
  %47 = load i32, i32* %high177, align 4, !dbg !1515
  %sub178 = sub nuw nsw i32 32, %45, !dbg !1516
  %shl179 = shl i32 %47, %sub178, !dbg !1517
  %low181 = bitcast %union.dwords* %n to i32*, !dbg !1518
  %48 = load i32, i32* %low181, align 8, !dbg !1518
  %shr182 = lshr i32 %48, %45, !dbg !1519
  %or183 = or i32 %shl179, %shr182, !dbg !1520
  %low185 = bitcast %union.dwords* %q to i32*, !dbg !1521
  store i32 %or183, i32* %low185, align 8, !dbg !1522
  %all186 = getelementptr inbounds %union.dwords, %union.dwords* %q, i32 0, i32 0, !dbg !1523
  %49 = load i64, i64* %all186, align 8, !dbg !1523
  br label %return, !dbg !1524

if.end187:                                        ; preds = %if.then142
  %low189 = bitcast %union.dwords* %d to i32*, !dbg !1525
  %50 = load i32, i32* %low189, align 8, !dbg !1525
  %51 = call i32 @llvm.ctlz.i32(i32 %50, i1 false), !dbg !1526, !range !1221
  %add = add nuw nsw i32 %51, 33, !dbg !1527
  %s190 = bitcast %union.dwords* %n to %struct.anon*, !dbg !1528
  %high191 = getelementptr inbounds %struct.anon, %struct.anon* %s190, i32 0, i32 1, !dbg !1529
  %52 = load i32, i32* %high191, align 4, !dbg !1529
  %53 = call i32 @llvm.ctlz.i32(i32 %52, i1 false), !dbg !1530, !range !1221
  %sub192 = sub nsw i32 %add, %53, !dbg !1531
  %cmp193 = icmp eq i32 %sub192, 32, !dbg !1532
  br i1 %cmp193, label %if.then195, label %if.else208, !dbg !1533

if.then195:                                       ; preds = %if.end187
  %low197 = bitcast %union.dwords* %q to i32*, !dbg !1534
  store i32 0, i32* %low197, align 8, !dbg !1535
  %low199 = bitcast %union.dwords* %n to i32*, !dbg !1536
  %54 = load i32, i32* %low199, align 8, !dbg !1536
  %s200 = bitcast %union.dwords* %q to %struct.anon*, !dbg !1537
  %high201 = getelementptr inbounds %struct.anon, %struct.anon* %s200, i32 0, i32 1, !dbg !1538
  store i32 %54, i32* %high201, align 4, !dbg !1539
  %s202 = bitcast %union.dwords* %r to %struct.anon*, !dbg !1540
  %high203 = getelementptr inbounds %struct.anon, %struct.anon* %s202, i32 0, i32 1, !dbg !1541
  store i32 0, i32* %high203, align 4, !dbg !1542
  %s204 = bitcast %union.dwords* %n to %struct.anon*, !dbg !1543
  %high205 = getelementptr inbounds %struct.anon, %struct.anon* %s204, i32 0, i32 1, !dbg !1544
  %55 = load i32, i32* %high205, align 4, !dbg !1544
  %low207 = bitcast %union.dwords* %r to i32*, !dbg !1545
  store i32 %55, i32* %low207, align 8, !dbg !1546
  br label %if.end262, !dbg !1547

if.else208:                                       ; preds = %if.end187
  %cmp209 = icmp ult i32 %sub192, 32, !dbg !1548
  br i1 %cmp209, label %if.then211, label %if.else235, !dbg !1549

if.then211:                                       ; preds = %if.else208
  %low213 = bitcast %union.dwords* %q to i32*, !dbg !1550
  store i32 0, i32* %low213, align 8, !dbg !1551
  %low215 = bitcast %union.dwords* %n to i32*, !dbg !1552
  %56 = load i32, i32* %low215, align 8, !dbg !1552
  %sub216 = sub nsw i32 32, %sub192, !dbg !1553
  %shl217 = shl i32 %56, %sub216, !dbg !1554
  %s218 = bitcast %union.dwords* %q to %struct.anon*, !dbg !1555
  %high219 = getelementptr inbounds %struct.anon, %struct.anon* %s218, i32 0, i32 1, !dbg !1556
  store i32 %shl217, i32* %high219, align 4, !dbg !1557
  %s220 = bitcast %union.dwords* %n to %struct.anon*, !dbg !1558
  %high221 = getelementptr inbounds %struct.anon, %struct.anon* %s220, i32 0, i32 1, !dbg !1559
  %57 = load i32, i32* %high221, align 4, !dbg !1559
  %shr222 = lshr i32 %57, %sub192, !dbg !1560
  %s223 = bitcast %union.dwords* %r to %struct.anon*, !dbg !1561
  %high224 = getelementptr inbounds %struct.anon, %struct.anon* %s223, i32 0, i32 1, !dbg !1562
  store i32 %shr222, i32* %high224, align 4, !dbg !1563
  %s225 = bitcast %union.dwords* %n to %struct.anon*, !dbg !1564
  %high226 = getelementptr inbounds %struct.anon, %struct.anon* %s225, i32 0, i32 1, !dbg !1565
  %58 = load i32, i32* %high226, align 4, !dbg !1565
  %sub227 = sub nsw i32 32, %sub192, !dbg !1566
  %shl228 = shl i32 %58, %sub227, !dbg !1567
  %low230 = bitcast %union.dwords* %n to i32*, !dbg !1568
  %59 = load i32, i32* %low230, align 8, !dbg !1568
  %shr231 = lshr i32 %59, %sub192, !dbg !1569
  %or232 = or i32 %shl228, %shr231, !dbg !1570
  %low234 = bitcast %union.dwords* %r to i32*, !dbg !1571
  store i32 %or232, i32* %low234, align 8, !dbg !1572
  br label %if.end261, !dbg !1573

if.else235:                                       ; preds = %if.else208
  %low237 = bitcast %union.dwords* %n to i32*, !dbg !1574
  %60 = load i32, i32* %low237, align 8, !dbg !1574
  %sub238 = sub nsw i32 64, %sub192, !dbg !1575
  %shl239 = shl i32 %60, %sub238, !dbg !1576
  %low241 = bitcast %union.dwords* %q to i32*, !dbg !1577
  store i32 %shl239, i32* %low241, align 8, !dbg !1578
  %s242 = bitcast %union.dwords* %n to %struct.anon*, !dbg !1579
  %high243 = getelementptr inbounds %struct.anon, %struct.anon* %s242, i32 0, i32 1, !dbg !1580
  %61 = load i32, i32* %high243, align 4, !dbg !1580
  %sub244 = sub nsw i32 64, %sub192, !dbg !1581
  %shl245 = shl i32 %61, %sub244, !dbg !1582
  %low247 = bitcast %union.dwords* %n to i32*, !dbg !1583
  %62 = load i32, i32* %low247, align 8, !dbg !1583
  %sub248 = add nsw i32 %sub192, -32, !dbg !1584
  %shr249 = lshr i32 %62, %sub248, !dbg !1585
  %or250 = or i32 %shl245, %shr249, !dbg !1586
  %s251 = bitcast %union.dwords* %q to %struct.anon*, !dbg !1587
  %high252 = getelementptr inbounds %struct.anon, %struct.anon* %s251, i32 0, i32 1, !dbg !1588
  store i32 %or250, i32* %high252, align 4, !dbg !1589
  %s253 = bitcast %union.dwords* %r to %struct.anon*, !dbg !1590
  %high254 = getelementptr inbounds %struct.anon, %struct.anon* %s253, i32 0, i32 1, !dbg !1591
  store i32 0, i32* %high254, align 4, !dbg !1592
  %s255 = bitcast %union.dwords* %n to %struct.anon*, !dbg !1593
  %high256 = getelementptr inbounds %struct.anon, %struct.anon* %s255, i32 0, i32 1, !dbg !1594
  %63 = load i32, i32* %high256, align 4, !dbg !1594
  %sub257 = add nsw i32 %sub192, -32, !dbg !1595
  %shr258 = lshr i32 %63, %sub257, !dbg !1596
  %low260 = bitcast %union.dwords* %r to i32*, !dbg !1597
  store i32 %shr258, i32* %low260, align 8, !dbg !1598
  br label %if.end261

if.end261:                                        ; preds = %if.else235, %if.then211
  br label %if.end262

if.end262:                                        ; preds = %if.end261, %if.then195
  br label %if.end316, !dbg !1599

if.else263:                                       ; preds = %if.else
  %s264 = bitcast %union.dwords* %d to %struct.anon*, !dbg !1600
  %high265 = getelementptr inbounds %struct.anon, %struct.anon* %s264, i32 0, i32 1, !dbg !1601
  %64 = load i32, i32* %high265, align 4, !dbg !1601
  %65 = call i32 @llvm.ctlz.i32(i32 %64, i1 false), !dbg !1602, !range !1221
  %s266 = bitcast %union.dwords* %n to %struct.anon*, !dbg !1603
  %high267 = getelementptr inbounds %struct.anon, %struct.anon* %s266, i32 0, i32 1, !dbg !1604
  %66 = load i32, i32* %high267, align 4, !dbg !1604
  %67 = call i32 @llvm.ctlz.i32(i32 %66, i1 false), !dbg !1605, !range !1221
  %sub268 = sub nsw i32 %65, %67, !dbg !1606
  %cmp269 = icmp ugt i32 %sub268, 31, !dbg !1607
  br i1 %cmp269, label %if.then271, label %if.end276, !dbg !1608

if.then271:                                       ; preds = %if.else263
  %tobool272.not = icmp eq i64* %rem, null, !dbg !1609
  br i1 %tobool272.not, label %if.end275, label %if.then273, !dbg !1609

if.then273:                                       ; preds = %if.then271
  %all274 = getelementptr inbounds %union.dwords, %union.dwords* %n, i32 0, i32 0, !dbg !1610
  %68 = load i64, i64* %all274, align 8, !dbg !1610
  store i64 %68, i64* %rem, align 8, !dbg !1611
  br label %if.end275, !dbg !1612

if.end275:                                        ; preds = %if.then273, %if.then271
  br label %return, !dbg !1613

if.end276:                                        ; preds = %if.else263
  %inc277 = add nsw i32 %sub268, 1, !dbg !1614
  %low279 = bitcast %union.dwords* %q to i32*, !dbg !1615
  store i32 0, i32* %low279, align 8, !dbg !1616
  %cmp280 = icmp eq i32 %inc277, 32, !dbg !1617
  br i1 %cmp280, label %if.then282, label %if.else293, !dbg !1618

if.then282:                                       ; preds = %if.end276
  %low284 = bitcast %union.dwords* %n to i32*, !dbg !1619
  %69 = load i32, i32* %low284, align 8, !dbg !1619
  %s285 = bitcast %union.dwords* %q to %struct.anon*, !dbg !1620
  %high286 = getelementptr inbounds %struct.anon, %struct.anon* %s285, i32 0, i32 1, !dbg !1621
  store i32 %69, i32* %high286, align 4, !dbg !1622
  %s287 = bitcast %union.dwords* %r to %struct.anon*, !dbg !1623
  %high288 = getelementptr inbounds %struct.anon, %struct.anon* %s287, i32 0, i32 1, !dbg !1624
  store i32 0, i32* %high288, align 4, !dbg !1625
  %s289 = bitcast %union.dwords* %n to %struct.anon*, !dbg !1626
  %high290 = getelementptr inbounds %struct.anon, %struct.anon* %s289, i32 0, i32 1, !dbg !1627
  %70 = load i32, i32* %high290, align 4, !dbg !1627
  %low292 = bitcast %union.dwords* %r to i32*, !dbg !1628
  store i32 %70, i32* %low292, align 8, !dbg !1629
  br label %if.end315, !dbg !1630

if.else293:                                       ; preds = %if.end276
  %low295 = bitcast %union.dwords* %n to i32*, !dbg !1631
  %71 = load i32, i32* %low295, align 8, !dbg !1631
  %sub296 = sub nsw i32 31, %sub268, !dbg !1632
  %shl297 = shl i32 %71, %sub296, !dbg !1633
  %s298 = bitcast %union.dwords* %q to %struct.anon*, !dbg !1634
  %high299 = getelementptr inbounds %struct.anon, %struct.anon* %s298, i32 0, i32 1, !dbg !1635
  store i32 %shl297, i32* %high299, align 4, !dbg !1636
  %s300 = bitcast %union.dwords* %n to %struct.anon*, !dbg !1637
  %high301 = getelementptr inbounds %struct.anon, %struct.anon* %s300, i32 0, i32 1, !dbg !1638
  %72 = load i32, i32* %high301, align 4, !dbg !1638
  %shr302 = lshr i32 %72, %inc277, !dbg !1639
  %s303 = bitcast %union.dwords* %r to %struct.anon*, !dbg !1640
  %high304 = getelementptr inbounds %struct.anon, %struct.anon* %s303, i32 0, i32 1, !dbg !1641
  store i32 %shr302, i32* %high304, align 4, !dbg !1642
  %s305 = bitcast %union.dwords* %n to %struct.anon*, !dbg !1643
  %high306 = getelementptr inbounds %struct.anon, %struct.anon* %s305, i32 0, i32 1, !dbg !1644
  %73 = load i32, i32* %high306, align 4, !dbg !1644
  %sub307 = sub nsw i32 31, %sub268, !dbg !1645
  %shl308 = shl i32 %73, %sub307, !dbg !1646
  %low310 = bitcast %union.dwords* %n to i32*, !dbg !1647
  %74 = load i32, i32* %low310, align 8, !dbg !1647
  %shr311 = lshr i32 %74, %inc277, !dbg !1648
  %or312 = or i32 %shl308, %shr311, !dbg !1649
  %low314 = bitcast %union.dwords* %r to i32*, !dbg !1650
  store i32 %or312, i32* %low314, align 8, !dbg !1651
  br label %if.end315

if.end315:                                        ; preds = %if.else293, %if.then282
  br label %if.end316

if.end316:                                        ; preds = %if.end315, %if.end262
  %sr.0 = phi i32 [ %sub192, %if.end262 ], [ %inc277, %if.end315 ], !dbg !1652
  br label %if.end317

if.end317:                                        ; preds = %if.end316, %if.end116
  %sr.1 = phi i32 [ %inc, %if.end116 ], [ %sr.0, %if.end316 ], !dbg !1652
  br label %for.cond, !dbg !1653

for.cond:                                         ; preds = %for.inc, %if.end317
  %sr.2 = phi i32 [ %sr.1, %if.end317 ], [ %dec, %for.inc ], !dbg !1652
  %carry.0 = phi i32 [ 0, %if.end317 ], [ %conv360, %for.inc ], !dbg !1652
  %cmp318.not = icmp eq i32 %sr.2, 0, !dbg !1654
  br i1 %cmp318.not, label %for.end, label %for.body, !dbg !1653

for.body:                                         ; preds = %for.cond
  %s320 = bitcast %union.dwords* %r to %struct.anon*, !dbg !1655
  %high321 = getelementptr inbounds %struct.anon, %struct.anon* %s320, i32 0, i32 1, !dbg !1656
  %75 = load i32, i32* %high321, align 4, !dbg !1656
  %low324 = bitcast %union.dwords* %r to i32*, !dbg !1657
  %76 = load i32, i32* %low324, align 8, !dbg !1657
  %or326 = call i32 @llvm.fshl.i32(i32 %75, i32 %76, i32 1), !dbg !1658
  %s327 = bitcast %union.dwords* %r to %struct.anon*, !dbg !1659
  %high328 = getelementptr inbounds %struct.anon, %struct.anon* %s327, i32 0, i32 1, !dbg !1660
  store i32 %or326, i32* %high328, align 4, !dbg !1661
  %s332 = bitcast %union.dwords* %q to %struct.anon*, !dbg !1662
  %high333 = getelementptr inbounds %struct.anon, %struct.anon* %s332, i32 0, i32 1, !dbg !1663
  %77 = load i32, i32* %high333, align 4, !dbg !1663
  %or335 = call i32 @llvm.fshl.i32(i32 %76, i32 %77, i32 1), !dbg !1664
  %low337 = bitcast %union.dwords* %r to i32*, !dbg !1665
  store i32 %or335, i32* %low337, align 8, !dbg !1666
  %s338 = bitcast %union.dwords* %q to %struct.anon*, !dbg !1667
  %high339 = getelementptr inbounds %struct.anon, %struct.anon* %s338, i32 0, i32 1, !dbg !1668
  %78 = load i32, i32* %high339, align 4, !dbg !1668
  %low342 = bitcast %union.dwords* %q to i32*, !dbg !1669
  %79 = load i32, i32* %low342, align 8, !dbg !1669
  %or344 = call i32 @llvm.fshl.i32(i32 %78, i32 %79, i32 1), !dbg !1670
  %s345 = bitcast %union.dwords* %q to %struct.anon*, !dbg !1671
  %high346 = getelementptr inbounds %struct.anon, %struct.anon* %s345, i32 0, i32 1, !dbg !1672
  store i32 %or344, i32* %high346, align 4, !dbg !1673
  %shl349 = shl i32 %79, 1, !dbg !1674
  %or350 = or i32 %shl349, %carry.0, !dbg !1675
  %low352 = bitcast %union.dwords* %q to i32*, !dbg !1676
  store i32 %or350, i32* %low352, align 8, !dbg !1677
  %all354 = getelementptr inbounds %union.dwords, %union.dwords* %d, i32 0, i32 0, !dbg !1678
  %80 = load i64, i64* %all354, align 8, !dbg !1678
  %all355 = getelementptr inbounds %union.dwords, %union.dwords* %r, i32 0, i32 0, !dbg !1679
  %81 = load i64, i64* %all355, align 8, !dbg !1679
  %82 = xor i64 %81, -1, !dbg !1680
  %sub357 = add i64 %80, %82, !dbg !1680
  %isneg = icmp slt i64 %sub357, 0, !dbg !1681
  %and362 = select i1 %isneg, i64 %80, i64 0, !dbg !1681
  %all363 = getelementptr inbounds %union.dwords, %union.dwords* %r, i32 0, i32 0, !dbg !1682
  %sub364 = sub i64 %81, %and362, !dbg !1683
  store i64 %sub364, i64* %all363, align 8, !dbg !1683
  br label %for.inc, !dbg !1684

for.inc:                                          ; preds = %for.body
  %and359 = lshr i64 %sub357, 63, !dbg !1685
  %conv360 = trunc i64 %and359 to i32, !dbg !1686
  %dec = add i32 %sr.2, -1, !dbg !1687
  br label %for.cond, !dbg !1653, !llvm.loop !1688

for.end:                                          ; preds = %for.cond
  %all365 = getelementptr inbounds %union.dwords, %union.dwords* %q, i32 0, i32 0, !dbg !1689
  %83 = load i64, i64* %all365, align 8, !dbg !1689
  %shl366 = shl i64 %83, 1, !dbg !1690
  %conv367 = zext i32 %carry.0 to i64, !dbg !1691
  %or368 = or i64 %shl366, %conv367, !dbg !1692
  %all369 = getelementptr inbounds %union.dwords, %union.dwords* %q, i32 0, i32 0, !dbg !1693
  store i64 %or368, i64* %all369, align 8, !dbg !1694
  %tobool370.not = icmp eq i64* %rem, null, !dbg !1695
  br i1 %tobool370.not, label %if.end373, label %if.then371, !dbg !1695

if.then371:                                       ; preds = %for.end
  %all372 = getelementptr inbounds %union.dwords, %union.dwords* %r, i32 0, i32 0, !dbg !1696
  %84 = load i64, i64* %all372, align 8, !dbg !1696
  store i64 %84, i64* %rem, align 8, !dbg !1697
  br label %if.end373, !dbg !1698

if.end373:                                        ; preds = %if.then371, %for.end
  %all374 = getelementptr inbounds %union.dwords, %union.dwords* %q, i32 0, i32 0, !dbg !1699
  %85 = load i64, i64* %all374, align 8, !dbg !1699
  br label %return, !dbg !1700

return:                                           ; preds = %if.end373, %if.end275, %if.end168, %if.then166, %if.end115, %if.end97, %if.end67, %if.end42, %if.end22, %if.end
  %retval.0 = phi i64 [ %conv15, %if.end ], [ 0, %if.end22 ], [ %conv48, %if.end42 ], [ %conv73, %if.end67 ], [ %conv102, %if.end97 ], [ 0, %if.end115 ], [ %85, %if.end373 ], [ %43, %if.then166 ], [ %49, %if.end168 ], [ 0, %if.end275 ], !dbg !1652
  ret i64 %retval.0, !dbg !1701
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__divmoddi4(i64 noundef %a, i64 noundef %b, i64* noundef %rem) #2 !dbg !1702 {
entry:
  %call = call arm_aapcscc i64 @__divdi3(i64 noundef %a, i64 noundef %b) #4, !dbg !1703
  %mul = mul nsw i64 %call, %b, !dbg !1704
  %sub = sub nsw i64 %a, %mul, !dbg !1705
  store i64 %sub, i64* %rem, align 8, !dbg !1706
  ret i64 %call, !dbg !1707
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__divmodsi4(i32 noundef %a, i32 noundef %b, i32* noundef %rem) #2 !dbg !1708 {
entry:
  %call = call arm_aapcscc i32 @__divsi3(i32 noundef %a, i32 noundef %b) #4, !dbg !1709
  %mul = mul nsw i32 %call, %b, !dbg !1710
  %sub = sub nsw i32 %a, %mul, !dbg !1711
  store i32 %sub, i32* %rem, align 4, !dbg !1712
  ret i32 %call, !dbg !1713
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__divsi3(i32 noundef %a, i32 noundef %b) #2 !dbg !1714 {
entry:
  %shr = ashr i32 %a, 31, !dbg !1715
  %shr1 = ashr i32 %b, 31, !dbg !1716
  %xor = xor i32 %shr, %a, !dbg !1717
  %sub = sub nsw i32 %xor, %shr, !dbg !1718
  %xor2 = xor i32 %shr1, %b, !dbg !1719
  %sub3 = sub nsw i32 %xor2, %shr1, !dbg !1720
  %xor4 = xor i32 %shr, %shr1, !dbg !1721
  %div = udiv i32 %sub, %sub3, !dbg !1722
  %xor5 = xor i32 %div, %xor4, !dbg !1723
  %sub6 = sub i32 %xor5, %xor4, !dbg !1724
  ret i32 %sub6, !dbg !1725
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__ffsdi2(i64 noundef %a) #2 !dbg !1726 {
entry:
  %x = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %x, i32 0, i32 0, !dbg !1727
  store i64 %a, i64* %all, align 8, !dbg !1728
  %low = bitcast %union.dwords* %x to i32*, !dbg !1729
  %0 = load i32, i32* %low, align 8, !dbg !1729
  %cmp = icmp eq i32 %0, 0, !dbg !1730
  br i1 %cmp, label %if.then, label %if.end6, !dbg !1731

if.then:                                          ; preds = %entry
  %s1 = bitcast %union.dwords* %x to %struct.anon*, !dbg !1732
  %high = getelementptr inbounds %struct.anon, %struct.anon* %s1, i32 0, i32 1, !dbg !1733
  %1 = load i32, i32* %high, align 4, !dbg !1733
  %cmp2 = icmp eq i32 %1, 0, !dbg !1734
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !1735

if.then3:                                         ; preds = %if.then
  br label %return, !dbg !1736

if.end:                                           ; preds = %if.then
  %s4 = bitcast %union.dwords* %x to %struct.anon*, !dbg !1737
  %high5 = getelementptr inbounds %struct.anon, %struct.anon* %s4, i32 0, i32 1, !dbg !1738
  %2 = load i32, i32* %high5, align 4, !dbg !1738
  %3 = call i32 @llvm.cttz.i32(i32 %2, i1 false), !dbg !1739, !range !1221
  %add = add nuw nsw i32 %3, 33, !dbg !1740
  br label %return, !dbg !1741

if.end6:                                          ; preds = %entry
  %low8 = bitcast %union.dwords* %x to i32*, !dbg !1742
  %4 = load i32, i32* %low8, align 8, !dbg !1742
  %5 = call i32 @llvm.cttz.i32(i32 %4, i1 false), !dbg !1743, !range !1221
  %add9 = add nuw nsw i32 %5, 1, !dbg !1744
  br label %return, !dbg !1745

return:                                           ; preds = %if.end6, %if.end, %if.then3
  %retval.0 = phi i32 [ 0, %if.then3 ], [ %add, %if.end ], [ %add9, %if.end6 ], !dbg !1746
  ret i32 %retval.0, !dbg !1747
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__ffssi2(i32 noundef %a) #2 !dbg !1748 {
entry:
  %cmp = icmp eq i32 %a, 0, !dbg !1749
  br i1 %cmp, label %if.then, label %if.end, !dbg !1750

if.then:                                          ; preds = %entry
  br label %return, !dbg !1751

if.end:                                           ; preds = %entry
  %0 = call i32 @llvm.cttz.i32(i32 %a, i1 true), !dbg !1752, !range !1221
  %add = add nuw nsw i32 %0, 1, !dbg !1753
  br label %return, !dbg !1754

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %add, %if.end ], !dbg !1755
  ret i32 %retval.0, !dbg !1756
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__lshrdi3(i64 noundef %a, i32 noundef %b) #2 !dbg !1757 {
entry:
  %input = alloca %union.dwords, align 8
  %result = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %input, i32 0, i32 0, !dbg !1758
  store i64 %a, i64* %all, align 8, !dbg !1759
  %and = and i32 %b, 32, !dbg !1760
  %tobool.not = icmp eq i32 %and, 0, !dbg !1760
  br i1 %tobool.not, label %if.else, label %if.then, !dbg !1761

if.then:                                          ; preds = %entry
  %s = bitcast %union.dwords* %result to %struct.anon*, !dbg !1762
  %high = getelementptr inbounds %struct.anon, %struct.anon* %s, i32 0, i32 1, !dbg !1763
  store i32 0, i32* %high, align 4, !dbg !1764
  %s1 = bitcast %union.dwords* %input to %struct.anon*, !dbg !1765
  %high2 = getelementptr inbounds %struct.anon, %struct.anon* %s1, i32 0, i32 1, !dbg !1766
  %0 = load i32, i32* %high2, align 4, !dbg !1766
  %sub = add nsw i32 %b, -32, !dbg !1767
  %shr = lshr i32 %0, %sub, !dbg !1768
  %low = bitcast %union.dwords* %result to i32*, !dbg !1769
  store i32 %shr, i32* %low, align 8, !dbg !1770
  br label %if.end18, !dbg !1771

if.else:                                          ; preds = %entry
  %cmp = icmp eq i32 %b, 0, !dbg !1772
  br i1 %cmp, label %if.then4, label %if.end, !dbg !1773

if.then4:                                         ; preds = %if.else
  br label %return, !dbg !1774

if.end:                                           ; preds = %if.else
  %s5 = bitcast %union.dwords* %input to %struct.anon*, !dbg !1775
  %high6 = getelementptr inbounds %struct.anon, %struct.anon* %s5, i32 0, i32 1, !dbg !1776
  %1 = load i32, i32* %high6, align 4, !dbg !1776
  %shr7 = lshr i32 %1, %b, !dbg !1777
  %s8 = bitcast %union.dwords* %result to %struct.anon*, !dbg !1778
  %high9 = getelementptr inbounds %struct.anon, %struct.anon* %s8, i32 0, i32 1, !dbg !1779
  store i32 %shr7, i32* %high9, align 4, !dbg !1780
  %s10 = bitcast %union.dwords* %input to %struct.anon*, !dbg !1781
  %high11 = getelementptr inbounds %struct.anon, %struct.anon* %s10, i32 0, i32 1, !dbg !1782
  %2 = load i32, i32* %high11, align 4, !dbg !1782
  %sub12 = sub nsw i32 32, %b, !dbg !1783
  %shl = shl i32 %2, %sub12, !dbg !1784
  %low14 = bitcast %union.dwords* %input to i32*, !dbg !1785
  %3 = load i32, i32* %low14, align 8, !dbg !1785
  %shr15 = lshr i32 %3, %b, !dbg !1786
  %or = or i32 %shl, %shr15, !dbg !1787
  %low17 = bitcast %union.dwords* %result to i32*, !dbg !1788
  store i32 %or, i32* %low17, align 8, !dbg !1789
  br label %if.end18

if.end18:                                         ; preds = %if.end, %if.then
  %all19 = getelementptr inbounds %union.dwords, %union.dwords* %result, i32 0, i32 0, !dbg !1790
  %4 = load i64, i64* %all19, align 8, !dbg !1790
  br label %return, !dbg !1791

return:                                           ; preds = %if.end18, %if.then4
  %retval.0 = phi i64 [ %4, %if.end18 ], [ %a, %if.then4 ], !dbg !1792
  ret i64 %retval.0, !dbg !1793
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__moddi3(i64 noundef %a, i64 noundef %b) #2 !dbg !1794 {
entry:
  %r = alloca i64, align 8
  %0 = call i64 @llvm.abs.i64(i64 %b, i1 true), !dbg !1795
  %shr1 = ashr i64 %a, 63, !dbg !1796
  %xor2 = xor i64 %shr1, %a, !dbg !1797
  %sub3 = sub nsw i64 %xor2, %shr1, !dbg !1798
  %call = call arm_aapcscc i64 @__udivmoddi4(i64 noundef %sub3, i64 noundef %0, i64* noundef nonnull %r) #4, !dbg !1799
  %1 = load i64, i64* %r, align 8, !dbg !1800
  %xor4 = xor i64 %1, %shr1, !dbg !1801
  %sub5 = sub nsw i64 %xor4, %shr1, !dbg !1802
  ret i64 %sub5, !dbg !1803
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__modsi3(i32 noundef %a, i32 noundef %b) #2 !dbg !1804 {
entry:
  %call = call arm_aapcscc i32 @__divsi3(i32 noundef %a, i32 noundef %b) #4, !dbg !1805
  %mul = mul nsw i32 %call, %b, !dbg !1806
  %sub = sub nsw i32 %a, %mul, !dbg !1807
  ret i32 %sub, !dbg !1808
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__mulvdi3(i64 noundef %a, i64 noundef %b) #2 !dbg !1809 {
entry:
  %cmp = icmp eq i64 %a, -9223372036854775808, !dbg !1810
  br i1 %cmp, label %if.then, label %if.end4, !dbg !1811

if.then:                                          ; preds = %entry
  %cmp1 = icmp eq i64 %b, 0, !dbg !1812
  br i1 %cmp1, label %if.then3, label %lor.lhs.false, !dbg !1813

lor.lhs.false:                                    ; preds = %if.then
  %cmp2 = icmp eq i64 %b, 1, !dbg !1814
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !1815

if.then3:                                         ; preds = %lor.lhs.false, %if.then
  br label %return, !dbg !1816

if.end:                                           ; preds = %lor.lhs.false
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i32 noundef 31, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvdi3, i32 0, i32 0)) #5, !dbg !1817
  unreachable, !dbg !1817

if.end4:                                          ; preds = %entry
  %cmp5 = icmp eq i64 %b, -9223372036854775808, !dbg !1818
  br i1 %cmp5, label %if.then6, label %if.end13, !dbg !1819

if.then6:                                         ; preds = %if.end4
  %cmp7 = icmp eq i64 %a, 0, !dbg !1820
  br i1 %cmp7, label %if.then10, label %lor.lhs.false8, !dbg !1821

lor.lhs.false8:                                   ; preds = %if.then6
  %cmp9 = icmp eq i64 %a, 1, !dbg !1822
  br i1 %cmp9, label %if.then10, label %if.end12, !dbg !1823

if.then10:                                        ; preds = %lor.lhs.false8, %if.then6
  br label %return, !dbg !1824

if.end12:                                         ; preds = %lor.lhs.false8
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i32 noundef 37, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvdi3, i32 0, i32 0)) #5, !dbg !1825
  unreachable, !dbg !1825

if.end13:                                         ; preds = %if.end4
  %shr = ashr i64 %a, 63, !dbg !1826
  %xor = xor i64 %shr, %a, !dbg !1827
  %sub = sub nsw i64 %xor, %shr, !dbg !1828
  %shr14 = ashr i64 %b, 63, !dbg !1829
  %xor15 = xor i64 %shr14, %b, !dbg !1830
  %sub16 = sub nsw i64 %xor15, %shr14, !dbg !1831
  %cmp17 = icmp slt i64 %sub, 2, !dbg !1832
  br i1 %cmp17, label %if.then20, label %lor.lhs.false18, !dbg !1833

lor.lhs.false18:                                  ; preds = %if.end13
  %cmp19 = icmp slt i64 %sub16, 2, !dbg !1834
  br i1 %cmp19, label %if.then20, label %if.end22, !dbg !1835

if.then20:                                        ; preds = %lor.lhs.false18, %if.end13
  br label %return, !dbg !1836

if.end22:                                         ; preds = %lor.lhs.false18
  %cmp23 = icmp eq i64 %shr, %shr14, !dbg !1837
  br i1 %cmp23, label %if.then24, label %if.else, !dbg !1838

if.then24:                                        ; preds = %if.end22
  %div = sdiv i64 9223372036854775807, %sub16, !dbg !1839
  %cmp25 = icmp sgt i64 %sub, %div, !dbg !1840
  br i1 %cmp25, label %if.then26, label %if.end27, !dbg !1841

if.then26:                                        ; preds = %if.then24
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i32 noundef 48, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvdi3, i32 0, i32 0)) #5, !dbg !1842
  unreachable, !dbg !1842

if.end27:                                         ; preds = %if.then24
  br label %if.end33, !dbg !1843

if.else:                                          ; preds = %if.end22
  %sub28 = sub nsw i64 0, %sub16, !dbg !1844
  %div29 = sdiv i64 -9223372036854775808, %sub28, !dbg !1845
  %cmp30 = icmp sgt i64 %sub, %div29, !dbg !1846
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !1847

if.then31:                                        ; preds = %if.else
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i32 noundef 53, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvdi3, i32 0, i32 0)) #5, !dbg !1848
  unreachable, !dbg !1848

if.end32:                                         ; preds = %if.else
  br label %if.end33

if.end33:                                         ; preds = %if.end32, %if.end27
  br label %return, !dbg !1849

return:                                           ; preds = %if.end33, %if.then20, %if.then10, %if.then3
  %retval.0 = mul nsw i64 %a, %b, !dbg !1850
  ret i64 %retval.0, !dbg !1851
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__mulvsi3(i32 noundef %a, i32 noundef %b) #2 !dbg !1852 {
entry:
  %cmp = icmp eq i32 %a, -2147483648, !dbg !1853
  br i1 %cmp, label %if.then, label %if.end4, !dbg !1854

if.then:                                          ; preds = %entry
  %cmp1 = icmp eq i32 %b, 0, !dbg !1855
  br i1 %cmp1, label %if.then3, label %lor.lhs.false, !dbg !1856

lor.lhs.false:                                    ; preds = %if.then
  %cmp2 = icmp eq i32 %b, 1, !dbg !1857
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !1858

if.then3:                                         ; preds = %lor.lhs.false, %if.then
  br label %return, !dbg !1859

if.end:                                           ; preds = %lor.lhs.false
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), i32 noundef 31, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvsi3, i32 0, i32 0)) #5, !dbg !1860
  unreachable, !dbg !1860

if.end4:                                          ; preds = %entry
  %cmp5 = icmp eq i32 %b, -2147483648, !dbg !1861
  br i1 %cmp5, label %if.then6, label %if.end13, !dbg !1862

if.then6:                                         ; preds = %if.end4
  %cmp7 = icmp eq i32 %a, 0, !dbg !1863
  br i1 %cmp7, label %if.then10, label %lor.lhs.false8, !dbg !1864

lor.lhs.false8:                                   ; preds = %if.then6
  %cmp9 = icmp eq i32 %a, 1, !dbg !1865
  br i1 %cmp9, label %if.then10, label %if.end12, !dbg !1866

if.then10:                                        ; preds = %lor.lhs.false8, %if.then6
  br label %return, !dbg !1867

if.end12:                                         ; preds = %lor.lhs.false8
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), i32 noundef 37, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvsi3, i32 0, i32 0)) #5, !dbg !1868
  unreachable, !dbg !1868

if.end13:                                         ; preds = %if.end4
  %shr = ashr i32 %a, 31, !dbg !1869
  %xor = xor i32 %shr, %a, !dbg !1870
  %sub = sub nsw i32 %xor, %shr, !dbg !1871
  %shr14 = ashr i32 %b, 31, !dbg !1872
  %xor15 = xor i32 %shr14, %b, !dbg !1873
  %sub16 = sub nsw i32 %xor15, %shr14, !dbg !1874
  %cmp17 = icmp slt i32 %sub, 2, !dbg !1875
  br i1 %cmp17, label %if.then20, label %lor.lhs.false18, !dbg !1876

lor.lhs.false18:                                  ; preds = %if.end13
  %cmp19 = icmp slt i32 %sub16, 2, !dbg !1877
  br i1 %cmp19, label %if.then20, label %if.end22, !dbg !1878

if.then20:                                        ; preds = %lor.lhs.false18, %if.end13
  br label %return, !dbg !1879

if.end22:                                         ; preds = %lor.lhs.false18
  %cmp23 = icmp eq i32 %shr, %shr14, !dbg !1880
  br i1 %cmp23, label %if.then24, label %if.else, !dbg !1881

if.then24:                                        ; preds = %if.end22
  %div = sdiv i32 2147483647, %sub16, !dbg !1882
  %cmp25 = icmp sgt i32 %sub, %div, !dbg !1883
  br i1 %cmp25, label %if.then26, label %if.end27, !dbg !1884

if.then26:                                        ; preds = %if.then24
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), i32 noundef 48, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvsi3, i32 0, i32 0)) #5, !dbg !1885
  unreachable, !dbg !1885

if.end27:                                         ; preds = %if.then24
  br label %if.end33, !dbg !1886

if.else:                                          ; preds = %if.end22
  %sub28 = sub nsw i32 0, %sub16, !dbg !1887
  %div29 = sdiv i32 -2147483648, %sub28, !dbg !1888
  %cmp30 = icmp sgt i32 %sub, %div29, !dbg !1889
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !1890

if.then31:                                        ; preds = %if.else
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), i32 noundef 53, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvsi3, i32 0, i32 0)) #5, !dbg !1891
  unreachable, !dbg !1891

if.end32:                                         ; preds = %if.else
  br label %if.end33

if.end33:                                         ; preds = %if.end32, %if.end27
  br label %return, !dbg !1892

return:                                           ; preds = %if.end33, %if.then20, %if.then10, %if.then3
  %retval.0 = mul nsw i32 %a, %b, !dbg !1893
  ret i32 %retval.0, !dbg !1894
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__paritydi2(i64 noundef %a) #2 !dbg !1895 {
entry:
  %x = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %x, i32 0, i32 0, !dbg !1896
  store i64 %a, i64* %all, align 8, !dbg !1897
  %s = bitcast %union.dwords* %x to %struct.anon*, !dbg !1898
  %high = getelementptr inbounds %struct.anon, %struct.anon* %s, i32 0, i32 1, !dbg !1899
  %0 = load i32, i32* %high, align 4, !dbg !1899
  %low = bitcast %union.dwords* %x to i32*, !dbg !1900
  %1 = load i32, i32* %low, align 8, !dbg !1900
  %xor = xor i32 %0, %1, !dbg !1901
  %call = call arm_aapcscc i32 @__paritysi2(i32 noundef %xor) #4, !dbg !1902
  ret i32 %call, !dbg !1903
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__paritysi2(i32 noundef %a) #2 !dbg !1904 {
entry:
  %shr = lshr i32 %a, 16, !dbg !1905
  %xor = xor i32 %shr, %a, !dbg !1906
  %shr1 = lshr i32 %xor, 8, !dbg !1907
  %xor2 = xor i32 %xor, %shr1, !dbg !1908
  %shr3 = lshr i32 %xor2, 4, !dbg !1909
  %xor4 = xor i32 %xor2, %shr3, !dbg !1910
  %and = and i32 %xor4, 15, !dbg !1911
  %shr5 = lshr i32 27030, %and, !dbg !1912
  %and6 = and i32 %shr5, 1, !dbg !1913
  ret i32 %and6, !dbg !1914
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__popcountdi2(i64 noundef %a) #2 !dbg !1915 {
entry:
  %shr = lshr i64 %a, 1, !dbg !1916
  %and = and i64 %shr, 6148914691236517205, !dbg !1917
  %sub = sub i64 %a, %and, !dbg !1918
  %shr1 = lshr i64 %sub, 2, !dbg !1919
  %and2 = and i64 %shr1, 3689348814741910323, !dbg !1920
  %and3 = and i64 %sub, 3689348814741910323, !dbg !1921
  %add = add nuw nsw i64 %and2, %and3, !dbg !1922
  %shr4 = lshr i64 %add, 4, !dbg !1923
  %add5 = add nuw nsw i64 %add, %shr4, !dbg !1924
  %and6 = and i64 %add5, 1085102592571150095, !dbg !1925
  %shr7 = lshr i64 %and6, 32, !dbg !1926
  %add8 = add nuw nsw i64 %and6, %shr7, !dbg !1927
  %conv = trunc i64 %add8 to i32, !dbg !1928
  %shr9 = lshr i32 %conv, 16, !dbg !1929
  %add10 = add nuw nsw i32 %shr9, %conv, !dbg !1930
  %shr11 = lshr i32 %add10, 8, !dbg !1931
  %add12 = add nuw nsw i32 %add10, %shr11, !dbg !1932
  %and13 = and i32 %add12, 127, !dbg !1933
  ret i32 %and13, !dbg !1934
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__popcountsi2(i32 noundef %a) #2 !dbg !1935 {
entry:
  %shr = lshr i32 %a, 1, !dbg !1936
  %and = and i32 %shr, 1431655765, !dbg !1937
  %sub = sub i32 %a, %and, !dbg !1938
  %shr1 = lshr i32 %sub, 2, !dbg !1939
  %and2 = and i32 %shr1, 858993459, !dbg !1940
  %and3 = and i32 %sub, 858993459, !dbg !1941
  %add = add nuw nsw i32 %and2, %and3, !dbg !1942
  %shr4 = lshr i32 %add, 4, !dbg !1943
  %add5 = add nuw nsw i32 %add, %shr4, !dbg !1944
  %and6 = and i32 %add5, 252645135, !dbg !1945
  %shr7 = lshr i32 %and6, 16, !dbg !1946
  %add8 = add nuw nsw i32 %and6, %shr7, !dbg !1947
  %shr9 = lshr i32 %add8, 8, !dbg !1948
  %add10 = add nuw nsw i32 %add8, %shr9, !dbg !1949
  %and11 = and i32 %add10, 63, !dbg !1950
  ret i32 %and11, !dbg !1951
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__subvdi3(i64 noundef %a, i64 noundef %b) #2 !dbg !1952 {
entry:
  %sub = sub i64 %a, %b, !dbg !1953
  %cmp = icmp sgt i64 %b, -1, !dbg !1954
  br i1 %cmp, label %if.then, label %if.else, !dbg !1955

if.then:                                          ; preds = %entry
  %cmp1 = icmp sgt i64 %sub, %a, !dbg !1956
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !1957

if.then2:                                         ; preds = %if.then
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i32 0, i32 0), i32 noundef 28, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__subvdi3, i32 0, i32 0)) #5, !dbg !1958
  unreachable, !dbg !1958

if.end:                                           ; preds = %if.then
  br label %if.end6, !dbg !1959

if.else:                                          ; preds = %entry
  %cmp3.not = icmp sgt i64 %sub, %a, !dbg !1960
  br i1 %cmp3.not, label %if.end5, label %if.then4, !dbg !1961

if.then4:                                         ; preds = %if.else
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i32 0, i32 0), i32 noundef 33, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__subvdi3, i32 0, i32 0)) #5, !dbg !1962
  unreachable, !dbg !1962

if.end5:                                          ; preds = %if.else
  br label %if.end6

if.end6:                                          ; preds = %if.end5, %if.end
  ret i64 %sub, !dbg !1963
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__subvsi3(i32 noundef %a, i32 noundef %b) #2 !dbg !1964 {
entry:
  %sub = sub i32 %a, %b, !dbg !1965
  %cmp = icmp sgt i32 %b, -1, !dbg !1966
  br i1 %cmp, label %if.then, label %if.else, !dbg !1967

if.then:                                          ; preds = %entry
  %cmp1 = icmp sgt i32 %sub, %a, !dbg !1968
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !1969

if.then2:                                         ; preds = %if.then
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i32 0, i32 0), i32 noundef 28, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__subvsi3, i32 0, i32 0)) #5, !dbg !1970
  unreachable, !dbg !1970

if.end:                                           ; preds = %if.then
  br label %if.end6, !dbg !1971

if.else:                                          ; preds = %entry
  %cmp3.not = icmp sgt i32 %sub, %a, !dbg !1972
  br i1 %cmp3.not, label %if.end5, label %if.then4, !dbg !1973

if.then4:                                         ; preds = %if.else
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i32 0, i32 0), i32 noundef 33, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__subvsi3, i32 0, i32 0)) #5, !dbg !1974
  unreachable, !dbg !1974

if.end5:                                          ; preds = %if.else
  br label %if.end6

if.end6:                                          ; preds = %if.end5, %if.end
  ret i32 %sub, !dbg !1975
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__ucmpdi2(i64 noundef %a, i64 noundef %b) #2 !dbg !1976 {
entry:
  %x = alloca %union.dwords, align 8
  %y = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %x, i32 0, i32 0, !dbg !1977
  store i64 %a, i64* %all, align 8, !dbg !1978
  %all1 = getelementptr inbounds %union.dwords, %union.dwords* %y, i32 0, i32 0, !dbg !1979
  store i64 %b, i64* %all1, align 8, !dbg !1980
  %s = bitcast %union.dwords* %x to %struct.anon*, !dbg !1981
  %high = getelementptr inbounds %struct.anon, %struct.anon* %s, i32 0, i32 1, !dbg !1982
  %0 = load i32, i32* %high, align 4, !dbg !1982
  %s2 = bitcast %union.dwords* %y to %struct.anon*, !dbg !1983
  %high3 = getelementptr inbounds %struct.anon, %struct.anon* %s2, i32 0, i32 1, !dbg !1984
  %1 = load i32, i32* %high3, align 4, !dbg !1984
  %cmp = icmp ult i32 %0, %1, !dbg !1985
  br i1 %cmp, label %if.then, label %if.end, !dbg !1986

if.then:                                          ; preds = %entry
  br label %return, !dbg !1987

if.end:                                           ; preds = %entry
  %s4 = bitcast %union.dwords* %x to %struct.anon*, !dbg !1988
  %high5 = getelementptr inbounds %struct.anon, %struct.anon* %s4, i32 0, i32 1, !dbg !1989
  %2 = load i32, i32* %high5, align 4, !dbg !1989
  %s6 = bitcast %union.dwords* %y to %struct.anon*, !dbg !1990
  %high7 = getelementptr inbounds %struct.anon, %struct.anon* %s6, i32 0, i32 1, !dbg !1991
  %3 = load i32, i32* %high7, align 4, !dbg !1991
  %cmp8 = icmp ugt i32 %2, %3, !dbg !1992
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !1993

if.then9:                                         ; preds = %if.end
  br label %return, !dbg !1994

if.end10:                                         ; preds = %if.end
  %low = bitcast %union.dwords* %x to i32*, !dbg !1995
  %4 = load i32, i32* %low, align 8, !dbg !1995
  %low13 = bitcast %union.dwords* %y to i32*, !dbg !1996
  %5 = load i32, i32* %low13, align 8, !dbg !1996
  %cmp14 = icmp ult i32 %4, %5, !dbg !1997
  br i1 %cmp14, label %if.then15, label %if.end16, !dbg !1998

if.then15:                                        ; preds = %if.end10
  br label %return, !dbg !1999

if.end16:                                         ; preds = %if.end10
  %low18 = bitcast %union.dwords* %x to i32*, !dbg !2000
  %6 = load i32, i32* %low18, align 8, !dbg !2000
  %low20 = bitcast %union.dwords* %y to i32*, !dbg !2001
  %7 = load i32, i32* %low20, align 8, !dbg !2001
  %cmp21 = icmp ugt i32 %6, %7, !dbg !2002
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !2003

if.then22:                                        ; preds = %if.end16
  br label %return, !dbg !2004

if.end23:                                         ; preds = %if.end16
  br label %return, !dbg !2005

return:                                           ; preds = %if.end23, %if.then22, %if.then15, %if.then9, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 2, %if.then9 ], [ 0, %if.then15 ], [ 2, %if.then22 ], [ 1, %if.end23 ], !dbg !2006
  ret i32 %retval.0, !dbg !2007
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__aeabi_ulcmp(i64 noundef %a, i64 noundef %b) #2 !dbg !2008 {
entry:
  %call = call arm_aapcscc i32 @__ucmpdi2(i64 noundef %a, i64 noundef %b) #4, !dbg !2009
  %sub = add nsw i32 %call, -1, !dbg !2010
  ret i32 %sub, !dbg !2011
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__udivdi3(i64 noundef %a, i64 noundef %b) #2 !dbg !2012 {
entry:
  %call = call arm_aapcscc i64 @__udivmoddi4(i64 noundef %a, i64 noundef %b, i64* noundef null) #4, !dbg !2013
  ret i64 %call, !dbg !2014
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__udivmodsi4(i32 noundef %a, i32 noundef %b, i32* noundef %rem) #2 !dbg !2015 {
entry:
  %call = call arm_aapcscc i32 @__udivsi3(i32 noundef %a, i32 noundef %b) #4, !dbg !2016
  %mul = mul i32 %call, %b, !dbg !2017
  %sub = sub i32 %a, %mul, !dbg !2018
  store i32 %sub, i32* %rem, align 4, !dbg !2019
  ret i32 %call, !dbg !2020
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__udivsi3(i32 noundef %n, i32 noundef %d) #2 !dbg !2021 {
entry:
  %cmp = icmp eq i32 %d, 0, !dbg !2022
  br i1 %cmp, label %if.then, label %if.end, !dbg !2023

if.then:                                          ; preds = %entry
  br label %return, !dbg !2024

if.end:                                           ; preds = %entry
  %cmp1 = icmp eq i32 %n, 0, !dbg !2025
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !2026

if.then2:                                         ; preds = %if.end
  br label %return, !dbg !2027

if.end3:                                          ; preds = %if.end
  %0 = call i32 @llvm.ctlz.i32(i32 %d, i1 true), !dbg !2028, !range !1221
  %1 = call i32 @llvm.ctlz.i32(i32 %n, i1 true), !dbg !2029, !range !1221
  %sub = sub nsw i32 %0, %1, !dbg !2030
  %cmp4 = icmp ugt i32 %sub, 31, !dbg !2031
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !2032

if.then5:                                         ; preds = %if.end3
  br label %return, !dbg !2033

if.end6:                                          ; preds = %if.end3
  %cmp7 = icmp eq i32 %sub, 31, !dbg !2034
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !2035

if.then8:                                         ; preds = %if.end6
  br label %return, !dbg !2036

if.end9:                                          ; preds = %if.end6
  %inc = add nsw i32 %sub, 1, !dbg !2037
  %sub10 = sub nsw i32 31, %sub, !dbg !2038
  %shl = shl i32 %n, %sub10, !dbg !2039
  %shr = lshr i32 %n, %inc, !dbg !2040
  br label %for.cond, !dbg !2041

for.cond:                                         ; preds = %for.inc, %if.end9
  %q.0 = phi i32 [ %shl, %if.end9 ], [ %or15, %for.inc ], !dbg !2042
  %r.0 = phi i32 [ %shr, %if.end9 ], [ %sub20, %for.inc ], !dbg !2042
  %sr.0 = phi i32 [ %inc, %if.end9 ], [ %dec, %for.inc ], !dbg !2042
  %carry.0 = phi i32 [ 0, %if.end9 ], [ %and, %for.inc ], !dbg !2042
  %cmp11.not = icmp eq i32 %sr.0, 0, !dbg !2043
  br i1 %cmp11.not, label %for.end, label %for.body, !dbg !2041

for.body:                                         ; preds = %for.cond
  %or = call i32 @llvm.fshl.i32(i32 %r.0, i32 %q.0, i32 1), !dbg !2044
  %2 = xor i32 %or, -1, !dbg !2045
  %sub17 = add i32 %2, %d, !dbg !2045
  br label %for.inc, !dbg !2046

for.inc:                                          ; preds = %for.body
  %isneg = icmp slt i32 %sub17, 0, !dbg !2047
  %and19 = select i1 %isneg, i32 %d, i32 0, !dbg !2047
  %sub20 = sub i32 %or, %and19, !dbg !2048
  %and = lshr i32 %sub17, 31, !dbg !2049
  %shl14 = shl i32 %q.0, 1, !dbg !2050
  %or15 = or i32 %shl14, %carry.0, !dbg !2051
  %dec = add i32 %sr.0, -1, !dbg !2052
  br label %for.cond, !dbg !2041, !llvm.loop !2053

for.end:                                          ; preds = %for.cond
  %shl21 = shl i32 %q.0, 1, !dbg !2054
  %or22 = or i32 %shl21, %carry.0, !dbg !2055
  br label %return, !dbg !2056

return:                                           ; preds = %for.end, %if.then8, %if.then5, %if.then2, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then2 ], [ 0, %if.then5 ], [ %n, %if.then8 ], [ %or22, %for.end ], !dbg !2042
  ret i32 %retval.0, !dbg !2057
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__umoddi3(i64 noundef %a, i64 noundef %b) #2 !dbg !2058 {
entry:
  %r = alloca i64, align 8
  %call = call arm_aapcscc i64 @__udivmoddi4(i64 noundef %a, i64 noundef %b, i64* noundef nonnull %r) #4, !dbg !2059
  %0 = load i64, i64* %r, align 8, !dbg !2060
  ret i64 %0, !dbg !2061
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__umodsi3(i32 noundef %a, i32 noundef %b) #2 !dbg !2062 {
entry:
  %call = call arm_aapcscc i32 @__udivsi3(i32 noundef %a, i32 noundef %b) #4, !dbg !2063
  %mul = mul i32 %call, %b, !dbg !2064
  %sub = sub i32 %a, %mul, !dbg !2065
  ret i32 %sub, !dbg !2066
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i8* @memcpy(i8* noundef %destination, i8* noundef %source, i32 noundef %num) #2 !dbg !2067 {
entry:
  br label %for.cond, !dbg !2068

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !dbg !2069
  %exitcond.not = icmp eq i32 %i.0, %num, !dbg !2070
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !2071

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds i8, i8* %source, i32 %i.0, !dbg !2072
  %0 = load i8, i8* %arrayidx, align 1, !dbg !2072
  %arrayidx1 = getelementptr inbounds i8, i8* %destination, i32 %i.0, !dbg !2073
  store i8 %0, i8* %arrayidx1, align 1, !dbg !2074
  br label %for.inc, !dbg !2075

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.0, 1, !dbg !2076
  br label %for.cond, !dbg !2071, !llvm.loop !2077

for.end:                                          ; preds = %for.cond
  ret i8* undef, !dbg !2078
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i8* @memset(i8* noundef %ptr, i32 noundef %value, i32 noundef %num) #2 !dbg !2079 {
entry:
  br label %for.cond, !dbg !2080

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !dbg !2081
  %exitcond.not = icmp eq i32 %i.0, %num, !dbg !2082
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !2083

for.body:                                         ; preds = %for.cond
  %conv = trunc i32 %value to i8, !dbg !2084
  %arrayidx = getelementptr inbounds i8, i8* %ptr, i32 %i.0, !dbg !2085
  store i8 %conv, i8* %arrayidx, align 1, !dbg !2086
  br label %for.inc, !dbg !2087

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.0, 1, !dbg !2088
  br label %for.cond, !dbg !2083, !llvm.loop !2089

for.end:                                          ; preds = %for.cond
  ret i8* %ptr, !dbg !2090
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #1

attributes #0 = { noinline nounwind "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { noinline nounwind "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { noinline noreturn nounwind "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nobuiltin "no-builtins" }
attributes #5 = { nobuiltin noreturn "no-builtins" }

!llvm.dbg.cu = !{!2, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178}
!llvm.ident = !{!180, !181, !181, !181, !181, !181, !181, !181, !181, !181, !181, !181, !181, !181, !181, !181, !181, !181, !181, !181, !181, !181, !181, !181, !181, !181, !181, !181, !181, !181, !181, !181, !181, !181, !181, !181, !181, !181, !181, !181, !181, !181, !181, !181, !181, !181, !181, !181, !181, !181, !181, !181, !181, !181, !181, !181, !181}
!llvm.module.flags = !{!182, !183, !184, !185, !186, !187, !188, !189, !190}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "g723_enc_INPUT", scope: !2, file: !9, line: 117, type: !65, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 14.0.6 (git@github.com:RTS-SYSU/LLVM-TA.git b7f9c4ccdebc6c37532ddd772889e5f0ff989c79)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !6, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/workspaces/llvmta/testcases/singletest/g723_enc/g723_enc.c", directory: "/workspaces/llvmta/testcases/singletest/fir2dim")
!4 = !{!5}
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!0, !7, !14, !19, !24, !26, !28, !36, !38, !40, !63}
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "g723_enc_power2", scope: !2, file: !9, line: 140, type: !10, isLocal: false, isDefinition: true)
!9 = !DIFile(filename: "g723_enc/g723_enc.c", directory: "/workspaces/llvmta/testcases/singletest")
!10 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 240, elements: !12)
!11 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!12 = !{!13}
!13 = !DISubrange(count: 15)
!14 = !DIGlobalVariableExpression(var: !15, expr: !DIExpression())
!15 = distinct !DIGlobalVariable(name: "g723_enc_qtab_723_24", scope: !2, file: !9, line: 150, type: !16, isLocal: false, isDefinition: true)
!16 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 48, elements: !17)
!17 = !{!18}
!18 = !DISubrange(count: 3)
!19 = !DIGlobalVariableExpression(var: !20, expr: !DIExpression())
!20 = distinct !DIGlobalVariable(name: "g723_enc_dqlntab", scope: !2, file: !9, line: 156, type: !21, isLocal: false, isDefinition: true)
!21 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 256, elements: !22)
!22 = !{!23}
!23 = !DISubrange(count: 16)
!24 = !DIGlobalVariableExpression(var: !25, expr: !DIExpression())
!25 = distinct !DIGlobalVariable(name: "g723_enc_witab", scope: !2, file: !9, line: 161, type: !21, isLocal: false, isDefinition: true)
!26 = !DIGlobalVariableExpression(var: !27, expr: !DIExpression())
!27 = distinct !DIGlobalVariable(name: "g723_enc_fitab", scope: !2, file: !9, line: 169, type: !21, isLocal: false, isDefinition: true)
!28 = !DIGlobalVariableExpression(var: !29, expr: !DIExpression())
!29 = distinct !DIGlobalVariable(name: "out_buffer", scope: !30, file: !9, line: 756, type: !5, isLocal: true, isDefinition: true)
!30 = distinct !DISubprogram(name: "g723_enc_pack_output", scope: !9, file: !9, line: 752, type: !31, scopeLine: 755, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !35)
!31 = !DISubroutineType(types: !32)
!32 = !{!33, !34, !33}
!33 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!34 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!35 = !{}
!36 = !DIGlobalVariableExpression(var: !37, expr: !DIExpression())
!37 = distinct !DIGlobalVariable(name: "out_bits", scope: !30, file: !9, line: 757, type: !33, isLocal: true, isDefinition: true)
!38 = !DIGlobalVariableExpression(var: !39, expr: !DIExpression())
!39 = distinct !DIGlobalVariable(name: "i", scope: !30, file: !9, line: 759, type: !33, isLocal: true, isDefinition: true)
!40 = !DIGlobalVariableExpression(var: !41, expr: !DIExpression())
!41 = distinct !DIGlobalVariable(name: "g723_enc_state", scope: !2, file: !9, line: 115, type: !42, isLocal: false, isDefinition: true)
!42 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "g723_enc_state_t", file: !9, line: 33, size: 416, elements: !43)
!43 = !{!44, !46, !47, !48, !49, !50, !54, !58, !59, !60, !61}
!44 = !DIDerivedType(tag: DW_TAG_member, name: "yl", scope: !42, file: !9, line: 34, baseType: !45, size: 32)
!45 = !DIBasicType(name: "long", size: 32, encoding: DW_ATE_signed)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "yu", scope: !42, file: !9, line: 35, baseType: !11, size: 16, offset: 32)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "dms", scope: !42, file: !9, line: 36, baseType: !11, size: 16, offset: 48)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "dml", scope: !42, file: !9, line: 37, baseType: !11, size: 16, offset: 64)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "ap", scope: !42, file: !9, line: 38, baseType: !11, size: 16, offset: 80)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !42, file: !9, line: 40, baseType: !51, size: 32, offset: 96)
!51 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 32, elements: !52)
!52 = !{!53}
!53 = !DISubrange(count: 2)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !42, file: !9, line: 41, baseType: !55, size: 96, offset: 128)
!55 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 96, elements: !56)
!56 = !{!57}
!57 = !DISubrange(count: 6)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "pk", scope: !42, file: !9, line: 42, baseType: !51, size: 32, offset: 224)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "dq", scope: !42, file: !9, line: 46, baseType: !55, size: 96, offset: 256)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "sr", scope: !42, file: !9, line: 51, baseType: !51, size: 32, offset: 352)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "td", scope: !42, file: !9, line: 56, baseType: !62, size: 8, offset: 384)
!62 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!63 = !DIGlobalVariableExpression(var: !64, expr: !DIExpression())
!64 = distinct !DIGlobalVariable(name: "g723_enc_OUTPUT", scope: !2, file: !9, line: 138, type: !65, isLocal: false, isDefinition: true)
!65 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 8192, elements: !66)
!66 = !{!67}
!67 = !DISubrange(count: 256)
!68 = distinct !DICompileUnit(language: DW_LANG_C99, file: !69, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!69 = !DIFile(filename: "../absvdi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "f0fa545ed84eab29322431dd903e1bd2")
!70 = distinct !DICompileUnit(language: DW_LANG_C99, file: !71, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!71 = !DIFile(filename: "../absvsi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "4c623fefc2c7ed3929c6e73514b667d1")
!72 = distinct !DICompileUnit(language: DW_LANG_C99, file: !73, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!73 = !DIFile(filename: "../absvti2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "37a4bc629baa89b5b7c1570be0d03e1f")
!74 = distinct !DICompileUnit(language: DW_LANG_C99, file: !75, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!75 = !DIFile(filename: "../addvdi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "aa240ee8ce7c28b2c3bcec10a7603d3f")
!76 = distinct !DICompileUnit(language: DW_LANG_C99, file: !77, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!77 = !DIFile(filename: "../addvsi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "6cd4d40cc00928f1aaf6f29e299078cd")
!78 = distinct !DICompileUnit(language: DW_LANG_C99, file: !79, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!79 = !DIFile(filename: "../addvti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "0db25cee24f6026e13fc556e48cb2a4f")
!80 = distinct !DICompileUnit(language: DW_LANG_C99, file: !81, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!81 = !DIFile(filename: "../ashldi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "ae5236ddcefaf3e5efc4feba69d334b1")
!82 = distinct !DICompileUnit(language: DW_LANG_C99, file: !83, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!83 = !DIFile(filename: "../ashlti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "040402442e4641b723a41224f90bb33c")
!84 = distinct !DICompileUnit(language: DW_LANG_C99, file: !85, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!85 = !DIFile(filename: "../ashrdi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "df60b7a82095e7d7b5c11e1095a5679a")
!86 = distinct !DICompileUnit(language: DW_LANG_C99, file: !87, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!87 = !DIFile(filename: "../ashrti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "d09af17b4c5b806431a14ef018da30a2")
!88 = distinct !DICompileUnit(language: DW_LANG_C99, file: !89, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!89 = !DIFile(filename: "../clzdi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "901c40e0319a50689080965b20695c3e")
!90 = distinct !DICompileUnit(language: DW_LANG_C99, file: !91, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!91 = !DIFile(filename: "../clzsi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "9b0156c55102d3143e17bdf85bafbc30")
!92 = distinct !DICompileUnit(language: DW_LANG_C99, file: !93, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!93 = !DIFile(filename: "../clzti2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "6289c95e51f48974308ae457c947fa76")
!94 = distinct !DICompileUnit(language: DW_LANG_C99, file: !95, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!95 = !DIFile(filename: "../cmpdi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "79ec8a4b383c8374d228cd0869637319")
!96 = distinct !DICompileUnit(language: DW_LANG_C99, file: !97, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!97 = !DIFile(filename: "../cmpti2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "8b9214d8b14681920bdf2cff2acab581")
!98 = distinct !DICompileUnit(language: DW_LANG_C99, file: !99, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!99 = !DIFile(filename: "../ctzdi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "0415a3f61808ca646548bc24b48a844a")
!100 = distinct !DICompileUnit(language: DW_LANG_C99, file: !101, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!101 = !DIFile(filename: "../ctzsi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "0372a2c6647eddaa73c0b61d8d03c3b1")
!102 = distinct !DICompileUnit(language: DW_LANG_C99, file: !103, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!103 = !DIFile(filename: "../ctzti2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "13fd6233b75667ee3310f19e92769490")
!104 = distinct !DICompileUnit(language: DW_LANG_C99, file: !105, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!105 = !DIFile(filename: "../divdi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "281227589e0794a81d7211e4ee4a402c")
!106 = distinct !DICompileUnit(language: DW_LANG_C99, file: !107, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!107 = !DIFile(filename: "../divmoddi4.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "bd72633dccf26f3dd8ee74bf04f7fdac")
!108 = distinct !DICompileUnit(language: DW_LANG_C99, file: !109, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!109 = !DIFile(filename: "../divmodsi4.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "0cf7caca427f8ea020b675e27b5985b5")
!110 = distinct !DICompileUnit(language: DW_LANG_C99, file: !111, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!111 = !DIFile(filename: "../divsi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "7845e3e46788425cf69d463f3cfe00e5")
!112 = distinct !DICompileUnit(language: DW_LANG_C99, file: !113, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!113 = !DIFile(filename: "../divti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "6f197084470906a806c88d3dd279e870")
!114 = distinct !DICompileUnit(language: DW_LANG_C99, file: !115, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!115 = !DIFile(filename: "../ffsdi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "4b800e1cad35a0bc99971441032171a3")
!116 = distinct !DICompileUnit(language: DW_LANG_C99, file: !117, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!117 = !DIFile(filename: "../ffssi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "182169d6765bddc2bf1b03cc7a4f47cb")
!118 = distinct !DICompileUnit(language: DW_LANG_C99, file: !119, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!119 = !DIFile(filename: "../ffsti2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "828ab085c50c22a6e163e289ad75e357")
!120 = distinct !DICompileUnit(language: DW_LANG_C99, file: !121, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!121 = !DIFile(filename: "../int_util.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "7ceb1d4e85bede509d8e6a0974078bc9")
!122 = distinct !DICompileUnit(language: DW_LANG_C99, file: !123, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!123 = !DIFile(filename: "../lshrdi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "c456e45323b3205c3b32d82b51570771")
!124 = distinct !DICompileUnit(language: DW_LANG_C99, file: !125, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!125 = !DIFile(filename: "../lshrti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "a0deefe7ea6369a844ff00cfd3adca3e")
!126 = distinct !DICompileUnit(language: DW_LANG_C99, file: !127, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!127 = !DIFile(filename: "../moddi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "76733914157a978303cbe3d6f6d1c647")
!128 = distinct !DICompileUnit(language: DW_LANG_C99, file: !129, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!129 = !DIFile(filename: "../modsi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "ada583aff17540d2228ce14dc879fdc8")
!130 = distinct !DICompileUnit(language: DW_LANG_C99, file: !131, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!131 = !DIFile(filename: "../modti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "7d8393bf5eb9f0ba6dd3cb5fd0d18b1c")
!132 = distinct !DICompileUnit(language: DW_LANG_C99, file: !133, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!133 = !DIFile(filename: "../mulvdi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "bb6aa1440e4e37fe94db90279d27db10")
!134 = distinct !DICompileUnit(language: DW_LANG_C99, file: !135, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!135 = !DIFile(filename: "../mulvsi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "32cd947949fac3c039bd0839cd5d7c78")
!136 = distinct !DICompileUnit(language: DW_LANG_C99, file: !137, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!137 = !DIFile(filename: "../mulvti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "600972d5762784972446ff2942320803")
!138 = distinct !DICompileUnit(language: DW_LANG_C99, file: !139, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!139 = !DIFile(filename: "../paritydi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "bd9549e31bcebf1c2265048ea6f18a77")
!140 = distinct !DICompileUnit(language: DW_LANG_C99, file: !141, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!141 = !DIFile(filename: "../paritysi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "235e89e1ac3c55fb43879550247ea25b")
!142 = distinct !DICompileUnit(language: DW_LANG_C99, file: !143, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!143 = !DIFile(filename: "../parityti2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "731d722977e9d8c0cd1987cb790d412a")
!144 = distinct !DICompileUnit(language: DW_LANG_C99, file: !145, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!145 = !DIFile(filename: "../popcountdi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "05f001da7fc478c773612fd707769c2a")
!146 = distinct !DICompileUnit(language: DW_LANG_C99, file: !147, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!147 = !DIFile(filename: "../popcountsi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "f9ebedb2d8810ee5a54fff38e1b09d64")
!148 = distinct !DICompileUnit(language: DW_LANG_C99, file: !149, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!149 = !DIFile(filename: "../popcountti2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "cc3baf5a1f58193aeafb2e81bae65208")
!150 = distinct !DICompileUnit(language: DW_LANG_C99, file: !151, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!151 = !DIFile(filename: "../subvdi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "5774ab7a3a8e168deb55531047d6a873")
!152 = distinct !DICompileUnit(language: DW_LANG_C99, file: !153, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!153 = !DIFile(filename: "../subvsi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "c9558a85e8fabce36f42a29933bd87e9")
!154 = distinct !DICompileUnit(language: DW_LANG_C99, file: !155, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!155 = !DIFile(filename: "../subvti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "ae43c388730e95c5ad9b20d37f73fd82")
!156 = distinct !DICompileUnit(language: DW_LANG_C99, file: !157, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!157 = !DIFile(filename: "../ucmpdi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "79f778ef54939446d175079e19d07756")
!158 = distinct !DICompileUnit(language: DW_LANG_C99, file: !159, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!159 = !DIFile(filename: "../ucmpti2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "d30b659e82f7851c826242cd1de6f293")
!160 = distinct !DICompileUnit(language: DW_LANG_C99, file: !161, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!161 = !DIFile(filename: "../udivdi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "580a28989090b62fc3d261faa6e31a6b")
!162 = distinct !DICompileUnit(language: DW_LANG_C99, file: !163, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!163 = !DIFile(filename: "../udivmoddi4.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "eca4b147be989cda91330ba5b56ed879")
!164 = distinct !DICompileUnit(language: DW_LANG_C99, file: !165, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!165 = !DIFile(filename: "../udivmodsi4.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "c0341684574a20dbcfbe4df0ab9f8538")
!166 = distinct !DICompileUnit(language: DW_LANG_C99, file: !167, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!167 = !DIFile(filename: "../udivmodti4.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "876858111b283249167fa6a71cc4682f")
!168 = distinct !DICompileUnit(language: DW_LANG_C99, file: !169, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!169 = !DIFile(filename: "../udivsi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "b74987a973aededf95faab34db33f58a")
!170 = distinct !DICompileUnit(language: DW_LANG_C99, file: !171, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!171 = !DIFile(filename: "../udivti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "c9304f2e77edc1023290a4f40073f6f7")
!172 = distinct !DICompileUnit(language: DW_LANG_C99, file: !173, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!173 = !DIFile(filename: "../umoddi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "1a99e635325595a81040fb97dab88295")
!174 = distinct !DICompileUnit(language: DW_LANG_C99, file: !175, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!175 = !DIFile(filename: "../umodsi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "ce74ac33cd2bd170a84f43824cae8961")
!176 = distinct !DICompileUnit(language: DW_LANG_C99, file: !177, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!177 = !DIFile(filename: "../umodti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "f900660feeec718da080f01b23c74384")
!178 = distinct !DICompileUnit(language: DW_LANG_C99, file: !179, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!179 = !DIFile(filename: "../memory.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsstd/buildarmv4", checksumkind: CSK_MD5, checksum: "fa9c872a007b30a353222cd13b38538d")
!180 = !{!"clang version 14.0.6 (git@github.com:RTS-SYSU/LLVM-TA.git b7f9c4ccdebc6c37532ddd772889e5f0ff989c79)"}
!181 = !{!"clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)"}
!182 = !{i32 7, !"Dwarf Version", i32 5}
!183 = !{i32 2, !"Debug Info Version", i32 3}
!184 = !{i32 1, !"wchar_size", i32 4}
!185 = !{i32 1, !"min_enum_size", i32 4}
!186 = !{i32 1, !"branch-target-enforcement", i32 0}
!187 = !{i32 1, !"sign-return-address", i32 0}
!188 = !{i32 1, !"sign-return-address-all", i32 0}
!189 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!190 = !{i32 7, !"frame-pointer", i32 2}
!191 = distinct !DISubprogram(name: "g723_enc_fmult", scope: !9, file: !9, line: 200, type: !192, scopeLine: 203, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !35)
!192 = !DISubroutineType(types: !193)
!193 = !{!33, !33, !33}
!194 = !DILocalVariable(name: "an", arg: 1, scope: !191, file: !9, line: 201, type: !33)
!195 = !DILocation(line: 0, scope: !191)
!196 = !DILocalVariable(name: "srn", arg: 2, scope: !191, file: !9, line: 202, type: !33)
!197 = !DILocation(line: 208, column: 16, scope: !191)
!198 = !DILocation(line: 208, column: 11, scope: !191)
!199 = !DILocation(line: 208, column: 33, scope: !191)
!200 = !DILocation(line: 208, column: 39, scope: !191)
!201 = !DILocalVariable(name: "anmag", scope: !191, file: !9, line: 204, type: !11)
!202 = !DILocation(line: 209, column: 26, scope: !191)
!203 = !DILocation(line: 209, column: 11, scope: !191)
!204 = !DILocalVariable(name: "anexp", scope: !191, file: !9, line: 204, type: !11)
!205 = !DILocation(line: 210, column: 20, scope: !191)
!206 = !DILocation(line: 210, column: 12, scope: !191)
!207 = !DILocation(line: 211, column: 20, scope: !191)
!208 = !DILocation(line: 211, column: 12, scope: !191)
!209 = !DILocation(line: 211, column: 29, scope: !191)
!210 = !DILocation(line: 211, column: 35, scope: !191)
!211 = !DILocation(line: 211, column: 46, scope: !191)
!212 = !DILocation(line: 211, column: 56, scope: !191)
!213 = !DILocation(line: 211, column: 55, scope: !191)
!214 = !DILocation(line: 211, column: 52, scope: !191)
!215 = !DILocalVariable(name: "anmant", scope: !191, file: !9, line: 204, type: !11)
!216 = !DILocation(line: 212, column: 12, scope: !191)
!217 = !DILocalVariable(name: "wanexp", scope: !191, file: !9, line: 205, type: !11)
!218 = !DILocation(line: 214, column: 15, scope: !191)
!219 = !DILocation(line: 214, column: 30, scope: !191)
!220 = !DILocation(line: 214, column: 22, scope: !191)
!221 = !DILocation(line: 214, column: 38, scope: !191)
!222 = !DILocation(line: 214, column: 47, scope: !191)
!223 = !DILocalVariable(name: "wanmant", scope: !191, file: !9, line: 205, type: !11)
!224 = !DILocation(line: 215, column: 21, scope: !191)
!225 = !DILocation(line: 215, column: 12, scope: !191)
!226 = !DILocation(line: 215, column: 42, scope: !191)
!227 = !DILocation(line: 215, column: 54, scope: !191)
!228 = !DILocation(line: 216, column: 14, scope: !191)
!229 = !DILocation(line: 216, column: 26, scope: !191)
!230 = !DILocation(line: 216, column: 25, scope: !191)
!231 = !DILocation(line: 216, column: 22, scope: !191)
!232 = !DILocalVariable(name: "retval", scope: !191, file: !9, line: 206, type: !11)
!233 = !DILocation(line: 218, column: 19, scope: !191)
!234 = !DILocation(line: 218, column: 27, scope: !191)
!235 = !DILocation(line: 218, column: 12, scope: !191)
!236 = !DILocation(line: 218, column: 35, scope: !191)
!237 = !DILocation(line: 218, column: 3, scope: !191)
!238 = distinct !DISubprogram(name: "g723_enc_quan", scope: !9, file: !9, line: 242, type: !239, scopeLine: 246, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !35)
!239 = !DISubroutineType(types: !240)
!240 = !{!33, !33, !241, !33}
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 32)
!242 = !DILocalVariable(name: "val", arg: 1, scope: !238, file: !9, line: 243, type: !33)
!243 = !DILocation(line: 0, scope: !238)
!244 = !DILocalVariable(name: "table", arg: 2, scope: !238, file: !9, line: 244, type: !241)
!245 = !DILocalVariable(name: "size", arg: 3, scope: !238, file: !9, line: 245, type: !33)
!246 = !DILocalVariable(name: "j", scope: !238, file: !9, line: 248, type: !33)
!247 = !DILocalVariable(name: "k", scope: !238, file: !9, line: 249, type: !33)
!248 = !DILocalVariable(name: "i", scope: !238, file: !9, line: 247, type: !33)
!249 = !DILocation(line: 252, column: 9, scope: !250)
!250 = distinct !DILexicalBlock(scope: !238, file: !9, line: 252, column: 3)
!251 = !DILocation(line: 0, scope: !250)
!252 = !DILocation(line: 252, column: 18, scope: !253)
!253 = distinct !DILexicalBlock(scope: !250, file: !9, line: 252, column: 3)
!254 = !DILocation(line: 252, column: 3, scope: !250)
!255 = !DILocation(line: 254, column: 10, scope: !256)
!256 = distinct !DILexicalBlock(scope: !257, file: !9, line: 254, column: 10)
!257 = distinct !DILexicalBlock(scope: !253, file: !9, line: 252, column: 32)
!258 = !DILocation(line: 254, column: 10, scope: !257)
!259 = !DILocation(line: 255, column: 24, scope: !260)
!260 = distinct !DILexicalBlock(scope: !261, file: !9, line: 255, column: 12)
!261 = distinct !DILexicalBlock(scope: !256, file: !9, line: 254, column: 14)
!262 = !DILocation(line: 255, column: 18, scope: !260)
!263 = !DILocation(line: 255, column: 16, scope: !260)
!264 = !DILocation(line: 255, column: 12, scope: !261)
!265 = !DILocation(line: 258, column: 7, scope: !266)
!266 = distinct !DILexicalBlock(scope: !260, file: !9, line: 255, column: 29)
!267 = !DILocation(line: 259, column: 5, scope: !261)
!268 = !DILocation(line: 260, column: 3, scope: !257)
!269 = !DILocation(line: 252, column: 26, scope: !253)
!270 = !DILocation(line: 252, column: 3, scope: !253)
!271 = distinct !{!271, !254, !272, !273}
!272 = !DILocation(line: 260, column: 3, scope: !250)
!273 = !{!"llvm.loop.mustprogress"}
!274 = !DILocation(line: 262, column: 3, scope: !238)
!275 = distinct !DISubprogram(name: "g723_enc_abs", scope: !9, file: !9, line: 223, type: !276, scopeLine: 224, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !35)
!276 = !DISubroutineType(types: !277)
!277 = !{!33, !33}
!278 = !DILocalVariable(name: "num", arg: 1, scope: !275, file: !9, line: 223, type: !33)
!279 = !DILocation(line: 0, scope: !275)
!280 = !DILocation(line: 225, column: 16, scope: !275)
!281 = !DILocation(line: 225, column: 10, scope: !275)
!282 = !DILocation(line: 225, column: 24, scope: !275)
!283 = !DILocation(line: 225, column: 3, scope: !275)
!284 = distinct !DISubprogram(name: "g723_enc_predictor_zero", scope: !9, file: !9, line: 273, type: !285, scopeLine: 275, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !35)
!285 = !DISubroutineType(types: !286)
!286 = !{!33, !287}
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 32)
!288 = !DILocalVariable(name: "state_ptr", arg: 1, scope: !284, file: !9, line: 274, type: !287)
!289 = !DILocation(line: 0, scope: !284)
!290 = !DILocation(line: 279, column: 26, scope: !284)
!291 = !DILocation(line: 279, column: 44, scope: !284)
!292 = !DILocation(line: 279, column: 50, scope: !284)
!293 = !DILocation(line: 279, column: 10, scope: !284)
!294 = !DILocalVariable(name: "sezi", scope: !284, file: !9, line: 277, type: !33)
!295 = !DILocalVariable(name: "i", scope: !284, file: !9, line: 276, type: !33)
!296 = !DILocation(line: 281, column: 9, scope: !297)
!297 = distinct !DILexicalBlock(scope: !284, file: !9, line: 281, column: 3)
!298 = !DILocation(line: 0, scope: !297)
!299 = !DILocation(line: 281, column: 18, scope: !300)
!300 = distinct !DILexicalBlock(scope: !297, file: !9, line: 281, column: 3)
!301 = !DILocation(line: 281, column: 3, scope: !297)
!302 = !DILocation(line: 282, column: 29, scope: !300)
!303 = !DILocation(line: 282, column: 47, scope: !300)
!304 = !DILocation(line: 282, column: 53, scope: !300)
!305 = !DILocation(line: 282, column: 13, scope: !300)
!306 = !DILocation(line: 282, column: 5, scope: !300)
!307 = !DILocation(line: 282, column: 10, scope: !300)
!308 = !DILocation(line: 281, column: 24, scope: !300)
!309 = !DILocation(line: 281, column: 3, scope: !300)
!310 = distinct !{!310, !301, !311, !273}
!311 = !DILocation(line: 282, column: 72, scope: !297)
!312 = !DILocation(line: 284, column: 3, scope: !284)
!313 = distinct !DISubprogram(name: "g723_enc_predictor_pole", scope: !9, file: !9, line: 295, type: !285, scopeLine: 297, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !35)
!314 = !DILocalVariable(name: "state_ptr", arg: 1, scope: !313, file: !9, line: 296, type: !287)
!315 = !DILocation(line: 0, scope: !313)
!316 = !DILocation(line: 298, column: 28, scope: !313)
!317 = !DILocation(line: 298, column: 46, scope: !313)
!318 = !DILocation(line: 298, column: 52, scope: !313)
!319 = !DILocation(line: 298, column: 12, scope: !313)
!320 = !DILocation(line: 299, column: 28, scope: !313)
!321 = !DILocation(line: 299, column: 46, scope: !313)
!322 = !DILocation(line: 299, column: 52, scope: !313)
!323 = !DILocation(line: 299, column: 12, scope: !313)
!324 = !DILocation(line: 298, column: 73, scope: !313)
!325 = !DILocation(line: 298, column: 3, scope: !313)
!326 = distinct !DISubprogram(name: "g723_enc_step_size", scope: !9, file: !9, line: 309, type: !285, scopeLine: 311, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !35)
!327 = !DILocalVariable(name: "state_ptr", arg: 1, scope: !326, file: !9, line: 310, type: !287)
!328 = !DILocation(line: 0, scope: !326)
!329 = !DILocation(line: 316, column: 19, scope: !330)
!330 = distinct !DILexicalBlock(scope: !326, file: !9, line: 316, column: 8)
!331 = !DILocation(line: 316, column: 22, scope: !330)
!332 = !DILocation(line: 316, column: 8, scope: !326)
!333 = !DILocation(line: 317, column: 25, scope: !330)
!334 = !DILocation(line: 317, column: 12, scope: !330)
!335 = !DILocation(line: 317, column: 5, scope: !330)
!336 = !DILocation(line: 319, column: 20, scope: !337)
!337 = distinct !DILexicalBlock(scope: !330, file: !9, line: 318, column: 8)
!338 = !DILocation(line: 319, column: 23, scope: !337)
!339 = !DILocalVariable(name: "y", scope: !326, file: !9, line: 312, type: !33)
!340 = !DILocation(line: 320, column: 22, scope: !337)
!341 = !DILocation(line: 320, column: 11, scope: !337)
!342 = !DILocation(line: 320, column: 25, scope: !337)
!343 = !DILocalVariable(name: "dif", scope: !326, file: !9, line: 313, type: !33)
!344 = !DILocation(line: 321, column: 21, scope: !337)
!345 = !DILocation(line: 321, column: 24, scope: !337)
!346 = !DILocalVariable(name: "al", scope: !326, file: !9, line: 314, type: !33)
!347 = !DILocation(line: 322, column: 14, scope: !348)
!348 = distinct !DILexicalBlock(scope: !337, file: !9, line: 322, column: 10)
!349 = !DILocation(line: 322, column: 10, scope: !337)
!350 = !DILocation(line: 323, column: 18, scope: !348)
!351 = !DILocation(line: 323, column: 25, scope: !348)
!352 = !DILocation(line: 323, column: 9, scope: !348)
!353 = !DILocation(line: 323, column: 7, scope: !348)
!354 = !DILocation(line: 325, column: 16, scope: !355)
!355 = distinct !DILexicalBlock(scope: !348, file: !9, line: 325, column: 12)
!356 = !DILocation(line: 325, column: 12, scope: !348)
!357 = !DILocation(line: 326, column: 20, scope: !355)
!358 = !DILocation(line: 326, column: 25, scope: !355)
!359 = !DILocation(line: 326, column: 34, scope: !355)
!360 = !DILocation(line: 326, column: 11, scope: !355)
!361 = !DILocation(line: 326, column: 9, scope: !355)
!362 = !DILocation(line: 0, scope: !337)
!363 = !DILocation(line: 0, scope: !348)
!364 = !DILocation(line: 328, column: 5, scope: !337)
!365 = !DILocation(line: 0, scope: !330)
!366 = !DILocation(line: 330, column: 1, scope: !326)
!367 = distinct !DISubprogram(name: "g723_enc_quantize", scope: !9, file: !9, line: 342, type: !368, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !35)
!368 = !DISubroutineType(types: !369)
!369 = !{!33, !33, !33, !241, !33}
!370 = !DILocalVariable(name: "d", arg: 1, scope: !367, file: !9, line: 343, type: !33)
!371 = !DILocation(line: 0, scope: !367)
!372 = !DILocalVariable(name: "y", arg: 2, scope: !367, file: !9, line: 344, type: !33)
!373 = !DILocalVariable(name: "table", arg: 3, scope: !367, file: !9, line: 345, type: !241)
!374 = !DILocalVariable(name: "size", arg: 4, scope: !367, file: !9, line: 346, type: !33)
!375 = !DILocation(line: 360, column: 9, scope: !367)
!376 = !DILocalVariable(name: "dqm", scope: !367, file: !9, line: 348, type: !11)
!377 = !DILocation(line: 361, column: 24, scope: !367)
!378 = !DILocation(line: 361, column: 28, scope: !367)
!379 = !DILocation(line: 361, column: 9, scope: !367)
!380 = !DILocalVariable(name: "exp", scope: !367, file: !9, line: 349, type: !11)
!381 = !DILocation(line: 362, column: 14, scope: !367)
!382 = !DILocation(line: 362, column: 18, scope: !367)
!383 = !DILocation(line: 362, column: 28, scope: !367)
!384 = !DILocation(line: 362, column: 25, scope: !367)
!385 = !DILocalVariable(name: "mant", scope: !367, file: !9, line: 350, type: !11)
!386 = !DILocalVariable(name: "dl", scope: !367, file: !9, line: 351, type: !11)
!387 = !DILocation(line: 370, column: 9, scope: !367)
!388 = !DILocalVariable(name: "dln", scope: !367, file: !9, line: 352, type: !11)
!389 = !DILocation(line: 377, column: 22, scope: !367)
!390 = !DILocation(line: 377, column: 7, scope: !367)
!391 = !DILocalVariable(name: "i", scope: !367, file: !9, line: 353, type: !33)
!392 = !DILocation(line: 379, column: 10, scope: !393)
!393 = distinct !DILexicalBlock(scope: !367, file: !9, line: 379, column: 8)
!394 = !DILocation(line: 379, column: 8, scope: !367)
!395 = !DILocation(line: 380, column: 21, scope: !393)
!396 = !DILocation(line: 380, column: 28, scope: !393)
!397 = !DILocation(line: 380, column: 32, scope: !393)
!398 = !DILocation(line: 380, column: 5, scope: !393)
!399 = !DILocation(line: 382, column: 12, scope: !400)
!400 = distinct !DILexicalBlock(scope: !393, file: !9, line: 382, column: 10)
!401 = !DILocation(line: 382, column: 10, scope: !393)
!402 = !DILocation(line: 383, column: 23, scope: !400)
!403 = !DILocation(line: 383, column: 30, scope: !400)
!404 = !DILocation(line: 383, column: 7, scope: !400)
!405 = !DILocation(line: 385, column: 7, scope: !400)
!406 = !DILocation(line: 0, scope: !393)
!407 = !DILocation(line: 386, column: 1, scope: !367)
!408 = distinct !DISubprogram(name: "g723_enc_reconstruct", scope: !9, file: !9, line: 395, type: !409, scopeLine: 399, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !35)
!409 = !DISubroutineType(types: !410)
!410 = !{!33, !33, !33, !33}
!411 = !DILocalVariable(name: "sign", arg: 1, scope: !408, file: !9, line: 396, type: !33)
!412 = !DILocation(line: 0, scope: !408)
!413 = !DILocalVariable(name: "dqln", arg: 2, scope: !408, file: !9, line: 397, type: !33)
!414 = !DILocalVariable(name: "y", arg: 3, scope: !408, file: !9, line: 398, type: !33)
!415 = !DILocation(line: 405, column: 20, scope: !408)
!416 = !DILocation(line: 405, column: 14, scope: !408)
!417 = !DILocalVariable(name: "dql", scope: !408, file: !9, line: 400, type: !11)
!418 = !DILocation(line: 407, column: 12, scope: !419)
!419 = distinct !DILexicalBlock(scope: !408, file: !9, line: 407, column: 8)
!420 = !DILocation(line: 407, column: 8, scope: !408)
!421 = !DILocation(line: 408, column: 14, scope: !419)
!422 = !DILocation(line: 408, column: 5, scope: !419)
!423 = !DILocation(line: 410, column: 11, scope: !424)
!424 = distinct !DILexicalBlock(scope: !419, file: !9, line: 409, column: 8)
!425 = !DILocalVariable(name: "dex", scope: !408, file: !9, line: 401, type: !11)
!426 = !DILocalVariable(name: "dqt", scope: !408, file: !9, line: 402, type: !11)
!427 = !DILocation(line: 412, column: 16, scope: !424)
!428 = !DILocation(line: 412, column: 31, scope: !424)
!429 = !DILocation(line: 412, column: 23, scope: !424)
!430 = !DILocalVariable(name: "dq", scope: !408, file: !9, line: 403, type: !11)
!431 = !DILocation(line: 413, column: 14, scope: !424)
!432 = !DILocation(line: 413, column: 27, scope: !424)
!433 = !DILocation(line: 413, column: 30, scope: !424)
!434 = !DILocation(line: 413, column: 43, scope: !424)
!435 = !DILocation(line: 413, column: 5, scope: !424)
!436 = !DILocation(line: 0, scope: !419)
!437 = !DILocation(line: 415, column: 1, scope: !408)
!438 = distinct !DISubprogram(name: "g723_enc_update", scope: !9, file: !9, line: 424, type: !439, scopeLine: 433, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !35)
!439 = !DISubroutineType(types: !440)
!440 = !{null, !33, !33, !33, !33, !33, !33, !33, !287}
!441 = !DILocalVariable(name: "code_size", arg: 1, scope: !438, file: !9, line: 425, type: !33)
!442 = !DILocation(line: 0, scope: !438)
!443 = !DILocalVariable(name: "y", arg: 2, scope: !438, file: !9, line: 426, type: !33)
!444 = !DILocalVariable(name: "wi", arg: 3, scope: !438, file: !9, line: 427, type: !33)
!445 = !DILocalVariable(name: "fi", arg: 4, scope: !438, file: !9, line: 428, type: !33)
!446 = !DILocalVariable(name: "dq", arg: 5, scope: !438, file: !9, line: 429, type: !33)
!447 = !DILocalVariable(name: "sr", arg: 6, scope: !438, file: !9, line: 430, type: !33)
!448 = !DILocalVariable(name: "dqsez", arg: 7, scope: !438, file: !9, line: 431, type: !33)
!449 = !DILocalVariable(name: "state_ptr", arg: 8, scope: !438, file: !9, line: 432, type: !287)
!450 = !DILocation(line: 445, column: 9, scope: !438)
!451 = !DILocalVariable(name: "pk0", scope: !438, file: !9, line: 443, type: !11)
!452 = !DILocation(line: 447, column: 9, scope: !438)
!453 = !DILocalVariable(name: "mag", scope: !438, file: !9, line: 435, type: !11)
!454 = !DILocation(line: 449, column: 22, scope: !438)
!455 = !DILocation(line: 449, column: 25, scope: !438)
!456 = !DILocalVariable(name: "ylint", scope: !438, file: !9, line: 441, type: !11)
!457 = !DILocalVariable(name: "ylfrac", scope: !438, file: !9, line: 442, type: !11)
!458 = !DILocalVariable(name: "thr1", scope: !438, file: !9, line: 442, type: !11)
!459 = !DILocation(line: 452, column: 12, scope: !438)
!460 = !DILocation(line: 452, column: 18, scope: !438)
!461 = !DILocation(line: 452, column: 10, scope: !438)
!462 = !DILocation(line: 450, column: 12, scope: !438)
!463 = !DILocation(line: 451, column: 15, scope: !438)
!464 = !DILocation(line: 451, column: 29, scope: !438)
!465 = !DILocation(line: 451, column: 26, scope: !438)
!466 = !DILocation(line: 452, column: 37, scope: !438)
!467 = !DILocalVariable(name: "thr2", scope: !438, file: !9, line: 441, type: !11)
!468 = !DILocalVariable(name: "dqthr", scope: !438, file: !9, line: 441, type: !11)
!469 = !DILocation(line: 454, column: 19, scope: !470)
!470 = distinct !DILexicalBlock(scope: !438, file: !9, line: 454, column: 8)
!471 = !DILocation(line: 454, column: 22, scope: !470)
!472 = !DILocation(line: 454, column: 8, scope: !438)
!473 = !DILocalVariable(name: "tr", scope: !438, file: !9, line: 440, type: !62)
!474 = !DILocation(line: 455, column: 5, scope: !470)
!475 = !DILocation(line: 453, column: 27, scope: !438)
!476 = !DILocation(line: 453, column: 18, scope: !438)
!477 = !DILocation(line: 457, column: 10, scope: !478)
!478 = distinct !DILexicalBlock(scope: !470, file: !9, line: 457, column: 10)
!479 = !DILocation(line: 457, column: 17, scope: !478)
!480 = !DILocation(line: 457, column: 14, scope: !478)
!481 = !DILocation(line: 457, column: 10, scope: !470)
!482 = !DILocation(line: 458, column: 7, scope: !478)
!483 = !DILocation(line: 0, scope: !478)
!484 = !DILocation(line: 0, scope: !470)
!485 = !DILocation(line: 468, column: 30, scope: !438)
!486 = !DILocation(line: 468, column: 36, scope: !438)
!487 = !DILocation(line: 468, column: 21, scope: !438)
!488 = !DILocation(line: 468, column: 19, scope: !438)
!489 = !DILocation(line: 468, column: 14, scope: !438)
!490 = !DILocation(line: 468, column: 17, scope: !438)
!491 = !DILocation(line: 471, column: 8, scope: !492)
!492 = distinct !DILexicalBlock(scope: !438, file: !9, line: 471, column: 8)
!493 = !DILocation(line: 471, column: 22, scope: !492)
!494 = !DILocation(line: 471, column: 8, scope: !438)
!495 = !DILocation(line: 472, column: 16, scope: !492)
!496 = !DILocation(line: 472, column: 19, scope: !492)
!497 = !DILocation(line: 472, column: 5, scope: !492)
!498 = !DILocation(line: 474, column: 21, scope: !499)
!499 = distinct !DILexicalBlock(scope: !492, file: !9, line: 474, column: 10)
!500 = !DILocation(line: 474, column: 24, scope: !499)
!501 = !DILocation(line: 474, column: 10, scope: !492)
!502 = !DILocation(line: 475, column: 18, scope: !499)
!503 = !DILocation(line: 475, column: 21, scope: !499)
!504 = !DILocation(line: 475, column: 7, scope: !499)
!505 = !DILocation(line: 479, column: 31, scope: !438)
!506 = !DILocation(line: 479, column: 20, scope: !438)
!507 = !DILocation(line: 479, column: 52, scope: !438)
!508 = !DILocation(line: 479, column: 40, scope: !438)
!509 = !DILocation(line: 479, column: 57, scope: !438)
!510 = !DILocation(line: 479, column: 34, scope: !438)
!511 = !DILocation(line: 479, column: 14, scope: !438)
!512 = !DILocation(line: 479, column: 17, scope: !438)
!513 = !DILocation(line: 484, column: 11, scope: !514)
!514 = distinct !DILexicalBlock(scope: !438, file: !9, line: 484, column: 8)
!515 = !DILocation(line: 484, column: 8, scope: !438)
!516 = !DILocation(line: 485, column: 5, scope: !517)
!517 = distinct !DILexicalBlock(scope: !514, file: !9, line: 484, column: 18)
!518 = !DILocation(line: 485, column: 23, scope: !517)
!519 = !DILocation(line: 486, column: 5, scope: !517)
!520 = !DILocation(line: 486, column: 23, scope: !517)
!521 = !DILocation(line: 487, column: 5, scope: !517)
!522 = !DILocation(line: 487, column: 23, scope: !517)
!523 = !DILocation(line: 488, column: 5, scope: !517)
!524 = !DILocation(line: 488, column: 23, scope: !517)
!525 = !DILocation(line: 489, column: 5, scope: !517)
!526 = !DILocation(line: 489, column: 23, scope: !517)
!527 = !DILocation(line: 490, column: 5, scope: !517)
!528 = !DILocation(line: 490, column: 23, scope: !517)
!529 = !DILocation(line: 491, column: 5, scope: !517)
!530 = !DILocation(line: 491, column: 23, scope: !517)
!531 = !DILocation(line: 492, column: 5, scope: !517)
!532 = !DILocation(line: 492, column: 23, scope: !517)
!533 = !DILocation(line: 493, column: 3, scope: !517)
!534 = !DILocation(line: 494, column: 18, scope: !535)
!535 = distinct !DILexicalBlock(scope: !514, file: !9, line: 493, column: 10)
!536 = !DILocation(line: 494, column: 12, scope: !535)
!537 = !DILocalVariable(name: "pks1", scope: !438, file: !9, line: 438, type: !11)
!538 = !DILocation(line: 497, column: 11, scope: !535)
!539 = !DILocation(line: 497, column: 51, scope: !535)
!540 = !DILocation(line: 497, column: 29, scope: !535)
!541 = !DILocalVariable(name: "a2p", scope: !438, file: !9, line: 436, type: !11)
!542 = !DILocation(line: 498, column: 16, scope: !543)
!543 = distinct !DILexicalBlock(scope: !535, file: !9, line: 498, column: 10)
!544 = !DILocation(line: 498, column: 10, scope: !535)
!545 = !DILocation(line: 499, column: 13, scope: !546)
!546 = distinct !DILexicalBlock(scope: !543, file: !9, line: 498, column: 23)
!547 = !DILocation(line: 499, column: 24, scope: !546)
!548 = !DILocation(line: 499, column: 45, scope: !546)
!549 = !DILocation(line: 499, column: 44, scope: !546)
!550 = !DILocalVariable(name: "fa1", scope: !438, file: !9, line: 439, type: !11)
!551 = !DILocation(line: 500, column: 16, scope: !552)
!552 = distinct !DILexicalBlock(scope: !546, file: !9, line: 500, column: 12)
!553 = !DILocation(line: 500, column: 12, scope: !546)
!554 = !DILocation(line: 501, column: 13, scope: !552)
!555 = !DILocation(line: 501, column: 9, scope: !552)
!556 = !DILocation(line: 503, column: 18, scope: !557)
!557 = distinct !DILexicalBlock(scope: !552, file: !9, line: 503, column: 14)
!558 = !DILocation(line: 503, column: 14, scope: !552)
!559 = !DILocation(line: 504, column: 15, scope: !557)
!560 = !DILocation(line: 504, column: 11, scope: !557)
!561 = !DILocation(line: 506, column: 22, scope: !557)
!562 = !DILocation(line: 506, column: 15, scope: !557)
!563 = !DILocation(line: 0, scope: !557)
!564 = !DILocation(line: 0, scope: !552)
!565 = !DILocation(line: 507, column: 18, scope: !566)
!566 = distinct !DILexicalBlock(scope: !546, file: !9, line: 507, column: 12)
!567 = !DILocation(line: 507, column: 16, scope: !566)
!568 = !DILocation(line: 507, column: 12, scope: !546)
!569 = !DILocation(line: 509, column: 18, scope: !570)
!570 = distinct !DILexicalBlock(scope: !566, file: !9, line: 509, column: 14)
!571 = !DILocation(line: 509, column: 14, scope: !566)
!572 = !DILocation(line: 510, column: 11, scope: !570)
!573 = !DILocation(line: 512, column: 20, scope: !574)
!574 = distinct !DILexicalBlock(scope: !570, file: !9, line: 512, column: 16)
!575 = !DILocation(line: 512, column: 16, scope: !570)
!576 = !DILocation(line: 513, column: 13, scope: !574)
!577 = !DILocation(line: 515, column: 17, scope: !574)
!578 = !DILocation(line: 0, scope: !574)
!579 = !DILocation(line: 0, scope: !570)
!580 = !DILocation(line: 509, column: 22, scope: !570)
!581 = !DILocation(line: 517, column: 18, scope: !582)
!582 = distinct !DILexicalBlock(scope: !566, file: !9, line: 517, column: 14)
!583 = !DILocation(line: 517, column: 14, scope: !566)
!584 = !DILocation(line: 518, column: 11, scope: !582)
!585 = !DILocation(line: 520, column: 20, scope: !586)
!586 = distinct !DILexicalBlock(scope: !582, file: !9, line: 520, column: 16)
!587 = !DILocation(line: 520, column: 16, scope: !582)
!588 = !DILocation(line: 521, column: 13, scope: !586)
!589 = !DILocation(line: 523, column: 17, scope: !586)
!590 = !DILocation(line: 0, scope: !586)
!591 = !DILocation(line: 0, scope: !582)
!592 = !DILocation(line: 0, scope: !566)
!593 = !DILocation(line: 525, column: 5, scope: !546)
!594 = !DILocation(line: 0, scope: !535)
!595 = !DILocation(line: 528, column: 5, scope: !535)
!596 = !DILocation(line: 528, column: 23, scope: !535)
!597 = !DILocation(line: 532, column: 26, scope: !535)
!598 = !DILocation(line: 532, column: 44, scope: !535)
!599 = !DILocation(line: 532, column: 5, scope: !535)
!600 = !DILocation(line: 532, column: 23, scope: !535)
!601 = !DILocation(line: 533, column: 16, scope: !602)
!602 = distinct !DILexicalBlock(scope: !535, file: !9, line: 533, column: 10)
!603 = !DILocation(line: 533, column: 10, scope: !535)
!604 = !DILocation(line: 534, column: 17, scope: !605)
!605 = distinct !DILexicalBlock(scope: !606, file: !9, line: 534, column: 12)
!606 = distinct !DILexicalBlock(scope: !602, file: !9, line: 533, column: 24)
!607 = !DILocation(line: 534, column: 12, scope: !606)
!608 = !DILocation(line: 535, column: 9, scope: !605)
!609 = !DILocation(line: 535, column: 27, scope: !605)
!610 = !DILocation(line: 537, column: 9, scope: !605)
!611 = !DILocation(line: 537, column: 27, scope: !605)
!612 = !DILocation(line: 538, column: 5, scope: !606)
!613 = !DILocation(line: 541, column: 18, scope: !535)
!614 = !DILocalVariable(name: "a1ul", scope: !438, file: !9, line: 437, type: !11)
!615 = !DILocation(line: 542, column: 10, scope: !616)
!616 = distinct !DILexicalBlock(scope: !535, file: !9, line: 542, column: 10)
!617 = !DILocation(line: 542, column: 31, scope: !616)
!618 = !DILocation(line: 542, column: 30, scope: !616)
!619 = !DILocation(line: 542, column: 28, scope: !616)
!620 = !DILocation(line: 542, column: 10, scope: !535)
!621 = !DILocation(line: 543, column: 7, scope: !616)
!622 = !DILocation(line: 543, column: 25, scope: !616)
!623 = !DILocation(line: 545, column: 12, scope: !624)
!624 = distinct !DILexicalBlock(scope: !616, file: !9, line: 545, column: 12)
!625 = !DILocation(line: 545, column: 30, scope: !624)
!626 = !DILocation(line: 545, column: 12, scope: !616)
!627 = !DILocation(line: 546, column: 9, scope: !624)
!628 = !DILocation(line: 546, column: 27, scope: !624)
!629 = !DILocalVariable(name: "cnt", scope: !438, file: !9, line: 434, type: !33)
!630 = !DILocation(line: 550, column: 11, scope: !631)
!631 = distinct !DILexicalBlock(scope: !535, file: !9, line: 550, column: 5)
!632 = !DILocation(line: 0, scope: !631)
!633 = !DILocation(line: 550, column: 24, scope: !634)
!634 = distinct !DILexicalBlock(scope: !631, file: !9, line: 550, column: 5)
!635 = !DILocation(line: 550, column: 5, scope: !631)
!636 = !DILocation(line: 551, column: 22, scope: !637)
!637 = distinct !DILexicalBlock(scope: !638, file: !9, line: 551, column: 12)
!638 = distinct !DILexicalBlock(scope: !634, file: !9, line: 550, column: 37)
!639 = !DILocation(line: 551, column: 12, scope: !638)
!640 = !DILocation(line: 552, column: 32, scope: !637)
!641 = !DILocation(line: 552, column: 52, scope: !637)
!642 = !DILocation(line: 552, column: 9, scope: !637)
!643 = !DILocation(line: 552, column: 29, scope: !637)
!644 = !DILocation(line: 554, column: 32, scope: !637)
!645 = !DILocation(line: 554, column: 52, scope: !637)
!646 = !DILocation(line: 554, column: 9, scope: !637)
!647 = !DILocation(line: 554, column: 29, scope: !637)
!648 = !DILocation(line: 555, column: 15, scope: !649)
!649 = distinct !DILexicalBlock(scope: !638, file: !9, line: 555, column: 12)
!650 = !DILocation(line: 555, column: 12, scope: !638)
!651 = !DILocation(line: 556, column: 21, scope: !652)
!652 = distinct !DILexicalBlock(scope: !653, file: !9, line: 556, column: 14)
!653 = distinct !DILexicalBlock(scope: !649, file: !9, line: 555, column: 26)
!654 = !DILocation(line: 556, column: 19, scope: !652)
!655 = !DILocation(line: 556, column: 44, scope: !652)
!656 = !DILocation(line: 556, column: 14, scope: !653)
!657 = !DILocation(line: 557, column: 11, scope: !652)
!658 = !DILocation(line: 557, column: 31, scope: !652)
!659 = !DILocation(line: 559, column: 11, scope: !652)
!660 = !DILocation(line: 559, column: 31, scope: !652)
!661 = !DILocation(line: 560, column: 7, scope: !653)
!662 = !DILocation(line: 562, column: 5, scope: !638)
!663 = !DILocation(line: 550, column: 32, scope: !634)
!664 = !DILocation(line: 550, column: 5, scope: !634)
!665 = distinct !{!665, !635, !666, !273}
!666 = !DILocation(line: 562, column: 5, scope: !631)
!667 = !DILocation(line: 566, column: 9, scope: !668)
!668 = distinct !DILexicalBlock(scope: !438, file: !9, line: 566, column: 3)
!669 = !DILocation(line: 0, scope: !668)
!670 = !DILocation(line: 566, column: 22, scope: !671)
!671 = distinct !DILexicalBlock(scope: !668, file: !9, line: 566, column: 3)
!672 = !DILocation(line: 566, column: 3, scope: !668)
!673 = !DILocation(line: 567, column: 47, scope: !671)
!674 = !DILocation(line: 567, column: 28, scope: !671)
!675 = !DILocation(line: 567, column: 5, scope: !671)
!676 = !DILocation(line: 567, column: 26, scope: !671)
!677 = !DILocation(line: 566, column: 30, scope: !671)
!678 = !DILocation(line: 566, column: 3, scope: !671)
!679 = distinct !{!679, !672, !680, !273}
!680 = !DILocation(line: 567, column: 51, scope: !668)
!681 = !DILocation(line: 569, column: 12, scope: !682)
!682 = distinct !DILexicalBlock(scope: !438, file: !9, line: 569, column: 8)
!683 = !DILocation(line: 569, column: 8, scope: !438)
!684 = !DILocation(line: 570, column: 31, scope: !682)
!685 = !DILocation(line: 570, column: 26, scope: !682)
!686 = !DILocation(line: 570, column: 5, scope: !682)
!687 = !DILocation(line: 570, column: 24, scope: !682)
!688 = !DILocation(line: 572, column: 26, scope: !689)
!689 = distinct !DILexicalBlock(scope: !682, file: !9, line: 571, column: 8)
!690 = !DILocation(line: 572, column: 11, scope: !689)
!691 = !DILocalVariable(name: "exp", scope: !438, file: !9, line: 435, type: !11)
!692 = !DILocation(line: 573, column: 31, scope: !689)
!693 = !DILocation(line: 573, column: 26, scope: !689)
!694 = !DILocation(line: 574, column: 26, scope: !689)
!695 = !DILocation(line: 574, column: 30, scope: !689)
!696 = !DILocation(line: 574, column: 43, scope: !689)
!697 = !DILocation(line: 574, column: 47, scope: !689)
!698 = !DILocation(line: 574, column: 57, scope: !689)
!699 = !DILocation(line: 574, column: 54, scope: !689)
!700 = !DILocation(line: 574, column: 37, scope: !689)
!701 = !DILocation(line: 575, column: 26, scope: !689)
!702 = !DILocation(line: 575, column: 30, scope: !689)
!703 = !DILocation(line: 575, column: 43, scope: !689)
!704 = !DILocation(line: 575, column: 47, scope: !689)
!705 = !DILocation(line: 575, column: 57, scope: !689)
!706 = !DILocation(line: 575, column: 54, scope: !689)
!707 = !DILocation(line: 575, column: 37, scope: !689)
!708 = !DILocation(line: 575, column: 63, scope: !689)
!709 = !DILocation(line: 573, column: 5, scope: !689)
!710 = !DILocation(line: 573, column: 24, scope: !689)
!711 = !DILocation(line: 579, column: 24, scope: !438)
!712 = !DILocation(line: 579, column: 3, scope: !438)
!713 = !DILocation(line: 579, column: 22, scope: !438)
!714 = !DILocation(line: 581, column: 11, scope: !715)
!715 = distinct !DILexicalBlock(scope: !438, file: !9, line: 581, column: 8)
!716 = !DILocation(line: 581, column: 8, scope: !438)
!717 = !DILocation(line: 582, column: 5, scope: !715)
!718 = !DILocation(line: 582, column: 24, scope: !715)
!719 = !DILocation(line: 584, column: 13, scope: !720)
!720 = distinct !DILexicalBlock(scope: !715, file: !9, line: 584, column: 10)
!721 = !DILocation(line: 584, column: 10, scope: !715)
!722 = !DILocation(line: 585, column: 13, scope: !723)
!723 = distinct !DILexicalBlock(scope: !720, file: !9, line: 584, column: 19)
!724 = !DILocation(line: 586, column: 34, scope: !723)
!725 = !DILocation(line: 586, column: 50, scope: !723)
!726 = !DILocation(line: 586, column: 60, scope: !723)
!727 = !DILocation(line: 586, column: 57, scope: !723)
!728 = !DILocation(line: 586, column: 41, scope: !723)
!729 = !DILocation(line: 586, column: 28, scope: !723)
!730 = !DILocation(line: 586, column: 7, scope: !723)
!731 = !DILocation(line: 586, column: 26, scope: !723)
!732 = !DILocation(line: 587, column: 5, scope: !723)
!733 = !DILocation(line: 588, column: 15, scope: !734)
!734 = distinct !DILexicalBlock(scope: !720, file: !9, line: 588, column: 12)
!735 = !DILocation(line: 588, column: 12, scope: !720)
!736 = !DILocation(line: 589, column: 15, scope: !737)
!737 = distinct !DILexicalBlock(scope: !734, file: !9, line: 588, column: 26)
!738 = !DILocation(line: 590, column: 30, scope: !737)
!739 = !DILocation(line: 590, column: 15, scope: !737)
!740 = !DILocation(line: 591, column: 37, scope: !737)
!741 = !DILocation(line: 591, column: 50, scope: !737)
!742 = !DILocation(line: 591, column: 54, scope: !737)
!743 = !DILocation(line: 591, column: 64, scope: !737)
!744 = !DILocation(line: 591, column: 61, scope: !737)
!745 = !DILocation(line: 591, column: 44, scope: !737)
!746 = !DILocation(line: 591, column: 31, scope: !737)
!747 = !DILocation(line: 591, column: 9, scope: !737)
!748 = !DILocation(line: 591, column: 28, scope: !737)
!749 = !DILocation(line: 592, column: 7, scope: !737)
!750 = !DILocation(line: 593, column: 9, scope: !734)
!751 = !DILocation(line: 593, column: 28, scope: !734)
!752 = !DILocation(line: 596, column: 24, scope: !438)
!753 = !DILocation(line: 596, column: 3, scope: !438)
!754 = !DILocation(line: 596, column: 22, scope: !438)
!755 = !DILocation(line: 597, column: 3, scope: !438)
!756 = !DILocation(line: 597, column: 22, scope: !438)
!757 = !DILocation(line: 600, column: 11, scope: !758)
!758 = distinct !DILexicalBlock(scope: !438, file: !9, line: 600, column: 8)
!759 = !DILocation(line: 600, column: 8, scope: !438)
!760 = !DILocation(line: 601, column: 16, scope: !758)
!761 = !DILocation(line: 601, column: 19, scope: !758)
!762 = !DILocation(line: 601, column: 5, scope: !758)
!763 = !DILocation(line: 603, column: 14, scope: !764)
!764 = distinct !DILexicalBlock(scope: !758, file: !9, line: 603, column: 10)
!765 = !DILocation(line: 603, column: 10, scope: !758)
!766 = !DILocation(line: 604, column: 18, scope: !764)
!767 = !DILocation(line: 604, column: 21, scope: !764)
!768 = !DILocation(line: 604, column: 7, scope: !764)
!769 = !DILocation(line: 606, column: 18, scope: !764)
!770 = !DILocation(line: 606, column: 21, scope: !764)
!771 = !DILocation(line: 611, column: 39, scope: !438)
!772 = !DILocation(line: 611, column: 28, scope: !438)
!773 = !DILocation(line: 611, column: 26, scope: !438)
!774 = !DILocation(line: 611, column: 45, scope: !438)
!775 = !DILocation(line: 611, column: 14, scope: !438)
!776 = !DILocation(line: 611, column: 18, scope: !438)
!777 = !DILocation(line: 612, column: 30, scope: !438)
!778 = !DILocation(line: 612, column: 50, scope: !438)
!779 = !DILocation(line: 612, column: 39, scope: !438)
!780 = !DILocation(line: 612, column: 37, scope: !438)
!781 = !DILocation(line: 612, column: 56, scope: !438)
!782 = !DILocation(line: 612, column: 14, scope: !438)
!783 = !DILocation(line: 612, column: 18, scope: !438)
!784 = !DILocation(line: 614, column: 11, scope: !785)
!785 = distinct !DILexicalBlock(scope: !438, file: !9, line: 614, column: 8)
!786 = !DILocation(line: 614, column: 8, scope: !438)
!787 = !DILocation(line: 615, column: 16, scope: !785)
!788 = !DILocation(line: 615, column: 19, scope: !785)
!789 = !DILocation(line: 615, column: 5, scope: !785)
!790 = !DILocation(line: 617, column: 12, scope: !791)
!791 = distinct !DILexicalBlock(scope: !785, file: !9, line: 617, column: 10)
!792 = !DILocation(line: 617, column: 10, scope: !785)
!793 = !DILocation(line: 618, column: 45, scope: !791)
!794 = !DILocation(line: 618, column: 34, scope: !791)
!795 = !DILocation(line: 618, column: 32, scope: !791)
!796 = !DILocation(line: 618, column: 50, scope: !791)
!797 = !DILocation(line: 618, column: 18, scope: !791)
!798 = !DILocation(line: 618, column: 21, scope: !791)
!799 = !DILocation(line: 618, column: 7, scope: !791)
!800 = !DILocation(line: 620, column: 23, scope: !801)
!801 = distinct !DILexicalBlock(scope: !791, file: !9, line: 620, column: 12)
!802 = !DILocation(line: 620, column: 26, scope: !801)
!803 = !DILocation(line: 620, column: 12, scope: !791)
!804 = !DILocation(line: 621, column: 47, scope: !801)
!805 = !DILocation(line: 621, column: 36, scope: !801)
!806 = !DILocation(line: 621, column: 34, scope: !801)
!807 = !DILocation(line: 621, column: 52, scope: !801)
!808 = !DILocation(line: 621, column: 20, scope: !801)
!809 = !DILocation(line: 621, column: 23, scope: !801)
!810 = !DILocation(line: 621, column: 9, scope: !801)
!811 = !DILocation(line: 623, column: 41, scope: !812)
!812 = distinct !DILexicalBlock(scope: !801, file: !9, line: 623, column: 14)
!813 = !DILocation(line: 623, column: 30, scope: !812)
!814 = !DILocation(line: 623, column: 45, scope: !812)
!815 = !DILocation(line: 623, column: 65, scope: !812)
!816 = !DILocation(line: 623, column: 54, scope: !812)
!817 = !DILocation(line: 623, column: 52, scope: !812)
!818 = !DILocation(line: 623, column: 14, scope: !812)
!819 = !DILocation(line: 624, column: 27, scope: !812)
!820 = !DILocation(line: 624, column: 31, scope: !812)
!821 = !DILocation(line: 623, column: 71, scope: !812)
!822 = !DILocation(line: 623, column: 14, scope: !801)
!823 = !DILocation(line: 625, column: 49, scope: !812)
!824 = !DILocation(line: 625, column: 38, scope: !812)
!825 = !DILocation(line: 625, column: 36, scope: !812)
!826 = !DILocation(line: 625, column: 54, scope: !812)
!827 = !DILocation(line: 625, column: 22, scope: !812)
!828 = !DILocation(line: 625, column: 25, scope: !812)
!829 = !DILocation(line: 625, column: 11, scope: !812)
!830 = !DILocation(line: 627, column: 42, scope: !812)
!831 = !DILocation(line: 627, column: 31, scope: !812)
!832 = !DILocation(line: 627, column: 30, scope: !812)
!833 = !DILocation(line: 627, column: 47, scope: !812)
!834 = !DILocation(line: 627, column: 22, scope: !812)
!835 = !DILocation(line: 627, column: 25, scope: !812)
!836 = !DILocation(line: 629, column: 1, scope: !438)
!837 = distinct !DISubprogram(name: "g723_enc_alaw2linear", scope: !9, file: !9, line: 637, type: !838, scopeLine: 639, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !35)
!838 = !DISubroutineType(types: !839)
!839 = !{!33, !34}
!840 = !DILocalVariable(name: "a_val", arg: 1, scope: !837, file: !9, line: 638, type: !34)
!841 = !DILocation(line: 0, scope: !837)
!842 = !DILocation(line: 643, column: 9, scope: !837)
!843 = !DILocation(line: 645, column: 30, scope: !837)
!844 = !DILocalVariable(name: "t", scope: !837, file: !9, line: 640, type: !33)
!845 = !DILocation(line: 646, column: 42, scope: !837)
!846 = !DILocalVariable(name: "seg", scope: !837, file: !9, line: 641, type: !33)
!847 = !DILocation(line: 647, column: 3, scope: !837)
!848 = !DILocation(line: 649, column: 9, scope: !849)
!849 = distinct !DILexicalBlock(scope: !837, file: !9, line: 647, column: 18)
!850 = !DILocation(line: 650, column: 7, scope: !849)
!851 = !DILocation(line: 652, column: 9, scope: !849)
!852 = !DILocation(line: 653, column: 7, scope: !849)
!853 = !DILocation(line: 655, column: 9, scope: !849)
!854 = !DILocation(line: 656, column: 17, scope: !849)
!855 = !DILocation(line: 656, column: 9, scope: !849)
!856 = !DILocation(line: 657, column: 3, scope: !849)
!857 = !DILocation(line: 0, scope: !849)
!858 = !DILocation(line: 658, column: 20, scope: !837)
!859 = !DILocation(line: 658, column: 12, scope: !837)
!860 = !DILocation(line: 658, column: 39, scope: !837)
!861 = !DILocation(line: 658, column: 3, scope: !837)
!862 = distinct !DISubprogram(name: "g723_enc_ulaw2linear", scope: !9, file: !9, line: 672, type: !838, scopeLine: 674, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !35)
!863 = !DILocalVariable(name: "u_val", arg: 1, scope: !862, file: !9, line: 673, type: !34)
!864 = !DILocation(line: 0, scope: !862)
!865 = !DILocation(line: 678, column: 11, scope: !862)
!866 = !DILocation(line: 684, column: 32, scope: !862)
!867 = !DILocation(line: 684, column: 39, scope: !862)
!868 = !DILocalVariable(name: "t", scope: !862, file: !9, line: 675, type: !33)
!869 = !DILocation(line: 685, column: 46, scope: !862)
!870 = !DILocation(line: 685, column: 5, scope: !862)
!871 = !DILocation(line: 687, column: 20, scope: !862)
!872 = !DILocation(line: 687, column: 12, scope: !862)
!873 = !DILocation(line: 687, column: 42, scope: !862)
!874 = !DILocation(line: 687, column: 54, scope: !862)
!875 = !DILocation(line: 687, column: 3, scope: !862)
!876 = distinct !DISubprogram(name: "g723_enc_g723_24_encoder", scope: !9, file: !9, line: 698, type: !877, scopeLine: 702, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !35)
!877 = !DISubroutineType(types: !878)
!878 = !{!33, !33, !33, !287}
!879 = !DILocalVariable(name: "sl", arg: 1, scope: !876, file: !9, line: 699, type: !33)
!880 = !DILocation(line: 0, scope: !876)
!881 = !DILocalVariable(name: "in_coding", arg: 2, scope: !876, file: !9, line: 700, type: !33)
!882 = !DILocalVariable(name: "state_ptr", arg: 3, scope: !876, file: !9, line: 701, type: !287)
!883 = !DILocation(line: 710, column: 3, scope: !876)
!884 = !DILocation(line: 712, column: 34, scope: !885)
!885 = distinct !DILexicalBlock(scope: !876, file: !9, line: 710, column: 24)
!886 = !DILocation(line: 712, column: 12, scope: !885)
!887 = !DILocation(line: 713, column: 7, scope: !885)
!888 = !DILocation(line: 715, column: 34, scope: !885)
!889 = !DILocation(line: 715, column: 12, scope: !885)
!890 = !DILocation(line: 716, column: 7, scope: !885)
!891 = !DILocation(line: 719, column: 7, scope: !885)
!892 = !DILocation(line: 721, column: 7, scope: !885)
!893 = !DILocation(line: 0, scope: !885)
!894 = !DILocation(line: 724, column: 10, scope: !876)
!895 = !DILocalVariable(name: "sezi", scope: !876, file: !9, line: 703, type: !11)
!896 = !DILocation(line: 725, column: 9, scope: !876)
!897 = !DILocation(line: 725, column: 14, scope: !876)
!898 = !DILocalVariable(name: "sez", scope: !876, file: !9, line: 703, type: !11)
!899 = !DILocation(line: 726, column: 16, scope: !876)
!900 = !DILocation(line: 726, column: 14, scope: !876)
!901 = !DILocalVariable(name: "sei", scope: !876, file: !9, line: 703, type: !11)
!902 = !DILocation(line: 727, column: 8, scope: !876)
!903 = !DILocation(line: 727, column: 12, scope: !876)
!904 = !DILocalVariable(name: "se", scope: !876, file: !9, line: 703, type: !11)
!905 = !DILocation(line: 729, column: 10, scope: !876)
!906 = !DILocalVariable(name: "d", scope: !876, file: !9, line: 704, type: !11)
!907 = !DILocation(line: 732, column: 7, scope: !876)
!908 = !DILocalVariable(name: "y", scope: !876, file: !9, line: 705, type: !11)
!909 = !DILocation(line: 733, column: 26, scope: !876)
!910 = !DILocation(line: 733, column: 29, scope: !876)
!911 = !DILocation(line: 733, column: 7, scope: !876)
!912 = !DILocalVariable(name: "i", scope: !876, file: !9, line: 708, type: !11)
!913 = !DILocation(line: 734, column: 32, scope: !876)
!914 = !DILocation(line: 734, column: 37, scope: !876)
!915 = !DILocation(line: 735, column: 30, scope: !876)
!916 = !DILocation(line: 734, column: 8, scope: !876)
!917 = !DILocalVariable(name: "dq", scope: !876, file: !9, line: 708, type: !11)
!918 = !DILocation(line: 737, column: 13, scope: !876)
!919 = !DILocation(line: 737, column: 8, scope: !876)
!920 = !DILocation(line: 737, column: 31, scope: !876)
!921 = !DILocation(line: 737, column: 24, scope: !876)
!922 = !DILocation(line: 737, column: 49, scope: !876)
!923 = !DILocation(line: 737, column: 47, scope: !876)
!924 = !DILocalVariable(name: "sr", scope: !876, file: !9, line: 706, type: !11)
!925 = !DILocation(line: 739, column: 14, scope: !876)
!926 = !DILocation(line: 739, column: 20, scope: !876)
!927 = !DILocalVariable(name: "dqsez", scope: !876, file: !9, line: 707, type: !11)
!928 = !DILocation(line: 741, column: 23, scope: !876)
!929 = !DILocation(line: 741, column: 26, scope: !876)
!930 = !DILocation(line: 741, column: 47, scope: !876)
!931 = !DILocation(line: 741, column: 68, scope: !876)
!932 = !DILocation(line: 741, column: 72, scope: !876)
!933 = !DILocation(line: 741, column: 76, scope: !876)
!934 = !DILocation(line: 741, column: 3, scope: !876)
!935 = !DILocation(line: 744, column: 10, scope: !876)
!936 = !DILocation(line: 744, column: 3, scope: !876)
!937 = !DILocation(line: 745, column: 1, scope: !876)
!938 = !DILocalVariable(name: "code", arg: 1, scope: !30, file: !9, line: 753, type: !34)
!939 = !DILocation(line: 0, scope: !30)
!940 = !DILocalVariable(name: "bits", arg: 2, scope: !30, file: !9, line: 754, type: !33)
!941 = !DILocation(line: 761, column: 19, scope: !30)
!942 = !DILocation(line: 761, column: 27, scope: !30)
!943 = !DILocation(line: 761, column: 24, scope: !30)
!944 = !DILocation(line: 761, column: 14, scope: !30)
!945 = !DILocation(line: 762, column: 12, scope: !30)
!946 = !DILocation(line: 763, column: 17, scope: !947)
!947 = distinct !DILexicalBlock(scope: !30, file: !9, line: 763, column: 8)
!948 = !DILocation(line: 763, column: 8, scope: !30)
!949 = !DILocation(line: 764, column: 16, scope: !950)
!950 = distinct !DILexicalBlock(scope: !947, file: !9, line: 763, column: 24)
!951 = !DILocalVariable(name: "out_byte", scope: !30, file: !9, line: 758, type: !34)
!952 = !DILocation(line: 765, column: 14, scope: !950)
!953 = !DILocation(line: 766, column: 16, scope: !950)
!954 = !DILocation(line: 769, column: 28, scope: !950)
!955 = !DILocation(line: 769, column: 22, scope: !950)
!956 = !DILocation(line: 769, column: 5, scope: !950)
!957 = !DILocation(line: 769, column: 26, scope: !950)
!958 = !DILocation(line: 770, column: 12, scope: !950)
!959 = !DILocation(line: 770, column: 7, scope: !950)
!960 = !DILocation(line: 771, column: 3, scope: !950)
!961 = !DILocation(line: 773, column: 12, scope: !30)
!962 = !DILocation(line: 773, column: 21, scope: !30)
!963 = !DILocation(line: 773, column: 3, scope: !30)
!964 = distinct !DISubprogram(name: "g723_enc_init_state", scope: !9, file: !9, line: 788, type: !965, scopeLine: 790, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !35)
!965 = !DISubroutineType(types: !966)
!966 = !{null, !287}
!967 = !DILocalVariable(name: "state_ptr", arg: 1, scope: !964, file: !9, line: 789, type: !287)
!968 = !DILocation(line: 0, scope: !964)
!969 = !DILocation(line: 793, column: 14, scope: !964)
!970 = !DILocation(line: 793, column: 17, scope: !964)
!971 = !DILocation(line: 794, column: 14, scope: !964)
!972 = !DILocation(line: 794, column: 17, scope: !964)
!973 = !DILocation(line: 795, column: 14, scope: !964)
!974 = !DILocation(line: 795, column: 18, scope: !964)
!975 = !DILocation(line: 796, column: 14, scope: !964)
!976 = !DILocation(line: 796, column: 18, scope: !964)
!977 = !DILocation(line: 797, column: 14, scope: !964)
!978 = !DILocation(line: 797, column: 17, scope: !964)
!979 = !DILocalVariable(name: "cnta", scope: !964, file: !9, line: 791, type: !33)
!980 = !DILocation(line: 800, column: 9, scope: !981)
!981 = distinct !DILexicalBlock(scope: !964, file: !9, line: 800, column: 3)
!982 = !DILocation(line: 0, scope: !981)
!983 = !DILocation(line: 800, column: 24, scope: !984)
!984 = distinct !DILexicalBlock(scope: !981, file: !9, line: 800, column: 3)
!985 = !DILocation(line: 800, column: 3, scope: !981)
!986 = !DILocation(line: 801, column: 5, scope: !987)
!987 = distinct !DILexicalBlock(scope: !984, file: !9, line: 800, column: 38)
!988 = !DILocation(line: 801, column: 26, scope: !987)
!989 = !DILocation(line: 802, column: 5, scope: !987)
!990 = !DILocation(line: 802, column: 27, scope: !987)
!991 = !DILocation(line: 803, column: 5, scope: !987)
!992 = !DILocation(line: 803, column: 27, scope: !987)
!993 = !DILocation(line: 804, column: 3, scope: !987)
!994 = !DILocation(line: 800, column: 33, scope: !984)
!995 = !DILocation(line: 800, column: 3, scope: !984)
!996 = distinct !{!996, !985, !997, !273}
!997 = !DILocation(line: 804, column: 3, scope: !981)
!998 = !DILocation(line: 806, column: 9, scope: !999)
!999 = distinct !DILexicalBlock(scope: !964, file: !9, line: 806, column: 3)
!1000 = !DILocation(line: 0, scope: !999)
!1001 = !DILocation(line: 806, column: 24, scope: !1002)
!1002 = distinct !DILexicalBlock(scope: !999, file: !9, line: 806, column: 3)
!1003 = !DILocation(line: 806, column: 3, scope: !999)
!1004 = !DILocation(line: 807, column: 5, scope: !1005)
!1005 = distinct !DILexicalBlock(scope: !1002, file: !9, line: 806, column: 38)
!1006 = !DILocation(line: 807, column: 26, scope: !1005)
!1007 = !DILocation(line: 808, column: 5, scope: !1005)
!1008 = !DILocation(line: 808, column: 27, scope: !1005)
!1009 = !DILocation(line: 809, column: 3, scope: !1005)
!1010 = !DILocation(line: 806, column: 33, scope: !1002)
!1011 = !DILocation(line: 806, column: 3, scope: !1002)
!1012 = distinct !{!1012, !1003, !1013, !273}
!1013 = !DILocation(line: 809, column: 3, scope: !999)
!1014 = !DILocation(line: 810, column: 14, scope: !964)
!1015 = !DILocation(line: 810, column: 17, scope: !964)
!1016 = !DILocation(line: 811, column: 1, scope: !964)
!1017 = distinct !DISubprogram(name: "g723_enc_init", scope: !9, file: !9, line: 814, type: !1018, scopeLine: 815, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !35)
!1018 = !DISubroutineType(types: !1019)
!1019 = !{null}
!1020 = !DILocalVariable(name: "x", scope: !1017, file: !9, line: 817, type: !1021)
!1021 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !33)
!1022 = !DILocation(line: 817, column: 16, scope: !1017)
!1023 = !DILocation(line: 818, column: 3, scope: !1017)
!1024 = !DILocalVariable(name: "i", scope: !1017, file: !9, line: 816, type: !33)
!1025 = !DILocation(line: 0, scope: !1017)
!1026 = !DILocation(line: 821, column: 9, scope: !1027)
!1027 = distinct !DILexicalBlock(scope: !1017, file: !9, line: 821, column: 3)
!1028 = !DILocation(line: 0, scope: !1027)
!1029 = !DILocation(line: 821, column: 18, scope: !1030)
!1030 = distinct !DILexicalBlock(scope: !1027, file: !9, line: 821, column: 3)
!1031 = !DILocation(line: 821, column: 3, scope: !1027)
!1032 = !DILocation(line: 822, column: 28, scope: !1030)
!1033 = !DILocation(line: 822, column: 5, scope: !1030)
!1034 = !DILocation(line: 822, column: 25, scope: !1030)
!1035 = !DILocation(line: 821, column: 26, scope: !1030)
!1036 = !DILocation(line: 821, column: 3, scope: !1030)
!1037 = distinct !{!1037, !1031, !1038, !273}
!1038 = !DILocation(line: 822, column: 28, scope: !1027)
!1039 = !DILocation(line: 823, column: 1, scope: !1017)
!1040 = distinct !DISubprogram(name: "g723_enc_return", scope: !9, file: !9, line: 826, type: !1041, scopeLine: 827, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !35)
!1041 = !DISubroutineType(types: !1042)
!1042 = !{!33}
!1043 = !DILocalVariable(name: "check_sum", scope: !1040, file: !9, line: 829, type: !33)
!1044 = !DILocation(line: 0, scope: !1040)
!1045 = !DILocalVariable(name: "i", scope: !1040, file: !9, line: 828, type: !33)
!1046 = !DILocation(line: 832, column: 9, scope: !1047)
!1047 = distinct !DILexicalBlock(scope: !1040, file: !9, line: 832, column: 3)
!1048 = !DILocation(line: 0, scope: !1047)
!1049 = !DILocation(line: 832, column: 18, scope: !1050)
!1050 = distinct !DILexicalBlock(scope: !1047, file: !9, line: 832, column: 3)
!1051 = !DILocation(line: 832, column: 3, scope: !1047)
!1052 = !DILocation(line: 833, column: 5, scope: !1050)
!1053 = !DILocation(line: 833, column: 18, scope: !1050)
!1054 = !DILocation(line: 833, column: 15, scope: !1050)
!1055 = !DILocation(line: 832, column: 26, scope: !1050)
!1056 = !DILocation(line: 832, column: 3, scope: !1050)
!1057 = distinct !{!1057, !1051, !1058, !273}
!1058 = !DILocation(line: 833, column: 37, scope: !1047)
!1059 = !DILocation(line: 835, column: 22, scope: !1040)
!1060 = !DILocation(line: 835, column: 3, scope: !1040)
!1061 = distinct !DISubprogram(name: "g723_enc_main", scope: !9, file: !9, line: 842, type: !1018, scopeLine: 843, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !35)
!1062 = !DILocalVariable(name: "i", scope: !1061, file: !9, line: 851, type: !33)
!1063 = !DILocation(line: 0, scope: !1061)
!1064 = !DILocalVariable(name: "enc_bits", scope: !1061, file: !9, line: 850, type: !33)
!1065 = !DILocalVariable(name: "in_coding", scope: !1061, file: !9, line: 848, type: !33)
!1066 = !DILocalVariable(name: "in_buf", scope: !1061, file: !9, line: 849, type: !241)
!1067 = !DILocation(line: 858, column: 9, scope: !1068)
!1068 = distinct !DILexicalBlock(scope: !1061, file: !9, line: 858, column: 3)
!1069 = !DILocation(line: 0, scope: !1068)
!1070 = !DILocalVariable(name: "resid", scope: !1061, file: !9, line: 847, type: !33)
!1071 = !DILocation(line: 858, column: 18, scope: !1072)
!1072 = distinct !DILexicalBlock(scope: !1068, file: !9, line: 858, column: 3)
!1073 = !DILocation(line: 858, column: 3, scope: !1068)
!1074 = !DILocation(line: 859, column: 15, scope: !1075)
!1075 = distinct !DILexicalBlock(scope: !1072, file: !9, line: 858, column: 31)
!1076 = !DILocalVariable(name: "sample_short", scope: !1061, file: !9, line: 845, type: !11)
!1077 = !DILocation(line: 860, column: 38, scope: !1075)
!1078 = !DILocation(line: 860, column: 12, scope: !1075)
!1079 = !DILocalVariable(name: "code", scope: !1061, file: !9, line: 846, type: !34)
!1080 = !DILocation(line: 861, column: 13, scope: !1075)
!1081 = !DILocation(line: 862, column: 3, scope: !1075)
!1082 = !DILocation(line: 858, column: 26, scope: !1072)
!1083 = !DILocation(line: 858, column: 3, scope: !1072)
!1084 = distinct !{!1084, !1073, !1085, !273}
!1085 = !DILocation(line: 862, column: 3, scope: !1068)
!1086 = !DILocation(line: 866, column: 3, scope: !1061)
!1087 = !DILocation(line: 867, column: 13, scope: !1061)
!1088 = distinct !{!1088, !1086, !1089, !273}
!1089 = !DILocation(line: 867, column: 47, scope: !1061)
!1090 = !DILocation(line: 868, column: 1, scope: !1061)
!1091 = distinct !DISubprogram(name: "main", scope: !9, file: !9, line: 871, type: !1041, scopeLine: 872, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !35)
!1092 = !DILocation(line: 873, column: 3, scope: !1091)
!1093 = !DILocation(line: 874, column: 3, scope: !1091)
!1094 = !DILocation(line: 876, column: 12, scope: !1091)
!1095 = !DILocation(line: 876, column: 3, scope: !1091)
!1096 = distinct !DISubprogram(name: "__absvdi2", scope: !69, file: !69, line: 22, type: !1097, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !68, retainedNodes: !35)
!1097 = !DISubroutineType(types: !35)
!1098 = !DILocation(line: 25, column: 11, scope: !1096)
!1099 = !DILocation(line: 25, column: 9, scope: !1096)
!1100 = !DILocation(line: 26, column: 9, scope: !1096)
!1101 = !DILocation(line: 28, column: 20, scope: !1096)
!1102 = !DILocation(line: 28, column: 5, scope: !1096)
!1103 = distinct !DISubprogram(name: "compilerrt_abort_impl", scope: !121, file: !121, line: 57, type: !1097, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !120, retainedNodes: !35)
!1104 = !DILocation(line: 59, column: 1, scope: !1103)
!1105 = distinct !DISubprogram(name: "__absvsi2", scope: !71, file: !71, line: 22, type: !1097, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !70, retainedNodes: !35)
!1106 = !DILocation(line: 25, column: 11, scope: !1105)
!1107 = !DILocation(line: 25, column: 9, scope: !1105)
!1108 = !DILocation(line: 26, column: 9, scope: !1105)
!1109 = !DILocation(line: 28, column: 20, scope: !1105)
!1110 = !DILocation(line: 28, column: 5, scope: !1105)
!1111 = distinct !DISubprogram(name: "__addvdi3", scope: !75, file: !75, line: 22, type: !1097, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !74, retainedNodes: !35)
!1112 = !DILocation(line: 24, column: 27, scope: !1111)
!1113 = !DILocation(line: 25, column: 11, scope: !1111)
!1114 = !DILocation(line: 25, column: 9, scope: !1111)
!1115 = !DILocation(line: 27, column: 15, scope: !1111)
!1116 = !DILocation(line: 27, column: 13, scope: !1111)
!1117 = !DILocation(line: 28, column: 13, scope: !1111)
!1118 = !DILocation(line: 29, column: 5, scope: !1111)
!1119 = !DILocation(line: 32, column: 15, scope: !1111)
!1120 = !DILocation(line: 32, column: 13, scope: !1111)
!1121 = !DILocation(line: 33, column: 13, scope: !1111)
!1122 = !DILocation(line: 35, column: 5, scope: !1111)
!1123 = distinct !DISubprogram(name: "__addvsi3", scope: !77, file: !77, line: 22, type: !1097, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !76, retainedNodes: !35)
!1124 = !DILocation(line: 24, column: 27, scope: !1123)
!1125 = !DILocation(line: 25, column: 11, scope: !1123)
!1126 = !DILocation(line: 25, column: 9, scope: !1123)
!1127 = !DILocation(line: 27, column: 15, scope: !1123)
!1128 = !DILocation(line: 27, column: 13, scope: !1123)
!1129 = !DILocation(line: 28, column: 13, scope: !1123)
!1130 = !DILocation(line: 29, column: 5, scope: !1123)
!1131 = !DILocation(line: 32, column: 15, scope: !1123)
!1132 = !DILocation(line: 32, column: 13, scope: !1123)
!1133 = !DILocation(line: 33, column: 13, scope: !1123)
!1134 = !DILocation(line: 35, column: 5, scope: !1123)
!1135 = distinct !DISubprogram(name: "__ashldi3", scope: !81, file: !81, line: 24, type: !1097, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !80, retainedNodes: !35)
!1136 = !DILocation(line: 29, column: 11, scope: !1135)
!1137 = !DILocation(line: 29, column: 15, scope: !1135)
!1138 = !DILocation(line: 30, column: 11, scope: !1135)
!1139 = !DILocation(line: 30, column: 9, scope: !1135)
!1140 = !DILocation(line: 32, column: 18, scope: !1135)
!1141 = !DILocation(line: 32, column: 22, scope: !1135)
!1142 = !DILocation(line: 33, column: 33, scope: !1135)
!1143 = !DILocation(line: 33, column: 43, scope: !1135)
!1144 = !DILocation(line: 33, column: 37, scope: !1135)
!1145 = !DILocation(line: 33, column: 16, scope: !1135)
!1146 = !DILocation(line: 33, column: 18, scope: !1135)
!1147 = !DILocation(line: 33, column: 23, scope: !1135)
!1148 = !DILocation(line: 34, column: 5, scope: !1135)
!1149 = !DILocation(line: 37, column: 15, scope: !1135)
!1150 = !DILocation(line: 37, column: 13, scope: !1135)
!1151 = !DILocation(line: 38, column: 13, scope: !1135)
!1152 = !DILocation(line: 39, column: 33, scope: !1135)
!1153 = !DILocation(line: 39, column: 37, scope: !1135)
!1154 = !DILocation(line: 39, column: 18, scope: !1135)
!1155 = !DILocation(line: 39, column: 23, scope: !1135)
!1156 = !DILocation(line: 40, column: 32, scope: !1135)
!1157 = !DILocation(line: 40, column: 34, scope: !1135)
!1158 = !DILocation(line: 40, column: 39, scope: !1135)
!1159 = !DILocation(line: 40, column: 56, scope: !1135)
!1160 = !DILocation(line: 40, column: 77, scope: !1135)
!1161 = !DILocation(line: 40, column: 60, scope: !1135)
!1162 = !DILocation(line: 40, column: 45, scope: !1135)
!1163 = !DILocation(line: 40, column: 16, scope: !1135)
!1164 = !DILocation(line: 40, column: 18, scope: !1135)
!1165 = !DILocation(line: 40, column: 23, scope: !1135)
!1166 = !DILocation(line: 42, column: 19, scope: !1135)
!1167 = !DILocation(line: 42, column: 5, scope: !1135)
!1168 = !DILocation(line: 0, scope: !1135)
!1169 = !DILocation(line: 43, column: 1, scope: !1135)
!1170 = distinct !DISubprogram(name: "__ashrdi3", scope: !85, file: !85, line: 24, type: !1097, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !84, retainedNodes: !35)
!1171 = !DILocation(line: 29, column: 11, scope: !1170)
!1172 = !DILocation(line: 29, column: 15, scope: !1170)
!1173 = !DILocation(line: 30, column: 11, scope: !1170)
!1174 = !DILocation(line: 30, column: 9, scope: !1170)
!1175 = !DILocation(line: 33, column: 31, scope: !1170)
!1176 = !DILocation(line: 33, column: 33, scope: !1170)
!1177 = !DILocation(line: 33, column: 38, scope: !1170)
!1178 = !DILocation(line: 33, column: 16, scope: !1170)
!1179 = !DILocation(line: 33, column: 18, scope: !1170)
!1180 = !DILocation(line: 33, column: 23, scope: !1170)
!1181 = !DILocation(line: 34, column: 30, scope: !1170)
!1182 = !DILocation(line: 34, column: 32, scope: !1170)
!1183 = !DILocation(line: 34, column: 43, scope: !1170)
!1184 = !DILocation(line: 34, column: 37, scope: !1170)
!1185 = !DILocation(line: 34, column: 18, scope: !1170)
!1186 = !DILocation(line: 34, column: 22, scope: !1170)
!1187 = !DILocation(line: 35, column: 5, scope: !1170)
!1188 = !DILocation(line: 38, column: 15, scope: !1170)
!1189 = !DILocation(line: 38, column: 13, scope: !1170)
!1190 = !DILocation(line: 39, column: 13, scope: !1170)
!1191 = !DILocation(line: 40, column: 32, scope: !1170)
!1192 = !DILocation(line: 40, column: 34, scope: !1170)
!1193 = !DILocation(line: 40, column: 39, scope: !1170)
!1194 = !DILocation(line: 40, column: 16, scope: !1170)
!1195 = !DILocation(line: 40, column: 18, scope: !1170)
!1196 = !DILocation(line: 40, column: 24, scope: !1170)
!1197 = !DILocation(line: 41, column: 31, scope: !1170)
!1198 = !DILocation(line: 41, column: 33, scope: !1170)
!1199 = !DILocation(line: 41, column: 55, scope: !1170)
!1200 = !DILocation(line: 41, column: 38, scope: !1170)
!1201 = !DILocation(line: 41, column: 72, scope: !1170)
!1202 = !DILocation(line: 41, column: 76, scope: !1170)
!1203 = !DILocation(line: 41, column: 61, scope: !1170)
!1204 = !DILocation(line: 41, column: 18, scope: !1170)
!1205 = !DILocation(line: 41, column: 22, scope: !1170)
!1206 = !DILocation(line: 43, column: 19, scope: !1170)
!1207 = !DILocation(line: 43, column: 5, scope: !1170)
!1208 = !DILocation(line: 0, scope: !1170)
!1209 = !DILocation(line: 44, column: 1, scope: !1170)
!1210 = distinct !DISubprogram(name: "__clzdi2", scope: !89, file: !89, line: 22, type: !1097, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !88, retainedNodes: !35)
!1211 = !DILocation(line: 25, column: 7, scope: !1210)
!1212 = !DILocation(line: 25, column: 11, scope: !1210)
!1213 = !DILocation(line: 26, column: 26, scope: !1210)
!1214 = !DILocation(line: 26, column: 28, scope: !1210)
!1215 = !DILocation(line: 26, column: 33, scope: !1210)
!1216 = !DILocation(line: 27, column: 29, scope: !1210)
!1217 = !DILocation(line: 27, column: 31, scope: !1210)
!1218 = !DILocation(line: 27, column: 49, scope: !1210)
!1219 = !DILocation(line: 27, column: 42, scope: !1210)
!1220 = !DILocation(line: 27, column: 12, scope: !1210)
!1221 = !{i32 0, i32 33}
!1222 = !DILocation(line: 28, column: 15, scope: !1210)
!1223 = !DILocation(line: 27, column: 59, scope: !1210)
!1224 = !DILocation(line: 27, column: 5, scope: !1210)
!1225 = distinct !DISubprogram(name: "__clzsi2", scope: !91, file: !91, line: 22, type: !1097, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !90, retainedNodes: !35)
!1226 = !DILocation(line: 25, column: 34, scope: !1225)
!1227 = !DILocation(line: 25, column: 40, scope: !1225)
!1228 = !DILocation(line: 26, column: 14, scope: !1225)
!1229 = !DILocation(line: 26, column: 7, scope: !1225)
!1230 = !DILocation(line: 29, column: 13, scope: !1225)
!1231 = !DILocation(line: 29, column: 23, scope: !1225)
!1232 = !DILocation(line: 29, column: 29, scope: !1225)
!1233 = !DILocation(line: 30, column: 13, scope: !1225)
!1234 = !DILocation(line: 30, column: 7, scope: !1225)
!1235 = !DILocation(line: 31, column: 7, scope: !1225)
!1236 = !DILocation(line: 33, column: 13, scope: !1225)
!1237 = !DILocation(line: 33, column: 21, scope: !1225)
!1238 = !DILocation(line: 33, column: 27, scope: !1225)
!1239 = !DILocation(line: 34, column: 13, scope: !1225)
!1240 = !DILocation(line: 34, column: 7, scope: !1225)
!1241 = !DILocation(line: 35, column: 7, scope: !1225)
!1242 = !DILocation(line: 37, column: 13, scope: !1225)
!1243 = !DILocation(line: 37, column: 20, scope: !1225)
!1244 = !DILocation(line: 37, column: 26, scope: !1225)
!1245 = !DILocation(line: 38, column: 13, scope: !1225)
!1246 = !DILocation(line: 38, column: 7, scope: !1225)
!1247 = !DILocation(line: 39, column: 7, scope: !1225)
!1248 = !DILocation(line: 52, column: 20, scope: !1225)
!1249 = !DILocation(line: 52, column: 37, scope: !1225)
!1250 = !DILocation(line: 52, column: 25, scope: !1225)
!1251 = !DILocation(line: 52, column: 14, scope: !1225)
!1252 = !DILocation(line: 52, column: 5, scope: !1225)
!1253 = distinct !DISubprogram(name: "__cmpdi2", scope: !95, file: !95, line: 23, type: !1097, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !94, retainedNodes: !35)
!1254 = !DILocation(line: 26, column: 7, scope: !1253)
!1255 = !DILocation(line: 26, column: 11, scope: !1253)
!1256 = !DILocation(line: 28, column: 7, scope: !1253)
!1257 = !DILocation(line: 28, column: 11, scope: !1253)
!1258 = !DILocation(line: 29, column: 11, scope: !1253)
!1259 = !DILocation(line: 29, column: 13, scope: !1253)
!1260 = !DILocation(line: 29, column: 22, scope: !1253)
!1261 = !DILocation(line: 29, column: 24, scope: !1253)
!1262 = !DILocation(line: 29, column: 18, scope: !1253)
!1263 = !DILocation(line: 29, column: 9, scope: !1253)
!1264 = !DILocation(line: 30, column: 9, scope: !1253)
!1265 = !DILocation(line: 31, column: 11, scope: !1253)
!1266 = !DILocation(line: 31, column: 13, scope: !1253)
!1267 = !DILocation(line: 31, column: 22, scope: !1253)
!1268 = !DILocation(line: 31, column: 24, scope: !1253)
!1269 = !DILocation(line: 31, column: 18, scope: !1253)
!1270 = !DILocation(line: 31, column: 9, scope: !1253)
!1271 = !DILocation(line: 32, column: 9, scope: !1253)
!1272 = !DILocation(line: 33, column: 13, scope: !1253)
!1273 = !DILocation(line: 33, column: 23, scope: !1253)
!1274 = !DILocation(line: 33, column: 17, scope: !1253)
!1275 = !DILocation(line: 33, column: 9, scope: !1253)
!1276 = !DILocation(line: 34, column: 9, scope: !1253)
!1277 = !DILocation(line: 35, column: 13, scope: !1253)
!1278 = !DILocation(line: 35, column: 23, scope: !1253)
!1279 = !DILocation(line: 35, column: 17, scope: !1253)
!1280 = !DILocation(line: 35, column: 9, scope: !1253)
!1281 = !DILocation(line: 36, column: 9, scope: !1253)
!1282 = !DILocation(line: 37, column: 5, scope: !1253)
!1283 = !DILocation(line: 0, scope: !1253)
!1284 = !DILocation(line: 38, column: 1, scope: !1253)
!1285 = distinct !DISubprogram(name: "__aeabi_lcmp", scope: !95, file: !95, line: 46, type: !1097, scopeLine: 47, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !94, retainedNodes: !35)
!1286 = !DILocation(line: 48, column: 9, scope: !1285)
!1287 = !DILocation(line: 48, column: 24, scope: !1285)
!1288 = !DILocation(line: 48, column: 2, scope: !1285)
!1289 = distinct !DISubprogram(name: "__ctzdi2", scope: !99, file: !99, line: 22, type: !1097, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !98, retainedNodes: !35)
!1290 = !DILocation(line: 25, column: 7, scope: !1289)
!1291 = !DILocation(line: 25, column: 11, scope: !1289)
!1292 = !DILocation(line: 26, column: 28, scope: !1289)
!1293 = !DILocation(line: 26, column: 32, scope: !1289)
!1294 = !DILocation(line: 27, column: 29, scope: !1289)
!1295 = !DILocation(line: 27, column: 31, scope: !1289)
!1296 = !DILocation(line: 27, column: 41, scope: !1289)
!1297 = !DILocation(line: 27, column: 12, scope: !1289)
!1298 = !DILocation(line: 28, column: 18, scope: !1289)
!1299 = !DILocation(line: 27, column: 59, scope: !1289)
!1300 = !DILocation(line: 27, column: 5, scope: !1289)
!1301 = distinct !DISubprogram(name: "__ctzsi2", scope: !101, file: !101, line: 22, type: !1097, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !100, retainedNodes: !35)
!1302 = !DILocation(line: 25, column: 20, scope: !1301)
!1303 = !DILocation(line: 25, column: 34, scope: !1301)
!1304 = !DILocation(line: 25, column: 40, scope: !1301)
!1305 = !DILocation(line: 26, column: 7, scope: !1301)
!1306 = !DILocation(line: 29, column: 13, scope: !1301)
!1307 = !DILocation(line: 29, column: 23, scope: !1301)
!1308 = !DILocation(line: 29, column: 29, scope: !1301)
!1309 = !DILocation(line: 30, column: 7, scope: !1301)
!1310 = !DILocation(line: 31, column: 7, scope: !1301)
!1311 = !DILocation(line: 33, column: 13, scope: !1301)
!1312 = !DILocation(line: 33, column: 21, scope: !1301)
!1313 = !DILocation(line: 33, column: 27, scope: !1301)
!1314 = !DILocation(line: 34, column: 7, scope: !1301)
!1315 = !DILocation(line: 35, column: 7, scope: !1301)
!1316 = !DILocation(line: 37, column: 13, scope: !1301)
!1317 = !DILocation(line: 37, column: 20, scope: !1301)
!1318 = !DILocation(line: 37, column: 26, scope: !1301)
!1319 = !DILocation(line: 38, column: 7, scope: !1301)
!1320 = !DILocation(line: 40, column: 7, scope: !1301)
!1321 = !DILocation(line: 56, column: 25, scope: !1301)
!1322 = !DILocation(line: 56, column: 20, scope: !1301)
!1323 = !DILocation(line: 56, column: 44, scope: !1301)
!1324 = !DILocation(line: 56, column: 32, scope: !1301)
!1325 = !DILocation(line: 56, column: 14, scope: !1301)
!1326 = !DILocation(line: 56, column: 5, scope: !1301)
!1327 = distinct !DISubprogram(name: "__divdi3", scope: !105, file: !105, line: 20, type: !1097, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !104, retainedNodes: !35)
!1328 = !DILocation(line: 23, column: 20, scope: !1327)
!1329 = !DILocation(line: 24, column: 20, scope: !1327)
!1330 = !DILocation(line: 25, column: 12, scope: !1327)
!1331 = !DILocation(line: 25, column: 19, scope: !1327)
!1332 = !DILocation(line: 26, column: 12, scope: !1327)
!1333 = !DILocation(line: 26, column: 19, scope: !1327)
!1334 = !DILocation(line: 27, column: 9, scope: !1327)
!1335 = !DILocation(line: 28, column: 13, scope: !1327)
!1336 = !DILocation(line: 28, column: 44, scope: !1327)
!1337 = !DILocation(line: 28, column: 51, scope: !1327)
!1338 = !DILocation(line: 28, column: 5, scope: !1327)
!1339 = distinct !DISubprogram(name: "__udivmoddi4", scope: !163, file: !163, line: 24, type: !1097, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !162, retainedNodes: !35)
!1340 = !DILocation(line: 29, column: 7, scope: !1339)
!1341 = !DILocation(line: 29, column: 11, scope: !1339)
!1342 = !DILocation(line: 31, column: 7, scope: !1339)
!1343 = !DILocation(line: 31, column: 11, scope: !1339)
!1344 = !DILocation(line: 36, column: 11, scope: !1339)
!1345 = !DILocation(line: 36, column: 13, scope: !1339)
!1346 = !DILocation(line: 36, column: 18, scope: !1339)
!1347 = !DILocation(line: 36, column: 9, scope: !1339)
!1348 = !DILocation(line: 38, column: 15, scope: !1339)
!1349 = !DILocation(line: 38, column: 17, scope: !1339)
!1350 = !DILocation(line: 38, column: 22, scope: !1339)
!1351 = !DILocation(line: 38, column: 13, scope: !1339)
!1352 = !DILocation(line: 44, column: 17, scope: !1339)
!1353 = !DILocation(line: 45, column: 28, scope: !1339)
!1354 = !DILocation(line: 45, column: 38, scope: !1339)
!1355 = !DILocation(line: 45, column: 32, scope: !1339)
!1356 = !DILocation(line: 45, column: 24, scope: !1339)
!1357 = !DILocation(line: 45, column: 22, scope: !1339)
!1358 = !DILocation(line: 45, column: 17, scope: !1339)
!1359 = !DILocation(line: 46, column: 24, scope: !1339)
!1360 = !DILocation(line: 46, column: 34, scope: !1339)
!1361 = !DILocation(line: 46, column: 28, scope: !1339)
!1362 = !DILocation(line: 46, column: 20, scope: !1339)
!1363 = !DILocation(line: 46, column: 13, scope: !1339)
!1364 = !DILocation(line: 52, column: 13, scope: !1339)
!1365 = !DILocation(line: 53, column: 24, scope: !1339)
!1366 = !DILocation(line: 53, column: 20, scope: !1339)
!1367 = !DILocation(line: 53, column: 18, scope: !1339)
!1368 = !DILocation(line: 53, column: 13, scope: !1339)
!1369 = !DILocation(line: 54, column: 9, scope: !1339)
!1370 = !DILocation(line: 57, column: 13, scope: !1339)
!1371 = !DILocation(line: 57, column: 17, scope: !1339)
!1372 = !DILocation(line: 57, column: 9, scope: !1339)
!1373 = !DILocation(line: 59, column: 15, scope: !1339)
!1374 = !DILocation(line: 59, column: 17, scope: !1339)
!1375 = !DILocation(line: 59, column: 22, scope: !1339)
!1376 = !DILocation(line: 59, column: 13, scope: !1339)
!1377 = !DILocation(line: 65, column: 17, scope: !1339)
!1378 = !DILocation(line: 66, column: 26, scope: !1339)
!1379 = !DILocation(line: 66, column: 28, scope: !1339)
!1380 = !DILocation(line: 66, column: 39, scope: !1339)
!1381 = !DILocation(line: 66, column: 33, scope: !1339)
!1382 = !DILocation(line: 66, column: 24, scope: !1339)
!1383 = !DILocation(line: 66, column: 22, scope: !1339)
!1384 = !DILocation(line: 66, column: 17, scope: !1339)
!1385 = !DILocation(line: 67, column: 22, scope: !1339)
!1386 = !DILocation(line: 67, column: 24, scope: !1339)
!1387 = !DILocation(line: 67, column: 35, scope: !1339)
!1388 = !DILocation(line: 67, column: 29, scope: !1339)
!1389 = !DILocation(line: 67, column: 20, scope: !1339)
!1390 = !DILocation(line: 67, column: 13, scope: !1339)
!1391 = !DILocation(line: 70, column: 17, scope: !1339)
!1392 = !DILocation(line: 70, column: 21, scope: !1339)
!1393 = !DILocation(line: 70, column: 13, scope: !1339)
!1394 = !DILocation(line: 76, column: 17, scope: !1339)
!1395 = !DILocation(line: 78, column: 30, scope: !1339)
!1396 = !DILocation(line: 78, column: 32, scope: !1339)
!1397 = !DILocation(line: 78, column: 41, scope: !1339)
!1398 = !DILocation(line: 78, column: 43, scope: !1339)
!1399 = !DILocation(line: 78, column: 37, scope: !1339)
!1400 = !DILocation(line: 78, column: 19, scope: !1339)
!1401 = !DILocation(line: 78, column: 21, scope: !1339)
!1402 = !DILocation(line: 78, column: 26, scope: !1339)
!1403 = !DILocation(line: 79, column: 21, scope: !1339)
!1404 = !DILocation(line: 79, column: 25, scope: !1339)
!1405 = !DILocation(line: 80, column: 26, scope: !1339)
!1406 = !DILocation(line: 80, column: 22, scope: !1339)
!1407 = !DILocation(line: 81, column: 13, scope: !1339)
!1408 = !DILocation(line: 82, column: 22, scope: !1339)
!1409 = !DILocation(line: 82, column: 24, scope: !1339)
!1410 = !DILocation(line: 82, column: 33, scope: !1339)
!1411 = !DILocation(line: 82, column: 35, scope: !1339)
!1412 = !DILocation(line: 82, column: 29, scope: !1339)
!1413 = !DILocation(line: 82, column: 20, scope: !1339)
!1414 = !DILocation(line: 82, column: 13, scope: !1339)
!1415 = !DILocation(line: 88, column: 16, scope: !1339)
!1416 = !DILocation(line: 88, column: 18, scope: !1339)
!1417 = !DILocation(line: 88, column: 28, scope: !1339)
!1418 = !DILocation(line: 88, column: 30, scope: !1339)
!1419 = !DILocation(line: 88, column: 35, scope: !1339)
!1420 = !DILocation(line: 88, column: 23, scope: !1339)
!1421 = !DILocation(line: 88, column: 41, scope: !1339)
!1422 = !DILocation(line: 88, column: 13, scope: !1339)
!1423 = !DILocation(line: 90, column: 17, scope: !1339)
!1424 = !DILocation(line: 92, column: 31, scope: !1339)
!1425 = !DILocation(line: 92, column: 21, scope: !1339)
!1426 = !DILocation(line: 92, column: 25, scope: !1339)
!1427 = !DILocation(line: 93, column: 30, scope: !1339)
!1428 = !DILocation(line: 93, column: 32, scope: !1339)
!1429 = !DILocation(line: 93, column: 42, scope: !1339)
!1430 = !DILocation(line: 93, column: 44, scope: !1339)
!1431 = !DILocation(line: 93, column: 49, scope: !1339)
!1432 = !DILocation(line: 93, column: 37, scope: !1339)
!1433 = !DILocation(line: 93, column: 19, scope: !1339)
!1434 = !DILocation(line: 93, column: 21, scope: !1339)
!1435 = !DILocation(line: 93, column: 26, scope: !1339)
!1436 = !DILocation(line: 94, column: 26, scope: !1339)
!1437 = !DILocation(line: 94, column: 22, scope: !1339)
!1438 = !DILocation(line: 95, column: 13, scope: !1339)
!1439 = !DILocation(line: 96, column: 22, scope: !1339)
!1440 = !DILocation(line: 96, column: 24, scope: !1339)
!1441 = !DILocation(line: 96, column: 48, scope: !1339)
!1442 = !DILocation(line: 96, column: 50, scope: !1339)
!1443 = !DILocation(line: 96, column: 32, scope: !1339)
!1444 = !DILocation(line: 96, column: 29, scope: !1339)
!1445 = !DILocation(line: 96, column: 20, scope: !1339)
!1446 = !DILocation(line: 96, column: 13, scope: !1339)
!1447 = !DILocation(line: 102, column: 30, scope: !1339)
!1448 = !DILocation(line: 102, column: 32, scope: !1339)
!1449 = !DILocation(line: 102, column: 14, scope: !1339)
!1450 = !DILocation(line: 102, column: 56, scope: !1339)
!1451 = !DILocation(line: 102, column: 58, scope: !1339)
!1452 = !DILocation(line: 102, column: 40, scope: !1339)
!1453 = !DILocation(line: 102, column: 38, scope: !1339)
!1454 = !DILocation(line: 104, column: 16, scope: !1339)
!1455 = !DILocation(line: 104, column: 13, scope: !1339)
!1456 = !DILocation(line: 106, column: 16, scope: !1339)
!1457 = !DILocation(line: 107, column: 26, scope: !1339)
!1458 = !DILocation(line: 107, column: 22, scope: !1339)
!1459 = !DILocation(line: 107, column: 17, scope: !1339)
!1460 = !DILocation(line: 108, column: 13, scope: !1339)
!1461 = !DILocation(line: 110, column: 9, scope: !1339)
!1462 = !DILocation(line: 113, column: 13, scope: !1339)
!1463 = !DILocation(line: 113, column: 17, scope: !1339)
!1464 = !DILocation(line: 114, column: 24, scope: !1339)
!1465 = !DILocation(line: 114, column: 45, scope: !1339)
!1466 = !DILocation(line: 114, column: 28, scope: !1339)
!1467 = !DILocation(line: 114, column: 11, scope: !1339)
!1468 = !DILocation(line: 114, column: 13, scope: !1339)
!1469 = !DILocation(line: 114, column: 18, scope: !1339)
!1470 = !DILocation(line: 116, column: 22, scope: !1339)
!1471 = !DILocation(line: 116, column: 24, scope: !1339)
!1472 = !DILocation(line: 116, column: 29, scope: !1339)
!1473 = !DILocation(line: 116, column: 11, scope: !1339)
!1474 = !DILocation(line: 116, column: 13, scope: !1339)
!1475 = !DILocation(line: 116, column: 18, scope: !1339)
!1476 = !DILocation(line: 117, column: 22, scope: !1339)
!1477 = !DILocation(line: 117, column: 24, scope: !1339)
!1478 = !DILocation(line: 117, column: 46, scope: !1339)
!1479 = !DILocation(line: 117, column: 29, scope: !1339)
!1480 = !DILocation(line: 117, column: 60, scope: !1339)
!1481 = !DILocation(line: 117, column: 64, scope: !1339)
!1482 = !DILocation(line: 117, column: 53, scope: !1339)
!1483 = !DILocation(line: 117, column: 13, scope: !1339)
!1484 = !DILocation(line: 117, column: 17, scope: !1339)
!1485 = !DILocation(line: 118, column: 5, scope: !1339)
!1486 = !DILocation(line: 121, column: 15, scope: !1339)
!1487 = !DILocation(line: 121, column: 17, scope: !1339)
!1488 = !DILocation(line: 121, column: 22, scope: !1339)
!1489 = !DILocation(line: 121, column: 13, scope: !1339)
!1490 = !DILocation(line: 127, column: 22, scope: !1339)
!1491 = !DILocation(line: 127, column: 43, scope: !1339)
!1492 = !DILocation(line: 127, column: 17, scope: !1339)
!1493 = !DILocation(line: 129, column: 21, scope: !1339)
!1494 = !DILocation(line: 130, column: 32, scope: !1339)
!1495 = !DILocation(line: 130, column: 43, scope: !1339)
!1496 = !DILocation(line: 130, column: 47, scope: !1339)
!1497 = !DILocation(line: 130, column: 36, scope: !1339)
!1498 = !DILocation(line: 130, column: 28, scope: !1339)
!1499 = !DILocation(line: 130, column: 26, scope: !1339)
!1500 = !DILocation(line: 130, column: 21, scope: !1339)
!1501 = !DILocation(line: 131, column: 25, scope: !1339)
!1502 = !DILocation(line: 131, column: 29, scope: !1339)
!1503 = !DILocation(line: 131, column: 21, scope: !1339)
!1504 = !DILocation(line: 132, column: 30, scope: !1339)
!1505 = !DILocation(line: 132, column: 21, scope: !1339)
!1506 = !DILocation(line: 133, column: 40, scope: !1339)
!1507 = !DILocation(line: 133, column: 22, scope: !1339)
!1508 = !DILocation(line: 134, column: 30, scope: !1339)
!1509 = !DILocation(line: 134, column: 32, scope: !1339)
!1510 = !DILocation(line: 134, column: 37, scope: !1339)
!1511 = !DILocation(line: 134, column: 19, scope: !1339)
!1512 = !DILocation(line: 134, column: 21, scope: !1339)
!1513 = !DILocation(line: 134, column: 26, scope: !1339)
!1514 = !DILocation(line: 135, column: 30, scope: !1339)
!1515 = !DILocation(line: 135, column: 32, scope: !1339)
!1516 = !DILocation(line: 135, column: 54, scope: !1339)
!1517 = !DILocation(line: 135, column: 37, scope: !1339)
!1518 = !DILocation(line: 135, column: 68, scope: !1339)
!1519 = !DILocation(line: 135, column: 72, scope: !1339)
!1520 = !DILocation(line: 135, column: 61, scope: !1339)
!1521 = !DILocation(line: 135, column: 21, scope: !1339)
!1522 = !DILocation(line: 135, column: 25, scope: !1339)
!1523 = !DILocation(line: 136, column: 26, scope: !1339)
!1524 = !DILocation(line: 136, column: 17, scope: !1339)
!1525 = !DILocation(line: 142, column: 55, scope: !1339)
!1526 = !DILocation(line: 142, column: 37, scope: !1339)
!1527 = !DILocation(line: 142, column: 35, scope: !1339)
!1528 = !DILocation(line: 142, column: 78, scope: !1339)
!1529 = !DILocation(line: 142, column: 80, scope: !1339)
!1530 = !DILocation(line: 142, column: 62, scope: !1339)
!1531 = !DILocation(line: 142, column: 60, scope: !1339)
!1532 = !DILocation(line: 147, column: 20, scope: !1339)
!1533 = !DILocation(line: 147, column: 17, scope: !1339)
!1534 = !DILocation(line: 149, column: 21, scope: !1339)
!1535 = !DILocation(line: 149, column: 25, scope: !1339)
!1536 = !DILocation(line: 150, column: 32, scope: !1339)
!1537 = !DILocation(line: 150, column: 19, scope: !1339)
!1538 = !DILocation(line: 150, column: 21, scope: !1339)
!1539 = !DILocation(line: 150, column: 26, scope: !1339)
!1540 = !DILocation(line: 151, column: 19, scope: !1339)
!1541 = !DILocation(line: 151, column: 21, scope: !1339)
!1542 = !DILocation(line: 151, column: 26, scope: !1339)
!1543 = !DILocation(line: 152, column: 29, scope: !1339)
!1544 = !DILocation(line: 152, column: 31, scope: !1339)
!1545 = !DILocation(line: 152, column: 21, scope: !1339)
!1546 = !DILocation(line: 152, column: 25, scope: !1339)
!1547 = !DILocation(line: 153, column: 13, scope: !1339)
!1548 = !DILocation(line: 154, column: 25, scope: !1339)
!1549 = !DILocation(line: 154, column: 22, scope: !1339)
!1550 = !DILocation(line: 156, column: 21, scope: !1339)
!1551 = !DILocation(line: 156, column: 25, scope: !1339)
!1552 = !DILocation(line: 157, column: 32, scope: !1339)
!1553 = !DILocation(line: 157, column: 53, scope: !1339)
!1554 = !DILocation(line: 157, column: 36, scope: !1339)
!1555 = !DILocation(line: 157, column: 19, scope: !1339)
!1556 = !DILocation(line: 157, column: 21, scope: !1339)
!1557 = !DILocation(line: 157, column: 26, scope: !1339)
!1558 = !DILocation(line: 158, column: 30, scope: !1339)
!1559 = !DILocation(line: 158, column: 32, scope: !1339)
!1560 = !DILocation(line: 158, column: 37, scope: !1339)
!1561 = !DILocation(line: 158, column: 19, scope: !1339)
!1562 = !DILocation(line: 158, column: 21, scope: !1339)
!1563 = !DILocation(line: 158, column: 26, scope: !1339)
!1564 = !DILocation(line: 159, column: 30, scope: !1339)
!1565 = !DILocation(line: 159, column: 32, scope: !1339)
!1566 = !DILocation(line: 159, column: 54, scope: !1339)
!1567 = !DILocation(line: 159, column: 37, scope: !1339)
!1568 = !DILocation(line: 159, column: 68, scope: !1339)
!1569 = !DILocation(line: 159, column: 72, scope: !1339)
!1570 = !DILocation(line: 159, column: 61, scope: !1339)
!1571 = !DILocation(line: 159, column: 21, scope: !1339)
!1572 = !DILocation(line: 159, column: 25, scope: !1339)
!1573 = !DILocation(line: 160, column: 13, scope: !1339)
!1574 = !DILocation(line: 163, column: 31, scope: !1339)
!1575 = !DILocation(line: 163, column: 53, scope: !1339)
!1576 = !DILocation(line: 163, column: 35, scope: !1339)
!1577 = !DILocation(line: 163, column: 21, scope: !1339)
!1578 = !DILocation(line: 163, column: 25, scope: !1339)
!1579 = !DILocation(line: 164, column: 31, scope: !1339)
!1580 = !DILocation(line: 164, column: 33, scope: !1339)
!1581 = !DILocation(line: 164, column: 56, scope: !1339)
!1582 = !DILocation(line: 164, column: 38, scope: !1339)
!1583 = !DILocation(line: 165, column: 33, scope: !1339)
!1584 = !DILocation(line: 165, column: 44, scope: !1339)
!1585 = !DILocation(line: 165, column: 37, scope: !1339)
!1586 = !DILocation(line: 164, column: 63, scope: !1339)
!1587 = !DILocation(line: 164, column: 19, scope: !1339)
!1588 = !DILocation(line: 164, column: 21, scope: !1339)
!1589 = !DILocation(line: 164, column: 26, scope: !1339)
!1590 = !DILocation(line: 166, column: 19, scope: !1339)
!1591 = !DILocation(line: 166, column: 21, scope: !1339)
!1592 = !DILocation(line: 166, column: 26, scope: !1339)
!1593 = !DILocation(line: 167, column: 29, scope: !1339)
!1594 = !DILocation(line: 167, column: 31, scope: !1339)
!1595 = !DILocation(line: 167, column: 43, scope: !1339)
!1596 = !DILocation(line: 167, column: 36, scope: !1339)
!1597 = !DILocation(line: 167, column: 21, scope: !1339)
!1598 = !DILocation(line: 167, column: 25, scope: !1339)
!1599 = !DILocation(line: 169, column: 9, scope: !1339)
!1600 = !DILocation(line: 176, column: 34, scope: !1339)
!1601 = !DILocation(line: 176, column: 36, scope: !1339)
!1602 = !DILocation(line: 176, column: 18, scope: !1339)
!1603 = !DILocation(line: 176, column: 60, scope: !1339)
!1604 = !DILocation(line: 176, column: 62, scope: !1339)
!1605 = !DILocation(line: 176, column: 44, scope: !1339)
!1606 = !DILocation(line: 176, column: 42, scope: !1339)
!1607 = !DILocation(line: 178, column: 20, scope: !1339)
!1608 = !DILocation(line: 178, column: 17, scope: !1339)
!1609 = !DILocation(line: 180, column: 21, scope: !1339)
!1610 = !DILocation(line: 181, column: 30, scope: !1339)
!1611 = !DILocation(line: 181, column: 26, scope: !1339)
!1612 = !DILocation(line: 181, column: 21, scope: !1339)
!1613 = !DILocation(line: 182, column: 17, scope: !1339)
!1614 = !DILocation(line: 184, column: 13, scope: !1339)
!1615 = !DILocation(line: 187, column: 17, scope: !1339)
!1616 = !DILocation(line: 187, column: 21, scope: !1339)
!1617 = !DILocation(line: 188, column: 20, scope: !1339)
!1618 = !DILocation(line: 188, column: 17, scope: !1339)
!1619 = !DILocation(line: 190, column: 32, scope: !1339)
!1620 = !DILocation(line: 190, column: 19, scope: !1339)
!1621 = !DILocation(line: 190, column: 21, scope: !1339)
!1622 = !DILocation(line: 190, column: 26, scope: !1339)
!1623 = !DILocation(line: 191, column: 19, scope: !1339)
!1624 = !DILocation(line: 191, column: 21, scope: !1339)
!1625 = !DILocation(line: 191, column: 26, scope: !1339)
!1626 = !DILocation(line: 192, column: 29, scope: !1339)
!1627 = !DILocation(line: 192, column: 31, scope: !1339)
!1628 = !DILocation(line: 192, column: 21, scope: !1339)
!1629 = !DILocation(line: 192, column: 25, scope: !1339)
!1630 = !DILocation(line: 193, column: 13, scope: !1339)
!1631 = !DILocation(line: 196, column: 32, scope: !1339)
!1632 = !DILocation(line: 196, column: 53, scope: !1339)
!1633 = !DILocation(line: 196, column: 36, scope: !1339)
!1634 = !DILocation(line: 196, column: 19, scope: !1339)
!1635 = !DILocation(line: 196, column: 21, scope: !1339)
!1636 = !DILocation(line: 196, column: 26, scope: !1339)
!1637 = !DILocation(line: 197, column: 30, scope: !1339)
!1638 = !DILocation(line: 197, column: 32, scope: !1339)
!1639 = !DILocation(line: 197, column: 37, scope: !1339)
!1640 = !DILocation(line: 197, column: 19, scope: !1339)
!1641 = !DILocation(line: 197, column: 21, scope: !1339)
!1642 = !DILocation(line: 197, column: 26, scope: !1339)
!1643 = !DILocation(line: 198, column: 30, scope: !1339)
!1644 = !DILocation(line: 198, column: 32, scope: !1339)
!1645 = !DILocation(line: 198, column: 54, scope: !1339)
!1646 = !DILocation(line: 198, column: 37, scope: !1339)
!1647 = !DILocation(line: 198, column: 68, scope: !1339)
!1648 = !DILocation(line: 198, column: 72, scope: !1339)
!1649 = !DILocation(line: 198, column: 61, scope: !1339)
!1650 = !DILocation(line: 198, column: 21, scope: !1339)
!1651 = !DILocation(line: 198, column: 25, scope: !1339)
!1652 = !DILocation(line: 0, scope: !1339)
!1653 = !DILocation(line: 209, column: 5, scope: !1339)
!1654 = !DILocation(line: 209, column: 15, scope: !1339)
!1655 = !DILocation(line: 212, column: 23, scope: !1339)
!1656 = !DILocation(line: 212, column: 25, scope: !1339)
!1657 = !DILocation(line: 212, column: 43, scope: !1339)
!1658 = !DILocation(line: 212, column: 36, scope: !1339)
!1659 = !DILocation(line: 212, column: 11, scope: !1339)
!1660 = !DILocation(line: 212, column: 13, scope: !1339)
!1661 = !DILocation(line: 212, column: 18, scope: !1339)
!1662 = !DILocation(line: 213, column: 41, scope: !1339)
!1663 = !DILocation(line: 213, column: 43, scope: !1339)
!1664 = !DILocation(line: 213, column: 36, scope: !1339)
!1665 = !DILocation(line: 213, column: 13, scope: !1339)
!1666 = !DILocation(line: 213, column: 18, scope: !1339)
!1667 = !DILocation(line: 214, column: 23, scope: !1339)
!1668 = !DILocation(line: 214, column: 25, scope: !1339)
!1669 = !DILocation(line: 214, column: 43, scope: !1339)
!1670 = !DILocation(line: 214, column: 36, scope: !1339)
!1671 = !DILocation(line: 214, column: 11, scope: !1339)
!1672 = !DILocation(line: 214, column: 13, scope: !1339)
!1673 = !DILocation(line: 214, column: 18, scope: !1339)
!1674 = !DILocation(line: 215, column: 30, scope: !1339)
!1675 = !DILocation(line: 215, column: 36, scope: !1339)
!1676 = !DILocation(line: 215, column: 13, scope: !1339)
!1677 = !DILocation(line: 215, column: 18, scope: !1339)
!1678 = !DILocation(line: 223, column: 37, scope: !1339)
!1679 = !DILocation(line: 223, column: 45, scope: !1339)
!1680 = !DILocation(line: 223, column: 49, scope: !1339)
!1681 = !DILocation(line: 225, column: 24, scope: !1339)
!1682 = !DILocation(line: 225, column: 11, scope: !1339)
!1683 = !DILocation(line: 225, column: 15, scope: !1339)
!1684 = !DILocation(line: 226, column: 5, scope: !1339)
!1685 = !DILocation(line: 224, column: 19, scope: !1339)
!1686 = !DILocation(line: 224, column: 17, scope: !1339)
!1687 = !DILocation(line: 209, column: 20, scope: !1339)
!1688 = distinct !{!1688, !1653, !1684, !273}
!1689 = !DILocation(line: 227, column: 16, scope: !1339)
!1690 = !DILocation(line: 227, column: 20, scope: !1339)
!1691 = !DILocation(line: 227, column: 28, scope: !1339)
!1692 = !DILocation(line: 227, column: 26, scope: !1339)
!1693 = !DILocation(line: 227, column: 7, scope: !1339)
!1694 = !DILocation(line: 227, column: 11, scope: !1339)
!1695 = !DILocation(line: 228, column: 9, scope: !1339)
!1696 = !DILocation(line: 229, column: 18, scope: !1339)
!1697 = !DILocation(line: 229, column: 14, scope: !1339)
!1698 = !DILocation(line: 229, column: 9, scope: !1339)
!1699 = !DILocation(line: 230, column: 14, scope: !1339)
!1700 = !DILocation(line: 230, column: 5, scope: !1339)
!1701 = !DILocation(line: 231, column: 1, scope: !1339)
!1702 = distinct !DISubprogram(name: "__divmoddi4", scope: !107, file: !107, line: 20, type: !1097, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !106, retainedNodes: !35)
!1703 = !DILocation(line: 22, column: 14, scope: !1702)
!1704 = !DILocation(line: 23, column: 16, scope: !1702)
!1705 = !DILocation(line: 23, column: 12, scope: !1702)
!1706 = !DILocation(line: 23, column: 8, scope: !1702)
!1707 = !DILocation(line: 24, column: 3, scope: !1702)
!1708 = distinct !DISubprogram(name: "__divmodsi4", scope: !109, file: !109, line: 20, type: !1097, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !108, retainedNodes: !35)
!1709 = !DILocation(line: 22, column: 14, scope: !1708)
!1710 = !DILocation(line: 23, column: 16, scope: !1708)
!1711 = !DILocation(line: 23, column: 12, scope: !1708)
!1712 = !DILocation(line: 23, column: 8, scope: !1708)
!1713 = !DILocation(line: 24, column: 3, scope: !1708)
!1714 = distinct !DISubprogram(name: "__divsi3", scope: !111, file: !111, line: 22, type: !1097, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !110, retainedNodes: !35)
!1715 = !DILocation(line: 25, column: 20, scope: !1714)
!1716 = !DILocation(line: 26, column: 20, scope: !1714)
!1717 = !DILocation(line: 27, column: 12, scope: !1714)
!1718 = !DILocation(line: 27, column: 19, scope: !1714)
!1719 = !DILocation(line: 28, column: 12, scope: !1714)
!1720 = !DILocation(line: 28, column: 19, scope: !1714)
!1721 = !DILocation(line: 29, column: 9, scope: !1714)
!1722 = !DILocation(line: 36, column: 22, scope: !1714)
!1723 = !DILocation(line: 36, column: 33, scope: !1714)
!1724 = !DILocation(line: 36, column: 40, scope: !1714)
!1725 = !DILocation(line: 36, column: 5, scope: !1714)
!1726 = distinct !DISubprogram(name: "__ffsdi2", scope: !115, file: !115, line: 22, type: !1097, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !114, retainedNodes: !35)
!1727 = !DILocation(line: 25, column: 7, scope: !1726)
!1728 = !DILocation(line: 25, column: 11, scope: !1726)
!1729 = !DILocation(line: 26, column: 13, scope: !1726)
!1730 = !DILocation(line: 26, column: 17, scope: !1726)
!1731 = !DILocation(line: 26, column: 9, scope: !1726)
!1732 = !DILocation(line: 28, column: 15, scope: !1726)
!1733 = !DILocation(line: 28, column: 17, scope: !1726)
!1734 = !DILocation(line: 28, column: 22, scope: !1726)
!1735 = !DILocation(line: 28, column: 13, scope: !1726)
!1736 = !DILocation(line: 29, column: 13, scope: !1726)
!1737 = !DILocation(line: 30, column: 32, scope: !1726)
!1738 = !DILocation(line: 30, column: 34, scope: !1726)
!1739 = !DILocation(line: 30, column: 16, scope: !1726)
!1740 = !DILocation(line: 30, column: 40, scope: !1726)
!1741 = !DILocation(line: 30, column: 9, scope: !1726)
!1742 = !DILocation(line: 32, column: 30, scope: !1726)
!1743 = !DILocation(line: 32, column: 12, scope: !1726)
!1744 = !DILocation(line: 32, column: 35, scope: !1726)
!1745 = !DILocation(line: 32, column: 5, scope: !1726)
!1746 = !DILocation(line: 0, scope: !1726)
!1747 = !DILocation(line: 33, column: 1, scope: !1726)
!1748 = distinct !DISubprogram(name: "__ffssi2", scope: !117, file: !117, line: 22, type: !1097, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !116, retainedNodes: !35)
!1749 = !DILocation(line: 24, column: 11, scope: !1748)
!1750 = !DILocation(line: 24, column: 9, scope: !1748)
!1751 = !DILocation(line: 26, column: 9, scope: !1748)
!1752 = !DILocation(line: 28, column: 12, scope: !1748)
!1753 = !DILocation(line: 28, column: 29, scope: !1748)
!1754 = !DILocation(line: 28, column: 5, scope: !1748)
!1755 = !DILocation(line: 0, scope: !1748)
!1756 = !DILocation(line: 29, column: 1, scope: !1748)
!1757 = distinct !DISubprogram(name: "__lshrdi3", scope: !123, file: !123, line: 24, type: !1097, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !122, retainedNodes: !35)
!1758 = !DILocation(line: 29, column: 11, scope: !1757)
!1759 = !DILocation(line: 29, column: 15, scope: !1757)
!1760 = !DILocation(line: 30, column: 11, scope: !1757)
!1761 = !DILocation(line: 30, column: 9, scope: !1757)
!1762 = !DILocation(line: 32, column: 16, scope: !1757)
!1763 = !DILocation(line: 32, column: 18, scope: !1757)
!1764 = !DILocation(line: 32, column: 23, scope: !1757)
!1765 = !DILocation(line: 33, column: 30, scope: !1757)
!1766 = !DILocation(line: 33, column: 32, scope: !1757)
!1767 = !DILocation(line: 33, column: 43, scope: !1757)
!1768 = !DILocation(line: 33, column: 37, scope: !1757)
!1769 = !DILocation(line: 33, column: 18, scope: !1757)
!1770 = !DILocation(line: 33, column: 22, scope: !1757)
!1771 = !DILocation(line: 34, column: 5, scope: !1757)
!1772 = !DILocation(line: 37, column: 15, scope: !1757)
!1773 = !DILocation(line: 37, column: 13, scope: !1757)
!1774 = !DILocation(line: 38, column: 13, scope: !1757)
!1775 = !DILocation(line: 39, column: 32, scope: !1757)
!1776 = !DILocation(line: 39, column: 34, scope: !1757)
!1777 = !DILocation(line: 39, column: 39, scope: !1757)
!1778 = !DILocation(line: 39, column: 16, scope: !1757)
!1779 = !DILocation(line: 39, column: 18, scope: !1757)
!1780 = !DILocation(line: 39, column: 24, scope: !1757)
!1781 = !DILocation(line: 40, column: 31, scope: !1757)
!1782 = !DILocation(line: 40, column: 33, scope: !1757)
!1783 = !DILocation(line: 40, column: 55, scope: !1757)
!1784 = !DILocation(line: 40, column: 38, scope: !1757)
!1785 = !DILocation(line: 40, column: 72, scope: !1757)
!1786 = !DILocation(line: 40, column: 76, scope: !1757)
!1787 = !DILocation(line: 40, column: 61, scope: !1757)
!1788 = !DILocation(line: 40, column: 18, scope: !1757)
!1789 = !DILocation(line: 40, column: 22, scope: !1757)
!1790 = !DILocation(line: 42, column: 19, scope: !1757)
!1791 = !DILocation(line: 42, column: 5, scope: !1757)
!1792 = !DILocation(line: 0, scope: !1757)
!1793 = !DILocation(line: 43, column: 1, scope: !1757)
!1794 = distinct !DISubprogram(name: "__moddi3", scope: !127, file: !127, line: 20, type: !1097, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !126, retainedNodes: !35)
!1795 = !DILocation(line: 24, column: 17, scope: !1794)
!1796 = !DILocation(line: 25, column: 11, scope: !1794)
!1797 = !DILocation(line: 26, column: 12, scope: !1794)
!1798 = !DILocation(line: 26, column: 17, scope: !1794)
!1799 = !DILocation(line: 28, column: 5, scope: !1794)
!1800 = !DILocation(line: 29, column: 21, scope: !1794)
!1801 = !DILocation(line: 29, column: 23, scope: !1794)
!1802 = !DILocation(line: 29, column: 28, scope: !1794)
!1803 = !DILocation(line: 29, column: 5, scope: !1794)
!1804 = distinct !DISubprogram(name: "__modsi3", scope: !129, file: !129, line: 20, type: !1097, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !128, retainedNodes: !35)
!1805 = !DILocation(line: 22, column: 16, scope: !1804)
!1806 = !DILocation(line: 22, column: 31, scope: !1804)
!1807 = !DILocation(line: 22, column: 14, scope: !1804)
!1808 = !DILocation(line: 22, column: 5, scope: !1804)
!1809 = distinct !DISubprogram(name: "__mulvdi3", scope: !133, file: !133, line: 22, type: !1097, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !132, retainedNodes: !35)
!1810 = !DILocation(line: 27, column: 11, scope: !1809)
!1811 = !DILocation(line: 27, column: 9, scope: !1809)
!1812 = !DILocation(line: 29, column: 15, scope: !1809)
!1813 = !DILocation(line: 29, column: 20, scope: !1809)
!1814 = !DILocation(line: 29, column: 25, scope: !1809)
!1815 = !DILocation(line: 29, column: 13, scope: !1809)
!1816 = !DILocation(line: 30, column: 13, scope: !1809)
!1817 = !DILocation(line: 31, column: 9, scope: !1809)
!1818 = !DILocation(line: 33, column: 11, scope: !1809)
!1819 = !DILocation(line: 33, column: 9, scope: !1809)
!1820 = !DILocation(line: 35, column: 15, scope: !1809)
!1821 = !DILocation(line: 35, column: 20, scope: !1809)
!1822 = !DILocation(line: 35, column: 25, scope: !1809)
!1823 = !DILocation(line: 35, column: 13, scope: !1809)
!1824 = !DILocation(line: 36, column: 13, scope: !1809)
!1825 = !DILocation(line: 37, column: 9, scope: !1809)
!1826 = !DILocation(line: 39, column: 19, scope: !1809)
!1827 = !DILocation(line: 40, column: 23, scope: !1809)
!1828 = !DILocation(line: 40, column: 29, scope: !1809)
!1829 = !DILocation(line: 41, column: 19, scope: !1809)
!1830 = !DILocation(line: 42, column: 23, scope: !1809)
!1831 = !DILocation(line: 42, column: 29, scope: !1809)
!1832 = !DILocation(line: 43, column: 15, scope: !1809)
!1833 = !DILocation(line: 43, column: 19, scope: !1809)
!1834 = !DILocation(line: 43, column: 28, scope: !1809)
!1835 = !DILocation(line: 43, column: 9, scope: !1809)
!1836 = !DILocation(line: 44, column: 9, scope: !1809)
!1837 = !DILocation(line: 45, column: 12, scope: !1809)
!1838 = !DILocation(line: 45, column: 9, scope: !1809)
!1839 = !DILocation(line: 47, column: 25, scope: !1809)
!1840 = !DILocation(line: 47, column: 19, scope: !1809)
!1841 = !DILocation(line: 47, column: 13, scope: !1809)
!1842 = !DILocation(line: 48, column: 13, scope: !1809)
!1843 = !DILocation(line: 49, column: 5, scope: !1809)
!1844 = !DILocation(line: 52, column: 27, scope: !1809)
!1845 = !DILocation(line: 52, column: 25, scope: !1809)
!1846 = !DILocation(line: 52, column: 19, scope: !1809)
!1847 = !DILocation(line: 52, column: 13, scope: !1809)
!1848 = !DILocation(line: 53, column: 13, scope: !1809)
!1849 = !DILocation(line: 55, column: 5, scope: !1809)
!1850 = !DILocation(line: 0, scope: !1809)
!1851 = !DILocation(line: 56, column: 1, scope: !1809)
!1852 = distinct !DISubprogram(name: "__mulvsi3", scope: !135, file: !135, line: 22, type: !1097, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !134, retainedNodes: !35)
!1853 = !DILocation(line: 27, column: 11, scope: !1852)
!1854 = !DILocation(line: 27, column: 9, scope: !1852)
!1855 = !DILocation(line: 29, column: 15, scope: !1852)
!1856 = !DILocation(line: 29, column: 20, scope: !1852)
!1857 = !DILocation(line: 29, column: 25, scope: !1852)
!1858 = !DILocation(line: 29, column: 13, scope: !1852)
!1859 = !DILocation(line: 30, column: 13, scope: !1852)
!1860 = !DILocation(line: 31, column: 9, scope: !1852)
!1861 = !DILocation(line: 33, column: 11, scope: !1852)
!1862 = !DILocation(line: 33, column: 9, scope: !1852)
!1863 = !DILocation(line: 35, column: 15, scope: !1852)
!1864 = !DILocation(line: 35, column: 20, scope: !1852)
!1865 = !DILocation(line: 35, column: 25, scope: !1852)
!1866 = !DILocation(line: 35, column: 13, scope: !1852)
!1867 = !DILocation(line: 36, column: 13, scope: !1852)
!1868 = !DILocation(line: 37, column: 9, scope: !1852)
!1869 = !DILocation(line: 39, column: 19, scope: !1852)
!1870 = !DILocation(line: 40, column: 23, scope: !1852)
!1871 = !DILocation(line: 40, column: 29, scope: !1852)
!1872 = !DILocation(line: 41, column: 19, scope: !1852)
!1873 = !DILocation(line: 42, column: 23, scope: !1852)
!1874 = !DILocation(line: 42, column: 29, scope: !1852)
!1875 = !DILocation(line: 43, column: 15, scope: !1852)
!1876 = !DILocation(line: 43, column: 19, scope: !1852)
!1877 = !DILocation(line: 43, column: 28, scope: !1852)
!1878 = !DILocation(line: 43, column: 9, scope: !1852)
!1879 = !DILocation(line: 44, column: 9, scope: !1852)
!1880 = !DILocation(line: 45, column: 12, scope: !1852)
!1881 = !DILocation(line: 45, column: 9, scope: !1852)
!1882 = !DILocation(line: 47, column: 25, scope: !1852)
!1883 = !DILocation(line: 47, column: 19, scope: !1852)
!1884 = !DILocation(line: 47, column: 13, scope: !1852)
!1885 = !DILocation(line: 48, column: 13, scope: !1852)
!1886 = !DILocation(line: 49, column: 5, scope: !1852)
!1887 = !DILocation(line: 52, column: 27, scope: !1852)
!1888 = !DILocation(line: 52, column: 25, scope: !1852)
!1889 = !DILocation(line: 52, column: 19, scope: !1852)
!1890 = !DILocation(line: 52, column: 13, scope: !1852)
!1891 = !DILocation(line: 53, column: 13, scope: !1852)
!1892 = !DILocation(line: 55, column: 5, scope: !1852)
!1893 = !DILocation(line: 0, scope: !1852)
!1894 = !DILocation(line: 56, column: 1, scope: !1852)
!1895 = distinct !DISubprogram(name: "__paritydi2", scope: !139, file: !139, line: 20, type: !1097, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !138, retainedNodes: !35)
!1896 = !DILocation(line: 23, column: 7, scope: !1895)
!1897 = !DILocation(line: 23, column: 11, scope: !1895)
!1898 = !DILocation(line: 24, column: 26, scope: !1895)
!1899 = !DILocation(line: 24, column: 28, scope: !1895)
!1900 = !DILocation(line: 24, column: 39, scope: !1895)
!1901 = !DILocation(line: 24, column: 33, scope: !1895)
!1902 = !DILocation(line: 24, column: 12, scope: !1895)
!1903 = !DILocation(line: 24, column: 5, scope: !1895)
!1904 = distinct !DISubprogram(name: "__paritysi2", scope: !141, file: !141, line: 20, type: !1097, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !140, retainedNodes: !35)
!1905 = !DILocation(line: 23, column: 12, scope: !1904)
!1906 = !DILocation(line: 23, column: 7, scope: !1904)
!1907 = !DILocation(line: 24, column: 12, scope: !1904)
!1908 = !DILocation(line: 24, column: 7, scope: !1904)
!1909 = !DILocation(line: 25, column: 12, scope: !1904)
!1910 = !DILocation(line: 25, column: 7, scope: !1904)
!1911 = !DILocation(line: 26, column: 26, scope: !1904)
!1912 = !DILocation(line: 26, column: 20, scope: !1904)
!1913 = !DILocation(line: 26, column: 34, scope: !1904)
!1914 = !DILocation(line: 26, column: 5, scope: !1904)
!1915 = distinct !DISubprogram(name: "__popcountdi2", scope: !145, file: !145, line: 20, type: !1097, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !144, retainedNodes: !35)
!1916 = !DILocation(line: 23, column: 20, scope: !1915)
!1917 = !DILocation(line: 23, column: 26, scope: !1915)
!1918 = !DILocation(line: 23, column: 13, scope: !1915)
!1919 = !DILocation(line: 25, column: 15, scope: !1915)
!1920 = !DILocation(line: 25, column: 21, scope: !1915)
!1921 = !DILocation(line: 25, column: 52, scope: !1915)
!1922 = !DILocation(line: 25, column: 46, scope: !1915)
!1923 = !DILocation(line: 27, column: 20, scope: !1915)
!1924 = !DILocation(line: 27, column: 14, scope: !1915)
!1925 = !DILocation(line: 27, column: 27, scope: !1915)
!1926 = !DILocation(line: 29, column: 34, scope: !1915)
!1927 = !DILocation(line: 29, column: 28, scope: !1915)
!1928 = !DILocation(line: 29, column: 16, scope: !1915)
!1929 = !DILocation(line: 32, column: 16, scope: !1915)
!1930 = !DILocation(line: 32, column: 11, scope: !1915)
!1931 = !DILocation(line: 35, column: 20, scope: !1915)
!1932 = !DILocation(line: 35, column: 15, scope: !1915)
!1933 = !DILocation(line: 35, column: 27, scope: !1915)
!1934 = !DILocation(line: 35, column: 5, scope: !1915)
!1935 = distinct !DISubprogram(name: "__popcountsi2", scope: !147, file: !147, line: 20, type: !1097, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !146, retainedNodes: !35)
!1936 = !DILocation(line: 23, column: 17, scope: !1935)
!1937 = !DILocation(line: 23, column: 23, scope: !1935)
!1938 = !DILocation(line: 23, column: 11, scope: !1935)
!1939 = !DILocation(line: 25, column: 13, scope: !1935)
!1940 = !DILocation(line: 25, column: 19, scope: !1935)
!1941 = !DILocation(line: 25, column: 38, scope: !1935)
!1942 = !DILocation(line: 25, column: 33, scope: !1935)
!1943 = !DILocation(line: 27, column: 17, scope: !1935)
!1944 = !DILocation(line: 27, column: 12, scope: !1935)
!1945 = !DILocation(line: 27, column: 24, scope: !1935)
!1946 = !DILocation(line: 29, column: 17, scope: !1935)
!1947 = !DILocation(line: 29, column: 12, scope: !1935)
!1948 = !DILocation(line: 32, column: 20, scope: !1935)
!1949 = !DILocation(line: 32, column: 15, scope: !1935)
!1950 = !DILocation(line: 32, column: 27, scope: !1935)
!1951 = !DILocation(line: 32, column: 5, scope: !1935)
!1952 = distinct !DISubprogram(name: "__subvdi3", scope: !151, file: !151, line: 22, type: !1097, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !150, retainedNodes: !35)
!1953 = !DILocation(line: 24, column: 27, scope: !1952)
!1954 = !DILocation(line: 25, column: 11, scope: !1952)
!1955 = !DILocation(line: 25, column: 9, scope: !1952)
!1956 = !DILocation(line: 27, column: 15, scope: !1952)
!1957 = !DILocation(line: 27, column: 13, scope: !1952)
!1958 = !DILocation(line: 28, column: 13, scope: !1952)
!1959 = !DILocation(line: 29, column: 5, scope: !1952)
!1960 = !DILocation(line: 32, column: 15, scope: !1952)
!1961 = !DILocation(line: 32, column: 13, scope: !1952)
!1962 = !DILocation(line: 33, column: 13, scope: !1952)
!1963 = !DILocation(line: 35, column: 5, scope: !1952)
!1964 = distinct !DISubprogram(name: "__subvsi3", scope: !153, file: !153, line: 22, type: !1097, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !152, retainedNodes: !35)
!1965 = !DILocation(line: 24, column: 27, scope: !1964)
!1966 = !DILocation(line: 25, column: 11, scope: !1964)
!1967 = !DILocation(line: 25, column: 9, scope: !1964)
!1968 = !DILocation(line: 27, column: 15, scope: !1964)
!1969 = !DILocation(line: 27, column: 13, scope: !1964)
!1970 = !DILocation(line: 28, column: 13, scope: !1964)
!1971 = !DILocation(line: 29, column: 5, scope: !1964)
!1972 = !DILocation(line: 32, column: 15, scope: !1964)
!1973 = !DILocation(line: 32, column: 13, scope: !1964)
!1974 = !DILocation(line: 33, column: 13, scope: !1964)
!1975 = !DILocation(line: 35, column: 5, scope: !1964)
!1976 = distinct !DISubprogram(name: "__ucmpdi2", scope: !157, file: !157, line: 23, type: !1097, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !156, retainedNodes: !35)
!1977 = !DILocation(line: 26, column: 7, scope: !1976)
!1978 = !DILocation(line: 26, column: 11, scope: !1976)
!1979 = !DILocation(line: 28, column: 7, scope: !1976)
!1980 = !DILocation(line: 28, column: 11, scope: !1976)
!1981 = !DILocation(line: 29, column: 11, scope: !1976)
!1982 = !DILocation(line: 29, column: 13, scope: !1976)
!1983 = !DILocation(line: 29, column: 22, scope: !1976)
!1984 = !DILocation(line: 29, column: 24, scope: !1976)
!1985 = !DILocation(line: 29, column: 18, scope: !1976)
!1986 = !DILocation(line: 29, column: 9, scope: !1976)
!1987 = !DILocation(line: 30, column: 9, scope: !1976)
!1988 = !DILocation(line: 31, column: 11, scope: !1976)
!1989 = !DILocation(line: 31, column: 13, scope: !1976)
!1990 = !DILocation(line: 31, column: 22, scope: !1976)
!1991 = !DILocation(line: 31, column: 24, scope: !1976)
!1992 = !DILocation(line: 31, column: 18, scope: !1976)
!1993 = !DILocation(line: 31, column: 9, scope: !1976)
!1994 = !DILocation(line: 32, column: 9, scope: !1976)
!1995 = !DILocation(line: 33, column: 13, scope: !1976)
!1996 = !DILocation(line: 33, column: 23, scope: !1976)
!1997 = !DILocation(line: 33, column: 17, scope: !1976)
!1998 = !DILocation(line: 33, column: 9, scope: !1976)
!1999 = !DILocation(line: 34, column: 9, scope: !1976)
!2000 = !DILocation(line: 35, column: 13, scope: !1976)
!2001 = !DILocation(line: 35, column: 23, scope: !1976)
!2002 = !DILocation(line: 35, column: 17, scope: !1976)
!2003 = !DILocation(line: 35, column: 9, scope: !1976)
!2004 = !DILocation(line: 36, column: 9, scope: !1976)
!2005 = !DILocation(line: 37, column: 5, scope: !1976)
!2006 = !DILocation(line: 0, scope: !1976)
!2007 = !DILocation(line: 38, column: 1, scope: !1976)
!2008 = distinct !DISubprogram(name: "__aeabi_ulcmp", scope: !157, file: !157, line: 46, type: !1097, scopeLine: 47, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !156, retainedNodes: !35)
!2009 = !DILocation(line: 48, column: 9, scope: !2008)
!2010 = !DILocation(line: 48, column: 25, scope: !2008)
!2011 = !DILocation(line: 48, column: 2, scope: !2008)
!2012 = distinct !DISubprogram(name: "__udivdi3", scope: !161, file: !161, line: 20, type: !1097, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !160, retainedNodes: !35)
!2013 = !DILocation(line: 22, column: 12, scope: !2012)
!2014 = !DILocation(line: 22, column: 5, scope: !2012)
!2015 = distinct !DISubprogram(name: "__udivmodsi4", scope: !165, file: !165, line: 20, type: !1097, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !164, retainedNodes: !35)
!2016 = !DILocation(line: 22, column: 14, scope: !2015)
!2017 = !DILocation(line: 23, column: 16, scope: !2015)
!2018 = !DILocation(line: 23, column: 12, scope: !2015)
!2019 = !DILocation(line: 23, column: 8, scope: !2015)
!2020 = !DILocation(line: 24, column: 3, scope: !2015)
!2021 = distinct !DISubprogram(name: "__udivsi3", scope: !169, file: !169, line: 25, type: !1097, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !168, retainedNodes: !35)
!2022 = !DILocation(line: 32, column: 11, scope: !2021)
!2023 = !DILocation(line: 32, column: 9, scope: !2021)
!2024 = !DILocation(line: 33, column: 9, scope: !2021)
!2025 = !DILocation(line: 34, column: 11, scope: !2021)
!2026 = !DILocation(line: 34, column: 9, scope: !2021)
!2027 = !DILocation(line: 35, column: 9, scope: !2021)
!2028 = !DILocation(line: 36, column: 10, scope: !2021)
!2029 = !DILocation(line: 36, column: 29, scope: !2021)
!2030 = !DILocation(line: 36, column: 27, scope: !2021)
!2031 = !DILocation(line: 38, column: 12, scope: !2021)
!2032 = !DILocation(line: 38, column: 9, scope: !2021)
!2033 = !DILocation(line: 39, column: 9, scope: !2021)
!2034 = !DILocation(line: 40, column: 12, scope: !2021)
!2035 = !DILocation(line: 40, column: 9, scope: !2021)
!2036 = !DILocation(line: 41, column: 9, scope: !2021)
!2037 = !DILocation(line: 42, column: 5, scope: !2021)
!2038 = !DILocation(line: 45, column: 28, scope: !2021)
!2039 = !DILocation(line: 45, column: 11, scope: !2021)
!2040 = !DILocation(line: 46, column: 11, scope: !2021)
!2041 = !DILocation(line: 48, column: 5, scope: !2021)
!2042 = !DILocation(line: 0, scope: !2021)
!2043 = !DILocation(line: 48, column: 15, scope: !2021)
!2044 = !DILocation(line: 51, column: 22, scope: !2021)
!2045 = !DILocation(line: 60, column: 41, scope: !2021)
!2046 = !DILocation(line: 63, column: 5, scope: !2021)
!2047 = !DILocation(line: 62, column: 16, scope: !2021)
!2048 = !DILocation(line: 62, column: 11, scope: !2021)
!2049 = !DILocation(line: 61, column: 19, scope: !2021)
!2050 = !DILocation(line: 52, column: 16, scope: !2021)
!2051 = !DILocation(line: 52, column: 22, scope: !2021)
!2052 = !DILocation(line: 48, column: 20, scope: !2021)
!2053 = distinct !{!2053, !2041, !2046, !273}
!2054 = !DILocation(line: 64, column: 12, scope: !2021)
!2055 = !DILocation(line: 64, column: 18, scope: !2021)
!2056 = !DILocation(line: 65, column: 5, scope: !2021)
!2057 = !DILocation(line: 66, column: 1, scope: !2021)
!2058 = distinct !DISubprogram(name: "__umoddi3", scope: !173, file: !173, line: 20, type: !1097, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !172, retainedNodes: !35)
!2059 = !DILocation(line: 23, column: 5, scope: !2058)
!2060 = !DILocation(line: 24, column: 12, scope: !2058)
!2061 = !DILocation(line: 24, column: 5, scope: !2058)
!2062 = distinct !DISubprogram(name: "__umodsi3", scope: !175, file: !175, line: 20, type: !1097, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !174, retainedNodes: !35)
!2063 = !DILocation(line: 22, column: 16, scope: !2062)
!2064 = !DILocation(line: 22, column: 32, scope: !2062)
!2065 = !DILocation(line: 22, column: 14, scope: !2062)
!2066 = !DILocation(line: 22, column: 5, scope: !2062)
!2067 = distinct !DISubprogram(name: "memcpy", scope: !179, file: !179, line: 3, type: !1097, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !178, retainedNodes: !35)
!2068 = !DILocation(line: 8, column: 6, scope: !2067)
!2069 = !DILocation(line: 0, scope: !2067)
!2070 = !DILocation(line: 8, column: 19, scope: !2067)
!2071 = !DILocation(line: 8, column: 2, scope: !2067)
!2072 = !DILocation(line: 9, column: 21, scope: !2067)
!2073 = !DILocation(line: 9, column: 3, scope: !2067)
!2074 = !DILocation(line: 9, column: 19, scope: !2067)
!2075 = !DILocation(line: 10, column: 2, scope: !2067)
!2076 = !DILocation(line: 8, column: 26, scope: !2067)
!2077 = distinct !{!2077, !2071, !2075, !273}
!2078 = !DILocation(line: 11, column: 1, scope: !2067)
!2079 = distinct !DISubprogram(name: "memset", scope: !179, file: !179, line: 13, type: !1097, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !178, retainedNodes: !35)
!2080 = !DILocation(line: 17, column: 6, scope: !2079)
!2081 = !DILocation(line: 0, scope: !2079)
!2082 = !DILocation(line: 17, column: 19, scope: !2079)
!2083 = !DILocation(line: 17, column: 2, scope: !2079)
!2084 = !DILocation(line: 18, column: 13, scope: !2079)
!2085 = !DILocation(line: 18, column: 3, scope: !2079)
!2086 = !DILocation(line: 18, column: 11, scope: !2079)
!2087 = !DILocation(line: 19, column: 2, scope: !2079)
!2088 = !DILocation(line: 17, column: 26, scope: !2079)
!2089 = distinct !{!2089, !2083, !2087, !273}
!2090 = !DILocation(line: 20, column: 2, scope: !2079)
