; ModuleID = 'unoptimized.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv4t-unknown-unknown"

%union.dwords = type { i64 }
%struct.anon = type { i32, i32 }

@complex_updates_A = dso_local global [32 x float] zeroinitializer, align 4, !dbg !0
@complex_updates_B = dso_local global [32 x float] zeroinitializer, align 4, !dbg !5
@complex_updates_C = dso_local global [32 x float] zeroinitializer, align 4, !dbg !12
@complex_updates_D = dso_local global [32 x float] zeroinitializer, align 4, !dbg !14
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
define dso_local arm_aapcs_vfpcc void @complex_updates_init() #0 !dbg !139 {
entry:
  %x = alloca float, align 4
  call void @llvm.dbg.declare(metadata float* %x, metadata !143, metadata !DIExpression()), !dbg !145
  store volatile float 0.000000e+00, float* %x, align 4, !dbg !145
  call arm_aapcs_vfpcc void @complex_updates_pin_down(float* noundef getelementptr inbounds ([32 x float], [32 x float]* @complex_updates_A, i32 0, i32 0), float* noundef getelementptr inbounds ([32 x float], [32 x float]* @complex_updates_B, i32 0, i32 0), float* noundef getelementptr inbounds ([32 x float], [32 x float]* @complex_updates_C, i32 0, i32 0), float* noundef getelementptr inbounds ([32 x float], [32 x float]* @complex_updates_D, i32 0, i32 0)) #4, !dbg !146
  call void @llvm.dbg.value(metadata i32 0, metadata !147, metadata !DIExpression()), !dbg !149
  br label %for.cond, !dbg !150

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !dbg !152
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !147, metadata !DIExpression()), !dbg !149
  %exitcond.not = icmp eq i32 %i.0, 16, !dbg !153
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !155

for.body:                                         ; preds = %for.cond
  %0 = load volatile float, float* %x, align 4, !dbg !156
  %arrayidx = getelementptr inbounds [32 x float], [32 x float]* @complex_updates_A, i32 0, i32 %i.0, !dbg !158
  %1 = load float, float* %arrayidx, align 4, !dbg !159
  %add = fadd float %1, %0, !dbg !159
  store float %add, float* %arrayidx, align 4, !dbg !159
  %2 = load volatile float, float* %x, align 4, !dbg !160
  %arrayidx1 = getelementptr inbounds [32 x float], [32 x float]* @complex_updates_B, i32 0, i32 %i.0, !dbg !161
  %3 = load float, float* %arrayidx1, align 4, !dbg !162
  %add2 = fadd float %3, %2, !dbg !162
  store float %add2, float* %arrayidx1, align 4, !dbg !162
  %4 = load volatile float, float* %x, align 4, !dbg !163
  %arrayidx3 = getelementptr inbounds [32 x float], [32 x float]* @complex_updates_C, i32 0, i32 %i.0, !dbg !164
  %5 = load float, float* %arrayidx3, align 4, !dbg !165
  %add4 = fadd float %5, %4, !dbg !165
  store float %add4, float* %arrayidx3, align 4, !dbg !165
  %6 = load volatile float, float* %x, align 4, !dbg !166
  %arrayidx5 = getelementptr inbounds [32 x float], [32 x float]* @complex_updates_D, i32 0, i32 %i.0, !dbg !167
  %7 = load float, float* %arrayidx5, align 4, !dbg !168
  %add6 = fadd float %7, %6, !dbg !168
  store float %add6, float* %arrayidx5, align 4, !dbg !168
  br label %for.inc, !dbg !169

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.0, 1, !dbg !170
  call void @llvm.dbg.value(metadata i32 %inc, metadata !147, metadata !DIExpression()), !dbg !149
  br label %for.cond, !dbg !171, !llvm.loop !172

for.end:                                          ; preds = %for.cond
  ret void, !dbg !175
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @complex_updates_pin_down(float* noundef %pa, float* noundef %pb, float* noundef %pc, float* noundef %pd) #0 !dbg !176 {
entry:
  call void @llvm.dbg.value(metadata float* %pa, metadata !180, metadata !DIExpression()), !dbg !181
  call void @llvm.dbg.value(metadata float* %pb, metadata !182, metadata !DIExpression()), !dbg !181
  call void @llvm.dbg.value(metadata float* %pc, metadata !183, metadata !DIExpression()), !dbg !181
  call void @llvm.dbg.value(metadata float* %pd, metadata !184, metadata !DIExpression()), !dbg !181
  call void @llvm.dbg.value(metadata i32 0, metadata !185, metadata !DIExpression()), !dbg !181
  br label %for.cond, !dbg !186

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !dbg !188
  %pd.addr.0 = phi float* [ %pd, %entry ], [ %incdec.ptr7, %for.inc ]
  %pc.addr.0 = phi float* [ %pc, %entry ], [ %incdec.ptr5, %for.inc ]
  %pb.addr.0 = phi float* [ %pb, %entry ], [ %incdec.ptr3, %for.inc ]
  %pa.addr.0 = phi float* [ %pa, %entry ], [ %incdec.ptr1, %for.inc ]
  call void @llvm.dbg.value(metadata float* %pa.addr.0, metadata !180, metadata !DIExpression()), !dbg !181
  call void @llvm.dbg.value(metadata float* %pb.addr.0, metadata !182, metadata !DIExpression()), !dbg !181
  call void @llvm.dbg.value(metadata float* %pc.addr.0, metadata !183, metadata !DIExpression()), !dbg !181
  call void @llvm.dbg.value(metadata float* %pd.addr.0, metadata !184, metadata !DIExpression()), !dbg !181
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !185, metadata !DIExpression()), !dbg !181
  %exitcond.not = icmp eq i32 %i.0, 16, !dbg !189
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !191

for.body:                                         ; preds = %for.cond
  %incdec.ptr = getelementptr inbounds float, float* %pa.addr.0, i32 1, !dbg !192
  call void @llvm.dbg.value(metadata float* %incdec.ptr, metadata !180, metadata !DIExpression()), !dbg !181
  store float 2.000000e+00, float* %pa.addr.0, align 4, !dbg !194
  call void @llvm.dbg.value(metadata float* %incdec.ptr, metadata !180, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !181
  store float 1.000000e+00, float* %incdec.ptr, align 4, !dbg !195
  %incdec.ptr2 = getelementptr inbounds float, float* %pb.addr.0, i32 1, !dbg !196
  call void @llvm.dbg.value(metadata float* %incdec.ptr2, metadata !182, metadata !DIExpression()), !dbg !181
  store float 2.000000e+00, float* %pb.addr.0, align 4, !dbg !197
  call void @llvm.dbg.value(metadata float* %incdec.ptr2, metadata !182, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !181
  store float 5.000000e+00, float* %incdec.ptr2, align 4, !dbg !198
  %incdec.ptr4 = getelementptr inbounds float, float* %pc.addr.0, i32 1, !dbg !199
  call void @llvm.dbg.value(metadata float* %incdec.ptr4, metadata !183, metadata !DIExpression()), !dbg !181
  store float 3.000000e+00, float* %pc.addr.0, align 4, !dbg !200
  call void @llvm.dbg.value(metadata float* %incdec.ptr4, metadata !183, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !181
  store float 4.000000e+00, float* %incdec.ptr4, align 4, !dbg !201
  %incdec.ptr6 = getelementptr inbounds float, float* %pd.addr.0, i32 1, !dbg !202
  call void @llvm.dbg.value(metadata float* %incdec.ptr6, metadata !184, metadata !DIExpression()), !dbg !181
  store float 0.000000e+00, float* %pd.addr.0, align 4, !dbg !203
  call void @llvm.dbg.value(metadata float* %incdec.ptr6, metadata !184, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !181
  store float 0.000000e+00, float* %incdec.ptr6, align 4, !dbg !204
  br label %for.inc, !dbg !205

for.inc:                                          ; preds = %for.body
  %incdec.ptr7 = getelementptr inbounds float, float* %pd.addr.0, i32 2, !dbg !206
  call void @llvm.dbg.value(metadata float* %incdec.ptr7, metadata !184, metadata !DIExpression()), !dbg !181
  %incdec.ptr5 = getelementptr inbounds float, float* %pc.addr.0, i32 2, !dbg !207
  call void @llvm.dbg.value(metadata float* %incdec.ptr5, metadata !183, metadata !DIExpression()), !dbg !181
  %incdec.ptr3 = getelementptr inbounds float, float* %pb.addr.0, i32 2, !dbg !208
  call void @llvm.dbg.value(metadata float* %incdec.ptr3, metadata !182, metadata !DIExpression()), !dbg !181
  %incdec.ptr1 = getelementptr inbounds float, float* %pa.addr.0, i32 2, !dbg !209
  call void @llvm.dbg.value(metadata float* %incdec.ptr1, metadata !180, metadata !DIExpression()), !dbg !181
  %inc = add nuw nsw i32 %i.0, 1, !dbg !210
  call void @llvm.dbg.value(metadata i32 %inc, metadata !185, metadata !DIExpression()), !dbg !181
  br label %for.cond, !dbg !211, !llvm.loop !212

for.end:                                          ; preds = %for.cond
  ret void, !dbg !214
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @complex_updates_return() #0 !dbg !215 {
entry:
  call void @llvm.dbg.value(metadata float 0.000000e+00, metadata !218, metadata !DIExpression()), !dbg !219
  call void @llvm.dbg.value(metadata i32 0, metadata !220, metadata !DIExpression()), !dbg !219
  br label %for.cond, !dbg !221

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !dbg !223
  %check_sum.0 = phi float [ 0.000000e+00, %entry ], [ %add, %for.inc ], !dbg !219
  call void @llvm.dbg.value(metadata float %check_sum.0, metadata !218, metadata !DIExpression()), !dbg !219
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !220, metadata !DIExpression()), !dbg !219
  %exitcond.not = icmp eq i32 %i.0, 16, !dbg !224
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !226

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.value(metadata float undef, metadata !218, metadata !DIExpression()), !dbg !219
  br label %for.inc, !dbg !227

for.inc:                                          ; preds = %for.body
  %arrayidx = getelementptr inbounds [32 x float], [32 x float]* @complex_updates_D, i32 0, i32 %i.0, !dbg !228
  %0 = load float, float* %arrayidx, align 4, !dbg !228
  %add = fadd float %check_sum.0, %0, !dbg !229
  call void @llvm.dbg.value(metadata float %add, metadata !218, metadata !DIExpression()), !dbg !219
  %inc = add nuw nsw i32 %i.0, 1, !dbg !230
  call void @llvm.dbg.value(metadata i32 %inc, metadata !220, metadata !DIExpression()), !dbg !219
  br label %for.cond, !dbg !231, !llvm.loop !232

for.end:                                          ; preds = %for.cond
  %cmp1 = fcmp une float %check_sum.0, 1.440000e+02, !dbg !234
  %conv = zext i1 %cmp1 to i32, !dbg !234
  ret i32 %conv, !dbg !235
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @complex_updates_main() #0 !dbg !236 {
entry:
  call void @llvm.dbg.value(metadata float* getelementptr inbounds ([32 x float], [32 x float]* @complex_updates_A, i32 0, i32 0), metadata !237, metadata !DIExpression()), !dbg !238
  call void @llvm.dbg.value(metadata float* getelementptr inbounds ([32 x float], [32 x float]* @complex_updates_B, i32 0, i32 0), metadata !239, metadata !DIExpression()), !dbg !238
  call void @llvm.dbg.value(metadata float* getelementptr inbounds ([32 x float], [32 x float]* @complex_updates_C, i32 0, i32 0), metadata !240, metadata !DIExpression()), !dbg !238
  call void @llvm.dbg.value(metadata float* getelementptr inbounds ([32 x float], [32 x float]* @complex_updates_D, i32 0, i32 0), metadata !241, metadata !DIExpression()), !dbg !238
  call void @llvm.dbg.value(metadata i32 0, metadata !242, metadata !DIExpression()), !dbg !238
  br label %for.cond, !dbg !243

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !dbg !245
  %p_d.0 = phi float* [ getelementptr inbounds ([32 x float], [32 x float]* @complex_updates_D, i32 0, i32 0), %entry ], [ %incdec.ptr10, %for.inc ], !dbg !238
  %p_c.0 = phi float* [ getelementptr inbounds ([32 x float], [32 x float]* @complex_updates_C, i32 0, i32 0), %entry ], [ %incdec.ptr5, %for.inc ], !dbg !238
  %p_b.0 = phi float* [ getelementptr inbounds ([32 x float], [32 x float]* @complex_updates_B, i32 0, i32 0), %entry ], [ %incdec.ptr9, %for.inc ], !dbg !238
  %p_a.0 = phi float* [ getelementptr inbounds ([32 x float], [32 x float]* @complex_updates_A, i32 0, i32 0), %entry ], [ %incdec.ptr11, %for.inc ], !dbg !238
  call void @llvm.dbg.value(metadata float* %p_a.0, metadata !237, metadata !DIExpression()), !dbg !238
  call void @llvm.dbg.value(metadata float* %p_b.0, metadata !239, metadata !DIExpression()), !dbg !238
  call void @llvm.dbg.value(metadata float* %p_c.0, metadata !240, metadata !DIExpression()), !dbg !238
  call void @llvm.dbg.value(metadata float* %p_d.0, metadata !241, metadata !DIExpression()), !dbg !238
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !242, metadata !DIExpression()), !dbg !238
  %exitcond.not = icmp eq i32 %i.0, 16, !dbg !246
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !248

for.body:                                         ; preds = %for.cond
  %incdec.ptr = getelementptr inbounds float, float* %p_c.0, i32 1, !dbg !249
  call void @llvm.dbg.value(metadata float* %incdec.ptr, metadata !240, metadata !DIExpression()), !dbg !238
  %0 = load float, float* %p_c.0, align 4, !dbg !251
  %incdec.ptr1 = getelementptr inbounds float, float* %p_a.0, i32 1, !dbg !252
  call void @llvm.dbg.value(metadata float* %incdec.ptr1, metadata !237, metadata !DIExpression()), !dbg !238
  %1 = load float, float* %p_a.0, align 4, !dbg !253
  %incdec.ptr2 = getelementptr inbounds float, float* %p_b.0, i32 1, !dbg !254
  call void @llvm.dbg.value(metadata float* %incdec.ptr2, metadata !239, metadata !DIExpression()), !dbg !238
  %2 = load float, float* %p_b.0, align 4, !dbg !255
  %3 = call float @llvm.fmuladd.f32(float %1, float %2, float %0), !dbg !256
  store float %3, float* %p_d.0, align 4, !dbg !257
  %4 = load float, float* %incdec.ptr1, align 4, !dbg !258
  call void @llvm.dbg.value(metadata float* %p_b.0, metadata !239, metadata !DIExpression()), !dbg !238
  %5 = load float, float* %incdec.ptr2, align 4, !dbg !259
  %incdec.ptr4 = getelementptr inbounds float, float* %p_d.0, i32 1, !dbg !260
  call void @llvm.dbg.value(metadata float* %incdec.ptr4, metadata !241, metadata !DIExpression()), !dbg !238
  %neg = fneg float %4, !dbg !261
  %6 = call float @llvm.fmuladd.f32(float %neg, float %5, float %3), !dbg !261
  store float %6, float* %p_d.0, align 4, !dbg !261
  call void @llvm.dbg.value(metadata float* %incdec.ptr, metadata !240, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !238
  %7 = load float, float* %incdec.ptr, align 4, !dbg !262
  call void @llvm.dbg.value(metadata float* %p_a.0, metadata !237, metadata !DIExpression()), !dbg !238
  %8 = load float, float* %incdec.ptr1, align 4, !dbg !263
  %incdec.ptr7 = getelementptr inbounds float, float* %p_b.0, i32 1, !dbg !264
  call void @llvm.dbg.value(metadata float* %incdec.ptr7, metadata !239, metadata !DIExpression()), !dbg !238
  %9 = load float, float* %p_b.0, align 4, !dbg !265
  %10 = call float @llvm.fmuladd.f32(float %8, float %9, float %7), !dbg !266
  store float %10, float* %incdec.ptr4, align 4, !dbg !267
  call void @llvm.dbg.value(metadata float* %p_a.0, metadata !237, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !238
  %11 = load float, float* %p_a.0, align 4, !dbg !268
  call void @llvm.dbg.value(metadata float* %incdec.ptr7, metadata !239, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !238
  %12 = load float, float* %incdec.ptr7, align 4, !dbg !269
  call void @llvm.dbg.value(metadata float* %incdec.ptr4, metadata !241, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !238
  %13 = call float @llvm.fmuladd.f32(float %11, float %12, float %10), !dbg !270
  store float %13, float* %incdec.ptr4, align 4, !dbg !270
  br label %for.inc, !dbg !271

for.inc:                                          ; preds = %for.body
  %incdec.ptr10 = getelementptr inbounds float, float* %p_d.0, i32 2, !dbg !272
  call void @llvm.dbg.value(metadata float* %incdec.ptr10, metadata !241, metadata !DIExpression()), !dbg !238
  %incdec.ptr9 = getelementptr inbounds float, float* %p_b.0, i32 2, !dbg !273
  call void @llvm.dbg.value(metadata float* %incdec.ptr9, metadata !239, metadata !DIExpression()), !dbg !238
  call void @llvm.dbg.value(metadata float* %p_a.0, metadata !237, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !238
  %incdec.ptr5 = getelementptr inbounds float, float* %p_c.0, i32 2, !dbg !274
  call void @llvm.dbg.value(metadata float* %incdec.ptr5, metadata !240, metadata !DIExpression()), !dbg !238
  %inc = add nuw nsw i32 %i.0, 1, !dbg !275
  call void @llvm.dbg.value(metadata i32 %inc, metadata !242, metadata !DIExpression()), !dbg !238
  %incdec.ptr11 = getelementptr inbounds float, float* %p_a.0, i32 2, !dbg !276
  call void @llvm.dbg.value(metadata float* %incdec.ptr11, metadata !237, metadata !DIExpression()), !dbg !238
  br label %for.cond, !dbg !277, !llvm.loop !278

for.end:                                          ; preds = %for.cond
  ret void, !dbg !280
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.fmuladd.f32(float, float, float) #1

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @main() #0 !dbg !281 {
entry:
  call arm_aapcs_vfpcc void @complex_updates_init() #4, !dbg !282
  call arm_aapcs_vfpcc void @complex_updates_main() #4, !dbg !283
  %call = call arm_aapcs_vfpcc i32 @complex_updates_return() #4, !dbg !284
  ret i32 %call, !dbg !285
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__absvdi2(i64 noundef %a) #2 !dbg !286 {
entry:
  %cmp = icmp eq i64 %a, -9223372036854775808, !dbg !288
  br i1 %cmp, label %if.then, label %if.end, !dbg !289

if.then:                                          ; preds = %entry
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i32 noundef 26, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__absvdi2, i32 0, i32 0)) #5, !dbg !290
  unreachable, !dbg !290

if.end:                                           ; preds = %entry
  %0 = call i64 @llvm.abs.i64(i64 %a, i1 true), !dbg !291
  ret i64 %0, !dbg !292
}

; Function Attrs: noinline noreturn nounwind
define weak hidden arm_aapcscc void @compilerrt_abort_impl(i8* noundef %file, i32 noundef %line, i8* noundef %function) #3 !dbg !293 {
entry:
  unreachable, !dbg !294
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__absvsi2(i32 noundef %a) #2 !dbg !295 {
entry:
  %cmp = icmp eq i32 %a, -2147483648, !dbg !296
  br i1 %cmp, label %if.then, label %if.end, !dbg !297

if.then:                                          ; preds = %entry
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 noundef 26, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__absvsi2, i32 0, i32 0)) #5, !dbg !298
  unreachable, !dbg !298

if.end:                                           ; preds = %entry
  %0 = call i32 @llvm.abs.i32(i32 %a, i1 true), !dbg !299
  ret i32 %0, !dbg !300
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__addvdi3(i64 noundef %a, i64 noundef %b) #2 !dbg !301 {
entry:
  %add = add i64 %a, %b, !dbg !302
  %cmp = icmp sgt i64 %b, -1, !dbg !303
  br i1 %cmp, label %if.then, label %if.else, !dbg !304

if.then:                                          ; preds = %entry
  %cmp1 = icmp slt i64 %add, %a, !dbg !305
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !306

if.then2:                                         ; preds = %if.then
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i32 noundef 28, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__addvdi3, i32 0, i32 0)) #5, !dbg !307
  unreachable, !dbg !307

if.end:                                           ; preds = %if.then
  br label %if.end6, !dbg !308

if.else:                                          ; preds = %entry
  %cmp3.not = icmp slt i64 %add, %a, !dbg !309
  br i1 %cmp3.not, label %if.end5, label %if.then4, !dbg !310

if.then4:                                         ; preds = %if.else
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i32 noundef 33, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__addvdi3, i32 0, i32 0)) #5, !dbg !311
  unreachable, !dbg !311

if.end5:                                          ; preds = %if.else
  br label %if.end6

if.end6:                                          ; preds = %if.end5, %if.end
  ret i64 %add, !dbg !312
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__addvsi3(i32 noundef %a, i32 noundef %b) #2 !dbg !313 {
entry:
  %add = add i32 %a, %b, !dbg !314
  %cmp = icmp sgt i32 %b, -1, !dbg !315
  br i1 %cmp, label %if.then, label %if.else, !dbg !316

if.then:                                          ; preds = %entry
  %cmp1 = icmp slt i32 %add, %a, !dbg !317
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !318

if.then2:                                         ; preds = %if.then
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), i32 noundef 28, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__addvsi3, i32 0, i32 0)) #5, !dbg !319
  unreachable, !dbg !319

if.end:                                           ; preds = %if.then
  br label %if.end6, !dbg !320

if.else:                                          ; preds = %entry
  %cmp3.not = icmp slt i32 %add, %a, !dbg !321
  br i1 %cmp3.not, label %if.end5, label %if.then4, !dbg !322

if.then4:                                         ; preds = %if.else
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), i32 noundef 33, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__addvsi3, i32 0, i32 0)) #5, !dbg !323
  unreachable, !dbg !323

if.end5:                                          ; preds = %if.else
  br label %if.end6

if.end6:                                          ; preds = %if.end5, %if.end
  ret i32 %add, !dbg !324
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__ashldi3(i64 noundef %a, i32 noundef %b) #2 !dbg !325 {
entry:
  %input = alloca %union.dwords, align 8
  %result = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %input, i32 0, i32 0, !dbg !326
  store i64 %a, i64* %all, align 8, !dbg !327
  %and = and i32 %b, 32, !dbg !328
  %tobool.not = icmp eq i32 %and, 0, !dbg !328
  br i1 %tobool.not, label %if.else, label %if.then, !dbg !329

if.then:                                          ; preds = %entry
  %low = bitcast %union.dwords* %result to i32*, !dbg !330
  store i32 0, i32* %low, align 8, !dbg !331
  %low2 = bitcast %union.dwords* %input to i32*, !dbg !332
  %0 = load i32, i32* %low2, align 8, !dbg !332
  %sub = add nsw i32 %b, -32, !dbg !333
  %shl = shl i32 %0, %sub, !dbg !334
  %s3 = bitcast %union.dwords* %result to %struct.anon*, !dbg !335
  %high = getelementptr inbounds %struct.anon, %struct.anon* %s3, i32 0, i32 1, !dbg !336
  store i32 %shl, i32* %high, align 4, !dbg !337
  br label %if.end18, !dbg !338

if.else:                                          ; preds = %entry
  %cmp = icmp eq i32 %b, 0, !dbg !339
  br i1 %cmp, label %if.then4, label %if.end, !dbg !340

if.then4:                                         ; preds = %if.else
  br label %return, !dbg !341

if.end:                                           ; preds = %if.else
  %low6 = bitcast %union.dwords* %input to i32*, !dbg !342
  %1 = load i32, i32* %low6, align 8, !dbg !342
  %shl7 = shl i32 %1, %b, !dbg !343
  %low9 = bitcast %union.dwords* %result to i32*, !dbg !344
  store i32 %shl7, i32* %low9, align 8, !dbg !345
  %s10 = bitcast %union.dwords* %input to %struct.anon*, !dbg !346
  %high11 = getelementptr inbounds %struct.anon, %struct.anon* %s10, i32 0, i32 1, !dbg !347
  %2 = load i32, i32* %high11, align 4, !dbg !347
  %shl12 = shl i32 %2, %b, !dbg !348
  %low14 = bitcast %union.dwords* %input to i32*, !dbg !349
  %3 = load i32, i32* %low14, align 8, !dbg !349
  %sub15 = sub nsw i32 32, %b, !dbg !350
  %shr = lshr i32 %3, %sub15, !dbg !351
  %or = or i32 %shl12, %shr, !dbg !352
  %s16 = bitcast %union.dwords* %result to %struct.anon*, !dbg !353
  %high17 = getelementptr inbounds %struct.anon, %struct.anon* %s16, i32 0, i32 1, !dbg !354
  store i32 %or, i32* %high17, align 4, !dbg !355
  br label %if.end18

if.end18:                                         ; preds = %if.end, %if.then
  %all19 = getelementptr inbounds %union.dwords, %union.dwords* %result, i32 0, i32 0, !dbg !356
  %4 = load i64, i64* %all19, align 8, !dbg !356
  br label %return, !dbg !357

return:                                           ; preds = %if.end18, %if.then4
  %retval.0 = phi i64 [ %4, %if.end18 ], [ %a, %if.then4 ], !dbg !358
  ret i64 %retval.0, !dbg !359
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__ashrdi3(i64 noundef %a, i32 noundef %b) #2 !dbg !360 {
entry:
  %input = alloca %union.dwords, align 8
  %result = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %input, i32 0, i32 0, !dbg !361
  store i64 %a, i64* %all, align 8, !dbg !362
  %and = and i32 %b, 32, !dbg !363
  %tobool.not = icmp eq i32 %and, 0, !dbg !363
  br i1 %tobool.not, label %if.else, label %if.then, !dbg !364

if.then:                                          ; preds = %entry
  %s = bitcast %union.dwords* %input to %struct.anon*, !dbg !365
  %high = getelementptr inbounds %struct.anon, %struct.anon* %s, i32 0, i32 1, !dbg !366
  %0 = load i32, i32* %high, align 4, !dbg !366
  %shr = ashr i32 %0, 31, !dbg !367
  %s1 = bitcast %union.dwords* %result to %struct.anon*, !dbg !368
  %high2 = getelementptr inbounds %struct.anon, %struct.anon* %s1, i32 0, i32 1, !dbg !369
  store i32 %shr, i32* %high2, align 4, !dbg !370
  %s3 = bitcast %union.dwords* %input to %struct.anon*, !dbg !371
  %high4 = getelementptr inbounds %struct.anon, %struct.anon* %s3, i32 0, i32 1, !dbg !372
  %1 = load i32, i32* %high4, align 4, !dbg !372
  %sub = add nsw i32 %b, -32, !dbg !373
  %shr5 = ashr i32 %1, %sub, !dbg !374
  %low = bitcast %union.dwords* %result to i32*, !dbg !375
  store i32 %shr5, i32* %low, align 8, !dbg !376
  br label %if.end21, !dbg !377

if.else:                                          ; preds = %entry
  %cmp = icmp eq i32 %b, 0, !dbg !378
  br i1 %cmp, label %if.then7, label %if.end, !dbg !379

if.then7:                                         ; preds = %if.else
  br label %return, !dbg !380

if.end:                                           ; preds = %if.else
  %s8 = bitcast %union.dwords* %input to %struct.anon*, !dbg !381
  %high9 = getelementptr inbounds %struct.anon, %struct.anon* %s8, i32 0, i32 1, !dbg !382
  %2 = load i32, i32* %high9, align 4, !dbg !382
  %shr10 = ashr i32 %2, %b, !dbg !383
  %s11 = bitcast %union.dwords* %result to %struct.anon*, !dbg !384
  %high12 = getelementptr inbounds %struct.anon, %struct.anon* %s11, i32 0, i32 1, !dbg !385
  store i32 %shr10, i32* %high12, align 4, !dbg !386
  %s13 = bitcast %union.dwords* %input to %struct.anon*, !dbg !387
  %high14 = getelementptr inbounds %struct.anon, %struct.anon* %s13, i32 0, i32 1, !dbg !388
  %3 = load i32, i32* %high14, align 4, !dbg !388
  %sub15 = sub nsw i32 32, %b, !dbg !389
  %shl = shl i32 %3, %sub15, !dbg !390
  %low17 = bitcast %union.dwords* %input to i32*, !dbg !391
  %4 = load i32, i32* %low17, align 8, !dbg !391
  %shr18 = lshr i32 %4, %b, !dbg !392
  %or = or i32 %shl, %shr18, !dbg !393
  %low20 = bitcast %union.dwords* %result to i32*, !dbg !394
  store i32 %or, i32* %low20, align 8, !dbg !395
  br label %if.end21

if.end21:                                         ; preds = %if.end, %if.then
  %all22 = getelementptr inbounds %union.dwords, %union.dwords* %result, i32 0, i32 0, !dbg !396
  %5 = load i64, i64* %all22, align 8, !dbg !396
  br label %return, !dbg !397

return:                                           ; preds = %if.end21, %if.then7
  %retval.0 = phi i64 [ %5, %if.end21 ], [ %a, %if.then7 ], !dbg !398
  ret i64 %retval.0, !dbg !399
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__clzdi2(i64 noundef %a) #2 !dbg !400 {
entry:
  %x = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %x, i32 0, i32 0, !dbg !401
  store i64 %a, i64* %all, align 8, !dbg !402
  %s = bitcast %union.dwords* %x to %struct.anon*, !dbg !403
  %high = getelementptr inbounds %struct.anon, %struct.anon* %s, i32 0, i32 1, !dbg !404
  %0 = load i32, i32* %high, align 4, !dbg !404
  %cmp = icmp eq i32 %0, 0, !dbg !405
  %s1 = bitcast %union.dwords* %x to %struct.anon*, !dbg !406
  %high2 = getelementptr inbounds %struct.anon, %struct.anon* %s1, i32 0, i32 1, !dbg !407
  %1 = load i32, i32* %high2, align 4, !dbg !407
  %low = bitcast %union.dwords* %x to i32*, !dbg !408
  %2 = load i32, i32* %low, align 8, !dbg !408
  %3 = select i1 %cmp, i32 %2, i32 %1, !dbg !409
  %4 = call i32 @llvm.ctlz.i32(i32 %3, i1 false), !dbg !410, !range !411
  %and5 = select i1 %cmp, i32 32, i32 0, !dbg !412
  %add = add nuw nsw i32 %4, %and5, !dbg !413
  ret i32 %add, !dbg !414
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #1

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__clzsi2(i32 noundef %a) #2 !dbg !415 {
entry:
  %cmp = icmp ult i32 %a, 65536, !dbg !416
  %shl = select i1 %cmp, i32 16, i32 0, !dbg !417
  %sub = sub nuw nsw i32 16, %shl, !dbg !418
  %shr = lshr i32 %a, %sub, !dbg !419
  %and1 = and i32 %shr, 65280, !dbg !420
  %cmp2 = icmp eq i32 %and1, 0, !dbg !421
  %shl4 = select i1 %cmp2, i32 8, i32 0, !dbg !422
  %sub5 = sub nuw nsw i32 8, %shl4, !dbg !423
  %shr6 = lshr i32 %shr, %sub5, !dbg !424
  %add = or i32 %shl, %shl4, !dbg !425
  %and7 = and i32 %shr6, 240, !dbg !426
  %cmp8 = icmp eq i32 %and7, 0, !dbg !427
  %shl10 = select i1 %cmp8, i32 4, i32 0, !dbg !428
  %sub11 = sub nuw nsw i32 4, %shl10, !dbg !429
  %shr12 = lshr i32 %shr6, %sub11, !dbg !430
  %add13 = or i32 %add, %shl10, !dbg !431
  %and14 = and i32 %shr12, 12, !dbg !432
  %cmp15 = icmp eq i32 %and14, 0, !dbg !433
  %shl17 = select i1 %cmp15, i32 2, i32 0, !dbg !434
  %sub18 = sub nuw nsw i32 2, %shl17, !dbg !435
  %shr19 = lshr i32 %shr12, %sub18, !dbg !436
  %add20 = or i32 %add13, %shl17, !dbg !437
  %sub21 = sub i32 2, %shr19, !dbg !438
  %and22 = lshr i32 %shr19, 1, !dbg !439
  %0 = or i32 %and22, -2, !dbg !439
  %.neg = add nsw i32 %0, 1, !dbg !439
  %and26 = and i32 %sub21, %.neg, !dbg !440
  %add27 = add i32 %add20, %and26, !dbg !441
  ret i32 %add27, !dbg !442
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__cmpdi2(i64 noundef %a, i64 noundef %b) #2 !dbg !443 {
entry:
  %x = alloca %union.dwords, align 8
  %y = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %x, i32 0, i32 0, !dbg !444
  store i64 %a, i64* %all, align 8, !dbg !445
  %all1 = getelementptr inbounds %union.dwords, %union.dwords* %y, i32 0, i32 0, !dbg !446
  store i64 %b, i64* %all1, align 8, !dbg !447
  %s = bitcast %union.dwords* %x to %struct.anon*, !dbg !448
  %high = getelementptr inbounds %struct.anon, %struct.anon* %s, i32 0, i32 1, !dbg !449
  %0 = load i32, i32* %high, align 4, !dbg !449
  %s2 = bitcast %union.dwords* %y to %struct.anon*, !dbg !450
  %high3 = getelementptr inbounds %struct.anon, %struct.anon* %s2, i32 0, i32 1, !dbg !451
  %1 = load i32, i32* %high3, align 4, !dbg !451
  %cmp = icmp slt i32 %0, %1, !dbg !452
  br i1 %cmp, label %if.then, label %if.end, !dbg !453

if.then:                                          ; preds = %entry
  br label %return, !dbg !454

if.end:                                           ; preds = %entry
  %s4 = bitcast %union.dwords* %x to %struct.anon*, !dbg !455
  %high5 = getelementptr inbounds %struct.anon, %struct.anon* %s4, i32 0, i32 1, !dbg !456
  %2 = load i32, i32* %high5, align 4, !dbg !456
  %s6 = bitcast %union.dwords* %y to %struct.anon*, !dbg !457
  %high7 = getelementptr inbounds %struct.anon, %struct.anon* %s6, i32 0, i32 1, !dbg !458
  %3 = load i32, i32* %high7, align 4, !dbg !458
  %cmp8 = icmp sgt i32 %2, %3, !dbg !459
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !460

if.then9:                                         ; preds = %if.end
  br label %return, !dbg !461

if.end10:                                         ; preds = %if.end
  %low = bitcast %union.dwords* %x to i32*, !dbg !462
  %4 = load i32, i32* %low, align 8, !dbg !462
  %low13 = bitcast %union.dwords* %y to i32*, !dbg !463
  %5 = load i32, i32* %low13, align 8, !dbg !463
  %cmp14 = icmp ult i32 %4, %5, !dbg !464
  br i1 %cmp14, label %if.then15, label %if.end16, !dbg !465

if.then15:                                        ; preds = %if.end10
  br label %return, !dbg !466

if.end16:                                         ; preds = %if.end10
  %low18 = bitcast %union.dwords* %x to i32*, !dbg !467
  %6 = load i32, i32* %low18, align 8, !dbg !467
  %low20 = bitcast %union.dwords* %y to i32*, !dbg !468
  %7 = load i32, i32* %low20, align 8, !dbg !468
  %cmp21 = icmp ugt i32 %6, %7, !dbg !469
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !470

if.then22:                                        ; preds = %if.end16
  br label %return, !dbg !471

if.end23:                                         ; preds = %if.end16
  br label %return, !dbg !472

return:                                           ; preds = %if.end23, %if.then22, %if.then15, %if.then9, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 2, %if.then9 ], [ 0, %if.then15 ], [ 2, %if.then22 ], [ 1, %if.end23 ], !dbg !473
  ret i32 %retval.0, !dbg !474
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__aeabi_lcmp(i64 noundef %a, i64 noundef %b) #2 !dbg !475 {
entry:
  %call = call arm_aapcscc i32 @__cmpdi2(i64 noundef %a, i64 noundef %b) #4, !dbg !476
  %sub = add nsw i32 %call, -1, !dbg !477
  ret i32 %sub, !dbg !478
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__ctzdi2(i64 noundef %a) #2 !dbg !479 {
entry:
  %x = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %x, i32 0, i32 0, !dbg !480
  store i64 %a, i64* %all, align 8, !dbg !481
  %low = bitcast %union.dwords* %x to i32*, !dbg !482
  %0 = load i32, i32* %low, align 8, !dbg !482
  %cmp = icmp eq i32 %0, 0, !dbg !483
  %s1 = bitcast %union.dwords* %x to %struct.anon*, !dbg !484
  %high = getelementptr inbounds %struct.anon, %struct.anon* %s1, i32 0, i32 1, !dbg !485
  %1 = load i32, i32* %high, align 4, !dbg !485
  %2 = select i1 %cmp, i32 %1, i32 %0, !dbg !486
  %3 = call i32 @llvm.cttz.i32(i32 %2, i1 false), !dbg !487, !range !411
  %and5 = select i1 %cmp, i32 32, i32 0, !dbg !488
  %add = add nuw nsw i32 %3, %and5, !dbg !489
  ret i32 %add, !dbg !490
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #1

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__ctzsi2(i32 noundef %a) #2 !dbg !491 {
entry:
  %and = and i32 %a, 65535, !dbg !492
  %cmp = icmp eq i32 %and, 0, !dbg !493
  %shl = select i1 %cmp, i32 16, i32 0, !dbg !494
  %shr = lshr i32 %a, %shl, !dbg !495
  %and1 = and i32 %shr, 255, !dbg !496
  %cmp2 = icmp eq i32 %and1, 0, !dbg !497
  %shl4 = select i1 %cmp2, i32 8, i32 0, !dbg !498
  %shr5 = lshr i32 %shr, %shl4, !dbg !499
  %add = or i32 %shl, %shl4, !dbg !500
  %and6 = and i32 %shr5, 15, !dbg !501
  %cmp7 = icmp eq i32 %and6, 0, !dbg !502
  %shl9 = select i1 %cmp7, i32 4, i32 0, !dbg !503
  %shr10 = lshr i32 %shr5, %shl9, !dbg !504
  %add11 = or i32 %add, %shl9, !dbg !505
  %and12 = and i32 %shr10, 3, !dbg !506
  %cmp13 = icmp eq i32 %and12, 0, !dbg !507
  %shl15 = select i1 %cmp13, i32 2, i32 0, !dbg !508
  %shr16 = lshr i32 %shr10, %shl15, !dbg !509
  %add18 = or i32 %add11, %shl15, !dbg !510
  %and17 = lshr i32 %shr16, 1, !dbg !511
  %shr19 = and i32 %and17, 1, !dbg !511
  %sub = sub nuw nsw i32 2, %shr19, !dbg !512
  %0 = or i32 %shr16, -2, !dbg !513
  %.neg = add nsw i32 %0, 1, !dbg !513
  %and24 = and i32 %sub, %.neg, !dbg !514
  %add25 = add nuw nsw i32 %add18, %and24, !dbg !515
  ret i32 %add25, !dbg !516
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__divdi3(i64 noundef %a, i64 noundef %b) #2 !dbg !517 {
entry:
  %shr = ashr i64 %a, 63, !dbg !518
  %shr1 = ashr i64 %b, 63, !dbg !519
  %xor = xor i64 %shr, %a, !dbg !520
  %sub = sub nsw i64 %xor, %shr, !dbg !521
  %xor2 = xor i64 %shr1, %b, !dbg !522
  %sub3 = sub nsw i64 %xor2, %shr1, !dbg !523
  %xor4 = xor i64 %shr, %shr1, !dbg !524
  %call = call arm_aapcscc i64 @__udivmoddi4(i64 noundef %sub, i64 noundef %sub3, i64* noundef null) #4, !dbg !525
  %xor5 = xor i64 %call, %xor4, !dbg !526
  %sub6 = sub i64 %xor5, %xor4, !dbg !527
  ret i64 %sub6, !dbg !528
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__udivmoddi4(i64 noundef %a, i64 noundef %b, i64* noundef %rem) #2 !dbg !529 {
entry:
  %n = alloca %union.dwords, align 8
  %d = alloca %union.dwords, align 8
  %q = alloca %union.dwords, align 8
  %r = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %n, i32 0, i32 0, !dbg !530
  store i64 %a, i64* %all, align 8, !dbg !531
  %all1 = getelementptr inbounds %union.dwords, %union.dwords* %d, i32 0, i32 0, !dbg !532
  store i64 %b, i64* %all1, align 8, !dbg !533
  %s = bitcast %union.dwords* %n to %struct.anon*, !dbg !534
  %high = getelementptr inbounds %struct.anon, %struct.anon* %s, i32 0, i32 1, !dbg !535
  %0 = load i32, i32* %high, align 4, !dbg !535
  %cmp = icmp eq i32 %0, 0, !dbg !536
  br i1 %cmp, label %if.then, label %if.end23, !dbg !537

if.then:                                          ; preds = %entry
  %s2 = bitcast %union.dwords* %d to %struct.anon*, !dbg !538
  %high3 = getelementptr inbounds %struct.anon, %struct.anon* %s2, i32 0, i32 1, !dbg !539
  %1 = load i32, i32* %high3, align 4, !dbg !539
  %cmp4 = icmp eq i32 %1, 0, !dbg !540
  br i1 %cmp4, label %if.then5, label %if.end16, !dbg !541

if.then5:                                         ; preds = %if.then
  %tobool.not = icmp eq i64* %rem, null, !dbg !542
  br i1 %tobool.not, label %if.end, label %if.then6, !dbg !542

if.then6:                                         ; preds = %if.then5
  %low = bitcast %union.dwords* %n to i32*, !dbg !543
  %2 = load i32, i32* %low, align 8, !dbg !543
  %low9 = bitcast %union.dwords* %d to i32*, !dbg !544
  %3 = load i32, i32* %low9, align 8, !dbg !544
  %rem10 = urem i32 %2, %3, !dbg !545
  %conv = zext i32 %rem10 to i64, !dbg !546
  store i64 %conv, i64* %rem, align 8, !dbg !547
  br label %if.end, !dbg !548

if.end:                                           ; preds = %if.then6, %if.then5
  %low12 = bitcast %union.dwords* %n to i32*, !dbg !549
  %4 = load i32, i32* %low12, align 8, !dbg !549
  %low14 = bitcast %union.dwords* %d to i32*, !dbg !550
  %5 = load i32, i32* %low14, align 8, !dbg !550
  %div = udiv i32 %4, %5, !dbg !551
  %conv15 = zext i32 %div to i64, !dbg !552
  br label %return, !dbg !553

if.end16:                                         ; preds = %if.then
  %tobool17.not = icmp eq i64* %rem, null, !dbg !554
  br i1 %tobool17.not, label %if.end22, label %if.then18, !dbg !554

if.then18:                                        ; preds = %if.end16
  %low20 = bitcast %union.dwords* %n to i32*, !dbg !555
  %6 = load i32, i32* %low20, align 8, !dbg !555
  %conv21 = zext i32 %6 to i64, !dbg !556
  store i64 %conv21, i64* %rem, align 8, !dbg !557
  br label %if.end22, !dbg !558

if.end22:                                         ; preds = %if.then18, %if.end16
  br label %return, !dbg !559

if.end23:                                         ; preds = %entry
  %low25 = bitcast %union.dwords* %d to i32*, !dbg !560
  %7 = load i32, i32* %low25, align 8, !dbg !560
  %cmp26 = icmp eq i32 %7, 0, !dbg !561
  br i1 %cmp26, label %if.then28, label %if.else, !dbg !562

if.then28:                                        ; preds = %if.end23
  %s29 = bitcast %union.dwords* %d to %struct.anon*, !dbg !563
  %high30 = getelementptr inbounds %struct.anon, %struct.anon* %s29, i32 0, i32 1, !dbg !564
  %8 = load i32, i32* %high30, align 4, !dbg !564
  %cmp31 = icmp eq i32 %8, 0, !dbg !565
  br i1 %cmp31, label %if.then33, label %if.end49, !dbg !566

if.then33:                                        ; preds = %if.then28
  %tobool34.not = icmp eq i64* %rem, null, !dbg !567
  br i1 %tobool34.not, label %if.end42, label %if.then35, !dbg !567

if.then35:                                        ; preds = %if.then33
  %s36 = bitcast %union.dwords* %n to %struct.anon*, !dbg !568
  %high37 = getelementptr inbounds %struct.anon, %struct.anon* %s36, i32 0, i32 1, !dbg !569
  %9 = load i32, i32* %high37, align 4, !dbg !569
  %low39 = bitcast %union.dwords* %d to i32*, !dbg !570
  %10 = load i32, i32* %low39, align 8, !dbg !570
  %rem40 = urem i32 %9, %10, !dbg !571
  %conv41 = zext i32 %rem40 to i64, !dbg !572
  store i64 %conv41, i64* %rem, align 8, !dbg !573
  br label %if.end42, !dbg !574

if.end42:                                         ; preds = %if.then35, %if.then33
  %s43 = bitcast %union.dwords* %n to %struct.anon*, !dbg !575
  %high44 = getelementptr inbounds %struct.anon, %struct.anon* %s43, i32 0, i32 1, !dbg !576
  %11 = load i32, i32* %high44, align 4, !dbg !576
  %low46 = bitcast %union.dwords* %d to i32*, !dbg !577
  %12 = load i32, i32* %low46, align 8, !dbg !577
  %div47 = udiv i32 %11, %12, !dbg !578
  %conv48 = zext i32 %div47 to i64, !dbg !579
  br label %return, !dbg !580

if.end49:                                         ; preds = %if.then28
  %low51 = bitcast %union.dwords* %n to i32*, !dbg !581
  %13 = load i32, i32* %low51, align 8, !dbg !581
  %cmp52 = icmp eq i32 %13, 0, !dbg !582
  br i1 %cmp52, label %if.then54, label %if.end74, !dbg !583

if.then54:                                        ; preds = %if.end49
  %tobool55.not = icmp eq i64* %rem, null, !dbg !584
  br i1 %tobool55.not, label %if.end67, label %if.then56, !dbg !584

if.then56:                                        ; preds = %if.then54
  %s57 = bitcast %union.dwords* %n to %struct.anon*, !dbg !585
  %high58 = getelementptr inbounds %struct.anon, %struct.anon* %s57, i32 0, i32 1, !dbg !586
  %14 = load i32, i32* %high58, align 4, !dbg !586
  %s59 = bitcast %union.dwords* %d to %struct.anon*, !dbg !587
  %high60 = getelementptr inbounds %struct.anon, %struct.anon* %s59, i32 0, i32 1, !dbg !588
  %15 = load i32, i32* %high60, align 4, !dbg !588
  %rem61 = urem i32 %14, %15, !dbg !589
  %s62 = bitcast %union.dwords* %r to %struct.anon*, !dbg !590
  %high63 = getelementptr inbounds %struct.anon, %struct.anon* %s62, i32 0, i32 1, !dbg !591
  store i32 %rem61, i32* %high63, align 4, !dbg !592
  %low65 = bitcast %union.dwords* %r to i32*, !dbg !593
  store i32 0, i32* %low65, align 8, !dbg !594
  %all66 = getelementptr inbounds %union.dwords, %union.dwords* %r, i32 0, i32 0, !dbg !595
  %16 = load i64, i64* %all66, align 8, !dbg !595
  store i64 %16, i64* %rem, align 8, !dbg !596
  br label %if.end67, !dbg !597

if.end67:                                         ; preds = %if.then56, %if.then54
  %s68 = bitcast %union.dwords* %n to %struct.anon*, !dbg !598
  %high69 = getelementptr inbounds %struct.anon, %struct.anon* %s68, i32 0, i32 1, !dbg !599
  %17 = load i32, i32* %high69, align 4, !dbg !599
  %s70 = bitcast %union.dwords* %d to %struct.anon*, !dbg !600
  %high71 = getelementptr inbounds %struct.anon, %struct.anon* %s70, i32 0, i32 1, !dbg !601
  %18 = load i32, i32* %high71, align 4, !dbg !601
  %div72 = udiv i32 %17, %18, !dbg !602
  %conv73 = zext i32 %div72 to i64, !dbg !603
  br label %return, !dbg !604

if.end74:                                         ; preds = %if.end49
  %s75 = bitcast %union.dwords* %d to %struct.anon*, !dbg !605
  %high76 = getelementptr inbounds %struct.anon, %struct.anon* %s75, i32 0, i32 1, !dbg !606
  %19 = load i32, i32* %high76, align 4, !dbg !606
  %s77 = bitcast %union.dwords* %d to %struct.anon*, !dbg !607
  %high78 = getelementptr inbounds %struct.anon, %struct.anon* %s77, i32 0, i32 1, !dbg !608
  %20 = load i32, i32* %high78, align 4, !dbg !608
  %sub = add i32 %20, -1, !dbg !609
  %and = and i32 %19, %sub, !dbg !610
  %cmp79 = icmp eq i32 %and, 0, !dbg !611
  br i1 %cmp79, label %if.then81, label %if.end103, !dbg !612

if.then81:                                        ; preds = %if.end74
  %tobool82.not = icmp eq i64* %rem, null, !dbg !613
  br i1 %tobool82.not, label %if.end97, label %if.then83, !dbg !613

if.then83:                                        ; preds = %if.then81
  %low85 = bitcast %union.dwords* %n to i32*, !dbg !614
  %21 = load i32, i32* %low85, align 8, !dbg !614
  %low87 = bitcast %union.dwords* %r to i32*, !dbg !615
  store i32 %21, i32* %low87, align 8, !dbg !616
  %s88 = bitcast %union.dwords* %n to %struct.anon*, !dbg !617
  %high89 = getelementptr inbounds %struct.anon, %struct.anon* %s88, i32 0, i32 1, !dbg !618
  %22 = load i32, i32* %high89, align 4, !dbg !618
  %s90 = bitcast %union.dwords* %d to %struct.anon*, !dbg !619
  %high91 = getelementptr inbounds %struct.anon, %struct.anon* %s90, i32 0, i32 1, !dbg !620
  %23 = load i32, i32* %high91, align 4, !dbg !620
  %sub92 = add i32 %23, -1, !dbg !621
  %and93 = and i32 %22, %sub92, !dbg !622
  %s94 = bitcast %union.dwords* %r to %struct.anon*, !dbg !623
  %high95 = getelementptr inbounds %struct.anon, %struct.anon* %s94, i32 0, i32 1, !dbg !624
  store i32 %and93, i32* %high95, align 4, !dbg !625
  %all96 = getelementptr inbounds %union.dwords, %union.dwords* %r, i32 0, i32 0, !dbg !626
  %24 = load i64, i64* %all96, align 8, !dbg !626
  store i64 %24, i64* %rem, align 8, !dbg !627
  br label %if.end97, !dbg !628

if.end97:                                         ; preds = %if.then83, %if.then81
  %s98 = bitcast %union.dwords* %n to %struct.anon*, !dbg !629
  %high99 = getelementptr inbounds %struct.anon, %struct.anon* %s98, i32 0, i32 1, !dbg !630
  %25 = load i32, i32* %high99, align 4, !dbg !630
  %s100 = bitcast %union.dwords* %d to %struct.anon*, !dbg !631
  %high101 = getelementptr inbounds %struct.anon, %struct.anon* %s100, i32 0, i32 1, !dbg !632
  %26 = load i32, i32* %high101, align 4, !dbg !632
  %27 = call i32 @llvm.cttz.i32(i32 %26, i1 false), !dbg !633, !range !411
  %shr = lshr i32 %25, %27, !dbg !634
  %conv102 = zext i32 %shr to i64, !dbg !635
  br label %return, !dbg !636

if.end103:                                        ; preds = %if.end74
  %s104 = bitcast %union.dwords* %d to %struct.anon*, !dbg !637
  %high105 = getelementptr inbounds %struct.anon, %struct.anon* %s104, i32 0, i32 1, !dbg !638
  %28 = load i32, i32* %high105, align 4, !dbg !638
  %29 = call i32 @llvm.ctlz.i32(i32 %28, i1 false), !dbg !639, !range !411
  %s106 = bitcast %union.dwords* %n to %struct.anon*, !dbg !640
  %high107 = getelementptr inbounds %struct.anon, %struct.anon* %s106, i32 0, i32 1, !dbg !641
  %30 = load i32, i32* %high107, align 4, !dbg !641
  %31 = call i32 @llvm.ctlz.i32(i32 %30, i1 false), !dbg !642, !range !411
  %sub108 = sub nsw i32 %29, %31, !dbg !643
  %cmp109 = icmp ugt i32 %sub108, 30, !dbg !644
  br i1 %cmp109, label %if.then111, label %if.end116, !dbg !645

if.then111:                                       ; preds = %if.end103
  %tobool112.not = icmp eq i64* %rem, null, !dbg !646
  br i1 %tobool112.not, label %if.end115, label %if.then113, !dbg !646

if.then113:                                       ; preds = %if.then111
  %all114 = getelementptr inbounds %union.dwords, %union.dwords* %n, i32 0, i32 0, !dbg !647
  %32 = load i64, i64* %all114, align 8, !dbg !647
  store i64 %32, i64* %rem, align 8, !dbg !648
  br label %if.end115, !dbg !649

if.end115:                                        ; preds = %if.then113, %if.then111
  br label %return, !dbg !650

if.end116:                                        ; preds = %if.end103
  %inc = add nsw i32 %sub108, 1, !dbg !651
  %low118 = bitcast %union.dwords* %q to i32*, !dbg !652
  store i32 0, i32* %low118, align 8, !dbg !653
  %low120 = bitcast %union.dwords* %n to i32*, !dbg !654
  %33 = load i32, i32* %low120, align 8, !dbg !654
  %sub121 = sub nsw i32 31, %sub108, !dbg !655
  %shl = shl i32 %33, %sub121, !dbg !656
  %s122 = bitcast %union.dwords* %q to %struct.anon*, !dbg !657
  %high123 = getelementptr inbounds %struct.anon, %struct.anon* %s122, i32 0, i32 1, !dbg !658
  store i32 %shl, i32* %high123, align 4, !dbg !659
  %s124 = bitcast %union.dwords* %n to %struct.anon*, !dbg !660
  %high125 = getelementptr inbounds %struct.anon, %struct.anon* %s124, i32 0, i32 1, !dbg !661
  %34 = load i32, i32* %high125, align 4, !dbg !661
  %shr126 = lshr i32 %34, %inc, !dbg !662
  %s127 = bitcast %union.dwords* %r to %struct.anon*, !dbg !663
  %high128 = getelementptr inbounds %struct.anon, %struct.anon* %s127, i32 0, i32 1, !dbg !664
  store i32 %shr126, i32* %high128, align 4, !dbg !665
  %s129 = bitcast %union.dwords* %n to %struct.anon*, !dbg !666
  %high130 = getelementptr inbounds %struct.anon, %struct.anon* %s129, i32 0, i32 1, !dbg !667
  %35 = load i32, i32* %high130, align 4, !dbg !667
  %sub131 = sub nsw i32 31, %sub108, !dbg !668
  %shl132 = shl i32 %35, %sub131, !dbg !669
  %low134 = bitcast %union.dwords* %n to i32*, !dbg !670
  %36 = load i32, i32* %low134, align 8, !dbg !670
  %shr135 = lshr i32 %36, %inc, !dbg !671
  %or = or i32 %shl132, %shr135, !dbg !672
  %low137 = bitcast %union.dwords* %r to i32*, !dbg !673
  store i32 %or, i32* %low137, align 8, !dbg !674
  br label %if.end317, !dbg !675

if.else:                                          ; preds = %if.end23
  %s138 = bitcast %union.dwords* %d to %struct.anon*, !dbg !676
  %high139 = getelementptr inbounds %struct.anon, %struct.anon* %s138, i32 0, i32 1, !dbg !677
  %37 = load i32, i32* %high139, align 4, !dbg !677
  %cmp140 = icmp eq i32 %37, 0, !dbg !678
  br i1 %cmp140, label %if.then142, label %if.else263, !dbg !679

if.then142:                                       ; preds = %if.else
  %low144 = bitcast %union.dwords* %d to i32*, !dbg !680
  %38 = load i32, i32* %low144, align 8, !dbg !680
  %39 = call i32 @llvm.ctpop.i32(i32 %38), !dbg !681, !range !411
  %cmp149 = icmp ult i32 %39, 2, !dbg !681
  br i1 %cmp149, label %if.then151, label %if.end187, !dbg !682

if.then151:                                       ; preds = %if.then142
  %tobool152.not = icmp eq i64* %rem, null, !dbg !683
  br i1 %tobool152.not, label %if.end161, label %if.then153, !dbg !683

if.then153:                                       ; preds = %if.then151
  %low155 = bitcast %union.dwords* %n to i32*, !dbg !684
  %40 = load i32, i32* %low155, align 8, !dbg !684
  %low157 = bitcast %union.dwords* %d to i32*, !dbg !685
  %41 = load i32, i32* %low157, align 8, !dbg !685
  %sub158 = add i32 %41, -1, !dbg !686
  %and159 = and i32 %40, %sub158, !dbg !687
  %conv160 = zext i32 %and159 to i64, !dbg !688
  store i64 %conv160, i64* %rem, align 8, !dbg !689
  br label %if.end161, !dbg !690

if.end161:                                        ; preds = %if.then153, %if.then151
  %low163 = bitcast %union.dwords* %d to i32*, !dbg !691
  %42 = load i32, i32* %low163, align 8, !dbg !691
  %cmp164 = icmp eq i32 %42, 1, !dbg !692
  br i1 %cmp164, label %if.then166, label %if.end168, !dbg !693

if.then166:                                       ; preds = %if.end161
  %all167 = getelementptr inbounds %union.dwords, %union.dwords* %n, i32 0, i32 0, !dbg !694
  %43 = load i64, i64* %all167, align 8, !dbg !694
  br label %return, !dbg !695

if.end168:                                        ; preds = %if.end161
  %low170 = bitcast %union.dwords* %d to i32*, !dbg !696
  %44 = load i32, i32* %low170, align 8, !dbg !696
  %45 = call i32 @llvm.cttz.i32(i32 %44, i1 false), !dbg !697, !range !411
  %s171 = bitcast %union.dwords* %n to %struct.anon*, !dbg !698
  %high172 = getelementptr inbounds %struct.anon, %struct.anon* %s171, i32 0, i32 1, !dbg !699
  %46 = load i32, i32* %high172, align 4, !dbg !699
  %shr173 = lshr i32 %46, %45, !dbg !700
  %s174 = bitcast %union.dwords* %q to %struct.anon*, !dbg !701
  %high175 = getelementptr inbounds %struct.anon, %struct.anon* %s174, i32 0, i32 1, !dbg !702
  store i32 %shr173, i32* %high175, align 4, !dbg !703
  %s176 = bitcast %union.dwords* %n to %struct.anon*, !dbg !704
  %high177 = getelementptr inbounds %struct.anon, %struct.anon* %s176, i32 0, i32 1, !dbg !705
  %47 = load i32, i32* %high177, align 4, !dbg !705
  %sub178 = sub nuw nsw i32 32, %45, !dbg !706
  %shl179 = shl i32 %47, %sub178, !dbg !707
  %low181 = bitcast %union.dwords* %n to i32*, !dbg !708
  %48 = load i32, i32* %low181, align 8, !dbg !708
  %shr182 = lshr i32 %48, %45, !dbg !709
  %or183 = or i32 %shl179, %shr182, !dbg !710
  %low185 = bitcast %union.dwords* %q to i32*, !dbg !711
  store i32 %or183, i32* %low185, align 8, !dbg !712
  %all186 = getelementptr inbounds %union.dwords, %union.dwords* %q, i32 0, i32 0, !dbg !713
  %49 = load i64, i64* %all186, align 8, !dbg !713
  br label %return, !dbg !714

if.end187:                                        ; preds = %if.then142
  %low189 = bitcast %union.dwords* %d to i32*, !dbg !715
  %50 = load i32, i32* %low189, align 8, !dbg !715
  %51 = call i32 @llvm.ctlz.i32(i32 %50, i1 false), !dbg !716, !range !411
  %add = add nuw nsw i32 %51, 33, !dbg !717
  %s190 = bitcast %union.dwords* %n to %struct.anon*, !dbg !718
  %high191 = getelementptr inbounds %struct.anon, %struct.anon* %s190, i32 0, i32 1, !dbg !719
  %52 = load i32, i32* %high191, align 4, !dbg !719
  %53 = call i32 @llvm.ctlz.i32(i32 %52, i1 false), !dbg !720, !range !411
  %sub192 = sub nsw i32 %add, %53, !dbg !721
  %cmp193 = icmp eq i32 %sub192, 32, !dbg !722
  br i1 %cmp193, label %if.then195, label %if.else208, !dbg !723

if.then195:                                       ; preds = %if.end187
  %low197 = bitcast %union.dwords* %q to i32*, !dbg !724
  store i32 0, i32* %low197, align 8, !dbg !725
  %low199 = bitcast %union.dwords* %n to i32*, !dbg !726
  %54 = load i32, i32* %low199, align 8, !dbg !726
  %s200 = bitcast %union.dwords* %q to %struct.anon*, !dbg !727
  %high201 = getelementptr inbounds %struct.anon, %struct.anon* %s200, i32 0, i32 1, !dbg !728
  store i32 %54, i32* %high201, align 4, !dbg !729
  %s202 = bitcast %union.dwords* %r to %struct.anon*, !dbg !730
  %high203 = getelementptr inbounds %struct.anon, %struct.anon* %s202, i32 0, i32 1, !dbg !731
  store i32 0, i32* %high203, align 4, !dbg !732
  %s204 = bitcast %union.dwords* %n to %struct.anon*, !dbg !733
  %high205 = getelementptr inbounds %struct.anon, %struct.anon* %s204, i32 0, i32 1, !dbg !734
  %55 = load i32, i32* %high205, align 4, !dbg !734
  %low207 = bitcast %union.dwords* %r to i32*, !dbg !735
  store i32 %55, i32* %low207, align 8, !dbg !736
  br label %if.end262, !dbg !737

if.else208:                                       ; preds = %if.end187
  %cmp209 = icmp ult i32 %sub192, 32, !dbg !738
  br i1 %cmp209, label %if.then211, label %if.else235, !dbg !739

if.then211:                                       ; preds = %if.else208
  %low213 = bitcast %union.dwords* %q to i32*, !dbg !740
  store i32 0, i32* %low213, align 8, !dbg !741
  %low215 = bitcast %union.dwords* %n to i32*, !dbg !742
  %56 = load i32, i32* %low215, align 8, !dbg !742
  %sub216 = sub nsw i32 32, %sub192, !dbg !743
  %shl217 = shl i32 %56, %sub216, !dbg !744
  %s218 = bitcast %union.dwords* %q to %struct.anon*, !dbg !745
  %high219 = getelementptr inbounds %struct.anon, %struct.anon* %s218, i32 0, i32 1, !dbg !746
  store i32 %shl217, i32* %high219, align 4, !dbg !747
  %s220 = bitcast %union.dwords* %n to %struct.anon*, !dbg !748
  %high221 = getelementptr inbounds %struct.anon, %struct.anon* %s220, i32 0, i32 1, !dbg !749
  %57 = load i32, i32* %high221, align 4, !dbg !749
  %shr222 = lshr i32 %57, %sub192, !dbg !750
  %s223 = bitcast %union.dwords* %r to %struct.anon*, !dbg !751
  %high224 = getelementptr inbounds %struct.anon, %struct.anon* %s223, i32 0, i32 1, !dbg !752
  store i32 %shr222, i32* %high224, align 4, !dbg !753
  %s225 = bitcast %union.dwords* %n to %struct.anon*, !dbg !754
  %high226 = getelementptr inbounds %struct.anon, %struct.anon* %s225, i32 0, i32 1, !dbg !755
  %58 = load i32, i32* %high226, align 4, !dbg !755
  %sub227 = sub nsw i32 32, %sub192, !dbg !756
  %shl228 = shl i32 %58, %sub227, !dbg !757
  %low230 = bitcast %union.dwords* %n to i32*, !dbg !758
  %59 = load i32, i32* %low230, align 8, !dbg !758
  %shr231 = lshr i32 %59, %sub192, !dbg !759
  %or232 = or i32 %shl228, %shr231, !dbg !760
  %low234 = bitcast %union.dwords* %r to i32*, !dbg !761
  store i32 %or232, i32* %low234, align 8, !dbg !762
  br label %if.end261, !dbg !763

if.else235:                                       ; preds = %if.else208
  %low237 = bitcast %union.dwords* %n to i32*, !dbg !764
  %60 = load i32, i32* %low237, align 8, !dbg !764
  %sub238 = sub nsw i32 64, %sub192, !dbg !765
  %shl239 = shl i32 %60, %sub238, !dbg !766
  %low241 = bitcast %union.dwords* %q to i32*, !dbg !767
  store i32 %shl239, i32* %low241, align 8, !dbg !768
  %s242 = bitcast %union.dwords* %n to %struct.anon*, !dbg !769
  %high243 = getelementptr inbounds %struct.anon, %struct.anon* %s242, i32 0, i32 1, !dbg !770
  %61 = load i32, i32* %high243, align 4, !dbg !770
  %sub244 = sub nsw i32 64, %sub192, !dbg !771
  %shl245 = shl i32 %61, %sub244, !dbg !772
  %low247 = bitcast %union.dwords* %n to i32*, !dbg !773
  %62 = load i32, i32* %low247, align 8, !dbg !773
  %sub248 = add nsw i32 %sub192, -32, !dbg !774
  %shr249 = lshr i32 %62, %sub248, !dbg !775
  %or250 = or i32 %shl245, %shr249, !dbg !776
  %s251 = bitcast %union.dwords* %q to %struct.anon*, !dbg !777
  %high252 = getelementptr inbounds %struct.anon, %struct.anon* %s251, i32 0, i32 1, !dbg !778
  store i32 %or250, i32* %high252, align 4, !dbg !779
  %s253 = bitcast %union.dwords* %r to %struct.anon*, !dbg !780
  %high254 = getelementptr inbounds %struct.anon, %struct.anon* %s253, i32 0, i32 1, !dbg !781
  store i32 0, i32* %high254, align 4, !dbg !782
  %s255 = bitcast %union.dwords* %n to %struct.anon*, !dbg !783
  %high256 = getelementptr inbounds %struct.anon, %struct.anon* %s255, i32 0, i32 1, !dbg !784
  %63 = load i32, i32* %high256, align 4, !dbg !784
  %sub257 = add nsw i32 %sub192, -32, !dbg !785
  %shr258 = lshr i32 %63, %sub257, !dbg !786
  %low260 = bitcast %union.dwords* %r to i32*, !dbg !787
  store i32 %shr258, i32* %low260, align 8, !dbg !788
  br label %if.end261

if.end261:                                        ; preds = %if.else235, %if.then211
  br label %if.end262

if.end262:                                        ; preds = %if.end261, %if.then195
  br label %if.end316, !dbg !789

if.else263:                                       ; preds = %if.else
  %s264 = bitcast %union.dwords* %d to %struct.anon*, !dbg !790
  %high265 = getelementptr inbounds %struct.anon, %struct.anon* %s264, i32 0, i32 1, !dbg !791
  %64 = load i32, i32* %high265, align 4, !dbg !791
  %65 = call i32 @llvm.ctlz.i32(i32 %64, i1 false), !dbg !792, !range !411
  %s266 = bitcast %union.dwords* %n to %struct.anon*, !dbg !793
  %high267 = getelementptr inbounds %struct.anon, %struct.anon* %s266, i32 0, i32 1, !dbg !794
  %66 = load i32, i32* %high267, align 4, !dbg !794
  %67 = call i32 @llvm.ctlz.i32(i32 %66, i1 false), !dbg !795, !range !411
  %sub268 = sub nsw i32 %65, %67, !dbg !796
  %cmp269 = icmp ugt i32 %sub268, 31, !dbg !797
  br i1 %cmp269, label %if.then271, label %if.end276, !dbg !798

if.then271:                                       ; preds = %if.else263
  %tobool272.not = icmp eq i64* %rem, null, !dbg !799
  br i1 %tobool272.not, label %if.end275, label %if.then273, !dbg !799

if.then273:                                       ; preds = %if.then271
  %all274 = getelementptr inbounds %union.dwords, %union.dwords* %n, i32 0, i32 0, !dbg !800
  %68 = load i64, i64* %all274, align 8, !dbg !800
  store i64 %68, i64* %rem, align 8, !dbg !801
  br label %if.end275, !dbg !802

if.end275:                                        ; preds = %if.then273, %if.then271
  br label %return, !dbg !803

if.end276:                                        ; preds = %if.else263
  %inc277 = add nsw i32 %sub268, 1, !dbg !804
  %low279 = bitcast %union.dwords* %q to i32*, !dbg !805
  store i32 0, i32* %low279, align 8, !dbg !806
  %cmp280 = icmp eq i32 %inc277, 32, !dbg !807
  br i1 %cmp280, label %if.then282, label %if.else293, !dbg !808

if.then282:                                       ; preds = %if.end276
  %low284 = bitcast %union.dwords* %n to i32*, !dbg !809
  %69 = load i32, i32* %low284, align 8, !dbg !809
  %s285 = bitcast %union.dwords* %q to %struct.anon*, !dbg !810
  %high286 = getelementptr inbounds %struct.anon, %struct.anon* %s285, i32 0, i32 1, !dbg !811
  store i32 %69, i32* %high286, align 4, !dbg !812
  %s287 = bitcast %union.dwords* %r to %struct.anon*, !dbg !813
  %high288 = getelementptr inbounds %struct.anon, %struct.anon* %s287, i32 0, i32 1, !dbg !814
  store i32 0, i32* %high288, align 4, !dbg !815
  %s289 = bitcast %union.dwords* %n to %struct.anon*, !dbg !816
  %high290 = getelementptr inbounds %struct.anon, %struct.anon* %s289, i32 0, i32 1, !dbg !817
  %70 = load i32, i32* %high290, align 4, !dbg !817
  %low292 = bitcast %union.dwords* %r to i32*, !dbg !818
  store i32 %70, i32* %low292, align 8, !dbg !819
  br label %if.end315, !dbg !820

if.else293:                                       ; preds = %if.end276
  %low295 = bitcast %union.dwords* %n to i32*, !dbg !821
  %71 = load i32, i32* %low295, align 8, !dbg !821
  %sub296 = sub nsw i32 31, %sub268, !dbg !822
  %shl297 = shl i32 %71, %sub296, !dbg !823
  %s298 = bitcast %union.dwords* %q to %struct.anon*, !dbg !824
  %high299 = getelementptr inbounds %struct.anon, %struct.anon* %s298, i32 0, i32 1, !dbg !825
  store i32 %shl297, i32* %high299, align 4, !dbg !826
  %s300 = bitcast %union.dwords* %n to %struct.anon*, !dbg !827
  %high301 = getelementptr inbounds %struct.anon, %struct.anon* %s300, i32 0, i32 1, !dbg !828
  %72 = load i32, i32* %high301, align 4, !dbg !828
  %shr302 = lshr i32 %72, %inc277, !dbg !829
  %s303 = bitcast %union.dwords* %r to %struct.anon*, !dbg !830
  %high304 = getelementptr inbounds %struct.anon, %struct.anon* %s303, i32 0, i32 1, !dbg !831
  store i32 %shr302, i32* %high304, align 4, !dbg !832
  %s305 = bitcast %union.dwords* %n to %struct.anon*, !dbg !833
  %high306 = getelementptr inbounds %struct.anon, %struct.anon* %s305, i32 0, i32 1, !dbg !834
  %73 = load i32, i32* %high306, align 4, !dbg !834
  %sub307 = sub nsw i32 31, %sub268, !dbg !835
  %shl308 = shl i32 %73, %sub307, !dbg !836
  %low310 = bitcast %union.dwords* %n to i32*, !dbg !837
  %74 = load i32, i32* %low310, align 8, !dbg !837
  %shr311 = lshr i32 %74, %inc277, !dbg !838
  %or312 = or i32 %shl308, %shr311, !dbg !839
  %low314 = bitcast %union.dwords* %r to i32*, !dbg !840
  store i32 %or312, i32* %low314, align 8, !dbg !841
  br label %if.end315

if.end315:                                        ; preds = %if.else293, %if.then282
  br label %if.end316

if.end316:                                        ; preds = %if.end315, %if.end262
  %sr.0 = phi i32 [ %sub192, %if.end262 ], [ %inc277, %if.end315 ], !dbg !842
  br label %if.end317

if.end317:                                        ; preds = %if.end316, %if.end116
  %sr.1 = phi i32 [ %inc, %if.end116 ], [ %sr.0, %if.end316 ], !dbg !842
  br label %for.cond, !dbg !843

for.cond:                                         ; preds = %for.inc, %if.end317
  %sr.2 = phi i32 [ %sr.1, %if.end317 ], [ %dec, %for.inc ], !dbg !842
  %carry.0 = phi i32 [ 0, %if.end317 ], [ %conv360, %for.inc ], !dbg !842
  %cmp318.not = icmp eq i32 %sr.2, 0, !dbg !844
  br i1 %cmp318.not, label %for.end, label %for.body, !dbg !843

for.body:                                         ; preds = %for.cond
  %s320 = bitcast %union.dwords* %r to %struct.anon*, !dbg !845
  %high321 = getelementptr inbounds %struct.anon, %struct.anon* %s320, i32 0, i32 1, !dbg !846
  %75 = load i32, i32* %high321, align 4, !dbg !846
  %low324 = bitcast %union.dwords* %r to i32*, !dbg !847
  %76 = load i32, i32* %low324, align 8, !dbg !847
  %or326 = call i32 @llvm.fshl.i32(i32 %75, i32 %76, i32 1), !dbg !848
  %s327 = bitcast %union.dwords* %r to %struct.anon*, !dbg !849
  %high328 = getelementptr inbounds %struct.anon, %struct.anon* %s327, i32 0, i32 1, !dbg !850
  store i32 %or326, i32* %high328, align 4, !dbg !851
  %s332 = bitcast %union.dwords* %q to %struct.anon*, !dbg !852
  %high333 = getelementptr inbounds %struct.anon, %struct.anon* %s332, i32 0, i32 1, !dbg !853
  %77 = load i32, i32* %high333, align 4, !dbg !853
  %or335 = call i32 @llvm.fshl.i32(i32 %76, i32 %77, i32 1), !dbg !854
  %low337 = bitcast %union.dwords* %r to i32*, !dbg !855
  store i32 %or335, i32* %low337, align 8, !dbg !856
  %s338 = bitcast %union.dwords* %q to %struct.anon*, !dbg !857
  %high339 = getelementptr inbounds %struct.anon, %struct.anon* %s338, i32 0, i32 1, !dbg !858
  %78 = load i32, i32* %high339, align 4, !dbg !858
  %low342 = bitcast %union.dwords* %q to i32*, !dbg !859
  %79 = load i32, i32* %low342, align 8, !dbg !859
  %or344 = call i32 @llvm.fshl.i32(i32 %78, i32 %79, i32 1), !dbg !860
  %s345 = bitcast %union.dwords* %q to %struct.anon*, !dbg !861
  %high346 = getelementptr inbounds %struct.anon, %struct.anon* %s345, i32 0, i32 1, !dbg !862
  store i32 %or344, i32* %high346, align 4, !dbg !863
  %shl349 = shl i32 %79, 1, !dbg !864
  %or350 = or i32 %shl349, %carry.0, !dbg !865
  %low352 = bitcast %union.dwords* %q to i32*, !dbg !866
  store i32 %or350, i32* %low352, align 8, !dbg !867
  %all354 = getelementptr inbounds %union.dwords, %union.dwords* %d, i32 0, i32 0, !dbg !868
  %80 = load i64, i64* %all354, align 8, !dbg !868
  %all355 = getelementptr inbounds %union.dwords, %union.dwords* %r, i32 0, i32 0, !dbg !869
  %81 = load i64, i64* %all355, align 8, !dbg !869
  %82 = xor i64 %81, -1, !dbg !870
  %sub357 = add i64 %80, %82, !dbg !870
  %isneg = icmp slt i64 %sub357, 0, !dbg !871
  %and362 = select i1 %isneg, i64 %80, i64 0, !dbg !871
  %all363 = getelementptr inbounds %union.dwords, %union.dwords* %r, i32 0, i32 0, !dbg !872
  %sub364 = sub i64 %81, %and362, !dbg !873
  store i64 %sub364, i64* %all363, align 8, !dbg !873
  br label %for.inc, !dbg !874

for.inc:                                          ; preds = %for.body
  %and359 = lshr i64 %sub357, 63, !dbg !875
  %conv360 = trunc i64 %and359 to i32, !dbg !876
  %dec = add i32 %sr.2, -1, !dbg !877
  br label %for.cond, !dbg !843, !llvm.loop !878

for.end:                                          ; preds = %for.cond
  %all365 = getelementptr inbounds %union.dwords, %union.dwords* %q, i32 0, i32 0, !dbg !879
  %83 = load i64, i64* %all365, align 8, !dbg !879
  %shl366 = shl i64 %83, 1, !dbg !880
  %conv367 = zext i32 %carry.0 to i64, !dbg !881
  %or368 = or i64 %shl366, %conv367, !dbg !882
  %all369 = getelementptr inbounds %union.dwords, %union.dwords* %q, i32 0, i32 0, !dbg !883
  store i64 %or368, i64* %all369, align 8, !dbg !884
  %tobool370.not = icmp eq i64* %rem, null, !dbg !885
  br i1 %tobool370.not, label %if.end373, label %if.then371, !dbg !885

if.then371:                                       ; preds = %for.end
  %all372 = getelementptr inbounds %union.dwords, %union.dwords* %r, i32 0, i32 0, !dbg !886
  %84 = load i64, i64* %all372, align 8, !dbg !886
  store i64 %84, i64* %rem, align 8, !dbg !887
  br label %if.end373, !dbg !888

if.end373:                                        ; preds = %if.then371, %for.end
  %all374 = getelementptr inbounds %union.dwords, %union.dwords* %q, i32 0, i32 0, !dbg !889
  %85 = load i64, i64* %all374, align 8, !dbg !889
  br label %return, !dbg !890

return:                                           ; preds = %if.end373, %if.end275, %if.end168, %if.then166, %if.end115, %if.end97, %if.end67, %if.end42, %if.end22, %if.end
  %retval.0 = phi i64 [ %conv15, %if.end ], [ 0, %if.end22 ], [ %conv48, %if.end42 ], [ %conv73, %if.end67 ], [ %conv102, %if.end97 ], [ 0, %if.end115 ], [ %85, %if.end373 ], [ %43, %if.then166 ], [ %49, %if.end168 ], [ 0, %if.end275 ], !dbg !842
  ret i64 %retval.0, !dbg !891
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__divmoddi4(i64 noundef %a, i64 noundef %b, i64* noundef %rem) #2 !dbg !892 {
entry:
  %call = call arm_aapcscc i64 @__divdi3(i64 noundef %a, i64 noundef %b) #4, !dbg !893
  %mul = mul nsw i64 %call, %b, !dbg !894
  %sub = sub nsw i64 %a, %mul, !dbg !895
  store i64 %sub, i64* %rem, align 8, !dbg !896
  ret i64 %call, !dbg !897
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__divmodsi4(i32 noundef %a, i32 noundef %b, i32* noundef %rem) #2 !dbg !898 {
entry:
  %call = call arm_aapcscc i32 @__divsi3(i32 noundef %a, i32 noundef %b) #4, !dbg !899
  %mul = mul nsw i32 %call, %b, !dbg !900
  %sub = sub nsw i32 %a, %mul, !dbg !901
  store i32 %sub, i32* %rem, align 4, !dbg !902
  ret i32 %call, !dbg !903
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__divsi3(i32 noundef %a, i32 noundef %b) #2 !dbg !904 {
entry:
  %shr = ashr i32 %a, 31, !dbg !905
  %shr1 = ashr i32 %b, 31, !dbg !906
  %xor = xor i32 %shr, %a, !dbg !907
  %sub = sub nsw i32 %xor, %shr, !dbg !908
  %xor2 = xor i32 %shr1, %b, !dbg !909
  %sub3 = sub nsw i32 %xor2, %shr1, !dbg !910
  %xor4 = xor i32 %shr, %shr1, !dbg !911
  %div = udiv i32 %sub, %sub3, !dbg !912
  %xor5 = xor i32 %div, %xor4, !dbg !913
  %sub6 = sub i32 %xor5, %xor4, !dbg !914
  ret i32 %sub6, !dbg !915
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__ffsdi2(i64 noundef %a) #2 !dbg !916 {
entry:
  %x = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %x, i32 0, i32 0, !dbg !917
  store i64 %a, i64* %all, align 8, !dbg !918
  %low = bitcast %union.dwords* %x to i32*, !dbg !919
  %0 = load i32, i32* %low, align 8, !dbg !919
  %cmp = icmp eq i32 %0, 0, !dbg !920
  br i1 %cmp, label %if.then, label %if.end6, !dbg !921

if.then:                                          ; preds = %entry
  %s1 = bitcast %union.dwords* %x to %struct.anon*, !dbg !922
  %high = getelementptr inbounds %struct.anon, %struct.anon* %s1, i32 0, i32 1, !dbg !923
  %1 = load i32, i32* %high, align 4, !dbg !923
  %cmp2 = icmp eq i32 %1, 0, !dbg !924
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !925

if.then3:                                         ; preds = %if.then
  br label %return, !dbg !926

if.end:                                           ; preds = %if.then
  %s4 = bitcast %union.dwords* %x to %struct.anon*, !dbg !927
  %high5 = getelementptr inbounds %struct.anon, %struct.anon* %s4, i32 0, i32 1, !dbg !928
  %2 = load i32, i32* %high5, align 4, !dbg !928
  %3 = call i32 @llvm.cttz.i32(i32 %2, i1 false), !dbg !929, !range !411
  %add = add nuw nsw i32 %3, 33, !dbg !930
  br label %return, !dbg !931

if.end6:                                          ; preds = %entry
  %low8 = bitcast %union.dwords* %x to i32*, !dbg !932
  %4 = load i32, i32* %low8, align 8, !dbg !932
  %5 = call i32 @llvm.cttz.i32(i32 %4, i1 false), !dbg !933, !range !411
  %add9 = add nuw nsw i32 %5, 1, !dbg !934
  br label %return, !dbg !935

return:                                           ; preds = %if.end6, %if.end, %if.then3
  %retval.0 = phi i32 [ 0, %if.then3 ], [ %add, %if.end ], [ %add9, %if.end6 ], !dbg !936
  ret i32 %retval.0, !dbg !937
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__ffssi2(i32 noundef %a) #2 !dbg !938 {
entry:
  %cmp = icmp eq i32 %a, 0, !dbg !939
  br i1 %cmp, label %if.then, label %if.end, !dbg !940

if.then:                                          ; preds = %entry
  br label %return, !dbg !941

if.end:                                           ; preds = %entry
  %0 = call i32 @llvm.cttz.i32(i32 %a, i1 true), !dbg !942, !range !411
  %add = add nuw nsw i32 %0, 1, !dbg !943
  br label %return, !dbg !944

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %add, %if.end ], !dbg !945
  ret i32 %retval.0, !dbg !946
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__lshrdi3(i64 noundef %a, i32 noundef %b) #2 !dbg !947 {
entry:
  %input = alloca %union.dwords, align 8
  %result = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %input, i32 0, i32 0, !dbg !948
  store i64 %a, i64* %all, align 8, !dbg !949
  %and = and i32 %b, 32, !dbg !950
  %tobool.not = icmp eq i32 %and, 0, !dbg !950
  br i1 %tobool.not, label %if.else, label %if.then, !dbg !951

if.then:                                          ; preds = %entry
  %s = bitcast %union.dwords* %result to %struct.anon*, !dbg !952
  %high = getelementptr inbounds %struct.anon, %struct.anon* %s, i32 0, i32 1, !dbg !953
  store i32 0, i32* %high, align 4, !dbg !954
  %s1 = bitcast %union.dwords* %input to %struct.anon*, !dbg !955
  %high2 = getelementptr inbounds %struct.anon, %struct.anon* %s1, i32 0, i32 1, !dbg !956
  %0 = load i32, i32* %high2, align 4, !dbg !956
  %sub = add nsw i32 %b, -32, !dbg !957
  %shr = lshr i32 %0, %sub, !dbg !958
  %low = bitcast %union.dwords* %result to i32*, !dbg !959
  store i32 %shr, i32* %low, align 8, !dbg !960
  br label %if.end18, !dbg !961

if.else:                                          ; preds = %entry
  %cmp = icmp eq i32 %b, 0, !dbg !962
  br i1 %cmp, label %if.then4, label %if.end, !dbg !963

if.then4:                                         ; preds = %if.else
  br label %return, !dbg !964

if.end:                                           ; preds = %if.else
  %s5 = bitcast %union.dwords* %input to %struct.anon*, !dbg !965
  %high6 = getelementptr inbounds %struct.anon, %struct.anon* %s5, i32 0, i32 1, !dbg !966
  %1 = load i32, i32* %high6, align 4, !dbg !966
  %shr7 = lshr i32 %1, %b, !dbg !967
  %s8 = bitcast %union.dwords* %result to %struct.anon*, !dbg !968
  %high9 = getelementptr inbounds %struct.anon, %struct.anon* %s8, i32 0, i32 1, !dbg !969
  store i32 %shr7, i32* %high9, align 4, !dbg !970
  %s10 = bitcast %union.dwords* %input to %struct.anon*, !dbg !971
  %high11 = getelementptr inbounds %struct.anon, %struct.anon* %s10, i32 0, i32 1, !dbg !972
  %2 = load i32, i32* %high11, align 4, !dbg !972
  %sub12 = sub nsw i32 32, %b, !dbg !973
  %shl = shl i32 %2, %sub12, !dbg !974
  %low14 = bitcast %union.dwords* %input to i32*, !dbg !975
  %3 = load i32, i32* %low14, align 8, !dbg !975
  %shr15 = lshr i32 %3, %b, !dbg !976
  %or = or i32 %shl, %shr15, !dbg !977
  %low17 = bitcast %union.dwords* %result to i32*, !dbg !978
  store i32 %or, i32* %low17, align 8, !dbg !979
  br label %if.end18

if.end18:                                         ; preds = %if.end, %if.then
  %all19 = getelementptr inbounds %union.dwords, %union.dwords* %result, i32 0, i32 0, !dbg !980
  %4 = load i64, i64* %all19, align 8, !dbg !980
  br label %return, !dbg !981

return:                                           ; preds = %if.end18, %if.then4
  %retval.0 = phi i64 [ %4, %if.end18 ], [ %a, %if.then4 ], !dbg !982
  ret i64 %retval.0, !dbg !983
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__moddi3(i64 noundef %a, i64 noundef %b) #2 !dbg !984 {
entry:
  %r = alloca i64, align 8
  %0 = call i64 @llvm.abs.i64(i64 %b, i1 true), !dbg !985
  %shr1 = ashr i64 %a, 63, !dbg !986
  %xor2 = xor i64 %shr1, %a, !dbg !987
  %sub3 = sub nsw i64 %xor2, %shr1, !dbg !988
  %call = call arm_aapcscc i64 @__udivmoddi4(i64 noundef %sub3, i64 noundef %0, i64* noundef nonnull %r) #4, !dbg !989
  %1 = load i64, i64* %r, align 8, !dbg !990
  %xor4 = xor i64 %1, %shr1, !dbg !991
  %sub5 = sub nsw i64 %xor4, %shr1, !dbg !992
  ret i64 %sub5, !dbg !993
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__modsi3(i32 noundef %a, i32 noundef %b) #2 !dbg !994 {
entry:
  %call = call arm_aapcscc i32 @__divsi3(i32 noundef %a, i32 noundef %b) #4, !dbg !995
  %mul = mul nsw i32 %call, %b, !dbg !996
  %sub = sub nsw i32 %a, %mul, !dbg !997
  ret i32 %sub, !dbg !998
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__mulvdi3(i64 noundef %a, i64 noundef %b) #2 !dbg !999 {
entry:
  %cmp = icmp eq i64 %a, -9223372036854775808, !dbg !1000
  br i1 %cmp, label %if.then, label %if.end4, !dbg !1001

if.then:                                          ; preds = %entry
  %cmp1 = icmp eq i64 %b, 0, !dbg !1002
  br i1 %cmp1, label %if.then3, label %lor.lhs.false, !dbg !1003

lor.lhs.false:                                    ; preds = %if.then
  %cmp2 = icmp eq i64 %b, 1, !dbg !1004
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !1005

if.then3:                                         ; preds = %lor.lhs.false, %if.then
  br label %return, !dbg !1006

if.end:                                           ; preds = %lor.lhs.false
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i32 noundef 31, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvdi3, i32 0, i32 0)) #5, !dbg !1007
  unreachable, !dbg !1007

if.end4:                                          ; preds = %entry
  %cmp5 = icmp eq i64 %b, -9223372036854775808, !dbg !1008
  br i1 %cmp5, label %if.then6, label %if.end13, !dbg !1009

if.then6:                                         ; preds = %if.end4
  %cmp7 = icmp eq i64 %a, 0, !dbg !1010
  br i1 %cmp7, label %if.then10, label %lor.lhs.false8, !dbg !1011

lor.lhs.false8:                                   ; preds = %if.then6
  %cmp9 = icmp eq i64 %a, 1, !dbg !1012
  br i1 %cmp9, label %if.then10, label %if.end12, !dbg !1013

if.then10:                                        ; preds = %lor.lhs.false8, %if.then6
  br label %return, !dbg !1014

if.end12:                                         ; preds = %lor.lhs.false8
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i32 noundef 37, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvdi3, i32 0, i32 0)) #5, !dbg !1015
  unreachable, !dbg !1015

if.end13:                                         ; preds = %if.end4
  %shr = ashr i64 %a, 63, !dbg !1016
  %xor = xor i64 %shr, %a, !dbg !1017
  %sub = sub nsw i64 %xor, %shr, !dbg !1018
  %shr14 = ashr i64 %b, 63, !dbg !1019
  %xor15 = xor i64 %shr14, %b, !dbg !1020
  %sub16 = sub nsw i64 %xor15, %shr14, !dbg !1021
  %cmp17 = icmp slt i64 %sub, 2, !dbg !1022
  br i1 %cmp17, label %if.then20, label %lor.lhs.false18, !dbg !1023

lor.lhs.false18:                                  ; preds = %if.end13
  %cmp19 = icmp slt i64 %sub16, 2, !dbg !1024
  br i1 %cmp19, label %if.then20, label %if.end22, !dbg !1025

if.then20:                                        ; preds = %lor.lhs.false18, %if.end13
  br label %return, !dbg !1026

if.end22:                                         ; preds = %lor.lhs.false18
  %cmp23 = icmp eq i64 %shr, %shr14, !dbg !1027
  br i1 %cmp23, label %if.then24, label %if.else, !dbg !1028

if.then24:                                        ; preds = %if.end22
  %div = sdiv i64 9223372036854775807, %sub16, !dbg !1029
  %cmp25 = icmp sgt i64 %sub, %div, !dbg !1030
  br i1 %cmp25, label %if.then26, label %if.end27, !dbg !1031

if.then26:                                        ; preds = %if.then24
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i32 noundef 48, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvdi3, i32 0, i32 0)) #5, !dbg !1032
  unreachable, !dbg !1032

if.end27:                                         ; preds = %if.then24
  br label %if.end33, !dbg !1033

if.else:                                          ; preds = %if.end22
  %sub28 = sub nsw i64 0, %sub16, !dbg !1034
  %div29 = sdiv i64 -9223372036854775808, %sub28, !dbg !1035
  %cmp30 = icmp sgt i64 %sub, %div29, !dbg !1036
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !1037

if.then31:                                        ; preds = %if.else
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i32 noundef 53, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvdi3, i32 0, i32 0)) #5, !dbg !1038
  unreachable, !dbg !1038

if.end32:                                         ; preds = %if.else
  br label %if.end33

if.end33:                                         ; preds = %if.end32, %if.end27
  br label %return, !dbg !1039

return:                                           ; preds = %if.end33, %if.then20, %if.then10, %if.then3
  %retval.0 = mul nsw i64 %a, %b, !dbg !1040
  ret i64 %retval.0, !dbg !1041
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__mulvsi3(i32 noundef %a, i32 noundef %b) #2 !dbg !1042 {
entry:
  %cmp = icmp eq i32 %a, -2147483648, !dbg !1043
  br i1 %cmp, label %if.then, label %if.end4, !dbg !1044

if.then:                                          ; preds = %entry
  %cmp1 = icmp eq i32 %b, 0, !dbg !1045
  br i1 %cmp1, label %if.then3, label %lor.lhs.false, !dbg !1046

lor.lhs.false:                                    ; preds = %if.then
  %cmp2 = icmp eq i32 %b, 1, !dbg !1047
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !1048

if.then3:                                         ; preds = %lor.lhs.false, %if.then
  br label %return, !dbg !1049

if.end:                                           ; preds = %lor.lhs.false
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), i32 noundef 31, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvsi3, i32 0, i32 0)) #5, !dbg !1050
  unreachable, !dbg !1050

if.end4:                                          ; preds = %entry
  %cmp5 = icmp eq i32 %b, -2147483648, !dbg !1051
  br i1 %cmp5, label %if.then6, label %if.end13, !dbg !1052

if.then6:                                         ; preds = %if.end4
  %cmp7 = icmp eq i32 %a, 0, !dbg !1053
  br i1 %cmp7, label %if.then10, label %lor.lhs.false8, !dbg !1054

lor.lhs.false8:                                   ; preds = %if.then6
  %cmp9 = icmp eq i32 %a, 1, !dbg !1055
  br i1 %cmp9, label %if.then10, label %if.end12, !dbg !1056

if.then10:                                        ; preds = %lor.lhs.false8, %if.then6
  br label %return, !dbg !1057

if.end12:                                         ; preds = %lor.lhs.false8
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), i32 noundef 37, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvsi3, i32 0, i32 0)) #5, !dbg !1058
  unreachable, !dbg !1058

if.end13:                                         ; preds = %if.end4
  %shr = ashr i32 %a, 31, !dbg !1059
  %xor = xor i32 %shr, %a, !dbg !1060
  %sub = sub nsw i32 %xor, %shr, !dbg !1061
  %shr14 = ashr i32 %b, 31, !dbg !1062
  %xor15 = xor i32 %shr14, %b, !dbg !1063
  %sub16 = sub nsw i32 %xor15, %shr14, !dbg !1064
  %cmp17 = icmp slt i32 %sub, 2, !dbg !1065
  br i1 %cmp17, label %if.then20, label %lor.lhs.false18, !dbg !1066

lor.lhs.false18:                                  ; preds = %if.end13
  %cmp19 = icmp slt i32 %sub16, 2, !dbg !1067
  br i1 %cmp19, label %if.then20, label %if.end22, !dbg !1068

if.then20:                                        ; preds = %lor.lhs.false18, %if.end13
  br label %return, !dbg !1069

if.end22:                                         ; preds = %lor.lhs.false18
  %cmp23 = icmp eq i32 %shr, %shr14, !dbg !1070
  br i1 %cmp23, label %if.then24, label %if.else, !dbg !1071

if.then24:                                        ; preds = %if.end22
  %div = sdiv i32 2147483647, %sub16, !dbg !1072
  %cmp25 = icmp sgt i32 %sub, %div, !dbg !1073
  br i1 %cmp25, label %if.then26, label %if.end27, !dbg !1074

if.then26:                                        ; preds = %if.then24
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), i32 noundef 48, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvsi3, i32 0, i32 0)) #5, !dbg !1075
  unreachable, !dbg !1075

if.end27:                                         ; preds = %if.then24
  br label %if.end33, !dbg !1076

if.else:                                          ; preds = %if.end22
  %sub28 = sub nsw i32 0, %sub16, !dbg !1077
  %div29 = sdiv i32 -2147483648, %sub28, !dbg !1078
  %cmp30 = icmp sgt i32 %sub, %div29, !dbg !1079
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !1080

if.then31:                                        ; preds = %if.else
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), i32 noundef 53, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvsi3, i32 0, i32 0)) #5, !dbg !1081
  unreachable, !dbg !1081

if.end32:                                         ; preds = %if.else
  br label %if.end33

if.end33:                                         ; preds = %if.end32, %if.end27
  br label %return, !dbg !1082

return:                                           ; preds = %if.end33, %if.then20, %if.then10, %if.then3
  %retval.0 = mul nsw i32 %a, %b, !dbg !1083
  ret i32 %retval.0, !dbg !1084
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__paritydi2(i64 noundef %a) #2 !dbg !1085 {
entry:
  %x = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %x, i32 0, i32 0, !dbg !1086
  store i64 %a, i64* %all, align 8, !dbg !1087
  %s = bitcast %union.dwords* %x to %struct.anon*, !dbg !1088
  %high = getelementptr inbounds %struct.anon, %struct.anon* %s, i32 0, i32 1, !dbg !1089
  %0 = load i32, i32* %high, align 4, !dbg !1089
  %low = bitcast %union.dwords* %x to i32*, !dbg !1090
  %1 = load i32, i32* %low, align 8, !dbg !1090
  %xor = xor i32 %0, %1, !dbg !1091
  %call = call arm_aapcscc i32 @__paritysi2(i32 noundef %xor) #4, !dbg !1092
  ret i32 %call, !dbg !1093
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__paritysi2(i32 noundef %a) #2 !dbg !1094 {
entry:
  %shr = lshr i32 %a, 16, !dbg !1095
  %xor = xor i32 %shr, %a, !dbg !1096
  %shr1 = lshr i32 %xor, 8, !dbg !1097
  %xor2 = xor i32 %xor, %shr1, !dbg !1098
  %shr3 = lshr i32 %xor2, 4, !dbg !1099
  %xor4 = xor i32 %xor2, %shr3, !dbg !1100
  %and = and i32 %xor4, 15, !dbg !1101
  %shr5 = lshr i32 27030, %and, !dbg !1102
  %and6 = and i32 %shr5, 1, !dbg !1103
  ret i32 %and6, !dbg !1104
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__popcountdi2(i64 noundef %a) #2 !dbg !1105 {
entry:
  %shr = lshr i64 %a, 1, !dbg !1106
  %and = and i64 %shr, 6148914691236517205, !dbg !1107
  %sub = sub i64 %a, %and, !dbg !1108
  %shr1 = lshr i64 %sub, 2, !dbg !1109
  %and2 = and i64 %shr1, 3689348814741910323, !dbg !1110
  %and3 = and i64 %sub, 3689348814741910323, !dbg !1111
  %add = add nuw nsw i64 %and2, %and3, !dbg !1112
  %shr4 = lshr i64 %add, 4, !dbg !1113
  %add5 = add nuw nsw i64 %add, %shr4, !dbg !1114
  %and6 = and i64 %add5, 1085102592571150095, !dbg !1115
  %shr7 = lshr i64 %and6, 32, !dbg !1116
  %add8 = add nuw nsw i64 %and6, %shr7, !dbg !1117
  %conv = trunc i64 %add8 to i32, !dbg !1118
  %shr9 = lshr i32 %conv, 16, !dbg !1119
  %add10 = add nuw nsw i32 %shr9, %conv, !dbg !1120
  %shr11 = lshr i32 %add10, 8, !dbg !1121
  %add12 = add nuw nsw i32 %add10, %shr11, !dbg !1122
  %and13 = and i32 %add12, 127, !dbg !1123
  ret i32 %and13, !dbg !1124
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__popcountsi2(i32 noundef %a) #2 !dbg !1125 {
entry:
  %shr = lshr i32 %a, 1, !dbg !1126
  %and = and i32 %shr, 1431655765, !dbg !1127
  %sub = sub i32 %a, %and, !dbg !1128
  %shr1 = lshr i32 %sub, 2, !dbg !1129
  %and2 = and i32 %shr1, 858993459, !dbg !1130
  %and3 = and i32 %sub, 858993459, !dbg !1131
  %add = add nuw nsw i32 %and2, %and3, !dbg !1132
  %shr4 = lshr i32 %add, 4, !dbg !1133
  %add5 = add nuw nsw i32 %add, %shr4, !dbg !1134
  %and6 = and i32 %add5, 252645135, !dbg !1135
  %shr7 = lshr i32 %and6, 16, !dbg !1136
  %add8 = add nuw nsw i32 %and6, %shr7, !dbg !1137
  %shr9 = lshr i32 %add8, 8, !dbg !1138
  %add10 = add nuw nsw i32 %add8, %shr9, !dbg !1139
  %and11 = and i32 %add10, 63, !dbg !1140
  ret i32 %and11, !dbg !1141
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__subvdi3(i64 noundef %a, i64 noundef %b) #2 !dbg !1142 {
entry:
  %sub = sub i64 %a, %b, !dbg !1143
  %cmp = icmp sgt i64 %b, -1, !dbg !1144
  br i1 %cmp, label %if.then, label %if.else, !dbg !1145

if.then:                                          ; preds = %entry
  %cmp1 = icmp sgt i64 %sub, %a, !dbg !1146
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !1147

if.then2:                                         ; preds = %if.then
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i32 0, i32 0), i32 noundef 28, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__subvdi3, i32 0, i32 0)) #5, !dbg !1148
  unreachable, !dbg !1148

if.end:                                           ; preds = %if.then
  br label %if.end6, !dbg !1149

if.else:                                          ; preds = %entry
  %cmp3.not = icmp sgt i64 %sub, %a, !dbg !1150
  br i1 %cmp3.not, label %if.end5, label %if.then4, !dbg !1151

if.then4:                                         ; preds = %if.else
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i32 0, i32 0), i32 noundef 33, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__subvdi3, i32 0, i32 0)) #5, !dbg !1152
  unreachable, !dbg !1152

if.end5:                                          ; preds = %if.else
  br label %if.end6

if.end6:                                          ; preds = %if.end5, %if.end
  ret i64 %sub, !dbg !1153
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__subvsi3(i32 noundef %a, i32 noundef %b) #2 !dbg !1154 {
entry:
  %sub = sub i32 %a, %b, !dbg !1155
  %cmp = icmp sgt i32 %b, -1, !dbg !1156
  br i1 %cmp, label %if.then, label %if.else, !dbg !1157

if.then:                                          ; preds = %entry
  %cmp1 = icmp sgt i32 %sub, %a, !dbg !1158
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !1159

if.then2:                                         ; preds = %if.then
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i32 0, i32 0), i32 noundef 28, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__subvsi3, i32 0, i32 0)) #5, !dbg !1160
  unreachable, !dbg !1160

if.end:                                           ; preds = %if.then
  br label %if.end6, !dbg !1161

if.else:                                          ; preds = %entry
  %cmp3.not = icmp sgt i32 %sub, %a, !dbg !1162
  br i1 %cmp3.not, label %if.end5, label %if.then4, !dbg !1163

if.then4:                                         ; preds = %if.else
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i32 0, i32 0), i32 noundef 33, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__subvsi3, i32 0, i32 0)) #5, !dbg !1164
  unreachable, !dbg !1164

if.end5:                                          ; preds = %if.else
  br label %if.end6

if.end6:                                          ; preds = %if.end5, %if.end
  ret i32 %sub, !dbg !1165
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__ucmpdi2(i64 noundef %a, i64 noundef %b) #2 !dbg !1166 {
entry:
  %x = alloca %union.dwords, align 8
  %y = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %x, i32 0, i32 0, !dbg !1167
  store i64 %a, i64* %all, align 8, !dbg !1168
  %all1 = getelementptr inbounds %union.dwords, %union.dwords* %y, i32 0, i32 0, !dbg !1169
  store i64 %b, i64* %all1, align 8, !dbg !1170
  %s = bitcast %union.dwords* %x to %struct.anon*, !dbg !1171
  %high = getelementptr inbounds %struct.anon, %struct.anon* %s, i32 0, i32 1, !dbg !1172
  %0 = load i32, i32* %high, align 4, !dbg !1172
  %s2 = bitcast %union.dwords* %y to %struct.anon*, !dbg !1173
  %high3 = getelementptr inbounds %struct.anon, %struct.anon* %s2, i32 0, i32 1, !dbg !1174
  %1 = load i32, i32* %high3, align 4, !dbg !1174
  %cmp = icmp ult i32 %0, %1, !dbg !1175
  br i1 %cmp, label %if.then, label %if.end, !dbg !1176

if.then:                                          ; preds = %entry
  br label %return, !dbg !1177

if.end:                                           ; preds = %entry
  %s4 = bitcast %union.dwords* %x to %struct.anon*, !dbg !1178
  %high5 = getelementptr inbounds %struct.anon, %struct.anon* %s4, i32 0, i32 1, !dbg !1179
  %2 = load i32, i32* %high5, align 4, !dbg !1179
  %s6 = bitcast %union.dwords* %y to %struct.anon*, !dbg !1180
  %high7 = getelementptr inbounds %struct.anon, %struct.anon* %s6, i32 0, i32 1, !dbg !1181
  %3 = load i32, i32* %high7, align 4, !dbg !1181
  %cmp8 = icmp ugt i32 %2, %3, !dbg !1182
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !1183

if.then9:                                         ; preds = %if.end
  br label %return, !dbg !1184

if.end10:                                         ; preds = %if.end
  %low = bitcast %union.dwords* %x to i32*, !dbg !1185
  %4 = load i32, i32* %low, align 8, !dbg !1185
  %low13 = bitcast %union.dwords* %y to i32*, !dbg !1186
  %5 = load i32, i32* %low13, align 8, !dbg !1186
  %cmp14 = icmp ult i32 %4, %5, !dbg !1187
  br i1 %cmp14, label %if.then15, label %if.end16, !dbg !1188

if.then15:                                        ; preds = %if.end10
  br label %return, !dbg !1189

if.end16:                                         ; preds = %if.end10
  %low18 = bitcast %union.dwords* %x to i32*, !dbg !1190
  %6 = load i32, i32* %low18, align 8, !dbg !1190
  %low20 = bitcast %union.dwords* %y to i32*, !dbg !1191
  %7 = load i32, i32* %low20, align 8, !dbg !1191
  %cmp21 = icmp ugt i32 %6, %7, !dbg !1192
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !1193

if.then22:                                        ; preds = %if.end16
  br label %return, !dbg !1194

if.end23:                                         ; preds = %if.end16
  br label %return, !dbg !1195

return:                                           ; preds = %if.end23, %if.then22, %if.then15, %if.then9, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 2, %if.then9 ], [ 0, %if.then15 ], [ 2, %if.then22 ], [ 1, %if.end23 ], !dbg !1196
  ret i32 %retval.0, !dbg !1197
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__aeabi_ulcmp(i64 noundef %a, i64 noundef %b) #2 !dbg !1198 {
entry:
  %call = call arm_aapcscc i32 @__ucmpdi2(i64 noundef %a, i64 noundef %b) #4, !dbg !1199
  %sub = add nsw i32 %call, -1, !dbg !1200
  ret i32 %sub, !dbg !1201
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__udivdi3(i64 noundef %a, i64 noundef %b) #2 !dbg !1202 {
entry:
  %call = call arm_aapcscc i64 @__udivmoddi4(i64 noundef %a, i64 noundef %b, i64* noundef null) #4, !dbg !1203
  ret i64 %call, !dbg !1204
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__udivmodsi4(i32 noundef %a, i32 noundef %b, i32* noundef %rem) #2 !dbg !1205 {
entry:
  %call = call arm_aapcscc i32 @__udivsi3(i32 noundef %a, i32 noundef %b) #4, !dbg !1206
  %mul = mul i32 %call, %b, !dbg !1207
  %sub = sub i32 %a, %mul, !dbg !1208
  store i32 %sub, i32* %rem, align 4, !dbg !1209
  ret i32 %call, !dbg !1210
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__udivsi3(i32 noundef %n, i32 noundef %d) #2 !dbg !1211 {
entry:
  %cmp = icmp eq i32 %d, 0, !dbg !1212
  br i1 %cmp, label %if.then, label %if.end, !dbg !1213

if.then:                                          ; preds = %entry
  br label %return, !dbg !1214

if.end:                                           ; preds = %entry
  %cmp1 = icmp eq i32 %n, 0, !dbg !1215
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !1216

if.then2:                                         ; preds = %if.end
  br label %return, !dbg !1217

if.end3:                                          ; preds = %if.end
  %0 = call i32 @llvm.ctlz.i32(i32 %d, i1 true), !dbg !1218, !range !411
  %1 = call i32 @llvm.ctlz.i32(i32 %n, i1 true), !dbg !1219, !range !411
  %sub = sub nsw i32 %0, %1, !dbg !1220
  %cmp4 = icmp ugt i32 %sub, 31, !dbg !1221
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !1222

if.then5:                                         ; preds = %if.end3
  br label %return, !dbg !1223

if.end6:                                          ; preds = %if.end3
  %cmp7 = icmp eq i32 %sub, 31, !dbg !1224
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !1225

if.then8:                                         ; preds = %if.end6
  br label %return, !dbg !1226

if.end9:                                          ; preds = %if.end6
  %inc = add nsw i32 %sub, 1, !dbg !1227
  %sub10 = sub nsw i32 31, %sub, !dbg !1228
  %shl = shl i32 %n, %sub10, !dbg !1229
  %shr = lshr i32 %n, %inc, !dbg !1230
  br label %for.cond, !dbg !1231

for.cond:                                         ; preds = %for.inc, %if.end9
  %q.0 = phi i32 [ %shl, %if.end9 ], [ %or15, %for.inc ], !dbg !1232
  %r.0 = phi i32 [ %shr, %if.end9 ], [ %sub20, %for.inc ], !dbg !1232
  %sr.0 = phi i32 [ %inc, %if.end9 ], [ %dec, %for.inc ], !dbg !1232
  %carry.0 = phi i32 [ 0, %if.end9 ], [ %and, %for.inc ], !dbg !1232
  %cmp11.not = icmp eq i32 %sr.0, 0, !dbg !1233
  br i1 %cmp11.not, label %for.end, label %for.body, !dbg !1231

for.body:                                         ; preds = %for.cond
  %or = call i32 @llvm.fshl.i32(i32 %r.0, i32 %q.0, i32 1), !dbg !1234
  %2 = xor i32 %or, -1, !dbg !1235
  %sub17 = add i32 %2, %d, !dbg !1235
  br label %for.inc, !dbg !1236

for.inc:                                          ; preds = %for.body
  %isneg = icmp slt i32 %sub17, 0, !dbg !1237
  %and19 = select i1 %isneg, i32 %d, i32 0, !dbg !1237
  %sub20 = sub i32 %or, %and19, !dbg !1238
  %and = lshr i32 %sub17, 31, !dbg !1239
  %shl14 = shl i32 %q.0, 1, !dbg !1240
  %or15 = or i32 %shl14, %carry.0, !dbg !1241
  %dec = add i32 %sr.0, -1, !dbg !1242
  br label %for.cond, !dbg !1231, !llvm.loop !1243

for.end:                                          ; preds = %for.cond
  %shl21 = shl i32 %q.0, 1, !dbg !1244
  %or22 = or i32 %shl21, %carry.0, !dbg !1245
  br label %return, !dbg !1246

return:                                           ; preds = %for.end, %if.then8, %if.then5, %if.then2, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then2 ], [ 0, %if.then5 ], [ %n, %if.then8 ], [ %or22, %for.end ], !dbg !1232
  ret i32 %retval.0, !dbg !1247
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__umoddi3(i64 noundef %a, i64 noundef %b) #2 !dbg !1248 {
entry:
  %r = alloca i64, align 8
  %call = call arm_aapcscc i64 @__udivmoddi4(i64 noundef %a, i64 noundef %b, i64* noundef nonnull %r) #4, !dbg !1249
  %0 = load i64, i64* %r, align 8, !dbg !1250
  ret i64 %0, !dbg !1251
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__umodsi3(i32 noundef %a, i32 noundef %b) #2 !dbg !1252 {
entry:
  %call = call arm_aapcscc i32 @__udivsi3(i32 noundef %a, i32 noundef %b) #4, !dbg !1253
  %mul = mul i32 %call, %b, !dbg !1254
  %sub = sub i32 %a, %mul, !dbg !1255
  ret i32 %sub, !dbg !1256
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i8* @memcpy(i8* noundef %destination, i8* noundef %source, i32 noundef %num) #2 !dbg !1257 {
entry:
  br label %for.cond, !dbg !1258

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !dbg !1259
  %exitcond.not = icmp eq i32 %i.0, %num, !dbg !1260
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !1261

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds i8, i8* %source, i32 %i.0, !dbg !1262
  %0 = load i8, i8* %arrayidx, align 1, !dbg !1262
  %arrayidx1 = getelementptr inbounds i8, i8* %destination, i32 %i.0, !dbg !1263
  store i8 %0, i8* %arrayidx1, align 1, !dbg !1264
  br label %for.inc, !dbg !1265

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.0, 1, !dbg !1266
  br label %for.cond, !dbg !1261, !llvm.loop !1267

for.end:                                          ; preds = %for.cond
  ret i8* undef, !dbg !1268
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i8* @memset(i8* noundef %ptr, i32 noundef %value, i32 noundef %num) #2 !dbg !1269 {
entry:
  br label %for.cond, !dbg !1270

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !dbg !1271
  %exitcond.not = icmp eq i32 %i.0, %num, !dbg !1272
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !1273

for.body:                                         ; preds = %for.cond
  %conv = trunc i32 %value to i8, !dbg !1274
  %arrayidx = getelementptr inbounds i8, i8* %ptr, i32 %i.0, !dbg !1275
  store i8 %conv, i8* %arrayidx, align 1, !dbg !1276
  br label %for.inc, !dbg !1277

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.0, 1, !dbg !1278
  br label %for.cond, !dbg !1273, !llvm.loop !1279

for.end:                                          ; preds = %for.cond
  ret i8* %ptr, !dbg !1280
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

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

!llvm.dbg.cu = !{!2, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126}
!llvm.ident = !{!128, !129, !129, !129, !129, !129, !129, !129, !129, !129, !129, !129, !129, !129, !129, !129, !129, !129, !129, !129, !129, !129, !129, !129, !129, !129, !129, !129, !129, !129, !129, !129, !129, !129, !129, !129, !129, !129, !129, !129, !129, !129, !129, !129, !129, !129, !129, !129, !129, !129, !129, !129, !129, !129, !129, !129, !129}
!llvm.module.flags = !{!130, !131, !132, !133, !134, !135, !136, !137, !138}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "complex_updates_A", scope: !2, file: !7, line: 50, type: !8, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 14.0.6 (git@github.com:RTS-SYSU/LLVM-TA.git b7f9c4ccdebc6c37532ddd772889e5f0ff989c79)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !4, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/workspaces/llvmta/testcases/singletest/complex_updates/complex_updates.c", directory: "/workspaces/llvmta/testcases/singletest/cjpeg_wrbmp")
!4 = !{!0, !5, !12, !14}
!5 = !DIGlobalVariableExpression(var: !6, expr: !DIExpression())
!6 = distinct !DIGlobalVariable(name: "complex_updates_B", scope: !2, file: !7, line: 50, type: !8, isLocal: false, isDefinition: true)
!7 = !DIFile(filename: "complex_updates/complex_updates.c", directory: "/workspaces/llvmta/testcases/singletest")
!8 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 1024, elements: !10)
!9 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!10 = !{!11}
!11 = !DISubrange(count: 32)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(name: "complex_updates_C", scope: !2, file: !7, line: 51, type: !8, isLocal: false, isDefinition: true)
!14 = !DIGlobalVariableExpression(var: !15, expr: !DIExpression())
!15 = distinct !DIGlobalVariable(name: "complex_updates_D", scope: !2, file: !7, line: 51, type: !8, isLocal: false, isDefinition: true)
!16 = distinct !DICompileUnit(language: DW_LANG_C99, file: !17, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!17 = !DIFile(filename: "../absvdi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "f0fa545ed84eab29322431dd903e1bd2")
!18 = distinct !DICompileUnit(language: DW_LANG_C99, file: !19, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!19 = !DIFile(filename: "../absvsi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "4c623fefc2c7ed3929c6e73514b667d1")
!20 = distinct !DICompileUnit(language: DW_LANG_C99, file: !21, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!21 = !DIFile(filename: "../absvti2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "37a4bc629baa89b5b7c1570be0d03e1f")
!22 = distinct !DICompileUnit(language: DW_LANG_C99, file: !23, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!23 = !DIFile(filename: "../addvdi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "aa240ee8ce7c28b2c3bcec10a7603d3f")
!24 = distinct !DICompileUnit(language: DW_LANG_C99, file: !25, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!25 = !DIFile(filename: "../addvsi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "6cd4d40cc00928f1aaf6f29e299078cd")
!26 = distinct !DICompileUnit(language: DW_LANG_C99, file: !27, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!27 = !DIFile(filename: "../addvti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "0db25cee24f6026e13fc556e48cb2a4f")
!28 = distinct !DICompileUnit(language: DW_LANG_C99, file: !29, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!29 = !DIFile(filename: "../ashldi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "ae5236ddcefaf3e5efc4feba69d334b1")
!30 = distinct !DICompileUnit(language: DW_LANG_C99, file: !31, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!31 = !DIFile(filename: "../ashlti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "040402442e4641b723a41224f90bb33c")
!32 = distinct !DICompileUnit(language: DW_LANG_C99, file: !33, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!33 = !DIFile(filename: "../ashrdi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "df60b7a82095e7d7b5c11e1095a5679a")
!34 = distinct !DICompileUnit(language: DW_LANG_C99, file: !35, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!35 = !DIFile(filename: "../ashrti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "d09af17b4c5b806431a14ef018da30a2")
!36 = distinct !DICompileUnit(language: DW_LANG_C99, file: !37, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!37 = !DIFile(filename: "../clzdi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "901c40e0319a50689080965b20695c3e")
!38 = distinct !DICompileUnit(language: DW_LANG_C99, file: !39, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!39 = !DIFile(filename: "../clzsi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "9b0156c55102d3143e17bdf85bafbc30")
!40 = distinct !DICompileUnit(language: DW_LANG_C99, file: !41, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!41 = !DIFile(filename: "../clzti2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "6289c95e51f48974308ae457c947fa76")
!42 = distinct !DICompileUnit(language: DW_LANG_C99, file: !43, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!43 = !DIFile(filename: "../cmpdi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "79ec8a4b383c8374d228cd0869637319")
!44 = distinct !DICompileUnit(language: DW_LANG_C99, file: !45, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!45 = !DIFile(filename: "../cmpti2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "8b9214d8b14681920bdf2cff2acab581")
!46 = distinct !DICompileUnit(language: DW_LANG_C99, file: !47, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!47 = !DIFile(filename: "../ctzdi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "0415a3f61808ca646548bc24b48a844a")
!48 = distinct !DICompileUnit(language: DW_LANG_C99, file: !49, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!49 = !DIFile(filename: "../ctzsi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "0372a2c6647eddaa73c0b61d8d03c3b1")
!50 = distinct !DICompileUnit(language: DW_LANG_C99, file: !51, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!51 = !DIFile(filename: "../ctzti2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "13fd6233b75667ee3310f19e92769490")
!52 = distinct !DICompileUnit(language: DW_LANG_C99, file: !53, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!53 = !DIFile(filename: "../divdi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "281227589e0794a81d7211e4ee4a402c")
!54 = distinct !DICompileUnit(language: DW_LANG_C99, file: !55, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!55 = !DIFile(filename: "../divmoddi4.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "bd72633dccf26f3dd8ee74bf04f7fdac")
!56 = distinct !DICompileUnit(language: DW_LANG_C99, file: !57, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!57 = !DIFile(filename: "../divmodsi4.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "0cf7caca427f8ea020b675e27b5985b5")
!58 = distinct !DICompileUnit(language: DW_LANG_C99, file: !59, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!59 = !DIFile(filename: "../divsi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "7845e3e46788425cf69d463f3cfe00e5")
!60 = distinct !DICompileUnit(language: DW_LANG_C99, file: !61, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!61 = !DIFile(filename: "../divti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "6f197084470906a806c88d3dd279e870")
!62 = distinct !DICompileUnit(language: DW_LANG_C99, file: !63, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!63 = !DIFile(filename: "../ffsdi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "4b800e1cad35a0bc99971441032171a3")
!64 = distinct !DICompileUnit(language: DW_LANG_C99, file: !65, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!65 = !DIFile(filename: "../ffssi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "182169d6765bddc2bf1b03cc7a4f47cb")
!66 = distinct !DICompileUnit(language: DW_LANG_C99, file: !67, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!67 = !DIFile(filename: "../ffsti2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "828ab085c50c22a6e163e289ad75e357")
!68 = distinct !DICompileUnit(language: DW_LANG_C99, file: !69, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!69 = !DIFile(filename: "../int_util.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "7ceb1d4e85bede509d8e6a0974078bc9")
!70 = distinct !DICompileUnit(language: DW_LANG_C99, file: !71, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!71 = !DIFile(filename: "../lshrdi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "c456e45323b3205c3b32d82b51570771")
!72 = distinct !DICompileUnit(language: DW_LANG_C99, file: !73, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!73 = !DIFile(filename: "../lshrti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "a0deefe7ea6369a844ff00cfd3adca3e")
!74 = distinct !DICompileUnit(language: DW_LANG_C99, file: !75, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!75 = !DIFile(filename: "../moddi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "76733914157a978303cbe3d6f6d1c647")
!76 = distinct !DICompileUnit(language: DW_LANG_C99, file: !77, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!77 = !DIFile(filename: "../modsi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "ada583aff17540d2228ce14dc879fdc8")
!78 = distinct !DICompileUnit(language: DW_LANG_C99, file: !79, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!79 = !DIFile(filename: "../modti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "7d8393bf5eb9f0ba6dd3cb5fd0d18b1c")
!80 = distinct !DICompileUnit(language: DW_LANG_C99, file: !81, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!81 = !DIFile(filename: "../mulvdi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "bb6aa1440e4e37fe94db90279d27db10")
!82 = distinct !DICompileUnit(language: DW_LANG_C99, file: !83, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!83 = !DIFile(filename: "../mulvsi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "32cd947949fac3c039bd0839cd5d7c78")
!84 = distinct !DICompileUnit(language: DW_LANG_C99, file: !85, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!85 = !DIFile(filename: "../mulvti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "600972d5762784972446ff2942320803")
!86 = distinct !DICompileUnit(language: DW_LANG_C99, file: !87, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!87 = !DIFile(filename: "../paritydi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "bd9549e31bcebf1c2265048ea6f18a77")
!88 = distinct !DICompileUnit(language: DW_LANG_C99, file: !89, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!89 = !DIFile(filename: "../paritysi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "235e89e1ac3c55fb43879550247ea25b")
!90 = distinct !DICompileUnit(language: DW_LANG_C99, file: !91, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!91 = !DIFile(filename: "../parityti2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "731d722977e9d8c0cd1987cb790d412a")
!92 = distinct !DICompileUnit(language: DW_LANG_C99, file: !93, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!93 = !DIFile(filename: "../popcountdi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "05f001da7fc478c773612fd707769c2a")
!94 = distinct !DICompileUnit(language: DW_LANG_C99, file: !95, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!95 = !DIFile(filename: "../popcountsi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "f9ebedb2d8810ee5a54fff38e1b09d64")
!96 = distinct !DICompileUnit(language: DW_LANG_C99, file: !97, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!97 = !DIFile(filename: "../popcountti2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "cc3baf5a1f58193aeafb2e81bae65208")
!98 = distinct !DICompileUnit(language: DW_LANG_C99, file: !99, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!99 = !DIFile(filename: "../subvdi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "5774ab7a3a8e168deb55531047d6a873")
!100 = distinct !DICompileUnit(language: DW_LANG_C99, file: !101, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!101 = !DIFile(filename: "../subvsi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "c9558a85e8fabce36f42a29933bd87e9")
!102 = distinct !DICompileUnit(language: DW_LANG_C99, file: !103, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!103 = !DIFile(filename: "../subvti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "ae43c388730e95c5ad9b20d37f73fd82")
!104 = distinct !DICompileUnit(language: DW_LANG_C99, file: !105, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!105 = !DIFile(filename: "../ucmpdi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "79f778ef54939446d175079e19d07756")
!106 = distinct !DICompileUnit(language: DW_LANG_C99, file: !107, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!107 = !DIFile(filename: "../ucmpti2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "d30b659e82f7851c826242cd1de6f293")
!108 = distinct !DICompileUnit(language: DW_LANG_C99, file: !109, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!109 = !DIFile(filename: "../udivdi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "580a28989090b62fc3d261faa6e31a6b")
!110 = distinct !DICompileUnit(language: DW_LANG_C99, file: !111, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!111 = !DIFile(filename: "../udivmoddi4.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "eca4b147be989cda91330ba5b56ed879")
!112 = distinct !DICompileUnit(language: DW_LANG_C99, file: !113, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!113 = !DIFile(filename: "../udivmodsi4.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "c0341684574a20dbcfbe4df0ab9f8538")
!114 = distinct !DICompileUnit(language: DW_LANG_C99, file: !115, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!115 = !DIFile(filename: "../udivmodti4.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "876858111b283249167fa6a71cc4682f")
!116 = distinct !DICompileUnit(language: DW_LANG_C99, file: !117, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!117 = !DIFile(filename: "../udivsi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "b74987a973aededf95faab34db33f58a")
!118 = distinct !DICompileUnit(language: DW_LANG_C99, file: !119, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!119 = !DIFile(filename: "../udivti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "c9304f2e77edc1023290a4f40073f6f7")
!120 = distinct !DICompileUnit(language: DW_LANG_C99, file: !121, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!121 = !DIFile(filename: "../umoddi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "1a99e635325595a81040fb97dab88295")
!122 = distinct !DICompileUnit(language: DW_LANG_C99, file: !123, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!123 = !DIFile(filename: "../umodsi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "ce74ac33cd2bd170a84f43824cae8961")
!124 = distinct !DICompileUnit(language: DW_LANG_C99, file: !125, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!125 = !DIFile(filename: "../umodti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "f900660feeec718da080f01b23c74384")
!126 = distinct !DICompileUnit(language: DW_LANG_C99, file: !127, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!127 = !DIFile(filename: "../memory.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsstd/buildarmv4", checksumkind: CSK_MD5, checksum: "fa9c872a007b30a353222cd13b38538d")
!128 = !{!"clang version 14.0.6 (git@github.com:RTS-SYSU/LLVM-TA.git b7f9c4ccdebc6c37532ddd772889e5f0ff989c79)"}
!129 = !{!"clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)"}
!130 = !{i32 7, !"Dwarf Version", i32 5}
!131 = !{i32 2, !"Debug Info Version", i32 3}
!132 = !{i32 1, !"wchar_size", i32 4}
!133 = !{i32 1, !"min_enum_size", i32 4}
!134 = !{i32 1, !"branch-target-enforcement", i32 0}
!135 = !{i32 1, !"sign-return-address", i32 0}
!136 = !{i32 1, !"sign-return-address-all", i32 0}
!137 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!138 = !{i32 7, !"frame-pointer", i32 2}
!139 = distinct !DISubprogram(name: "complex_updates_init", scope: !7, file: !7, line: 58, type: !140, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !142)
!140 = !DISubroutineType(types: !141)
!141 = !{null}
!142 = !{}
!143 = !DILocalVariable(name: "x", scope: !139, file: !7, line: 61, type: !144)
!144 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !9)
!145 = !DILocation(line: 61, column: 18, scope: !139)
!146 = !DILocation(line: 63, column: 3, scope: !139)
!147 = !DILocalVariable(name: "i", scope: !139, file: !7, line: 60, type: !148)
!148 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!149 = !DILocation(line: 0, scope: !139)
!150 = !DILocation(line: 68, column: 9, scope: !151)
!151 = distinct !DILexicalBlock(scope: !139, file: !7, line: 68, column: 3)
!152 = !DILocation(line: 0, scope: !151)
!153 = !DILocation(line: 68, column: 19, scope: !154)
!154 = distinct !DILexicalBlock(scope: !151, file: !7, line: 68, column: 3)
!155 = !DILocation(line: 68, column: 3, scope: !151)
!156 = !DILocation(line: 69, column: 31, scope: !157)
!157 = distinct !DILexicalBlock(scope: !154, file: !7, line: 68, column: 31)
!158 = !DILocation(line: 69, column: 5, scope: !157)
!159 = !DILocation(line: 69, column: 28, scope: !157)
!160 = !DILocation(line: 70, column: 31, scope: !157)
!161 = !DILocation(line: 70, column: 5, scope: !157)
!162 = !DILocation(line: 70, column: 28, scope: !157)
!163 = !DILocation(line: 71, column: 31, scope: !157)
!164 = !DILocation(line: 71, column: 5, scope: !157)
!165 = !DILocation(line: 71, column: 28, scope: !157)
!166 = !DILocation(line: 72, column: 31, scope: !157)
!167 = !DILocation(line: 72, column: 5, scope: !157)
!168 = !DILocation(line: 72, column: 28, scope: !157)
!169 = !DILocation(line: 73, column: 3, scope: !157)
!170 = !DILocation(line: 68, column: 26, scope: !154)
!171 = !DILocation(line: 68, column: 3, scope: !154)
!172 = distinct !{!172, !155, !173, !174}
!173 = !DILocation(line: 73, column: 3, scope: !151)
!174 = !{!"llvm.loop.mustprogress"}
!175 = !DILocation(line: 74, column: 1, scope: !139)
!176 = distinct !DISubprogram(name: "complex_updates_pin_down", scope: !7, file: !7, line: 77, type: !177, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !142)
!177 = !DISubroutineType(types: !178)
!178 = !{null, !179, !179, !179, !179}
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 32)
!180 = !DILocalVariable(name: "pa", arg: 1, scope: !176, file: !7, line: 77, type: !179)
!181 = !DILocation(line: 0, scope: !176)
!182 = !DILocalVariable(name: "pb", arg: 2, scope: !176, file: !7, line: 77, type: !179)
!183 = !DILocalVariable(name: "pc", arg: 3, scope: !176, file: !7, line: 77, type: !179)
!184 = !DILocalVariable(name: "pd", arg: 4, scope: !176, file: !7, line: 77, type: !179)
!185 = !DILocalVariable(name: "i", scope: !176, file: !7, line: 79, type: !148)
!186 = !DILocation(line: 82, column: 9, scope: !187)
!187 = distinct !DILexicalBlock(scope: !176, file: !7, line: 82, column: 3)
!188 = !DILocation(line: 0, scope: !187)
!189 = !DILocation(line: 82, column: 18, scope: !190)
!190 = distinct !DILexicalBlock(scope: !187, file: !7, line: 82, column: 3)
!191 = !DILocation(line: 82, column: 3, scope: !187)
!192 = !DILocation(line: 83, column: 8, scope: !193)
!193 = distinct !DILexicalBlock(scope: !190, file: !7, line: 82, column: 29)
!194 = !DILocation(line: 83, column: 11, scope: !193)
!195 = !DILocation(line: 84, column: 11, scope: !193)
!196 = !DILocation(line: 85, column: 8, scope: !193)
!197 = !DILocation(line: 85, column: 11, scope: !193)
!198 = !DILocation(line: 86, column: 11, scope: !193)
!199 = !DILocation(line: 87, column: 8, scope: !193)
!200 = !DILocation(line: 87, column: 11, scope: !193)
!201 = !DILocation(line: 88, column: 11, scope: !193)
!202 = !DILocation(line: 89, column: 8, scope: !193)
!203 = !DILocation(line: 89, column: 11, scope: !193)
!204 = !DILocation(line: 90, column: 11, scope: !193)
!205 = !DILocation(line: 91, column: 3, scope: !193)
!206 = !DILocation(line: 90, column: 8, scope: !193)
!207 = !DILocation(line: 88, column: 8, scope: !193)
!208 = !DILocation(line: 86, column: 8, scope: !193)
!209 = !DILocation(line: 84, column: 8, scope: !193)
!210 = !DILocation(line: 82, column: 24, scope: !190)
!211 = !DILocation(line: 82, column: 3, scope: !190)
!212 = distinct !{!212, !191, !213, !174}
!213 = !DILocation(line: 91, column: 3, scope: !187)
!214 = !DILocation(line: 92, column: 1, scope: !176)
!215 = distinct !DISubprogram(name: "complex_updates_return", scope: !7, file: !7, line: 95, type: !216, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !142)
!216 = !DISubroutineType(types: !217)
!217 = !{!148}
!218 = !DILocalVariable(name: "check_sum", scope: !215, file: !7, line: 97, type: !9)
!219 = !DILocation(line: 0, scope: !215)
!220 = !DILocalVariable(name: "i", scope: !215, file: !7, line: 98, type: !148)
!221 = !DILocation(line: 101, column: 9, scope: !222)
!222 = distinct !DILexicalBlock(scope: !215, file: !7, line: 101, column: 3)
!223 = !DILocation(line: 0, scope: !222)
!224 = !DILocation(line: 101, column: 18, scope: !225)
!225 = distinct !DILexicalBlock(scope: !222, file: !7, line: 101, column: 3)
!226 = !DILocation(line: 101, column: 3, scope: !222)
!227 = !DILocation(line: 102, column: 5, scope: !225)
!228 = !DILocation(line: 102, column: 18, scope: !225)
!229 = !DILocation(line: 102, column: 15, scope: !225)
!230 = !DILocation(line: 101, column: 24, scope: !225)
!231 = !DILocation(line: 101, column: 3, scope: !225)
!232 = distinct !{!232, !226, !233, !174}
!233 = !DILocation(line: 102, column: 39, scope: !222)
!234 = !DILocation(line: 104, column: 22, scope: !215)
!235 = !DILocation(line: 104, column: 3, scope: !215)
!236 = distinct !DISubprogram(name: "complex_updates_main", scope: !7, file: !7, line: 112, type: !140, scopeLine: 113, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !142)
!237 = !DILocalVariable(name: "p_a", scope: !236, file: !7, line: 114, type: !179)
!238 = !DILocation(line: 0, scope: !236)
!239 = !DILocalVariable(name: "p_b", scope: !236, file: !7, line: 114, type: !179)
!240 = !DILocalVariable(name: "p_c", scope: !236, file: !7, line: 115, type: !179)
!241 = !DILocalVariable(name: "p_d", scope: !236, file: !7, line: 115, type: !179)
!242 = !DILocalVariable(name: "i", scope: !236, file: !7, line: 116, type: !148)
!243 = !DILocation(line: 119, column: 9, scope: !244)
!244 = distinct !DILexicalBlock(scope: !236, file: !7, line: 119, column: 3)
!245 = !DILocation(line: 0, scope: !244)
!246 = !DILocation(line: 119, column: 19, scope: !247)
!247 = distinct !DILexicalBlock(scope: !244, file: !7, line: 119, column: 3)
!248 = !DILocation(line: 119, column: 3, scope: !244)
!249 = !DILocation(line: 120, column: 19, scope: !250)
!250 = distinct !DILexicalBlock(scope: !247, file: !7, line: 119, column: 38)
!251 = !DILocation(line: 120, column: 15, scope: !250)
!252 = !DILocation(line: 120, column: 28, scope: !250)
!253 = !DILocation(line: 120, column: 24, scope: !250)
!254 = !DILocation(line: 120, column: 37, scope: !250)
!255 = !DILocation(line: 120, column: 33, scope: !250)
!256 = !DILocation(line: 120, column: 22, scope: !250)
!257 = !DILocation(line: 120, column: 13, scope: !250)
!258 = !DILocation(line: 121, column: 24, scope: !250)
!259 = !DILocation(line: 121, column: 33, scope: !250)
!260 = !DILocation(line: 121, column: 9, scope: !250)
!261 = !DILocation(line: 121, column: 12, scope: !250)
!262 = !DILocation(line: 123, column: 15, scope: !250)
!263 = !DILocation(line: 123, column: 24, scope: !250)
!264 = !DILocation(line: 123, column: 37, scope: !250)
!265 = !DILocation(line: 123, column: 33, scope: !250)
!266 = !DILocation(line: 123, column: 22, scope: !250)
!267 = !DILocation(line: 123, column: 13, scope: !250)
!268 = !DILocation(line: 124, column: 24, scope: !250)
!269 = !DILocation(line: 124, column: 33, scope: !250)
!270 = !DILocation(line: 124, column: 12, scope: !250)
!271 = !DILocation(line: 125, column: 3, scope: !250)
!272 = !DILocation(line: 124, column: 9, scope: !250)
!273 = !DILocation(line: 124, column: 37, scope: !250)
!274 = !DILocation(line: 123, column: 19, scope: !250)
!275 = !DILocation(line: 119, column: 26, scope: !247)
!276 = !DILocation(line: 119, column: 33, scope: !247)
!277 = !DILocation(line: 119, column: 3, scope: !247)
!278 = distinct !{!278, !248, !279, !174}
!279 = !DILocation(line: 125, column: 3, scope: !244)
!280 = !DILocation(line: 127, column: 1, scope: !236)
!281 = distinct !DISubprogram(name: "main", scope: !7, file: !7, line: 129, type: !216, scopeLine: 130, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !142)
!282 = !DILocation(line: 131, column: 3, scope: !281)
!283 = !DILocation(line: 133, column: 3, scope: !281)
!284 = !DILocation(line: 135, column: 10, scope: !281)
!285 = !DILocation(line: 135, column: 3, scope: !281)
!286 = distinct !DISubprogram(name: "__absvdi2", scope: !17, file: !17, line: 22, type: !287, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !16, retainedNodes: !142)
!287 = !DISubroutineType(types: !142)
!288 = !DILocation(line: 25, column: 11, scope: !286)
!289 = !DILocation(line: 25, column: 9, scope: !286)
!290 = !DILocation(line: 26, column: 9, scope: !286)
!291 = !DILocation(line: 28, column: 20, scope: !286)
!292 = !DILocation(line: 28, column: 5, scope: !286)
!293 = distinct !DISubprogram(name: "compilerrt_abort_impl", scope: !69, file: !69, line: 57, type: !287, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !68, retainedNodes: !142)
!294 = !DILocation(line: 59, column: 1, scope: !293)
!295 = distinct !DISubprogram(name: "__absvsi2", scope: !19, file: !19, line: 22, type: !287, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !18, retainedNodes: !142)
!296 = !DILocation(line: 25, column: 11, scope: !295)
!297 = !DILocation(line: 25, column: 9, scope: !295)
!298 = !DILocation(line: 26, column: 9, scope: !295)
!299 = !DILocation(line: 28, column: 20, scope: !295)
!300 = !DILocation(line: 28, column: 5, scope: !295)
!301 = distinct !DISubprogram(name: "__addvdi3", scope: !23, file: !23, line: 22, type: !287, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !22, retainedNodes: !142)
!302 = !DILocation(line: 24, column: 27, scope: !301)
!303 = !DILocation(line: 25, column: 11, scope: !301)
!304 = !DILocation(line: 25, column: 9, scope: !301)
!305 = !DILocation(line: 27, column: 15, scope: !301)
!306 = !DILocation(line: 27, column: 13, scope: !301)
!307 = !DILocation(line: 28, column: 13, scope: !301)
!308 = !DILocation(line: 29, column: 5, scope: !301)
!309 = !DILocation(line: 32, column: 15, scope: !301)
!310 = !DILocation(line: 32, column: 13, scope: !301)
!311 = !DILocation(line: 33, column: 13, scope: !301)
!312 = !DILocation(line: 35, column: 5, scope: !301)
!313 = distinct !DISubprogram(name: "__addvsi3", scope: !25, file: !25, line: 22, type: !287, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !24, retainedNodes: !142)
!314 = !DILocation(line: 24, column: 27, scope: !313)
!315 = !DILocation(line: 25, column: 11, scope: !313)
!316 = !DILocation(line: 25, column: 9, scope: !313)
!317 = !DILocation(line: 27, column: 15, scope: !313)
!318 = !DILocation(line: 27, column: 13, scope: !313)
!319 = !DILocation(line: 28, column: 13, scope: !313)
!320 = !DILocation(line: 29, column: 5, scope: !313)
!321 = !DILocation(line: 32, column: 15, scope: !313)
!322 = !DILocation(line: 32, column: 13, scope: !313)
!323 = !DILocation(line: 33, column: 13, scope: !313)
!324 = !DILocation(line: 35, column: 5, scope: !313)
!325 = distinct !DISubprogram(name: "__ashldi3", scope: !29, file: !29, line: 24, type: !287, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !28, retainedNodes: !142)
!326 = !DILocation(line: 29, column: 11, scope: !325)
!327 = !DILocation(line: 29, column: 15, scope: !325)
!328 = !DILocation(line: 30, column: 11, scope: !325)
!329 = !DILocation(line: 30, column: 9, scope: !325)
!330 = !DILocation(line: 32, column: 18, scope: !325)
!331 = !DILocation(line: 32, column: 22, scope: !325)
!332 = !DILocation(line: 33, column: 33, scope: !325)
!333 = !DILocation(line: 33, column: 43, scope: !325)
!334 = !DILocation(line: 33, column: 37, scope: !325)
!335 = !DILocation(line: 33, column: 16, scope: !325)
!336 = !DILocation(line: 33, column: 18, scope: !325)
!337 = !DILocation(line: 33, column: 23, scope: !325)
!338 = !DILocation(line: 34, column: 5, scope: !325)
!339 = !DILocation(line: 37, column: 15, scope: !325)
!340 = !DILocation(line: 37, column: 13, scope: !325)
!341 = !DILocation(line: 38, column: 13, scope: !325)
!342 = !DILocation(line: 39, column: 33, scope: !325)
!343 = !DILocation(line: 39, column: 37, scope: !325)
!344 = !DILocation(line: 39, column: 18, scope: !325)
!345 = !DILocation(line: 39, column: 23, scope: !325)
!346 = !DILocation(line: 40, column: 32, scope: !325)
!347 = !DILocation(line: 40, column: 34, scope: !325)
!348 = !DILocation(line: 40, column: 39, scope: !325)
!349 = !DILocation(line: 40, column: 56, scope: !325)
!350 = !DILocation(line: 40, column: 77, scope: !325)
!351 = !DILocation(line: 40, column: 60, scope: !325)
!352 = !DILocation(line: 40, column: 45, scope: !325)
!353 = !DILocation(line: 40, column: 16, scope: !325)
!354 = !DILocation(line: 40, column: 18, scope: !325)
!355 = !DILocation(line: 40, column: 23, scope: !325)
!356 = !DILocation(line: 42, column: 19, scope: !325)
!357 = !DILocation(line: 42, column: 5, scope: !325)
!358 = !DILocation(line: 0, scope: !325)
!359 = !DILocation(line: 43, column: 1, scope: !325)
!360 = distinct !DISubprogram(name: "__ashrdi3", scope: !33, file: !33, line: 24, type: !287, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !32, retainedNodes: !142)
!361 = !DILocation(line: 29, column: 11, scope: !360)
!362 = !DILocation(line: 29, column: 15, scope: !360)
!363 = !DILocation(line: 30, column: 11, scope: !360)
!364 = !DILocation(line: 30, column: 9, scope: !360)
!365 = !DILocation(line: 33, column: 31, scope: !360)
!366 = !DILocation(line: 33, column: 33, scope: !360)
!367 = !DILocation(line: 33, column: 38, scope: !360)
!368 = !DILocation(line: 33, column: 16, scope: !360)
!369 = !DILocation(line: 33, column: 18, scope: !360)
!370 = !DILocation(line: 33, column: 23, scope: !360)
!371 = !DILocation(line: 34, column: 30, scope: !360)
!372 = !DILocation(line: 34, column: 32, scope: !360)
!373 = !DILocation(line: 34, column: 43, scope: !360)
!374 = !DILocation(line: 34, column: 37, scope: !360)
!375 = !DILocation(line: 34, column: 18, scope: !360)
!376 = !DILocation(line: 34, column: 22, scope: !360)
!377 = !DILocation(line: 35, column: 5, scope: !360)
!378 = !DILocation(line: 38, column: 15, scope: !360)
!379 = !DILocation(line: 38, column: 13, scope: !360)
!380 = !DILocation(line: 39, column: 13, scope: !360)
!381 = !DILocation(line: 40, column: 32, scope: !360)
!382 = !DILocation(line: 40, column: 34, scope: !360)
!383 = !DILocation(line: 40, column: 39, scope: !360)
!384 = !DILocation(line: 40, column: 16, scope: !360)
!385 = !DILocation(line: 40, column: 18, scope: !360)
!386 = !DILocation(line: 40, column: 24, scope: !360)
!387 = !DILocation(line: 41, column: 31, scope: !360)
!388 = !DILocation(line: 41, column: 33, scope: !360)
!389 = !DILocation(line: 41, column: 55, scope: !360)
!390 = !DILocation(line: 41, column: 38, scope: !360)
!391 = !DILocation(line: 41, column: 72, scope: !360)
!392 = !DILocation(line: 41, column: 76, scope: !360)
!393 = !DILocation(line: 41, column: 61, scope: !360)
!394 = !DILocation(line: 41, column: 18, scope: !360)
!395 = !DILocation(line: 41, column: 22, scope: !360)
!396 = !DILocation(line: 43, column: 19, scope: !360)
!397 = !DILocation(line: 43, column: 5, scope: !360)
!398 = !DILocation(line: 0, scope: !360)
!399 = !DILocation(line: 44, column: 1, scope: !360)
!400 = distinct !DISubprogram(name: "__clzdi2", scope: !37, file: !37, line: 22, type: !287, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !36, retainedNodes: !142)
!401 = !DILocation(line: 25, column: 7, scope: !400)
!402 = !DILocation(line: 25, column: 11, scope: !400)
!403 = !DILocation(line: 26, column: 26, scope: !400)
!404 = !DILocation(line: 26, column: 28, scope: !400)
!405 = !DILocation(line: 26, column: 33, scope: !400)
!406 = !DILocation(line: 27, column: 29, scope: !400)
!407 = !DILocation(line: 27, column: 31, scope: !400)
!408 = !DILocation(line: 27, column: 49, scope: !400)
!409 = !DILocation(line: 27, column: 42, scope: !400)
!410 = !DILocation(line: 27, column: 12, scope: !400)
!411 = !{i32 0, i32 33}
!412 = !DILocation(line: 28, column: 15, scope: !400)
!413 = !DILocation(line: 27, column: 59, scope: !400)
!414 = !DILocation(line: 27, column: 5, scope: !400)
!415 = distinct !DISubprogram(name: "__clzsi2", scope: !39, file: !39, line: 22, type: !287, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !38, retainedNodes: !142)
!416 = !DILocation(line: 25, column: 34, scope: !415)
!417 = !DILocation(line: 25, column: 40, scope: !415)
!418 = !DILocation(line: 26, column: 14, scope: !415)
!419 = !DILocation(line: 26, column: 7, scope: !415)
!420 = !DILocation(line: 29, column: 13, scope: !415)
!421 = !DILocation(line: 29, column: 23, scope: !415)
!422 = !DILocation(line: 29, column: 29, scope: !415)
!423 = !DILocation(line: 30, column: 13, scope: !415)
!424 = !DILocation(line: 30, column: 7, scope: !415)
!425 = !DILocation(line: 31, column: 7, scope: !415)
!426 = !DILocation(line: 33, column: 13, scope: !415)
!427 = !DILocation(line: 33, column: 21, scope: !415)
!428 = !DILocation(line: 33, column: 27, scope: !415)
!429 = !DILocation(line: 34, column: 13, scope: !415)
!430 = !DILocation(line: 34, column: 7, scope: !415)
!431 = !DILocation(line: 35, column: 7, scope: !415)
!432 = !DILocation(line: 37, column: 13, scope: !415)
!433 = !DILocation(line: 37, column: 20, scope: !415)
!434 = !DILocation(line: 37, column: 26, scope: !415)
!435 = !DILocation(line: 38, column: 13, scope: !415)
!436 = !DILocation(line: 38, column: 7, scope: !415)
!437 = !DILocation(line: 39, column: 7, scope: !415)
!438 = !DILocation(line: 52, column: 20, scope: !415)
!439 = !DILocation(line: 52, column: 37, scope: !415)
!440 = !DILocation(line: 52, column: 25, scope: !415)
!441 = !DILocation(line: 52, column: 14, scope: !415)
!442 = !DILocation(line: 52, column: 5, scope: !415)
!443 = distinct !DISubprogram(name: "__cmpdi2", scope: !43, file: !43, line: 23, type: !287, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !42, retainedNodes: !142)
!444 = !DILocation(line: 26, column: 7, scope: !443)
!445 = !DILocation(line: 26, column: 11, scope: !443)
!446 = !DILocation(line: 28, column: 7, scope: !443)
!447 = !DILocation(line: 28, column: 11, scope: !443)
!448 = !DILocation(line: 29, column: 11, scope: !443)
!449 = !DILocation(line: 29, column: 13, scope: !443)
!450 = !DILocation(line: 29, column: 22, scope: !443)
!451 = !DILocation(line: 29, column: 24, scope: !443)
!452 = !DILocation(line: 29, column: 18, scope: !443)
!453 = !DILocation(line: 29, column: 9, scope: !443)
!454 = !DILocation(line: 30, column: 9, scope: !443)
!455 = !DILocation(line: 31, column: 11, scope: !443)
!456 = !DILocation(line: 31, column: 13, scope: !443)
!457 = !DILocation(line: 31, column: 22, scope: !443)
!458 = !DILocation(line: 31, column: 24, scope: !443)
!459 = !DILocation(line: 31, column: 18, scope: !443)
!460 = !DILocation(line: 31, column: 9, scope: !443)
!461 = !DILocation(line: 32, column: 9, scope: !443)
!462 = !DILocation(line: 33, column: 13, scope: !443)
!463 = !DILocation(line: 33, column: 23, scope: !443)
!464 = !DILocation(line: 33, column: 17, scope: !443)
!465 = !DILocation(line: 33, column: 9, scope: !443)
!466 = !DILocation(line: 34, column: 9, scope: !443)
!467 = !DILocation(line: 35, column: 13, scope: !443)
!468 = !DILocation(line: 35, column: 23, scope: !443)
!469 = !DILocation(line: 35, column: 17, scope: !443)
!470 = !DILocation(line: 35, column: 9, scope: !443)
!471 = !DILocation(line: 36, column: 9, scope: !443)
!472 = !DILocation(line: 37, column: 5, scope: !443)
!473 = !DILocation(line: 0, scope: !443)
!474 = !DILocation(line: 38, column: 1, scope: !443)
!475 = distinct !DISubprogram(name: "__aeabi_lcmp", scope: !43, file: !43, line: 46, type: !287, scopeLine: 47, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !42, retainedNodes: !142)
!476 = !DILocation(line: 48, column: 9, scope: !475)
!477 = !DILocation(line: 48, column: 24, scope: !475)
!478 = !DILocation(line: 48, column: 2, scope: !475)
!479 = distinct !DISubprogram(name: "__ctzdi2", scope: !47, file: !47, line: 22, type: !287, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !46, retainedNodes: !142)
!480 = !DILocation(line: 25, column: 7, scope: !479)
!481 = !DILocation(line: 25, column: 11, scope: !479)
!482 = !DILocation(line: 26, column: 28, scope: !479)
!483 = !DILocation(line: 26, column: 32, scope: !479)
!484 = !DILocation(line: 27, column: 29, scope: !479)
!485 = !DILocation(line: 27, column: 31, scope: !479)
!486 = !DILocation(line: 27, column: 41, scope: !479)
!487 = !DILocation(line: 27, column: 12, scope: !479)
!488 = !DILocation(line: 28, column: 18, scope: !479)
!489 = !DILocation(line: 27, column: 59, scope: !479)
!490 = !DILocation(line: 27, column: 5, scope: !479)
!491 = distinct !DISubprogram(name: "__ctzsi2", scope: !49, file: !49, line: 22, type: !287, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !142)
!492 = !DILocation(line: 25, column: 20, scope: !491)
!493 = !DILocation(line: 25, column: 34, scope: !491)
!494 = !DILocation(line: 25, column: 40, scope: !491)
!495 = !DILocation(line: 26, column: 7, scope: !491)
!496 = !DILocation(line: 29, column: 13, scope: !491)
!497 = !DILocation(line: 29, column: 23, scope: !491)
!498 = !DILocation(line: 29, column: 29, scope: !491)
!499 = !DILocation(line: 30, column: 7, scope: !491)
!500 = !DILocation(line: 31, column: 7, scope: !491)
!501 = !DILocation(line: 33, column: 13, scope: !491)
!502 = !DILocation(line: 33, column: 21, scope: !491)
!503 = !DILocation(line: 33, column: 27, scope: !491)
!504 = !DILocation(line: 34, column: 7, scope: !491)
!505 = !DILocation(line: 35, column: 7, scope: !491)
!506 = !DILocation(line: 37, column: 13, scope: !491)
!507 = !DILocation(line: 37, column: 20, scope: !491)
!508 = !DILocation(line: 37, column: 26, scope: !491)
!509 = !DILocation(line: 38, column: 7, scope: !491)
!510 = !DILocation(line: 40, column: 7, scope: !491)
!511 = !DILocation(line: 56, column: 25, scope: !491)
!512 = !DILocation(line: 56, column: 20, scope: !491)
!513 = !DILocation(line: 56, column: 44, scope: !491)
!514 = !DILocation(line: 56, column: 32, scope: !491)
!515 = !DILocation(line: 56, column: 14, scope: !491)
!516 = !DILocation(line: 56, column: 5, scope: !491)
!517 = distinct !DISubprogram(name: "__divdi3", scope: !53, file: !53, line: 20, type: !287, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !52, retainedNodes: !142)
!518 = !DILocation(line: 23, column: 20, scope: !517)
!519 = !DILocation(line: 24, column: 20, scope: !517)
!520 = !DILocation(line: 25, column: 12, scope: !517)
!521 = !DILocation(line: 25, column: 19, scope: !517)
!522 = !DILocation(line: 26, column: 12, scope: !517)
!523 = !DILocation(line: 26, column: 19, scope: !517)
!524 = !DILocation(line: 27, column: 9, scope: !517)
!525 = !DILocation(line: 28, column: 13, scope: !517)
!526 = !DILocation(line: 28, column: 44, scope: !517)
!527 = !DILocation(line: 28, column: 51, scope: !517)
!528 = !DILocation(line: 28, column: 5, scope: !517)
!529 = distinct !DISubprogram(name: "__udivmoddi4", scope: !111, file: !111, line: 24, type: !287, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !110, retainedNodes: !142)
!530 = !DILocation(line: 29, column: 7, scope: !529)
!531 = !DILocation(line: 29, column: 11, scope: !529)
!532 = !DILocation(line: 31, column: 7, scope: !529)
!533 = !DILocation(line: 31, column: 11, scope: !529)
!534 = !DILocation(line: 36, column: 11, scope: !529)
!535 = !DILocation(line: 36, column: 13, scope: !529)
!536 = !DILocation(line: 36, column: 18, scope: !529)
!537 = !DILocation(line: 36, column: 9, scope: !529)
!538 = !DILocation(line: 38, column: 15, scope: !529)
!539 = !DILocation(line: 38, column: 17, scope: !529)
!540 = !DILocation(line: 38, column: 22, scope: !529)
!541 = !DILocation(line: 38, column: 13, scope: !529)
!542 = !DILocation(line: 44, column: 17, scope: !529)
!543 = !DILocation(line: 45, column: 28, scope: !529)
!544 = !DILocation(line: 45, column: 38, scope: !529)
!545 = !DILocation(line: 45, column: 32, scope: !529)
!546 = !DILocation(line: 45, column: 24, scope: !529)
!547 = !DILocation(line: 45, column: 22, scope: !529)
!548 = !DILocation(line: 45, column: 17, scope: !529)
!549 = !DILocation(line: 46, column: 24, scope: !529)
!550 = !DILocation(line: 46, column: 34, scope: !529)
!551 = !DILocation(line: 46, column: 28, scope: !529)
!552 = !DILocation(line: 46, column: 20, scope: !529)
!553 = !DILocation(line: 46, column: 13, scope: !529)
!554 = !DILocation(line: 52, column: 13, scope: !529)
!555 = !DILocation(line: 53, column: 24, scope: !529)
!556 = !DILocation(line: 53, column: 20, scope: !529)
!557 = !DILocation(line: 53, column: 18, scope: !529)
!558 = !DILocation(line: 53, column: 13, scope: !529)
!559 = !DILocation(line: 54, column: 9, scope: !529)
!560 = !DILocation(line: 57, column: 13, scope: !529)
!561 = !DILocation(line: 57, column: 17, scope: !529)
!562 = !DILocation(line: 57, column: 9, scope: !529)
!563 = !DILocation(line: 59, column: 15, scope: !529)
!564 = !DILocation(line: 59, column: 17, scope: !529)
!565 = !DILocation(line: 59, column: 22, scope: !529)
!566 = !DILocation(line: 59, column: 13, scope: !529)
!567 = !DILocation(line: 65, column: 17, scope: !529)
!568 = !DILocation(line: 66, column: 26, scope: !529)
!569 = !DILocation(line: 66, column: 28, scope: !529)
!570 = !DILocation(line: 66, column: 39, scope: !529)
!571 = !DILocation(line: 66, column: 33, scope: !529)
!572 = !DILocation(line: 66, column: 24, scope: !529)
!573 = !DILocation(line: 66, column: 22, scope: !529)
!574 = !DILocation(line: 66, column: 17, scope: !529)
!575 = !DILocation(line: 67, column: 22, scope: !529)
!576 = !DILocation(line: 67, column: 24, scope: !529)
!577 = !DILocation(line: 67, column: 35, scope: !529)
!578 = !DILocation(line: 67, column: 29, scope: !529)
!579 = !DILocation(line: 67, column: 20, scope: !529)
!580 = !DILocation(line: 67, column: 13, scope: !529)
!581 = !DILocation(line: 70, column: 17, scope: !529)
!582 = !DILocation(line: 70, column: 21, scope: !529)
!583 = !DILocation(line: 70, column: 13, scope: !529)
!584 = !DILocation(line: 76, column: 17, scope: !529)
!585 = !DILocation(line: 78, column: 30, scope: !529)
!586 = !DILocation(line: 78, column: 32, scope: !529)
!587 = !DILocation(line: 78, column: 41, scope: !529)
!588 = !DILocation(line: 78, column: 43, scope: !529)
!589 = !DILocation(line: 78, column: 37, scope: !529)
!590 = !DILocation(line: 78, column: 19, scope: !529)
!591 = !DILocation(line: 78, column: 21, scope: !529)
!592 = !DILocation(line: 78, column: 26, scope: !529)
!593 = !DILocation(line: 79, column: 21, scope: !529)
!594 = !DILocation(line: 79, column: 25, scope: !529)
!595 = !DILocation(line: 80, column: 26, scope: !529)
!596 = !DILocation(line: 80, column: 22, scope: !529)
!597 = !DILocation(line: 81, column: 13, scope: !529)
!598 = !DILocation(line: 82, column: 22, scope: !529)
!599 = !DILocation(line: 82, column: 24, scope: !529)
!600 = !DILocation(line: 82, column: 33, scope: !529)
!601 = !DILocation(line: 82, column: 35, scope: !529)
!602 = !DILocation(line: 82, column: 29, scope: !529)
!603 = !DILocation(line: 82, column: 20, scope: !529)
!604 = !DILocation(line: 82, column: 13, scope: !529)
!605 = !DILocation(line: 88, column: 16, scope: !529)
!606 = !DILocation(line: 88, column: 18, scope: !529)
!607 = !DILocation(line: 88, column: 28, scope: !529)
!608 = !DILocation(line: 88, column: 30, scope: !529)
!609 = !DILocation(line: 88, column: 35, scope: !529)
!610 = !DILocation(line: 88, column: 23, scope: !529)
!611 = !DILocation(line: 88, column: 41, scope: !529)
!612 = !DILocation(line: 88, column: 13, scope: !529)
!613 = !DILocation(line: 90, column: 17, scope: !529)
!614 = !DILocation(line: 92, column: 31, scope: !529)
!615 = !DILocation(line: 92, column: 21, scope: !529)
!616 = !DILocation(line: 92, column: 25, scope: !529)
!617 = !DILocation(line: 93, column: 30, scope: !529)
!618 = !DILocation(line: 93, column: 32, scope: !529)
!619 = !DILocation(line: 93, column: 42, scope: !529)
!620 = !DILocation(line: 93, column: 44, scope: !529)
!621 = !DILocation(line: 93, column: 49, scope: !529)
!622 = !DILocation(line: 93, column: 37, scope: !529)
!623 = !DILocation(line: 93, column: 19, scope: !529)
!624 = !DILocation(line: 93, column: 21, scope: !529)
!625 = !DILocation(line: 93, column: 26, scope: !529)
!626 = !DILocation(line: 94, column: 26, scope: !529)
!627 = !DILocation(line: 94, column: 22, scope: !529)
!628 = !DILocation(line: 95, column: 13, scope: !529)
!629 = !DILocation(line: 96, column: 22, scope: !529)
!630 = !DILocation(line: 96, column: 24, scope: !529)
!631 = !DILocation(line: 96, column: 48, scope: !529)
!632 = !DILocation(line: 96, column: 50, scope: !529)
!633 = !DILocation(line: 96, column: 32, scope: !529)
!634 = !DILocation(line: 96, column: 29, scope: !529)
!635 = !DILocation(line: 96, column: 20, scope: !529)
!636 = !DILocation(line: 96, column: 13, scope: !529)
!637 = !DILocation(line: 102, column: 30, scope: !529)
!638 = !DILocation(line: 102, column: 32, scope: !529)
!639 = !DILocation(line: 102, column: 14, scope: !529)
!640 = !DILocation(line: 102, column: 56, scope: !529)
!641 = !DILocation(line: 102, column: 58, scope: !529)
!642 = !DILocation(line: 102, column: 40, scope: !529)
!643 = !DILocation(line: 102, column: 38, scope: !529)
!644 = !DILocation(line: 104, column: 16, scope: !529)
!645 = !DILocation(line: 104, column: 13, scope: !529)
!646 = !DILocation(line: 106, column: 16, scope: !529)
!647 = !DILocation(line: 107, column: 26, scope: !529)
!648 = !DILocation(line: 107, column: 22, scope: !529)
!649 = !DILocation(line: 107, column: 17, scope: !529)
!650 = !DILocation(line: 108, column: 13, scope: !529)
!651 = !DILocation(line: 110, column: 9, scope: !529)
!652 = !DILocation(line: 113, column: 13, scope: !529)
!653 = !DILocation(line: 113, column: 17, scope: !529)
!654 = !DILocation(line: 114, column: 24, scope: !529)
!655 = !DILocation(line: 114, column: 45, scope: !529)
!656 = !DILocation(line: 114, column: 28, scope: !529)
!657 = !DILocation(line: 114, column: 11, scope: !529)
!658 = !DILocation(line: 114, column: 13, scope: !529)
!659 = !DILocation(line: 114, column: 18, scope: !529)
!660 = !DILocation(line: 116, column: 22, scope: !529)
!661 = !DILocation(line: 116, column: 24, scope: !529)
!662 = !DILocation(line: 116, column: 29, scope: !529)
!663 = !DILocation(line: 116, column: 11, scope: !529)
!664 = !DILocation(line: 116, column: 13, scope: !529)
!665 = !DILocation(line: 116, column: 18, scope: !529)
!666 = !DILocation(line: 117, column: 22, scope: !529)
!667 = !DILocation(line: 117, column: 24, scope: !529)
!668 = !DILocation(line: 117, column: 46, scope: !529)
!669 = !DILocation(line: 117, column: 29, scope: !529)
!670 = !DILocation(line: 117, column: 60, scope: !529)
!671 = !DILocation(line: 117, column: 64, scope: !529)
!672 = !DILocation(line: 117, column: 53, scope: !529)
!673 = !DILocation(line: 117, column: 13, scope: !529)
!674 = !DILocation(line: 117, column: 17, scope: !529)
!675 = !DILocation(line: 118, column: 5, scope: !529)
!676 = !DILocation(line: 121, column: 15, scope: !529)
!677 = !DILocation(line: 121, column: 17, scope: !529)
!678 = !DILocation(line: 121, column: 22, scope: !529)
!679 = !DILocation(line: 121, column: 13, scope: !529)
!680 = !DILocation(line: 127, column: 22, scope: !529)
!681 = !DILocation(line: 127, column: 43, scope: !529)
!682 = !DILocation(line: 127, column: 17, scope: !529)
!683 = !DILocation(line: 129, column: 21, scope: !529)
!684 = !DILocation(line: 130, column: 32, scope: !529)
!685 = !DILocation(line: 130, column: 43, scope: !529)
!686 = !DILocation(line: 130, column: 47, scope: !529)
!687 = !DILocation(line: 130, column: 36, scope: !529)
!688 = !DILocation(line: 130, column: 28, scope: !529)
!689 = !DILocation(line: 130, column: 26, scope: !529)
!690 = !DILocation(line: 130, column: 21, scope: !529)
!691 = !DILocation(line: 131, column: 25, scope: !529)
!692 = !DILocation(line: 131, column: 29, scope: !529)
!693 = !DILocation(line: 131, column: 21, scope: !529)
!694 = !DILocation(line: 132, column: 30, scope: !529)
!695 = !DILocation(line: 132, column: 21, scope: !529)
!696 = !DILocation(line: 133, column: 40, scope: !529)
!697 = !DILocation(line: 133, column: 22, scope: !529)
!698 = !DILocation(line: 134, column: 30, scope: !529)
!699 = !DILocation(line: 134, column: 32, scope: !529)
!700 = !DILocation(line: 134, column: 37, scope: !529)
!701 = !DILocation(line: 134, column: 19, scope: !529)
!702 = !DILocation(line: 134, column: 21, scope: !529)
!703 = !DILocation(line: 134, column: 26, scope: !529)
!704 = !DILocation(line: 135, column: 30, scope: !529)
!705 = !DILocation(line: 135, column: 32, scope: !529)
!706 = !DILocation(line: 135, column: 54, scope: !529)
!707 = !DILocation(line: 135, column: 37, scope: !529)
!708 = !DILocation(line: 135, column: 68, scope: !529)
!709 = !DILocation(line: 135, column: 72, scope: !529)
!710 = !DILocation(line: 135, column: 61, scope: !529)
!711 = !DILocation(line: 135, column: 21, scope: !529)
!712 = !DILocation(line: 135, column: 25, scope: !529)
!713 = !DILocation(line: 136, column: 26, scope: !529)
!714 = !DILocation(line: 136, column: 17, scope: !529)
!715 = !DILocation(line: 142, column: 55, scope: !529)
!716 = !DILocation(line: 142, column: 37, scope: !529)
!717 = !DILocation(line: 142, column: 35, scope: !529)
!718 = !DILocation(line: 142, column: 78, scope: !529)
!719 = !DILocation(line: 142, column: 80, scope: !529)
!720 = !DILocation(line: 142, column: 62, scope: !529)
!721 = !DILocation(line: 142, column: 60, scope: !529)
!722 = !DILocation(line: 147, column: 20, scope: !529)
!723 = !DILocation(line: 147, column: 17, scope: !529)
!724 = !DILocation(line: 149, column: 21, scope: !529)
!725 = !DILocation(line: 149, column: 25, scope: !529)
!726 = !DILocation(line: 150, column: 32, scope: !529)
!727 = !DILocation(line: 150, column: 19, scope: !529)
!728 = !DILocation(line: 150, column: 21, scope: !529)
!729 = !DILocation(line: 150, column: 26, scope: !529)
!730 = !DILocation(line: 151, column: 19, scope: !529)
!731 = !DILocation(line: 151, column: 21, scope: !529)
!732 = !DILocation(line: 151, column: 26, scope: !529)
!733 = !DILocation(line: 152, column: 29, scope: !529)
!734 = !DILocation(line: 152, column: 31, scope: !529)
!735 = !DILocation(line: 152, column: 21, scope: !529)
!736 = !DILocation(line: 152, column: 25, scope: !529)
!737 = !DILocation(line: 153, column: 13, scope: !529)
!738 = !DILocation(line: 154, column: 25, scope: !529)
!739 = !DILocation(line: 154, column: 22, scope: !529)
!740 = !DILocation(line: 156, column: 21, scope: !529)
!741 = !DILocation(line: 156, column: 25, scope: !529)
!742 = !DILocation(line: 157, column: 32, scope: !529)
!743 = !DILocation(line: 157, column: 53, scope: !529)
!744 = !DILocation(line: 157, column: 36, scope: !529)
!745 = !DILocation(line: 157, column: 19, scope: !529)
!746 = !DILocation(line: 157, column: 21, scope: !529)
!747 = !DILocation(line: 157, column: 26, scope: !529)
!748 = !DILocation(line: 158, column: 30, scope: !529)
!749 = !DILocation(line: 158, column: 32, scope: !529)
!750 = !DILocation(line: 158, column: 37, scope: !529)
!751 = !DILocation(line: 158, column: 19, scope: !529)
!752 = !DILocation(line: 158, column: 21, scope: !529)
!753 = !DILocation(line: 158, column: 26, scope: !529)
!754 = !DILocation(line: 159, column: 30, scope: !529)
!755 = !DILocation(line: 159, column: 32, scope: !529)
!756 = !DILocation(line: 159, column: 54, scope: !529)
!757 = !DILocation(line: 159, column: 37, scope: !529)
!758 = !DILocation(line: 159, column: 68, scope: !529)
!759 = !DILocation(line: 159, column: 72, scope: !529)
!760 = !DILocation(line: 159, column: 61, scope: !529)
!761 = !DILocation(line: 159, column: 21, scope: !529)
!762 = !DILocation(line: 159, column: 25, scope: !529)
!763 = !DILocation(line: 160, column: 13, scope: !529)
!764 = !DILocation(line: 163, column: 31, scope: !529)
!765 = !DILocation(line: 163, column: 53, scope: !529)
!766 = !DILocation(line: 163, column: 35, scope: !529)
!767 = !DILocation(line: 163, column: 21, scope: !529)
!768 = !DILocation(line: 163, column: 25, scope: !529)
!769 = !DILocation(line: 164, column: 31, scope: !529)
!770 = !DILocation(line: 164, column: 33, scope: !529)
!771 = !DILocation(line: 164, column: 56, scope: !529)
!772 = !DILocation(line: 164, column: 38, scope: !529)
!773 = !DILocation(line: 165, column: 33, scope: !529)
!774 = !DILocation(line: 165, column: 44, scope: !529)
!775 = !DILocation(line: 165, column: 37, scope: !529)
!776 = !DILocation(line: 164, column: 63, scope: !529)
!777 = !DILocation(line: 164, column: 19, scope: !529)
!778 = !DILocation(line: 164, column: 21, scope: !529)
!779 = !DILocation(line: 164, column: 26, scope: !529)
!780 = !DILocation(line: 166, column: 19, scope: !529)
!781 = !DILocation(line: 166, column: 21, scope: !529)
!782 = !DILocation(line: 166, column: 26, scope: !529)
!783 = !DILocation(line: 167, column: 29, scope: !529)
!784 = !DILocation(line: 167, column: 31, scope: !529)
!785 = !DILocation(line: 167, column: 43, scope: !529)
!786 = !DILocation(line: 167, column: 36, scope: !529)
!787 = !DILocation(line: 167, column: 21, scope: !529)
!788 = !DILocation(line: 167, column: 25, scope: !529)
!789 = !DILocation(line: 169, column: 9, scope: !529)
!790 = !DILocation(line: 176, column: 34, scope: !529)
!791 = !DILocation(line: 176, column: 36, scope: !529)
!792 = !DILocation(line: 176, column: 18, scope: !529)
!793 = !DILocation(line: 176, column: 60, scope: !529)
!794 = !DILocation(line: 176, column: 62, scope: !529)
!795 = !DILocation(line: 176, column: 44, scope: !529)
!796 = !DILocation(line: 176, column: 42, scope: !529)
!797 = !DILocation(line: 178, column: 20, scope: !529)
!798 = !DILocation(line: 178, column: 17, scope: !529)
!799 = !DILocation(line: 180, column: 21, scope: !529)
!800 = !DILocation(line: 181, column: 30, scope: !529)
!801 = !DILocation(line: 181, column: 26, scope: !529)
!802 = !DILocation(line: 181, column: 21, scope: !529)
!803 = !DILocation(line: 182, column: 17, scope: !529)
!804 = !DILocation(line: 184, column: 13, scope: !529)
!805 = !DILocation(line: 187, column: 17, scope: !529)
!806 = !DILocation(line: 187, column: 21, scope: !529)
!807 = !DILocation(line: 188, column: 20, scope: !529)
!808 = !DILocation(line: 188, column: 17, scope: !529)
!809 = !DILocation(line: 190, column: 32, scope: !529)
!810 = !DILocation(line: 190, column: 19, scope: !529)
!811 = !DILocation(line: 190, column: 21, scope: !529)
!812 = !DILocation(line: 190, column: 26, scope: !529)
!813 = !DILocation(line: 191, column: 19, scope: !529)
!814 = !DILocation(line: 191, column: 21, scope: !529)
!815 = !DILocation(line: 191, column: 26, scope: !529)
!816 = !DILocation(line: 192, column: 29, scope: !529)
!817 = !DILocation(line: 192, column: 31, scope: !529)
!818 = !DILocation(line: 192, column: 21, scope: !529)
!819 = !DILocation(line: 192, column: 25, scope: !529)
!820 = !DILocation(line: 193, column: 13, scope: !529)
!821 = !DILocation(line: 196, column: 32, scope: !529)
!822 = !DILocation(line: 196, column: 53, scope: !529)
!823 = !DILocation(line: 196, column: 36, scope: !529)
!824 = !DILocation(line: 196, column: 19, scope: !529)
!825 = !DILocation(line: 196, column: 21, scope: !529)
!826 = !DILocation(line: 196, column: 26, scope: !529)
!827 = !DILocation(line: 197, column: 30, scope: !529)
!828 = !DILocation(line: 197, column: 32, scope: !529)
!829 = !DILocation(line: 197, column: 37, scope: !529)
!830 = !DILocation(line: 197, column: 19, scope: !529)
!831 = !DILocation(line: 197, column: 21, scope: !529)
!832 = !DILocation(line: 197, column: 26, scope: !529)
!833 = !DILocation(line: 198, column: 30, scope: !529)
!834 = !DILocation(line: 198, column: 32, scope: !529)
!835 = !DILocation(line: 198, column: 54, scope: !529)
!836 = !DILocation(line: 198, column: 37, scope: !529)
!837 = !DILocation(line: 198, column: 68, scope: !529)
!838 = !DILocation(line: 198, column: 72, scope: !529)
!839 = !DILocation(line: 198, column: 61, scope: !529)
!840 = !DILocation(line: 198, column: 21, scope: !529)
!841 = !DILocation(line: 198, column: 25, scope: !529)
!842 = !DILocation(line: 0, scope: !529)
!843 = !DILocation(line: 209, column: 5, scope: !529)
!844 = !DILocation(line: 209, column: 15, scope: !529)
!845 = !DILocation(line: 212, column: 23, scope: !529)
!846 = !DILocation(line: 212, column: 25, scope: !529)
!847 = !DILocation(line: 212, column: 43, scope: !529)
!848 = !DILocation(line: 212, column: 36, scope: !529)
!849 = !DILocation(line: 212, column: 11, scope: !529)
!850 = !DILocation(line: 212, column: 13, scope: !529)
!851 = !DILocation(line: 212, column: 18, scope: !529)
!852 = !DILocation(line: 213, column: 41, scope: !529)
!853 = !DILocation(line: 213, column: 43, scope: !529)
!854 = !DILocation(line: 213, column: 36, scope: !529)
!855 = !DILocation(line: 213, column: 13, scope: !529)
!856 = !DILocation(line: 213, column: 18, scope: !529)
!857 = !DILocation(line: 214, column: 23, scope: !529)
!858 = !DILocation(line: 214, column: 25, scope: !529)
!859 = !DILocation(line: 214, column: 43, scope: !529)
!860 = !DILocation(line: 214, column: 36, scope: !529)
!861 = !DILocation(line: 214, column: 11, scope: !529)
!862 = !DILocation(line: 214, column: 13, scope: !529)
!863 = !DILocation(line: 214, column: 18, scope: !529)
!864 = !DILocation(line: 215, column: 30, scope: !529)
!865 = !DILocation(line: 215, column: 36, scope: !529)
!866 = !DILocation(line: 215, column: 13, scope: !529)
!867 = !DILocation(line: 215, column: 18, scope: !529)
!868 = !DILocation(line: 223, column: 37, scope: !529)
!869 = !DILocation(line: 223, column: 45, scope: !529)
!870 = !DILocation(line: 223, column: 49, scope: !529)
!871 = !DILocation(line: 225, column: 24, scope: !529)
!872 = !DILocation(line: 225, column: 11, scope: !529)
!873 = !DILocation(line: 225, column: 15, scope: !529)
!874 = !DILocation(line: 226, column: 5, scope: !529)
!875 = !DILocation(line: 224, column: 19, scope: !529)
!876 = !DILocation(line: 224, column: 17, scope: !529)
!877 = !DILocation(line: 209, column: 20, scope: !529)
!878 = distinct !{!878, !843, !874, !174}
!879 = !DILocation(line: 227, column: 16, scope: !529)
!880 = !DILocation(line: 227, column: 20, scope: !529)
!881 = !DILocation(line: 227, column: 28, scope: !529)
!882 = !DILocation(line: 227, column: 26, scope: !529)
!883 = !DILocation(line: 227, column: 7, scope: !529)
!884 = !DILocation(line: 227, column: 11, scope: !529)
!885 = !DILocation(line: 228, column: 9, scope: !529)
!886 = !DILocation(line: 229, column: 18, scope: !529)
!887 = !DILocation(line: 229, column: 14, scope: !529)
!888 = !DILocation(line: 229, column: 9, scope: !529)
!889 = !DILocation(line: 230, column: 14, scope: !529)
!890 = !DILocation(line: 230, column: 5, scope: !529)
!891 = !DILocation(line: 231, column: 1, scope: !529)
!892 = distinct !DISubprogram(name: "__divmoddi4", scope: !55, file: !55, line: 20, type: !287, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !54, retainedNodes: !142)
!893 = !DILocation(line: 22, column: 14, scope: !892)
!894 = !DILocation(line: 23, column: 16, scope: !892)
!895 = !DILocation(line: 23, column: 12, scope: !892)
!896 = !DILocation(line: 23, column: 8, scope: !892)
!897 = !DILocation(line: 24, column: 3, scope: !892)
!898 = distinct !DISubprogram(name: "__divmodsi4", scope: !57, file: !57, line: 20, type: !287, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !56, retainedNodes: !142)
!899 = !DILocation(line: 22, column: 14, scope: !898)
!900 = !DILocation(line: 23, column: 16, scope: !898)
!901 = !DILocation(line: 23, column: 12, scope: !898)
!902 = !DILocation(line: 23, column: 8, scope: !898)
!903 = !DILocation(line: 24, column: 3, scope: !898)
!904 = distinct !DISubprogram(name: "__divsi3", scope: !59, file: !59, line: 22, type: !287, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !58, retainedNodes: !142)
!905 = !DILocation(line: 25, column: 20, scope: !904)
!906 = !DILocation(line: 26, column: 20, scope: !904)
!907 = !DILocation(line: 27, column: 12, scope: !904)
!908 = !DILocation(line: 27, column: 19, scope: !904)
!909 = !DILocation(line: 28, column: 12, scope: !904)
!910 = !DILocation(line: 28, column: 19, scope: !904)
!911 = !DILocation(line: 29, column: 9, scope: !904)
!912 = !DILocation(line: 36, column: 22, scope: !904)
!913 = !DILocation(line: 36, column: 33, scope: !904)
!914 = !DILocation(line: 36, column: 40, scope: !904)
!915 = !DILocation(line: 36, column: 5, scope: !904)
!916 = distinct !DISubprogram(name: "__ffsdi2", scope: !63, file: !63, line: 22, type: !287, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !62, retainedNodes: !142)
!917 = !DILocation(line: 25, column: 7, scope: !916)
!918 = !DILocation(line: 25, column: 11, scope: !916)
!919 = !DILocation(line: 26, column: 13, scope: !916)
!920 = !DILocation(line: 26, column: 17, scope: !916)
!921 = !DILocation(line: 26, column: 9, scope: !916)
!922 = !DILocation(line: 28, column: 15, scope: !916)
!923 = !DILocation(line: 28, column: 17, scope: !916)
!924 = !DILocation(line: 28, column: 22, scope: !916)
!925 = !DILocation(line: 28, column: 13, scope: !916)
!926 = !DILocation(line: 29, column: 13, scope: !916)
!927 = !DILocation(line: 30, column: 32, scope: !916)
!928 = !DILocation(line: 30, column: 34, scope: !916)
!929 = !DILocation(line: 30, column: 16, scope: !916)
!930 = !DILocation(line: 30, column: 40, scope: !916)
!931 = !DILocation(line: 30, column: 9, scope: !916)
!932 = !DILocation(line: 32, column: 30, scope: !916)
!933 = !DILocation(line: 32, column: 12, scope: !916)
!934 = !DILocation(line: 32, column: 35, scope: !916)
!935 = !DILocation(line: 32, column: 5, scope: !916)
!936 = !DILocation(line: 0, scope: !916)
!937 = !DILocation(line: 33, column: 1, scope: !916)
!938 = distinct !DISubprogram(name: "__ffssi2", scope: !65, file: !65, line: 22, type: !287, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !64, retainedNodes: !142)
!939 = !DILocation(line: 24, column: 11, scope: !938)
!940 = !DILocation(line: 24, column: 9, scope: !938)
!941 = !DILocation(line: 26, column: 9, scope: !938)
!942 = !DILocation(line: 28, column: 12, scope: !938)
!943 = !DILocation(line: 28, column: 29, scope: !938)
!944 = !DILocation(line: 28, column: 5, scope: !938)
!945 = !DILocation(line: 0, scope: !938)
!946 = !DILocation(line: 29, column: 1, scope: !938)
!947 = distinct !DISubprogram(name: "__lshrdi3", scope: !71, file: !71, line: 24, type: !287, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !70, retainedNodes: !142)
!948 = !DILocation(line: 29, column: 11, scope: !947)
!949 = !DILocation(line: 29, column: 15, scope: !947)
!950 = !DILocation(line: 30, column: 11, scope: !947)
!951 = !DILocation(line: 30, column: 9, scope: !947)
!952 = !DILocation(line: 32, column: 16, scope: !947)
!953 = !DILocation(line: 32, column: 18, scope: !947)
!954 = !DILocation(line: 32, column: 23, scope: !947)
!955 = !DILocation(line: 33, column: 30, scope: !947)
!956 = !DILocation(line: 33, column: 32, scope: !947)
!957 = !DILocation(line: 33, column: 43, scope: !947)
!958 = !DILocation(line: 33, column: 37, scope: !947)
!959 = !DILocation(line: 33, column: 18, scope: !947)
!960 = !DILocation(line: 33, column: 22, scope: !947)
!961 = !DILocation(line: 34, column: 5, scope: !947)
!962 = !DILocation(line: 37, column: 15, scope: !947)
!963 = !DILocation(line: 37, column: 13, scope: !947)
!964 = !DILocation(line: 38, column: 13, scope: !947)
!965 = !DILocation(line: 39, column: 32, scope: !947)
!966 = !DILocation(line: 39, column: 34, scope: !947)
!967 = !DILocation(line: 39, column: 39, scope: !947)
!968 = !DILocation(line: 39, column: 16, scope: !947)
!969 = !DILocation(line: 39, column: 18, scope: !947)
!970 = !DILocation(line: 39, column: 24, scope: !947)
!971 = !DILocation(line: 40, column: 31, scope: !947)
!972 = !DILocation(line: 40, column: 33, scope: !947)
!973 = !DILocation(line: 40, column: 55, scope: !947)
!974 = !DILocation(line: 40, column: 38, scope: !947)
!975 = !DILocation(line: 40, column: 72, scope: !947)
!976 = !DILocation(line: 40, column: 76, scope: !947)
!977 = !DILocation(line: 40, column: 61, scope: !947)
!978 = !DILocation(line: 40, column: 18, scope: !947)
!979 = !DILocation(line: 40, column: 22, scope: !947)
!980 = !DILocation(line: 42, column: 19, scope: !947)
!981 = !DILocation(line: 42, column: 5, scope: !947)
!982 = !DILocation(line: 0, scope: !947)
!983 = !DILocation(line: 43, column: 1, scope: !947)
!984 = distinct !DISubprogram(name: "__moddi3", scope: !75, file: !75, line: 20, type: !287, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !74, retainedNodes: !142)
!985 = !DILocation(line: 24, column: 17, scope: !984)
!986 = !DILocation(line: 25, column: 11, scope: !984)
!987 = !DILocation(line: 26, column: 12, scope: !984)
!988 = !DILocation(line: 26, column: 17, scope: !984)
!989 = !DILocation(line: 28, column: 5, scope: !984)
!990 = !DILocation(line: 29, column: 21, scope: !984)
!991 = !DILocation(line: 29, column: 23, scope: !984)
!992 = !DILocation(line: 29, column: 28, scope: !984)
!993 = !DILocation(line: 29, column: 5, scope: !984)
!994 = distinct !DISubprogram(name: "__modsi3", scope: !77, file: !77, line: 20, type: !287, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !76, retainedNodes: !142)
!995 = !DILocation(line: 22, column: 16, scope: !994)
!996 = !DILocation(line: 22, column: 31, scope: !994)
!997 = !DILocation(line: 22, column: 14, scope: !994)
!998 = !DILocation(line: 22, column: 5, scope: !994)
!999 = distinct !DISubprogram(name: "__mulvdi3", scope: !81, file: !81, line: 22, type: !287, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !80, retainedNodes: !142)
!1000 = !DILocation(line: 27, column: 11, scope: !999)
!1001 = !DILocation(line: 27, column: 9, scope: !999)
!1002 = !DILocation(line: 29, column: 15, scope: !999)
!1003 = !DILocation(line: 29, column: 20, scope: !999)
!1004 = !DILocation(line: 29, column: 25, scope: !999)
!1005 = !DILocation(line: 29, column: 13, scope: !999)
!1006 = !DILocation(line: 30, column: 13, scope: !999)
!1007 = !DILocation(line: 31, column: 9, scope: !999)
!1008 = !DILocation(line: 33, column: 11, scope: !999)
!1009 = !DILocation(line: 33, column: 9, scope: !999)
!1010 = !DILocation(line: 35, column: 15, scope: !999)
!1011 = !DILocation(line: 35, column: 20, scope: !999)
!1012 = !DILocation(line: 35, column: 25, scope: !999)
!1013 = !DILocation(line: 35, column: 13, scope: !999)
!1014 = !DILocation(line: 36, column: 13, scope: !999)
!1015 = !DILocation(line: 37, column: 9, scope: !999)
!1016 = !DILocation(line: 39, column: 19, scope: !999)
!1017 = !DILocation(line: 40, column: 23, scope: !999)
!1018 = !DILocation(line: 40, column: 29, scope: !999)
!1019 = !DILocation(line: 41, column: 19, scope: !999)
!1020 = !DILocation(line: 42, column: 23, scope: !999)
!1021 = !DILocation(line: 42, column: 29, scope: !999)
!1022 = !DILocation(line: 43, column: 15, scope: !999)
!1023 = !DILocation(line: 43, column: 19, scope: !999)
!1024 = !DILocation(line: 43, column: 28, scope: !999)
!1025 = !DILocation(line: 43, column: 9, scope: !999)
!1026 = !DILocation(line: 44, column: 9, scope: !999)
!1027 = !DILocation(line: 45, column: 12, scope: !999)
!1028 = !DILocation(line: 45, column: 9, scope: !999)
!1029 = !DILocation(line: 47, column: 25, scope: !999)
!1030 = !DILocation(line: 47, column: 19, scope: !999)
!1031 = !DILocation(line: 47, column: 13, scope: !999)
!1032 = !DILocation(line: 48, column: 13, scope: !999)
!1033 = !DILocation(line: 49, column: 5, scope: !999)
!1034 = !DILocation(line: 52, column: 27, scope: !999)
!1035 = !DILocation(line: 52, column: 25, scope: !999)
!1036 = !DILocation(line: 52, column: 19, scope: !999)
!1037 = !DILocation(line: 52, column: 13, scope: !999)
!1038 = !DILocation(line: 53, column: 13, scope: !999)
!1039 = !DILocation(line: 55, column: 5, scope: !999)
!1040 = !DILocation(line: 0, scope: !999)
!1041 = !DILocation(line: 56, column: 1, scope: !999)
!1042 = distinct !DISubprogram(name: "__mulvsi3", scope: !83, file: !83, line: 22, type: !287, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !82, retainedNodes: !142)
!1043 = !DILocation(line: 27, column: 11, scope: !1042)
!1044 = !DILocation(line: 27, column: 9, scope: !1042)
!1045 = !DILocation(line: 29, column: 15, scope: !1042)
!1046 = !DILocation(line: 29, column: 20, scope: !1042)
!1047 = !DILocation(line: 29, column: 25, scope: !1042)
!1048 = !DILocation(line: 29, column: 13, scope: !1042)
!1049 = !DILocation(line: 30, column: 13, scope: !1042)
!1050 = !DILocation(line: 31, column: 9, scope: !1042)
!1051 = !DILocation(line: 33, column: 11, scope: !1042)
!1052 = !DILocation(line: 33, column: 9, scope: !1042)
!1053 = !DILocation(line: 35, column: 15, scope: !1042)
!1054 = !DILocation(line: 35, column: 20, scope: !1042)
!1055 = !DILocation(line: 35, column: 25, scope: !1042)
!1056 = !DILocation(line: 35, column: 13, scope: !1042)
!1057 = !DILocation(line: 36, column: 13, scope: !1042)
!1058 = !DILocation(line: 37, column: 9, scope: !1042)
!1059 = !DILocation(line: 39, column: 19, scope: !1042)
!1060 = !DILocation(line: 40, column: 23, scope: !1042)
!1061 = !DILocation(line: 40, column: 29, scope: !1042)
!1062 = !DILocation(line: 41, column: 19, scope: !1042)
!1063 = !DILocation(line: 42, column: 23, scope: !1042)
!1064 = !DILocation(line: 42, column: 29, scope: !1042)
!1065 = !DILocation(line: 43, column: 15, scope: !1042)
!1066 = !DILocation(line: 43, column: 19, scope: !1042)
!1067 = !DILocation(line: 43, column: 28, scope: !1042)
!1068 = !DILocation(line: 43, column: 9, scope: !1042)
!1069 = !DILocation(line: 44, column: 9, scope: !1042)
!1070 = !DILocation(line: 45, column: 12, scope: !1042)
!1071 = !DILocation(line: 45, column: 9, scope: !1042)
!1072 = !DILocation(line: 47, column: 25, scope: !1042)
!1073 = !DILocation(line: 47, column: 19, scope: !1042)
!1074 = !DILocation(line: 47, column: 13, scope: !1042)
!1075 = !DILocation(line: 48, column: 13, scope: !1042)
!1076 = !DILocation(line: 49, column: 5, scope: !1042)
!1077 = !DILocation(line: 52, column: 27, scope: !1042)
!1078 = !DILocation(line: 52, column: 25, scope: !1042)
!1079 = !DILocation(line: 52, column: 19, scope: !1042)
!1080 = !DILocation(line: 52, column: 13, scope: !1042)
!1081 = !DILocation(line: 53, column: 13, scope: !1042)
!1082 = !DILocation(line: 55, column: 5, scope: !1042)
!1083 = !DILocation(line: 0, scope: !1042)
!1084 = !DILocation(line: 56, column: 1, scope: !1042)
!1085 = distinct !DISubprogram(name: "__paritydi2", scope: !87, file: !87, line: 20, type: !287, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !86, retainedNodes: !142)
!1086 = !DILocation(line: 23, column: 7, scope: !1085)
!1087 = !DILocation(line: 23, column: 11, scope: !1085)
!1088 = !DILocation(line: 24, column: 26, scope: !1085)
!1089 = !DILocation(line: 24, column: 28, scope: !1085)
!1090 = !DILocation(line: 24, column: 39, scope: !1085)
!1091 = !DILocation(line: 24, column: 33, scope: !1085)
!1092 = !DILocation(line: 24, column: 12, scope: !1085)
!1093 = !DILocation(line: 24, column: 5, scope: !1085)
!1094 = distinct !DISubprogram(name: "__paritysi2", scope: !89, file: !89, line: 20, type: !287, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !88, retainedNodes: !142)
!1095 = !DILocation(line: 23, column: 12, scope: !1094)
!1096 = !DILocation(line: 23, column: 7, scope: !1094)
!1097 = !DILocation(line: 24, column: 12, scope: !1094)
!1098 = !DILocation(line: 24, column: 7, scope: !1094)
!1099 = !DILocation(line: 25, column: 12, scope: !1094)
!1100 = !DILocation(line: 25, column: 7, scope: !1094)
!1101 = !DILocation(line: 26, column: 26, scope: !1094)
!1102 = !DILocation(line: 26, column: 20, scope: !1094)
!1103 = !DILocation(line: 26, column: 34, scope: !1094)
!1104 = !DILocation(line: 26, column: 5, scope: !1094)
!1105 = distinct !DISubprogram(name: "__popcountdi2", scope: !93, file: !93, line: 20, type: !287, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !92, retainedNodes: !142)
!1106 = !DILocation(line: 23, column: 20, scope: !1105)
!1107 = !DILocation(line: 23, column: 26, scope: !1105)
!1108 = !DILocation(line: 23, column: 13, scope: !1105)
!1109 = !DILocation(line: 25, column: 15, scope: !1105)
!1110 = !DILocation(line: 25, column: 21, scope: !1105)
!1111 = !DILocation(line: 25, column: 52, scope: !1105)
!1112 = !DILocation(line: 25, column: 46, scope: !1105)
!1113 = !DILocation(line: 27, column: 20, scope: !1105)
!1114 = !DILocation(line: 27, column: 14, scope: !1105)
!1115 = !DILocation(line: 27, column: 27, scope: !1105)
!1116 = !DILocation(line: 29, column: 34, scope: !1105)
!1117 = !DILocation(line: 29, column: 28, scope: !1105)
!1118 = !DILocation(line: 29, column: 16, scope: !1105)
!1119 = !DILocation(line: 32, column: 16, scope: !1105)
!1120 = !DILocation(line: 32, column: 11, scope: !1105)
!1121 = !DILocation(line: 35, column: 20, scope: !1105)
!1122 = !DILocation(line: 35, column: 15, scope: !1105)
!1123 = !DILocation(line: 35, column: 27, scope: !1105)
!1124 = !DILocation(line: 35, column: 5, scope: !1105)
!1125 = distinct !DISubprogram(name: "__popcountsi2", scope: !95, file: !95, line: 20, type: !287, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !94, retainedNodes: !142)
!1126 = !DILocation(line: 23, column: 17, scope: !1125)
!1127 = !DILocation(line: 23, column: 23, scope: !1125)
!1128 = !DILocation(line: 23, column: 11, scope: !1125)
!1129 = !DILocation(line: 25, column: 13, scope: !1125)
!1130 = !DILocation(line: 25, column: 19, scope: !1125)
!1131 = !DILocation(line: 25, column: 38, scope: !1125)
!1132 = !DILocation(line: 25, column: 33, scope: !1125)
!1133 = !DILocation(line: 27, column: 17, scope: !1125)
!1134 = !DILocation(line: 27, column: 12, scope: !1125)
!1135 = !DILocation(line: 27, column: 24, scope: !1125)
!1136 = !DILocation(line: 29, column: 17, scope: !1125)
!1137 = !DILocation(line: 29, column: 12, scope: !1125)
!1138 = !DILocation(line: 32, column: 20, scope: !1125)
!1139 = !DILocation(line: 32, column: 15, scope: !1125)
!1140 = !DILocation(line: 32, column: 27, scope: !1125)
!1141 = !DILocation(line: 32, column: 5, scope: !1125)
!1142 = distinct !DISubprogram(name: "__subvdi3", scope: !99, file: !99, line: 22, type: !287, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !98, retainedNodes: !142)
!1143 = !DILocation(line: 24, column: 27, scope: !1142)
!1144 = !DILocation(line: 25, column: 11, scope: !1142)
!1145 = !DILocation(line: 25, column: 9, scope: !1142)
!1146 = !DILocation(line: 27, column: 15, scope: !1142)
!1147 = !DILocation(line: 27, column: 13, scope: !1142)
!1148 = !DILocation(line: 28, column: 13, scope: !1142)
!1149 = !DILocation(line: 29, column: 5, scope: !1142)
!1150 = !DILocation(line: 32, column: 15, scope: !1142)
!1151 = !DILocation(line: 32, column: 13, scope: !1142)
!1152 = !DILocation(line: 33, column: 13, scope: !1142)
!1153 = !DILocation(line: 35, column: 5, scope: !1142)
!1154 = distinct !DISubprogram(name: "__subvsi3", scope: !101, file: !101, line: 22, type: !287, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !100, retainedNodes: !142)
!1155 = !DILocation(line: 24, column: 27, scope: !1154)
!1156 = !DILocation(line: 25, column: 11, scope: !1154)
!1157 = !DILocation(line: 25, column: 9, scope: !1154)
!1158 = !DILocation(line: 27, column: 15, scope: !1154)
!1159 = !DILocation(line: 27, column: 13, scope: !1154)
!1160 = !DILocation(line: 28, column: 13, scope: !1154)
!1161 = !DILocation(line: 29, column: 5, scope: !1154)
!1162 = !DILocation(line: 32, column: 15, scope: !1154)
!1163 = !DILocation(line: 32, column: 13, scope: !1154)
!1164 = !DILocation(line: 33, column: 13, scope: !1154)
!1165 = !DILocation(line: 35, column: 5, scope: !1154)
!1166 = distinct !DISubprogram(name: "__ucmpdi2", scope: !105, file: !105, line: 23, type: !287, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !104, retainedNodes: !142)
!1167 = !DILocation(line: 26, column: 7, scope: !1166)
!1168 = !DILocation(line: 26, column: 11, scope: !1166)
!1169 = !DILocation(line: 28, column: 7, scope: !1166)
!1170 = !DILocation(line: 28, column: 11, scope: !1166)
!1171 = !DILocation(line: 29, column: 11, scope: !1166)
!1172 = !DILocation(line: 29, column: 13, scope: !1166)
!1173 = !DILocation(line: 29, column: 22, scope: !1166)
!1174 = !DILocation(line: 29, column: 24, scope: !1166)
!1175 = !DILocation(line: 29, column: 18, scope: !1166)
!1176 = !DILocation(line: 29, column: 9, scope: !1166)
!1177 = !DILocation(line: 30, column: 9, scope: !1166)
!1178 = !DILocation(line: 31, column: 11, scope: !1166)
!1179 = !DILocation(line: 31, column: 13, scope: !1166)
!1180 = !DILocation(line: 31, column: 22, scope: !1166)
!1181 = !DILocation(line: 31, column: 24, scope: !1166)
!1182 = !DILocation(line: 31, column: 18, scope: !1166)
!1183 = !DILocation(line: 31, column: 9, scope: !1166)
!1184 = !DILocation(line: 32, column: 9, scope: !1166)
!1185 = !DILocation(line: 33, column: 13, scope: !1166)
!1186 = !DILocation(line: 33, column: 23, scope: !1166)
!1187 = !DILocation(line: 33, column: 17, scope: !1166)
!1188 = !DILocation(line: 33, column: 9, scope: !1166)
!1189 = !DILocation(line: 34, column: 9, scope: !1166)
!1190 = !DILocation(line: 35, column: 13, scope: !1166)
!1191 = !DILocation(line: 35, column: 23, scope: !1166)
!1192 = !DILocation(line: 35, column: 17, scope: !1166)
!1193 = !DILocation(line: 35, column: 9, scope: !1166)
!1194 = !DILocation(line: 36, column: 9, scope: !1166)
!1195 = !DILocation(line: 37, column: 5, scope: !1166)
!1196 = !DILocation(line: 0, scope: !1166)
!1197 = !DILocation(line: 38, column: 1, scope: !1166)
!1198 = distinct !DISubprogram(name: "__aeabi_ulcmp", scope: !105, file: !105, line: 46, type: !287, scopeLine: 47, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !104, retainedNodes: !142)
!1199 = !DILocation(line: 48, column: 9, scope: !1198)
!1200 = !DILocation(line: 48, column: 25, scope: !1198)
!1201 = !DILocation(line: 48, column: 2, scope: !1198)
!1202 = distinct !DISubprogram(name: "__udivdi3", scope: !109, file: !109, line: 20, type: !287, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !108, retainedNodes: !142)
!1203 = !DILocation(line: 22, column: 12, scope: !1202)
!1204 = !DILocation(line: 22, column: 5, scope: !1202)
!1205 = distinct !DISubprogram(name: "__udivmodsi4", scope: !113, file: !113, line: 20, type: !287, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !112, retainedNodes: !142)
!1206 = !DILocation(line: 22, column: 14, scope: !1205)
!1207 = !DILocation(line: 23, column: 16, scope: !1205)
!1208 = !DILocation(line: 23, column: 12, scope: !1205)
!1209 = !DILocation(line: 23, column: 8, scope: !1205)
!1210 = !DILocation(line: 24, column: 3, scope: !1205)
!1211 = distinct !DISubprogram(name: "__udivsi3", scope: !117, file: !117, line: 25, type: !287, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !116, retainedNodes: !142)
!1212 = !DILocation(line: 32, column: 11, scope: !1211)
!1213 = !DILocation(line: 32, column: 9, scope: !1211)
!1214 = !DILocation(line: 33, column: 9, scope: !1211)
!1215 = !DILocation(line: 34, column: 11, scope: !1211)
!1216 = !DILocation(line: 34, column: 9, scope: !1211)
!1217 = !DILocation(line: 35, column: 9, scope: !1211)
!1218 = !DILocation(line: 36, column: 10, scope: !1211)
!1219 = !DILocation(line: 36, column: 29, scope: !1211)
!1220 = !DILocation(line: 36, column: 27, scope: !1211)
!1221 = !DILocation(line: 38, column: 12, scope: !1211)
!1222 = !DILocation(line: 38, column: 9, scope: !1211)
!1223 = !DILocation(line: 39, column: 9, scope: !1211)
!1224 = !DILocation(line: 40, column: 12, scope: !1211)
!1225 = !DILocation(line: 40, column: 9, scope: !1211)
!1226 = !DILocation(line: 41, column: 9, scope: !1211)
!1227 = !DILocation(line: 42, column: 5, scope: !1211)
!1228 = !DILocation(line: 45, column: 28, scope: !1211)
!1229 = !DILocation(line: 45, column: 11, scope: !1211)
!1230 = !DILocation(line: 46, column: 11, scope: !1211)
!1231 = !DILocation(line: 48, column: 5, scope: !1211)
!1232 = !DILocation(line: 0, scope: !1211)
!1233 = !DILocation(line: 48, column: 15, scope: !1211)
!1234 = !DILocation(line: 51, column: 22, scope: !1211)
!1235 = !DILocation(line: 60, column: 41, scope: !1211)
!1236 = !DILocation(line: 63, column: 5, scope: !1211)
!1237 = !DILocation(line: 62, column: 16, scope: !1211)
!1238 = !DILocation(line: 62, column: 11, scope: !1211)
!1239 = !DILocation(line: 61, column: 19, scope: !1211)
!1240 = !DILocation(line: 52, column: 16, scope: !1211)
!1241 = !DILocation(line: 52, column: 22, scope: !1211)
!1242 = !DILocation(line: 48, column: 20, scope: !1211)
!1243 = distinct !{!1243, !1231, !1236, !174}
!1244 = !DILocation(line: 64, column: 12, scope: !1211)
!1245 = !DILocation(line: 64, column: 18, scope: !1211)
!1246 = !DILocation(line: 65, column: 5, scope: !1211)
!1247 = !DILocation(line: 66, column: 1, scope: !1211)
!1248 = distinct !DISubprogram(name: "__umoddi3", scope: !121, file: !121, line: 20, type: !287, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !120, retainedNodes: !142)
!1249 = !DILocation(line: 23, column: 5, scope: !1248)
!1250 = !DILocation(line: 24, column: 12, scope: !1248)
!1251 = !DILocation(line: 24, column: 5, scope: !1248)
!1252 = distinct !DISubprogram(name: "__umodsi3", scope: !123, file: !123, line: 20, type: !287, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !122, retainedNodes: !142)
!1253 = !DILocation(line: 22, column: 16, scope: !1252)
!1254 = !DILocation(line: 22, column: 32, scope: !1252)
!1255 = !DILocation(line: 22, column: 14, scope: !1252)
!1256 = !DILocation(line: 22, column: 5, scope: !1252)
!1257 = distinct !DISubprogram(name: "memcpy", scope: !127, file: !127, line: 3, type: !287, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !126, retainedNodes: !142)
!1258 = !DILocation(line: 8, column: 6, scope: !1257)
!1259 = !DILocation(line: 0, scope: !1257)
!1260 = !DILocation(line: 8, column: 19, scope: !1257)
!1261 = !DILocation(line: 8, column: 2, scope: !1257)
!1262 = !DILocation(line: 9, column: 21, scope: !1257)
!1263 = !DILocation(line: 9, column: 3, scope: !1257)
!1264 = !DILocation(line: 9, column: 19, scope: !1257)
!1265 = !DILocation(line: 10, column: 2, scope: !1257)
!1266 = !DILocation(line: 8, column: 26, scope: !1257)
!1267 = distinct !{!1267, !1261, !1265, !174}
!1268 = !DILocation(line: 11, column: 1, scope: !1257)
!1269 = distinct !DISubprogram(name: "memset", scope: !127, file: !127, line: 13, type: !287, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !126, retainedNodes: !142)
!1270 = !DILocation(line: 17, column: 6, scope: !1269)
!1271 = !DILocation(line: 0, scope: !1269)
!1272 = !DILocation(line: 17, column: 19, scope: !1269)
!1273 = !DILocation(line: 17, column: 2, scope: !1269)
!1274 = !DILocation(line: 18, column: 13, scope: !1269)
!1275 = !DILocation(line: 18, column: 3, scope: !1269)
!1276 = !DILocation(line: 18, column: 11, scope: !1269)
!1277 = !DILocation(line: 19, column: 2, scope: !1269)
!1278 = !DILocation(line: 17, column: 26, scope: !1269)
!1279 = distinct !{!1279, !1273, !1277, !174}
!1280 = !DILocation(line: 20, column: 2, scope: !1269)
