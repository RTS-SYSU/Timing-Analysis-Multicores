; ModuleID = 'unoptimized.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv4t-unknown-unknown"

%union.dwords = type { i64 }
%struct.anon = type { i32, i32 }

@cubic_a1 = dso_local global float 0.000000e+00, align 4, !dbg !0
@cubic_b1 = dso_local global float 0.000000e+00, align 4, !dbg !5
@cubic_c1 = dso_local global float 0.000000e+00, align 4, !dbg !9
@cubic_d1 = dso_local global float 0.000000e+00, align 4, !dbg !11
@cubic_a2 = dso_local global float 0.000000e+00, align 4, !dbg !13
@cubic_b2 = dso_local global float 0.000000e+00, align 4, !dbg !15
@cubic_c2 = dso_local global float 0.000000e+00, align 4, !dbg !17
@cubic_d2 = dso_local global float 0.000000e+00, align 4, !dbg !19
@cubic_a3 = dso_local global float 0.000000e+00, align 4, !dbg !21
@cubic_b3 = dso_local global float 0.000000e+00, align 4, !dbg !23
@cubic_c3 = dso_local global float 0.000000e+00, align 4, !dbg !25
@cubic_d3 = dso_local global float 0.000000e+00, align 4, !dbg !27
@cubic_a4 = dso_local global float 0.000000e+00, align 4, !dbg !29
@cubic_b4 = dso_local global float 0.000000e+00, align 4, !dbg !31
@cubic_c4 = dso_local global float 0.000000e+00, align 4, !dbg !33
@cubic_d4 = dso_local global float 0.000000e+00, align 4, !dbg !35
@cubic_X = dso_local global float 0.000000e+00, align 4, !dbg !42
@cubic_Y = dso_local global float 0.000000e+00, align 4, !dbg !44
@cubic_checksum = dso_local global i32 0, align 4, !dbg !49
@cubic_solutions = dso_local global i32 0, align 4, !dbg !46
@cubic_x = dso_local global [3 x float] zeroinitializer, align 4, !dbg !37
@basicmath_bp = internal constant [2 x float] [float 1.000000e+00, float 1.500000e+00], align 4, !dbg !51
@basicmath_dp_l = internal constant [2 x float] [float 0.000000e+00, float 0x3EBA39FB80000000], align 4, !dbg !185
@basicmath_dp_h = internal constant [2 x float] [float 0.000000e+00, float 0x3FE2B80000000000], align 4, !dbg !190
@basicmath_npio2_hw = internal constant [32 x i32] [i32 1070141184, i32 1078529792, i32 1083624192, i32 1086918400, i32 1090212608, i32 1092012800, i32 1093659904, i32 1095307008, i32 1096954112, i32 1098601216, i32 1099577856, i32 1100401408, i32 1101224960, i32 1102048512, i32 1102872064, i32 1103695616, i32 1104519168, i32 1105342720, i32 1106166272, i32 1106989824, i32 1107554816, i32 1107966464, i32 1108378368, i32 1108790016, i32 1109201920, i32 1109613568, i32 1110025472, i32 1110437120, i32 1110849024, i32 1111260672, i32 1111672576, i32 1112084224], align 4, !dbg !192
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
define dso_local arm_aapcs_vfpcc void @cubic_init() #0 !dbg !321 {
entry:
  store float 1.000000e+00, float* @cubic_a1, align 4, !dbg !325
  store float -1.050000e+01, float* @cubic_b1, align 4, !dbg !326
  store float 3.200000e+01, float* @cubic_c1, align 4, !dbg !327
  store float -3.000000e+01, float* @cubic_d1, align 4, !dbg !328
  store float 1.000000e+00, float* @cubic_a2, align 4, !dbg !329
  store float -4.500000e+00, float* @cubic_b2, align 4, !dbg !330
  store float 1.700000e+01, float* @cubic_c2, align 4, !dbg !331
  store float -3.000000e+01, float* @cubic_d2, align 4, !dbg !332
  store float 1.000000e+00, float* @cubic_a3, align 4, !dbg !333
  store float -3.500000e+00, float* @cubic_b3, align 4, !dbg !334
  store float 2.200000e+01, float* @cubic_c3, align 4, !dbg !335
  store float -3.100000e+01, float* @cubic_d3, align 4, !dbg !336
  store float 1.000000e+00, float* @cubic_a4, align 4, !dbg !337
  store float 0xC02B666660000000, float* @cubic_b4, align 4, !dbg !338
  store float 1.000000e+00, float* @cubic_c4, align 4, !dbg !339
  store float -3.500000e+01, float* @cubic_d4, align 4, !dbg !340
  store float 0.000000e+00, float* @cubic_X, align 4, !dbg !341
  store float 0.000000e+00, float* @cubic_Y, align 4, !dbg !342
  store i32 0, i32* @cubic_checksum, align 4, !dbg !343
  ret void, !dbg !344
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @cubic_return() #0 !dbg !345 {
entry:
  %0 = load i32, i32* @cubic_checksum, align 4, !dbg !348
  %cmp = icmp eq i32 %0, 1051, !dbg !350
  br i1 %cmp, label %if.then, label %if.else, !dbg !351

if.then:                                          ; preds = %entry
  br label %return, !dbg !352

if.else:                                          ; preds = %entry
  br label %return, !dbg !353

return:                                           ; preds = %if.else, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ -1, %if.else ], !dbg !354
  ret i32 %retval.0, !dbg !355
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @cubic_main() #0 !dbg !356 {
entry:
  %0 = load float, float* @cubic_a1, align 4, !dbg !357
  %1 = load float, float* @cubic_b1, align 4, !dbg !358
  %2 = load float, float* @cubic_c1, align 4, !dbg !359
  %3 = load float, float* @cubic_d1, align 4, !dbg !360
  call arm_aapcs_vfpcc void @cubic_solveCubic(float noundef %0, float noundef %1, float noundef %2, float noundef %3, i32* noundef nonnull @cubic_solutions, float* noundef getelementptr inbounds ([3 x float], [3 x float]* @cubic_x, i32 0, i32 0)) #4, !dbg !361
  %4 = load i32, i32* @cubic_solutions, align 4, !dbg !362
  %5 = load i32, i32* @cubic_checksum, align 4, !dbg !363
  %add = add nsw i32 %5, %4, !dbg !363
  store i32 %add, i32* @cubic_checksum, align 4, !dbg !363
  %6 = load float, float* @cubic_a2, align 4, !dbg !364
  %7 = load float, float* @cubic_b2, align 4, !dbg !365
  %8 = load float, float* @cubic_c2, align 4, !dbg !366
  %9 = load float, float* @cubic_d2, align 4, !dbg !367
  call arm_aapcs_vfpcc void @cubic_solveCubic(float noundef %6, float noundef %7, float noundef %8, float noundef %9, i32* noundef nonnull @cubic_solutions, float* noundef getelementptr inbounds ([3 x float], [3 x float]* @cubic_x, i32 0, i32 0)) #4, !dbg !368
  %10 = load i32, i32* @cubic_solutions, align 4, !dbg !369
  %11 = load i32, i32* @cubic_checksum, align 4, !dbg !370
  %add1 = add nsw i32 %11, %10, !dbg !370
  store i32 %add1, i32* @cubic_checksum, align 4, !dbg !370
  %12 = load float, float* @cubic_a3, align 4, !dbg !371
  %13 = load float, float* @cubic_b3, align 4, !dbg !372
  %14 = load float, float* @cubic_c3, align 4, !dbg !373
  %15 = load float, float* @cubic_d3, align 4, !dbg !374
  call arm_aapcs_vfpcc void @cubic_solveCubic(float noundef %12, float noundef %13, float noundef %14, float noundef %15, i32* noundef nonnull @cubic_solutions, float* noundef getelementptr inbounds ([3 x float], [3 x float]* @cubic_x, i32 0, i32 0)) #4, !dbg !375
  %16 = load i32, i32* @cubic_solutions, align 4, !dbg !376
  %17 = load i32, i32* @cubic_checksum, align 4, !dbg !377
  %add2 = add nsw i32 %17, %16, !dbg !377
  store i32 %add2, i32* @cubic_checksum, align 4, !dbg !377
  %18 = load float, float* @cubic_a4, align 4, !dbg !378
  %19 = load float, float* @cubic_b4, align 4, !dbg !379
  %20 = load float, float* @cubic_c4, align 4, !dbg !380
  %21 = load float, float* @cubic_d4, align 4, !dbg !381
  call arm_aapcs_vfpcc void @cubic_solveCubic(float noundef %18, float noundef %19, float noundef %20, float noundef %21, i32* noundef nonnull @cubic_solutions, float* noundef getelementptr inbounds ([3 x float], [3 x float]* @cubic_x, i32 0, i32 0)) #4, !dbg !382
  %22 = load i32, i32* @cubic_solutions, align 4, !dbg !383
  %23 = load i32, i32* @cubic_checksum, align 4, !dbg !384
  %add3 = add nsw i32 %23, %22, !dbg !384
  store i32 %add3, i32* @cubic_checksum, align 4, !dbg !384
  br label %for.cond, !dbg !385

for.cond:                                         ; preds = %for.inc20, %entry
  %storemerge = phi float [ 1.000000e+00, %entry ], [ %add21, %for.inc20 ], !dbg !387
  store float %storemerge, float* @cubic_a1, align 4, !dbg !387
  %cmp = fcmp olt float %storemerge, 1.000000e+01, !dbg !388
  br i1 %cmp, label %for.body, label %for.end22, !dbg !390

for.body:                                         ; preds = %for.cond
  br label %for.cond4, !dbg !391

for.cond4:                                        ; preds = %for.inc17, %for.body
  %storemerge1 = phi float [ 1.000000e+01, %for.body ], [ %sub18, %for.inc17 ], !dbg !394
  store float %storemerge1, float* @cubic_b1, align 4, !dbg !394
  %cmp5 = fcmp ogt float %storemerge1, 0.000000e+00, !dbg !395
  br i1 %cmp5, label %for.body6, label %for.end19, !dbg !397

for.body6:                                        ; preds = %for.cond4
  br label %for.cond7, !dbg !398

for.cond7:                                        ; preds = %for.inc14, %for.body6
  %storemerge2 = phi float [ 5.000000e+00, %for.body6 ], [ %add15, %for.inc14 ], !dbg !401
  store float %storemerge2, float* @cubic_c1, align 4, !dbg !401
  %cmp8 = fcmp olt float %storemerge2, 1.500000e+01, !dbg !402
  br i1 %cmp8, label %for.body9, label %for.end16, !dbg !404

for.body9:                                        ; preds = %for.cond7
  br label %for.cond10, !dbg !405

for.cond10:                                       ; preds = %for.inc, %for.body9
  %storemerge3 = phi float [ -1.000000e+00, %for.body9 ], [ %sub, %for.inc ], !dbg !408
  store float %storemerge3, float* @cubic_d1, align 4, !dbg !408
  %cmp11 = fcmp ogt float %storemerge3, -1.100000e+01, !dbg !409
  br i1 %cmp11, label %for.body12, label %for.end, !dbg !411

for.body12:                                       ; preds = %for.cond10
  %24 = load float, float* @cubic_a1, align 4, !dbg !412
  %25 = load float, float* @cubic_b1, align 4, !dbg !414
  %26 = load float, float* @cubic_c1, align 4, !dbg !415
  %27 = load float, float* @cubic_d1, align 4, !dbg !416
  call arm_aapcs_vfpcc void @cubic_solveCubic(float noundef %24, float noundef %25, float noundef %26, float noundef %27, i32* noundef nonnull @cubic_solutions, float* noundef getelementptr inbounds ([3 x float], [3 x float]* @cubic_x, i32 0, i32 0)) #4, !dbg !417
  %28 = load i32, i32* @cubic_solutions, align 4, !dbg !418
  %29 = load i32, i32* @cubic_checksum, align 4, !dbg !419
  %add13 = add nsw i32 %29, %28, !dbg !419
  store i32 %add13, i32* @cubic_checksum, align 4, !dbg !419
  br label %for.inc, !dbg !420

for.inc:                                          ; preds = %for.body12
  %30 = load float, float* @cubic_d1, align 4, !dbg !421
  %sub = fadd float %30, -2.000000e+00, !dbg !421
  br label %for.cond10, !dbg !422, !llvm.loop !423

for.end:                                          ; preds = %for.cond10
  br label %for.inc14, !dbg !426

for.inc14:                                        ; preds = %for.end
  %31 = load float, float* @cubic_c1, align 4, !dbg !427
  %add15 = fadd float %31, 1.500000e+00, !dbg !427
  br label %for.cond7, !dbg !428, !llvm.loop !429

for.end16:                                        ; preds = %for.cond7
  br label %for.inc17, !dbg !431

for.inc17:                                        ; preds = %for.end16
  %32 = load float, float* @cubic_b1, align 4, !dbg !432
  %sub18 = fadd float %32, -2.000000e+00, !dbg !432
  br label %for.cond4, !dbg !433, !llvm.loop !434

for.end19:                                        ; preds = %for.cond4
  br label %for.inc20, !dbg !436

for.inc20:                                        ; preds = %for.end19
  %33 = load float, float* @cubic_a1, align 4, !dbg !437
  %add21 = fadd float %33, 2.000000e+00, !dbg !437
  br label %for.cond, !dbg !438, !llvm.loop !439

for.end22:                                        ; preds = %for.cond
  ret void, !dbg !441
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @cubic_solveCubic(float noundef %a, float noundef %b, float noundef %c, float noundef %d, i32* noundef %solutions, float* noundef %x) #0 !dbg !442 {
entry:
  call void @llvm.dbg.value(metadata float %a, metadata !447, metadata !DIExpression()), !dbg !448
  call void @llvm.dbg.value(metadata float %b, metadata !449, metadata !DIExpression()), !dbg !448
  call void @llvm.dbg.value(metadata float %c, metadata !450, metadata !DIExpression()), !dbg !448
  call void @llvm.dbg.value(metadata float %d, metadata !451, metadata !DIExpression()), !dbg !448
  call void @llvm.dbg.value(metadata i32* %solutions, metadata !452, metadata !DIExpression()), !dbg !448
  call void @llvm.dbg.value(metadata float* %x, metadata !453, metadata !DIExpression()), !dbg !448
  %div = fdiv float %b, %a, !dbg !454
  call void @llvm.dbg.value(metadata float %div, metadata !455, metadata !DIExpression()), !dbg !448
  %div1 = fdiv float %c, %a, !dbg !456
  call void @llvm.dbg.value(metadata float %div1, metadata !457, metadata !DIExpression()), !dbg !448
  %div2 = fdiv float %d, %a, !dbg !458
  call void @llvm.dbg.value(metadata float %div2, metadata !459, metadata !DIExpression()), !dbg !448
  %neg = fmul float %div1, -3.000000e+00, !dbg !460
  %0 = call float @llvm.fmuladd.f32(float %div, float %div, float %neg), !dbg !460
  %div4 = fdiv float %0, 9.000000e+00, !dbg !461
  call void @llvm.dbg.value(metadata float %div4, metadata !462, metadata !DIExpression()), !dbg !448
  %mul = fmul float %div, 2.000000e+00, !dbg !463
  %mul5 = fmul float %mul, %div, !dbg !464
  %1 = fmul float %div, -9.000000e+00, !dbg !465
  %neg9 = fmul float %1, %div1, !dbg !465
  %2 = call float @llvm.fmuladd.f32(float %mul5, float %div, float %neg9), !dbg !465
  %3 = call float @llvm.fmuladd.f32(float %div2, float 2.700000e+01, float %2), !dbg !466
  %div11 = fdiv float %3, 5.400000e+01, !dbg !467
  call void @llvm.dbg.value(metadata float %div11, metadata !468, metadata !DIExpression()), !dbg !448
  %4 = fneg float %div4, !dbg !469
  %5 = fmul float %div4, %4, !dbg !469
  %neg15 = fmul float %5, %div4, !dbg !469
  %6 = call float @llvm.fmuladd.f32(float %div11, float %div11, float %neg15), !dbg !469
  call void @llvm.dbg.value(metadata float %6, metadata !470, metadata !DIExpression()), !dbg !448
  %cmp = fcmp ugt float %6, 0.000000e+00, !dbg !471
  br i1 %cmp, label %if.else, label %if.then, !dbg !473

if.then:                                          ; preds = %entry
  store i32 3, i32* %solutions, align 4, !dbg !474
  %mul16 = fmul float %div4, %div4, !dbg !476
  %mul17 = fmul float %mul16, %div4, !dbg !477
  %call = call arm_aapcs_vfpcc float @basicmath___ieee754_sqrtf(float noundef %mul17) #4, !dbg !478
  %div18 = fdiv float %div11, %call, !dbg !479
  %call19 = call arm_aapcs_vfpcc float @basicmath___ieee754_acosf(float noundef %div18) #4, !dbg !480
  call void @llvm.dbg.value(metadata float %call19, metadata !481, metadata !DIExpression()), !dbg !448
  %call20 = call arm_aapcs_vfpcc float @basicmath___ieee754_sqrtf(float noundef %div4) #4, !dbg !482
  %mul21 = fmul float %call20, -2.000000e+00, !dbg !483
  %div22 = fdiv float %call19, 3.000000e+00, !dbg !484
  %call23 = call arm_aapcs_vfpcc float @basicmath___cosf(float noundef %div22) #4, !dbg !485
  %neg26 = fdiv float %div, -3.000000e+00, !dbg !486
  %7 = call float @llvm.fmuladd.f32(float %mul21, float %call23, float %neg26), !dbg !486
  store float %7, float* %x, align 4, !dbg !487
  %call27 = call arm_aapcs_vfpcc float @basicmath___ieee754_sqrtf(float noundef %div4) #4, !dbg !488
  %mul28 = fmul float %call27, -2.000000e+00, !dbg !489
  %add = fadd float %call19, 0x40191EB860000000, !dbg !490
  %div29 = fdiv float %add, 3.000000e+00, !dbg !491
  %call30 = call arm_aapcs_vfpcc float @basicmath___cosf(float noundef %div29) #4, !dbg !492
  %neg33 = fdiv float %div, -3.000000e+00, !dbg !493
  %8 = call float @llvm.fmuladd.f32(float %mul28, float %call30, float %neg33), !dbg !493
  %arrayidx34 = getelementptr inbounds float, float* %x, i32 1, !dbg !494
  store float %8, float* %arrayidx34, align 4, !dbg !495
  %call35 = call arm_aapcs_vfpcc float @basicmath___ieee754_sqrtf(float noundef %div4) #4, !dbg !496
  %mul36 = fmul float %call35, -2.000000e+00, !dbg !497
  %add37 = fadd float %call19, 0x40291EB860000000, !dbg !498
  %div38 = fdiv float %add37, 3.000000e+00, !dbg !499
  %call39 = call arm_aapcs_vfpcc float @basicmath___cosf(float noundef %div38) #4, !dbg !500
  %neg42 = fdiv float %div, -3.000000e+00, !dbg !501
  %9 = call float @llvm.fmuladd.f32(float %mul36, float %call39, float %neg42), !dbg !501
  %arrayidx43 = getelementptr inbounds float, float* %x, i32 2, !dbg !502
  store float %9, float* %arrayidx43, align 4, !dbg !503
  br label %if.end, !dbg !504

if.else:                                          ; preds = %entry
  store i32 1, i32* %solutions, align 4, !dbg !505
  %call44 = call arm_aapcs_vfpcc float @basicmath___ieee754_sqrtf(float noundef %6) #4, !dbg !507
  %call45 = call arm_aapcs_vfpcc float @basicmath___fabsf(float noundef %div11) #4, !dbg !508
  %add46 = fadd float %call44, %call45, !dbg !509
  %call47 = call arm_aapcs_vfpcc float @basicmath___ieee754_powf(float noundef %add46, float noundef 0x3FD5555560000000) #4, !dbg !510
  %div50 = fdiv float %div4, %call47, !dbg !511
  %add52 = fadd float %call47, %div50, !dbg !512
  %cmp53 = fcmp olt float %div11, 0.000000e+00, !dbg !513
  %10 = fneg float %add52, !dbg !514
  %11 = select i1 %cmp53, float %add52, float %10, !dbg !514
  %div56 = fdiv float %div, 3.000000e+00, !dbg !515
  %sub = fsub float %11, %div56, !dbg !516
  store float %sub, float* %x, align 4, !dbg !516
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !517
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.fmuladd.f32(float, float, float) #1

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @main() #0 !dbg !518 {
entry:
  call arm_aapcs_vfpcc void @cubic_init() #4, !dbg !519
  call arm_aapcs_vfpcc void @cubic_main() #4, !dbg !520
  %call = call arm_aapcs_vfpcc i32 @cubic_return() #4, !dbg !521
  ret i32 %call, !dbg !522
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc float @basicmath___ieee754_acosf(float noundef %x) #0 !dbg !523 {
entry:
  call void @llvm.dbg.value(metadata float %x, metadata !526, metadata !DIExpression()), !dbg !527
  call void @llvm.dbg.value(metadata float %x, metadata !528, metadata !DIExpression()), !dbg !536
  %.cast = bitcast float %x to i32, !dbg !537
  call void @llvm.dbg.value(metadata i32 %.cast, metadata !538, metadata !DIExpression()), !dbg !527
  %and = and i32 %.cast, 2147483647, !dbg !539
  call void @llvm.dbg.value(metadata i32 %and, metadata !540, metadata !DIExpression()), !dbg !527
  %cmp = icmp eq i32 %and, 1065353216, !dbg !541
  br i1 %cmp, label %if.then, label %if.else3, !dbg !543

if.then:                                          ; preds = %entry
  %cmp1 = icmp sgt i32 %.cast, 0, !dbg !544
  br i1 %cmp1, label %if.then2, label %if.else, !dbg !547

if.then2:                                         ; preds = %if.then
  br label %return, !dbg !548

if.else:                                          ; preds = %if.then
  br label %return, !dbg !549

if.else3:                                         ; preds = %entry
  %cmp4 = icmp ugt i32 %and, 1065353216, !dbg !550
  br i1 %cmp4, label %if.then5, label %if.end, !dbg !552

if.then5:                                         ; preds = %if.else3
  %sub = fsub float %x, %x, !dbg !553
  %sub6 = fsub float %x, %x, !dbg !555
  %div = fdiv float %sub, %sub6, !dbg !556
  br label %return, !dbg !557

if.end:                                           ; preds = %if.else3
  br label %if.end7

if.end7:                                          ; preds = %if.end
  %cmp8 = icmp ult i32 %and, 1056964608, !dbg !558
  br i1 %cmp8, label %if.then9, label %if.else27, !dbg !560

if.then9:                                         ; preds = %if.end7
  %cmp10 = icmp ult i32 %and, 587202561, !dbg !561
  br i1 %cmp10, label %if.then11, label %if.end12, !dbg !564

if.then11:                                        ; preds = %if.then9
  br label %return, !dbg !565

if.end12:                                         ; preds = %if.then9
  %mul = fmul float %x, %x, !dbg !566
  call void @llvm.dbg.value(metadata float %mul, metadata !567, metadata !DIExpression()), !dbg !527
  %0 = call float @llvm.fmuladd.f32(float %mul, float 0x3F023DE100000000, float 0x3F49EFE080000000), !dbg !568
  %1 = call float @llvm.fmuladd.f32(float %mul, float %0, float 0xBFA48228C0000000), !dbg !569
  %2 = call float @llvm.fmuladd.f32(float %mul, float %1, float 0x3FC9C15500000000), !dbg !570
  %3 = call float @llvm.fmuladd.f32(float %mul, float %2, float 0xBFD4D61200000000), !dbg !571
  %4 = call float @llvm.fmuladd.f32(float %mul, float %3, float 0x3FC5555560000000), !dbg !572
  %mul18 = fmul float %mul, %4, !dbg !573
  call void @llvm.dbg.value(metadata float %mul18, metadata !574, metadata !DIExpression()), !dbg !527
  %5 = call float @llvm.fmuladd.f32(float %mul, float 0x3FB3B8C5C0000000, float 0xBFE6066C20000000), !dbg !575
  %6 = call float @llvm.fmuladd.f32(float %mul, float %5, float 0x40002AE5A0000000), !dbg !576
  %7 = call float @llvm.fmuladd.f32(float %mul, float %6, float 0xC0033A2720000000), !dbg !577
  %8 = call float @llvm.fmuladd.f32(float %mul, float %7, float 1.000000e+00), !dbg !578
  call void @llvm.dbg.value(metadata float %8, metadata !579, metadata !DIExpression()), !dbg !527
  %div23 = fdiv float %mul18, %8, !dbg !580
  call void @llvm.dbg.value(metadata float %div23, metadata !581, metadata !DIExpression()), !dbg !527
  %neg = fneg float %x, !dbg !582
  %9 = call float @llvm.fmuladd.f32(float %neg, float %div23, float 0x3E74442D00000000), !dbg !582
  %10 = fsub float %9, %x, !dbg !583
  %sub26 = fadd float %10, 0x3FF921FB40000000, !dbg !583
  br label %return, !dbg !584

if.else27:                                        ; preds = %if.end7
  %cmp28 = icmp slt i32 %.cast, 0, !dbg !585
  br i1 %cmp28, label %if.then29, label %if.else45, !dbg !587

if.then29:                                        ; preds = %if.else27
  %add = fadd float %x, 1.000000e+00, !dbg !588
  %mul30 = fmul float %add, 5.000000e-01, !dbg !590
  call void @llvm.dbg.value(metadata float %mul30, metadata !567, metadata !DIExpression()), !dbg !527
  %11 = call float @llvm.fmuladd.f32(float %mul30, float 0x3F023DE100000000, float 0x3F49EFE080000000), !dbg !591
  %12 = call float @llvm.fmuladd.f32(float %mul30, float %11, float 0xBFA48228C0000000), !dbg !592
  %13 = call float @llvm.fmuladd.f32(float %mul30, float %12, float 0x3FC9C15500000000), !dbg !593
  %14 = call float @llvm.fmuladd.f32(float %mul30, float %13, float 0xBFD4D61200000000), !dbg !594
  %15 = call float @llvm.fmuladd.f32(float %mul30, float %14, float 0x3FC5555560000000), !dbg !595
  %mul36 = fmul float %mul30, %15, !dbg !596
  call void @llvm.dbg.value(metadata float %mul36, metadata !574, metadata !DIExpression()), !dbg !527
  %16 = call float @llvm.fmuladd.f32(float %mul30, float 0x3FB3B8C5C0000000, float 0xBFE6066C20000000), !dbg !597
  %17 = call float @llvm.fmuladd.f32(float %mul30, float %16, float 0x40002AE5A0000000), !dbg !598
  %18 = call float @llvm.fmuladd.f32(float %mul30, float %17, float 0xC0033A2720000000), !dbg !599
  %19 = call float @llvm.fmuladd.f32(float %mul30, float %18, float 1.000000e+00), !dbg !600
  call void @llvm.dbg.value(metadata float %19, metadata !579, metadata !DIExpression()), !dbg !527
  %call = call arm_aapcs_vfpcc float @basicmath___ieee754_sqrtf(float noundef %mul30) #4, !dbg !601
  call void @llvm.dbg.value(metadata float %call, metadata !602, metadata !DIExpression()), !dbg !527
  %div41 = fdiv float %mul36, %19, !dbg !603
  call void @llvm.dbg.value(metadata float %div41, metadata !581, metadata !DIExpression()), !dbg !527
  %20 = call float @llvm.fmuladd.f32(float %div41, float %call, float 0xBE74442D00000000), !dbg !604
  call void @llvm.dbg.value(metadata float %20, metadata !605, metadata !DIExpression()), !dbg !527
  %add43 = fadd float %call, %20, !dbg !606
  %21 = call float @llvm.fmuladd.f32(float %add43, float -2.000000e+00, float 0x400921FB40000000), !dbg !607
  br label %return, !dbg !608

if.else45:                                        ; preds = %if.else27
  %sub46 = fsub float 1.000000e+00, %x, !dbg !609
  %mul47 = fmul float %sub46, 5.000000e-01, !dbg !611
  call void @llvm.dbg.value(metadata float %mul47, metadata !567, metadata !DIExpression()), !dbg !527
  %call48 = call arm_aapcs_vfpcc float @basicmath___ieee754_sqrtf(float noundef %mul47) #4, !dbg !612
  call void @llvm.dbg.value(metadata float %call48, metadata !602, metadata !DIExpression()), !dbg !527
  call void @llvm.dbg.value(metadata float %call48, metadata !613, metadata !DIExpression()), !dbg !527
  call void @llvm.dbg.value(metadata float %call48, metadata !614, metadata !DIExpression()), !dbg !616
  %.cast1 = bitcast float %call48 to i32, !dbg !617
  call void @llvm.dbg.value(metadata i32 %.cast1, metadata !618, metadata !DIExpression()), !dbg !619
  %and52 = and i32 %.cast1, -4096, !dbg !620
  call void @llvm.dbg.value(metadata i32 %and52, metadata !622, metadata !DIExpression()), !dbg !623
  %.cast2 = bitcast i32 %and52 to float, !dbg !620
  call void @llvm.dbg.value(metadata float %.cast2, metadata !613, metadata !DIExpression()), !dbg !527
  %neg56 = fneg float %.cast2, !dbg !624
  %22 = call float @llvm.fmuladd.f32(float %neg56, float %.cast2, float %mul47), !dbg !624
  %add57 = fadd float %call48, %.cast2, !dbg !625
  %div58 = fdiv float %22, %add57, !dbg !626
  call void @llvm.dbg.value(metadata float %div58, metadata !627, metadata !DIExpression()), !dbg !527
  %23 = call float @llvm.fmuladd.f32(float %mul47, float 0x3F023DE100000000, float 0x3F49EFE080000000), !dbg !628
  %24 = call float @llvm.fmuladd.f32(float %mul47, float %23, float 0xBFA48228C0000000), !dbg !629
  %25 = call float @llvm.fmuladd.f32(float %mul47, float %24, float 0x3FC9C15500000000), !dbg !630
  %26 = call float @llvm.fmuladd.f32(float %mul47, float %25, float 0xBFD4D61200000000), !dbg !631
  %27 = call float @llvm.fmuladd.f32(float %mul47, float %26, float 0x3FC5555560000000), !dbg !632
  %mul64 = fmul float %mul47, %27, !dbg !633
  call void @llvm.dbg.value(metadata float %mul64, metadata !574, metadata !DIExpression()), !dbg !527
  %28 = call float @llvm.fmuladd.f32(float %mul47, float 0x3FB3B8C5C0000000, float 0xBFE6066C20000000), !dbg !634
  %29 = call float @llvm.fmuladd.f32(float %mul47, float %28, float 0x40002AE5A0000000), !dbg !635
  %30 = call float @llvm.fmuladd.f32(float %mul47, float %29, float 0xC0033A2720000000), !dbg !636
  %31 = call float @llvm.fmuladd.f32(float %mul47, float %30, float 1.000000e+00), !dbg !637
  call void @llvm.dbg.value(metadata float %31, metadata !579, metadata !DIExpression()), !dbg !527
  %div69 = fdiv float %mul64, %31, !dbg !638
  call void @llvm.dbg.value(metadata float %div69, metadata !581, metadata !DIExpression()), !dbg !527
  %32 = call float @llvm.fmuladd.f32(float %div69, float %call48, float %div58), !dbg !639
  call void @llvm.dbg.value(metadata float %32, metadata !605, metadata !DIExpression()), !dbg !527
  %add71 = fadd float %32, %.cast2, !dbg !640
  %mul72 = fmul float %add71, 2.000000e+00, !dbg !641
  br label %return, !dbg !642

return:                                           ; preds = %if.else45, %if.then29, %if.end12, %if.then11, %if.then5, %if.else, %if.then2
  %retval.0 = phi float [ 0.000000e+00, %if.then2 ], [ 0x400921FB60000000, %if.else ], [ %div, %if.then5 ], [ 0x3FF921FB60000000, %if.then11 ], [ %sub26, %if.end12 ], [ %21, %if.then29 ], [ %mul72, %if.else45 ], !dbg !527
  ret float %retval.0, !dbg !643
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc float @basicmath___ieee754_sqrtf(float noundef %x) #0 !dbg !644 {
entry:
  call void @llvm.dbg.value(metadata float %x, metadata !645, metadata !DIExpression()), !dbg !646
  call void @llvm.dbg.value(metadata i32 -2147483648, metadata !647, metadata !DIExpression()), !dbg !646
  call void @llvm.dbg.value(metadata float %x, metadata !648, metadata !DIExpression()), !dbg !650
  %.cast = bitcast float %x to i32, !dbg !651
  call void @llvm.dbg.value(metadata i32 %.cast, metadata !652, metadata !DIExpression()), !dbg !646
  %and = and i32 %.cast, 2139095040, !dbg !653
  %cmp = icmp eq i32 %and, 2139095040, !dbg !655
  br i1 %cmp, label %if.then, label %if.end, !dbg !656

if.then:                                          ; preds = %entry
  %0 = call float @llvm.fmuladd.f32(float %x, float %x, float %x), !dbg !657
  br label %return, !dbg !659

if.end:                                           ; preds = %entry
  %cmp1 = icmp slt i32 %.cast, 1, !dbg !660
  br i1 %cmp1, label %if.then2, label %if.end11, !dbg !662

if.then2:                                         ; preds = %if.end
  %and3 = and i32 %.cast, 2147483647, !dbg !663
  %cmp4 = icmp eq i32 %and3, 0, !dbg !666
  br i1 %cmp4, label %if.then5, label %if.else, !dbg !667

if.then5:                                         ; preds = %if.then2
  br label %return, !dbg !668

if.else:                                          ; preds = %if.then2
  %cmp6 = icmp slt i32 %.cast, 0, !dbg !669
  br i1 %cmp6, label %if.then7, label %if.end9, !dbg !671

if.then7:                                         ; preds = %if.else
  %sub = fsub float %x, %x, !dbg !672
  %sub8 = fsub float %x, %x, !dbg !673
  %div = fdiv float %sub, %sub8, !dbg !674
  br label %return, !dbg !675

if.end9:                                          ; preds = %if.else
  br label %if.end10

if.end10:                                         ; preds = %if.end9
  br label %if.end11, !dbg !676

if.end11:                                         ; preds = %if.end10, %if.end
  %shr = ashr i32 %.cast, 23, !dbg !677
  call void @llvm.dbg.value(metadata i32 %shr, metadata !678, metadata !DIExpression()), !dbg !646
  %cmp12 = icmp ult i32 %.cast, 8388608, !dbg !679
  br i1 %cmp12, label %if.then13, label %if.end18, !dbg !681

if.then13:                                        ; preds = %if.end11
  call void @llvm.dbg.value(metadata i32 0, metadata !682, metadata !DIExpression()), !dbg !646
  br label %for.cond, !dbg !683

for.cond:                                         ; preds = %for.inc, %if.then13
  %ix.0 = phi i32 [ %.cast, %if.then13 ], [ %shl, %for.inc ], !dbg !646
  %i.0 = phi i32 [ 0, %if.then13 ], [ %inc, %for.inc ], !dbg !686
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !682, metadata !DIExpression()), !dbg !646
  call void @llvm.dbg.value(metadata i32 %ix.0, metadata !652, metadata !DIExpression()), !dbg !646
  %and14 = and i32 %ix.0, 8388608, !dbg !687
  %cmp15 = icmp eq i32 %and14, 0, !dbg !689
  br i1 %cmp15, label %for.body, label %for.end, !dbg !690

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.value(metadata i32 %ix.0, metadata !652, metadata !DIExpression(DW_OP_constu, 1, DW_OP_shl, DW_OP_stack_value)), !dbg !646
  br label %for.inc, !dbg !691

for.inc:                                          ; preds = %for.body
  %shl = shl i32 %ix.0, 1, !dbg !692
  call void @llvm.dbg.value(metadata i32 %shl, metadata !652, metadata !DIExpression()), !dbg !646
  %inc = add nuw nsw i32 %i.0, 1, !dbg !693
  call void @llvm.dbg.value(metadata i32 %inc, metadata !682, metadata !DIExpression()), !dbg !646
  br label %for.cond, !dbg !694, !llvm.loop !695

for.end:                                          ; preds = %for.cond
  %sub16 = add nsw i32 %i.0, -1, !dbg !697
  %sub17 = sub nsw i32 %shr, %sub16, !dbg !698
  call void @llvm.dbg.value(metadata i32 %sub17, metadata !678, metadata !DIExpression()), !dbg !646
  br label %if.end18, !dbg !699

if.end18:                                         ; preds = %for.end, %if.end11
  %m.0 = phi i32 [ %sub17, %for.end ], [ %shr, %if.end11 ], !dbg !646
  %ix.1 = phi i32 [ %ix.0, %for.end ], [ %.cast, %if.end11 ], !dbg !651
  call void @llvm.dbg.value(metadata i32 %ix.1, metadata !652, metadata !DIExpression()), !dbg !646
  call void @llvm.dbg.value(metadata i32 %m.0, metadata !678, metadata !DIExpression()), !dbg !646
  %sub19 = add nsw i32 %m.0, -127, !dbg !700
  call void @llvm.dbg.value(metadata i32 %sub19, metadata !678, metadata !DIExpression()), !dbg !646
  %and20 = and i32 %ix.1, 8388607, !dbg !701
  %or = or i32 %and20, 8388608, !dbg !702
  call void @llvm.dbg.value(metadata i32 %or, metadata !652, metadata !DIExpression()), !dbg !646
  %and21 = and i32 %sub19, 1, !dbg !703
  %tobool.not = icmp eq i32 %and21, 0, !dbg !703
  br i1 %tobool.not, label %if.end23, label %if.then22, !dbg !705

if.then22:                                        ; preds = %if.end18
  %add = shl nuw nsw i32 %or, 1, !dbg !706
  call void @llvm.dbg.value(metadata i32 %add, metadata !652, metadata !DIExpression()), !dbg !646
  br label %if.end23, !dbg !707

if.end23:                                         ; preds = %if.then22, %if.end18
  %ix.2 = phi i32 [ %add, %if.then22 ], [ %or, %if.end18 ], !dbg !646
  call void @llvm.dbg.value(metadata i32 %ix.2, metadata !652, metadata !DIExpression()), !dbg !646
  call void @llvm.dbg.value(metadata i32 %sub19, metadata !678, metadata !DIExpression(DW_OP_constu, 1, DW_OP_shra, DW_OP_stack_value)), !dbg !646
  call void @llvm.dbg.value(metadata i32 %ix.2, metadata !652, metadata !DIExpression(DW_OP_constu, 1, DW_OP_shl, DW_OP_stack_value)), !dbg !646
  call void @llvm.dbg.value(metadata i32 0, metadata !708, metadata !DIExpression()), !dbg !646
  call void @llvm.dbg.value(metadata i32 0, metadata !709, metadata !DIExpression()), !dbg !646
  call void @llvm.dbg.value(metadata i32 16777216, metadata !710, metadata !DIExpression()), !dbg !646
  br label %while.cond, !dbg !711

while.cond:                                       ; preds = %if.end33, %if.end23
  %q.0 = phi i32 [ 0, %if.end23 ], [ %q.1, %if.end33 ], !dbg !646
  %s.0 = phi i32 [ 0, %if.end23 ], [ %s.1, %if.end33 ], !dbg !646
  %ix.3.in = phi i32 [ %ix.2, %if.end23 ], [ %ix.4, %if.end33 ]
  %r.0 = phi i32 [ 16777216, %if.end23 ], [ %shr35, %if.end33 ], !dbg !646
  %ix.3 = shl nsw i32 %ix.3.in, 1, !dbg !646
  call void @llvm.dbg.value(metadata i32 %r.0, metadata !710, metadata !DIExpression()), !dbg !646
  call void @llvm.dbg.value(metadata i32 %ix.3, metadata !652, metadata !DIExpression()), !dbg !646
  call void @llvm.dbg.value(metadata i32 %s.0, metadata !708, metadata !DIExpression()), !dbg !646
  call void @llvm.dbg.value(metadata i32 %q.0, metadata !709, metadata !DIExpression()), !dbg !646
  %cmp26.not = icmp eq i32 %r.0, 0, !dbg !712
  br i1 %cmp26.not, label %while.end, label %while.body, !dbg !711

while.body:                                       ; preds = %while.cond
  %add27 = add i32 %s.0, %r.0, !dbg !713
  call void @llvm.dbg.value(metadata i32 %add27, metadata !715, metadata !DIExpression()), !dbg !646
  %cmp28.not = icmp slt i32 %ix.3, %add27, !dbg !716
  br i1 %cmp28.not, label %if.end33, label %if.then29, !dbg !718

if.then29:                                        ; preds = %while.body
  %add30 = add i32 %add27, %r.0, !dbg !719
  call void @llvm.dbg.value(metadata i32 %add30, metadata !708, metadata !DIExpression()), !dbg !646
  %sub31 = sub nsw i32 %ix.3, %add27, !dbg !721
  call void @llvm.dbg.value(metadata i32 %sub31, metadata !652, metadata !DIExpression()), !dbg !646
  %add32 = add i32 %q.0, %r.0, !dbg !722
  call void @llvm.dbg.value(metadata i32 %add32, metadata !709, metadata !DIExpression()), !dbg !646
  br label %if.end33, !dbg !723

if.end33:                                         ; preds = %if.then29, %while.body
  %q.1 = phi i32 [ %add32, %if.then29 ], [ %q.0, %while.body ], !dbg !646
  %s.1 = phi i32 [ %add30, %if.then29 ], [ %s.0, %while.body ], !dbg !646
  %ix.4 = phi i32 [ %sub31, %if.then29 ], [ %ix.3, %while.body ], !dbg !646
  call void @llvm.dbg.value(metadata i32 %ix.4, metadata !652, metadata !DIExpression()), !dbg !646
  call void @llvm.dbg.value(metadata i32 %s.1, metadata !708, metadata !DIExpression()), !dbg !646
  call void @llvm.dbg.value(metadata i32 %q.1, metadata !709, metadata !DIExpression()), !dbg !646
  call void @llvm.dbg.value(metadata i32 %ix.4, metadata !652, metadata !DIExpression(DW_OP_constu, 1, DW_OP_shl, DW_OP_stack_value)), !dbg !646
  %shr35 = lshr i32 %r.0, 1, !dbg !724
  call void @llvm.dbg.value(metadata i32 %shr35, metadata !710, metadata !DIExpression()), !dbg !646
  br label %while.cond, !dbg !711, !llvm.loop !725

while.end:                                        ; preds = %while.cond
  %cmp36.not = icmp eq i32 %ix.3.in, 0, !dbg !727
  br i1 %cmp36.not, label %if.end48, label %if.then37, !dbg !729

if.then37:                                        ; preds = %while.end
  call void @llvm.dbg.value(metadata float 1.000000e+00, metadata !730, metadata !DIExpression()), !dbg !646
  br i1 true, label %if.then39, label %if.end47, !dbg !731

if.then39:                                        ; preds = %if.then37
  call void @llvm.dbg.value(metadata float 1.000000e+00, metadata !730, metadata !DIExpression()), !dbg !646
  br i1 false, label %if.then41, label %if.else43, !dbg !733

if.then41:                                        ; preds = %if.then39
  br label %if.end46, !dbg !736

if.else43:                                        ; preds = %if.then39
  %and44 = and i32 %q.0, 1, !dbg !738
  %add45 = add nsw i32 %q.0, %and44, !dbg !739
  call void @llvm.dbg.value(metadata i32 %add45, metadata !709, metadata !DIExpression()), !dbg !646
  br label %if.end46

if.end46:                                         ; preds = %if.else43, %if.then41
  %q.2 = phi i32 [ undef, %if.then41 ], [ %add45, %if.else43 ], !dbg !740
  call void @llvm.dbg.value(metadata i32 %q.2, metadata !709, metadata !DIExpression()), !dbg !646
  br label %if.end47, !dbg !741

if.end47:                                         ; preds = %if.end46, %if.then37
  %q.3 = phi i32 [ %q.2, %if.end46 ], [ %q.0, %if.then37 ], !dbg !646
  call void @llvm.dbg.value(metadata i32 %q.3, metadata !709, metadata !DIExpression()), !dbg !646
  br label %if.end48, !dbg !742

if.end48:                                         ; preds = %if.end47, %while.end
  %q.4 = phi i32 [ %q.3, %if.end47 ], [ %q.0, %while.end ], !dbg !646
  call void @llvm.dbg.value(metadata i32 %q.4, metadata !709, metadata !DIExpression()), !dbg !646
  %shr49 = ashr i32 %q.4, 1, !dbg !743
  %add50 = add nsw i32 %shr49, 1056964608, !dbg !744
  call void @llvm.dbg.value(metadata i32 %add50, metadata !652, metadata !DIExpression()), !dbg !646
  %1 = shl i32 %sub19, 22, !dbg !745
  %shl51 = and i32 %1, -8388608, !dbg !745
  %add52 = add nsw i32 %add50, %shl51, !dbg !746
  call void @llvm.dbg.value(metadata i32 %add52, metadata !652, metadata !DIExpression()), !dbg !646
  call void @llvm.dbg.value(metadata i32 %add52, metadata !747, metadata !DIExpression()), !dbg !749
  %.cast1 = bitcast i32 %add52 to float, !dbg !750
  call void @llvm.dbg.value(metadata float %.cast1, metadata !730, metadata !DIExpression()), !dbg !646
  br label %return, !dbg !751

return:                                           ; preds = %if.end48, %if.then7, %if.then5, %if.then
  %retval.0 = phi float [ %0, %if.then ], [ %x, %if.then5 ], [ %div, %if.then7 ], [ %.cast1, %if.end48 ], !dbg !646
  ret float %retval.0, !dbg !752
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc float @basicmath___ieee754_powf(float noundef %x, float noundef %y) #0 !dbg !753 {
entry:
  call void @llvm.dbg.value(metadata float %x, metadata !756, metadata !DIExpression()), !dbg !757
  call void @llvm.dbg.value(metadata float %y, metadata !758, metadata !DIExpression()), !dbg !757
  call void @llvm.dbg.value(metadata float %x, metadata !759, metadata !DIExpression()), !dbg !761
  %.cast = bitcast float %x to i32, !dbg !762
  call void @llvm.dbg.value(metadata i32 %.cast, metadata !763, metadata !DIExpression()), !dbg !757
  call void @llvm.dbg.value(metadata float %y, metadata !764, metadata !DIExpression()), !dbg !766
  %.cast1 = bitcast float %y to i32, !dbg !767
  call void @llvm.dbg.value(metadata i32 %.cast1, metadata !768, metadata !DIExpression()), !dbg !757
  %and = and i32 %.cast, 2147483647, !dbg !769
  call void @llvm.dbg.value(metadata i32 %and, metadata !770, metadata !DIExpression()), !dbg !757
  %and4 = and i32 %.cast1, 2147483647, !dbg !771
  call void @llvm.dbg.value(metadata i32 %and4, metadata !772, metadata !DIExpression()), !dbg !757
  %cmp = icmp eq i32 %and4, 0, !dbg !773
  br i1 %cmp, label %if.then, label %if.end, !dbg !775

if.then:                                          ; preds = %entry
  br label %return, !dbg !776

if.end:                                           ; preds = %entry
  %cmp5 = fcmp oeq float %x, 1.000000e+00, !dbg !777
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !779

if.then6:                                         ; preds = %if.end
  br label %return, !dbg !780

if.end7:                                          ; preds = %if.end
  %cmp8 = fcmp oeq float %x, -1.000000e+00, !dbg !781
  br i1 %cmp8, label %land.lhs.true, label %if.end10, !dbg !783

land.lhs.true:                                    ; preds = %if.end7
  %call = call arm_aapcs_vfpcc i32 @basicmath___isinff(float noundef %y) #4, !dbg !784
  %tobool.not = icmp eq i32 %call, 0, !dbg !784
  br i1 %tobool.not, label %if.end10, label %if.then9, !dbg !785

if.then9:                                         ; preds = %land.lhs.true
  br label %return, !dbg !786

if.end10:                                         ; preds = %land.lhs.true, %if.end7
  %cmp11 = icmp ugt i32 %and, 2139095040, !dbg !787
  br i1 %cmp11, label %if.then13, label %lor.lhs.false, !dbg !789

lor.lhs.false:                                    ; preds = %if.end10
  %cmp12 = icmp ugt i32 %and4, 2139095040, !dbg !790
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !791

if.then13:                                        ; preds = %lor.lhs.false, %if.end10
  %add = fadd float %x, %y, !dbg !792
  br label %return, !dbg !793

if.end14:                                         ; preds = %lor.lhs.false
  call void @llvm.dbg.value(metadata i32 0, metadata !794, metadata !DIExpression()), !dbg !757
  %cmp15 = icmp slt i32 %.cast, 0, !dbg !795
  br i1 %cmp15, label %if.then16, label %if.end31, !dbg !797

if.then16:                                        ; preds = %if.end14
  %cmp17 = icmp ugt i32 %and4, 1266679807, !dbg !798
  br i1 %cmp17, label %if.then18, label %if.else, !dbg !801

if.then18:                                        ; preds = %if.then16
  call void @llvm.dbg.value(metadata i32 2, metadata !794, metadata !DIExpression()), !dbg !757
  br label %if.end30, !dbg !802

if.else:                                          ; preds = %if.then16
  %cmp19 = icmp ugt i32 %and4, 1065353215, !dbg !803
  br i1 %cmp19, label %if.then20, label %if.end29, !dbg !805

if.then20:                                        ; preds = %if.else
  %0 = lshr i32 %and4, 23, !dbg !806
  call void @llvm.dbg.value(metadata i32 %0, metadata !808, metadata !DIExpression(DW_OP_constu, 127, DW_OP_minus, DW_OP_stack_value)), !dbg !757
  %sub21 = sub nsw i32 150, %0, !dbg !809
  %shr22 = lshr i32 %and4, %sub21, !dbg !810
  call void @llvm.dbg.value(metadata i32 %shr22, metadata !811, metadata !DIExpression()), !dbg !757
  %sub23 = sub nsw i32 150, %0, !dbg !812
  %shl = shl i32 %shr22, %sub23, !dbg !814
  %cmp24 = icmp eq i32 %shl, %and4, !dbg !815
  br i1 %cmp24, label %if.then25, label %if.end28, !dbg !816

if.then25:                                        ; preds = %if.then20
  %and26 = and i32 %shr22, 1, !dbg !817
  %sub27 = sub nuw nsw i32 2, %and26, !dbg !818
  call void @llvm.dbg.value(metadata i32 %sub27, metadata !794, metadata !DIExpression()), !dbg !757
  br label %if.end28, !dbg !819

if.end28:                                         ; preds = %if.then25, %if.then20
  %yisint.0 = phi i32 [ %sub27, %if.then25 ], [ 0, %if.then20 ], !dbg !757
  call void @llvm.dbg.value(metadata i32 %yisint.0, metadata !794, metadata !DIExpression()), !dbg !757
  br label %if.end29, !dbg !820

if.end29:                                         ; preds = %if.end28, %if.else
  %yisint.1 = phi i32 [ %yisint.0, %if.end28 ], [ 0, %if.else ], !dbg !757
  call void @llvm.dbg.value(metadata i32 %yisint.1, metadata !794, metadata !DIExpression()), !dbg !757
  br label %if.end30

if.end30:                                         ; preds = %if.end29, %if.then18
  %yisint.2 = phi i32 [ 2, %if.then18 ], [ %yisint.1, %if.end29 ], !dbg !821
  call void @llvm.dbg.value(metadata i32 %yisint.2, metadata !794, metadata !DIExpression()), !dbg !757
  br label %if.end31, !dbg !822

if.end31:                                         ; preds = %if.end30, %if.end14
  %yisint.3 = phi i32 [ %yisint.2, %if.end30 ], [ 0, %if.end14 ], !dbg !757
  call void @llvm.dbg.value(metadata i32 %yisint.3, metadata !794, metadata !DIExpression()), !dbg !757
  %cmp32 = icmp eq i32 %and4, 2139095040, !dbg !823
  br i1 %cmp32, label %if.then33, label %if.end47, !dbg !825

if.then33:                                        ; preds = %if.end31
  %cmp34 = icmp eq i32 %and, 1065353216, !dbg !826
  br i1 %cmp34, label %if.then35, label %if.else37, !dbg !829

if.then35:                                        ; preds = %if.then33
  %sub36 = fsub float %y, %y, !dbg !830
  br label %return, !dbg !831

if.else37:                                        ; preds = %if.then33
  %cmp38 = icmp ugt i32 %and, 1065353216, !dbg !832
  br i1 %cmp38, label %if.then39, label %if.else41, !dbg !834

if.then39:                                        ; preds = %if.else37
  %cmp40 = icmp sgt i32 %.cast1, -1, !dbg !835
  br i1 %cmp40, label %cond.true, label %cond.false, !dbg !836

cond.true:                                        ; preds = %if.then39
  br label %cond.end, !dbg !836

cond.false:                                       ; preds = %if.then39
  br label %cond.end, !dbg !836

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi float [ %y, %cond.true ], [ 0.000000e+00, %cond.false ], !dbg !836
  br label %return, !dbg !837

if.else41:                                        ; preds = %if.else37
  %cmp42 = icmp slt i32 %.cast1, 0, !dbg !838
  br i1 %cmp42, label %cond.true43, label %cond.false44, !dbg !839

cond.true43:                                      ; preds = %if.else41
  %fneg = fneg float %y, !dbg !840
  br label %cond.end45, !dbg !839

cond.false44:                                     ; preds = %if.else41
  br label %cond.end45, !dbg !839

cond.end45:                                       ; preds = %cond.false44, %cond.true43
  %cond46 = phi float [ %fneg, %cond.true43 ], [ 0.000000e+00, %cond.false44 ], !dbg !839
  br label %return, !dbg !841

if.end47:                                         ; preds = %if.end31
  %cmp48 = icmp eq i32 %and4, 1065353216, !dbg !842
  br i1 %cmp48, label %if.then49, label %if.end53, !dbg !844

if.then49:                                        ; preds = %if.end47
  %cmp50 = icmp slt i32 %.cast1, 0, !dbg !845
  br i1 %cmp50, label %if.then51, label %if.else52, !dbg !848

if.then51:                                        ; preds = %if.then49
  %div = fdiv float 1.000000e+00, %x, !dbg !849
  br label %return, !dbg !850

if.else52:                                        ; preds = %if.then49
  br label %return, !dbg !851

if.end53:                                         ; preds = %if.end47
  %cmp54 = icmp eq i32 %.cast1, 1073741824, !dbg !852
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !854

if.then55:                                        ; preds = %if.end53
  %mul = fmul float %x, %x, !dbg !855
  br label %return, !dbg !856

if.end56:                                         ; preds = %if.end53
  %cmp57 = icmp eq i32 %.cast1, 1056964608, !dbg !857
  br i1 %cmp57, label %if.then58, label %if.end63, !dbg !859

if.then58:                                        ; preds = %if.end56
  %cmp59 = icmp sgt i32 %.cast, -1, !dbg !860
  br i1 %cmp59, label %if.then60, label %if.end62, !dbg !863

if.then60:                                        ; preds = %if.then58
  %call61 = call arm_aapcs_vfpcc float @basicmath___ieee754_sqrtf(float noundef %x) #4, !dbg !864
  br label %return, !dbg !865

if.end62:                                         ; preds = %if.then58
  br label %if.end63, !dbg !866

if.end63:                                         ; preds = %if.end62, %if.end56
  %call64 = call arm_aapcs_vfpcc float @basicmath___fabsf(float noundef %x) #4, !dbg !867
  call void @llvm.dbg.value(metadata float %call64, metadata !868, metadata !DIExpression()), !dbg !757
  %cmp65 = icmp eq i32 %and, 2139095040, !dbg !869
  br i1 %cmp65, label %if.then70, label %lor.lhs.false66, !dbg !871

lor.lhs.false66:                                  ; preds = %if.end63
  %cmp67 = icmp eq i32 %and, 0, !dbg !872
  br i1 %cmp67, label %if.then70, label %lor.lhs.false68, !dbg !873

lor.lhs.false68:                                  ; preds = %lor.lhs.false66
  %cmp69 = icmp eq i32 %and, 1065353216, !dbg !874
  br i1 %cmp69, label %if.then70, label %if.end90, !dbg !875

if.then70:                                        ; preds = %lor.lhs.false68, %lor.lhs.false66, %if.end63
  call void @llvm.dbg.value(metadata float %call64, metadata !876, metadata !DIExpression()), !dbg !757
  %cmp71 = icmp slt i32 %.cast1, 0, !dbg !877
  br i1 %cmp71, label %if.then72, label %if.end74, !dbg !880

if.then72:                                        ; preds = %if.then70
  %div73 = fdiv float 1.000000e+00, %call64, !dbg !881
  call void @llvm.dbg.value(metadata float %div73, metadata !876, metadata !DIExpression()), !dbg !757
  br label %if.end74, !dbg !882

if.end74:                                         ; preds = %if.then72, %if.then70
  %z.0 = phi float [ %div73, %if.then72 ], [ %call64, %if.then70 ], !dbg !883
  call void @llvm.dbg.value(metadata float %z.0, metadata !876, metadata !DIExpression()), !dbg !757
  %cmp75 = icmp slt i32 %.cast, 0, !dbg !884
  br i1 %cmp75, label %if.then76, label %if.end89, !dbg !886

if.then76:                                        ; preds = %if.end74
  %sub77 = add nsw i32 %and, -1065353216, !dbg !887
  %or = or i32 %sub77, %yisint.3, !dbg !890
  %cmp78 = icmp eq i32 %or, 0, !dbg !891
  br i1 %cmp78, label %if.then79, label %if.else83, !dbg !892

if.then79:                                        ; preds = %if.then76
  %sub80 = fsub float %z.0, %z.0, !dbg !893
  %sub81 = fsub float %z.0, %z.0, !dbg !895
  %div82 = fdiv float %sub80, %sub81, !dbg !896
  call void @llvm.dbg.value(metadata float %div82, metadata !876, metadata !DIExpression()), !dbg !757
  br label %if.end88, !dbg !897

if.else83:                                        ; preds = %if.then76
  %cmp84 = icmp eq i32 %yisint.3, 1, !dbg !898
  br i1 %cmp84, label %if.then85, label %if.end87, !dbg !900

if.then85:                                        ; preds = %if.else83
  %fneg86 = fneg float %z.0, !dbg !901
  call void @llvm.dbg.value(metadata float %fneg86, metadata !876, metadata !DIExpression()), !dbg !757
  br label %if.end87, !dbg !902

if.end87:                                         ; preds = %if.then85, %if.else83
  %z.1 = phi float [ %fneg86, %if.then85 ], [ %z.0, %if.else83 ], !dbg !883
  call void @llvm.dbg.value(metadata float %z.1, metadata !876, metadata !DIExpression()), !dbg !757
  br label %if.end88

if.end88:                                         ; preds = %if.end87, %if.then79
  %z.2 = phi float [ %div82, %if.then79 ], [ %z.1, %if.end87 ], !dbg !903
  call void @llvm.dbg.value(metadata float %z.2, metadata !876, metadata !DIExpression()), !dbg !757
  br label %if.end89, !dbg !904

if.end89:                                         ; preds = %if.end88, %if.end74
  %z.3 = phi float [ %z.2, %if.end88 ], [ %z.0, %if.end74 ], !dbg !883
  call void @llvm.dbg.value(metadata float %z.3, metadata !876, metadata !DIExpression()), !dbg !757
  br label %return, !dbg !905

if.end90:                                         ; preds = %lor.lhs.false68
  %shr91 = lshr i32 %.cast, 31, !dbg !906
  %sub92 = add nsw i32 %shr91, -1, !dbg !908
  %or93 = or i32 %sub92, %yisint.3, !dbg !909
  %cmp94 = icmp eq i32 %or93, 0, !dbg !910
  br i1 %cmp94, label %if.then95, label %if.end99, !dbg !911

if.then95:                                        ; preds = %if.end90
  %sub96 = fsub float %x, %x, !dbg !912
  %sub97 = fsub float %x, %x, !dbg !913
  %div98 = fdiv float %sub96, %sub97, !dbg !914
  br label %return, !dbg !915

if.end99:                                         ; preds = %if.end90
  %cmp100 = icmp ugt i32 %and4, 1291845632, !dbg !916
  br i1 %cmp100, label %if.then101, label %if.else131, !dbg !918

if.then101:                                       ; preds = %if.end99
  %cmp102 = icmp ult i32 %and, 1065353208, !dbg !919
  br i1 %cmp102, label %if.then103, label %if.end106, !dbg !922

if.then103:                                       ; preds = %if.then101
  %cmp104 = icmp slt i32 %.cast1, 0, !dbg !923
  %cond105 = select i1 %cmp104, float 0x7FF0000000000000, float 0.000000e+00, !dbg !924
  br label %return, !dbg !925

if.end106:                                        ; preds = %if.then101
  %cmp107 = icmp ugt i32 %and, 1065353223, !dbg !926
  br i1 %cmp107, label %if.then108, label %if.end111, !dbg !928

if.then108:                                       ; preds = %if.end106
  %cmp109 = icmp sgt i32 %.cast1, 0, !dbg !929
  %cond110 = select i1 %cmp109, float 0x7FF0000000000000, float 0.000000e+00, !dbg !930
  br label %return, !dbg !931

if.end111:                                        ; preds = %if.end106
  %sub112 = fadd float %x, -1.000000e+00, !dbg !932
  call void @llvm.dbg.value(metadata float %sub112, metadata !933, metadata !DIExpression()), !dbg !757
  %mul113 = fmul float %sub112, %sub112, !dbg !934
  %neg = fneg float %sub112, !dbg !935
  %1 = call float @llvm.fmuladd.f32(float %neg, float 2.500000e-01, float 0x3FD5555560000000), !dbg !935
  %neg116 = fneg float %sub112, !dbg !936
  %2 = call float @llvm.fmuladd.f32(float %neg116, float %1, float 5.000000e-01), !dbg !936
  %mul117 = fmul float %mul113, %2, !dbg !937
  call void @llvm.dbg.value(metadata float %mul117, metadata !938, metadata !DIExpression()), !dbg !757
  %mul118 = fmul float %sub112, 0x3FF7154000000000, !dbg !939
  call void @llvm.dbg.value(metadata float %mul118, metadata !940, metadata !DIExpression()), !dbg !757
  %neg121 = fmul float %mul117, 0xBFF7154760000000, !dbg !941
  %3 = call float @llvm.fmuladd.f32(float %sub112, float 0x3EDD94AE00000000, float %neg121), !dbg !941
  call void @llvm.dbg.value(metadata float %3, metadata !942, metadata !DIExpression()), !dbg !757
  %add122 = fadd float %mul118, %3, !dbg !943
  call void @llvm.dbg.value(metadata float %add122, metadata !944, metadata !DIExpression()), !dbg !757
  call void @llvm.dbg.value(metadata float %add122, metadata !945, metadata !DIExpression()), !dbg !947
  %.cast21 = bitcast float %add122 to i32, !dbg !948
  call void @llvm.dbg.value(metadata i32 %.cast21, metadata !949, metadata !DIExpression()), !dbg !757
  %and126 = and i32 %.cast21, -4096, !dbg !950
  call void @llvm.dbg.value(metadata i32 %and126, metadata !952, metadata !DIExpression()), !dbg !953
  %.cast22 = bitcast i32 %and126 to float, !dbg !950
  call void @llvm.dbg.value(metadata float %.cast22, metadata !944, metadata !DIExpression()), !dbg !757
  %sub129 = fsub float %.cast22, %mul118, !dbg !954
  %sub130 = fsub float %3, %sub129, !dbg !955
  call void @llvm.dbg.value(metadata float %sub130, metadata !956, metadata !DIExpression()), !dbg !757
  br label %if.end243, !dbg !957

if.else131:                                       ; preds = %if.end99
  call void @llvm.dbg.value(metadata i32 0, metadata !958, metadata !DIExpression()), !dbg !757
  %cmp132 = icmp ult i32 %and, 8388608, !dbg !959
  br i1 %cmp132, label %if.then133, label %if.end139, !dbg !962

if.then133:                                       ; preds = %if.else131
  %mul134 = fmul float %call64, 0x4170000000000000, !dbg !963
  call void @llvm.dbg.value(metadata float %mul134, metadata !868, metadata !DIExpression()), !dbg !757
  call void @llvm.dbg.value(metadata i32 -24, metadata !958, metadata !DIExpression()), !dbg !757
  call void @llvm.dbg.value(metadata float %mul134, metadata !965, metadata !DIExpression()), !dbg !967
  %.cast20 = bitcast float %mul134 to i32, !dbg !968
  call void @llvm.dbg.value(metadata i32 %.cast20, metadata !770, metadata !DIExpression()), !dbg !757
  br label %if.end139, !dbg !969

if.end139:                                        ; preds = %if.then133, %if.else131
  %n.0 = phi i32 [ -24, %if.then133 ], [ 0, %if.else131 ], !dbg !970
  %ix.0 = phi i32 [ %.cast20, %if.then133 ], [ %and, %if.else131 ], !dbg !757
  call void @llvm.dbg.value(metadata i32 %ix.0, metadata !770, metadata !DIExpression()), !dbg !757
  call void @llvm.dbg.value(metadata i32 %n.0, metadata !958, metadata !DIExpression()), !dbg !757
  %shr140 = ashr i32 %ix.0, 23, !dbg !971
  %sub141 = add nsw i32 %shr140, -127, !dbg !972
  %add142 = add nsw i32 %n.0, %sub141, !dbg !973
  call void @llvm.dbg.value(metadata i32 %add142, metadata !958, metadata !DIExpression()), !dbg !757
  %and143 = and i32 %ix.0, 8388607, !dbg !974
  call void @llvm.dbg.value(metadata i32 %and143, metadata !811, metadata !DIExpression()), !dbg !757
  %or144 = or i32 %and143, 1065353216, !dbg !975
  call void @llvm.dbg.value(metadata i32 %or144, metadata !770, metadata !DIExpression()), !dbg !757
  %cmp145 = icmp ult i32 %and143, 1885298, !dbg !976
  br i1 %cmp145, label %if.then146, label %if.else147, !dbg !978

if.then146:                                       ; preds = %if.end139
  call void @llvm.dbg.value(metadata i32 0, metadata !808, metadata !DIExpression()), !dbg !757
  br label %if.end154, !dbg !979

if.else147:                                       ; preds = %if.end139
  %cmp148 = icmp ult i32 %and143, 6140887, !dbg !980
  br i1 %cmp148, label %if.then149, label %if.else150, !dbg !982

if.then149:                                       ; preds = %if.else147
  call void @llvm.dbg.value(metadata i32 1, metadata !808, metadata !DIExpression()), !dbg !757
  br label %if.end153, !dbg !983

if.else150:                                       ; preds = %if.else147
  call void @llvm.dbg.value(metadata i32 0, metadata !808, metadata !DIExpression()), !dbg !757
  %add151 = add nsw i32 %add142, 1, !dbg !984
  call void @llvm.dbg.value(metadata i32 %add151, metadata !958, metadata !DIExpression()), !dbg !757
  %sub152 = or i32 %and143, 1056964608, !dbg !986
  call void @llvm.dbg.value(metadata i32 %sub152, metadata !770, metadata !DIExpression()), !dbg !757
  br label %if.end153

if.end153:                                        ; preds = %if.else150, %if.then149
  %k.0 = phi i32 [ 1, %if.then149 ], [ 0, %if.else150 ], !dbg !987
  %n.1 = phi i32 [ %add142, %if.then149 ], [ %add151, %if.else150 ], !dbg !970
  %ix.1 = phi i32 [ %or144, %if.then149 ], [ %sub152, %if.else150 ], !dbg !970
  call void @llvm.dbg.value(metadata i32 %ix.1, metadata !770, metadata !DIExpression()), !dbg !757
  call void @llvm.dbg.value(metadata i32 %n.1, metadata !958, metadata !DIExpression()), !dbg !757
  call void @llvm.dbg.value(metadata i32 %k.0, metadata !808, metadata !DIExpression()), !dbg !757
  br label %if.end154

if.end154:                                        ; preds = %if.end153, %if.then146
  %k.1 = phi i32 [ 0, %if.then146 ], [ %k.0, %if.end153 ], !dbg !988
  %n.2 = phi i32 [ %add142, %if.then146 ], [ %n.1, %if.end153 ], !dbg !973
  %ix.2 = phi i32 [ %or144, %if.then146 ], [ %ix.1, %if.end153 ], !dbg !989
  call void @llvm.dbg.value(metadata i32 %ix.2, metadata !770, metadata !DIExpression()), !dbg !757
  call void @llvm.dbg.value(metadata i32 %n.2, metadata !958, metadata !DIExpression()), !dbg !757
  call void @llvm.dbg.value(metadata i32 %k.1, metadata !808, metadata !DIExpression()), !dbg !757
  call void @llvm.dbg.value(metadata i32 %ix.2, metadata !990, metadata !DIExpression()), !dbg !992
  %.cast2 = bitcast i32 %ix.2 to float, !dbg !993
  call void @llvm.dbg.value(metadata float %.cast2, metadata !868, metadata !DIExpression()), !dbg !757
  %arrayidx = getelementptr inbounds [2 x float], [2 x float]* @basicmath_bp, i32 0, i32 %k.1, !dbg !994
  %4 = load float, float* %arrayidx, align 4, !dbg !994
  %sub158 = fsub float %.cast2, %4, !dbg !995
  call void @llvm.dbg.value(metadata float %sub158, metadata !940, metadata !DIExpression()), !dbg !757
  %add160 = fadd float %4, %.cast2, !dbg !996
  %div161 = fdiv float 1.000000e+00, %add160, !dbg !997
  call void @llvm.dbg.value(metadata float %div161, metadata !942, metadata !DIExpression()), !dbg !757
  %mul162 = fmul float %sub158, %div161, !dbg !998
  call void @llvm.dbg.value(metadata float %mul162, metadata !999, metadata !DIExpression()), !dbg !757
  call void @llvm.dbg.value(metadata float %mul162, metadata !1000, metadata !DIExpression()), !dbg !970
  call void @llvm.dbg.value(metadata float %mul162, metadata !1001, metadata !DIExpression()), !dbg !1003
  %.cast3 = bitcast float %mul162 to i32, !dbg !1004
  call void @llvm.dbg.value(metadata i32 %.cast3, metadata !949, metadata !DIExpression()), !dbg !757
  %and167 = and i32 %.cast3, -4096, !dbg !1005
  call void @llvm.dbg.value(metadata i32 %and167, metadata !1007, metadata !DIExpression()), !dbg !1008
  %.cast4 = bitcast i32 %and167 to float, !dbg !1005
  call void @llvm.dbg.value(metadata float %.cast4, metadata !1000, metadata !DIExpression()), !dbg !970
  %shr171 = ashr i32 %ix.2, 1, !dbg !1009
  %or172 = or i32 %shr171, 536870912, !dbg !1009
  %add173 = add nsw i32 %or172, 262144, !dbg !1009
  %shl174 = shl nsw i32 %k.1, 21, !dbg !1009
  %add175 = add nsw i32 %add173, %shl174, !dbg !1009
  call void @llvm.dbg.value(metadata i32 %add175, metadata !1011, metadata !DIExpression()), !dbg !1012
  %.cast5 = bitcast i32 %add175 to float, !dbg !1009
  call void @llvm.dbg.value(metadata float %.cast5, metadata !1013, metadata !DIExpression()), !dbg !970
  %arrayidx178 = getelementptr inbounds [2 x float], [2 x float]* @basicmath_bp, i32 0, i32 %k.1, !dbg !1014
  %5 = load float, float* %arrayidx178, align 4, !dbg !1014
  %sub179 = fsub float %.cast5, %5, !dbg !1015
  %sub180 = fsub float %.cast2, %sub179, !dbg !1016
  call void @llvm.dbg.value(metadata float %sub180, metadata !1017, metadata !DIExpression()), !dbg !970
  %neg182 = fneg float %.cast4, !dbg !1018
  %6 = call float @llvm.fmuladd.f32(float %neg182, float %.cast5, float %sub158), !dbg !1018
  %neg184 = fneg float %.cast4, !dbg !1019
  %7 = call float @llvm.fmuladd.f32(float %neg184, float %sub180, float %6), !dbg !1019
  %mul185 = fmul float %div161, %7, !dbg !1020
  call void @llvm.dbg.value(metadata float %mul185, metadata !1021, metadata !DIExpression()), !dbg !970
  %mul186 = fmul float %mul162, %mul162, !dbg !1022
  call void @llvm.dbg.value(metadata float %mul186, metadata !1023, metadata !DIExpression()), !dbg !970
  %mul187 = fmul float %mul186, %mul186, !dbg !1024
  %8 = call float @llvm.fmuladd.f32(float %mul186, float 0x3FCA7E2840000000, float 0x3FCD864AA0000000), !dbg !1025
  %9 = call float @llvm.fmuladd.f32(float %mul186, float %8, float 0x3FD17460A0000000), !dbg !1026
  %10 = call float @llvm.fmuladd.f32(float %mul186, float %9, float 0x3FD5555560000000), !dbg !1027
  %11 = call float @llvm.fmuladd.f32(float %mul186, float %10, float 0x3FDB6DB6E0000000), !dbg !1028
  %12 = call float @llvm.fmuladd.f32(float %mul186, float %11, float 0x3FE3333340000000), !dbg !1029
  %mul193 = fmul float %mul187, %12, !dbg !1030
  call void @llvm.dbg.value(metadata float %mul193, metadata !1031, metadata !DIExpression()), !dbg !757
  %add194 = fadd float %mul162, %.cast4, !dbg !1032
  %13 = call float @llvm.fmuladd.f32(float %mul185, float %add194, float %mul193), !dbg !1033
  call void @llvm.dbg.value(metadata float %13, metadata !1031, metadata !DIExpression()), !dbg !757
  %mul196 = fmul float %.cast4, %.cast4, !dbg !1034
  call void @llvm.dbg.value(metadata float %mul196, metadata !1023, metadata !DIExpression()), !dbg !970
  %add197 = fadd float %mul196, 3.000000e+00, !dbg !1035
  %add198 = fadd float %add197, %13, !dbg !1036
  call void @llvm.dbg.value(metadata float %add198, metadata !1013, metadata !DIExpression()), !dbg !970
  call void @llvm.dbg.value(metadata float %add198, metadata !1037, metadata !DIExpression()), !dbg !1039
  %.cast6 = bitcast float %add198 to i32, !dbg !1040
  call void @llvm.dbg.value(metadata i32 %.cast6, metadata !949, metadata !DIExpression()), !dbg !757
  %and203 = and i32 %.cast6, -4096, !dbg !1041
  call void @llvm.dbg.value(metadata i32 %and203, metadata !1043, metadata !DIExpression()), !dbg !1044
  %.cast7 = bitcast i32 %and203 to float, !dbg !1041
  call void @llvm.dbg.value(metadata float %.cast7, metadata !1013, metadata !DIExpression()), !dbg !970
  %sub206 = fadd float %.cast7, -3.000000e+00, !dbg !1045
  %sub207 = fsub float %sub206, %mul196, !dbg !1046
  %sub208 = fsub float %13, %sub207, !dbg !1047
  call void @llvm.dbg.value(metadata float %sub208, metadata !1017, metadata !DIExpression()), !dbg !970
  %mul209 = fmul float %.cast4, %.cast7, !dbg !1048
  call void @llvm.dbg.value(metadata float %mul209, metadata !940, metadata !DIExpression()), !dbg !757
  %mul211 = fmul float %sub208, %mul162, !dbg !1049
  %14 = call float @llvm.fmuladd.f32(float %mul185, float %.cast7, float %mul211), !dbg !1050
  call void @llvm.dbg.value(metadata float %14, metadata !942, metadata !DIExpression()), !dbg !757
  %add212 = fadd float %mul209, %14, !dbg !1051
  call void @llvm.dbg.value(metadata float %add212, metadata !1052, metadata !DIExpression()), !dbg !757
  call void @llvm.dbg.value(metadata float %add212, metadata !1053, metadata !DIExpression()), !dbg !1055
  %.cast8 = bitcast float %add212 to i32, !dbg !1056
  call void @llvm.dbg.value(metadata i32 %.cast8, metadata !949, metadata !DIExpression()), !dbg !757
  %and217 = and i32 %.cast8, -4096, !dbg !1057
  call void @llvm.dbg.value(metadata i32 %and217, metadata !1059, metadata !DIExpression()), !dbg !1060
  %.cast9 = bitcast i32 %and217 to float, !dbg !1057
  call void @llvm.dbg.value(metadata float %.cast9, metadata !1052, metadata !DIExpression()), !dbg !757
  %sub220 = fsub float %.cast9, %mul209, !dbg !1061
  %sub221 = fsub float %14, %sub220, !dbg !1062
  call void @llvm.dbg.value(metadata float %sub221, metadata !1063, metadata !DIExpression()), !dbg !757
  %mul222 = fmul float %.cast9, 0x3FEEC70000000000, !dbg !1064
  call void @llvm.dbg.value(metadata float %mul222, metadata !1065, metadata !DIExpression()), !dbg !757
  %mul224 = fmul float %sub221, 0x3FEEC709E0000000, !dbg !1066
  %15 = call float @llvm.fmuladd.f32(float %.cast9, float 0x3ED3B87400000000, float %mul224), !dbg !1067
  %arrayidx225 = getelementptr inbounds [2 x float], [2 x float]* @basicmath_dp_l, i32 0, i32 %k.1, !dbg !1068
  %16 = load float, float* %arrayidx225, align 4, !dbg !1068
  %add226 = fadd float %15, %16, !dbg !1069
  call void @llvm.dbg.value(metadata float %add226, metadata !1070, metadata !DIExpression()), !dbg !757
  %conv = sitofp i32 %n.2 to float, !dbg !1071
  call void @llvm.dbg.value(metadata float %conv, metadata !933, metadata !DIExpression()), !dbg !757
  %add227 = fadd float %mul222, %add226, !dbg !1072
  %arrayidx228 = getelementptr inbounds [2 x float], [2 x float]* @basicmath_dp_h, i32 0, i32 %k.1, !dbg !1073
  %17 = load float, float* %arrayidx228, align 4, !dbg !1073
  %add229 = fadd float %add227, %17, !dbg !1074
  %add230 = fadd float %add229, %conv, !dbg !1075
  call void @llvm.dbg.value(metadata float %add230, metadata !944, metadata !DIExpression()), !dbg !757
  call void @llvm.dbg.value(metadata float %add230, metadata !1076, metadata !DIExpression()), !dbg !1078
  %.cast10 = bitcast float %add230 to i32, !dbg !1079
  call void @llvm.dbg.value(metadata i32 %.cast10, metadata !949, metadata !DIExpression()), !dbg !757
  %and235 = and i32 %.cast10, -4096, !dbg !1080
  call void @llvm.dbg.value(metadata i32 %and235, metadata !1082, metadata !DIExpression()), !dbg !1083
  %.cast11 = bitcast i32 %and235 to float, !dbg !1080
  call void @llvm.dbg.value(metadata float %.cast11, metadata !944, metadata !DIExpression()), !dbg !757
  %sub238 = fsub float %.cast11, %conv, !dbg !1084
  %arrayidx239 = getelementptr inbounds [2 x float], [2 x float]* @basicmath_dp_h, i32 0, i32 %k.1, !dbg !1085
  %18 = load float, float* %arrayidx239, align 4, !dbg !1085
  %sub240 = fsub float %sub238, %18, !dbg !1086
  %sub241 = fsub float %sub240, %mul222, !dbg !1087
  %sub242 = fsub float %add226, %sub241, !dbg !1088
  call void @llvm.dbg.value(metadata float %sub242, metadata !956, metadata !DIExpression()), !dbg !757
  br label %if.end243

if.end243:                                        ; preds = %if.end154, %if.end111
  %t2.0 = phi float [ %sub130, %if.end111 ], [ %sub242, %if.end154 ], !dbg !1089
  %t1.0 = phi float [ %.cast22, %if.end111 ], [ %.cast11, %if.end154 ], !dbg !1089
  call void @llvm.dbg.value(metadata float %t1.0, metadata !944, metadata !DIExpression()), !dbg !757
  call void @llvm.dbg.value(metadata float %t2.0, metadata !956, metadata !DIExpression()), !dbg !757
  call void @llvm.dbg.value(metadata float 1.000000e+00, metadata !999, metadata !DIExpression()), !dbg !757
  %shr244 = lshr i32 %.cast, 31, !dbg !1090
  %sub245 = add nsw i32 %shr244, -1, !dbg !1092
  %sub246 = add nsw i32 %yisint.3, -1, !dbg !1093
  %or247 = or i32 %sub245, %sub246, !dbg !1094
  %cmp248 = icmp eq i32 %or247, 0, !dbg !1095
  br i1 %cmp248, label %if.then250, label %if.end251, !dbg !1096

if.then250:                                       ; preds = %if.end243
  call void @llvm.dbg.value(metadata float -1.000000e+00, metadata !999, metadata !DIExpression()), !dbg !757
  br label %if.end251, !dbg !1097

if.end251:                                        ; preds = %if.then250, %if.end243
  %s.0 = phi float [ -1.000000e+00, %if.then250 ], [ 1.000000e+00, %if.end243 ], !dbg !757
  call void @llvm.dbg.value(metadata float %s.0, metadata !999, metadata !DIExpression()), !dbg !757
  call void @llvm.dbg.value(metadata float %y, metadata !1098, metadata !DIExpression()), !dbg !1100
  %.cast12 = bitcast float %y to i32, !dbg !1101
  call void @llvm.dbg.value(metadata i32 %.cast12, metadata !949, metadata !DIExpression()), !dbg !757
  %and256 = and i32 %.cast12, -4096, !dbg !1102
  call void @llvm.dbg.value(metadata i32 %and256, metadata !1104, metadata !DIExpression()), !dbg !1105
  %.cast13 = bitcast i32 %and256 to float, !dbg !1102
  call void @llvm.dbg.value(metadata float %.cast13, metadata !1106, metadata !DIExpression()), !dbg !757
  %sub259 = fsub float %y, %.cast13, !dbg !1107
  %mul261 = fmul float %t2.0, %y, !dbg !1108
  %19 = call float @llvm.fmuladd.f32(float %sub259, float %t1.0, float %mul261), !dbg !1109
  call void @llvm.dbg.value(metadata float %19, metadata !1063, metadata !DIExpression()), !dbg !757
  %mul262 = fmul float %t1.0, %.cast13, !dbg !1110
  call void @llvm.dbg.value(metadata float %mul262, metadata !1052, metadata !DIExpression()), !dbg !757
  %add263 = fadd float %19, %mul262, !dbg !1111
  call void @llvm.dbg.value(metadata float %add263, metadata !876, metadata !DIExpression()), !dbg !757
  call void @llvm.dbg.value(metadata float %add263, metadata !1112, metadata !DIExpression()), !dbg !1114
  %.cast14 = bitcast float %add263 to i32, !dbg !1115
  call void @llvm.dbg.value(metadata i32 %.cast14, metadata !811, metadata !DIExpression()), !dbg !757
  %cmp267 = icmp sgt i32 %.cast14, 1124073472, !dbg !1116
  br i1 %cmp267, label %if.then269, label %if.else272, !dbg !1118

if.then269:                                       ; preds = %if.end251
  %mul270 = fmul float %s.0, 0x46293E5940000000, !dbg !1119
  %mul271 = fmul float %mul270, 0x46293E5940000000, !dbg !1120
  br label %return, !dbg !1121

if.else272:                                       ; preds = %if.end251
  %cmp273 = icmp eq i32 %.cast14, 1124073472, !dbg !1122
  br i1 %cmp273, label %if.then275, label %if.else284, !dbg !1124

if.then275:                                       ; preds = %if.else272
  %add276 = fadd float %19, 0x3E67154780000000, !dbg !1125
  %sub277 = fsub float %add263, %mul262, !dbg !1128
  %cmp278 = fcmp ogt float %add276, %sub277, !dbg !1129
  br i1 %cmp278, label %if.then280, label %if.end283, !dbg !1130

if.then280:                                       ; preds = %if.then275
  %mul281 = fmul float %s.0, 0x46293E5940000000, !dbg !1131
  %mul282 = fmul float %mul281, 0x46293E5940000000, !dbg !1132
  br label %return, !dbg !1133

if.end283:                                        ; preds = %if.then275
  br label %if.end304, !dbg !1134

if.else284:                                       ; preds = %if.else272
  %and285 = and i32 %.cast14, 2147483647, !dbg !1135
  %cmp286 = icmp ugt i32 %and285, 1125515264, !dbg !1137
  br i1 %cmp286, label %if.then288, label %if.else291, !dbg !1138

if.then288:                                       ; preds = %if.else284
  %mul289 = fmul float %s.0, 0x39B4484C00000000, !dbg !1139
  %mul290 = fmul float %mul289, 0x39B4484C00000000, !dbg !1140
  br label %return, !dbg !1141

if.else291:                                       ; preds = %if.else284
  %cmp292 = icmp eq i32 %.cast14, -1021968384, !dbg !1142
  br i1 %cmp292, label %if.then294, label %if.end302, !dbg !1144

if.then294:                                       ; preds = %if.else291
  %sub295 = fsub float %add263, %mul262, !dbg !1145
  %cmp296 = fcmp ugt float %19, %sub295, !dbg !1148
  br i1 %cmp296, label %if.end301, label %if.then298, !dbg !1149

if.then298:                                       ; preds = %if.then294
  %mul299 = fmul float %s.0, 0x39B4484C00000000, !dbg !1150
  %mul300 = fmul float %mul299, 0x39B4484C00000000, !dbg !1151
  br label %return, !dbg !1152

if.end301:                                        ; preds = %if.then294
  br label %if.end302, !dbg !1153

if.end302:                                        ; preds = %if.end301, %if.else291
  br label %if.end303

if.end303:                                        ; preds = %if.end302
  br label %if.end304

if.end304:                                        ; preds = %if.end303, %if.end283
  br label %if.end305

if.end305:                                        ; preds = %if.end304
  %and306 = and i32 %.cast14, 2147483647, !dbg !1154
  call void @llvm.dbg.value(metadata i32 %and306, metadata !1155, metadata !DIExpression()), !dbg !757
  call void @llvm.dbg.value(metadata i32 %and306, metadata !808, metadata !DIExpression(DW_OP_constu, 23, DW_OP_shr, DW_OP_constu, 127, DW_OP_minus, DW_OP_stack_value)), !dbg !757
  call void @llvm.dbg.value(metadata i32 0, metadata !958, metadata !DIExpression()), !dbg !757
  %cmp309 = icmp ugt i32 %and306, 1056964608, !dbg !1156
  br i1 %cmp309, label %if.then311, label %if.end334, !dbg !1158

if.then311:                                       ; preds = %if.end305
  %20 = lshr i32 %and306, 23, !dbg !1159
  call void @llvm.dbg.value(metadata i32 %20, metadata !808, metadata !DIExpression(DW_OP_constu, 127, DW_OP_minus, DW_OP_stack_value)), !dbg !757
  call void @llvm.dbg.value(metadata i32 %20, metadata !808, metadata !DIExpression(DW_OP_constu, 127, DW_OP_minus, DW_OP_stack_value)), !dbg !757
  %add312 = add nsw i32 %20, -126, !dbg !1160
  %shr313 = lshr i32 8388608, %add312, !dbg !1162
  %add314 = add nsw i32 %shr313, %.cast14, !dbg !1163
  call void @llvm.dbg.value(metadata i32 %add314, metadata !958, metadata !DIExpression()), !dbg !757
  %and315 = lshr i32 %add314, 23, !dbg !1164
  %21 = and i32 %and315, 255, !dbg !1164
  %sub317 = add nsw i32 %21, -127, !dbg !1165
  call void @llvm.dbg.value(metadata i32 %sub317, metadata !808, metadata !DIExpression()), !dbg !757
  %neg320 = ashr i32 -8388608, %sub317, !dbg !1166
  %and321 = and i32 %add314, %neg320, !dbg !1166
  call void @llvm.dbg.value(metadata i32 %and321, metadata !1168, metadata !DIExpression()), !dbg !1169
  %.cast19 = bitcast i32 %and321 to float, !dbg !1166
  call void @llvm.dbg.value(metadata float %.cast19, metadata !933, metadata !DIExpression()), !dbg !757
  %and324 = and i32 %add314, 8388607, !dbg !1170
  %or325 = or i32 %and324, 8388608, !dbg !1171
  %sub326 = sub nsw i32 150, %21, !dbg !1172
  %shr327 = lshr i32 %or325, %sub326, !dbg !1173
  call void @llvm.dbg.value(metadata i32 %shr327, metadata !958, metadata !DIExpression()), !dbg !757
  %cmp328 = icmp slt i32 %.cast14, 0, !dbg !1174
  br i1 %cmp328, label %if.then330, label %if.end332, !dbg !1176

if.then330:                                       ; preds = %if.then311
  %sub331 = sub nsw i32 0, %shr327, !dbg !1177
  call void @llvm.dbg.value(metadata i32 %sub331, metadata !958, metadata !DIExpression()), !dbg !757
  br label %if.end332, !dbg !1178

if.end332:                                        ; preds = %if.then330, %if.then311
  %n.3 = phi i32 [ %sub331, %if.then330 ], [ %shr327, %if.then311 ], !dbg !1179
  call void @llvm.dbg.value(metadata i32 %n.3, metadata !958, metadata !DIExpression()), !dbg !757
  %sub333 = fsub float %mul262, %.cast19, !dbg !1180
  call void @llvm.dbg.value(metadata float %sub333, metadata !1052, metadata !DIExpression()), !dbg !757
  br label %if.end334, !dbg !1181

if.end334:                                        ; preds = %if.end332, %if.end305
  %p_h.0 = phi float [ %sub333, %if.end332 ], [ %mul262, %if.end305 ], !dbg !757
  %n.4 = phi i32 [ %n.3, %if.end332 ], [ 0, %if.end305 ], !dbg !757
  call void @llvm.dbg.value(metadata i32 %n.4, metadata !958, metadata !DIExpression()), !dbg !757
  call void @llvm.dbg.value(metadata float %p_h.0, metadata !1052, metadata !DIExpression()), !dbg !757
  %add335 = fadd float %19, %p_h.0, !dbg !1182
  call void @llvm.dbg.value(metadata float %add335, metadata !933, metadata !DIExpression()), !dbg !757
  call void @llvm.dbg.value(metadata float %add335, metadata !1183, metadata !DIExpression()), !dbg !1185
  %.cast15 = bitcast float %add335 to i32, !dbg !1186
  call void @llvm.dbg.value(metadata i32 %.cast15, metadata !949, metadata !DIExpression()), !dbg !757
  %and340 = and i32 %.cast15, -4096, !dbg !1187
  call void @llvm.dbg.value(metadata i32 %and340, metadata !1189, metadata !DIExpression()), !dbg !1190
  %.cast16 = bitcast i32 %and340 to float, !dbg !1187
  call void @llvm.dbg.value(metadata float %.cast16, metadata !933, metadata !DIExpression()), !dbg !757
  %mul343 = fmul float %.cast16, 0x3FE62E4000000000, !dbg !1191
  call void @llvm.dbg.value(metadata float %mul343, metadata !940, metadata !DIExpression()), !dbg !757
  %sub344 = fsub float %.cast16, %p_h.0, !dbg !1192
  %sub345 = fsub float %19, %sub344, !dbg !1193
  %mul347 = fmul float %.cast16, 0x3EB7F7D180000000, !dbg !1194
  %22 = call float @llvm.fmuladd.f32(float %sub345, float 0x3FE62E4300000000, float %mul347), !dbg !1195
  call void @llvm.dbg.value(metadata float %22, metadata !942, metadata !DIExpression()), !dbg !757
  %add348 = fadd float %mul343, %22, !dbg !1196
  call void @llvm.dbg.value(metadata float %add348, metadata !876, metadata !DIExpression()), !dbg !757
  %sub349 = fsub float %add348, %mul343, !dbg !1197
  %sub350 = fsub float %22, %sub349, !dbg !1198
  call void @llvm.dbg.value(metadata float %sub350, metadata !938, metadata !DIExpression()), !dbg !757
  %mul351 = fmul float %add348, %add348, !dbg !1199
  call void @llvm.dbg.value(metadata float %mul351, metadata !933, metadata !DIExpression()), !dbg !757
  %23 = call float @llvm.fmuladd.f32(float %mul351, float 0x3E66376980000000, float 0xBEBBBD41C0000000), !dbg !1200
  %24 = call float @llvm.fmuladd.f32(float %mul351, float %23, float 0x3F11566AA0000000), !dbg !1201
  %25 = call float @llvm.fmuladd.f32(float %mul351, float %24, float 0xBF66C16C20000000), !dbg !1202
  %26 = call float @llvm.fmuladd.f32(float %mul351, float %25, float 0x3FC5555560000000), !dbg !1203
  %neg357 = fneg float %mul351, !dbg !1204
  %27 = call float @llvm.fmuladd.f32(float %neg357, float %26, float %add348), !dbg !1204
  call void @llvm.dbg.value(metadata float %27, metadata !944, metadata !DIExpression()), !dbg !757
  %mul358 = fmul float %add348, %27, !dbg !1205
  %sub359 = fadd float %27, -2.000000e+00, !dbg !1206
  %div360 = fdiv float %mul358, %sub359, !dbg !1207
  %28 = call float @llvm.fmuladd.f32(float %add348, float %sub350, float %sub350), !dbg !1208
  %sub362 = fsub float %div360, %28, !dbg !1209
  call void @llvm.dbg.value(metadata float %sub362, metadata !1031, metadata !DIExpression()), !dbg !757
  %29 = fsub float %add348, %sub362, !dbg !1210
  %sub364 = fadd float %29, 1.000000e+00, !dbg !1210
  call void @llvm.dbg.value(metadata float %sub364, metadata !876, metadata !DIExpression()), !dbg !757
  call void @llvm.dbg.value(metadata float %sub364, metadata !1211, metadata !DIExpression()), !dbg !1213
  %.cast17 = bitcast float %sub364 to i32, !dbg !1214
  call void @llvm.dbg.value(metadata i32 %.cast17, metadata !811, metadata !DIExpression()), !dbg !757
  %shl368 = shl i32 %n.4, 23, !dbg !1215
  %add369 = add nsw i32 %shl368, %.cast17, !dbg !1216
  call void @llvm.dbg.value(metadata i32 %add369, metadata !811, metadata !DIExpression()), !dbg !757
  %cmp371 = icmp slt i32 %add369, 8388608, !dbg !1217
  br i1 %cmp371, label %if.then373, label %if.else375, !dbg !1219

if.then373:                                       ; preds = %if.end334
  %call374 = call arm_aapcs_vfpcc float @basicmath___scalbnf(float noundef %sub364, i32 noundef %n.4) #4, !dbg !1220
  call void @llvm.dbg.value(metadata float %call374, metadata !876, metadata !DIExpression()), !dbg !757
  br label %if.end379, !dbg !1221

if.else375:                                       ; preds = %if.end334
  call void @llvm.dbg.value(metadata i32 %add369, metadata !1222, metadata !DIExpression()), !dbg !1224
  %.cast18 = bitcast i32 %add369 to float, !dbg !1225
  call void @llvm.dbg.value(metadata float %.cast18, metadata !876, metadata !DIExpression()), !dbg !757
  br label %if.end379

if.end379:                                        ; preds = %if.else375, %if.then373
  %z.4 = phi float [ %call374, %if.then373 ], [ %.cast18, %if.else375 ], !dbg !1226
  call void @llvm.dbg.value(metadata float %z.4, metadata !876, metadata !DIExpression()), !dbg !757
  %mul380 = fmul float %s.0, %z.4, !dbg !1227
  br label %return, !dbg !1228

return:                                           ; preds = %if.end379, %if.then298, %if.then288, %if.then280, %if.then269, %if.then108, %if.then103, %if.then95, %if.end89, %if.then60, %if.then55, %if.else52, %if.then51, %cond.end45, %cond.end, %if.then35, %if.then13, %if.then9, %if.then6, %if.then
  %retval.0 = phi float [ 1.000000e+00, %if.then ], [ 1.000000e+00, %if.then6 ], [ 1.000000e+00, %if.then9 ], [ %add, %if.then13 ], [ %sub36, %if.then35 ], [ %cond, %cond.end ], [ %cond46, %cond.end45 ], [ %div, %if.then51 ], [ %x, %if.else52 ], [ %mul, %if.then55 ], [ %call61, %if.then60 ], [ %z.3, %if.end89 ], [ %div98, %if.then95 ], [ %cond105, %if.then103 ], [ %cond110, %if.then108 ], [ %mul271, %if.then269 ], [ %mul282, %if.then280 ], [ %mul380, %if.end379 ], [ %mul290, %if.then288 ], [ %mul300, %if.then298 ], !dbg !757
  ret float %retval.0, !dbg !1229
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @basicmath___isinff(float noundef %x) #0 !dbg !1230 {
entry:
  call void @llvm.dbg.value(metadata float %x, metadata !1233, metadata !DIExpression()), !dbg !1234
  call void @llvm.dbg.value(metadata float %x, metadata !1235, metadata !DIExpression()), !dbg !1237
  %.cast = bitcast float %x to i32, !dbg !1238
  call void @llvm.dbg.value(metadata i32 %.cast, metadata !1239, metadata !DIExpression()), !dbg !1234
  %and = and i32 %.cast, 2147483647, !dbg !1240
  call void @llvm.dbg.value(metadata i32 %and, metadata !1241, metadata !DIExpression()), !dbg !1234
  call void @llvm.dbg.value(metadata i32 %and, metadata !1241, metadata !DIExpression(DW_OP_constu, 2139095040, DW_OP_xor, DW_OP_stack_value)), !dbg !1234
  call void @llvm.dbg.value(metadata !DIArgList(i32 0, i32 %and), metadata !1241, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 18446744071570456575, DW_OP_xor, DW_OP_plus_uconst, 1, DW_OP_or, DW_OP_stack_value)), !dbg !1234
  %shr1 = ashr i32 %.cast, 30, !dbg !1242
  %isneg.not = icmp eq i32 %and, 2139095040, !dbg !1243
  %and2 = select i1 %isneg.not, i32 %shr1, i32 0, !dbg !1243
  ret i32 %and2, !dbg !1244
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc float @basicmath___fabsf(float noundef %x) #0 !dbg !1245 {
entry:
  call void @llvm.dbg.value(metadata float %x, metadata !1246, metadata !DIExpression()), !dbg !1247
  call void @llvm.dbg.value(metadata float %x, metadata !1248, metadata !DIExpression()), !dbg !1250
  %.cast = bitcast float %x to i32, !dbg !1251
  call void @llvm.dbg.value(metadata i32 %.cast, metadata !1252, metadata !DIExpression()), !dbg !1247
  %and = and i32 %.cast, 2147483647, !dbg !1253
  call void @llvm.dbg.value(metadata i32 %and, metadata !1255, metadata !DIExpression()), !dbg !1256
  %.cast1 = bitcast i32 %and to float, !dbg !1253
  call void @llvm.dbg.value(metadata float %.cast1, metadata !1246, metadata !DIExpression()), !dbg !1247
  ret float %.cast1, !dbg !1257
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc float @basicmath___scalbnf(float noundef %x, i32 noundef %n) #0 !dbg !1258 {
entry:
  call void @llvm.dbg.value(metadata float %x, metadata !1261, metadata !DIExpression()), !dbg !1262
  call void @llvm.dbg.value(metadata i32 %n, metadata !1263, metadata !DIExpression()), !dbg !1262
  call void @llvm.dbg.value(metadata float %x, metadata !1264, metadata !DIExpression()), !dbg !1266
  %.cast = bitcast float %x to i32, !dbg !1267
  call void @llvm.dbg.value(metadata i32 %.cast, metadata !1268, metadata !DIExpression()), !dbg !1262
  %and = lshr i32 %.cast, 23, !dbg !1269
  %0 = and i32 %and, 255, !dbg !1269
  call void @llvm.dbg.value(metadata i32 %0, metadata !1270, metadata !DIExpression()), !dbg !1262
  %cmp = icmp eq i32 %0, 0, !dbg !1271
  br i1 %cmp, label %if.then, label %if.end9, !dbg !1273

if.then:                                          ; preds = %entry
  %and1 = and i32 %.cast, 2147483647, !dbg !1274
  %cmp2 = icmp eq i32 %and1, 0, !dbg !1277
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !1278

if.then3:                                         ; preds = %if.then
  br label %return, !dbg !1279

if.end:                                           ; preds = %if.then
  %mul = fmul float %x, 0x4180000000000000, !dbg !1280
  call void @llvm.dbg.value(metadata float %mul, metadata !1261, metadata !DIExpression()), !dbg !1262
  call void @llvm.dbg.value(metadata float %mul, metadata !1281, metadata !DIExpression()), !dbg !1283
  %.cast3 = bitcast float %mul to i32, !dbg !1284
  call void @llvm.dbg.value(metadata i32 %.cast3, metadata !1268, metadata !DIExpression()), !dbg !1262
  %and7 = lshr i32 %.cast3, 23, !dbg !1285
  %1 = and i32 %and7, 255, !dbg !1285
  %sub = add nsw i32 %1, -25, !dbg !1286
  call void @llvm.dbg.value(metadata i32 %sub, metadata !1270, metadata !DIExpression()), !dbg !1262
  br label %if.end9, !dbg !1287

if.end9:                                          ; preds = %if.end, %entry
  %k.0 = phi i32 [ %sub, %if.end ], [ %0, %entry ], !dbg !1262
  %ix.0 = phi i32 [ %.cast3, %if.end ], [ %.cast, %entry ], !dbg !1262
  %x.addr.0 = phi float [ %mul, %if.end ], [ %x, %entry ]
  call void @llvm.dbg.value(metadata float %x.addr.0, metadata !1261, metadata !DIExpression()), !dbg !1262
  call void @llvm.dbg.value(metadata i32 %ix.0, metadata !1268, metadata !DIExpression()), !dbg !1262
  call void @llvm.dbg.value(metadata i32 %k.0, metadata !1270, metadata !DIExpression()), !dbg !1262
  %cmp10 = icmp eq i32 %k.0, 255, !dbg !1288
  br i1 %cmp10, label %if.then11, label %if.end12, !dbg !1290

if.then11:                                        ; preds = %if.end9
  %add = fadd float %x.addr.0, %x.addr.0, !dbg !1291
  br label %return, !dbg !1292

if.end12:                                         ; preds = %if.end9
  %add13 = add nsw i32 %k.0, %n, !dbg !1293
  call void @llvm.dbg.value(metadata i32 %add13, metadata !1270, metadata !DIExpression()), !dbg !1262
  %cmp14 = icmp sgt i32 %n, 50000, !dbg !1294
  br i1 %cmp14, label %if.then16, label %lor.lhs.false, !dbg !1296

lor.lhs.false:                                    ; preds = %if.end12
  %cmp15 = icmp sgt i32 %add13, 254, !dbg !1297
  br i1 %cmp15, label %if.then16, label %if.end18, !dbg !1298

if.then16:                                        ; preds = %lor.lhs.false, %if.end12
  %call = call arm_aapcs_vfpcc float @basicmath___copysignf(float noundef 0x46293E5940000000, float noundef %x.addr.0) #4, !dbg !1299
  %mul17 = fmul float %call, 0x46293E5940000000, !dbg !1300
  br label %return, !dbg !1301

if.end18:                                         ; preds = %lor.lhs.false
  %cmp19 = icmp slt i32 %n, -50000, !dbg !1302
  br i1 %cmp19, label %if.then20, label %if.end23, !dbg !1304

if.then20:                                        ; preds = %if.end18
  %call21 = call arm_aapcs_vfpcc float @basicmath___copysignf(float noundef 0x39B4484C00000000, float noundef %x.addr.0) #4, !dbg !1305
  %mul22 = fmul float %call21, 0x39B4484C00000000, !dbg !1306
  br label %return, !dbg !1307

if.end23:                                         ; preds = %if.end18
  %cmp24 = icmp sgt i32 %add13, 0, !dbg !1308
  br i1 %cmp24, label %if.then25, label %if.end29, !dbg !1310

if.then25:                                        ; preds = %if.end23
  %and26 = and i32 %ix.0, -2139095041, !dbg !1311
  %shl = shl i32 %add13, 23, !dbg !1311
  %or = or i32 %and26, %shl, !dbg !1311
  call void @llvm.dbg.value(metadata i32 %or, metadata !1314, metadata !DIExpression()), !dbg !1315
  %.cast2 = bitcast i32 %or to float, !dbg !1311
  call void @llvm.dbg.value(metadata float %.cast2, metadata !1261, metadata !DIExpression()), !dbg !1262
  br label %return, !dbg !1316

if.end29:                                         ; preds = %if.end23
  %cmp30 = icmp slt i32 %add13, -24, !dbg !1317
  br i1 %cmp30, label %if.then31, label %if.end34, !dbg !1319

if.then31:                                        ; preds = %if.end29
  %call32 = call arm_aapcs_vfpcc float @basicmath___copysignf(float noundef 0x39B4484C00000000, float noundef %x.addr.0) #4, !dbg !1320
  %mul33 = fmul float %call32, 0x39B4484C00000000, !dbg !1321
  br label %return, !dbg !1322

if.end34:                                         ; preds = %if.end29
  call void @llvm.dbg.value(metadata i32 %add13, metadata !1270, metadata !DIExpression(DW_OP_plus_uconst, 25, DW_OP_stack_value)), !dbg !1262
  %and37 = and i32 %ix.0, -2139095041, !dbg !1323
  %add35 = shl i32 %add13, 23, !dbg !1323
  %shl38 = add i32 %add35, 209715200, !dbg !1323
  %or39 = or i32 %and37, %shl38, !dbg !1323
  call void @llvm.dbg.value(metadata i32 %or39, metadata !1325, metadata !DIExpression()), !dbg !1326
  %.cast1 = bitcast i32 %or39 to float, !dbg !1323
  call void @llvm.dbg.value(metadata float %.cast1, metadata !1261, metadata !DIExpression()), !dbg !1262
  %mul42 = fmul float %.cast1, 0x3E60000000000000, !dbg !1327
  br label %return, !dbg !1328

return:                                           ; preds = %if.end34, %if.then31, %if.then25, %if.then20, %if.then16, %if.then11, %if.then3
  %retval.0 = phi float [ %x, %if.then3 ], [ %add, %if.then11 ], [ %mul17, %if.then16 ], [ %mul22, %if.then20 ], [ %.cast2, %if.then25 ], [ %mul33, %if.then31 ], [ %mul42, %if.end34 ], !dbg !1262
  ret float %retval.0, !dbg !1329
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc float @basicmath___copysignf(float noundef %x, float noundef %y) #0 !dbg !1330 {
entry:
  call void @llvm.dbg.value(metadata float %x, metadata !1331, metadata !DIExpression()), !dbg !1332
  call void @llvm.dbg.value(metadata float %y, metadata !1333, metadata !DIExpression()), !dbg !1332
  call void @llvm.dbg.value(metadata float %x, metadata !1334, metadata !DIExpression()), !dbg !1336
  %.cast = bitcast float %x to i32, !dbg !1337
  call void @llvm.dbg.value(metadata i32 %.cast, metadata !1338, metadata !DIExpression()), !dbg !1332
  call void @llvm.dbg.value(metadata float %y, metadata !1339, metadata !DIExpression()), !dbg !1341
  %.cast1 = bitcast float %y to i32, !dbg !1342
  call void @llvm.dbg.value(metadata i32 %.cast1, metadata !1343, metadata !DIExpression()), !dbg !1332
  %and = and i32 %.cast, 2147483647, !dbg !1344
  %and4 = and i32 %.cast1, -2147483648, !dbg !1344
  %or = or i32 %and, %and4, !dbg !1344
  call void @llvm.dbg.value(metadata i32 %or, metadata !1346, metadata !DIExpression()), !dbg !1347
  %.cast2 = bitcast i32 %or to float, !dbg !1344
  call void @llvm.dbg.value(metadata float %.cast2, metadata !1331, metadata !DIExpression()), !dbg !1332
  ret float %.cast2, !dbg !1348
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @basicmath___ieee754_rem_pio2f(float noundef %x, float* noundef %y) #0 !dbg !1349 {
entry:
  call void @llvm.dbg.value(metadata float %x, metadata !1352, metadata !DIExpression()), !dbg !1353
  call void @llvm.dbg.value(metadata float* %y, metadata !1354, metadata !DIExpression()), !dbg !1353
  call void @llvm.dbg.value(metadata float %x, metadata !1355, metadata !DIExpression()), !dbg !1357
  %.cast = bitcast float %x to i32, !dbg !1358
  call void @llvm.dbg.value(metadata i32 %.cast, metadata !1359, metadata !DIExpression()), !dbg !1353
  %and = and i32 %.cast, 2147483647, !dbg !1360
  call void @llvm.dbg.value(metadata i32 %and, metadata !1361, metadata !DIExpression()), !dbg !1353
  %cmp = icmp ult i32 %and, 1061752793, !dbg !1362
  br i1 %cmp, label %if.then, label %if.end, !dbg !1364

if.then:                                          ; preds = %entry
  store float %x, float* %y, align 4, !dbg !1365
  %arrayidx1 = getelementptr inbounds float, float* %y, i32 1, !dbg !1367
  store float 0.000000e+00, float* %arrayidx1, align 4, !dbg !1368
  br label %return, !dbg !1369

if.end:                                           ; preds = %entry
  %cmp2 = icmp ult i32 %and, 1075235812, !dbg !1370
  br i1 %cmp2, label %if.then3, label %if.end42, !dbg !1372

if.then3:                                         ; preds = %if.end
  %cmp4 = icmp sgt i32 %.cast, 0, !dbg !1373
  br i1 %cmp4, label %if.then5, label %if.else23, !dbg !1376

if.then5:                                         ; preds = %if.then3
  %sub = fadd float %x, 0xBFF921F000000000, !dbg !1377
  call void @llvm.dbg.value(metadata float %sub, metadata !1379, metadata !DIExpression()), !dbg !1353
  %and6 = and i32 %.cast, 2147483632, !dbg !1380
  %cmp7.not = icmp eq i32 %and6, 1070141392, !dbg !1382
  br i1 %cmp7.not, label %if.else, label %if.then8, !dbg !1383

if.then8:                                         ; preds = %if.then5
  %sub9 = fadd float %sub, 0xBEE6A88860000000, !dbg !1384
  store float %sub9, float* %y, align 4, !dbg !1386
  %sub12 = fsub float %sub, %sub9, !dbg !1387
  %sub13 = fadd float %sub12, 0xBEE6A88860000000, !dbg !1388
  %arrayidx14 = getelementptr inbounds float, float* %y, i32 1, !dbg !1389
  store float %sub13, float* %arrayidx14, align 4, !dbg !1390
  br label %if.end22, !dbg !1391

if.else:                                          ; preds = %if.then5
  %sub15 = fadd float %sub, 0xBEE6A88000000000, !dbg !1392
  call void @llvm.dbg.value(metadata float %sub15, metadata !1379, metadata !DIExpression()), !dbg !1353
  %sub16 = fadd float %sub15, 0xBDD0B46100000000, !dbg !1394
  store float %sub16, float* %y, align 4, !dbg !1395
  %sub19 = fsub float %sub15, %sub16, !dbg !1396
  %sub20 = fadd float %sub19, 0xBDD0B46100000000, !dbg !1397
  %arrayidx21 = getelementptr inbounds float, float* %y, i32 1, !dbg !1398
  store float %sub20, float* %arrayidx21, align 4, !dbg !1399
  br label %if.end22

if.end22:                                         ; preds = %if.else, %if.then8
  br label %return, !dbg !1400

if.else23:                                        ; preds = %if.then3
  %add = fadd float %x, 0x3FF921F000000000, !dbg !1401
  call void @llvm.dbg.value(metadata float %add, metadata !1379, metadata !DIExpression()), !dbg !1353
  %and24 = and i32 %.cast, 2147483632, !dbg !1403
  %cmp25.not = icmp eq i32 %and24, 1070141392, !dbg !1405
  br i1 %cmp25.not, label %if.else33, label %if.then26, !dbg !1406

if.then26:                                        ; preds = %if.else23
  %add27 = fadd float %add, 0x3EE6A88860000000, !dbg !1407
  store float %add27, float* %y, align 4, !dbg !1409
  %sub30 = fsub float %add, %add27, !dbg !1410
  %add31 = fadd float %sub30, 0x3EE6A88860000000, !dbg !1411
  %arrayidx32 = getelementptr inbounds float, float* %y, i32 1, !dbg !1412
  store float %add31, float* %arrayidx32, align 4, !dbg !1413
  br label %if.end41, !dbg !1414

if.else33:                                        ; preds = %if.else23
  %add34 = fadd float %add, 0x3EE6A88000000000, !dbg !1415
  call void @llvm.dbg.value(metadata float %add34, metadata !1379, metadata !DIExpression()), !dbg !1353
  %add35 = fadd float %add34, 0x3DD0B46100000000, !dbg !1417
  store float %add35, float* %y, align 4, !dbg !1418
  %sub38 = fsub float %add34, %add35, !dbg !1419
  %add39 = fadd float %sub38, 0x3DD0B46100000000, !dbg !1420
  %arrayidx40 = getelementptr inbounds float, float* %y, i32 1, !dbg !1421
  store float %add39, float* %arrayidx40, align 4, !dbg !1422
  br label %if.end41

if.end41:                                         ; preds = %if.else33, %if.then26
  br label %return, !dbg !1423

if.end42:                                         ; preds = %if.end
  %cmp43 = icmp ult i32 %and, 1128861569, !dbg !1424
  br i1 %cmp43, label %if.then44, label %if.end112, !dbg !1426

if.then44:                                        ; preds = %if.end42
  %call = call arm_aapcs_vfpcc float @basicmath___fabsf(float noundef %x) #4, !dbg !1427
  call void @llvm.dbg.value(metadata float %call, metadata !1429, metadata !DIExpression()), !dbg !1353
  %0 = call float @llvm.fmuladd.f32(float %call, float 0x3FE45F3080000000, float 5.000000e-01), !dbg !1430
  %conv = fptosi float %0 to i32, !dbg !1431
  call void @llvm.dbg.value(metadata i32 %conv, metadata !1432, metadata !DIExpression()), !dbg !1353
  %conv45 = sitofp i32 %conv to float, !dbg !1433
  call void @llvm.dbg.value(metadata float %conv45, metadata !1434, metadata !DIExpression()), !dbg !1353
  %neg = fneg float %conv45, !dbg !1435
  %1 = call float @llvm.fmuladd.f32(float %neg, float 0x3FF921F000000000, float %call), !dbg !1435
  call void @llvm.dbg.value(metadata float %1, metadata !1436, metadata !DIExpression()), !dbg !1353
  %mul = fmul float %conv45, 0x3EE6A88860000000, !dbg !1437
  call void @llvm.dbg.value(metadata float %mul, metadata !1438, metadata !DIExpression()), !dbg !1353
  %cmp46 = icmp slt i32 %conv, 32, !dbg !1439
  br i1 %cmp46, label %land.lhs.true, label %if.else56, !dbg !1441

land.lhs.true:                                    ; preds = %if.then44
  %and48 = and i32 %.cast, 2147483392, !dbg !1442
  %sub49 = add nsw i32 %conv, -1, !dbg !1443
  %arrayidx50 = getelementptr inbounds [32 x i32], [32 x i32]* @basicmath_npio2_hw, i32 0, i32 %sub49, !dbg !1444
  %2 = load i32, i32* %arrayidx50, align 4, !dbg !1444
  %cmp51.not = icmp eq i32 %and48, %2, !dbg !1445
  br i1 %cmp51.not, label %if.else56, label %if.then53, !dbg !1446

if.then53:                                        ; preds = %land.lhs.true
  %sub54 = fsub float %1, %mul, !dbg !1447
  store float %sub54, float* %y, align 4, !dbg !1449
  br label %if.end97, !dbg !1450

if.else56:                                        ; preds = %land.lhs.true, %if.then44
  %3 = lshr i32 %and, 23, !dbg !1451
  call void @llvm.dbg.value(metadata i32 %3, metadata !1453, metadata !DIExpression()), !dbg !1353
  %sub57 = fsub float %1, %mul, !dbg !1454
  store float %sub57, float* %y, align 4, !dbg !1455
  call void @llvm.dbg.value(metadata float %sub57, metadata !1456, metadata !DIExpression()), !dbg !1458
  %.cast1 = bitcast float %sub57 to i32, !dbg !1459
  call void @llvm.dbg.value(metadata i32 %.cast1, metadata !1460, metadata !DIExpression()), !dbg !1461
  %shr63 = lshr i32 %.cast1, 23, !dbg !1462
  %and64 = and i32 %shr63, 255, !dbg !1463
  %sub65 = sub nsw i32 %3, %and64, !dbg !1464
  call void @llvm.dbg.value(metadata i32 %sub65, metadata !1465, metadata !DIExpression()), !dbg !1353
  %cmp66 = icmp sgt i32 %sub65, 8, !dbg !1466
  br i1 %cmp66, label %if.then68, label %if.end96, !dbg !1468

if.then68:                                        ; preds = %if.else56
  call void @llvm.dbg.value(metadata float %1, metadata !1429, metadata !DIExpression()), !dbg !1353
  %mul69 = fmul float %conv45, 0x3EE6A88000000000, !dbg !1469
  call void @llvm.dbg.value(metadata float %mul69, metadata !1438, metadata !DIExpression()), !dbg !1353
  %sub70 = fsub float %1, %mul69, !dbg !1471
  call void @llvm.dbg.value(metadata float %sub70, metadata !1436, metadata !DIExpression()), !dbg !1353
  %sub72 = fsub float %1, %sub70, !dbg !1472
  %sub73 = fsub float %sub72, %mul69, !dbg !1473
  %neg74 = fneg float %sub73, !dbg !1474
  %4 = call float @llvm.fmuladd.f32(float %conv45, float 0x3DD0B46100000000, float %neg74), !dbg !1474
  call void @llvm.dbg.value(metadata float %4, metadata !1438, metadata !DIExpression()), !dbg !1353
  %sub75 = fsub float %sub70, %4, !dbg !1475
  call void @llvm.dbg.value(metadata float %sub75, metadata !1476, metadata !DIExpression()), !dbg !1478
  %.cast2 = bitcast float %sub75 to i32, !dbg !1479
  call void @llvm.dbg.value(metadata i32 %.cast2, metadata !1460, metadata !DIExpression()), !dbg !1461
  %shr81 = lshr i32 %.cast2, 23, !dbg !1480
  %and82 = and i32 %shr81, 255, !dbg !1481
  %sub83 = sub nsw i32 %3, %and82, !dbg !1482
  call void @llvm.dbg.value(metadata i32 %sub83, metadata !1465, metadata !DIExpression()), !dbg !1353
  %cmp84 = icmp sgt i32 %sub83, 25, !dbg !1483
  br i1 %cmp84, label %if.then86, label %if.end95, !dbg !1485

if.then86:                                        ; preds = %if.then68
  call void @llvm.dbg.value(metadata float %sub70, metadata !1429, metadata !DIExpression()), !dbg !1353
  %mul87 = fmul float %conv45, 0x3DD0B46000000000, !dbg !1486
  call void @llvm.dbg.value(metadata float %mul87, metadata !1438, metadata !DIExpression()), !dbg !1353
  %sub88 = fsub float %sub70, %mul87, !dbg !1488
  call void @llvm.dbg.value(metadata float %sub88, metadata !1436, metadata !DIExpression()), !dbg !1353
  %sub90 = fsub float %sub70, %sub88, !dbg !1489
  %sub91 = fsub float %sub90, %mul87, !dbg !1490
  %neg92 = fneg float %sub91, !dbg !1491
  %5 = call float @llvm.fmuladd.f32(float %conv45, float 0x3C91A62640000000, float %neg92), !dbg !1491
  call void @llvm.dbg.value(metadata float %5, metadata !1438, metadata !DIExpression()), !dbg !1353
  %sub93 = fsub float %sub88, %5, !dbg !1492
  br label %if.end95, !dbg !1493

if.end95:                                         ; preds = %if.then86, %if.then68
  %storemerge = phi float [ %sub93, %if.then86 ], [ %sub75, %if.then68 ], !dbg !1494
  %r.0 = phi float [ %sub88, %if.then86 ], [ %sub70, %if.then68 ], !dbg !1494
  %w.0 = phi float [ %5, %if.then86 ], [ %4, %if.then68 ], !dbg !1494
  store float %storemerge, float* %y, align 4, !dbg !1494
  call void @llvm.dbg.value(metadata float %w.0, metadata !1438, metadata !DIExpression()), !dbg !1353
  call void @llvm.dbg.value(metadata float %r.0, metadata !1436, metadata !DIExpression()), !dbg !1353
  br label %if.end96, !dbg !1495

if.end96:                                         ; preds = %if.end95, %if.else56
  %r.1 = phi float [ %r.0, %if.end95 ], [ %1, %if.else56 ], !dbg !1496
  %w.1 = phi float [ %w.0, %if.end95 ], [ %mul, %if.else56 ], !dbg !1496
  call void @llvm.dbg.value(metadata float %w.1, metadata !1438, metadata !DIExpression()), !dbg !1353
  call void @llvm.dbg.value(metadata float %r.1, metadata !1436, metadata !DIExpression()), !dbg !1353
  br label %if.end97

if.end97:                                         ; preds = %if.end96, %if.then53
  %r.2 = phi float [ %1, %if.then53 ], [ %r.1, %if.end96 ], !dbg !1496
  %w.2 = phi float [ %mul, %if.then53 ], [ %w.1, %if.end96 ], !dbg !1496
  call void @llvm.dbg.value(metadata float %w.2, metadata !1438, metadata !DIExpression()), !dbg !1353
  call void @llvm.dbg.value(metadata float %r.2, metadata !1436, metadata !DIExpression()), !dbg !1353
  %6 = load float, float* %y, align 4, !dbg !1497
  %sub99 = fsub float %r.2, %6, !dbg !1498
  %sub100 = fsub float %sub99, %w.2, !dbg !1499
  %arrayidx101 = getelementptr inbounds float, float* %y, i32 1, !dbg !1500
  store float %sub100, float* %arrayidx101, align 4, !dbg !1501
  %cmp102 = icmp slt i32 %.cast, 0, !dbg !1502
  br i1 %cmp102, label %if.then104, label %if.else111, !dbg !1504

if.then104:                                       ; preds = %if.end97
  %7 = load float, float* %y, align 4, !dbg !1505
  %fneg = fneg float %7, !dbg !1507
  store float %fneg, float* %y, align 4, !dbg !1508
  %arrayidx107 = getelementptr inbounds float, float* %y, i32 1, !dbg !1509
  %8 = load float, float* %arrayidx107, align 4, !dbg !1509
  %fneg108 = fneg float %8, !dbg !1510
  %arrayidx109 = getelementptr inbounds float, float* %y, i32 1, !dbg !1511
  store float %fneg108, float* %arrayidx109, align 4, !dbg !1512
  %sub110 = sub nsw i32 0, %conv, !dbg !1513
  br label %return, !dbg !1514

if.else111:                                       ; preds = %if.end97
  br label %return, !dbg !1515

if.end112:                                        ; preds = %if.end42
  %cmp113 = icmp ugt i32 %and, 2139095039, !dbg !1516
  br i1 %cmp113, label %if.then115, label %if.end119, !dbg !1518

if.then115:                                       ; preds = %if.end112
  %sub116 = fsub float %x, %x, !dbg !1519
  %arrayidx117 = getelementptr inbounds float, float* %y, i32 1, !dbg !1521
  store float %sub116, float* %arrayidx117, align 4, !dbg !1522
  store float %sub116, float* %y, align 4, !dbg !1523
  br label %return, !dbg !1524

if.end119:                                        ; preds = %if.end112
  %sub120 = fsub float %x, %x, !dbg !1525
  %arrayidx121 = getelementptr inbounds float, float* %y, i32 1, !dbg !1526
  store float %sub120, float* %arrayidx121, align 4, !dbg !1527
  store float %sub120, float* %y, align 4, !dbg !1528
  br label %return, !dbg !1529

return:                                           ; preds = %if.end119, %if.then115, %if.else111, %if.then104, %if.end41, %if.end22, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.end22 ], [ -1, %if.end41 ], [ %sub110, %if.then104 ], [ %conv, %if.else111 ], [ 0, %if.then115 ], [ 0, %if.end119 ], !dbg !1353
  ret i32 %retval.0, !dbg !1530
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc float @basicmath___kernel_cosf(float noundef %x, float noundef %y) #0 !dbg !1531 {
entry:
  call void @llvm.dbg.value(metadata float %x, metadata !1532, metadata !DIExpression()), !dbg !1533
  call void @llvm.dbg.value(metadata float %y, metadata !1534, metadata !DIExpression()), !dbg !1533
  call void @llvm.dbg.value(metadata float %x, metadata !1535, metadata !DIExpression()), !dbg !1537
  %.cast = bitcast float %x to i32, !dbg !1538
  call void @llvm.dbg.value(metadata i32 %.cast, metadata !1539, metadata !DIExpression()), !dbg !1533
  %and = and i32 %.cast, 2147483647, !dbg !1540
  call void @llvm.dbg.value(metadata i32 %and, metadata !1539, metadata !DIExpression()), !dbg !1533
  %cmp = icmp ult i32 %and, 838860800, !dbg !1541
  br i1 %cmp, label %if.then, label %if.end4, !dbg !1543

if.then:                                          ; preds = %entry
  %conv = fptosi float %x to i32, !dbg !1544
  %cmp1 = icmp eq i32 %conv, 0, !dbg !1547
  br i1 %cmp1, label %if.then3, label %if.end, !dbg !1548

if.then3:                                         ; preds = %if.then
  br label %return, !dbg !1549

if.end:                                           ; preds = %if.then
  br label %if.end4, !dbg !1550

if.end4:                                          ; preds = %if.end, %entry
  %mul = fmul float %x, %x, !dbg !1551
  call void @llvm.dbg.value(metadata float %mul, metadata !1552, metadata !DIExpression()), !dbg !1533
  %0 = call float @llvm.fmuladd.f32(float %mul, float 0xBDA8FAE9C0000000, float 0x3E21EE9EC0000000), !dbg !1553
  %1 = call float @llvm.fmuladd.f32(float %mul, float %0, float 0xBE927E4F80000000), !dbg !1554
  %2 = call float @llvm.fmuladd.f32(float %mul, float %1, float 0x3EFA01A020000000), !dbg !1555
  %3 = call float @llvm.fmuladd.f32(float %mul, float %2, float 0xBF56C16C20000000), !dbg !1556
  %4 = call float @llvm.fmuladd.f32(float %mul, float %3, float 0x3FA5555560000000), !dbg !1557
  %mul10 = fmul float %mul, %4, !dbg !1558
  call void @llvm.dbg.value(metadata float %mul10, metadata !1559, metadata !DIExpression()), !dbg !1533
  %cmp11 = icmp ult i32 %and, 1050253722, !dbg !1560
  br i1 %cmp11, label %if.then13, label %if.else, !dbg !1562

if.then13:                                        ; preds = %if.end4
  %5 = fneg float %x, !dbg !1563
  %neg = fmul float %5, %y, !dbg !1563
  %6 = call float @llvm.fmuladd.f32(float %mul, float %mul10, float %neg), !dbg !1563
  %neg17 = fneg float %6, !dbg !1564
  %7 = call float @llvm.fmuladd.f32(float %mul, float 5.000000e-01, float %neg17), !dbg !1564
  %sub = fsub float 1.000000e+00, %7, !dbg !1565
  br label %return, !dbg !1566

if.else:                                          ; preds = %if.end4
  %cmp18 = icmp ugt i32 %and, 1061683200, !dbg !1567
  br i1 %cmp18, label %if.then20, label %if.else21, !dbg !1570

if.then20:                                        ; preds = %if.else
  call void @llvm.dbg.value(metadata float 2.812500e-01, metadata !1571, metadata !DIExpression()), !dbg !1533
  br label %if.end25, !dbg !1572

if.else21:                                        ; preds = %if.else
  %sub22 = add nsw i32 %and, -16777216, !dbg !1573
  call void @llvm.dbg.value(metadata i32 %sub22, metadata !1576, metadata !DIExpression()), !dbg !1577
  %.cast1 = bitcast i32 %sub22 to float, !dbg !1573
  call void @llvm.dbg.value(metadata float %.cast1, metadata !1571, metadata !DIExpression()), !dbg !1533
  br label %if.end25

if.end25:                                         ; preds = %if.else21, %if.then20
  %qx.0 = phi float [ 2.812500e-01, %if.then20 ], [ %.cast1, %if.else21 ], !dbg !1578
  call void @llvm.dbg.value(metadata float %qx.0, metadata !1571, metadata !DIExpression()), !dbg !1533
  %neg27 = fneg float %qx.0, !dbg !1579
  %8 = call float @llvm.fmuladd.f32(float %mul, float 5.000000e-01, float %neg27), !dbg !1579
  call void @llvm.dbg.value(metadata float %8, metadata !1580, metadata !DIExpression()), !dbg !1533
  %sub28 = fsub float 1.000000e+00, %qx.0, !dbg !1581
  call void @llvm.dbg.value(metadata float %sub28, metadata !1582, metadata !DIExpression()), !dbg !1533
  %9 = fneg float %x, !dbg !1583
  %neg31 = fmul float %9, %y, !dbg !1583
  %10 = call float @llvm.fmuladd.f32(float %mul, float %mul10, float %neg31), !dbg !1583
  %sub32 = fsub float %8, %10, !dbg !1584
  %sub33 = fsub float %sub28, %sub32, !dbg !1585
  br label %return, !dbg !1586

return:                                           ; preds = %if.end25, %if.then13, %if.then3
  %retval.0 = phi float [ 1.000000e+00, %if.then3 ], [ %sub, %if.then13 ], [ %sub33, %if.end25 ], !dbg !1533
  ret float %retval.0, !dbg !1587
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc float @basicmath___kernel_sinf(float noundef %x, float noundef %y, i32 noundef %iy) #0 !dbg !1588 {
entry:
  call void @llvm.dbg.value(metadata float %x, metadata !1591, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata float %y, metadata !1593, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i32 %iy, metadata !1594, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata float %x, metadata !1595, metadata !DIExpression()), !dbg !1597
  %.cast = bitcast float %x to i32, !dbg !1598
  call void @llvm.dbg.value(metadata i32 %.cast, metadata !1599, metadata !DIExpression()), !dbg !1592
  %and = and i32 %.cast, 2113929216, !dbg !1600
  call void @llvm.dbg.value(metadata i32 %.cast, metadata !1599, metadata !DIExpression(DW_OP_constu, 2113929216, DW_OP_and, DW_OP_stack_value)), !dbg !1592
  %cmp = icmp ult i32 %and, 838860800, !dbg !1601
  br i1 %cmp, label %if.then, label %if.end4, !dbg !1603

if.then:                                          ; preds = %entry
  %conv = fptosi float %x to i32, !dbg !1604
  %cmp1 = icmp eq i32 %conv, 0, !dbg !1607
  br i1 %cmp1, label %if.then3, label %if.end, !dbg !1608

if.then3:                                         ; preds = %if.then
  br label %return, !dbg !1609

if.end:                                           ; preds = %if.then
  br label %if.end4, !dbg !1610

if.end4:                                          ; preds = %if.end, %entry
  %mul = fmul float %x, %x, !dbg !1611
  call void @llvm.dbg.value(metadata float %mul, metadata !1612, metadata !DIExpression()), !dbg !1592
  %mul5 = fmul float %mul, %x, !dbg !1613
  call void @llvm.dbg.value(metadata float %mul5, metadata !1614, metadata !DIExpression()), !dbg !1592
  %0 = call float @llvm.fmuladd.f32(float %mul, float 0x3DE5D93A60000000, float 0xBE5AE5E680000000), !dbg !1615
  %1 = call float @llvm.fmuladd.f32(float %mul, float %0, float 0x3EC71DE360000000), !dbg !1616
  %2 = call float @llvm.fmuladd.f32(float %mul, float %1, float 0xBF2A01A020000000), !dbg !1617
  %3 = call float @llvm.fmuladd.f32(float %mul, float %2, float 0x3F81111120000000), !dbg !1618
  call void @llvm.dbg.value(metadata float %3, metadata !1619, metadata !DIExpression()), !dbg !1592
  %cmp10 = icmp eq i32 %iy, 0, !dbg !1620
  br i1 %cmp10, label %if.then12, label %if.else, !dbg !1622

if.then12:                                        ; preds = %if.end4
  %4 = call float @llvm.fmuladd.f32(float %mul, float %3, float 0xBFC5555560000000), !dbg !1623
  %5 = call float @llvm.fmuladd.f32(float %mul5, float %4, float %x), !dbg !1624
  br label %return, !dbg !1625

if.else:                                          ; preds = %if.end4
  %6 = fneg float %mul5, !dbg !1626
  %neg = fmul float %3, %6, !dbg !1626
  %7 = call float @llvm.fmuladd.f32(float %y, float 5.000000e-01, float %neg), !dbg !1626
  %neg18 = fneg float %y, !dbg !1627
  %8 = call float @llvm.fmuladd.f32(float %mul, float %7, float %neg18), !dbg !1627
  %neg20 = fneg float %mul5, !dbg !1628
  %9 = call float @llvm.fmuladd.f32(float %neg20, float 0xBFC5555560000000, float %8), !dbg !1628
  %sub = fsub float %x, %9, !dbg !1629
  br label %return, !dbg !1630

return:                                           ; preds = %if.else, %if.then12, %if.then3
  %retval.0 = phi float [ %x, %if.then3 ], [ %5, %if.then12 ], [ %sub, %if.else ], !dbg !1592
  ret float %retval.0, !dbg !1631
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc float @basicmath___cosf(float noundef %x) #0 !dbg !1632 {
entry:
  %y = alloca [2 x float], align 4
  call void @llvm.dbg.value(metadata float %x, metadata !1633, metadata !DIExpression()), !dbg !1634
  call void @llvm.dbg.declare(metadata [2 x float]* %y, metadata !1635, metadata !DIExpression()), !dbg !1637
  call void @llvm.dbg.value(metadata float 0.000000e+00, metadata !1638, metadata !DIExpression()), !dbg !1634
  call void @llvm.dbg.value(metadata float %x, metadata !1639, metadata !DIExpression()), !dbg !1641
  %.cast = bitcast float %x to i32, !dbg !1642
  call void @llvm.dbg.value(metadata i32 %.cast, metadata !1643, metadata !DIExpression()), !dbg !1634
  %and = and i32 %.cast, 2147483647, !dbg !1644
  call void @llvm.dbg.value(metadata i32 %and, metadata !1643, metadata !DIExpression()), !dbg !1634
  %cmp = icmp ult i32 %and, 1061752793, !dbg !1645
  br i1 %cmp, label %if.then, label %if.else, !dbg !1647

if.then:                                          ; preds = %entry
  %call = call arm_aapcs_vfpcc float @basicmath___kernel_cosf(float noundef %x, float noundef 0.000000e+00) #4, !dbg !1648
  br label %return, !dbg !1649

if.else:                                          ; preds = %entry
  %cmp1 = icmp ugt i32 %and, 2139095039, !dbg !1650
  br i1 %cmp1, label %if.then2, label %if.else3, !dbg !1652

if.then2:                                         ; preds = %if.else
  %sub = fsub float %x, %x, !dbg !1653
  br label %return, !dbg !1654

if.else3:                                         ; preds = %if.else
  %arraydecay = getelementptr inbounds [2 x float], [2 x float]* %y, i32 0, i32 0, !dbg !1655
  %call4 = call arm_aapcs_vfpcc i32 @basicmath___ieee754_rem_pio2f(float noundef %x, float* noundef nonnull %arraydecay) #4, !dbg !1657
  call void @llvm.dbg.value(metadata i32 %call4, metadata !1658, metadata !DIExpression()), !dbg !1634
  %and5 = and i32 %call4, 3, !dbg !1659
  switch i32 %and5, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb8
    i32 2, label %sw.bb12
  ], !dbg !1660

sw.bb:                                            ; preds = %if.else3
  %arrayidx = getelementptr inbounds [2 x float], [2 x float]* %y, i32 0, i32 0, !dbg !1661
  %0 = load float, float* %arrayidx, align 4, !dbg !1661
  %arrayidx6 = getelementptr inbounds [2 x float], [2 x float]* %y, i32 0, i32 1, !dbg !1663
  %1 = load float, float* %arrayidx6, align 4, !dbg !1663
  %call7 = call arm_aapcs_vfpcc float @basicmath___kernel_cosf(float noundef %0, float noundef %1) #4, !dbg !1664
  br label %return, !dbg !1665

sw.bb8:                                           ; preds = %if.else3
  %arrayidx9 = getelementptr inbounds [2 x float], [2 x float]* %y, i32 0, i32 0, !dbg !1666
  %2 = load float, float* %arrayidx9, align 4, !dbg !1666
  %arrayidx10 = getelementptr inbounds [2 x float], [2 x float]* %y, i32 0, i32 1, !dbg !1667
  %3 = load float, float* %arrayidx10, align 4, !dbg !1667
  %call11 = call arm_aapcs_vfpcc float @basicmath___kernel_sinf(float noundef %2, float noundef %3, i32 noundef 1) #4, !dbg !1668
  %fneg = fneg float %call11, !dbg !1669
  br label %return, !dbg !1670

sw.bb12:                                          ; preds = %if.else3
  %arrayidx13 = getelementptr inbounds [2 x float], [2 x float]* %y, i32 0, i32 0, !dbg !1671
  %4 = load float, float* %arrayidx13, align 4, !dbg !1671
  %arrayidx14 = getelementptr inbounds [2 x float], [2 x float]* %y, i32 0, i32 1, !dbg !1672
  %5 = load float, float* %arrayidx14, align 4, !dbg !1672
  %call15 = call arm_aapcs_vfpcc float @basicmath___kernel_cosf(float noundef %4, float noundef %5) #4, !dbg !1673
  %fneg16 = fneg float %call15, !dbg !1674
  br label %return, !dbg !1675

sw.default:                                       ; preds = %if.else3
  %arrayidx17 = getelementptr inbounds [2 x float], [2 x float]* %y, i32 0, i32 0, !dbg !1676
  %6 = load float, float* %arrayidx17, align 4, !dbg !1676
  %arrayidx18 = getelementptr inbounds [2 x float], [2 x float]* %y, i32 0, i32 1, !dbg !1677
  %7 = load float, float* %arrayidx18, align 4, !dbg !1677
  %call19 = call arm_aapcs_vfpcc float @basicmath___kernel_sinf(float noundef %6, float noundef %7, i32 noundef 1) #4, !dbg !1678
  br label %return, !dbg !1679

return:                                           ; preds = %sw.default, %sw.bb12, %sw.bb8, %sw.bb, %if.then2, %if.then
  %retval.0 = phi float [ %call, %if.then ], [ %sub, %if.then2 ], [ %call19, %sw.default ], [ %fneg16, %sw.bb12 ], [ %fneg, %sw.bb8 ], [ %call7, %sw.bb ], !dbg !1680
  ret float %retval.0, !dbg !1681
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__absvdi2(i64 noundef %a) #2 !dbg !1682 {
entry:
  %cmp = icmp eq i64 %a, -9223372036854775808, !dbg !1684
  br i1 %cmp, label %if.then, label %if.end, !dbg !1685

if.then:                                          ; preds = %entry
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i32 noundef 26, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__absvdi2, i32 0, i32 0)) #5, !dbg !1686
  unreachable, !dbg !1686

if.end:                                           ; preds = %entry
  %0 = call i64 @llvm.abs.i64(i64 %a, i1 true), !dbg !1687
  ret i64 %0, !dbg !1688
}

; Function Attrs: noinline noreturn nounwind
define weak hidden arm_aapcscc void @compilerrt_abort_impl(i8* noundef %file, i32 noundef %line, i8* noundef %function) #3 !dbg !1689 {
entry:
  unreachable, !dbg !1690
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__absvsi2(i32 noundef %a) #2 !dbg !1691 {
entry:
  %cmp = icmp eq i32 %a, -2147483648, !dbg !1692
  br i1 %cmp, label %if.then, label %if.end, !dbg !1693

if.then:                                          ; preds = %entry
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 noundef 26, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__absvsi2, i32 0, i32 0)) #5, !dbg !1694
  unreachable, !dbg !1694

if.end:                                           ; preds = %entry
  %0 = call i32 @llvm.abs.i32(i32 %a, i1 true), !dbg !1695
  ret i32 %0, !dbg !1696
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__addvdi3(i64 noundef %a, i64 noundef %b) #2 !dbg !1697 {
entry:
  %add = add i64 %a, %b, !dbg !1698
  %cmp = icmp sgt i64 %b, -1, !dbg !1699
  br i1 %cmp, label %if.then, label %if.else, !dbg !1700

if.then:                                          ; preds = %entry
  %cmp1 = icmp slt i64 %add, %a, !dbg !1701
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !1702

if.then2:                                         ; preds = %if.then
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i32 noundef 28, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__addvdi3, i32 0, i32 0)) #5, !dbg !1703
  unreachable, !dbg !1703

if.end:                                           ; preds = %if.then
  br label %if.end6, !dbg !1704

if.else:                                          ; preds = %entry
  %cmp3.not = icmp slt i64 %add, %a, !dbg !1705
  br i1 %cmp3.not, label %if.end5, label %if.then4, !dbg !1706

if.then4:                                         ; preds = %if.else
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i32 noundef 33, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__addvdi3, i32 0, i32 0)) #5, !dbg !1707
  unreachable, !dbg !1707

if.end5:                                          ; preds = %if.else
  br label %if.end6

if.end6:                                          ; preds = %if.end5, %if.end
  ret i64 %add, !dbg !1708
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__addvsi3(i32 noundef %a, i32 noundef %b) #2 !dbg !1709 {
entry:
  %add = add i32 %a, %b, !dbg !1710
  %cmp = icmp sgt i32 %b, -1, !dbg !1711
  br i1 %cmp, label %if.then, label %if.else, !dbg !1712

if.then:                                          ; preds = %entry
  %cmp1 = icmp slt i32 %add, %a, !dbg !1713
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !1714

if.then2:                                         ; preds = %if.then
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), i32 noundef 28, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__addvsi3, i32 0, i32 0)) #5, !dbg !1715
  unreachable, !dbg !1715

if.end:                                           ; preds = %if.then
  br label %if.end6, !dbg !1716

if.else:                                          ; preds = %entry
  %cmp3.not = icmp slt i32 %add, %a, !dbg !1717
  br i1 %cmp3.not, label %if.end5, label %if.then4, !dbg !1718

if.then4:                                         ; preds = %if.else
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), i32 noundef 33, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__addvsi3, i32 0, i32 0)) #5, !dbg !1719
  unreachable, !dbg !1719

if.end5:                                          ; preds = %if.else
  br label %if.end6

if.end6:                                          ; preds = %if.end5, %if.end
  ret i32 %add, !dbg !1720
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__ashldi3(i64 noundef %a, i32 noundef %b) #2 !dbg !1721 {
entry:
  %input = alloca %union.dwords, align 8
  %result = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %input, i32 0, i32 0, !dbg !1722
  store i64 %a, i64* %all, align 8, !dbg !1723
  %and = and i32 %b, 32, !dbg !1724
  %tobool.not = icmp eq i32 %and, 0, !dbg !1724
  br i1 %tobool.not, label %if.else, label %if.then, !dbg !1725

if.then:                                          ; preds = %entry
  %low = bitcast %union.dwords* %result to i32*, !dbg !1726
  store i32 0, i32* %low, align 8, !dbg !1727
  %low2 = bitcast %union.dwords* %input to i32*, !dbg !1728
  %0 = load i32, i32* %low2, align 8, !dbg !1728
  %sub = add nsw i32 %b, -32, !dbg !1729
  %shl = shl i32 %0, %sub, !dbg !1730
  %s3 = bitcast %union.dwords* %result to %struct.anon*, !dbg !1731
  %high = getelementptr inbounds %struct.anon, %struct.anon* %s3, i32 0, i32 1, !dbg !1732
  store i32 %shl, i32* %high, align 4, !dbg !1733
  br label %if.end18, !dbg !1734

if.else:                                          ; preds = %entry
  %cmp = icmp eq i32 %b, 0, !dbg !1735
  br i1 %cmp, label %if.then4, label %if.end, !dbg !1736

if.then4:                                         ; preds = %if.else
  br label %return, !dbg !1737

if.end:                                           ; preds = %if.else
  %low6 = bitcast %union.dwords* %input to i32*, !dbg !1738
  %1 = load i32, i32* %low6, align 8, !dbg !1738
  %shl7 = shl i32 %1, %b, !dbg !1739
  %low9 = bitcast %union.dwords* %result to i32*, !dbg !1740
  store i32 %shl7, i32* %low9, align 8, !dbg !1741
  %s10 = bitcast %union.dwords* %input to %struct.anon*, !dbg !1742
  %high11 = getelementptr inbounds %struct.anon, %struct.anon* %s10, i32 0, i32 1, !dbg !1743
  %2 = load i32, i32* %high11, align 4, !dbg !1743
  %shl12 = shl i32 %2, %b, !dbg !1744
  %low14 = bitcast %union.dwords* %input to i32*, !dbg !1745
  %3 = load i32, i32* %low14, align 8, !dbg !1745
  %sub15 = sub nsw i32 32, %b, !dbg !1746
  %shr = lshr i32 %3, %sub15, !dbg !1747
  %or = or i32 %shl12, %shr, !dbg !1748
  %s16 = bitcast %union.dwords* %result to %struct.anon*, !dbg !1749
  %high17 = getelementptr inbounds %struct.anon, %struct.anon* %s16, i32 0, i32 1, !dbg !1750
  store i32 %or, i32* %high17, align 4, !dbg !1751
  br label %if.end18

if.end18:                                         ; preds = %if.end, %if.then
  %all19 = getelementptr inbounds %union.dwords, %union.dwords* %result, i32 0, i32 0, !dbg !1752
  %4 = load i64, i64* %all19, align 8, !dbg !1752
  br label %return, !dbg !1753

return:                                           ; preds = %if.end18, %if.then4
  %retval.0 = phi i64 [ %4, %if.end18 ], [ %a, %if.then4 ], !dbg !1754
  ret i64 %retval.0, !dbg !1755
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__ashrdi3(i64 noundef %a, i32 noundef %b) #2 !dbg !1756 {
entry:
  %input = alloca %union.dwords, align 8
  %result = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %input, i32 0, i32 0, !dbg !1757
  store i64 %a, i64* %all, align 8, !dbg !1758
  %and = and i32 %b, 32, !dbg !1759
  %tobool.not = icmp eq i32 %and, 0, !dbg !1759
  br i1 %tobool.not, label %if.else, label %if.then, !dbg !1760

if.then:                                          ; preds = %entry
  %s = bitcast %union.dwords* %input to %struct.anon*, !dbg !1761
  %high = getelementptr inbounds %struct.anon, %struct.anon* %s, i32 0, i32 1, !dbg !1762
  %0 = load i32, i32* %high, align 4, !dbg !1762
  %shr = ashr i32 %0, 31, !dbg !1763
  %s1 = bitcast %union.dwords* %result to %struct.anon*, !dbg !1764
  %high2 = getelementptr inbounds %struct.anon, %struct.anon* %s1, i32 0, i32 1, !dbg !1765
  store i32 %shr, i32* %high2, align 4, !dbg !1766
  %s3 = bitcast %union.dwords* %input to %struct.anon*, !dbg !1767
  %high4 = getelementptr inbounds %struct.anon, %struct.anon* %s3, i32 0, i32 1, !dbg !1768
  %1 = load i32, i32* %high4, align 4, !dbg !1768
  %sub = add nsw i32 %b, -32, !dbg !1769
  %shr5 = ashr i32 %1, %sub, !dbg !1770
  %low = bitcast %union.dwords* %result to i32*, !dbg !1771
  store i32 %shr5, i32* %low, align 8, !dbg !1772
  br label %if.end21, !dbg !1773

if.else:                                          ; preds = %entry
  %cmp = icmp eq i32 %b, 0, !dbg !1774
  br i1 %cmp, label %if.then7, label %if.end, !dbg !1775

if.then7:                                         ; preds = %if.else
  br label %return, !dbg !1776

if.end:                                           ; preds = %if.else
  %s8 = bitcast %union.dwords* %input to %struct.anon*, !dbg !1777
  %high9 = getelementptr inbounds %struct.anon, %struct.anon* %s8, i32 0, i32 1, !dbg !1778
  %2 = load i32, i32* %high9, align 4, !dbg !1778
  %shr10 = ashr i32 %2, %b, !dbg !1779
  %s11 = bitcast %union.dwords* %result to %struct.anon*, !dbg !1780
  %high12 = getelementptr inbounds %struct.anon, %struct.anon* %s11, i32 0, i32 1, !dbg !1781
  store i32 %shr10, i32* %high12, align 4, !dbg !1782
  %s13 = bitcast %union.dwords* %input to %struct.anon*, !dbg !1783
  %high14 = getelementptr inbounds %struct.anon, %struct.anon* %s13, i32 0, i32 1, !dbg !1784
  %3 = load i32, i32* %high14, align 4, !dbg !1784
  %sub15 = sub nsw i32 32, %b, !dbg !1785
  %shl = shl i32 %3, %sub15, !dbg !1786
  %low17 = bitcast %union.dwords* %input to i32*, !dbg !1787
  %4 = load i32, i32* %low17, align 8, !dbg !1787
  %shr18 = lshr i32 %4, %b, !dbg !1788
  %or = or i32 %shl, %shr18, !dbg !1789
  %low20 = bitcast %union.dwords* %result to i32*, !dbg !1790
  store i32 %or, i32* %low20, align 8, !dbg !1791
  br label %if.end21

if.end21:                                         ; preds = %if.end, %if.then
  %all22 = getelementptr inbounds %union.dwords, %union.dwords* %result, i32 0, i32 0, !dbg !1792
  %5 = load i64, i64* %all22, align 8, !dbg !1792
  br label %return, !dbg !1793

return:                                           ; preds = %if.end21, %if.then7
  %retval.0 = phi i64 [ %5, %if.end21 ], [ %a, %if.then7 ], !dbg !1794
  ret i64 %retval.0, !dbg !1795
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__clzdi2(i64 noundef %a) #2 !dbg !1796 {
entry:
  %x = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %x, i32 0, i32 0, !dbg !1797
  store i64 %a, i64* %all, align 8, !dbg !1798
  %s = bitcast %union.dwords* %x to %struct.anon*, !dbg !1799
  %high = getelementptr inbounds %struct.anon, %struct.anon* %s, i32 0, i32 1, !dbg !1800
  %0 = load i32, i32* %high, align 4, !dbg !1800
  %cmp = icmp eq i32 %0, 0, !dbg !1801
  %s1 = bitcast %union.dwords* %x to %struct.anon*, !dbg !1802
  %high2 = getelementptr inbounds %struct.anon, %struct.anon* %s1, i32 0, i32 1, !dbg !1803
  %1 = load i32, i32* %high2, align 4, !dbg !1803
  %low = bitcast %union.dwords* %x to i32*, !dbg !1804
  %2 = load i32, i32* %low, align 8, !dbg !1804
  %3 = select i1 %cmp, i32 %2, i32 %1, !dbg !1805
  %4 = call i32 @llvm.ctlz.i32(i32 %3, i1 false), !dbg !1806, !range !1807
  %and5 = select i1 %cmp, i32 32, i32 0, !dbg !1808
  %add = add nuw nsw i32 %4, %and5, !dbg !1809
  ret i32 %add, !dbg !1810
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #1

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__clzsi2(i32 noundef %a) #2 !dbg !1811 {
entry:
  %cmp = icmp ult i32 %a, 65536, !dbg !1812
  %shl = select i1 %cmp, i32 16, i32 0, !dbg !1813
  %sub = sub nuw nsw i32 16, %shl, !dbg !1814
  %shr = lshr i32 %a, %sub, !dbg !1815
  %and1 = and i32 %shr, 65280, !dbg !1816
  %cmp2 = icmp eq i32 %and1, 0, !dbg !1817
  %shl4 = select i1 %cmp2, i32 8, i32 0, !dbg !1818
  %sub5 = sub nuw nsw i32 8, %shl4, !dbg !1819
  %shr6 = lshr i32 %shr, %sub5, !dbg !1820
  %add = or i32 %shl, %shl4, !dbg !1821
  %and7 = and i32 %shr6, 240, !dbg !1822
  %cmp8 = icmp eq i32 %and7, 0, !dbg !1823
  %shl10 = select i1 %cmp8, i32 4, i32 0, !dbg !1824
  %sub11 = sub nuw nsw i32 4, %shl10, !dbg !1825
  %shr12 = lshr i32 %shr6, %sub11, !dbg !1826
  %add13 = or i32 %add, %shl10, !dbg !1827
  %and14 = and i32 %shr12, 12, !dbg !1828
  %cmp15 = icmp eq i32 %and14, 0, !dbg !1829
  %shl17 = select i1 %cmp15, i32 2, i32 0, !dbg !1830
  %sub18 = sub nuw nsw i32 2, %shl17, !dbg !1831
  %shr19 = lshr i32 %shr12, %sub18, !dbg !1832
  %add20 = or i32 %add13, %shl17, !dbg !1833
  %sub21 = sub i32 2, %shr19, !dbg !1834
  %and22 = lshr i32 %shr19, 1, !dbg !1835
  %0 = or i32 %and22, -2, !dbg !1835
  %.neg = add nsw i32 %0, 1, !dbg !1835
  %and26 = and i32 %sub21, %.neg, !dbg !1836
  %add27 = add i32 %add20, %and26, !dbg !1837
  ret i32 %add27, !dbg !1838
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__cmpdi2(i64 noundef %a, i64 noundef %b) #2 !dbg !1839 {
entry:
  %x = alloca %union.dwords, align 8
  %y = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %x, i32 0, i32 0, !dbg !1840
  store i64 %a, i64* %all, align 8, !dbg !1841
  %all1 = getelementptr inbounds %union.dwords, %union.dwords* %y, i32 0, i32 0, !dbg !1842
  store i64 %b, i64* %all1, align 8, !dbg !1843
  %s = bitcast %union.dwords* %x to %struct.anon*, !dbg !1844
  %high = getelementptr inbounds %struct.anon, %struct.anon* %s, i32 0, i32 1, !dbg !1845
  %0 = load i32, i32* %high, align 4, !dbg !1845
  %s2 = bitcast %union.dwords* %y to %struct.anon*, !dbg !1846
  %high3 = getelementptr inbounds %struct.anon, %struct.anon* %s2, i32 0, i32 1, !dbg !1847
  %1 = load i32, i32* %high3, align 4, !dbg !1847
  %cmp = icmp slt i32 %0, %1, !dbg !1848
  br i1 %cmp, label %if.then, label %if.end, !dbg !1849

if.then:                                          ; preds = %entry
  br label %return, !dbg !1850

if.end:                                           ; preds = %entry
  %s4 = bitcast %union.dwords* %x to %struct.anon*, !dbg !1851
  %high5 = getelementptr inbounds %struct.anon, %struct.anon* %s4, i32 0, i32 1, !dbg !1852
  %2 = load i32, i32* %high5, align 4, !dbg !1852
  %s6 = bitcast %union.dwords* %y to %struct.anon*, !dbg !1853
  %high7 = getelementptr inbounds %struct.anon, %struct.anon* %s6, i32 0, i32 1, !dbg !1854
  %3 = load i32, i32* %high7, align 4, !dbg !1854
  %cmp8 = icmp sgt i32 %2, %3, !dbg !1855
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !1856

if.then9:                                         ; preds = %if.end
  br label %return, !dbg !1857

if.end10:                                         ; preds = %if.end
  %low = bitcast %union.dwords* %x to i32*, !dbg !1858
  %4 = load i32, i32* %low, align 8, !dbg !1858
  %low13 = bitcast %union.dwords* %y to i32*, !dbg !1859
  %5 = load i32, i32* %low13, align 8, !dbg !1859
  %cmp14 = icmp ult i32 %4, %5, !dbg !1860
  br i1 %cmp14, label %if.then15, label %if.end16, !dbg !1861

if.then15:                                        ; preds = %if.end10
  br label %return, !dbg !1862

if.end16:                                         ; preds = %if.end10
  %low18 = bitcast %union.dwords* %x to i32*, !dbg !1863
  %6 = load i32, i32* %low18, align 8, !dbg !1863
  %low20 = bitcast %union.dwords* %y to i32*, !dbg !1864
  %7 = load i32, i32* %low20, align 8, !dbg !1864
  %cmp21 = icmp ugt i32 %6, %7, !dbg !1865
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !1866

if.then22:                                        ; preds = %if.end16
  br label %return, !dbg !1867

if.end23:                                         ; preds = %if.end16
  br label %return, !dbg !1868

return:                                           ; preds = %if.end23, %if.then22, %if.then15, %if.then9, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 2, %if.then9 ], [ 0, %if.then15 ], [ 2, %if.then22 ], [ 1, %if.end23 ], !dbg !1869
  ret i32 %retval.0, !dbg !1870
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__aeabi_lcmp(i64 noundef %a, i64 noundef %b) #2 !dbg !1871 {
entry:
  %call = call arm_aapcscc i32 @__cmpdi2(i64 noundef %a, i64 noundef %b) #4, !dbg !1872
  %sub = add nsw i32 %call, -1, !dbg !1873
  ret i32 %sub, !dbg !1874
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__ctzdi2(i64 noundef %a) #2 !dbg !1875 {
entry:
  %x = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %x, i32 0, i32 0, !dbg !1876
  store i64 %a, i64* %all, align 8, !dbg !1877
  %low = bitcast %union.dwords* %x to i32*, !dbg !1878
  %0 = load i32, i32* %low, align 8, !dbg !1878
  %cmp = icmp eq i32 %0, 0, !dbg !1879
  %s1 = bitcast %union.dwords* %x to %struct.anon*, !dbg !1880
  %high = getelementptr inbounds %struct.anon, %struct.anon* %s1, i32 0, i32 1, !dbg !1881
  %1 = load i32, i32* %high, align 4, !dbg !1881
  %2 = select i1 %cmp, i32 %1, i32 %0, !dbg !1882
  %3 = call i32 @llvm.cttz.i32(i32 %2, i1 false), !dbg !1883, !range !1807
  %and5 = select i1 %cmp, i32 32, i32 0, !dbg !1884
  %add = add nuw nsw i32 %3, %and5, !dbg !1885
  ret i32 %add, !dbg !1886
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #1

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__ctzsi2(i32 noundef %a) #2 !dbg !1887 {
entry:
  %and = and i32 %a, 65535, !dbg !1888
  %cmp = icmp eq i32 %and, 0, !dbg !1889
  %shl = select i1 %cmp, i32 16, i32 0, !dbg !1890
  %shr = lshr i32 %a, %shl, !dbg !1891
  %and1 = and i32 %shr, 255, !dbg !1892
  %cmp2 = icmp eq i32 %and1, 0, !dbg !1893
  %shl4 = select i1 %cmp2, i32 8, i32 0, !dbg !1894
  %shr5 = lshr i32 %shr, %shl4, !dbg !1895
  %add = or i32 %shl, %shl4, !dbg !1896
  %and6 = and i32 %shr5, 15, !dbg !1897
  %cmp7 = icmp eq i32 %and6, 0, !dbg !1898
  %shl9 = select i1 %cmp7, i32 4, i32 0, !dbg !1899
  %shr10 = lshr i32 %shr5, %shl9, !dbg !1900
  %add11 = or i32 %add, %shl9, !dbg !1901
  %and12 = and i32 %shr10, 3, !dbg !1902
  %cmp13 = icmp eq i32 %and12, 0, !dbg !1903
  %shl15 = select i1 %cmp13, i32 2, i32 0, !dbg !1904
  %shr16 = lshr i32 %shr10, %shl15, !dbg !1905
  %add18 = or i32 %add11, %shl15, !dbg !1906
  %and17 = lshr i32 %shr16, 1, !dbg !1907
  %shr19 = and i32 %and17, 1, !dbg !1907
  %sub = sub nuw nsw i32 2, %shr19, !dbg !1908
  %0 = or i32 %shr16, -2, !dbg !1909
  %.neg = add nsw i32 %0, 1, !dbg !1909
  %and24 = and i32 %sub, %.neg, !dbg !1910
  %add25 = add nuw nsw i32 %add18, %and24, !dbg !1911
  ret i32 %add25, !dbg !1912
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__divdi3(i64 noundef %a, i64 noundef %b) #2 !dbg !1913 {
entry:
  %shr = ashr i64 %a, 63, !dbg !1914
  %shr1 = ashr i64 %b, 63, !dbg !1915
  %xor = xor i64 %shr, %a, !dbg !1916
  %sub = sub nsw i64 %xor, %shr, !dbg !1917
  %xor2 = xor i64 %shr1, %b, !dbg !1918
  %sub3 = sub nsw i64 %xor2, %shr1, !dbg !1919
  %xor4 = xor i64 %shr, %shr1, !dbg !1920
  %call = call arm_aapcscc i64 @__udivmoddi4(i64 noundef %sub, i64 noundef %sub3, i64* noundef null) #4, !dbg !1921
  %xor5 = xor i64 %call, %xor4, !dbg !1922
  %sub6 = sub i64 %xor5, %xor4, !dbg !1923
  ret i64 %sub6, !dbg !1924
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__udivmoddi4(i64 noundef %a, i64 noundef %b, i64* noundef %rem) #2 !dbg !1925 {
entry:
  %n = alloca %union.dwords, align 8
  %d = alloca %union.dwords, align 8
  %q = alloca %union.dwords, align 8
  %r = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %n, i32 0, i32 0, !dbg !1926
  store i64 %a, i64* %all, align 8, !dbg !1927
  %all1 = getelementptr inbounds %union.dwords, %union.dwords* %d, i32 0, i32 0, !dbg !1928
  store i64 %b, i64* %all1, align 8, !dbg !1929
  %s = bitcast %union.dwords* %n to %struct.anon*, !dbg !1930
  %high = getelementptr inbounds %struct.anon, %struct.anon* %s, i32 0, i32 1, !dbg !1931
  %0 = load i32, i32* %high, align 4, !dbg !1931
  %cmp = icmp eq i32 %0, 0, !dbg !1932
  br i1 %cmp, label %if.then, label %if.end23, !dbg !1933

if.then:                                          ; preds = %entry
  %s2 = bitcast %union.dwords* %d to %struct.anon*, !dbg !1934
  %high3 = getelementptr inbounds %struct.anon, %struct.anon* %s2, i32 0, i32 1, !dbg !1935
  %1 = load i32, i32* %high3, align 4, !dbg !1935
  %cmp4 = icmp eq i32 %1, 0, !dbg !1936
  br i1 %cmp4, label %if.then5, label %if.end16, !dbg !1937

if.then5:                                         ; preds = %if.then
  %tobool.not = icmp eq i64* %rem, null, !dbg !1938
  br i1 %tobool.not, label %if.end, label %if.then6, !dbg !1938

if.then6:                                         ; preds = %if.then5
  %low = bitcast %union.dwords* %n to i32*, !dbg !1939
  %2 = load i32, i32* %low, align 8, !dbg !1939
  %low9 = bitcast %union.dwords* %d to i32*, !dbg !1940
  %3 = load i32, i32* %low9, align 8, !dbg !1940
  %rem10 = urem i32 %2, %3, !dbg !1941
  %conv = zext i32 %rem10 to i64, !dbg !1942
  store i64 %conv, i64* %rem, align 8, !dbg !1943
  br label %if.end, !dbg !1944

if.end:                                           ; preds = %if.then6, %if.then5
  %low12 = bitcast %union.dwords* %n to i32*, !dbg !1945
  %4 = load i32, i32* %low12, align 8, !dbg !1945
  %low14 = bitcast %union.dwords* %d to i32*, !dbg !1946
  %5 = load i32, i32* %low14, align 8, !dbg !1946
  %div = udiv i32 %4, %5, !dbg !1947
  %conv15 = zext i32 %div to i64, !dbg !1948
  br label %return, !dbg !1949

if.end16:                                         ; preds = %if.then
  %tobool17.not = icmp eq i64* %rem, null, !dbg !1950
  br i1 %tobool17.not, label %if.end22, label %if.then18, !dbg !1950

if.then18:                                        ; preds = %if.end16
  %low20 = bitcast %union.dwords* %n to i32*, !dbg !1951
  %6 = load i32, i32* %low20, align 8, !dbg !1951
  %conv21 = zext i32 %6 to i64, !dbg !1952
  store i64 %conv21, i64* %rem, align 8, !dbg !1953
  br label %if.end22, !dbg !1954

if.end22:                                         ; preds = %if.then18, %if.end16
  br label %return, !dbg !1955

if.end23:                                         ; preds = %entry
  %low25 = bitcast %union.dwords* %d to i32*, !dbg !1956
  %7 = load i32, i32* %low25, align 8, !dbg !1956
  %cmp26 = icmp eq i32 %7, 0, !dbg !1957
  br i1 %cmp26, label %if.then28, label %if.else, !dbg !1958

if.then28:                                        ; preds = %if.end23
  %s29 = bitcast %union.dwords* %d to %struct.anon*, !dbg !1959
  %high30 = getelementptr inbounds %struct.anon, %struct.anon* %s29, i32 0, i32 1, !dbg !1960
  %8 = load i32, i32* %high30, align 4, !dbg !1960
  %cmp31 = icmp eq i32 %8, 0, !dbg !1961
  br i1 %cmp31, label %if.then33, label %if.end49, !dbg !1962

if.then33:                                        ; preds = %if.then28
  %tobool34.not = icmp eq i64* %rem, null, !dbg !1963
  br i1 %tobool34.not, label %if.end42, label %if.then35, !dbg !1963

if.then35:                                        ; preds = %if.then33
  %s36 = bitcast %union.dwords* %n to %struct.anon*, !dbg !1964
  %high37 = getelementptr inbounds %struct.anon, %struct.anon* %s36, i32 0, i32 1, !dbg !1965
  %9 = load i32, i32* %high37, align 4, !dbg !1965
  %low39 = bitcast %union.dwords* %d to i32*, !dbg !1966
  %10 = load i32, i32* %low39, align 8, !dbg !1966
  %rem40 = urem i32 %9, %10, !dbg !1967
  %conv41 = zext i32 %rem40 to i64, !dbg !1968
  store i64 %conv41, i64* %rem, align 8, !dbg !1969
  br label %if.end42, !dbg !1970

if.end42:                                         ; preds = %if.then35, %if.then33
  %s43 = bitcast %union.dwords* %n to %struct.anon*, !dbg !1971
  %high44 = getelementptr inbounds %struct.anon, %struct.anon* %s43, i32 0, i32 1, !dbg !1972
  %11 = load i32, i32* %high44, align 4, !dbg !1972
  %low46 = bitcast %union.dwords* %d to i32*, !dbg !1973
  %12 = load i32, i32* %low46, align 8, !dbg !1973
  %div47 = udiv i32 %11, %12, !dbg !1974
  %conv48 = zext i32 %div47 to i64, !dbg !1975
  br label %return, !dbg !1976

if.end49:                                         ; preds = %if.then28
  %low51 = bitcast %union.dwords* %n to i32*, !dbg !1977
  %13 = load i32, i32* %low51, align 8, !dbg !1977
  %cmp52 = icmp eq i32 %13, 0, !dbg !1978
  br i1 %cmp52, label %if.then54, label %if.end74, !dbg !1979

if.then54:                                        ; preds = %if.end49
  %tobool55.not = icmp eq i64* %rem, null, !dbg !1980
  br i1 %tobool55.not, label %if.end67, label %if.then56, !dbg !1980

if.then56:                                        ; preds = %if.then54
  %s57 = bitcast %union.dwords* %n to %struct.anon*, !dbg !1981
  %high58 = getelementptr inbounds %struct.anon, %struct.anon* %s57, i32 0, i32 1, !dbg !1982
  %14 = load i32, i32* %high58, align 4, !dbg !1982
  %s59 = bitcast %union.dwords* %d to %struct.anon*, !dbg !1983
  %high60 = getelementptr inbounds %struct.anon, %struct.anon* %s59, i32 0, i32 1, !dbg !1984
  %15 = load i32, i32* %high60, align 4, !dbg !1984
  %rem61 = urem i32 %14, %15, !dbg !1985
  %s62 = bitcast %union.dwords* %r to %struct.anon*, !dbg !1986
  %high63 = getelementptr inbounds %struct.anon, %struct.anon* %s62, i32 0, i32 1, !dbg !1987
  store i32 %rem61, i32* %high63, align 4, !dbg !1988
  %low65 = bitcast %union.dwords* %r to i32*, !dbg !1989
  store i32 0, i32* %low65, align 8, !dbg !1990
  %all66 = getelementptr inbounds %union.dwords, %union.dwords* %r, i32 0, i32 0, !dbg !1991
  %16 = load i64, i64* %all66, align 8, !dbg !1991
  store i64 %16, i64* %rem, align 8, !dbg !1992
  br label %if.end67, !dbg !1993

if.end67:                                         ; preds = %if.then56, %if.then54
  %s68 = bitcast %union.dwords* %n to %struct.anon*, !dbg !1994
  %high69 = getelementptr inbounds %struct.anon, %struct.anon* %s68, i32 0, i32 1, !dbg !1995
  %17 = load i32, i32* %high69, align 4, !dbg !1995
  %s70 = bitcast %union.dwords* %d to %struct.anon*, !dbg !1996
  %high71 = getelementptr inbounds %struct.anon, %struct.anon* %s70, i32 0, i32 1, !dbg !1997
  %18 = load i32, i32* %high71, align 4, !dbg !1997
  %div72 = udiv i32 %17, %18, !dbg !1998
  %conv73 = zext i32 %div72 to i64, !dbg !1999
  br label %return, !dbg !2000

if.end74:                                         ; preds = %if.end49
  %s75 = bitcast %union.dwords* %d to %struct.anon*, !dbg !2001
  %high76 = getelementptr inbounds %struct.anon, %struct.anon* %s75, i32 0, i32 1, !dbg !2002
  %19 = load i32, i32* %high76, align 4, !dbg !2002
  %s77 = bitcast %union.dwords* %d to %struct.anon*, !dbg !2003
  %high78 = getelementptr inbounds %struct.anon, %struct.anon* %s77, i32 0, i32 1, !dbg !2004
  %20 = load i32, i32* %high78, align 4, !dbg !2004
  %sub = add i32 %20, -1, !dbg !2005
  %and = and i32 %19, %sub, !dbg !2006
  %cmp79 = icmp eq i32 %and, 0, !dbg !2007
  br i1 %cmp79, label %if.then81, label %if.end103, !dbg !2008

if.then81:                                        ; preds = %if.end74
  %tobool82.not = icmp eq i64* %rem, null, !dbg !2009
  br i1 %tobool82.not, label %if.end97, label %if.then83, !dbg !2009

if.then83:                                        ; preds = %if.then81
  %low85 = bitcast %union.dwords* %n to i32*, !dbg !2010
  %21 = load i32, i32* %low85, align 8, !dbg !2010
  %low87 = bitcast %union.dwords* %r to i32*, !dbg !2011
  store i32 %21, i32* %low87, align 8, !dbg !2012
  %s88 = bitcast %union.dwords* %n to %struct.anon*, !dbg !2013
  %high89 = getelementptr inbounds %struct.anon, %struct.anon* %s88, i32 0, i32 1, !dbg !2014
  %22 = load i32, i32* %high89, align 4, !dbg !2014
  %s90 = bitcast %union.dwords* %d to %struct.anon*, !dbg !2015
  %high91 = getelementptr inbounds %struct.anon, %struct.anon* %s90, i32 0, i32 1, !dbg !2016
  %23 = load i32, i32* %high91, align 4, !dbg !2016
  %sub92 = add i32 %23, -1, !dbg !2017
  %and93 = and i32 %22, %sub92, !dbg !2018
  %s94 = bitcast %union.dwords* %r to %struct.anon*, !dbg !2019
  %high95 = getelementptr inbounds %struct.anon, %struct.anon* %s94, i32 0, i32 1, !dbg !2020
  store i32 %and93, i32* %high95, align 4, !dbg !2021
  %all96 = getelementptr inbounds %union.dwords, %union.dwords* %r, i32 0, i32 0, !dbg !2022
  %24 = load i64, i64* %all96, align 8, !dbg !2022
  store i64 %24, i64* %rem, align 8, !dbg !2023
  br label %if.end97, !dbg !2024

if.end97:                                         ; preds = %if.then83, %if.then81
  %s98 = bitcast %union.dwords* %n to %struct.anon*, !dbg !2025
  %high99 = getelementptr inbounds %struct.anon, %struct.anon* %s98, i32 0, i32 1, !dbg !2026
  %25 = load i32, i32* %high99, align 4, !dbg !2026
  %s100 = bitcast %union.dwords* %d to %struct.anon*, !dbg !2027
  %high101 = getelementptr inbounds %struct.anon, %struct.anon* %s100, i32 0, i32 1, !dbg !2028
  %26 = load i32, i32* %high101, align 4, !dbg !2028
  %27 = call i32 @llvm.cttz.i32(i32 %26, i1 false), !dbg !2029, !range !1807
  %shr = lshr i32 %25, %27, !dbg !2030
  %conv102 = zext i32 %shr to i64, !dbg !2031
  br label %return, !dbg !2032

if.end103:                                        ; preds = %if.end74
  %s104 = bitcast %union.dwords* %d to %struct.anon*, !dbg !2033
  %high105 = getelementptr inbounds %struct.anon, %struct.anon* %s104, i32 0, i32 1, !dbg !2034
  %28 = load i32, i32* %high105, align 4, !dbg !2034
  %29 = call i32 @llvm.ctlz.i32(i32 %28, i1 false), !dbg !2035, !range !1807
  %s106 = bitcast %union.dwords* %n to %struct.anon*, !dbg !2036
  %high107 = getelementptr inbounds %struct.anon, %struct.anon* %s106, i32 0, i32 1, !dbg !2037
  %30 = load i32, i32* %high107, align 4, !dbg !2037
  %31 = call i32 @llvm.ctlz.i32(i32 %30, i1 false), !dbg !2038, !range !1807
  %sub108 = sub nsw i32 %29, %31, !dbg !2039
  %cmp109 = icmp ugt i32 %sub108, 30, !dbg !2040
  br i1 %cmp109, label %if.then111, label %if.end116, !dbg !2041

if.then111:                                       ; preds = %if.end103
  %tobool112.not = icmp eq i64* %rem, null, !dbg !2042
  br i1 %tobool112.not, label %if.end115, label %if.then113, !dbg !2042

if.then113:                                       ; preds = %if.then111
  %all114 = getelementptr inbounds %union.dwords, %union.dwords* %n, i32 0, i32 0, !dbg !2043
  %32 = load i64, i64* %all114, align 8, !dbg !2043
  store i64 %32, i64* %rem, align 8, !dbg !2044
  br label %if.end115, !dbg !2045

if.end115:                                        ; preds = %if.then113, %if.then111
  br label %return, !dbg !2046

if.end116:                                        ; preds = %if.end103
  %inc = add nsw i32 %sub108, 1, !dbg !2047
  %low118 = bitcast %union.dwords* %q to i32*, !dbg !2048
  store i32 0, i32* %low118, align 8, !dbg !2049
  %low120 = bitcast %union.dwords* %n to i32*, !dbg !2050
  %33 = load i32, i32* %low120, align 8, !dbg !2050
  %sub121 = sub nsw i32 31, %sub108, !dbg !2051
  %shl = shl i32 %33, %sub121, !dbg !2052
  %s122 = bitcast %union.dwords* %q to %struct.anon*, !dbg !2053
  %high123 = getelementptr inbounds %struct.anon, %struct.anon* %s122, i32 0, i32 1, !dbg !2054
  store i32 %shl, i32* %high123, align 4, !dbg !2055
  %s124 = bitcast %union.dwords* %n to %struct.anon*, !dbg !2056
  %high125 = getelementptr inbounds %struct.anon, %struct.anon* %s124, i32 0, i32 1, !dbg !2057
  %34 = load i32, i32* %high125, align 4, !dbg !2057
  %shr126 = lshr i32 %34, %inc, !dbg !2058
  %s127 = bitcast %union.dwords* %r to %struct.anon*, !dbg !2059
  %high128 = getelementptr inbounds %struct.anon, %struct.anon* %s127, i32 0, i32 1, !dbg !2060
  store i32 %shr126, i32* %high128, align 4, !dbg !2061
  %s129 = bitcast %union.dwords* %n to %struct.anon*, !dbg !2062
  %high130 = getelementptr inbounds %struct.anon, %struct.anon* %s129, i32 0, i32 1, !dbg !2063
  %35 = load i32, i32* %high130, align 4, !dbg !2063
  %sub131 = sub nsw i32 31, %sub108, !dbg !2064
  %shl132 = shl i32 %35, %sub131, !dbg !2065
  %low134 = bitcast %union.dwords* %n to i32*, !dbg !2066
  %36 = load i32, i32* %low134, align 8, !dbg !2066
  %shr135 = lshr i32 %36, %inc, !dbg !2067
  %or = or i32 %shl132, %shr135, !dbg !2068
  %low137 = bitcast %union.dwords* %r to i32*, !dbg !2069
  store i32 %or, i32* %low137, align 8, !dbg !2070
  br label %if.end317, !dbg !2071

if.else:                                          ; preds = %if.end23
  %s138 = bitcast %union.dwords* %d to %struct.anon*, !dbg !2072
  %high139 = getelementptr inbounds %struct.anon, %struct.anon* %s138, i32 0, i32 1, !dbg !2073
  %37 = load i32, i32* %high139, align 4, !dbg !2073
  %cmp140 = icmp eq i32 %37, 0, !dbg !2074
  br i1 %cmp140, label %if.then142, label %if.else263, !dbg !2075

if.then142:                                       ; preds = %if.else
  %low144 = bitcast %union.dwords* %d to i32*, !dbg !2076
  %38 = load i32, i32* %low144, align 8, !dbg !2076
  %39 = call i32 @llvm.ctpop.i32(i32 %38), !dbg !2077, !range !1807
  %cmp149 = icmp ult i32 %39, 2, !dbg !2077
  br i1 %cmp149, label %if.then151, label %if.end187, !dbg !2078

if.then151:                                       ; preds = %if.then142
  %tobool152.not = icmp eq i64* %rem, null, !dbg !2079
  br i1 %tobool152.not, label %if.end161, label %if.then153, !dbg !2079

if.then153:                                       ; preds = %if.then151
  %low155 = bitcast %union.dwords* %n to i32*, !dbg !2080
  %40 = load i32, i32* %low155, align 8, !dbg !2080
  %low157 = bitcast %union.dwords* %d to i32*, !dbg !2081
  %41 = load i32, i32* %low157, align 8, !dbg !2081
  %sub158 = add i32 %41, -1, !dbg !2082
  %and159 = and i32 %40, %sub158, !dbg !2083
  %conv160 = zext i32 %and159 to i64, !dbg !2084
  store i64 %conv160, i64* %rem, align 8, !dbg !2085
  br label %if.end161, !dbg !2086

if.end161:                                        ; preds = %if.then153, %if.then151
  %low163 = bitcast %union.dwords* %d to i32*, !dbg !2087
  %42 = load i32, i32* %low163, align 8, !dbg !2087
  %cmp164 = icmp eq i32 %42, 1, !dbg !2088
  br i1 %cmp164, label %if.then166, label %if.end168, !dbg !2089

if.then166:                                       ; preds = %if.end161
  %all167 = getelementptr inbounds %union.dwords, %union.dwords* %n, i32 0, i32 0, !dbg !2090
  %43 = load i64, i64* %all167, align 8, !dbg !2090
  br label %return, !dbg !2091

if.end168:                                        ; preds = %if.end161
  %low170 = bitcast %union.dwords* %d to i32*, !dbg !2092
  %44 = load i32, i32* %low170, align 8, !dbg !2092
  %45 = call i32 @llvm.cttz.i32(i32 %44, i1 false), !dbg !2093, !range !1807
  %s171 = bitcast %union.dwords* %n to %struct.anon*, !dbg !2094
  %high172 = getelementptr inbounds %struct.anon, %struct.anon* %s171, i32 0, i32 1, !dbg !2095
  %46 = load i32, i32* %high172, align 4, !dbg !2095
  %shr173 = lshr i32 %46, %45, !dbg !2096
  %s174 = bitcast %union.dwords* %q to %struct.anon*, !dbg !2097
  %high175 = getelementptr inbounds %struct.anon, %struct.anon* %s174, i32 0, i32 1, !dbg !2098
  store i32 %shr173, i32* %high175, align 4, !dbg !2099
  %s176 = bitcast %union.dwords* %n to %struct.anon*, !dbg !2100
  %high177 = getelementptr inbounds %struct.anon, %struct.anon* %s176, i32 0, i32 1, !dbg !2101
  %47 = load i32, i32* %high177, align 4, !dbg !2101
  %sub178 = sub nuw nsw i32 32, %45, !dbg !2102
  %shl179 = shl i32 %47, %sub178, !dbg !2103
  %low181 = bitcast %union.dwords* %n to i32*, !dbg !2104
  %48 = load i32, i32* %low181, align 8, !dbg !2104
  %shr182 = lshr i32 %48, %45, !dbg !2105
  %or183 = or i32 %shl179, %shr182, !dbg !2106
  %low185 = bitcast %union.dwords* %q to i32*, !dbg !2107
  store i32 %or183, i32* %low185, align 8, !dbg !2108
  %all186 = getelementptr inbounds %union.dwords, %union.dwords* %q, i32 0, i32 0, !dbg !2109
  %49 = load i64, i64* %all186, align 8, !dbg !2109
  br label %return, !dbg !2110

if.end187:                                        ; preds = %if.then142
  %low189 = bitcast %union.dwords* %d to i32*, !dbg !2111
  %50 = load i32, i32* %low189, align 8, !dbg !2111
  %51 = call i32 @llvm.ctlz.i32(i32 %50, i1 false), !dbg !2112, !range !1807
  %add = add nuw nsw i32 %51, 33, !dbg !2113
  %s190 = bitcast %union.dwords* %n to %struct.anon*, !dbg !2114
  %high191 = getelementptr inbounds %struct.anon, %struct.anon* %s190, i32 0, i32 1, !dbg !2115
  %52 = load i32, i32* %high191, align 4, !dbg !2115
  %53 = call i32 @llvm.ctlz.i32(i32 %52, i1 false), !dbg !2116, !range !1807
  %sub192 = sub nsw i32 %add, %53, !dbg !2117
  %cmp193 = icmp eq i32 %sub192, 32, !dbg !2118
  br i1 %cmp193, label %if.then195, label %if.else208, !dbg !2119

if.then195:                                       ; preds = %if.end187
  %low197 = bitcast %union.dwords* %q to i32*, !dbg !2120
  store i32 0, i32* %low197, align 8, !dbg !2121
  %low199 = bitcast %union.dwords* %n to i32*, !dbg !2122
  %54 = load i32, i32* %low199, align 8, !dbg !2122
  %s200 = bitcast %union.dwords* %q to %struct.anon*, !dbg !2123
  %high201 = getelementptr inbounds %struct.anon, %struct.anon* %s200, i32 0, i32 1, !dbg !2124
  store i32 %54, i32* %high201, align 4, !dbg !2125
  %s202 = bitcast %union.dwords* %r to %struct.anon*, !dbg !2126
  %high203 = getelementptr inbounds %struct.anon, %struct.anon* %s202, i32 0, i32 1, !dbg !2127
  store i32 0, i32* %high203, align 4, !dbg !2128
  %s204 = bitcast %union.dwords* %n to %struct.anon*, !dbg !2129
  %high205 = getelementptr inbounds %struct.anon, %struct.anon* %s204, i32 0, i32 1, !dbg !2130
  %55 = load i32, i32* %high205, align 4, !dbg !2130
  %low207 = bitcast %union.dwords* %r to i32*, !dbg !2131
  store i32 %55, i32* %low207, align 8, !dbg !2132
  br label %if.end262, !dbg !2133

if.else208:                                       ; preds = %if.end187
  %cmp209 = icmp ult i32 %sub192, 32, !dbg !2134
  br i1 %cmp209, label %if.then211, label %if.else235, !dbg !2135

if.then211:                                       ; preds = %if.else208
  %low213 = bitcast %union.dwords* %q to i32*, !dbg !2136
  store i32 0, i32* %low213, align 8, !dbg !2137
  %low215 = bitcast %union.dwords* %n to i32*, !dbg !2138
  %56 = load i32, i32* %low215, align 8, !dbg !2138
  %sub216 = sub nsw i32 32, %sub192, !dbg !2139
  %shl217 = shl i32 %56, %sub216, !dbg !2140
  %s218 = bitcast %union.dwords* %q to %struct.anon*, !dbg !2141
  %high219 = getelementptr inbounds %struct.anon, %struct.anon* %s218, i32 0, i32 1, !dbg !2142
  store i32 %shl217, i32* %high219, align 4, !dbg !2143
  %s220 = bitcast %union.dwords* %n to %struct.anon*, !dbg !2144
  %high221 = getelementptr inbounds %struct.anon, %struct.anon* %s220, i32 0, i32 1, !dbg !2145
  %57 = load i32, i32* %high221, align 4, !dbg !2145
  %shr222 = lshr i32 %57, %sub192, !dbg !2146
  %s223 = bitcast %union.dwords* %r to %struct.anon*, !dbg !2147
  %high224 = getelementptr inbounds %struct.anon, %struct.anon* %s223, i32 0, i32 1, !dbg !2148
  store i32 %shr222, i32* %high224, align 4, !dbg !2149
  %s225 = bitcast %union.dwords* %n to %struct.anon*, !dbg !2150
  %high226 = getelementptr inbounds %struct.anon, %struct.anon* %s225, i32 0, i32 1, !dbg !2151
  %58 = load i32, i32* %high226, align 4, !dbg !2151
  %sub227 = sub nsw i32 32, %sub192, !dbg !2152
  %shl228 = shl i32 %58, %sub227, !dbg !2153
  %low230 = bitcast %union.dwords* %n to i32*, !dbg !2154
  %59 = load i32, i32* %low230, align 8, !dbg !2154
  %shr231 = lshr i32 %59, %sub192, !dbg !2155
  %or232 = or i32 %shl228, %shr231, !dbg !2156
  %low234 = bitcast %union.dwords* %r to i32*, !dbg !2157
  store i32 %or232, i32* %low234, align 8, !dbg !2158
  br label %if.end261, !dbg !2159

if.else235:                                       ; preds = %if.else208
  %low237 = bitcast %union.dwords* %n to i32*, !dbg !2160
  %60 = load i32, i32* %low237, align 8, !dbg !2160
  %sub238 = sub nsw i32 64, %sub192, !dbg !2161
  %shl239 = shl i32 %60, %sub238, !dbg !2162
  %low241 = bitcast %union.dwords* %q to i32*, !dbg !2163
  store i32 %shl239, i32* %low241, align 8, !dbg !2164
  %s242 = bitcast %union.dwords* %n to %struct.anon*, !dbg !2165
  %high243 = getelementptr inbounds %struct.anon, %struct.anon* %s242, i32 0, i32 1, !dbg !2166
  %61 = load i32, i32* %high243, align 4, !dbg !2166
  %sub244 = sub nsw i32 64, %sub192, !dbg !2167
  %shl245 = shl i32 %61, %sub244, !dbg !2168
  %low247 = bitcast %union.dwords* %n to i32*, !dbg !2169
  %62 = load i32, i32* %low247, align 8, !dbg !2169
  %sub248 = add nsw i32 %sub192, -32, !dbg !2170
  %shr249 = lshr i32 %62, %sub248, !dbg !2171
  %or250 = or i32 %shl245, %shr249, !dbg !2172
  %s251 = bitcast %union.dwords* %q to %struct.anon*, !dbg !2173
  %high252 = getelementptr inbounds %struct.anon, %struct.anon* %s251, i32 0, i32 1, !dbg !2174
  store i32 %or250, i32* %high252, align 4, !dbg !2175
  %s253 = bitcast %union.dwords* %r to %struct.anon*, !dbg !2176
  %high254 = getelementptr inbounds %struct.anon, %struct.anon* %s253, i32 0, i32 1, !dbg !2177
  store i32 0, i32* %high254, align 4, !dbg !2178
  %s255 = bitcast %union.dwords* %n to %struct.anon*, !dbg !2179
  %high256 = getelementptr inbounds %struct.anon, %struct.anon* %s255, i32 0, i32 1, !dbg !2180
  %63 = load i32, i32* %high256, align 4, !dbg !2180
  %sub257 = add nsw i32 %sub192, -32, !dbg !2181
  %shr258 = lshr i32 %63, %sub257, !dbg !2182
  %low260 = bitcast %union.dwords* %r to i32*, !dbg !2183
  store i32 %shr258, i32* %low260, align 8, !dbg !2184
  br label %if.end261

if.end261:                                        ; preds = %if.else235, %if.then211
  br label %if.end262

if.end262:                                        ; preds = %if.end261, %if.then195
  br label %if.end316, !dbg !2185

if.else263:                                       ; preds = %if.else
  %s264 = bitcast %union.dwords* %d to %struct.anon*, !dbg !2186
  %high265 = getelementptr inbounds %struct.anon, %struct.anon* %s264, i32 0, i32 1, !dbg !2187
  %64 = load i32, i32* %high265, align 4, !dbg !2187
  %65 = call i32 @llvm.ctlz.i32(i32 %64, i1 false), !dbg !2188, !range !1807
  %s266 = bitcast %union.dwords* %n to %struct.anon*, !dbg !2189
  %high267 = getelementptr inbounds %struct.anon, %struct.anon* %s266, i32 0, i32 1, !dbg !2190
  %66 = load i32, i32* %high267, align 4, !dbg !2190
  %67 = call i32 @llvm.ctlz.i32(i32 %66, i1 false), !dbg !2191, !range !1807
  %sub268 = sub nsw i32 %65, %67, !dbg !2192
  %cmp269 = icmp ugt i32 %sub268, 31, !dbg !2193
  br i1 %cmp269, label %if.then271, label %if.end276, !dbg !2194

if.then271:                                       ; preds = %if.else263
  %tobool272.not = icmp eq i64* %rem, null, !dbg !2195
  br i1 %tobool272.not, label %if.end275, label %if.then273, !dbg !2195

if.then273:                                       ; preds = %if.then271
  %all274 = getelementptr inbounds %union.dwords, %union.dwords* %n, i32 0, i32 0, !dbg !2196
  %68 = load i64, i64* %all274, align 8, !dbg !2196
  store i64 %68, i64* %rem, align 8, !dbg !2197
  br label %if.end275, !dbg !2198

if.end275:                                        ; preds = %if.then273, %if.then271
  br label %return, !dbg !2199

if.end276:                                        ; preds = %if.else263
  %inc277 = add nsw i32 %sub268, 1, !dbg !2200
  %low279 = bitcast %union.dwords* %q to i32*, !dbg !2201
  store i32 0, i32* %low279, align 8, !dbg !2202
  %cmp280 = icmp eq i32 %inc277, 32, !dbg !2203
  br i1 %cmp280, label %if.then282, label %if.else293, !dbg !2204

if.then282:                                       ; preds = %if.end276
  %low284 = bitcast %union.dwords* %n to i32*, !dbg !2205
  %69 = load i32, i32* %low284, align 8, !dbg !2205
  %s285 = bitcast %union.dwords* %q to %struct.anon*, !dbg !2206
  %high286 = getelementptr inbounds %struct.anon, %struct.anon* %s285, i32 0, i32 1, !dbg !2207
  store i32 %69, i32* %high286, align 4, !dbg !2208
  %s287 = bitcast %union.dwords* %r to %struct.anon*, !dbg !2209
  %high288 = getelementptr inbounds %struct.anon, %struct.anon* %s287, i32 0, i32 1, !dbg !2210
  store i32 0, i32* %high288, align 4, !dbg !2211
  %s289 = bitcast %union.dwords* %n to %struct.anon*, !dbg !2212
  %high290 = getelementptr inbounds %struct.anon, %struct.anon* %s289, i32 0, i32 1, !dbg !2213
  %70 = load i32, i32* %high290, align 4, !dbg !2213
  %low292 = bitcast %union.dwords* %r to i32*, !dbg !2214
  store i32 %70, i32* %low292, align 8, !dbg !2215
  br label %if.end315, !dbg !2216

if.else293:                                       ; preds = %if.end276
  %low295 = bitcast %union.dwords* %n to i32*, !dbg !2217
  %71 = load i32, i32* %low295, align 8, !dbg !2217
  %sub296 = sub nsw i32 31, %sub268, !dbg !2218
  %shl297 = shl i32 %71, %sub296, !dbg !2219
  %s298 = bitcast %union.dwords* %q to %struct.anon*, !dbg !2220
  %high299 = getelementptr inbounds %struct.anon, %struct.anon* %s298, i32 0, i32 1, !dbg !2221
  store i32 %shl297, i32* %high299, align 4, !dbg !2222
  %s300 = bitcast %union.dwords* %n to %struct.anon*, !dbg !2223
  %high301 = getelementptr inbounds %struct.anon, %struct.anon* %s300, i32 0, i32 1, !dbg !2224
  %72 = load i32, i32* %high301, align 4, !dbg !2224
  %shr302 = lshr i32 %72, %inc277, !dbg !2225
  %s303 = bitcast %union.dwords* %r to %struct.anon*, !dbg !2226
  %high304 = getelementptr inbounds %struct.anon, %struct.anon* %s303, i32 0, i32 1, !dbg !2227
  store i32 %shr302, i32* %high304, align 4, !dbg !2228
  %s305 = bitcast %union.dwords* %n to %struct.anon*, !dbg !2229
  %high306 = getelementptr inbounds %struct.anon, %struct.anon* %s305, i32 0, i32 1, !dbg !2230
  %73 = load i32, i32* %high306, align 4, !dbg !2230
  %sub307 = sub nsw i32 31, %sub268, !dbg !2231
  %shl308 = shl i32 %73, %sub307, !dbg !2232
  %low310 = bitcast %union.dwords* %n to i32*, !dbg !2233
  %74 = load i32, i32* %low310, align 8, !dbg !2233
  %shr311 = lshr i32 %74, %inc277, !dbg !2234
  %or312 = or i32 %shl308, %shr311, !dbg !2235
  %low314 = bitcast %union.dwords* %r to i32*, !dbg !2236
  store i32 %or312, i32* %low314, align 8, !dbg !2237
  br label %if.end315

if.end315:                                        ; preds = %if.else293, %if.then282
  br label %if.end316

if.end316:                                        ; preds = %if.end315, %if.end262
  %sr.0 = phi i32 [ %sub192, %if.end262 ], [ %inc277, %if.end315 ], !dbg !2238
  br label %if.end317

if.end317:                                        ; preds = %if.end316, %if.end116
  %sr.1 = phi i32 [ %inc, %if.end116 ], [ %sr.0, %if.end316 ], !dbg !2238
  br label %for.cond, !dbg !2239

for.cond:                                         ; preds = %for.inc, %if.end317
  %sr.2 = phi i32 [ %sr.1, %if.end317 ], [ %dec, %for.inc ], !dbg !2238
  %carry.0 = phi i32 [ 0, %if.end317 ], [ %conv360, %for.inc ], !dbg !2238
  %cmp318.not = icmp eq i32 %sr.2, 0, !dbg !2240
  br i1 %cmp318.not, label %for.end, label %for.body, !dbg !2239

for.body:                                         ; preds = %for.cond
  %s320 = bitcast %union.dwords* %r to %struct.anon*, !dbg !2241
  %high321 = getelementptr inbounds %struct.anon, %struct.anon* %s320, i32 0, i32 1, !dbg !2242
  %75 = load i32, i32* %high321, align 4, !dbg !2242
  %low324 = bitcast %union.dwords* %r to i32*, !dbg !2243
  %76 = load i32, i32* %low324, align 8, !dbg !2243
  %or326 = call i32 @llvm.fshl.i32(i32 %75, i32 %76, i32 1), !dbg !2244
  %s327 = bitcast %union.dwords* %r to %struct.anon*, !dbg !2245
  %high328 = getelementptr inbounds %struct.anon, %struct.anon* %s327, i32 0, i32 1, !dbg !2246
  store i32 %or326, i32* %high328, align 4, !dbg !2247
  %s332 = bitcast %union.dwords* %q to %struct.anon*, !dbg !2248
  %high333 = getelementptr inbounds %struct.anon, %struct.anon* %s332, i32 0, i32 1, !dbg !2249
  %77 = load i32, i32* %high333, align 4, !dbg !2249
  %or335 = call i32 @llvm.fshl.i32(i32 %76, i32 %77, i32 1), !dbg !2250
  %low337 = bitcast %union.dwords* %r to i32*, !dbg !2251
  store i32 %or335, i32* %low337, align 8, !dbg !2252
  %s338 = bitcast %union.dwords* %q to %struct.anon*, !dbg !2253
  %high339 = getelementptr inbounds %struct.anon, %struct.anon* %s338, i32 0, i32 1, !dbg !2254
  %78 = load i32, i32* %high339, align 4, !dbg !2254
  %low342 = bitcast %union.dwords* %q to i32*, !dbg !2255
  %79 = load i32, i32* %low342, align 8, !dbg !2255
  %or344 = call i32 @llvm.fshl.i32(i32 %78, i32 %79, i32 1), !dbg !2256
  %s345 = bitcast %union.dwords* %q to %struct.anon*, !dbg !2257
  %high346 = getelementptr inbounds %struct.anon, %struct.anon* %s345, i32 0, i32 1, !dbg !2258
  store i32 %or344, i32* %high346, align 4, !dbg !2259
  %shl349 = shl i32 %79, 1, !dbg !2260
  %or350 = or i32 %shl349, %carry.0, !dbg !2261
  %low352 = bitcast %union.dwords* %q to i32*, !dbg !2262
  store i32 %or350, i32* %low352, align 8, !dbg !2263
  %all354 = getelementptr inbounds %union.dwords, %union.dwords* %d, i32 0, i32 0, !dbg !2264
  %80 = load i64, i64* %all354, align 8, !dbg !2264
  %all355 = getelementptr inbounds %union.dwords, %union.dwords* %r, i32 0, i32 0, !dbg !2265
  %81 = load i64, i64* %all355, align 8, !dbg !2265
  %82 = xor i64 %81, -1, !dbg !2266
  %sub357 = add i64 %80, %82, !dbg !2266
  %isneg = icmp slt i64 %sub357, 0, !dbg !2267
  %and362 = select i1 %isneg, i64 %80, i64 0, !dbg !2267
  %all363 = getelementptr inbounds %union.dwords, %union.dwords* %r, i32 0, i32 0, !dbg !2268
  %sub364 = sub i64 %81, %and362, !dbg !2269
  store i64 %sub364, i64* %all363, align 8, !dbg !2269
  br label %for.inc, !dbg !2270

for.inc:                                          ; preds = %for.body
  %and359 = lshr i64 %sub357, 63, !dbg !2271
  %conv360 = trunc i64 %and359 to i32, !dbg !2272
  %dec = add i32 %sr.2, -1, !dbg !2273
  br label %for.cond, !dbg !2239, !llvm.loop !2274

for.end:                                          ; preds = %for.cond
  %all365 = getelementptr inbounds %union.dwords, %union.dwords* %q, i32 0, i32 0, !dbg !2275
  %83 = load i64, i64* %all365, align 8, !dbg !2275
  %shl366 = shl i64 %83, 1, !dbg !2276
  %conv367 = zext i32 %carry.0 to i64, !dbg !2277
  %or368 = or i64 %shl366, %conv367, !dbg !2278
  %all369 = getelementptr inbounds %union.dwords, %union.dwords* %q, i32 0, i32 0, !dbg !2279
  store i64 %or368, i64* %all369, align 8, !dbg !2280
  %tobool370.not = icmp eq i64* %rem, null, !dbg !2281
  br i1 %tobool370.not, label %if.end373, label %if.then371, !dbg !2281

if.then371:                                       ; preds = %for.end
  %all372 = getelementptr inbounds %union.dwords, %union.dwords* %r, i32 0, i32 0, !dbg !2282
  %84 = load i64, i64* %all372, align 8, !dbg !2282
  store i64 %84, i64* %rem, align 8, !dbg !2283
  br label %if.end373, !dbg !2284

if.end373:                                        ; preds = %if.then371, %for.end
  %all374 = getelementptr inbounds %union.dwords, %union.dwords* %q, i32 0, i32 0, !dbg !2285
  %85 = load i64, i64* %all374, align 8, !dbg !2285
  br label %return, !dbg !2286

return:                                           ; preds = %if.end373, %if.end275, %if.end168, %if.then166, %if.end115, %if.end97, %if.end67, %if.end42, %if.end22, %if.end
  %retval.0 = phi i64 [ %conv15, %if.end ], [ 0, %if.end22 ], [ %conv48, %if.end42 ], [ %conv73, %if.end67 ], [ %conv102, %if.end97 ], [ 0, %if.end115 ], [ %85, %if.end373 ], [ %43, %if.then166 ], [ %49, %if.end168 ], [ 0, %if.end275 ], !dbg !2238
  ret i64 %retval.0, !dbg !2287
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__divmoddi4(i64 noundef %a, i64 noundef %b, i64* noundef %rem) #2 !dbg !2288 {
entry:
  %call = call arm_aapcscc i64 @__divdi3(i64 noundef %a, i64 noundef %b) #4, !dbg !2289
  %mul = mul nsw i64 %call, %b, !dbg !2290
  %sub = sub nsw i64 %a, %mul, !dbg !2291
  store i64 %sub, i64* %rem, align 8, !dbg !2292
  ret i64 %call, !dbg !2293
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__divmodsi4(i32 noundef %a, i32 noundef %b, i32* noundef %rem) #2 !dbg !2294 {
entry:
  %call = call arm_aapcscc i32 @__divsi3(i32 noundef %a, i32 noundef %b) #4, !dbg !2295
  %mul = mul nsw i32 %call, %b, !dbg !2296
  %sub = sub nsw i32 %a, %mul, !dbg !2297
  store i32 %sub, i32* %rem, align 4, !dbg !2298
  ret i32 %call, !dbg !2299
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__divsi3(i32 noundef %a, i32 noundef %b) #2 !dbg !2300 {
entry:
  %shr = ashr i32 %a, 31, !dbg !2301
  %shr1 = ashr i32 %b, 31, !dbg !2302
  %xor = xor i32 %shr, %a, !dbg !2303
  %sub = sub nsw i32 %xor, %shr, !dbg !2304
  %xor2 = xor i32 %shr1, %b, !dbg !2305
  %sub3 = sub nsw i32 %xor2, %shr1, !dbg !2306
  %xor4 = xor i32 %shr, %shr1, !dbg !2307
  %div = udiv i32 %sub, %sub3, !dbg !2308
  %xor5 = xor i32 %div, %xor4, !dbg !2309
  %sub6 = sub i32 %xor5, %xor4, !dbg !2310
  ret i32 %sub6, !dbg !2311
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__ffsdi2(i64 noundef %a) #2 !dbg !2312 {
entry:
  %x = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %x, i32 0, i32 0, !dbg !2313
  store i64 %a, i64* %all, align 8, !dbg !2314
  %low = bitcast %union.dwords* %x to i32*, !dbg !2315
  %0 = load i32, i32* %low, align 8, !dbg !2315
  %cmp = icmp eq i32 %0, 0, !dbg !2316
  br i1 %cmp, label %if.then, label %if.end6, !dbg !2317

if.then:                                          ; preds = %entry
  %s1 = bitcast %union.dwords* %x to %struct.anon*, !dbg !2318
  %high = getelementptr inbounds %struct.anon, %struct.anon* %s1, i32 0, i32 1, !dbg !2319
  %1 = load i32, i32* %high, align 4, !dbg !2319
  %cmp2 = icmp eq i32 %1, 0, !dbg !2320
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !2321

if.then3:                                         ; preds = %if.then
  br label %return, !dbg !2322

if.end:                                           ; preds = %if.then
  %s4 = bitcast %union.dwords* %x to %struct.anon*, !dbg !2323
  %high5 = getelementptr inbounds %struct.anon, %struct.anon* %s4, i32 0, i32 1, !dbg !2324
  %2 = load i32, i32* %high5, align 4, !dbg !2324
  %3 = call i32 @llvm.cttz.i32(i32 %2, i1 false), !dbg !2325, !range !1807
  %add = add nuw nsw i32 %3, 33, !dbg !2326
  br label %return, !dbg !2327

if.end6:                                          ; preds = %entry
  %low8 = bitcast %union.dwords* %x to i32*, !dbg !2328
  %4 = load i32, i32* %low8, align 8, !dbg !2328
  %5 = call i32 @llvm.cttz.i32(i32 %4, i1 false), !dbg !2329, !range !1807
  %add9 = add nuw nsw i32 %5, 1, !dbg !2330
  br label %return, !dbg !2331

return:                                           ; preds = %if.end6, %if.end, %if.then3
  %retval.0 = phi i32 [ 0, %if.then3 ], [ %add, %if.end ], [ %add9, %if.end6 ], !dbg !2332
  ret i32 %retval.0, !dbg !2333
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__ffssi2(i32 noundef %a) #2 !dbg !2334 {
entry:
  %cmp = icmp eq i32 %a, 0, !dbg !2335
  br i1 %cmp, label %if.then, label %if.end, !dbg !2336

if.then:                                          ; preds = %entry
  br label %return, !dbg !2337

if.end:                                           ; preds = %entry
  %0 = call i32 @llvm.cttz.i32(i32 %a, i1 true), !dbg !2338, !range !1807
  %add = add nuw nsw i32 %0, 1, !dbg !2339
  br label %return, !dbg !2340

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %add, %if.end ], !dbg !2341
  ret i32 %retval.0, !dbg !2342
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__lshrdi3(i64 noundef %a, i32 noundef %b) #2 !dbg !2343 {
entry:
  %input = alloca %union.dwords, align 8
  %result = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %input, i32 0, i32 0, !dbg !2344
  store i64 %a, i64* %all, align 8, !dbg !2345
  %and = and i32 %b, 32, !dbg !2346
  %tobool.not = icmp eq i32 %and, 0, !dbg !2346
  br i1 %tobool.not, label %if.else, label %if.then, !dbg !2347

if.then:                                          ; preds = %entry
  %s = bitcast %union.dwords* %result to %struct.anon*, !dbg !2348
  %high = getelementptr inbounds %struct.anon, %struct.anon* %s, i32 0, i32 1, !dbg !2349
  store i32 0, i32* %high, align 4, !dbg !2350
  %s1 = bitcast %union.dwords* %input to %struct.anon*, !dbg !2351
  %high2 = getelementptr inbounds %struct.anon, %struct.anon* %s1, i32 0, i32 1, !dbg !2352
  %0 = load i32, i32* %high2, align 4, !dbg !2352
  %sub = add nsw i32 %b, -32, !dbg !2353
  %shr = lshr i32 %0, %sub, !dbg !2354
  %low = bitcast %union.dwords* %result to i32*, !dbg !2355
  store i32 %shr, i32* %low, align 8, !dbg !2356
  br label %if.end18, !dbg !2357

if.else:                                          ; preds = %entry
  %cmp = icmp eq i32 %b, 0, !dbg !2358
  br i1 %cmp, label %if.then4, label %if.end, !dbg !2359

if.then4:                                         ; preds = %if.else
  br label %return, !dbg !2360

if.end:                                           ; preds = %if.else
  %s5 = bitcast %union.dwords* %input to %struct.anon*, !dbg !2361
  %high6 = getelementptr inbounds %struct.anon, %struct.anon* %s5, i32 0, i32 1, !dbg !2362
  %1 = load i32, i32* %high6, align 4, !dbg !2362
  %shr7 = lshr i32 %1, %b, !dbg !2363
  %s8 = bitcast %union.dwords* %result to %struct.anon*, !dbg !2364
  %high9 = getelementptr inbounds %struct.anon, %struct.anon* %s8, i32 0, i32 1, !dbg !2365
  store i32 %shr7, i32* %high9, align 4, !dbg !2366
  %s10 = bitcast %union.dwords* %input to %struct.anon*, !dbg !2367
  %high11 = getelementptr inbounds %struct.anon, %struct.anon* %s10, i32 0, i32 1, !dbg !2368
  %2 = load i32, i32* %high11, align 4, !dbg !2368
  %sub12 = sub nsw i32 32, %b, !dbg !2369
  %shl = shl i32 %2, %sub12, !dbg !2370
  %low14 = bitcast %union.dwords* %input to i32*, !dbg !2371
  %3 = load i32, i32* %low14, align 8, !dbg !2371
  %shr15 = lshr i32 %3, %b, !dbg !2372
  %or = or i32 %shl, %shr15, !dbg !2373
  %low17 = bitcast %union.dwords* %result to i32*, !dbg !2374
  store i32 %or, i32* %low17, align 8, !dbg !2375
  br label %if.end18

if.end18:                                         ; preds = %if.end, %if.then
  %all19 = getelementptr inbounds %union.dwords, %union.dwords* %result, i32 0, i32 0, !dbg !2376
  %4 = load i64, i64* %all19, align 8, !dbg !2376
  br label %return, !dbg !2377

return:                                           ; preds = %if.end18, %if.then4
  %retval.0 = phi i64 [ %4, %if.end18 ], [ %a, %if.then4 ], !dbg !2378
  ret i64 %retval.0, !dbg !2379
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__moddi3(i64 noundef %a, i64 noundef %b) #2 !dbg !2380 {
entry:
  %r = alloca i64, align 8
  %0 = call i64 @llvm.abs.i64(i64 %b, i1 true), !dbg !2381
  %shr1 = ashr i64 %a, 63, !dbg !2382
  %xor2 = xor i64 %shr1, %a, !dbg !2383
  %sub3 = sub nsw i64 %xor2, %shr1, !dbg !2384
  %call = call arm_aapcscc i64 @__udivmoddi4(i64 noundef %sub3, i64 noundef %0, i64* noundef nonnull %r) #4, !dbg !2385
  %1 = load i64, i64* %r, align 8, !dbg !2386
  %xor4 = xor i64 %1, %shr1, !dbg !2387
  %sub5 = sub nsw i64 %xor4, %shr1, !dbg !2388
  ret i64 %sub5, !dbg !2389
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__modsi3(i32 noundef %a, i32 noundef %b) #2 !dbg !2390 {
entry:
  %call = call arm_aapcscc i32 @__divsi3(i32 noundef %a, i32 noundef %b) #4, !dbg !2391
  %mul = mul nsw i32 %call, %b, !dbg !2392
  %sub = sub nsw i32 %a, %mul, !dbg !2393
  ret i32 %sub, !dbg !2394
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__mulvdi3(i64 noundef %a, i64 noundef %b) #2 !dbg !2395 {
entry:
  %cmp = icmp eq i64 %a, -9223372036854775808, !dbg !2396
  br i1 %cmp, label %if.then, label %if.end4, !dbg !2397

if.then:                                          ; preds = %entry
  %cmp1 = icmp eq i64 %b, 0, !dbg !2398
  br i1 %cmp1, label %if.then3, label %lor.lhs.false, !dbg !2399

lor.lhs.false:                                    ; preds = %if.then
  %cmp2 = icmp eq i64 %b, 1, !dbg !2400
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !2401

if.then3:                                         ; preds = %lor.lhs.false, %if.then
  br label %return, !dbg !2402

if.end:                                           ; preds = %lor.lhs.false
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i32 noundef 31, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvdi3, i32 0, i32 0)) #5, !dbg !2403
  unreachable, !dbg !2403

if.end4:                                          ; preds = %entry
  %cmp5 = icmp eq i64 %b, -9223372036854775808, !dbg !2404
  br i1 %cmp5, label %if.then6, label %if.end13, !dbg !2405

if.then6:                                         ; preds = %if.end4
  %cmp7 = icmp eq i64 %a, 0, !dbg !2406
  br i1 %cmp7, label %if.then10, label %lor.lhs.false8, !dbg !2407

lor.lhs.false8:                                   ; preds = %if.then6
  %cmp9 = icmp eq i64 %a, 1, !dbg !2408
  br i1 %cmp9, label %if.then10, label %if.end12, !dbg !2409

if.then10:                                        ; preds = %lor.lhs.false8, %if.then6
  br label %return, !dbg !2410

if.end12:                                         ; preds = %lor.lhs.false8
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i32 noundef 37, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvdi3, i32 0, i32 0)) #5, !dbg !2411
  unreachable, !dbg !2411

if.end13:                                         ; preds = %if.end4
  %shr = ashr i64 %a, 63, !dbg !2412
  %xor = xor i64 %shr, %a, !dbg !2413
  %sub = sub nsw i64 %xor, %shr, !dbg !2414
  %shr14 = ashr i64 %b, 63, !dbg !2415
  %xor15 = xor i64 %shr14, %b, !dbg !2416
  %sub16 = sub nsw i64 %xor15, %shr14, !dbg !2417
  %cmp17 = icmp slt i64 %sub, 2, !dbg !2418
  br i1 %cmp17, label %if.then20, label %lor.lhs.false18, !dbg !2419

lor.lhs.false18:                                  ; preds = %if.end13
  %cmp19 = icmp slt i64 %sub16, 2, !dbg !2420
  br i1 %cmp19, label %if.then20, label %if.end22, !dbg !2421

if.then20:                                        ; preds = %lor.lhs.false18, %if.end13
  br label %return, !dbg !2422

if.end22:                                         ; preds = %lor.lhs.false18
  %cmp23 = icmp eq i64 %shr, %shr14, !dbg !2423
  br i1 %cmp23, label %if.then24, label %if.else, !dbg !2424

if.then24:                                        ; preds = %if.end22
  %div = sdiv i64 9223372036854775807, %sub16, !dbg !2425
  %cmp25 = icmp sgt i64 %sub, %div, !dbg !2426
  br i1 %cmp25, label %if.then26, label %if.end27, !dbg !2427

if.then26:                                        ; preds = %if.then24
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i32 noundef 48, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvdi3, i32 0, i32 0)) #5, !dbg !2428
  unreachable, !dbg !2428

if.end27:                                         ; preds = %if.then24
  br label %if.end33, !dbg !2429

if.else:                                          ; preds = %if.end22
  %sub28 = sub nsw i64 0, %sub16, !dbg !2430
  %div29 = sdiv i64 -9223372036854775808, %sub28, !dbg !2431
  %cmp30 = icmp sgt i64 %sub, %div29, !dbg !2432
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !2433

if.then31:                                        ; preds = %if.else
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i32 noundef 53, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvdi3, i32 0, i32 0)) #5, !dbg !2434
  unreachable, !dbg !2434

if.end32:                                         ; preds = %if.else
  br label %if.end33

if.end33:                                         ; preds = %if.end32, %if.end27
  br label %return, !dbg !2435

return:                                           ; preds = %if.end33, %if.then20, %if.then10, %if.then3
  %retval.0 = mul nsw i64 %a, %b, !dbg !2436
  ret i64 %retval.0, !dbg !2437
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__mulvsi3(i32 noundef %a, i32 noundef %b) #2 !dbg !2438 {
entry:
  %cmp = icmp eq i32 %a, -2147483648, !dbg !2439
  br i1 %cmp, label %if.then, label %if.end4, !dbg !2440

if.then:                                          ; preds = %entry
  %cmp1 = icmp eq i32 %b, 0, !dbg !2441
  br i1 %cmp1, label %if.then3, label %lor.lhs.false, !dbg !2442

lor.lhs.false:                                    ; preds = %if.then
  %cmp2 = icmp eq i32 %b, 1, !dbg !2443
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !2444

if.then3:                                         ; preds = %lor.lhs.false, %if.then
  br label %return, !dbg !2445

if.end:                                           ; preds = %lor.lhs.false
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), i32 noundef 31, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvsi3, i32 0, i32 0)) #5, !dbg !2446
  unreachable, !dbg !2446

if.end4:                                          ; preds = %entry
  %cmp5 = icmp eq i32 %b, -2147483648, !dbg !2447
  br i1 %cmp5, label %if.then6, label %if.end13, !dbg !2448

if.then6:                                         ; preds = %if.end4
  %cmp7 = icmp eq i32 %a, 0, !dbg !2449
  br i1 %cmp7, label %if.then10, label %lor.lhs.false8, !dbg !2450

lor.lhs.false8:                                   ; preds = %if.then6
  %cmp9 = icmp eq i32 %a, 1, !dbg !2451
  br i1 %cmp9, label %if.then10, label %if.end12, !dbg !2452

if.then10:                                        ; preds = %lor.lhs.false8, %if.then6
  br label %return, !dbg !2453

if.end12:                                         ; preds = %lor.lhs.false8
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), i32 noundef 37, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvsi3, i32 0, i32 0)) #5, !dbg !2454
  unreachable, !dbg !2454

if.end13:                                         ; preds = %if.end4
  %shr = ashr i32 %a, 31, !dbg !2455
  %xor = xor i32 %shr, %a, !dbg !2456
  %sub = sub nsw i32 %xor, %shr, !dbg !2457
  %shr14 = ashr i32 %b, 31, !dbg !2458
  %xor15 = xor i32 %shr14, %b, !dbg !2459
  %sub16 = sub nsw i32 %xor15, %shr14, !dbg !2460
  %cmp17 = icmp slt i32 %sub, 2, !dbg !2461
  br i1 %cmp17, label %if.then20, label %lor.lhs.false18, !dbg !2462

lor.lhs.false18:                                  ; preds = %if.end13
  %cmp19 = icmp slt i32 %sub16, 2, !dbg !2463
  br i1 %cmp19, label %if.then20, label %if.end22, !dbg !2464

if.then20:                                        ; preds = %lor.lhs.false18, %if.end13
  br label %return, !dbg !2465

if.end22:                                         ; preds = %lor.lhs.false18
  %cmp23 = icmp eq i32 %shr, %shr14, !dbg !2466
  br i1 %cmp23, label %if.then24, label %if.else, !dbg !2467

if.then24:                                        ; preds = %if.end22
  %div = sdiv i32 2147483647, %sub16, !dbg !2468
  %cmp25 = icmp sgt i32 %sub, %div, !dbg !2469
  br i1 %cmp25, label %if.then26, label %if.end27, !dbg !2470

if.then26:                                        ; preds = %if.then24
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), i32 noundef 48, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvsi3, i32 0, i32 0)) #5, !dbg !2471
  unreachable, !dbg !2471

if.end27:                                         ; preds = %if.then24
  br label %if.end33, !dbg !2472

if.else:                                          ; preds = %if.end22
  %sub28 = sub nsw i32 0, %sub16, !dbg !2473
  %div29 = sdiv i32 -2147483648, %sub28, !dbg !2474
  %cmp30 = icmp sgt i32 %sub, %div29, !dbg !2475
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !2476

if.then31:                                        ; preds = %if.else
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), i32 noundef 53, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvsi3, i32 0, i32 0)) #5, !dbg !2477
  unreachable, !dbg !2477

if.end32:                                         ; preds = %if.else
  br label %if.end33

if.end33:                                         ; preds = %if.end32, %if.end27
  br label %return, !dbg !2478

return:                                           ; preds = %if.end33, %if.then20, %if.then10, %if.then3
  %retval.0 = mul nsw i32 %a, %b, !dbg !2479
  ret i32 %retval.0, !dbg !2480
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__paritydi2(i64 noundef %a) #2 !dbg !2481 {
entry:
  %x = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %x, i32 0, i32 0, !dbg !2482
  store i64 %a, i64* %all, align 8, !dbg !2483
  %s = bitcast %union.dwords* %x to %struct.anon*, !dbg !2484
  %high = getelementptr inbounds %struct.anon, %struct.anon* %s, i32 0, i32 1, !dbg !2485
  %0 = load i32, i32* %high, align 4, !dbg !2485
  %low = bitcast %union.dwords* %x to i32*, !dbg !2486
  %1 = load i32, i32* %low, align 8, !dbg !2486
  %xor = xor i32 %0, %1, !dbg !2487
  %call = call arm_aapcscc i32 @__paritysi2(i32 noundef %xor) #4, !dbg !2488
  ret i32 %call, !dbg !2489
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__paritysi2(i32 noundef %a) #2 !dbg !2490 {
entry:
  %shr = lshr i32 %a, 16, !dbg !2491
  %xor = xor i32 %shr, %a, !dbg !2492
  %shr1 = lshr i32 %xor, 8, !dbg !2493
  %xor2 = xor i32 %xor, %shr1, !dbg !2494
  %shr3 = lshr i32 %xor2, 4, !dbg !2495
  %xor4 = xor i32 %xor2, %shr3, !dbg !2496
  %and = and i32 %xor4, 15, !dbg !2497
  %shr5 = lshr i32 27030, %and, !dbg !2498
  %and6 = and i32 %shr5, 1, !dbg !2499
  ret i32 %and6, !dbg !2500
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__popcountdi2(i64 noundef %a) #2 !dbg !2501 {
entry:
  %shr = lshr i64 %a, 1, !dbg !2502
  %and = and i64 %shr, 6148914691236517205, !dbg !2503
  %sub = sub i64 %a, %and, !dbg !2504
  %shr1 = lshr i64 %sub, 2, !dbg !2505
  %and2 = and i64 %shr1, 3689348814741910323, !dbg !2506
  %and3 = and i64 %sub, 3689348814741910323, !dbg !2507
  %add = add nuw nsw i64 %and2, %and3, !dbg !2508
  %shr4 = lshr i64 %add, 4, !dbg !2509
  %add5 = add nuw nsw i64 %add, %shr4, !dbg !2510
  %and6 = and i64 %add5, 1085102592571150095, !dbg !2511
  %shr7 = lshr i64 %and6, 32, !dbg !2512
  %add8 = add nuw nsw i64 %and6, %shr7, !dbg !2513
  %conv = trunc i64 %add8 to i32, !dbg !2514
  %shr9 = lshr i32 %conv, 16, !dbg !2515
  %add10 = add nuw nsw i32 %shr9, %conv, !dbg !2516
  %shr11 = lshr i32 %add10, 8, !dbg !2517
  %add12 = add nuw nsw i32 %add10, %shr11, !dbg !2518
  %and13 = and i32 %add12, 127, !dbg !2519
  ret i32 %and13, !dbg !2520
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__popcountsi2(i32 noundef %a) #2 !dbg !2521 {
entry:
  %shr = lshr i32 %a, 1, !dbg !2522
  %and = and i32 %shr, 1431655765, !dbg !2523
  %sub = sub i32 %a, %and, !dbg !2524
  %shr1 = lshr i32 %sub, 2, !dbg !2525
  %and2 = and i32 %shr1, 858993459, !dbg !2526
  %and3 = and i32 %sub, 858993459, !dbg !2527
  %add = add nuw nsw i32 %and2, %and3, !dbg !2528
  %shr4 = lshr i32 %add, 4, !dbg !2529
  %add5 = add nuw nsw i32 %add, %shr4, !dbg !2530
  %and6 = and i32 %add5, 252645135, !dbg !2531
  %shr7 = lshr i32 %and6, 16, !dbg !2532
  %add8 = add nuw nsw i32 %and6, %shr7, !dbg !2533
  %shr9 = lshr i32 %add8, 8, !dbg !2534
  %add10 = add nuw nsw i32 %add8, %shr9, !dbg !2535
  %and11 = and i32 %add10, 63, !dbg !2536
  ret i32 %and11, !dbg !2537
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__subvdi3(i64 noundef %a, i64 noundef %b) #2 !dbg !2538 {
entry:
  %sub = sub i64 %a, %b, !dbg !2539
  %cmp = icmp sgt i64 %b, -1, !dbg !2540
  br i1 %cmp, label %if.then, label %if.else, !dbg !2541

if.then:                                          ; preds = %entry
  %cmp1 = icmp sgt i64 %sub, %a, !dbg !2542
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !2543

if.then2:                                         ; preds = %if.then
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i32 0, i32 0), i32 noundef 28, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__subvdi3, i32 0, i32 0)) #5, !dbg !2544
  unreachable, !dbg !2544

if.end:                                           ; preds = %if.then
  br label %if.end6, !dbg !2545

if.else:                                          ; preds = %entry
  %cmp3.not = icmp sgt i64 %sub, %a, !dbg !2546
  br i1 %cmp3.not, label %if.end5, label %if.then4, !dbg !2547

if.then4:                                         ; preds = %if.else
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i32 0, i32 0), i32 noundef 33, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__subvdi3, i32 0, i32 0)) #5, !dbg !2548
  unreachable, !dbg !2548

if.end5:                                          ; preds = %if.else
  br label %if.end6

if.end6:                                          ; preds = %if.end5, %if.end
  ret i64 %sub, !dbg !2549
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__subvsi3(i32 noundef %a, i32 noundef %b) #2 !dbg !2550 {
entry:
  %sub = sub i32 %a, %b, !dbg !2551
  %cmp = icmp sgt i32 %b, -1, !dbg !2552
  br i1 %cmp, label %if.then, label %if.else, !dbg !2553

if.then:                                          ; preds = %entry
  %cmp1 = icmp sgt i32 %sub, %a, !dbg !2554
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !2555

if.then2:                                         ; preds = %if.then
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i32 0, i32 0), i32 noundef 28, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__subvsi3, i32 0, i32 0)) #5, !dbg !2556
  unreachable, !dbg !2556

if.end:                                           ; preds = %if.then
  br label %if.end6, !dbg !2557

if.else:                                          ; preds = %entry
  %cmp3.not = icmp sgt i32 %sub, %a, !dbg !2558
  br i1 %cmp3.not, label %if.end5, label %if.then4, !dbg !2559

if.then4:                                         ; preds = %if.else
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i32 0, i32 0), i32 noundef 33, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__subvsi3, i32 0, i32 0)) #5, !dbg !2560
  unreachable, !dbg !2560

if.end5:                                          ; preds = %if.else
  br label %if.end6

if.end6:                                          ; preds = %if.end5, %if.end
  ret i32 %sub, !dbg !2561
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__ucmpdi2(i64 noundef %a, i64 noundef %b) #2 !dbg !2562 {
entry:
  %x = alloca %union.dwords, align 8
  %y = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %x, i32 0, i32 0, !dbg !2563
  store i64 %a, i64* %all, align 8, !dbg !2564
  %all1 = getelementptr inbounds %union.dwords, %union.dwords* %y, i32 0, i32 0, !dbg !2565
  store i64 %b, i64* %all1, align 8, !dbg !2566
  %s = bitcast %union.dwords* %x to %struct.anon*, !dbg !2567
  %high = getelementptr inbounds %struct.anon, %struct.anon* %s, i32 0, i32 1, !dbg !2568
  %0 = load i32, i32* %high, align 4, !dbg !2568
  %s2 = bitcast %union.dwords* %y to %struct.anon*, !dbg !2569
  %high3 = getelementptr inbounds %struct.anon, %struct.anon* %s2, i32 0, i32 1, !dbg !2570
  %1 = load i32, i32* %high3, align 4, !dbg !2570
  %cmp = icmp ult i32 %0, %1, !dbg !2571
  br i1 %cmp, label %if.then, label %if.end, !dbg !2572

if.then:                                          ; preds = %entry
  br label %return, !dbg !2573

if.end:                                           ; preds = %entry
  %s4 = bitcast %union.dwords* %x to %struct.anon*, !dbg !2574
  %high5 = getelementptr inbounds %struct.anon, %struct.anon* %s4, i32 0, i32 1, !dbg !2575
  %2 = load i32, i32* %high5, align 4, !dbg !2575
  %s6 = bitcast %union.dwords* %y to %struct.anon*, !dbg !2576
  %high7 = getelementptr inbounds %struct.anon, %struct.anon* %s6, i32 0, i32 1, !dbg !2577
  %3 = load i32, i32* %high7, align 4, !dbg !2577
  %cmp8 = icmp ugt i32 %2, %3, !dbg !2578
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !2579

if.then9:                                         ; preds = %if.end
  br label %return, !dbg !2580

if.end10:                                         ; preds = %if.end
  %low = bitcast %union.dwords* %x to i32*, !dbg !2581
  %4 = load i32, i32* %low, align 8, !dbg !2581
  %low13 = bitcast %union.dwords* %y to i32*, !dbg !2582
  %5 = load i32, i32* %low13, align 8, !dbg !2582
  %cmp14 = icmp ult i32 %4, %5, !dbg !2583
  br i1 %cmp14, label %if.then15, label %if.end16, !dbg !2584

if.then15:                                        ; preds = %if.end10
  br label %return, !dbg !2585

if.end16:                                         ; preds = %if.end10
  %low18 = bitcast %union.dwords* %x to i32*, !dbg !2586
  %6 = load i32, i32* %low18, align 8, !dbg !2586
  %low20 = bitcast %union.dwords* %y to i32*, !dbg !2587
  %7 = load i32, i32* %low20, align 8, !dbg !2587
  %cmp21 = icmp ugt i32 %6, %7, !dbg !2588
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !2589

if.then22:                                        ; preds = %if.end16
  br label %return, !dbg !2590

if.end23:                                         ; preds = %if.end16
  br label %return, !dbg !2591

return:                                           ; preds = %if.end23, %if.then22, %if.then15, %if.then9, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 2, %if.then9 ], [ 0, %if.then15 ], [ 2, %if.then22 ], [ 1, %if.end23 ], !dbg !2592
  ret i32 %retval.0, !dbg !2593
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__aeabi_ulcmp(i64 noundef %a, i64 noundef %b) #2 !dbg !2594 {
entry:
  %call = call arm_aapcscc i32 @__ucmpdi2(i64 noundef %a, i64 noundef %b) #4, !dbg !2595
  %sub = add nsw i32 %call, -1, !dbg !2596
  ret i32 %sub, !dbg !2597
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__udivdi3(i64 noundef %a, i64 noundef %b) #2 !dbg !2598 {
entry:
  %call = call arm_aapcscc i64 @__udivmoddi4(i64 noundef %a, i64 noundef %b, i64* noundef null) #4, !dbg !2599
  ret i64 %call, !dbg !2600
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__udivmodsi4(i32 noundef %a, i32 noundef %b, i32* noundef %rem) #2 !dbg !2601 {
entry:
  %call = call arm_aapcscc i32 @__udivsi3(i32 noundef %a, i32 noundef %b) #4, !dbg !2602
  %mul = mul i32 %call, %b, !dbg !2603
  %sub = sub i32 %a, %mul, !dbg !2604
  store i32 %sub, i32* %rem, align 4, !dbg !2605
  ret i32 %call, !dbg !2606
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__udivsi3(i32 noundef %n, i32 noundef %d) #2 !dbg !2607 {
entry:
  %cmp = icmp eq i32 %d, 0, !dbg !2608
  br i1 %cmp, label %if.then, label %if.end, !dbg !2609

if.then:                                          ; preds = %entry
  br label %return, !dbg !2610

if.end:                                           ; preds = %entry
  %cmp1 = icmp eq i32 %n, 0, !dbg !2611
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !2612

if.then2:                                         ; preds = %if.end
  br label %return, !dbg !2613

if.end3:                                          ; preds = %if.end
  %0 = call i32 @llvm.ctlz.i32(i32 %d, i1 true), !dbg !2614, !range !1807
  %1 = call i32 @llvm.ctlz.i32(i32 %n, i1 true), !dbg !2615, !range !1807
  %sub = sub nsw i32 %0, %1, !dbg !2616
  %cmp4 = icmp ugt i32 %sub, 31, !dbg !2617
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !2618

if.then5:                                         ; preds = %if.end3
  br label %return, !dbg !2619

if.end6:                                          ; preds = %if.end3
  %cmp7 = icmp eq i32 %sub, 31, !dbg !2620
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !2621

if.then8:                                         ; preds = %if.end6
  br label %return, !dbg !2622

if.end9:                                          ; preds = %if.end6
  %inc = add nsw i32 %sub, 1, !dbg !2623
  %sub10 = sub nsw i32 31, %sub, !dbg !2624
  %shl = shl i32 %n, %sub10, !dbg !2625
  %shr = lshr i32 %n, %inc, !dbg !2626
  br label %for.cond, !dbg !2627

for.cond:                                         ; preds = %for.inc, %if.end9
  %q.0 = phi i32 [ %shl, %if.end9 ], [ %or15, %for.inc ], !dbg !2628
  %r.0 = phi i32 [ %shr, %if.end9 ], [ %sub20, %for.inc ], !dbg !2628
  %sr.0 = phi i32 [ %inc, %if.end9 ], [ %dec, %for.inc ], !dbg !2628
  %carry.0 = phi i32 [ 0, %if.end9 ], [ %and, %for.inc ], !dbg !2628
  %cmp11.not = icmp eq i32 %sr.0, 0, !dbg !2629
  br i1 %cmp11.not, label %for.end, label %for.body, !dbg !2627

for.body:                                         ; preds = %for.cond
  %or = call i32 @llvm.fshl.i32(i32 %r.0, i32 %q.0, i32 1), !dbg !2630
  %2 = xor i32 %or, -1, !dbg !2631
  %sub17 = add i32 %2, %d, !dbg !2631
  br label %for.inc, !dbg !2632

for.inc:                                          ; preds = %for.body
  %isneg = icmp slt i32 %sub17, 0, !dbg !2633
  %and19 = select i1 %isneg, i32 %d, i32 0, !dbg !2633
  %sub20 = sub i32 %or, %and19, !dbg !2634
  %and = lshr i32 %sub17, 31, !dbg !2635
  %shl14 = shl i32 %q.0, 1, !dbg !2636
  %or15 = or i32 %shl14, %carry.0, !dbg !2637
  %dec = add i32 %sr.0, -1, !dbg !2638
  br label %for.cond, !dbg !2627, !llvm.loop !2639

for.end:                                          ; preds = %for.cond
  %shl21 = shl i32 %q.0, 1, !dbg !2640
  %or22 = or i32 %shl21, %carry.0, !dbg !2641
  br label %return, !dbg !2642

return:                                           ; preds = %for.end, %if.then8, %if.then5, %if.then2, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then2 ], [ 0, %if.then5 ], [ %n, %if.then8 ], [ %or22, %for.end ], !dbg !2628
  ret i32 %retval.0, !dbg !2643
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__umoddi3(i64 noundef %a, i64 noundef %b) #2 !dbg !2644 {
entry:
  %r = alloca i64, align 8
  %call = call arm_aapcscc i64 @__udivmoddi4(i64 noundef %a, i64 noundef %b, i64* noundef nonnull %r) #4, !dbg !2645
  %0 = load i64, i64* %r, align 8, !dbg !2646
  ret i64 %0, !dbg !2647
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__umodsi3(i32 noundef %a, i32 noundef %b) #2 !dbg !2648 {
entry:
  %call = call arm_aapcscc i32 @__udivsi3(i32 noundef %a, i32 noundef %b) #4, !dbg !2649
  %mul = mul i32 %call, %b, !dbg !2650
  %sub = sub i32 %a, %mul, !dbg !2651
  ret i32 %sub, !dbg !2652
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i8* @memcpy(i8* noundef %destination, i8* noundef %source, i32 noundef %num) #2 !dbg !2653 {
entry:
  br label %for.cond, !dbg !2654

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !dbg !2655
  %exitcond.not = icmp eq i32 %i.0, %num, !dbg !2656
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !2657

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds i8, i8* %source, i32 %i.0, !dbg !2658
  %0 = load i8, i8* %arrayidx, align 1, !dbg !2658
  %arrayidx1 = getelementptr inbounds i8, i8* %destination, i32 %i.0, !dbg !2659
  store i8 %0, i8* %arrayidx1, align 1, !dbg !2660
  br label %for.inc, !dbg !2661

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.0, 1, !dbg !2662
  br label %for.cond, !dbg !2657, !llvm.loop !2663

for.end:                                          ; preds = %for.cond
  ret i8* undef, !dbg !2664
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i8* @memset(i8* noundef %ptr, i32 noundef %value, i32 noundef %num) #2 !dbg !2665 {
entry:
  br label %for.cond, !dbg !2666

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !dbg !2667
  %exitcond.not = icmp eq i32 %i.0, %num, !dbg !2668
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !2669

for.body:                                         ; preds = %for.cond
  %conv = trunc i32 %value to i8, !dbg !2670
  %arrayidx = getelementptr inbounds i8, i8* %ptr, i32 %i.0, !dbg !2671
  store i8 %conv, i8* %arrayidx, align 1, !dbg !2672
  br label %for.inc, !dbg !2673

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.0, 1, !dbg !2674
  br label %for.cond, !dbg !2669, !llvm.loop !2675

for.end:                                          ; preds = %for.cond
  ret i8* %ptr, !dbg !2676
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

!llvm.dbg.cu = !{!2, !53, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !252, !254, !256, !258, !260, !262, !264, !266, !268, !270, !272, !274, !276, !278, !280, !282, !284, !286, !288, !290, !292, !294, !296, !298, !300, !302, !304, !306, !308}
!llvm.ident = !{!310, !310, !311, !311, !311, !311, !311, !311, !311, !311, !311, !311, !311, !311, !311, !311, !311, !311, !311, !311, !311, !311, !311, !311, !311, !311, !311, !311, !311, !311, !311, !311, !311, !311, !311, !311, !311, !311, !311, !311, !311, !311, !311, !311, !311, !311, !311, !311, !311, !311, !311, !311, !311, !311, !311, !311, !311, !311}
!llvm.module.flags = !{!312, !313, !314, !315, !316, !317, !318, !319, !320}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "cubic_a1", scope: !2, file: !7, line: 49, type: !8, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 14.0.6 (git@github.com:RTS-SYSU/LLVM-TA.git b7f9c4ccdebc6c37532ddd772889e5f0ff989c79)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !4, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/workspaces/llvmta/testcases/singletest/cubic/cubic.c", directory: "/workspaces/llvmta/testcases/singletest/cover")
!4 = !{!0, !5, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !42, !44, !46, !49}
!5 = !DIGlobalVariableExpression(var: !6, expr: !DIExpression())
!6 = distinct !DIGlobalVariable(name: "cubic_b1", scope: !2, file: !7, line: 49, type: !8, isLocal: false, isDefinition: true)
!7 = !DIFile(filename: "cubic/cubic.c", directory: "/workspaces/llvmta/testcases/singletest")
!8 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!9 = !DIGlobalVariableExpression(var: !10, expr: !DIExpression())
!10 = distinct !DIGlobalVariable(name: "cubic_c1", scope: !2, file: !7, line: 49, type: !8, isLocal: false, isDefinition: true)
!11 = !DIGlobalVariableExpression(var: !12, expr: !DIExpression())
!12 = distinct !DIGlobalVariable(name: "cubic_d1", scope: !2, file: !7, line: 49, type: !8, isLocal: false, isDefinition: true)
!13 = !DIGlobalVariableExpression(var: !14, expr: !DIExpression())
!14 = distinct !DIGlobalVariable(name: "cubic_a2", scope: !2, file: !7, line: 50, type: !8, isLocal: false, isDefinition: true)
!15 = !DIGlobalVariableExpression(var: !16, expr: !DIExpression())
!16 = distinct !DIGlobalVariable(name: "cubic_b2", scope: !2, file: !7, line: 50, type: !8, isLocal: false, isDefinition: true)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(name: "cubic_c2", scope: !2, file: !7, line: 50, type: !8, isLocal: false, isDefinition: true)
!19 = !DIGlobalVariableExpression(var: !20, expr: !DIExpression())
!20 = distinct !DIGlobalVariable(name: "cubic_d2", scope: !2, file: !7, line: 50, type: !8, isLocal: false, isDefinition: true)
!21 = !DIGlobalVariableExpression(var: !22, expr: !DIExpression())
!22 = distinct !DIGlobalVariable(name: "cubic_a3", scope: !2, file: !7, line: 51, type: !8, isLocal: false, isDefinition: true)
!23 = !DIGlobalVariableExpression(var: !24, expr: !DIExpression())
!24 = distinct !DIGlobalVariable(name: "cubic_b3", scope: !2, file: !7, line: 51, type: !8, isLocal: false, isDefinition: true)
!25 = !DIGlobalVariableExpression(var: !26, expr: !DIExpression())
!26 = distinct !DIGlobalVariable(name: "cubic_c3", scope: !2, file: !7, line: 51, type: !8, isLocal: false, isDefinition: true)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(name: "cubic_d3", scope: !2, file: !7, line: 51, type: !8, isLocal: false, isDefinition: true)
!29 = !DIGlobalVariableExpression(var: !30, expr: !DIExpression())
!30 = distinct !DIGlobalVariable(name: "cubic_a4", scope: !2, file: !7, line: 52, type: !8, isLocal: false, isDefinition: true)
!31 = !DIGlobalVariableExpression(var: !32, expr: !DIExpression())
!32 = distinct !DIGlobalVariable(name: "cubic_b4", scope: !2, file: !7, line: 52, type: !8, isLocal: false, isDefinition: true)
!33 = !DIGlobalVariableExpression(var: !34, expr: !DIExpression())
!34 = distinct !DIGlobalVariable(name: "cubic_c4", scope: !2, file: !7, line: 52, type: !8, isLocal: false, isDefinition: true)
!35 = !DIGlobalVariableExpression(var: !36, expr: !DIExpression())
!36 = distinct !DIGlobalVariable(name: "cubic_d4", scope: !2, file: !7, line: 52, type: !8, isLocal: false, isDefinition: true)
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(name: "cubic_x", scope: !2, file: !7, line: 53, type: !39, isLocal: false, isDefinition: true)
!39 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 96, elements: !40)
!40 = !{!41}
!41 = !DISubrange(count: 3)
!42 = !DIGlobalVariableExpression(var: !43, expr: !DIExpression())
!43 = distinct !DIGlobalVariable(name: "cubic_X", scope: !2, file: !7, line: 54, type: !8, isLocal: false, isDefinition: true)
!44 = !DIGlobalVariableExpression(var: !45, expr: !DIExpression())
!45 = distinct !DIGlobalVariable(name: "cubic_Y", scope: !2, file: !7, line: 54, type: !8, isLocal: false, isDefinition: true)
!46 = !DIGlobalVariableExpression(var: !47, expr: !DIExpression())
!47 = distinct !DIGlobalVariable(name: "cubic_solutions", scope: !2, file: !7, line: 55, type: !48, isLocal: false, isDefinition: true)
!48 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!49 = !DIGlobalVariableExpression(var: !50, expr: !DIExpression())
!50 = distinct !DIGlobalVariable(name: "cubic_checksum", scope: !2, file: !7, line: 56, type: !48, isLocal: false, isDefinition: true)
!51 = !DIGlobalVariableExpression(var: !52, expr: !DIExpression())
!52 = distinct !DIGlobalVariable(name: "basicmath_bp", scope: !53, file: !60, line: 115, type: !187, isLocal: true, isDefinition: true)
!53 = distinct !DICompileUnit(language: DW_LANG_C99, file: !54, producer: "clang version 14.0.6 (git@github.com:RTS-SYSU/LLVM-TA.git b7f9c4ccdebc6c37532ddd772889e5f0ff989c79)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !55, globals: !57, splitDebugInlining: false, nameTableKind: None)
!54 = !DIFile(filename: "/workspaces/llvmta/testcases/singletest/cubic/wcclibm.c", directory: "/workspaces/llvmta/testcases/singletest/cover")
!55 = !{!8, !56, !48}
!56 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!57 = !{!58, !62, !64, !66, !68, !70, !72, !74, !76, !78, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !51, !185, !190, !192}
!58 = !DIGlobalVariableExpression(var: !59, expr: !DIExpression(DW_OP_constu, 1078530010, DW_OP_stack_value))
!59 = distinct !DIGlobalVariable(name: "basicmath_pi", scope: !53, file: !60, line: 41, type: !61, isLocal: true, isDefinition: true)
!60 = !DIFile(filename: "cubic/wcclibm.c", directory: "/workspaces/llvmta/testcases/singletest")
!61 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!62 = !DIGlobalVariableExpression(var: !63, expr: !DIExpression(DW_OP_constu, 866263400, DW_OP_stack_value))
!63 = distinct !DIGlobalVariable(name: "basicmath_pio2_lo", scope: !53, file: !60, line: 43, type: !61, isLocal: true, isDefinition: true)
!64 = !DIGlobalVariableExpression(var: !65, expr: !DIExpression(DW_OP_constu, 1070141402, DW_OP_stack_value))
!65 = distinct !DIGlobalVariable(name: "basicmath_pio2_hi", scope: !53, file: !60, line: 42, type: !61, isLocal: true, isDefinition: true)
!66 = !DIGlobalVariableExpression(var: !67, expr: !DIExpression(DW_OP_constu, 1042983595, DW_OP_stack_value))
!67 = distinct !DIGlobalVariable(name: "basicmath_pS0", scope: !53, file: !60, line: 44, type: !61, isLocal: true, isDefinition: true)
!68 = !DIGlobalVariableExpression(var: !69, expr: !DIExpression(DW_OP_constu, 3198595216, DW_OP_stack_value))
!69 = distinct !DIGlobalVariable(name: "basicmath_pS1", scope: !53, file: !60, line: 45, type: !61, isLocal: true, isDefinition: true)
!70 = !DIGlobalVariableExpression(var: !71, expr: !DIExpression(DW_OP_constu, 1045301928, DW_OP_stack_value))
!71 = distinct !DIGlobalVariable(name: "basicmath_pS2", scope: !53, file: !60, line: 46, type: !61, isLocal: true, isDefinition: true)
!72 = !DIGlobalVariableExpression(var: !73, expr: !DIExpression(DW_OP_constu, 3173257542, DW_OP_stack_value))
!73 = distinct !DIGlobalVariable(name: "basicmath_pS3", scope: !53, file: !60, line: 47, type: !61, isLocal: true, isDefinition: true)
!74 = !DIGlobalVariableExpression(var: !75, expr: !DIExpression(DW_OP_constu, 978288388, DW_OP_stack_value))
!75 = distinct !DIGlobalVariable(name: "basicmath_pS4", scope: !53, file: !60, line: 48, type: !61, isLocal: true, isDefinition: true)
!76 = !DIGlobalVariableExpression(var: !77, expr: !DIExpression(DW_OP_constu, 940699400, DW_OP_stack_value))
!77 = distinct !DIGlobalVariable(name: "basicmath_pS5", scope: !53, file: !60, line: 49, type: !61, isLocal: true, isDefinition: true)
!78 = !DIGlobalVariableExpression(var: !79, expr: !DIExpression(DW_OP_constu, 1065353216, DW_OP_stack_value))
!79 = distinct !DIGlobalVariable(name: "basicmath_one", scope: !53, file: !80, line: 41, type: !61, isLocal: true, isDefinition: true)
!80 = !DIFile(filename: "cubic/wcclibm.h", directory: "/workspaces/llvmta/testcases/singletest")
!81 = !DIGlobalVariableExpression(var: !82, expr: !DIExpression(DW_OP_constu, 3222917433, DW_OP_stack_value))
!82 = distinct !DIGlobalVariable(name: "basicmath_qS1", scope: !53, file: !60, line: 50, type: !61, isLocal: true, isDefinition: true)
!83 = !DIGlobalVariableExpression(var: !84, expr: !DIExpression(DW_OP_constu, 1073829677, DW_OP_stack_value))
!84 = distinct !DIGlobalVariable(name: "basicmath_qS2", scope: !53, file: !60, line: 51, type: !61, isLocal: true, isDefinition: true)
!85 = !DIGlobalVariableExpression(var: !86, expr: !DIExpression(DW_OP_constu, 3207607137, DW_OP_stack_value))
!86 = distinct !DIGlobalVariable(name: "basicmath_qS3", scope: !53, file: !60, line: 52, type: !61, isLocal: true, isDefinition: true)
!87 = !DIGlobalVariableExpression(var: !88, expr: !DIExpression(DW_OP_constu, 1033750062, DW_OP_stack_value))
!88 = distinct !DIGlobalVariable(name: "basicmath_qS4", scope: !53, file: !60, line: 53, type: !61, isLocal: true, isDefinition: true)
!89 = !DIGlobalVariableExpression(var: !90, expr: !DIExpression(DW_OP_constu, 0, DW_OP_stack_value))
!90 = distinct !DIGlobalVariable(name: "basicmath_zero", scope: !53, file: !80, line: 47, type: !61, isLocal: true, isDefinition: true)
!91 = !DIGlobalVariableExpression(var: !92, expr: !DIExpression(DW_OP_constu, 1900671690, DW_OP_stack_value))
!92 = distinct !DIGlobalVariable(name: "basicmath_huge", scope: !53, file: !80, line: 44, type: !61, isLocal: true, isDefinition: true)
!93 = !DIGlobalVariableExpression(var: !94, expr: !DIExpression(DW_OP_constu, 228737632, DW_OP_stack_value))
!94 = distinct !DIGlobalVariable(name: "basicmath_tiny", scope: !53, file: !80, line: 42, type: !61, isLocal: true, isDefinition: true)
!95 = !DIGlobalVariableExpression(var: !96, expr: !DIExpression(DW_OP_constu, 1069066752, DW_OP_stack_value))
!96 = distinct !DIGlobalVariable(name: "basicmath_ivln2_h", scope: !53, file: !60, line: 138, type: !61, isLocal: true, isDefinition: true)
!97 = !DIGlobalVariableExpression(var: !98, expr: !DIExpression(DW_OP_constu, 921478512, DW_OP_stack_value))
!98 = distinct !DIGlobalVariable(name: "basicmath_ivln2_l", scope: !53, file: !60, line: 139, type: !61, isLocal: true, isDefinition: true)
!99 = !DIGlobalVariableExpression(var: !100, expr: !DIExpression(DW_OP_constu, 1069066811, DW_OP_stack_value))
!100 = distinct !DIGlobalVariable(name: "basicmath_ivln2", scope: !53, file: !60, line: 137, type: !61, isLocal: true, isDefinition: true)
!101 = !DIGlobalVariableExpression(var: !102, expr: !DIExpression(DW_OP_constu, 1266679808, DW_OP_stack_value))
!102 = distinct !DIGlobalVariable(name: "basicmath_two24", scope: !53, file: !80, line: 46, type: !61, isLocal: true, isDefinition: true)
!103 = !DIGlobalVariableExpression(var: !104, expr: !DIExpression(DW_OP_constu, 1058642330, DW_OP_stack_value))
!104 = distinct !DIGlobalVariable(name: "basicmath_L1", scope: !53, file: !60, line: 119, type: !61, isLocal: true, isDefinition: true)
!105 = !DIGlobalVariableExpression(var: !106, expr: !DIExpression(DW_OP_constu, 1054567863, DW_OP_stack_value))
!106 = distinct !DIGlobalVariable(name: "basicmath_L2", scope: !53, file: !60, line: 120, type: !61, isLocal: true, isDefinition: true)
!107 = !DIGlobalVariableExpression(var: !108, expr: !DIExpression(DW_OP_constu, 1051372203, DW_OP_stack_value))
!108 = distinct !DIGlobalVariable(name: "basicmath_L3", scope: !53, file: !60, line: 121, type: !61, isLocal: true, isDefinition: true)
!109 = !DIGlobalVariableExpression(var: !110, expr: !DIExpression(DW_OP_constu, 1049338629, DW_OP_stack_value))
!110 = distinct !DIGlobalVariable(name: "basicmath_L4", scope: !53, file: !60, line: 122, type: !61, isLocal: true, isDefinition: true)
!111 = !DIGlobalVariableExpression(var: !112, expr: !DIExpression(DW_OP_constu, 1047278165, DW_OP_stack_value))
!112 = distinct !DIGlobalVariable(name: "basicmath_L5", scope: !53, file: !60, line: 123, type: !61, isLocal: true, isDefinition: true)
!113 = !DIGlobalVariableExpression(var: !114, expr: !DIExpression(DW_OP_constu, 1045688642, DW_OP_stack_value))
!114 = distinct !DIGlobalVariable(name: "basicmath_L6", scope: !53, file: !60, line: 124, type: !61, isLocal: true, isDefinition: true)
!115 = !DIGlobalVariableExpression(var: !116, expr: !DIExpression(DW_OP_constu, 1064712192, DW_OP_stack_value))
!116 = distinct !DIGlobalVariable(name: "basicmath_cp_h", scope: !53, file: !60, line: 135, type: !61, isLocal: true, isDefinition: true)
!117 = !DIGlobalVariableExpression(var: !118, expr: !DIExpression(DW_OP_constu, 916308896, DW_OP_stack_value))
!118 = distinct !DIGlobalVariable(name: "basicmath_cp_l", scope: !53, file: !60, line: 136, type: !61, isLocal: true, isDefinition: true)
!119 = !DIGlobalVariableExpression(var: !120, expr: !DIExpression(DW_OP_constu, 1064712271, DW_OP_stack_value))
!120 = distinct !DIGlobalVariable(name: "basicmath_cp", scope: !53, file: !60, line: 134, type: !61, isLocal: true, isDefinition: true)
!121 = !DIGlobalVariableExpression(var: !122, expr: !DIExpression(DW_OP_constu, 859351612, DW_OP_stack_value))
!122 = distinct !DIGlobalVariable(name: "basicmath_ovt", scope: !53, file: !60, line: 133, type: !61, isLocal: true, isDefinition: true)
!123 = !DIGlobalVariableExpression(var: !124, expr: !DIExpression(DW_OP_constu, 1060205056, DW_OP_stack_value))
!124 = distinct !DIGlobalVariable(name: "basicmath_lg2_h", scope: !53, file: !60, line: 131, type: !61, isLocal: true, isDefinition: true)
!125 = !DIGlobalVariableExpression(var: !126, expr: !DIExpression(DW_OP_constu, 1060205080, DW_OP_stack_value))
!126 = distinct !DIGlobalVariable(name: "basicmath_lg2", scope: !53, file: !60, line: 130, type: !61, isLocal: true, isDefinition: true)
!127 = !DIGlobalVariableExpression(var: !128, expr: !DIExpression(DW_OP_constu, 901758604, DW_OP_stack_value))
!128 = distinct !DIGlobalVariable(name: "basicmath_lg2_l", scope: !53, file: !60, line: 132, type: !61, isLocal: true, isDefinition: true)
!129 = !DIGlobalVariableExpression(var: !130, expr: !DIExpression(DW_OP_constu, 1042983595, DW_OP_stack_value))
!130 = distinct !DIGlobalVariable(name: "basicmath_P1", scope: !53, file: !60, line: 125, type: !61, isLocal: true, isDefinition: true)
!131 = !DIGlobalVariableExpression(var: !132, expr: !DIExpression(DW_OP_constu, 3140881249, DW_OP_stack_value))
!132 = distinct !DIGlobalVariable(name: "basicmath_P2", scope: !53, file: !60, line: 126, type: !61, isLocal: true, isDefinition: true)
!133 = !DIGlobalVariableExpression(var: !134, expr: !DIExpression(DW_OP_constu, 948613973, DW_OP_stack_value))
!134 = distinct !DIGlobalVariable(name: "basicmath_P3", scope: !53, file: !60, line: 127, type: !61, isLocal: true, isDefinition: true)
!135 = !DIGlobalVariableExpression(var: !136, expr: !DIExpression(DW_OP_constu, 3051219470, DW_OP_stack_value))
!136 = distinct !DIGlobalVariable(name: "basicmath_P4", scope: !53, file: !60, line: 128, type: !61, isLocal: true, isDefinition: true)
!137 = !DIGlobalVariableExpression(var: !138, expr: !DIExpression(DW_OP_constu, 858897228, DW_OP_stack_value))
!138 = distinct !DIGlobalVariable(name: "basicmath_P5", scope: !53, file: !60, line: 129, type: !61, isLocal: true, isDefinition: true)
!139 = !DIGlobalVariableExpression(var: !140, expr: !DIExpression(DW_OP_constu, 1073741824, DW_OP_stack_value))
!140 = distinct !DIGlobalVariable(name: "basicmath_two", scope: !53, file: !80, line: 45, type: !61, isLocal: true, isDefinition: true)
!141 = !DIGlobalVariableExpression(var: !142, expr: !DIExpression(DW_OP_constu, 1070141312, DW_OP_stack_value))
!142 = distinct !DIGlobalVariable(name: "basicmath_pio2_1", scope: !53, file: !60, line: 391, type: !61, isLocal: true, isDefinition: true)
!143 = !DIGlobalVariableExpression(var: !144, expr: !DIExpression(DW_OP_constu, 926237763, DW_OP_stack_value))
!144 = distinct !DIGlobalVariable(name: "basicmath_pio2_1t", scope: !53, file: !60, line: 392, type: !61, isLocal: true, isDefinition: true)
!145 = !DIGlobalVariableExpression(var: !146, expr: !DIExpression(DW_OP_constu, 926237696, DW_OP_stack_value))
!146 = distinct !DIGlobalVariable(name: "basicmath_pio2_2", scope: !53, file: !60, line: 393, type: !61, isLocal: true, isDefinition: true)
!147 = !DIGlobalVariableExpression(var: !148, expr: !DIExpression(DW_OP_constu, 780509960, DW_OP_stack_value))
!148 = distinct !DIGlobalVariable(name: "basicmath_pio2_2t", scope: !53, file: !60, line: 394, type: !61, isLocal: true, isDefinition: true)
!149 = !DIGlobalVariableExpression(var: !150, expr: !DIExpression(DW_OP_constu, 1059256708, DW_OP_stack_value))
!150 = distinct !DIGlobalVariable(name: "basicmath_invpio2", scope: !53, file: !60, line: 390, type: !61, isLocal: true, isDefinition: true)
!151 = !DIGlobalVariableExpression(var: !152, expr: !DIExpression(DW_OP_constu, 1056964608, DW_OP_stack_value))
!152 = distinct !DIGlobalVariable(name: "basicmath_half", scope: !53, file: !80, line: 43, type: !61, isLocal: true, isDefinition: true)
!153 = !DIGlobalVariableExpression(var: !154, expr: !DIExpression(DW_OP_constu, 780509952, DW_OP_stack_value))
!154 = distinct !DIGlobalVariable(name: "basicmath_pio2_3", scope: !53, file: !60, line: 395, type: !61, isLocal: true, isDefinition: true)
!155 = !DIGlobalVariableExpression(var: !156, expr: !DIExpression(DW_OP_constu, 613232946, DW_OP_stack_value))
!156 = distinct !DIGlobalVariable(name: "basicmath_pio2_3t", scope: !53, file: !60, line: 396, type: !61, isLocal: true, isDefinition: true)
!157 = !DIGlobalVariableExpression(var: !158, expr: !DIExpression(DW_OP_constu, 1026206379, DW_OP_stack_value))
!158 = distinct !DIGlobalVariable(name: "basicmath_C1", scope: !53, file: !60, line: 567, type: !61, isLocal: true, isDefinition: true)
!159 = !DIGlobalVariableExpression(var: !160, expr: !DIExpression(DW_OP_constu, 3132492641, DW_OP_stack_value))
!160 = distinct !DIGlobalVariable(name: "basicmath_C2", scope: !53, file: !60, line: 568, type: !61, isLocal: true, isDefinition: true)
!161 = !DIGlobalVariableExpression(var: !162, expr: !DIExpression(DW_OP_constu, 936381697, DW_OP_stack_value))
!162 = distinct !DIGlobalVariable(name: "basicmath_C3", scope: !53, file: !60, line: 569, type: !61, isLocal: true, isDefinition: true)
!163 = !DIGlobalVariableExpression(var: !164, expr: !DIExpression(DW_OP_constu, 3029594748, DW_OP_stack_value))
!164 = distinct !DIGlobalVariable(name: "basicmath_C4", scope: !53, file: !60, line: 570, type: !61, isLocal: true, isDefinition: true)
!165 = !DIGlobalVariableExpression(var: !166, expr: !DIExpression(DW_OP_constu, 823096566, DW_OP_stack_value))
!166 = distinct !DIGlobalVariable(name: "basicmath_C5", scope: !53, file: !60, line: 571, type: !61, isLocal: true, isDefinition: true)
!167 = !DIGlobalVariableExpression(var: !168, expr: !DIExpression(DW_OP_constu, 2907166542, DW_OP_stack_value))
!168 = distinct !DIGlobalVariable(name: "basicmath_C6", scope: !53, file: !60, line: 572, type: !61, isLocal: true, isDefinition: true)
!169 = !DIGlobalVariableExpression(var: !170, expr: !DIExpression(DW_OP_constu, 1007192201, DW_OP_stack_value))
!170 = distinct !DIGlobalVariable(name: "basicmath_S2", scope: !53, file: !60, line: 606, type: !61, isLocal: true, isDefinition: true)
!171 = !DIGlobalVariableExpression(var: !172, expr: !DIExpression(DW_OP_constu, 3109031169, DW_OP_stack_value))
!172 = distinct !DIGlobalVariable(name: "basicmath_S3", scope: !53, file: !60, line: 607, type: !61, isLocal: true, isDefinition: true)
!173 = !DIGlobalVariableExpression(var: !174, expr: !DIExpression(DW_OP_constu, 909700891, DW_OP_stack_value))
!174 = distinct !DIGlobalVariable(name: "basicmath_S4", scope: !53, file: !60, line: 608, type: !61, isLocal: true, isDefinition: true)
!175 = !DIGlobalVariableExpression(var: !176, expr: !DIExpression(DW_OP_constu, 3000446772, DW_OP_stack_value))
!176 = distinct !DIGlobalVariable(name: "basicmath_S5", scope: !53, file: !60, line: 609, type: !61, isLocal: true, isDefinition: true)
!177 = !DIGlobalVariableExpression(var: !178, expr: !DIExpression(DW_OP_constu, 791595475, DW_OP_stack_value))
!178 = distinct !DIGlobalVariable(name: "basicmath_S6", scope: !53, file: !60, line: 610, type: !61, isLocal: true, isDefinition: true)
!179 = !DIGlobalVariableExpression(var: !180, expr: !DIExpression(DW_OP_constu, 3190467243, DW_OP_stack_value))
!180 = distinct !DIGlobalVariable(name: "basicmath_S1", scope: !53, file: !60, line: 605, type: !61, isLocal: true, isDefinition: true)
!181 = !DIGlobalVariableExpression(var: !182, expr: !DIExpression(DW_OP_constu, 1275068416, DW_OP_stack_value))
!182 = distinct !DIGlobalVariable(name: "basicmath_two25", scope: !53, file: !60, line: 725, type: !61, isLocal: true, isDefinition: true)
!183 = !DIGlobalVariableExpression(var: !184, expr: !DIExpression(DW_OP_constu, 855638016, DW_OP_stack_value))
!184 = distinct !DIGlobalVariable(name: "basicmath_twom25", scope: !53, file: !60, line: 726, type: !61, isLocal: true, isDefinition: true)
!185 = !DIGlobalVariableExpression(var: !186, expr: !DIExpression())
!186 = distinct !DIGlobalVariable(name: "basicmath_dp_l", scope: !53, file: !60, line: 117, type: !187, isLocal: true, isDefinition: true)
!187 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 64, elements: !188)
!188 = !{!189}
!189 = !DISubrange(count: 2)
!190 = !DIGlobalVariableExpression(var: !191, expr: !DIExpression())
!191 = distinct !DIGlobalVariable(name: "basicmath_dp_h", scope: !53, file: !60, line: 116, type: !187, isLocal: true, isDefinition: true)
!192 = !DIGlobalVariableExpression(var: !193, expr: !DIExpression())
!193 = distinct !DIGlobalVariable(name: "basicmath_npio2_hw", scope: !53, file: !60, line: 371, type: !194, isLocal: true, isDefinition: true)
!194 = !DICompositeType(tag: DW_TAG_array_type, baseType: !195, size: 1024, elements: !196)
!195 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !48)
!196 = !{!197}
!197 = !DISubrange(count: 32)
!198 = distinct !DICompileUnit(language: DW_LANG_C99, file: !199, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!199 = !DIFile(filename: "../absvdi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "f0fa545ed84eab29322431dd903e1bd2")
!200 = distinct !DICompileUnit(language: DW_LANG_C99, file: !201, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!201 = !DIFile(filename: "../absvsi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "4c623fefc2c7ed3929c6e73514b667d1")
!202 = distinct !DICompileUnit(language: DW_LANG_C99, file: !203, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!203 = !DIFile(filename: "../absvti2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "37a4bc629baa89b5b7c1570be0d03e1f")
!204 = distinct !DICompileUnit(language: DW_LANG_C99, file: !205, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!205 = !DIFile(filename: "../addvdi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "aa240ee8ce7c28b2c3bcec10a7603d3f")
!206 = distinct !DICompileUnit(language: DW_LANG_C99, file: !207, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!207 = !DIFile(filename: "../addvsi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "6cd4d40cc00928f1aaf6f29e299078cd")
!208 = distinct !DICompileUnit(language: DW_LANG_C99, file: !209, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!209 = !DIFile(filename: "../addvti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "0db25cee24f6026e13fc556e48cb2a4f")
!210 = distinct !DICompileUnit(language: DW_LANG_C99, file: !211, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!211 = !DIFile(filename: "../ashldi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "ae5236ddcefaf3e5efc4feba69d334b1")
!212 = distinct !DICompileUnit(language: DW_LANG_C99, file: !213, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!213 = !DIFile(filename: "../ashlti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "040402442e4641b723a41224f90bb33c")
!214 = distinct !DICompileUnit(language: DW_LANG_C99, file: !215, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!215 = !DIFile(filename: "../ashrdi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "df60b7a82095e7d7b5c11e1095a5679a")
!216 = distinct !DICompileUnit(language: DW_LANG_C99, file: !217, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!217 = !DIFile(filename: "../ashrti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "d09af17b4c5b806431a14ef018da30a2")
!218 = distinct !DICompileUnit(language: DW_LANG_C99, file: !219, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!219 = !DIFile(filename: "../clzdi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "901c40e0319a50689080965b20695c3e")
!220 = distinct !DICompileUnit(language: DW_LANG_C99, file: !221, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!221 = !DIFile(filename: "../clzsi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "9b0156c55102d3143e17bdf85bafbc30")
!222 = distinct !DICompileUnit(language: DW_LANG_C99, file: !223, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!223 = !DIFile(filename: "../clzti2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "6289c95e51f48974308ae457c947fa76")
!224 = distinct !DICompileUnit(language: DW_LANG_C99, file: !225, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!225 = !DIFile(filename: "../cmpdi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "79ec8a4b383c8374d228cd0869637319")
!226 = distinct !DICompileUnit(language: DW_LANG_C99, file: !227, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!227 = !DIFile(filename: "../cmpti2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "8b9214d8b14681920bdf2cff2acab581")
!228 = distinct !DICompileUnit(language: DW_LANG_C99, file: !229, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!229 = !DIFile(filename: "../ctzdi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "0415a3f61808ca646548bc24b48a844a")
!230 = distinct !DICompileUnit(language: DW_LANG_C99, file: !231, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!231 = !DIFile(filename: "../ctzsi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "0372a2c6647eddaa73c0b61d8d03c3b1")
!232 = distinct !DICompileUnit(language: DW_LANG_C99, file: !233, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!233 = !DIFile(filename: "../ctzti2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "13fd6233b75667ee3310f19e92769490")
!234 = distinct !DICompileUnit(language: DW_LANG_C99, file: !235, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!235 = !DIFile(filename: "../divdi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "281227589e0794a81d7211e4ee4a402c")
!236 = distinct !DICompileUnit(language: DW_LANG_C99, file: !237, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!237 = !DIFile(filename: "../divmoddi4.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "bd72633dccf26f3dd8ee74bf04f7fdac")
!238 = distinct !DICompileUnit(language: DW_LANG_C99, file: !239, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!239 = !DIFile(filename: "../divmodsi4.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "0cf7caca427f8ea020b675e27b5985b5")
!240 = distinct !DICompileUnit(language: DW_LANG_C99, file: !241, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!241 = !DIFile(filename: "../divsi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "7845e3e46788425cf69d463f3cfe00e5")
!242 = distinct !DICompileUnit(language: DW_LANG_C99, file: !243, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!243 = !DIFile(filename: "../divti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "6f197084470906a806c88d3dd279e870")
!244 = distinct !DICompileUnit(language: DW_LANG_C99, file: !245, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!245 = !DIFile(filename: "../ffsdi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "4b800e1cad35a0bc99971441032171a3")
!246 = distinct !DICompileUnit(language: DW_LANG_C99, file: !247, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!247 = !DIFile(filename: "../ffssi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "182169d6765bddc2bf1b03cc7a4f47cb")
!248 = distinct !DICompileUnit(language: DW_LANG_C99, file: !249, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!249 = !DIFile(filename: "../ffsti2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "828ab085c50c22a6e163e289ad75e357")
!250 = distinct !DICompileUnit(language: DW_LANG_C99, file: !251, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!251 = !DIFile(filename: "../int_util.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "7ceb1d4e85bede509d8e6a0974078bc9")
!252 = distinct !DICompileUnit(language: DW_LANG_C99, file: !253, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!253 = !DIFile(filename: "../lshrdi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "c456e45323b3205c3b32d82b51570771")
!254 = distinct !DICompileUnit(language: DW_LANG_C99, file: !255, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!255 = !DIFile(filename: "../lshrti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "a0deefe7ea6369a844ff00cfd3adca3e")
!256 = distinct !DICompileUnit(language: DW_LANG_C99, file: !257, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!257 = !DIFile(filename: "../moddi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "76733914157a978303cbe3d6f6d1c647")
!258 = distinct !DICompileUnit(language: DW_LANG_C99, file: !259, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!259 = !DIFile(filename: "../modsi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "ada583aff17540d2228ce14dc879fdc8")
!260 = distinct !DICompileUnit(language: DW_LANG_C99, file: !261, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!261 = !DIFile(filename: "../modti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "7d8393bf5eb9f0ba6dd3cb5fd0d18b1c")
!262 = distinct !DICompileUnit(language: DW_LANG_C99, file: !263, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!263 = !DIFile(filename: "../mulvdi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "bb6aa1440e4e37fe94db90279d27db10")
!264 = distinct !DICompileUnit(language: DW_LANG_C99, file: !265, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!265 = !DIFile(filename: "../mulvsi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "32cd947949fac3c039bd0839cd5d7c78")
!266 = distinct !DICompileUnit(language: DW_LANG_C99, file: !267, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!267 = !DIFile(filename: "../mulvti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "600972d5762784972446ff2942320803")
!268 = distinct !DICompileUnit(language: DW_LANG_C99, file: !269, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!269 = !DIFile(filename: "../paritydi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "bd9549e31bcebf1c2265048ea6f18a77")
!270 = distinct !DICompileUnit(language: DW_LANG_C99, file: !271, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!271 = !DIFile(filename: "../paritysi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "235e89e1ac3c55fb43879550247ea25b")
!272 = distinct !DICompileUnit(language: DW_LANG_C99, file: !273, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!273 = !DIFile(filename: "../parityti2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "731d722977e9d8c0cd1987cb790d412a")
!274 = distinct !DICompileUnit(language: DW_LANG_C99, file: !275, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!275 = !DIFile(filename: "../popcountdi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "05f001da7fc478c773612fd707769c2a")
!276 = distinct !DICompileUnit(language: DW_LANG_C99, file: !277, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!277 = !DIFile(filename: "../popcountsi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "f9ebedb2d8810ee5a54fff38e1b09d64")
!278 = distinct !DICompileUnit(language: DW_LANG_C99, file: !279, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!279 = !DIFile(filename: "../popcountti2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "cc3baf5a1f58193aeafb2e81bae65208")
!280 = distinct !DICompileUnit(language: DW_LANG_C99, file: !281, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!281 = !DIFile(filename: "../subvdi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "5774ab7a3a8e168deb55531047d6a873")
!282 = distinct !DICompileUnit(language: DW_LANG_C99, file: !283, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!283 = !DIFile(filename: "../subvsi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "c9558a85e8fabce36f42a29933bd87e9")
!284 = distinct !DICompileUnit(language: DW_LANG_C99, file: !285, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!285 = !DIFile(filename: "../subvti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "ae43c388730e95c5ad9b20d37f73fd82")
!286 = distinct !DICompileUnit(language: DW_LANG_C99, file: !287, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!287 = !DIFile(filename: "../ucmpdi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "79f778ef54939446d175079e19d07756")
!288 = distinct !DICompileUnit(language: DW_LANG_C99, file: !289, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!289 = !DIFile(filename: "../ucmpti2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "d30b659e82f7851c826242cd1de6f293")
!290 = distinct !DICompileUnit(language: DW_LANG_C99, file: !291, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!291 = !DIFile(filename: "../udivdi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "580a28989090b62fc3d261faa6e31a6b")
!292 = distinct !DICompileUnit(language: DW_LANG_C99, file: !293, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!293 = !DIFile(filename: "../udivmoddi4.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "eca4b147be989cda91330ba5b56ed879")
!294 = distinct !DICompileUnit(language: DW_LANG_C99, file: !295, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!295 = !DIFile(filename: "../udivmodsi4.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "c0341684574a20dbcfbe4df0ab9f8538")
!296 = distinct !DICompileUnit(language: DW_LANG_C99, file: !297, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!297 = !DIFile(filename: "../udivmodti4.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "876858111b283249167fa6a71cc4682f")
!298 = distinct !DICompileUnit(language: DW_LANG_C99, file: !299, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!299 = !DIFile(filename: "../udivsi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "b74987a973aededf95faab34db33f58a")
!300 = distinct !DICompileUnit(language: DW_LANG_C99, file: !301, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!301 = !DIFile(filename: "../udivti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "c9304f2e77edc1023290a4f40073f6f7")
!302 = distinct !DICompileUnit(language: DW_LANG_C99, file: !303, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!303 = !DIFile(filename: "../umoddi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "1a99e635325595a81040fb97dab88295")
!304 = distinct !DICompileUnit(language: DW_LANG_C99, file: !305, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!305 = !DIFile(filename: "../umodsi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "ce74ac33cd2bd170a84f43824cae8961")
!306 = distinct !DICompileUnit(language: DW_LANG_C99, file: !307, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!307 = !DIFile(filename: "../umodti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "f900660feeec718da080f01b23c74384")
!308 = distinct !DICompileUnit(language: DW_LANG_C99, file: !309, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!309 = !DIFile(filename: "../memory.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsstd/buildarmv4", checksumkind: CSK_MD5, checksum: "fa9c872a007b30a353222cd13b38538d")
!310 = !{!"clang version 14.0.6 (git@github.com:RTS-SYSU/LLVM-TA.git b7f9c4ccdebc6c37532ddd772889e5f0ff989c79)"}
!311 = !{!"clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)"}
!312 = !{i32 7, !"Dwarf Version", i32 5}
!313 = !{i32 2, !"Debug Info Version", i32 3}
!314 = !{i32 1, !"wchar_size", i32 4}
!315 = !{i32 1, !"min_enum_size", i32 4}
!316 = !{i32 1, !"branch-target-enforcement", i32 0}
!317 = !{i32 1, !"sign-return-address", i32 0}
!318 = !{i32 1, !"sign-return-address-all", i32 0}
!319 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!320 = !{i32 7, !"frame-pointer", i32 2}
!321 = distinct !DISubprogram(name: "cubic_init", scope: !7, file: !7, line: 63, type: !322, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !324)
!322 = !DISubroutineType(types: !323)
!323 = !{null}
!324 = !{}
!325 = !DILocation(line: 65, column: 12, scope: !321)
!326 = !DILocation(line: 65, column: 29, scope: !321)
!327 = !DILocation(line: 65, column: 48, scope: !321)
!328 = !DILocation(line: 65, column: 66, scope: !321)
!329 = !DILocation(line: 66, column: 12, scope: !321)
!330 = !DILocation(line: 66, column: 29, scope: !321)
!331 = !DILocation(line: 66, column: 47, scope: !321)
!332 = !DILocation(line: 66, column: 65, scope: !321)
!333 = !DILocation(line: 67, column: 12, scope: !321)
!334 = !DILocation(line: 67, column: 29, scope: !321)
!335 = !DILocation(line: 67, column: 47, scope: !321)
!336 = !DILocation(line: 67, column: 65, scope: !321)
!337 = !DILocation(line: 68, column: 12, scope: !321)
!338 = !DILocation(line: 68, column: 29, scope: !321)
!339 = !DILocation(line: 68, column: 48, scope: !321)
!340 = !DILocation(line: 68, column: 65, scope: !321)
!341 = !DILocation(line: 69, column: 11, scope: !321)
!342 = !DILocation(line: 69, column: 24, scope: !321)
!343 = !DILocation(line: 70, column: 18, scope: !321)
!344 = !DILocation(line: 71, column: 1, scope: !321)
!345 = distinct !DISubprogram(name: "cubic_return", scope: !7, file: !7, line: 78, type: !346, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !324)
!346 = !DISubroutineType(types: !347)
!347 = !{!48}
!348 = !DILocation(line: 80, column: 8, scope: !349)
!349 = distinct !DILexicalBlock(scope: !345, file: !7, line: 80, column: 8)
!350 = !DILocation(line: 80, column: 23, scope: !349)
!351 = !DILocation(line: 80, column: 8, scope: !345)
!352 = !DILocation(line: 81, column: 5, scope: !349)
!353 = !DILocation(line: 83, column: 5, scope: !349)
!354 = !DILocation(line: 0, scope: !349)
!355 = !DILocation(line: 84, column: 1, scope: !345)
!356 = distinct !DISubprogram(name: "cubic_main", scope: !7, file: !7, line: 91, type: !322, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !324)
!357 = !DILocation(line: 95, column: 21, scope: !356)
!358 = !DILocation(line: 95, column: 31, scope: !356)
!359 = !DILocation(line: 95, column: 41, scope: !356)
!360 = !DILocation(line: 95, column: 51, scope: !356)
!361 = !DILocation(line: 95, column: 3, scope: !356)
!362 = !DILocation(line: 96, column: 21, scope: !356)
!363 = !DILocation(line: 96, column: 18, scope: !356)
!364 = !DILocation(line: 97, column: 21, scope: !356)
!365 = !DILocation(line: 97, column: 31, scope: !356)
!366 = !DILocation(line: 97, column: 41, scope: !356)
!367 = !DILocation(line: 97, column: 51, scope: !356)
!368 = !DILocation(line: 97, column: 3, scope: !356)
!369 = !DILocation(line: 98, column: 21, scope: !356)
!370 = !DILocation(line: 98, column: 18, scope: !356)
!371 = !DILocation(line: 99, column: 21, scope: !356)
!372 = !DILocation(line: 99, column: 31, scope: !356)
!373 = !DILocation(line: 99, column: 41, scope: !356)
!374 = !DILocation(line: 99, column: 51, scope: !356)
!375 = !DILocation(line: 99, column: 3, scope: !356)
!376 = !DILocation(line: 100, column: 21, scope: !356)
!377 = !DILocation(line: 100, column: 18, scope: !356)
!378 = !DILocation(line: 101, column: 21, scope: !356)
!379 = !DILocation(line: 101, column: 31, scope: !356)
!380 = !DILocation(line: 101, column: 41, scope: !356)
!381 = !DILocation(line: 101, column: 51, scope: !356)
!382 = !DILocation(line: 101, column: 3, scope: !356)
!383 = !DILocation(line: 102, column: 21, scope: !356)
!384 = !DILocation(line: 102, column: 18, scope: !356)
!385 = !DILocation(line: 106, column: 9, scope: !386)
!386 = distinct !DILexicalBlock(scope: !356, file: !7, line: 106, column: 3)
!387 = !DILocation(line: 0, scope: !386)
!388 = !DILocation(line: 106, column: 32, scope: !389)
!389 = distinct !DILexicalBlock(scope: !386, file: !7, line: 106, column: 3)
!390 = !DILocation(line: 106, column: 3, scope: !386)
!391 = !DILocation(line: 108, column: 11, scope: !392)
!392 = distinct !DILexicalBlock(scope: !393, file: !7, line: 108, column: 5)
!393 = distinct !DILexicalBlock(scope: !389, file: !7, line: 106, column: 54)
!394 = !DILocation(line: 0, scope: !392)
!395 = !DILocation(line: 108, column: 35, scope: !396)
!396 = distinct !DILexicalBlock(scope: !392, file: !7, line: 108, column: 5)
!397 = !DILocation(line: 108, column: 5, scope: !392)
!398 = !DILocation(line: 110, column: 13, scope: !399)
!399 = distinct !DILexicalBlock(scope: !400, file: !7, line: 110, column: 7)
!400 = distinct !DILexicalBlock(scope: !396, file: !7, line: 108, column: 56)
!401 = !DILocation(line: 0, scope: !399)
!402 = !DILocation(line: 110, column: 36, scope: !403)
!403 = distinct !DILexicalBlock(scope: !399, file: !7, line: 110, column: 7)
!404 = !DILocation(line: 110, column: 7, scope: !399)
!405 = !DILocation(line: 112, column: 15, scope: !406)
!406 = distinct !DILexicalBlock(scope: !407, file: !7, line: 112, column: 9)
!407 = distinct !DILexicalBlock(scope: !403, file: !7, line: 110, column: 61)
!408 = !DILocation(line: 0, scope: !406)
!409 = !DILocation(line: 112, column: 39, scope: !410)
!410 = distinct !DILexicalBlock(scope: !406, file: !7, line: 112, column: 9)
!411 = !DILocation(line: 112, column: 9, scope: !406)
!412 = !DILocation(line: 113, column: 29, scope: !413)
!413 = distinct !DILexicalBlock(scope: !410, file: !7, line: 112, column: 62)
!414 = !DILocation(line: 113, column: 39, scope: !413)
!415 = !DILocation(line: 113, column: 49, scope: !413)
!416 = !DILocation(line: 113, column: 59, scope: !413)
!417 = !DILocation(line: 113, column: 11, scope: !413)
!418 = !DILocation(line: 114, column: 29, scope: !413)
!419 = !DILocation(line: 114, column: 26, scope: !413)
!420 = !DILocation(line: 115, column: 9, scope: !413)
!421 = !DILocation(line: 112, column: 55, scope: !410)
!422 = !DILocation(line: 112, column: 9, scope: !410)
!423 = distinct !{!423, !411, !424, !425}
!424 = !DILocation(line: 115, column: 9, scope: !406)
!425 = !{!"llvm.loop.mustprogress"}
!426 = !DILocation(line: 116, column: 7, scope: !407)
!427 = !DILocation(line: 110, column: 51, scope: !403)
!428 = !DILocation(line: 110, column: 7, scope: !403)
!429 = distinct !{!429, !404, !430, !425}
!430 = !DILocation(line: 116, column: 7, scope: !399)
!431 = !DILocation(line: 117, column: 5, scope: !400)
!432 = !DILocation(line: 108, column: 49, scope: !396)
!433 = !DILocation(line: 108, column: 5, scope: !396)
!434 = distinct !{!434, !397, !435, !425}
!435 = !DILocation(line: 117, column: 5, scope: !392)
!436 = !DILocation(line: 118, column: 3, scope: !393)
!437 = !DILocation(line: 106, column: 47, scope: !389)
!438 = !DILocation(line: 106, column: 3, scope: !389)
!439 = distinct !{!439, !390, !440, !425}
!440 = !DILocation(line: 118, column: 3, scope: !386)
!441 = !DILocation(line: 119, column: 1, scope: !356)
!442 = distinct !DISubprogram(name: "cubic_solveCubic", scope: !7, file: !7, line: 122, type: !443, scopeLine: 124, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !324)
!443 = !DISubroutineType(types: !444)
!444 = !{null, !8, !8, !8, !8, !445, !446}
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 32)
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 32)
!447 = !DILocalVariable(name: "a", arg: 1, scope: !442, file: !7, line: 122, type: !8)
!448 = !DILocation(line: 0, scope: !442)
!449 = !DILocalVariable(name: "b", arg: 2, scope: !442, file: !7, line: 122, type: !8)
!450 = !DILocalVariable(name: "c", arg: 3, scope: !442, file: !7, line: 122, type: !8)
!451 = !DILocalVariable(name: "d", arg: 4, scope: !442, file: !7, line: 122, type: !8)
!452 = !DILocalVariable(name: "solutions", arg: 5, scope: !442, file: !7, line: 123, type: !445)
!453 = !DILocalVariable(name: "x", arg: 6, scope: !442, file: !7, line: 123, type: !446)
!454 = !DILocation(line: 125, column: 16, scope: !442)
!455 = !DILocalVariable(name: "a1", scope: !442, file: !7, line: 125, type: !8)
!456 = !DILocation(line: 125, column: 28, scope: !442)
!457 = !DILocalVariable(name: "a2", scope: !442, file: !7, line: 125, type: !8)
!458 = !DILocation(line: 125, column: 40, scope: !442)
!459 = !DILocalVariable(name: "a3", scope: !442, file: !7, line: 125, type: !8)
!460 = !DILocation(line: 126, column: 23, scope: !442)
!461 = !DILocation(line: 126, column: 37, scope: !442)
!462 = !DILocalVariable(name: "Q", scope: !442, file: !7, line: 126, type: !8)
!463 = !DILocation(line: 127, column: 20, scope: !442)
!464 = !DILocation(line: 127, column: 25, scope: !442)
!465 = !DILocation(line: 127, column: 35, scope: !442)
!466 = !DILocation(line: 127, column: 52, scope: !442)
!467 = !DILocation(line: 127, column: 67, scope: !442)
!468 = !DILocalVariable(name: "R", scope: !442, file: !7, line: 127, type: !8)
!469 = !DILocation(line: 128, column: 23, scope: !442)
!470 = !DILocalVariable(name: "R2_Q3", scope: !442, file: !7, line: 128, type: !8)
!471 = !DILocation(line: 131, column: 14, scope: !472)
!472 = distinct !DILexicalBlock(scope: !442, file: !7, line: 131, column: 8)
!473 = !DILocation(line: 131, column: 8, scope: !442)
!474 = !DILocation(line: 132, column: 16, scope: !475)
!475 = distinct !DILexicalBlock(scope: !472, file: !7, line: 131, column: 21)
!476 = !DILocation(line: 133, column: 73, scope: !475)
!477 = !DILocation(line: 133, column: 77, scope: !475)
!478 = !DILocation(line: 133, column: 44, scope: !475)
!479 = !DILocation(line: 133, column: 42, scope: !475)
!480 = !DILocation(line: 133, column: 13, scope: !475)
!481 = !DILocalVariable(name: "theta", scope: !442, file: !7, line: 129, type: !8)
!482 = !DILocation(line: 134, column: 20, scope: !475)
!483 = !DILocation(line: 134, column: 18, scope: !475)
!484 = !DILocation(line: 135, column: 20, scope: !475)
!485 = !DILocation(line: 134, column: 53, scope: !475)
!486 = !DILocation(line: 135, column: 29, scope: !475)
!487 = !DILocation(line: 134, column: 10, scope: !475)
!488 = !DILocation(line: 136, column: 20, scope: !475)
!489 = !DILocation(line: 136, column: 18, scope: !475)
!490 = !DILocation(line: 137, column: 20, scope: !475)
!491 = !DILocation(line: 137, column: 34, scope: !475)
!492 = !DILocation(line: 136, column: 53, scope: !475)
!493 = !DILocation(line: 137, column: 43, scope: !475)
!494 = !DILocation(line: 136, column: 5, scope: !475)
!495 = !DILocation(line: 136, column: 10, scope: !475)
!496 = !DILocation(line: 138, column: 20, scope: !475)
!497 = !DILocation(line: 138, column: 18, scope: !475)
!498 = !DILocation(line: 139, column: 20, scope: !475)
!499 = !DILocation(line: 139, column: 34, scope: !475)
!500 = !DILocation(line: 138, column: 53, scope: !475)
!501 = !DILocation(line: 139, column: 43, scope: !475)
!502 = !DILocation(line: 138, column: 5, scope: !475)
!503 = !DILocation(line: 138, column: 10, scope: !475)
!504 = !DILocation(line: 140, column: 3, scope: !475)
!505 = !DILocation(line: 141, column: 16, scope: !506)
!506 = distinct !DILexicalBlock(scope: !472, file: !7, line: 140, column: 10)
!507 = !DILocation(line: 142, column: 38, scope: !506)
!508 = !DILocation(line: 143, column: 38, scope: !506)
!509 = !DILocation(line: 142, column: 73, scope: !506)
!510 = !DILocation(line: 142, column: 12, scope: !506)
!511 = !DILocation(line: 144, column: 15, scope: !506)
!512 = !DILocation(line: 144, column: 10, scope: !506)
!513 = !DILocation(line: 145, column: 17, scope: !506)
!514 = !DILocation(line: 145, column: 10, scope: !506)
!515 = !DILocation(line: 146, column: 16, scope: !506)
!516 = !DILocation(line: 146, column: 10, scope: !506)
!517 = !DILocation(line: 148, column: 1, scope: !442)
!518 = distinct !DISubprogram(name: "main", scope: !7, file: !7, line: 151, type: !346, scopeLine: 152, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !324)
!519 = !DILocation(line: 153, column: 3, scope: !518)
!520 = !DILocation(line: 154, column: 3, scope: !518)
!521 = !DILocation(line: 155, column: 10, scope: !518)
!522 = !DILocation(line: 155, column: 3, scope: !518)
!523 = distinct !DISubprogram(name: "basicmath___ieee754_acosf", scope: !60, file: !60, line: 55, type: !524, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !53, retainedNodes: !324)
!524 = !DISubroutineType(types: !525)
!525 = !{!8, !8}
!526 = !DILocalVariable(name: "x", arg: 1, scope: !523, file: !60, line: 55, type: !8)
!527 = !DILocation(line: 0, scope: !523)
!528 = !DILocalVariable(name: "gf_u", scope: !529, file: !60, line: 59, type: !530)
!529 = distinct !DILexicalBlock(scope: !523, file: !60, line: 59, column: 3)
!530 = !DIDerivedType(tag: DW_TAG_typedef, name: "ieee_float_shape_type", file: !531, line: 48, baseType: !532)
!531 = !DIFile(filename: "cubic/math_private.h", directory: "/workspaces/llvmta/testcases/singletest")
!532 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !531, line: 45, size: 32, elements: !533)
!533 = !{!534, !535}
!534 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !532, file: !531, line: 46, baseType: !8, size: 32)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !532, file: !531, line: 47, baseType: !56, size: 32)
!536 = !DILocation(line: 0, scope: !529)
!537 = !DILocation(line: 59, column: 3, scope: !529)
!538 = !DILocalVariable(name: "hx", scope: !523, file: !60, line: 58, type: !48)
!539 = !DILocation(line: 60, column: 11, scope: !523)
!540 = !DILocalVariable(name: "ix", scope: !523, file: !60, line: 58, type: !48)
!541 = !DILocation(line: 61, column: 11, scope: !542)
!542 = distinct !DILexicalBlock(scope: !523, file: !60, line: 61, column: 8)
!543 = !DILocation(line: 61, column: 8, scope: !523)
!544 = !DILocation(line: 62, column: 13, scope: !545)
!545 = distinct !DILexicalBlock(scope: !546, file: !60, line: 62, column: 10)
!546 = distinct !DILexicalBlock(scope: !542, file: !60, line: 61, column: 27)
!547 = !DILocation(line: 62, column: 10, scope: !546)
!548 = !DILocation(line: 62, column: 19, scope: !545)
!549 = !DILocation(line: 63, column: 10, scope: !545)
!550 = !DILocation(line: 65, column: 13, scope: !551)
!551 = distinct !DILexicalBlock(scope: !542, file: !60, line: 65, column: 10)
!552 = !DILocation(line: 65, column: 10, scope: !542)
!553 = !DILocation(line: 66, column: 18, scope: !554)
!554 = distinct !DILexicalBlock(scope: !551, file: !60, line: 65, column: 28)
!555 = !DILocation(line: 66, column: 30, scope: !554)
!556 = !DILocation(line: 66, column: 24, scope: !554)
!557 = !DILocation(line: 66, column: 7, scope: !554)
!558 = !DILocation(line: 68, column: 11, scope: !559)
!559 = distinct !DILexicalBlock(scope: !523, file: !60, line: 68, column: 8)
!560 = !DILocation(line: 68, column: 8, scope: !523)
!561 = !DILocation(line: 69, column: 13, scope: !562)
!562 = distinct !DILexicalBlock(scope: !563, file: !60, line: 69, column: 10)
!563 = distinct !DILexicalBlock(scope: !559, file: !60, line: 68, column: 26)
!564 = !DILocation(line: 69, column: 10, scope: !563)
!565 = !DILocation(line: 69, column: 29, scope: !562)
!566 = !DILocation(line: 71, column: 11, scope: !563)
!567 = !DILocalVariable(name: "z", scope: !523, file: !60, line: 57, type: !8)
!568 = !DILocation(line: 74, column: 55, scope: !563)
!569 = !DILocation(line: 73, column: 53, scope: !563)
!570 = !DILocation(line: 72, column: 73, scope: !563)
!571 = !DILocation(line: 72, column: 51, scope: !563)
!572 = !DILocation(line: 72, column: 29, scope: !563)
!573 = !DILocation(line: 72, column: 11, scope: !563)
!574 = !DILocalVariable(name: "p", scope: !523, file: !60, line: 57, type: !8)
!575 = !DILocation(line: 76, column: 47, scope: !563)
!576 = !DILocation(line: 75, column: 67, scope: !563)
!577 = !DILocation(line: 75, column: 45, scope: !563)
!578 = !DILocation(line: 75, column: 23, scope: !563)
!579 = !DILocalVariable(name: "q", scope: !523, file: !60, line: 57, type: !8)
!580 = !DILocation(line: 77, column: 11, scope: !563)
!581 = !DILocalVariable(name: "r", scope: !523, file: !60, line: 57, type: !8)
!582 = !DILocation(line: 78, column: 58, scope: !563)
!583 = !DILocation(line: 78, column: 30, scope: !563)
!584 = !DILocation(line: 78, column: 5, scope: !563)
!585 = !DILocation(line: 80, column: 13, scope: !586)
!586 = distinct !DILexicalBlock(scope: !559, file: !60, line: 80, column: 10)
!587 = !DILocation(line: 80, column: 10, scope: !559)
!588 = !DILocation(line: 81, column: 27, scope: !589)
!589 = distinct !DILexicalBlock(scope: !586, file: !60, line: 80, column: 19)
!590 = !DILocation(line: 81, column: 33, scope: !589)
!591 = !DILocation(line: 84, column: 57, scope: !589)
!592 = !DILocation(line: 83, column: 55, scope: !589)
!593 = !DILocation(line: 82, column: 75, scope: !589)
!594 = !DILocation(line: 82, column: 53, scope: !589)
!595 = !DILocation(line: 82, column: 31, scope: !589)
!596 = !DILocation(line: 82, column: 13, scope: !589)
!597 = !DILocation(line: 86, column: 49, scope: !589)
!598 = !DILocation(line: 85, column: 69, scope: !589)
!599 = !DILocation(line: 85, column: 47, scope: !589)
!600 = !DILocation(line: 85, column: 25, scope: !589)
!601 = !DILocation(line: 87, column: 11, scope: !589)
!602 = !DILocalVariable(name: "s", scope: !523, file: !60, line: 57, type: !8)
!603 = !DILocation(line: 88, column: 13, scope: !589)
!604 = !DILocation(line: 89, column: 17, scope: !589)
!605 = !DILocalVariable(name: "w", scope: !523, file: !60, line: 57, type: !8)
!606 = !DILocation(line: 90, column: 49, scope: !589)
!607 = !DILocation(line: 90, column: 27, scope: !589)
!608 = !DILocation(line: 90, column: 7, scope: !589)
!609 = !DILocation(line: 93, column: 27, scope: !610)
!610 = distinct !DILexicalBlock(scope: !586, file: !60, line: 91, column: 12)
!611 = !DILocation(line: 93, column: 33, scope: !610)
!612 = !DILocation(line: 94, column: 11, scope: !610)
!613 = !DILocalVariable(name: "df", scope: !523, file: !60, line: 57, type: !8)
!614 = !DILocalVariable(name: "gf_u", scope: !615, file: !60, line: 96, type: !530)
!615 = distinct !DILexicalBlock(scope: !610, file: !60, line: 96, column: 7)
!616 = !DILocation(line: 0, scope: !615)
!617 = !DILocation(line: 96, column: 7, scope: !615)
!618 = !DILocalVariable(name: "idf", scope: !610, file: !60, line: 92, type: !48)
!619 = !DILocation(line: 0, scope: !610)
!620 = !DILocation(line: 97, column: 7, scope: !621)
!621 = distinct !DILexicalBlock(scope: !610, file: !60, line: 97, column: 7)
!622 = !DILocalVariable(name: "sf_u", scope: !621, file: !60, line: 97, type: !530)
!623 = !DILocation(line: 0, scope: !621)
!624 = !DILocation(line: 98, column: 16, scope: !610)
!625 = !DILocation(line: 98, column: 34, scope: !610)
!626 = !DILocation(line: 98, column: 28, scope: !610)
!627 = !DILocalVariable(name: "c", scope: !523, file: !60, line: 57, type: !8)
!628 = !DILocation(line: 101, column: 57, scope: !610)
!629 = !DILocation(line: 100, column: 55, scope: !610)
!630 = !DILocation(line: 99, column: 75, scope: !610)
!631 = !DILocation(line: 99, column: 53, scope: !610)
!632 = !DILocation(line: 99, column: 31, scope: !610)
!633 = !DILocation(line: 99, column: 13, scope: !610)
!634 = !DILocation(line: 103, column: 49, scope: !610)
!635 = !DILocation(line: 102, column: 69, scope: !610)
!636 = !DILocation(line: 102, column: 47, scope: !610)
!637 = !DILocation(line: 102, column: 25, scope: !610)
!638 = !DILocation(line: 104, column: 13, scope: !610)
!639 = !DILocation(line: 105, column: 17, scope: !610)
!640 = !DILocation(line: 106, column: 35, scope: !610)
!641 = !DILocation(line: 106, column: 28, scope: !610)
!642 = !DILocation(line: 106, column: 7, scope: !610)
!643 = !DILocation(line: 108, column: 1, scope: !523)
!644 = distinct !DISubprogram(name: "basicmath___ieee754_sqrtf", scope: !60, file: !60, line: 493, type: !524, scopeLine: 494, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !53, retainedNodes: !324)
!645 = !DILocalVariable(name: "x", arg: 1, scope: !644, file: !60, line: 493, type: !8)
!646 = !DILocation(line: 0, scope: !644)
!647 = !DILocalVariable(name: "sign", scope: !644, file: !60, line: 496, type: !48)
!648 = !DILocalVariable(name: "gf_u", scope: !649, file: !60, line: 500, type: !530)
!649 = distinct !DILexicalBlock(scope: !644, file: !60, line: 500, column: 3)
!650 = !DILocation(line: 0, scope: !649)
!651 = !DILocation(line: 500, column: 3, scope: !649)
!652 = !DILocalVariable(name: "ix", scope: !644, file: !60, line: 497, type: !48)
!653 = !DILocation(line: 503, column: 13, scope: !654)
!654 = distinct !DILexicalBlock(scope: !644, file: !60, line: 503, column: 8)
!655 = !DILocation(line: 503, column: 28, scope: !654)
!656 = !DILocation(line: 503, column: 8, scope: !644)
!657 = !DILocation(line: 504, column: 18, scope: !658)
!658 = distinct !DILexicalBlock(scope: !654, file: !60, line: 503, column: 44)
!659 = !DILocation(line: 504, column: 5, scope: !658)
!660 = !DILocation(line: 508, column: 11, scope: !661)
!661 = distinct !DILexicalBlock(scope: !644, file: !60, line: 508, column: 8)
!662 = !DILocation(line: 508, column: 8, scope: !644)
!663 = !DILocation(line: 509, column: 15, scope: !664)
!664 = distinct !DILexicalBlock(scope: !665, file: !60, line: 509, column: 10)
!665 = distinct !DILexicalBlock(scope: !661, file: !60, line: 508, column: 18)
!666 = !DILocation(line: 509, column: 29, scope: !664)
!667 = !DILocation(line: 509, column: 10, scope: !665)
!668 = !DILocation(line: 509, column: 36, scope: !664)
!669 = !DILocation(line: 511, column: 15, scope: !670)
!670 = distinct !DILexicalBlock(scope: !664, file: !60, line: 511, column: 12)
!671 = !DILocation(line: 511, column: 12, scope: !664)
!672 = !DILocation(line: 512, column: 20, scope: !670)
!673 = !DILocation(line: 512, column: 32, scope: !670)
!674 = !DILocation(line: 512, column: 26, scope: !670)
!675 = !DILocation(line: 512, column: 9, scope: !670)
!676 = !DILocation(line: 513, column: 3, scope: !665)
!677 = !DILocation(line: 515, column: 12, scope: !644)
!678 = !DILocalVariable(name: "m", scope: !644, file: !60, line: 497, type: !48)
!679 = !DILocation(line: 516, column: 10, scope: !680)
!680 = distinct !DILexicalBlock(scope: !644, file: !60, line: 516, column: 8)
!681 = !DILocation(line: 516, column: 8, scope: !644)
!682 = !DILocalVariable(name: "i", scope: !644, file: !60, line: 497, type: !48)
!683 = !DILocation(line: 518, column: 11, scope: !684)
!684 = distinct !DILexicalBlock(scope: !685, file: !60, line: 518, column: 5)
!685 = distinct !DILexicalBlock(scope: !680, file: !60, line: 516, column: 17)
!686 = !DILocation(line: 0, scope: !684)
!687 = !DILocation(line: 518, column: 23, scope: !688)
!688 = distinct !DILexicalBlock(scope: !684, file: !60, line: 518, column: 5)
!689 = !DILocation(line: 518, column: 38, scope: !688)
!690 = !DILocation(line: 518, column: 5, scope: !684)
!691 = !DILocation(line: 519, column: 7, scope: !688)
!692 = !DILocation(line: 519, column: 10, scope: !688)
!693 = !DILocation(line: 518, column: 45, scope: !688)
!694 = !DILocation(line: 518, column: 5, scope: !688)
!695 = distinct !{!695, !690, !696, !425}
!696 = !DILocation(line: 519, column: 14, scope: !684)
!697 = !DILocation(line: 520, column: 12, scope: !685)
!698 = !DILocation(line: 520, column: 7, scope: !685)
!699 = !DILocation(line: 521, column: 3, scope: !685)
!700 = !DILocation(line: 522, column: 5, scope: !644)
!701 = !DILocation(line: 523, column: 13, scope: !644)
!702 = !DILocation(line: 523, column: 28, scope: !644)
!703 = !DILocation(line: 524, column: 10, scope: !704)
!704 = distinct !DILexicalBlock(scope: !644, file: !60, line: 524, column: 8)
!705 = !DILocation(line: 524, column: 8, scope: !644)
!706 = !DILocation(line: 525, column: 8, scope: !704)
!707 = !DILocation(line: 525, column: 5, scope: !704)
!708 = !DILocalVariable(name: "s", scope: !644, file: !60, line: 497, type: !48)
!709 = !DILocalVariable(name: "q", scope: !644, file: !60, line: 497, type: !48)
!710 = !DILocalVariable(name: "r", scope: !644, file: !60, line: 498, type: !56)
!711 = !DILocation(line: 534, column: 3, scope: !644)
!712 = !DILocation(line: 534, column: 13, scope: !644)
!713 = !DILocation(line: 535, column: 11, scope: !714)
!714 = distinct !DILexicalBlock(scope: !644, file: !60, line: 534, column: 20)
!715 = !DILocalVariable(name: "t", scope: !644, file: !60, line: 497, type: !48)
!716 = !DILocation(line: 536, column: 12, scope: !717)
!717 = distinct !DILexicalBlock(scope: !714, file: !60, line: 536, column: 10)
!718 = !DILocation(line: 536, column: 10, scope: !714)
!719 = !DILocation(line: 537, column: 16, scope: !720)
!720 = distinct !DILexicalBlock(scope: !717, file: !60, line: 536, column: 20)
!721 = !DILocation(line: 538, column: 11, scope: !720)
!722 = !DILocation(line: 539, column: 11, scope: !720)
!723 = !DILocation(line: 540, column: 5, scope: !720)
!724 = !DILocation(line: 542, column: 7, scope: !714)
!725 = distinct !{!725, !711, !726, !425}
!726 = !DILocation(line: 543, column: 3, scope: !644)
!727 = !DILocation(line: 546, column: 11, scope: !728)
!728 = distinct !DILexicalBlock(scope: !644, file: !60, line: 546, column: 8)
!729 = !DILocation(line: 546, column: 8, scope: !644)
!730 = !DILocalVariable(name: "z", scope: !644, file: !60, line: 495, type: !8)
!731 = !DILocation(line: 548, column: 10, scope: !732)
!732 = distinct !DILexicalBlock(scope: !728, file: !60, line: 546, column: 18)
!733 = !DILocation(line: 550, column: 12, scope: !734)
!734 = distinct !DILexicalBlock(scope: !735, file: !60, line: 548, column: 31)
!735 = distinct !DILexicalBlock(scope: !732, file: !60, line: 548, column: 10)
!736 = !DILocation(line: 551, column: 9, scope: !737)
!737 = distinct !DILexicalBlock(scope: !734, file: !60, line: 550, column: 12)
!738 = !DILocation(line: 553, column: 18, scope: !737)
!739 = !DILocation(line: 553, column: 11, scope: !737)
!740 = !DILocation(line: 0, scope: !737)
!741 = !DILocation(line: 554, column: 5, scope: !734)
!742 = !DILocation(line: 555, column: 3, scope: !732)
!743 = !DILocation(line: 556, column: 12, scope: !644)
!744 = !DILocation(line: 556, column: 19, scope: !644)
!745 = !DILocation(line: 557, column: 13, scope: !644)
!746 = !DILocation(line: 557, column: 6, scope: !644)
!747 = !DILocalVariable(name: "sf_u", scope: !748, file: !60, line: 558, type: !530)
!748 = distinct !DILexicalBlock(scope: !644, file: !60, line: 558, column: 3)
!749 = !DILocation(line: 0, scope: !748)
!750 = !DILocation(line: 558, column: 3, scope: !748)
!751 = !DILocation(line: 559, column: 3, scope: !644)
!752 = !DILocation(line: 560, column: 1, scope: !644)
!753 = distinct !DISubprogram(name: "basicmath___ieee754_powf", scope: !60, file: !60, line: 141, type: !754, scopeLine: 142, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !53, retainedNodes: !324)
!754 = !DISubroutineType(types: !755)
!755 = !{!8, !8, !8}
!756 = !DILocalVariable(name: "x", arg: 1, scope: !753, file: !60, line: 141, type: !8)
!757 = !DILocation(line: 0, scope: !753)
!758 = !DILocalVariable(name: "y", arg: 2, scope: !753, file: !60, line: 141, type: !8)
!759 = !DILocalVariable(name: "gf_u", scope: !760, file: !60, line: 148, type: !530)
!760 = distinct !DILexicalBlock(scope: !753, file: !60, line: 148, column: 3)
!761 = !DILocation(line: 0, scope: !760)
!762 = !DILocation(line: 148, column: 3, scope: !760)
!763 = !DILocalVariable(name: "hx", scope: !753, file: !60, line: 146, type: !48)
!764 = !DILocalVariable(name: "gf_u", scope: !765, file: !60, line: 149, type: !530)
!765 = distinct !DILexicalBlock(scope: !753, file: !60, line: 149, column: 3)
!766 = !DILocation(line: 0, scope: !765)
!767 = !DILocation(line: 149, column: 3, scope: !765)
!768 = !DILocalVariable(name: "hy", scope: !753, file: !60, line: 146, type: !48)
!769 = !DILocation(line: 150, column: 11, scope: !753)
!770 = !DILocalVariable(name: "ix", scope: !753, file: !60, line: 146, type: !48)
!771 = !DILocation(line: 151, column: 11, scope: !753)
!772 = !DILocalVariable(name: "iy", scope: !753, file: !60, line: 146, type: !48)
!773 = !DILocation(line: 154, column: 11, scope: !774)
!774 = distinct !DILexicalBlock(scope: !753, file: !60, line: 154, column: 8)
!775 = !DILocation(line: 154, column: 8, scope: !753)
!776 = !DILocation(line: 154, column: 18, scope: !774)
!777 = !DILocation(line: 157, column: 10, scope: !778)
!778 = distinct !DILexicalBlock(scope: !753, file: !60, line: 157, column: 8)
!779 = !DILocation(line: 157, column: 8, scope: !753)
!780 = !DILocation(line: 157, column: 20, scope: !778)
!781 = !DILocation(line: 158, column: 10, scope: !782)
!782 = distinct !DILexicalBlock(scope: !753, file: !60, line: 158, column: 8)
!783 = !DILocation(line: 158, column: 19, scope: !782)
!784 = !DILocation(line: 158, column: 22, scope: !782)
!785 = !DILocation(line: 158, column: 8, scope: !753)
!786 = !DILocation(line: 158, column: 48, scope: !782)
!787 = !DILocation(line: 161, column: 11, scope: !788)
!788 = distinct !DILexicalBlock(scope: !753, file: !60, line: 161, column: 8)
!789 = !DILocation(line: 161, column: 24, scope: !788)
!790 = !DILocation(line: 162, column: 11, scope: !788)
!791 = !DILocation(line: 161, column: 8, scope: !753)
!792 = !DILocation(line: 163, column: 14, scope: !788)
!793 = !DILocation(line: 163, column: 5, scope: !788)
!794 = !DILocalVariable(name: "yisint", scope: !753, file: !60, line: 145, type: !48)
!795 = !DILocation(line: 171, column: 11, scope: !796)
!796 = distinct !DILexicalBlock(scope: !753, file: !60, line: 171, column: 8)
!797 = !DILocation(line: 171, column: 8, scope: !753)
!798 = !DILocation(line: 172, column: 13, scope: !799)
!799 = distinct !DILexicalBlock(scope: !800, file: !60, line: 172, column: 10)
!800 = distinct !DILexicalBlock(scope: !796, file: !60, line: 171, column: 17)
!801 = !DILocation(line: 172, column: 10, scope: !800)
!802 = !DILocation(line: 172, column: 29, scope: !799)
!803 = !DILocation(line: 174, column: 15, scope: !804)
!804 = distinct !DILexicalBlock(scope: !799, file: !60, line: 174, column: 12)
!805 = !DILocation(line: 174, column: 12, scope: !799)
!806 = !DILocation(line: 175, column: 18, scope: !807)
!807 = distinct !DILexicalBlock(scope: !804, file: !60, line: 174, column: 31)
!808 = !DILocalVariable(name: "k", scope: !753, file: !60, line: 145, type: !48)
!809 = !DILocation(line: 176, column: 24, scope: !807)
!810 = !DILocation(line: 176, column: 16, scope: !807)
!811 = !DILocalVariable(name: "j", scope: !753, file: !60, line: 145, type: !48)
!812 = !DILocation(line: 177, column: 26, scope: !813)
!813 = distinct !DILexicalBlock(scope: !807, file: !60, line: 177, column: 14)
!814 = !DILocation(line: 177, column: 18, scope: !813)
!815 = !DILocation(line: 177, column: 34, scope: !813)
!816 = !DILocation(line: 177, column: 14, scope: !807)
!817 = !DILocation(line: 177, column: 59, scope: !813)
!818 = !DILocation(line: 177, column: 53, scope: !813)
!819 = !DILocation(line: 177, column: 42, scope: !813)
!820 = !DILocation(line: 178, column: 7, scope: !807)
!821 = !DILocation(line: 0, scope: !799)
!822 = !DILocation(line: 179, column: 3, scope: !800)
!823 = !DILocation(line: 182, column: 11, scope: !824)
!824 = distinct !DILexicalBlock(scope: !753, file: !60, line: 182, column: 8)
!825 = !DILocation(line: 182, column: 8, scope: !753)
!826 = !DILocation(line: 183, column: 13, scope: !827)
!827 = distinct !DILexicalBlock(scope: !828, file: !60, line: 183, column: 10)
!828 = distinct !DILexicalBlock(scope: !824, file: !60, line: 182, column: 27)
!829 = !DILocation(line: 183, column: 10, scope: !828)
!830 = !DILocation(line: 184, column: 17, scope: !827)
!831 = !DILocation(line: 184, column: 7, scope: !827)
!832 = !DILocation(line: 186, column: 15, scope: !833)
!833 = distinct !DILexicalBlock(scope: !827, file: !60, line: 186, column: 12)
!834 = !DILocation(line: 186, column: 12, scope: !827)
!835 = !DILocation(line: 187, column: 21, scope: !833)
!836 = !DILocation(line: 187, column: 16, scope: !833)
!837 = !DILocation(line: 187, column: 9, scope: !833)
!838 = !DILocation(line: 189, column: 21, scope: !833)
!839 = !DILocation(line: 189, column: 16, scope: !833)
!840 = !DILocation(line: 189, column: 29, scope: !833)
!841 = !DILocation(line: 189, column: 9, scope: !833)
!842 = !DILocation(line: 191, column: 11, scope: !843)
!843 = distinct !DILexicalBlock(scope: !753, file: !60, line: 191, column: 8)
!844 = !DILocation(line: 191, column: 8, scope: !753)
!845 = !DILocation(line: 192, column: 13, scope: !846)
!846 = distinct !DILexicalBlock(scope: !847, file: !60, line: 192, column: 10)
!847 = distinct !DILexicalBlock(scope: !843, file: !60, line: 191, column: 27)
!848 = !DILocation(line: 192, column: 10, scope: !847)
!849 = !DILocation(line: 192, column: 40, scope: !846)
!850 = !DILocation(line: 192, column: 19, scope: !846)
!851 = !DILocation(line: 193, column: 10, scope: !846)
!852 = !DILocation(line: 195, column: 11, scope: !853)
!853 = distinct !DILexicalBlock(scope: !753, file: !60, line: 195, column: 8)
!854 = !DILocation(line: 195, column: 8, scope: !753)
!855 = !DILocation(line: 195, column: 36, scope: !853)
!856 = !DILocation(line: 195, column: 27, scope: !853)
!857 = !DILocation(line: 196, column: 11, scope: !858)
!858 = distinct !DILexicalBlock(scope: !753, file: !60, line: 196, column: 8)
!859 = !DILocation(line: 196, column: 8, scope: !753)
!860 = !DILocation(line: 197, column: 13, scope: !861)
!861 = distinct !DILexicalBlock(scope: !862, file: !60, line: 197, column: 10)
!862 = distinct !DILexicalBlock(scope: !858, file: !60, line: 196, column: 27)
!863 = !DILocation(line: 197, column: 10, scope: !862)
!864 = !DILocation(line: 198, column: 14, scope: !861)
!865 = !DILocation(line: 198, column: 7, scope: !861)
!866 = !DILocation(line: 199, column: 3, scope: !862)
!867 = !DILocation(line: 201, column: 10, scope: !753)
!868 = !DILocalVariable(name: "ax", scope: !753, file: !60, line: 143, type: !8)
!869 = !DILocation(line: 203, column: 11, scope: !870)
!870 = distinct !DILexicalBlock(scope: !753, file: !60, line: 203, column: 8)
!871 = !DILocation(line: 203, column: 25, scope: !870)
!872 = !DILocation(line: 203, column: 31, scope: !870)
!873 = !DILocation(line: 203, column: 36, scope: !870)
!874 = !DILocation(line: 203, column: 42, scope: !870)
!875 = !DILocation(line: 203, column: 8, scope: !753)
!876 = !DILocalVariable(name: "z", scope: !753, file: !60, line: 143, type: !8)
!877 = !DILocation(line: 205, column: 13, scope: !878)
!878 = distinct !DILexicalBlock(scope: !879, file: !60, line: 205, column: 10)
!879 = distinct !DILexicalBlock(scope: !870, file: !60, line: 203, column: 58)
!880 = !DILocation(line: 205, column: 10, scope: !879)
!881 = !DILocation(line: 205, column: 37, scope: !878)
!882 = !DILocation(line: 205, column: 19, scope: !878)
!883 = !DILocation(line: 0, scope: !879)
!884 = !DILocation(line: 206, column: 13, scope: !885)
!885 = distinct !DILexicalBlock(scope: !879, file: !60, line: 206, column: 10)
!886 = !DILocation(line: 206, column: 10, scope: !879)
!887 = !DILocation(line: 207, column: 19, scope: !888)
!888 = distinct !DILexicalBlock(scope: !889, file: !60, line: 207, column: 12)
!889 = distinct !DILexicalBlock(scope: !885, file: !60, line: 206, column: 19)
!890 = !DILocation(line: 207, column: 34, scope: !888)
!891 = !DILocation(line: 207, column: 45, scope: !888)
!892 = !DILocation(line: 207, column: 12, scope: !889)
!893 = !DILocation(line: 208, column: 17, scope: !894)
!894 = distinct !DILexicalBlock(scope: !888, file: !60, line: 207, column: 52)
!895 = !DILocation(line: 208, column: 29, scope: !894)
!896 = !DILocation(line: 208, column: 23, scope: !894)
!897 = !DILocation(line: 209, column: 7, scope: !894)
!898 = !DILocation(line: 210, column: 21, scope: !899)
!899 = distinct !DILexicalBlock(scope: !888, file: !60, line: 210, column: 14)
!900 = !DILocation(line: 210, column: 14, scope: !888)
!901 = !DILocation(line: 211, column: 15, scope: !899)
!902 = !DILocation(line: 211, column: 11, scope: !899)
!903 = !DILocation(line: 0, scope: !888)
!904 = !DILocation(line: 212, column: 5, scope: !889)
!905 = !DILocation(line: 213, column: 5, scope: !879)
!906 = !DILocation(line: 217, column: 30, scope: !907)
!907 = distinct !DILexicalBlock(scope: !753, file: !60, line: 217, column: 8)
!908 = !DILocation(line: 217, column: 38, scope: !907)
!909 = !DILocation(line: 217, column: 44, scope: !907)
!910 = !DILocation(line: 217, column: 55, scope: !907)
!911 = !DILocation(line: 217, column: 8, scope: !753)
!912 = !DILocation(line: 217, column: 73, scope: !907)
!913 = !DILocation(line: 218, column: 13, scope: !907)
!914 = !DILocation(line: 217, column: 79, scope: !907)
!915 = !DILocation(line: 217, column: 62, scope: !907)
!916 = !DILocation(line: 221, column: 11, scope: !917)
!917 = distinct !DILexicalBlock(scope: !753, file: !60, line: 221, column: 8)
!918 = !DILocation(line: 221, column: 8, scope: !753)
!919 = !DILocation(line: 223, column: 13, scope: !920)
!920 = distinct !DILexicalBlock(scope: !921, file: !60, line: 223, column: 10)
!921 = distinct !DILexicalBlock(scope: !917, file: !60, line: 221, column: 26)
!922 = !DILocation(line: 223, column: 10, scope: !921)
!923 = !DILocation(line: 223, column: 40, scope: !920)
!924 = !DILocation(line: 223, column: 35, scope: !920)
!925 = !DILocation(line: 223, column: 28, scope: !920)
!926 = !DILocation(line: 225, column: 13, scope: !927)
!927 = distinct !DILexicalBlock(scope: !921, file: !60, line: 225, column: 10)
!928 = !DILocation(line: 225, column: 10, scope: !921)
!929 = !DILocation(line: 225, column: 40, scope: !927)
!930 = !DILocation(line: 225, column: 35, scope: !927)
!931 = !DILocation(line: 225, column: 28, scope: !927)
!932 = !DILocation(line: 229, column: 11, scope: !921)
!933 = !DILocalVariable(name: "t", scope: !753, file: !60, line: 144, type: !8)
!934 = !DILocation(line: 230, column: 13, scope: !921)
!935 = !DILocation(line: 230, column: 70, scope: !921)
!936 = !DILocation(line: 230, column: 37, scope: !921)
!937 = !DILocation(line: 230, column: 19, scope: !921)
!938 = !DILocalVariable(name: "w", scope: !753, file: !60, line: 144, type: !8)
!939 = !DILocation(line: 232, column: 27, scope: !921)
!940 = !DILocalVariable(name: "u", scope: !753, file: !60, line: 144, type: !8)
!941 = !DILocation(line: 233, column: 31, scope: !921)
!942 = !DILocalVariable(name: "v", scope: !753, file: !60, line: 144, type: !8)
!943 = !DILocation(line: 234, column: 12, scope: !921)
!944 = !DILocalVariable(name: "t1", scope: !753, file: !60, line: 144, type: !8)
!945 = !DILocalVariable(name: "gf_u", scope: !946, file: !60, line: 235, type: !530)
!946 = distinct !DILexicalBlock(scope: !921, file: !60, line: 235, column: 5)
!947 = !DILocation(line: 0, scope: !946)
!948 = !DILocation(line: 235, column: 5, scope: !946)
!949 = !DILocalVariable(name: "is", scope: !753, file: !60, line: 146, type: !48)
!950 = !DILocation(line: 236, column: 5, scope: !951)
!951 = distinct !DILexicalBlock(scope: !921, file: !60, line: 236, column: 5)
!952 = !DILocalVariable(name: "sf_u", scope: !951, file: !60, line: 236, type: !530)
!953 = !DILocation(line: 0, scope: !951)
!954 = !DILocation(line: 237, column: 19, scope: !921)
!955 = !DILocation(line: 237, column: 12, scope: !921)
!956 = !DILocalVariable(name: "t2", scope: !753, file: !60, line: 144, type: !8)
!957 = !DILocation(line: 238, column: 3, scope: !921)
!958 = !DILocalVariable(name: "n", scope: !753, file: !60, line: 145, type: !48)
!959 = !DILocation(line: 242, column: 13, scope: !960)
!960 = distinct !DILexicalBlock(scope: !961, file: !60, line: 242, column: 10)
!961 = distinct !DILexicalBlock(scope: !917, file: !60, line: 238, column: 10)
!962 = !DILocation(line: 242, column: 10, scope: !961)
!963 = !DILocation(line: 243, column: 10, scope: !964)
!964 = distinct !DILexicalBlock(scope: !960, file: !60, line: 242, column: 28)
!965 = !DILocalVariable(name: "gf_u", scope: !966, file: !60, line: 245, type: !530)
!966 = distinct !DILexicalBlock(scope: !964, file: !60, line: 245, column: 7)
!967 = !DILocation(line: 0, scope: !966)
!968 = !DILocation(line: 245, column: 7, scope: !966)
!969 = !DILocation(line: 246, column: 5, scope: !964)
!970 = !DILocation(line: 0, scope: !961)
!971 = !DILocation(line: 247, column: 20, scope: !961)
!972 = !DILocation(line: 247, column: 28, scope: !961)
!973 = !DILocation(line: 247, column: 8, scope: !961)
!974 = !DILocation(line: 248, column: 13, scope: !961)
!975 = !DILocation(line: 250, column: 12, scope: !961)
!976 = !DILocation(line: 251, column: 12, scope: !977)
!977 = distinct !DILexicalBlock(scope: !961, file: !60, line: 251, column: 10)
!978 = !DILocation(line: 251, column: 10, scope: !961)
!979 = !DILocation(line: 251, column: 26, scope: !977)
!980 = !DILocation(line: 253, column: 14, scope: !981)
!981 = distinct !DILexicalBlock(scope: !977, file: !60, line: 253, column: 12)
!982 = !DILocation(line: 253, column: 12, scope: !977)
!983 = !DILocation(line: 253, column: 27, scope: !981)
!984 = !DILocation(line: 256, column: 11, scope: !985)
!985 = distinct !DILexicalBlock(scope: !981, file: !60, line: 254, column: 12)
!986 = !DILocation(line: 257, column: 12, scope: !985)
!987 = !DILocation(line: 0, scope: !981)
!988 = !DILocation(line: 0, scope: !977)
!989 = !DILocation(line: 250, column: 8, scope: !961)
!990 = !DILocalVariable(name: "sf_u", scope: !991, file: !60, line: 259, type: !530)
!991 = distinct !DILexicalBlock(scope: !961, file: !60, line: 259, column: 5)
!992 = !DILocation(line: 0, scope: !991)
!993 = !DILocation(line: 259, column: 5, scope: !991)
!994 = !DILocation(line: 262, column: 14, scope: !961)
!995 = !DILocation(line: 262, column: 12, scope: !961)
!996 = !DILocation(line: 263, column: 30, scope: !961)
!997 = !DILocation(line: 263, column: 23, scope: !961)
!998 = !DILocation(line: 264, column: 11, scope: !961)
!999 = !DILocalVariable(name: "s", scope: !753, file: !60, line: 144, type: !8)
!1000 = !DILocalVariable(name: "s_h", scope: !961, file: !60, line: 239, type: !8)
!1001 = !DILocalVariable(name: "gf_u", scope: !1002, file: !60, line: 266, type: !530)
!1002 = distinct !DILexicalBlock(scope: !961, file: !60, line: 266, column: 5)
!1003 = !DILocation(line: 0, scope: !1002)
!1004 = !DILocation(line: 266, column: 5, scope: !1002)
!1005 = !DILocation(line: 267, column: 5, scope: !1006)
!1006 = distinct !DILexicalBlock(scope: !961, file: !60, line: 267, column: 5)
!1007 = !DILocalVariable(name: "sf_u", scope: !1006, file: !60, line: 267, type: !530)
!1008 = !DILocation(line: 0, scope: !1006)
!1009 = !DILocation(line: 269, column: 5, scope: !1010)
!1010 = distinct !DILexicalBlock(scope: !961, file: !60, line: 269, column: 5)
!1011 = !DILocalVariable(name: "sf_u", scope: !1010, file: !60, line: 269, type: !530)
!1012 = !DILocation(line: 0, scope: !1010)
!1013 = !DILocalVariable(name: "t_h", scope: !961, file: !60, line: 239, type: !8)
!1014 = !DILocation(line: 270, column: 24, scope: !961)
!1015 = !DILocation(line: 270, column: 22, scope: !961)
!1016 = !DILocation(line: 270, column: 14, scope: !961)
!1017 = !DILocalVariable(name: "t_l", scope: !961, file: !60, line: 239, type: !8)
!1018 = !DILocation(line: 271, column: 21, scope: !961)
!1019 = !DILocation(line: 271, column: 35, scope: !961)
!1020 = !DILocation(line: 271, column: 13, scope: !961)
!1021 = !DILocalVariable(name: "s_l", scope: !961, file: !60, line: 239, type: !8)
!1022 = !DILocation(line: 273, column: 12, scope: !961)
!1023 = !DILocalVariable(name: "s2", scope: !961, file: !60, line: 239, type: !8)
!1024 = !DILocation(line: 274, column: 12, scope: !961)
!1025 = !DILocation(line: 276, column: 62, scope: !961)
!1026 = !DILocation(line: 275, column: 80, scope: !961)
!1027 = !DILocation(line: 275, column: 58, scope: !961)
!1028 = !DILocation(line: 274, column: 56, scope: !961)
!1029 = !DILocation(line: 274, column: 34, scope: !961)
!1030 = !DILocation(line: 274, column: 17, scope: !961)
!1031 = !DILocalVariable(name: "r", scope: !753, file: !60, line: 144, type: !8)
!1032 = !DILocation(line: 277, column: 22, scope: !961)
!1033 = !DILocation(line: 277, column: 7, scope: !961)
!1034 = !DILocation(line: 278, column: 15, scope: !961)
!1035 = !DILocation(line: 279, column: 25, scope: !961)
!1036 = !DILocation(line: 279, column: 30, scope: !961)
!1037 = !DILocalVariable(name: "gf_u", scope: !1038, file: !60, line: 280, type: !530)
!1038 = distinct !DILexicalBlock(scope: !961, file: !60, line: 280, column: 5)
!1039 = !DILocation(line: 0, scope: !1038)
!1040 = !DILocation(line: 280, column: 5, scope: !1038)
!1041 = !DILocation(line: 281, column: 5, scope: !1042)
!1042 = distinct !DILexicalBlock(scope: !961, file: !60, line: 281, column: 5)
!1043 = !DILocalVariable(name: "sf_u", scope: !1042, file: !60, line: 281, type: !530)
!1044 = !DILocation(line: 0, scope: !1042)
!1045 = !DILocation(line: 282, column: 23, scope: !961)
!1046 = !DILocation(line: 282, column: 41, scope: !961)
!1047 = !DILocation(line: 282, column: 13, scope: !961)
!1048 = !DILocation(line: 284, column: 13, scope: !961)
!1049 = !DILocation(line: 285, column: 25, scope: !961)
!1050 = !DILocation(line: 285, column: 19, scope: !961)
!1051 = !DILocation(line: 287, column: 13, scope: !961)
!1052 = !DILocalVariable(name: "p_h", scope: !753, file: !60, line: 143, type: !8)
!1053 = !DILocalVariable(name: "gf_u", scope: !1054, file: !60, line: 288, type: !530)
!1054 = distinct !DILexicalBlock(scope: !961, file: !60, line: 288, column: 5)
!1055 = !DILocation(line: 0, scope: !1054)
!1056 = !DILocation(line: 288, column: 5, scope: !1054)
!1057 = !DILocation(line: 289, column: 5, scope: !1058)
!1058 = distinct !DILexicalBlock(scope: !961, file: !60, line: 289, column: 5)
!1059 = !DILocalVariable(name: "sf_u", scope: !1058, file: !60, line: 289, type: !530)
!1060 = !DILocation(line: 0, scope: !1058)
!1061 = !DILocation(line: 290, column: 21, scope: !961)
!1062 = !DILocation(line: 290, column: 13, scope: !961)
!1063 = !DILocalVariable(name: "p_l", scope: !753, file: !60, line: 143, type: !8)
!1064 = !DILocation(line: 291, column: 26, scope: !961)
!1065 = !DILocalVariable(name: "z_h", scope: !753, file: !60, line: 143, type: !8)
!1066 = !DILocation(line: 292, column: 38, scope: !961)
!1067 = !DILocation(line: 292, column: 32, scope: !961)
!1068 = !DILocation(line: 292, column: 55, scope: !961)
!1069 = !DILocation(line: 292, column: 53, scope: !961)
!1070 = !DILocalVariable(name: "z_l", scope: !753, file: !60, line: 143, type: !8)
!1071 = !DILocation(line: 294, column: 9, scope: !961)
!1072 = !DILocation(line: 295, column: 20, scope: !961)
!1073 = !DILocation(line: 295, column: 30, scope: !961)
!1074 = !DILocation(line: 295, column: 28, scope: !961)
!1075 = !DILocation(line: 295, column: 52, scope: !961)
!1076 = !DILocalVariable(name: "gf_u", scope: !1077, file: !60, line: 296, type: !530)
!1077 = distinct !DILexicalBlock(scope: !961, file: !60, line: 296, column: 5)
!1078 = !DILocation(line: 0, scope: !1077)
!1079 = !DILocation(line: 296, column: 5, scope: !1077)
!1080 = !DILocation(line: 297, column: 5, scope: !1081)
!1081 = distinct !DILexicalBlock(scope: !961, file: !60, line: 297, column: 5)
!1082 = !DILocalVariable(name: "sf_u", scope: !1081, file: !60, line: 297, type: !530)
!1083 = !DILocation(line: 0, scope: !1081)
!1084 = !DILocation(line: 298, column: 25, scope: !961)
!1085 = !DILocation(line: 298, column: 33, scope: !961)
!1086 = !DILocation(line: 298, column: 31, scope: !961)
!1087 = !DILocation(line: 298, column: 55, scope: !961)
!1088 = !DILocation(line: 298, column: 14, scope: !961)
!1089 = !DILocation(line: 0, scope: !917)
!1090 = !DILocation(line: 302, column: 30, scope: !1091)
!1091 = distinct !DILexicalBlock(scope: !753, file: !60, line: 302, column: 8)
!1092 = !DILocation(line: 302, column: 38, scope: !1091)
!1093 = !DILocation(line: 302, column: 55, scope: !1091)
!1094 = !DILocation(line: 302, column: 44, scope: !1091)
!1095 = !DILocation(line: 302, column: 63, scope: !1091)
!1096 = !DILocation(line: 302, column: 8, scope: !753)
!1097 = !DILocation(line: 303, column: 5, scope: !1091)
!1098 = !DILocalVariable(name: "gf_u", scope: !1099, file: !60, line: 306, type: !530)
!1099 = distinct !DILexicalBlock(scope: !753, file: !60, line: 306, column: 3)
!1100 = !DILocation(line: 0, scope: !1099)
!1101 = !DILocation(line: 306, column: 3, scope: !1099)
!1102 = !DILocation(line: 307, column: 3, scope: !1103)
!1103 = distinct !DILexicalBlock(scope: !753, file: !60, line: 307, column: 3)
!1104 = !DILocalVariable(name: "sf_u", scope: !1103, file: !60, line: 307, type: !530)
!1105 = !DILocation(line: 0, scope: !1103)
!1106 = !DILocalVariable(name: "y1", scope: !753, file: !60, line: 144, type: !8)
!1107 = !DILocation(line: 308, column: 13, scope: !753)
!1108 = !DILocation(line: 308, column: 29, scope: !753)
!1109 = !DILocation(line: 308, column: 25, scope: !753)
!1110 = !DILocation(line: 309, column: 12, scope: !753)
!1111 = !DILocation(line: 310, column: 11, scope: !753)
!1112 = !DILocalVariable(name: "gf_u", scope: !1113, file: !60, line: 311, type: !530)
!1113 = distinct !DILexicalBlock(scope: !753, file: !60, line: 311, column: 3)
!1114 = !DILocation(line: 0, scope: !1113)
!1115 = !DILocation(line: 311, column: 3, scope: !1113)
!1116 = !DILocation(line: 312, column: 10, scope: !1117)
!1117 = distinct !DILexicalBlock(scope: !753, file: !60, line: 312, column: 8)
!1118 = !DILocation(line: 312, column: 8, scope: !753)
!1119 = !DILocation(line: 313, column: 14, scope: !1117)
!1120 = !DILocation(line: 313, column: 31, scope: !1117)
!1121 = !DILocation(line: 313, column: 5, scope: !1117)
!1122 = !DILocation(line: 315, column: 12, scope: !1123)
!1123 = distinct !DILexicalBlock(scope: !1117, file: !60, line: 315, column: 10)
!1124 = !DILocation(line: 315, column: 10, scope: !1117)
!1125 = !DILocation(line: 316, column: 16, scope: !1126)
!1126 = distinct !DILexicalBlock(scope: !1127, file: !60, line: 316, column: 12)
!1127 = distinct !DILexicalBlock(scope: !1123, file: !60, line: 315, column: 28)
!1128 = !DILocation(line: 316, column: 36, scope: !1126)
!1129 = !DILocation(line: 316, column: 32, scope: !1126)
!1130 = !DILocation(line: 316, column: 12, scope: !1127)
!1131 = !DILocation(line: 316, column: 53, scope: !1126)
!1132 = !DILocation(line: 316, column: 70, scope: !1126)
!1133 = !DILocation(line: 316, column: 44, scope: !1126)
!1134 = !DILocation(line: 318, column: 5, scope: !1127)
!1135 = !DILocation(line: 319, column: 16, scope: !1136)
!1136 = distinct !DILexicalBlock(scope: !1123, file: !60, line: 319, column: 12)
!1137 = !DILocation(line: 319, column: 31, scope: !1136)
!1138 = !DILocation(line: 319, column: 12, scope: !1123)
!1139 = !DILocation(line: 320, column: 18, scope: !1136)
!1140 = !DILocation(line: 320, column: 35, scope: !1136)
!1141 = !DILocation(line: 320, column: 9, scope: !1136)
!1142 = !DILocation(line: 322, column: 30, scope: !1143)
!1143 = distinct !DILexicalBlock(scope: !1136, file: !60, line: 322, column: 14)
!1144 = !DILocation(line: 322, column: 14, scope: !1136)
!1145 = !DILocation(line: 323, column: 25, scope: !1146)
!1146 = distinct !DILexicalBlock(scope: !1147, file: !60, line: 323, column: 16)
!1147 = distinct !DILexicalBlock(scope: !1143, file: !60, line: 322, column: 46)
!1148 = !DILocation(line: 323, column: 20, scope: !1146)
!1149 = !DILocation(line: 323, column: 16, scope: !1147)
!1150 = !DILocation(line: 323, column: 42, scope: !1146)
!1151 = !DILocation(line: 323, column: 59, scope: !1146)
!1152 = !DILocation(line: 323, column: 33, scope: !1146)
!1153 = !DILocation(line: 325, column: 9, scope: !1147)
!1154 = !DILocation(line: 329, column: 9, scope: !753)
!1155 = !DILocalVariable(name: "i", scope: !753, file: !60, line: 145, type: !48)
!1156 = !DILocation(line: 332, column: 10, scope: !1157)
!1157 = distinct !DILexicalBlock(scope: !753, file: !60, line: 332, column: 8)
!1158 = !DILocation(line: 332, column: 8, scope: !753)
!1159 = !DILocation(line: 330, column: 11, scope: !753)
!1160 = !DILocation(line: 333, column: 33, scope: !1161)
!1161 = distinct !DILexicalBlock(scope: !1157, file: !60, line: 332, column: 25)
!1162 = !DILocation(line: 333, column: 26, scope: !1161)
!1163 = !DILocation(line: 333, column: 11, scope: !1161)
!1164 = !DILocation(line: 334, column: 30, scope: !1161)
!1165 = !DILocation(line: 334, column: 38, scope: !1161)
!1166 = !DILocation(line: 335, column: 5, scope: !1167)
!1167 = distinct !DILexicalBlock(scope: !1161, file: !60, line: 335, column: 5)
!1168 = !DILocalVariable(name: "sf_u", scope: !1167, file: !60, line: 335, type: !530)
!1169 = !DILocation(line: 0, scope: !1167)
!1170 = !DILocation(line: 336, column: 15, scope: !1161)
!1171 = !DILocation(line: 336, column: 30, scope: !1161)
!1172 = !DILocation(line: 336, column: 53, scope: !1161)
!1173 = !DILocation(line: 336, column: 45, scope: !1161)
!1174 = !DILocation(line: 337, column: 12, scope: !1175)
!1175 = distinct !DILexicalBlock(scope: !1161, file: !60, line: 337, column: 10)
!1176 = !DILocation(line: 337, column: 10, scope: !1161)
!1177 = !DILocation(line: 337, column: 22, scope: !1175)
!1178 = !DILocation(line: 337, column: 18, scope: !1175)
!1179 = !DILocation(line: 0, scope: !1161)
!1180 = !DILocation(line: 338, column: 9, scope: !1161)
!1181 = !DILocation(line: 339, column: 3, scope: !1161)
!1182 = !DILocation(line: 340, column: 11, scope: !753)
!1183 = !DILocalVariable(name: "gf_u", scope: !1184, file: !60, line: 341, type: !530)
!1184 = distinct !DILexicalBlock(scope: !753, file: !60, line: 341, column: 3)
!1185 = !DILocation(line: 0, scope: !1184)
!1186 = !DILocation(line: 341, column: 3, scope: !1184)
!1187 = !DILocation(line: 342, column: 3, scope: !1188)
!1188 = distinct !DILexicalBlock(scope: !753, file: !60, line: 342, column: 3)
!1189 = !DILocalVariable(name: "sf_u", scope: !1188, file: !60, line: 342, type: !530)
!1190 = !DILocation(line: 0, scope: !1188)
!1191 = !DILocation(line: 343, column: 9, scope: !753)
!1192 = !DILocation(line: 344, column: 19, scope: !753)
!1193 = !DILocation(line: 344, column: 13, scope: !753)
!1194 = !DILocation(line: 344, column: 49, scope: !753)
!1195 = !DILocation(line: 344, column: 45, scope: !753)
!1196 = !DILocation(line: 345, column: 9, scope: !753)
!1197 = !DILocation(line: 346, column: 15, scope: !753)
!1198 = !DILocation(line: 346, column: 9, scope: !753)
!1199 = !DILocation(line: 347, column: 10, scope: !753)
!1200 = !DILocation(line: 349, column: 55, scope: !753)
!1201 = !DILocation(line: 348, column: 74, scope: !753)
!1202 = !DILocation(line: 348, column: 53, scope: !753)
!1203 = !DILocation(line: 348, column: 32, scope: !753)
!1204 = !DILocation(line: 348, column: 11, scope: !753)
!1205 = !DILocation(line: 350, column: 12, scope: !753)
!1206 = !DILocation(line: 350, column: 26, scope: !753)
!1207 = !DILocation(line: 350, column: 19, scope: !753)
!1208 = !DILocation(line: 350, column: 50, scope: !753)
!1209 = !DILocation(line: 350, column: 44, scope: !753)
!1210 = !DILocation(line: 351, column: 22, scope: !753)
!1211 = !DILocalVariable(name: "gf_u", scope: !1212, file: !60, line: 352, type: !530)
!1212 = distinct !DILexicalBlock(scope: !753, file: !60, line: 352, column: 3)
!1213 = !DILocation(line: 0, scope: !1212)
!1214 = !DILocation(line: 352, column: 3, scope: !1212)
!1215 = !DILocation(line: 353, column: 12, scope: !753)
!1216 = !DILocation(line: 353, column: 5, scope: !753)
!1217 = !DILocation(line: 354, column: 20, scope: !1218)
!1218 = distinct !DILexicalBlock(scope: !753, file: !60, line: 354, column: 8)
!1219 = !DILocation(line: 354, column: 8, scope: !753)
!1220 = !DILocation(line: 354, column: 31, scope: !1218)
!1221 = !DILocation(line: 354, column: 27, scope: !1218)
!1222 = !DILocalVariable(name: "sf_u", scope: !1223, file: !60, line: 355, type: !530)
!1223 = distinct !DILexicalBlock(scope: !1218, file: !60, line: 355, column: 8)
!1224 = !DILocation(line: 0, scope: !1223)
!1225 = !DILocation(line: 355, column: 8, scope: !1223)
!1226 = !DILocation(line: 0, scope: !1218)
!1227 = !DILocation(line: 356, column: 12, scope: !753)
!1228 = !DILocation(line: 356, column: 3, scope: !753)
!1229 = !DILocation(line: 357, column: 1, scope: !753)
!1230 = distinct !DISubprogram(name: "basicmath___isinff", scope: !60, file: !60, line: 710, type: !1231, scopeLine: 711, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !53, retainedNodes: !324)
!1231 = !DISubroutineType(types: !1232)
!1232 = !{!48, !8}
!1233 = !DILocalVariable(name: "x", arg: 1, scope: !1230, file: !60, line: 710, type: !8)
!1234 = !DILocation(line: 0, scope: !1230)
!1235 = !DILocalVariable(name: "gf_u", scope: !1236, file: !60, line: 713, type: !530)
!1236 = distinct !DILexicalBlock(scope: !1230, file: !60, line: 713, column: 3)
!1237 = !DILocation(line: 0, scope: !1236)
!1238 = !DILocation(line: 713, column: 3, scope: !1236)
!1239 = !DILocalVariable(name: "ix", scope: !1230, file: !60, line: 712, type: !48)
!1240 = !DILocation(line: 714, column: 10, scope: !1230)
!1241 = !DILocalVariable(name: "t", scope: !1230, file: !60, line: 712, type: !48)
!1242 = !DILocation(line: 717, column: 30, scope: !1230)
!1243 = !DILocation(line: 717, column: 23, scope: !1230)
!1244 = !DILocation(line: 717, column: 3, scope: !1230)
!1245 = distinct !DISubprogram(name: "basicmath___fabsf", scope: !60, file: !60, line: 696, type: !524, scopeLine: 697, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !53, retainedNodes: !324)
!1246 = !DILocalVariable(name: "x", arg: 1, scope: !1245, file: !60, line: 696, type: !8)
!1247 = !DILocation(line: 0, scope: !1245)
!1248 = !DILocalVariable(name: "gf_u", scope: !1249, file: !60, line: 699, type: !530)
!1249 = distinct !DILexicalBlock(scope: !1245, file: !60, line: 699, column: 3)
!1250 = !DILocation(line: 0, scope: !1249)
!1251 = !DILocation(line: 699, column: 3, scope: !1249)
!1252 = !DILocalVariable(name: "ix", scope: !1245, file: !60, line: 698, type: !56)
!1253 = !DILocation(line: 700, column: 3, scope: !1254)
!1254 = distinct !DILexicalBlock(scope: !1245, file: !60, line: 700, column: 3)
!1255 = !DILocalVariable(name: "sf_u", scope: !1254, file: !60, line: 700, type: !530)
!1256 = !DILocation(line: 0, scope: !1254)
!1257 = !DILocation(line: 701, column: 3, scope: !1245)
!1258 = distinct !DISubprogram(name: "basicmath___scalbnf", scope: !60, file: !60, line: 728, type: !1259, scopeLine: 729, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !53, retainedNodes: !324)
!1259 = !DISubroutineType(types: !1260)
!1260 = !{!8, !8, !48}
!1261 = !DILocalVariable(name: "x", arg: 1, scope: !1258, file: !60, line: 728, type: !8)
!1262 = !DILocation(line: 0, scope: !1258)
!1263 = !DILocalVariable(name: "n", arg: 2, scope: !1258, file: !60, line: 728, type: !48)
!1264 = !DILocalVariable(name: "gf_u", scope: !1265, file: !60, line: 731, type: !530)
!1265 = distinct !DILexicalBlock(scope: !1258, file: !60, line: 731, column: 3)
!1266 = !DILocation(line: 0, scope: !1265)
!1267 = !DILocation(line: 731, column: 3, scope: !1265)
!1268 = !DILocalVariable(name: "ix", scope: !1258, file: !60, line: 730, type: !48)
!1269 = !DILocation(line: 732, column: 27, scope: !1258)
!1270 = !DILocalVariable(name: "k", scope: !1258, file: !60, line: 730, type: !48)
!1271 = !DILocation(line: 733, column: 10, scope: !1272)
!1272 = distinct !DILexicalBlock(scope: !1258, file: !60, line: 733, column: 8)
!1273 = !DILocation(line: 733, column: 8, scope: !1258)
!1274 = !DILocation(line: 734, column: 15, scope: !1275)
!1275 = distinct !DILexicalBlock(scope: !1276, file: !60, line: 734, column: 10)
!1276 = distinct !DILexicalBlock(scope: !1272, file: !60, line: 733, column: 17)
!1277 = !DILocation(line: 734, column: 30, scope: !1275)
!1278 = !DILocation(line: 734, column: 10, scope: !1276)
!1279 = !DILocation(line: 734, column: 37, scope: !1275)
!1280 = !DILocation(line: 735, column: 7, scope: !1276)
!1281 = !DILocalVariable(name: "gf_u", scope: !1282, file: !60, line: 736, type: !530)
!1282 = distinct !DILexicalBlock(scope: !1276, file: !60, line: 736, column: 5)
!1283 = !DILocation(line: 0, scope: !1282)
!1284 = !DILocation(line: 736, column: 5, scope: !1282)
!1285 = !DILocation(line: 737, column: 31, scope: !1276)
!1286 = !DILocation(line: 737, column: 39, scope: !1276)
!1287 = !DILocation(line: 738, column: 3, scope: !1276)
!1288 = !DILocation(line: 739, column: 10, scope: !1289)
!1289 = distinct !DILexicalBlock(scope: !1258, file: !60, line: 739, column: 8)
!1290 = !DILocation(line: 739, column: 8, scope: !1258)
!1291 = !DILocation(line: 739, column: 29, scope: !1289)
!1292 = !DILocation(line: 739, column: 20, scope: !1289)
!1293 = !DILocation(line: 740, column: 9, scope: !1258)
!1294 = !DILocation(line: 741, column: 10, scope: !1295)
!1295 = distinct !DILexicalBlock(scope: !1258, file: !60, line: 741, column: 8)
!1296 = !DILocation(line: 741, column: 18, scope: !1295)
!1297 = !DILocation(line: 741, column: 23, scope: !1295)
!1298 = !DILocation(line: 741, column: 8, scope: !1258)
!1299 = !DILocation(line: 742, column: 29, scope: !1295)
!1300 = !DILocation(line: 742, column: 27, scope: !1295)
!1301 = !DILocation(line: 742, column: 5, scope: !1295)
!1302 = !DILocation(line: 744, column: 10, scope: !1303)
!1303 = distinct !DILexicalBlock(scope: !1258, file: !60, line: 744, column: 8)
!1304 = !DILocation(line: 744, column: 8, scope: !1258)
!1305 = !DILocation(line: 745, column: 29, scope: !1303)
!1306 = !DILocation(line: 745, column: 27, scope: !1303)
!1307 = !DILocation(line: 745, column: 5, scope: !1303)
!1308 = !DILocation(line: 747, column: 10, scope: !1309)
!1309 = distinct !DILexicalBlock(scope: !1258, file: !60, line: 747, column: 8)
!1310 = !DILocation(line: 747, column: 8, scope: !1258)
!1311 = !DILocation(line: 748, column: 5, scope: !1312)
!1312 = distinct !DILexicalBlock(scope: !1313, file: !60, line: 748, column: 5)
!1313 = distinct !DILexicalBlock(scope: !1309, file: !60, line: 747, column: 16)
!1314 = !DILocalVariable(name: "sf_u", scope: !1312, file: !60, line: 748, type: !530)
!1315 = !DILocation(line: 0, scope: !1312)
!1316 = !DILocation(line: 749, column: 5, scope: !1313)
!1317 = !DILocation(line: 751, column: 10, scope: !1318)
!1318 = distinct !DILexicalBlock(scope: !1258, file: !60, line: 751, column: 8)
!1319 = !DILocation(line: 751, column: 8, scope: !1258)
!1320 = !DILocation(line: 752, column: 29, scope: !1318)
!1321 = !DILocation(line: 752, column: 27, scope: !1318)
!1322 = !DILocation(line: 752, column: 5, scope: !1318)
!1323 = !DILocation(line: 755, column: 3, scope: !1324)
!1324 = distinct !DILexicalBlock(scope: !1258, file: !60, line: 755, column: 3)
!1325 = !DILocalVariable(name: "sf_u", scope: !1324, file: !60, line: 755, type: !530)
!1326 = !DILocation(line: 0, scope: !1324)
!1327 = !DILocation(line: 756, column: 12, scope: !1258)
!1328 = !DILocation(line: 756, column: 3, scope: !1258)
!1329 = !DILocation(line: 757, column: 1, scope: !1258)
!1330 = distinct !DISubprogram(name: "basicmath___copysignf", scope: !60, file: !60, line: 642, type: !754, scopeLine: 643, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !53, retainedNodes: !324)
!1331 = !DILocalVariable(name: "x", arg: 1, scope: !1330, file: !60, line: 642, type: !8)
!1332 = !DILocation(line: 0, scope: !1330)
!1333 = !DILocalVariable(name: "y", arg: 2, scope: !1330, file: !60, line: 642, type: !8)
!1334 = !DILocalVariable(name: "gf_u", scope: !1335, file: !60, line: 645, type: !530)
!1335 = distinct !DILexicalBlock(scope: !1330, file: !60, line: 645, column: 3)
!1336 = !DILocation(line: 0, scope: !1335)
!1337 = !DILocation(line: 645, column: 3, scope: !1335)
!1338 = !DILocalVariable(name: "ix", scope: !1330, file: !60, line: 644, type: !56)
!1339 = !DILocalVariable(name: "gf_u", scope: !1340, file: !60, line: 646, type: !530)
!1340 = distinct !DILexicalBlock(scope: !1330, file: !60, line: 646, column: 3)
!1341 = !DILocation(line: 0, scope: !1340)
!1342 = !DILocation(line: 646, column: 3, scope: !1340)
!1343 = !DILocalVariable(name: "iy", scope: !1330, file: !60, line: 644, type: !56)
!1344 = !DILocation(line: 647, column: 3, scope: !1345)
!1345 = distinct !DILexicalBlock(scope: !1330, file: !60, line: 647, column: 3)
!1346 = !DILocalVariable(name: "sf_u", scope: !1345, file: !60, line: 647, type: !530)
!1347 = !DILocation(line: 0, scope: !1345)
!1348 = !DILocation(line: 648, column: 3, scope: !1330)
!1349 = distinct !DISubprogram(name: "basicmath___ieee754_rem_pio2f", scope: !60, file: !60, line: 398, type: !1350, scopeLine: 399, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !53, retainedNodes: !324)
!1350 = !DISubroutineType(types: !1351)
!1351 = !{!48, !8, !446}
!1352 = !DILocalVariable(name: "x", arg: 1, scope: !1349, file: !60, line: 398, type: !8)
!1353 = !DILocation(line: 0, scope: !1349)
!1354 = !DILocalVariable(name: "y", arg: 2, scope: !1349, file: !60, line: 398, type: !446)
!1355 = !DILocalVariable(name: "gf_u", scope: !1356, file: !60, line: 403, type: !530)
!1356 = distinct !DILexicalBlock(scope: !1349, file: !60, line: 403, column: 3)
!1357 = !DILocation(line: 0, scope: !1356)
!1358 = !DILocation(line: 403, column: 3, scope: !1356)
!1359 = !DILocalVariable(name: "hx", scope: !1349, file: !60, line: 401, type: !48)
!1360 = !DILocation(line: 404, column: 11, scope: !1349)
!1361 = !DILocalVariable(name: "ix", scope: !1349, file: !60, line: 401, type: !48)
!1362 = !DILocation(line: 405, column: 11, scope: !1363)
!1363 = distinct !DILexicalBlock(scope: !1349, file: !60, line: 405, column: 8)
!1364 = !DILocation(line: 405, column: 8, scope: !1349)
!1365 = !DILocation(line: 406, column: 12, scope: !1366)
!1366 = distinct !DILexicalBlock(scope: !1363, file: !60, line: 405, column: 27)
!1367 = !DILocation(line: 407, column: 5, scope: !1366)
!1368 = !DILocation(line: 407, column: 12, scope: !1366)
!1369 = !DILocation(line: 408, column: 5, scope: !1366)
!1370 = !DILocation(line: 410, column: 11, scope: !1371)
!1371 = distinct !DILexicalBlock(scope: !1349, file: !60, line: 410, column: 8)
!1372 = !DILocation(line: 410, column: 8, scope: !1349)
!1373 = !DILocation(line: 411, column: 13, scope: !1374)
!1374 = distinct !DILexicalBlock(scope: !1375, file: !60, line: 411, column: 10)
!1375 = distinct !DILexicalBlock(scope: !1371, file: !60, line: 410, column: 26)
!1376 = !DILocation(line: 411, column: 10, scope: !1375)
!1377 = !DILocation(line: 412, column: 13, scope: !1378)
!1378 = distinct !DILexicalBlock(scope: !1374, file: !60, line: 411, column: 19)
!1379 = !DILocalVariable(name: "z", scope: !1349, file: !60, line: 400, type: !8)
!1380 = !DILocation(line: 413, column: 17, scope: !1381)
!1381 = distinct !DILexicalBlock(scope: !1378, file: !60, line: 413, column: 12)
!1382 = !DILocation(line: 413, column: 32, scope: !1381)
!1383 = !DILocation(line: 413, column: 12, scope: !1378)
!1384 = !DILocation(line: 414, column: 20, scope: !1385)
!1385 = distinct !DILexicalBlock(scope: !1381, file: !60, line: 413, column: 48)
!1386 = !DILocation(line: 414, column: 16, scope: !1385)
!1387 = !DILocation(line: 415, column: 22, scope: !1385)
!1388 = !DILocation(line: 415, column: 33, scope: !1385)
!1389 = !DILocation(line: 415, column: 9, scope: !1385)
!1390 = !DILocation(line: 415, column: 16, scope: !1385)
!1391 = !DILocation(line: 416, column: 7, scope: !1385)
!1392 = !DILocation(line: 417, column: 11, scope: !1393)
!1393 = distinct !DILexicalBlock(scope: !1381, file: !60, line: 416, column: 14)
!1394 = !DILocation(line: 418, column: 20, scope: !1393)
!1395 = !DILocation(line: 418, column: 16, scope: !1393)
!1396 = !DILocation(line: 419, column: 22, scope: !1393)
!1397 = !DILocation(line: 419, column: 33, scope: !1393)
!1398 = !DILocation(line: 419, column: 9, scope: !1393)
!1399 = !DILocation(line: 419, column: 16, scope: !1393)
!1400 = !DILocation(line: 421, column: 7, scope: !1378)
!1401 = !DILocation(line: 423, column: 13, scope: !1402)
!1402 = distinct !DILexicalBlock(scope: !1374, file: !60, line: 422, column: 12)
!1403 = !DILocation(line: 424, column: 17, scope: !1404)
!1404 = distinct !DILexicalBlock(scope: !1402, file: !60, line: 424, column: 12)
!1405 = !DILocation(line: 424, column: 32, scope: !1404)
!1406 = !DILocation(line: 424, column: 12, scope: !1402)
!1407 = !DILocation(line: 425, column: 20, scope: !1408)
!1408 = distinct !DILexicalBlock(scope: !1404, file: !60, line: 424, column: 48)
!1409 = !DILocation(line: 425, column: 16, scope: !1408)
!1410 = !DILocation(line: 426, column: 22, scope: !1408)
!1411 = !DILocation(line: 426, column: 33, scope: !1408)
!1412 = !DILocation(line: 426, column: 9, scope: !1408)
!1413 = !DILocation(line: 426, column: 16, scope: !1408)
!1414 = !DILocation(line: 427, column: 7, scope: !1408)
!1415 = !DILocation(line: 428, column: 11, scope: !1416)
!1416 = distinct !DILexicalBlock(scope: !1404, file: !60, line: 427, column: 14)
!1417 = !DILocation(line: 429, column: 20, scope: !1416)
!1418 = !DILocation(line: 429, column: 16, scope: !1416)
!1419 = !DILocation(line: 430, column: 22, scope: !1416)
!1420 = !DILocation(line: 430, column: 33, scope: !1416)
!1421 = !DILocation(line: 430, column: 9, scope: !1416)
!1422 = !DILocation(line: 430, column: 16, scope: !1416)
!1423 = !DILocation(line: 432, column: 7, scope: !1402)
!1424 = !DILocation(line: 435, column: 11, scope: !1425)
!1425 = distinct !DILexicalBlock(scope: !1349, file: !60, line: 435, column: 8)
!1426 = !DILocation(line: 435, column: 8, scope: !1349)
!1427 = !DILocation(line: 436, column: 10, scope: !1428)
!1428 = distinct !DILexicalBlock(scope: !1425, file: !60, line: 435, column: 27)
!1429 = !DILocalVariable(name: "t", scope: !1349, file: !60, line: 400, type: !8)
!1430 = !DILocation(line: 437, column: 46, scope: !1428)
!1431 = !DILocation(line: 437, column: 10, scope: !1428)
!1432 = !DILocalVariable(name: "n", scope: !1349, file: !60, line: 401, type: !48)
!1433 = !DILocation(line: 438, column: 10, scope: !1428)
!1434 = !DILocalVariable(name: "fn", scope: !1349, file: !60, line: 400, type: !8)
!1435 = !DILocation(line: 439, column: 12, scope: !1428)
!1436 = !DILocalVariable(name: "r", scope: !1349, file: !60, line: 400, type: !8)
!1437 = !DILocation(line: 440, column: 13, scope: !1428)
!1438 = !DILocalVariable(name: "w", scope: !1349, file: !60, line: 400, type: !8)
!1439 = !DILocation(line: 441, column: 12, scope: !1440)
!1440 = distinct !DILexicalBlock(scope: !1428, file: !60, line: 441, column: 10)
!1441 = !DILocation(line: 441, column: 17, scope: !1440)
!1442 = !DILocation(line: 441, column: 36, scope: !1440)
!1443 = !DILocation(line: 441, column: 75, scope: !1440)
!1444 = !DILocation(line: 441, column: 54, scope: !1440)
!1445 = !DILocation(line: 441, column: 51, scope: !1440)
!1446 = !DILocation(line: 441, column: 10, scope: !1428)
!1447 = !DILocation(line: 442, column: 18, scope: !1448)
!1448 = distinct !DILexicalBlock(scope: !1440, file: !60, line: 441, column: 82)
!1449 = !DILocation(line: 442, column: 14, scope: !1448)
!1450 = !DILocation(line: 443, column: 5, scope: !1448)
!1451 = !DILocation(line: 445, column: 15, scope: !1452)
!1452 = distinct !DILexicalBlock(scope: !1440, file: !60, line: 443, column: 12)
!1453 = !DILocalVariable(name: "j", scope: !1349, file: !60, line: 401, type: !48)
!1454 = !DILocation(line: 446, column: 18, scope: !1452)
!1455 = !DILocation(line: 446, column: 14, scope: !1452)
!1456 = !DILocalVariable(name: "gf_u", scope: !1457, file: !60, line: 447, type: !530)
!1457 = distinct !DILexicalBlock(scope: !1452, file: !60, line: 447, column: 7)
!1458 = !DILocation(line: 0, scope: !1457)
!1459 = !DILocation(line: 447, column: 7, scope: !1457)
!1460 = !DILocalVariable(name: "high", scope: !1452, file: !60, line: 444, type: !56)
!1461 = !DILocation(line: 0, scope: !1452)
!1462 = !DILocation(line: 448, column: 24, scope: !1452)
!1463 = !DILocation(line: 448, column: 32, scope: !1452)
!1464 = !DILocation(line: 448, column: 13, scope: !1452)
!1465 = !DILocalVariable(name: "i", scope: !1349, file: !60, line: 401, type: !48)
!1466 = !DILocation(line: 449, column: 14, scope: !1467)
!1467 = distinct !DILexicalBlock(scope: !1452, file: !60, line: 449, column: 12)
!1468 = !DILocation(line: 449, column: 12, scope: !1452)
!1469 = !DILocation(line: 451, column: 17, scope: !1470)
!1470 = distinct !DILexicalBlock(scope: !1467, file: !60, line: 449, column: 20)
!1471 = !DILocation(line: 452, column: 16, scope: !1470)
!1472 = !DILocation(line: 453, column: 45, scope: !1470)
!1473 = !DILocation(line: 453, column: 51, scope: !1470)
!1474 = !DILocation(line: 453, column: 37, scope: !1470)
!1475 = !DILocation(line: 454, column: 20, scope: !1470)
!1476 = !DILocalVariable(name: "gf_u", scope: !1477, file: !60, line: 455, type: !530)
!1477 = distinct !DILexicalBlock(scope: !1470, file: !60, line: 455, column: 9)
!1478 = !DILocation(line: 0, scope: !1477)
!1479 = !DILocation(line: 455, column: 9, scope: !1477)
!1480 = !DILocation(line: 456, column: 26, scope: !1470)
!1481 = !DILocation(line: 456, column: 34, scope: !1470)
!1482 = !DILocation(line: 456, column: 15, scope: !1470)
!1483 = !DILocation(line: 457, column: 16, scope: !1484)
!1484 = distinct !DILexicalBlock(scope: !1470, file: !60, line: 457, column: 14)
!1485 = !DILocation(line: 457, column: 14, scope: !1470)
!1486 = !DILocation(line: 459, column: 19, scope: !1487)
!1487 = distinct !DILexicalBlock(scope: !1484, file: !60, line: 457, column: 24)
!1488 = !DILocation(line: 460, column: 18, scope: !1487)
!1489 = !DILocation(line: 461, column: 47, scope: !1487)
!1490 = !DILocation(line: 461, column: 53, scope: !1487)
!1491 = !DILocation(line: 461, column: 39, scope: !1487)
!1492 = !DILocation(line: 462, column: 22, scope: !1487)
!1493 = !DILocation(line: 463, column: 9, scope: !1487)
!1494 = !DILocation(line: 0, scope: !1470)
!1495 = !DILocation(line: 464, column: 7, scope: !1470)
!1496 = !DILocation(line: 0, scope: !1428)
!1497 = !DILocation(line: 466, column: 20, scope: !1428)
!1498 = !DILocation(line: 466, column: 18, scope: !1428)
!1499 = !DILocation(line: 466, column: 29, scope: !1428)
!1500 = !DILocation(line: 466, column: 5, scope: !1428)
!1501 = !DILocation(line: 466, column: 12, scope: !1428)
!1502 = !DILocation(line: 467, column: 13, scope: !1503)
!1503 = distinct !DILexicalBlock(scope: !1428, file: !60, line: 467, column: 10)
!1504 = !DILocation(line: 467, column: 10, scope: !1428)
!1505 = !DILocation(line: 468, column: 17, scope: !1506)
!1506 = distinct !DILexicalBlock(scope: !1503, file: !60, line: 467, column: 20)
!1507 = !DILocation(line: 468, column: 16, scope: !1506)
!1508 = !DILocation(line: 468, column: 14, scope: !1506)
!1509 = !DILocation(line: 469, column: 17, scope: !1506)
!1510 = !DILocation(line: 469, column: 16, scope: !1506)
!1511 = !DILocation(line: 469, column: 7, scope: !1506)
!1512 = !DILocation(line: 469, column: 14, scope: !1506)
!1513 = !DILocation(line: 470, column: 14, scope: !1506)
!1514 = !DILocation(line: 470, column: 7, scope: !1506)
!1515 = !DILocation(line: 471, column: 14, scope: !1503)
!1516 = !DILocation(line: 476, column: 11, scope: !1517)
!1517 = distinct !DILexicalBlock(scope: !1349, file: !60, line: 476, column: 8)
!1518 = !DILocation(line: 476, column: 8, scope: !1349)
!1519 = !DILocation(line: 477, column: 25, scope: !1520)
!1520 = distinct !DILexicalBlock(scope: !1517, file: !60, line: 476, column: 27)
!1521 = !DILocation(line: 477, column: 14, scope: !1520)
!1522 = !DILocation(line: 477, column: 21, scope: !1520)
!1523 = !DILocation(line: 477, column: 12, scope: !1520)
!1524 = !DILocation(line: 478, column: 5, scope: !1520)
!1525 = !DILocation(line: 484, column: 23, scope: !1349)
!1526 = !DILocation(line: 484, column: 12, scope: !1349)
!1527 = !DILocation(line: 484, column: 19, scope: !1349)
!1528 = !DILocation(line: 484, column: 10, scope: !1349)
!1529 = !DILocation(line: 485, column: 3, scope: !1349)
!1530 = !DILocation(line: 486, column: 1, scope: !1349)
!1531 = distinct !DISubprogram(name: "basicmath___kernel_cosf", scope: !60, file: !60, line: 574, type: !754, scopeLine: 575, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !53, retainedNodes: !324)
!1532 = !DILocalVariable(name: "x", arg: 1, scope: !1531, file: !60, line: 574, type: !8)
!1533 = !DILocation(line: 0, scope: !1531)
!1534 = !DILocalVariable(name: "y", arg: 2, scope: !1531, file: !60, line: 574, type: !8)
!1535 = !DILocalVariable(name: "gf_u", scope: !1536, file: !60, line: 578, type: !530)
!1536 = distinct !DILexicalBlock(scope: !1531, file: !60, line: 578, column: 3)
!1537 = !DILocation(line: 0, scope: !1536)
!1538 = !DILocation(line: 578, column: 3, scope: !1536)
!1539 = !DILocalVariable(name: "ix", scope: !1531, file: !60, line: 577, type: !48)
!1540 = !DILocation(line: 579, column: 6, scope: !1531)
!1541 = !DILocation(line: 580, column: 11, scope: !1542)
!1542 = distinct !DILexicalBlock(scope: !1531, file: !60, line: 580, column: 8)
!1543 = !DILocation(line: 580, column: 8, scope: !1531)
!1544 = !DILocation(line: 581, column: 12, scope: !1545)
!1545 = distinct !DILexicalBlock(scope: !1546, file: !60, line: 581, column: 10)
!1546 = distinct !DILexicalBlock(scope: !1542, file: !60, line: 580, column: 26)
!1547 = !DILocation(line: 581, column: 23, scope: !1545)
!1548 = !DILocation(line: 581, column: 10, scope: !1546)
!1549 = !DILocation(line: 581, column: 30, scope: !1545)
!1550 = !DILocation(line: 582, column: 3, scope: !1546)
!1551 = !DILocation(line: 583, column: 10, scope: !1531)
!1552 = !DILocalVariable(name: "z", scope: !1531, file: !60, line: 576, type: !8)
!1553 = !DILocation(line: 585, column: 71, scope: !1531)
!1554 = !DILocation(line: 585, column: 50, scope: !1531)
!1555 = !DILocation(line: 584, column: 69, scope: !1531)
!1556 = !DILocation(line: 584, column: 48, scope: !1531)
!1557 = !DILocation(line: 584, column: 27, scope: !1531)
!1558 = !DILocation(line: 584, column: 10, scope: !1531)
!1559 = !DILocalVariable(name: "r", scope: !1531, file: !60, line: 576, type: !8)
!1560 = !DILocation(line: 586, column: 11, scope: !1561)
!1561 = distinct !DILexicalBlock(scope: !1531, file: !60, line: 586, column: 8)
!1562 = !DILocation(line: 586, column: 8, scope: !1531)
!1563 = !DILocation(line: 587, column: 58, scope: !1561)
!1564 = !DILocation(line: 587, column: 48, scope: !1561)
!1565 = !DILocation(line: 587, column: 26, scope: !1561)
!1566 = !DILocation(line: 587, column: 5, scope: !1561)
!1567 = !DILocation(line: 589, column: 13, scope: !1568)
!1568 = distinct !DILexicalBlock(scope: !1569, file: !60, line: 589, column: 10)
!1569 = distinct !DILexicalBlock(scope: !1561, file: !60, line: 588, column: 8)
!1570 = !DILocation(line: 589, column: 10, scope: !1569)
!1571 = !DILocalVariable(name: "qx", scope: !1531, file: !60, line: 576, type: !8)
!1572 = !DILocation(line: 590, column: 7, scope: !1568)
!1573 = !DILocation(line: 592, column: 7, scope: !1574)
!1574 = distinct !DILexicalBlock(scope: !1575, file: !60, line: 592, column: 7)
!1575 = distinct !DILexicalBlock(scope: !1568, file: !60, line: 591, column: 10)
!1576 = !DILocalVariable(name: "sf_u", scope: !1574, file: !60, line: 592, type: !530)
!1577 = !DILocation(line: 0, scope: !1574)
!1578 = !DILocation(line: 0, scope: !1568)
!1579 = !DILocation(line: 594, column: 28, scope: !1569)
!1580 = !DILocalVariable(name: "hz", scope: !1531, file: !60, line: 576, type: !8)
!1581 = !DILocation(line: 595, column: 24, scope: !1569)
!1582 = !DILocalVariable(name: "a", scope: !1531, file: !60, line: 576, type: !8)
!1583 = !DILocation(line: 596, column: 31, scope: !1569)
!1584 = !DILocation(line: 596, column: 21, scope: !1569)
!1585 = !DILocation(line: 596, column: 14, scope: !1569)
!1586 = !DILocation(line: 596, column: 5, scope: !1569)
!1587 = !DILocation(line: 598, column: 1, scope: !1531)
!1588 = distinct !DISubprogram(name: "basicmath___kernel_sinf", scope: !60, file: !60, line: 612, type: !1589, scopeLine: 613, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !53, retainedNodes: !324)
!1589 = !DISubroutineType(types: !1590)
!1590 = !{!8, !8, !8, !48}
!1591 = !DILocalVariable(name: "x", arg: 1, scope: !1588, file: !60, line: 612, type: !8)
!1592 = !DILocation(line: 0, scope: !1588)
!1593 = !DILocalVariable(name: "y", arg: 2, scope: !1588, file: !60, line: 612, type: !8)
!1594 = !DILocalVariable(name: "iy", arg: 3, scope: !1588, file: !60, line: 612, type: !48)
!1595 = !DILocalVariable(name: "gf_u", scope: !1596, file: !60, line: 616, type: !530)
!1596 = distinct !DILexicalBlock(scope: !1588, file: !60, line: 616, column: 3)
!1597 = !DILocation(line: 0, scope: !1596)
!1598 = !DILocation(line: 616, column: 3, scope: !1596)
!1599 = !DILocalVariable(name: "ix", scope: !1588, file: !60, line: 615, type: !48)
!1600 = !DILocation(line: 617, column: 6, scope: !1588)
!1601 = !DILocation(line: 618, column: 11, scope: !1602)
!1602 = distinct !DILexicalBlock(scope: !1588, file: !60, line: 618, column: 8)
!1603 = !DILocation(line: 618, column: 8, scope: !1588)
!1604 = !DILocation(line: 619, column: 10, scope: !1605)
!1605 = distinct !DILexicalBlock(scope: !1606, file: !60, line: 619, column: 10)
!1606 = distinct !DILexicalBlock(scope: !1602, file: !60, line: 618, column: 26)
!1607 = !DILocation(line: 619, column: 19, scope: !1605)
!1608 = !DILocation(line: 619, column: 10, scope: !1606)
!1609 = !DILocation(line: 619, column: 26, scope: !1605)
!1610 = !DILocation(line: 620, column: 3, scope: !1606)
!1611 = !DILocation(line: 621, column: 10, scope: !1588)
!1612 = !DILocalVariable(name: "z", scope: !1588, file: !60, line: 614, type: !8)
!1613 = !DILocation(line: 622, column: 10, scope: !1588)
!1614 = !DILocalVariable(name: "v", scope: !1588, file: !60, line: 614, type: !8)
!1615 = !DILocation(line: 624, column: 44, scope: !1588)
!1616 = !DILocation(line: 623, column: 63, scope: !1588)
!1617 = !DILocation(line: 623, column: 42, scope: !1588)
!1618 = !DILocation(line: 623, column: 21, scope: !1588)
!1619 = !DILocalVariable(name: "r", scope: !1588, file: !60, line: 614, type: !8)
!1620 = !DILocation(line: 625, column: 11, scope: !1621)
!1621 = distinct !DILexicalBlock(scope: !1588, file: !60, line: 625, column: 8)
!1622 = !DILocation(line: 625, column: 8, scope: !1588)
!1623 = !DILocation(line: 625, column: 48, scope: !1621)
!1624 = !DILocation(line: 625, column: 27, scope: !1621)
!1625 = !DILocation(line: 625, column: 18, scope: !1621)
!1626 = !DILocation(line: 626, column: 53, scope: !1621)
!1627 = !DILocation(line: 626, column: 63, scope: !1621)
!1628 = !DILocation(line: 626, column: 69, scope: !1621)
!1629 = !DILocation(line: 626, column: 22, scope: !1621)
!1630 = !DILocation(line: 626, column: 13, scope: !1621)
!1631 = !DILocation(line: 628, column: 1, scope: !1588)
!1632 = distinct !DISubprogram(name: "basicmath___cosf", scope: !60, file: !60, line: 656, type: !524, scopeLine: 657, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !53, retainedNodes: !324)
!1633 = !DILocalVariable(name: "x", arg: 1, scope: !1632, file: !60, line: 656, type: !8)
!1634 = !DILocation(line: 0, scope: !1632)
!1635 = !DILocalVariable(name: "y", scope: !1632, file: !60, line: 658, type: !1636)
!1636 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 64, elements: !188)
!1637 = !DILocation(line: 658, column: 9, scope: !1632)
!1638 = !DILocalVariable(name: "z", scope: !1632, file: !60, line: 658, type: !8)
!1639 = !DILocalVariable(name: "gf_u", scope: !1640, file: !60, line: 661, type: !530)
!1640 = distinct !DILexicalBlock(scope: !1632, file: !60, line: 661, column: 3)
!1641 = !DILocation(line: 0, scope: !1640)
!1642 = !DILocation(line: 661, column: 3, scope: !1640)
!1643 = !DILocalVariable(name: "ix", scope: !1632, file: !60, line: 659, type: !48)
!1644 = !DILocation(line: 664, column: 6, scope: !1632)
!1645 = !DILocation(line: 665, column: 11, scope: !1646)
!1646 = distinct !DILexicalBlock(scope: !1632, file: !60, line: 665, column: 8)
!1647 = !DILocation(line: 665, column: 8, scope: !1632)
!1648 = !DILocation(line: 665, column: 34, scope: !1646)
!1649 = !DILocation(line: 665, column: 27, scope: !1646)
!1650 = !DILocation(line: 669, column: 13, scope: !1651)
!1651 = distinct !DILexicalBlock(scope: !1646, file: !60, line: 669, column: 10)
!1652 = !DILocation(line: 669, column: 10, scope: !1646)
!1653 = !DILocation(line: 669, column: 38, scope: !1651)
!1654 = !DILocation(line: 669, column: 29, scope: !1651)
!1655 = !DILocation(line: 673, column: 45, scope: !1656)
!1656 = distinct !DILexicalBlock(scope: !1651, file: !60, line: 672, column: 10)
!1657 = !DILocation(line: 673, column: 11, scope: !1656)
!1658 = !DILocalVariable(name: "n", scope: !1632, file: !60, line: 659, type: !48)
!1659 = !DILocation(line: 674, column: 18, scope: !1656)
!1660 = !DILocation(line: 674, column: 7, scope: !1656)
!1661 = !DILocation(line: 676, column: 44, scope: !1662)
!1662 = distinct !DILexicalBlock(scope: !1656, file: !60, line: 674, column: 24)
!1663 = !DILocation(line: 676, column: 52, scope: !1662)
!1664 = !DILocation(line: 676, column: 19, scope: !1662)
!1665 = !DILocation(line: 676, column: 11, scope: !1662)
!1666 = !DILocation(line: 678, column: 44, scope: !1662)
!1667 = !DILocation(line: 678, column: 52, scope: !1662)
!1668 = !DILocation(line: 678, column: 19, scope: !1662)
!1669 = !DILocation(line: 678, column: 18, scope: !1662)
!1670 = !DILocation(line: 678, column: 11, scope: !1662)
!1671 = !DILocation(line: 680, column: 44, scope: !1662)
!1672 = !DILocation(line: 680, column: 52, scope: !1662)
!1673 = !DILocation(line: 680, column: 19, scope: !1662)
!1674 = !DILocation(line: 680, column: 18, scope: !1662)
!1675 = !DILocation(line: 680, column: 11, scope: !1662)
!1676 = !DILocation(line: 682, column: 44, scope: !1662)
!1677 = !DILocation(line: 682, column: 52, scope: !1662)
!1678 = !DILocation(line: 682, column: 19, scope: !1662)
!1679 = !DILocation(line: 682, column: 11, scope: !1662)
!1680 = !DILocation(line: 0, scope: !1646)
!1681 = !DILocation(line: 685, column: 1, scope: !1632)
!1682 = distinct !DISubprogram(name: "__absvdi2", scope: !199, file: !199, line: 22, type: !1683, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !198, retainedNodes: !324)
!1683 = !DISubroutineType(types: !324)
!1684 = !DILocation(line: 25, column: 11, scope: !1682)
!1685 = !DILocation(line: 25, column: 9, scope: !1682)
!1686 = !DILocation(line: 26, column: 9, scope: !1682)
!1687 = !DILocation(line: 28, column: 20, scope: !1682)
!1688 = !DILocation(line: 28, column: 5, scope: !1682)
!1689 = distinct !DISubprogram(name: "compilerrt_abort_impl", scope: !251, file: !251, line: 57, type: !1683, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !250, retainedNodes: !324)
!1690 = !DILocation(line: 59, column: 1, scope: !1689)
!1691 = distinct !DISubprogram(name: "__absvsi2", scope: !201, file: !201, line: 22, type: !1683, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !200, retainedNodes: !324)
!1692 = !DILocation(line: 25, column: 11, scope: !1691)
!1693 = !DILocation(line: 25, column: 9, scope: !1691)
!1694 = !DILocation(line: 26, column: 9, scope: !1691)
!1695 = !DILocation(line: 28, column: 20, scope: !1691)
!1696 = !DILocation(line: 28, column: 5, scope: !1691)
!1697 = distinct !DISubprogram(name: "__addvdi3", scope: !205, file: !205, line: 22, type: !1683, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !204, retainedNodes: !324)
!1698 = !DILocation(line: 24, column: 27, scope: !1697)
!1699 = !DILocation(line: 25, column: 11, scope: !1697)
!1700 = !DILocation(line: 25, column: 9, scope: !1697)
!1701 = !DILocation(line: 27, column: 15, scope: !1697)
!1702 = !DILocation(line: 27, column: 13, scope: !1697)
!1703 = !DILocation(line: 28, column: 13, scope: !1697)
!1704 = !DILocation(line: 29, column: 5, scope: !1697)
!1705 = !DILocation(line: 32, column: 15, scope: !1697)
!1706 = !DILocation(line: 32, column: 13, scope: !1697)
!1707 = !DILocation(line: 33, column: 13, scope: !1697)
!1708 = !DILocation(line: 35, column: 5, scope: !1697)
!1709 = distinct !DISubprogram(name: "__addvsi3", scope: !207, file: !207, line: 22, type: !1683, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !206, retainedNodes: !324)
!1710 = !DILocation(line: 24, column: 27, scope: !1709)
!1711 = !DILocation(line: 25, column: 11, scope: !1709)
!1712 = !DILocation(line: 25, column: 9, scope: !1709)
!1713 = !DILocation(line: 27, column: 15, scope: !1709)
!1714 = !DILocation(line: 27, column: 13, scope: !1709)
!1715 = !DILocation(line: 28, column: 13, scope: !1709)
!1716 = !DILocation(line: 29, column: 5, scope: !1709)
!1717 = !DILocation(line: 32, column: 15, scope: !1709)
!1718 = !DILocation(line: 32, column: 13, scope: !1709)
!1719 = !DILocation(line: 33, column: 13, scope: !1709)
!1720 = !DILocation(line: 35, column: 5, scope: !1709)
!1721 = distinct !DISubprogram(name: "__ashldi3", scope: !211, file: !211, line: 24, type: !1683, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !210, retainedNodes: !324)
!1722 = !DILocation(line: 29, column: 11, scope: !1721)
!1723 = !DILocation(line: 29, column: 15, scope: !1721)
!1724 = !DILocation(line: 30, column: 11, scope: !1721)
!1725 = !DILocation(line: 30, column: 9, scope: !1721)
!1726 = !DILocation(line: 32, column: 18, scope: !1721)
!1727 = !DILocation(line: 32, column: 22, scope: !1721)
!1728 = !DILocation(line: 33, column: 33, scope: !1721)
!1729 = !DILocation(line: 33, column: 43, scope: !1721)
!1730 = !DILocation(line: 33, column: 37, scope: !1721)
!1731 = !DILocation(line: 33, column: 16, scope: !1721)
!1732 = !DILocation(line: 33, column: 18, scope: !1721)
!1733 = !DILocation(line: 33, column: 23, scope: !1721)
!1734 = !DILocation(line: 34, column: 5, scope: !1721)
!1735 = !DILocation(line: 37, column: 15, scope: !1721)
!1736 = !DILocation(line: 37, column: 13, scope: !1721)
!1737 = !DILocation(line: 38, column: 13, scope: !1721)
!1738 = !DILocation(line: 39, column: 33, scope: !1721)
!1739 = !DILocation(line: 39, column: 37, scope: !1721)
!1740 = !DILocation(line: 39, column: 18, scope: !1721)
!1741 = !DILocation(line: 39, column: 23, scope: !1721)
!1742 = !DILocation(line: 40, column: 32, scope: !1721)
!1743 = !DILocation(line: 40, column: 34, scope: !1721)
!1744 = !DILocation(line: 40, column: 39, scope: !1721)
!1745 = !DILocation(line: 40, column: 56, scope: !1721)
!1746 = !DILocation(line: 40, column: 77, scope: !1721)
!1747 = !DILocation(line: 40, column: 60, scope: !1721)
!1748 = !DILocation(line: 40, column: 45, scope: !1721)
!1749 = !DILocation(line: 40, column: 16, scope: !1721)
!1750 = !DILocation(line: 40, column: 18, scope: !1721)
!1751 = !DILocation(line: 40, column: 23, scope: !1721)
!1752 = !DILocation(line: 42, column: 19, scope: !1721)
!1753 = !DILocation(line: 42, column: 5, scope: !1721)
!1754 = !DILocation(line: 0, scope: !1721)
!1755 = !DILocation(line: 43, column: 1, scope: !1721)
!1756 = distinct !DISubprogram(name: "__ashrdi3", scope: !215, file: !215, line: 24, type: !1683, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !214, retainedNodes: !324)
!1757 = !DILocation(line: 29, column: 11, scope: !1756)
!1758 = !DILocation(line: 29, column: 15, scope: !1756)
!1759 = !DILocation(line: 30, column: 11, scope: !1756)
!1760 = !DILocation(line: 30, column: 9, scope: !1756)
!1761 = !DILocation(line: 33, column: 31, scope: !1756)
!1762 = !DILocation(line: 33, column: 33, scope: !1756)
!1763 = !DILocation(line: 33, column: 38, scope: !1756)
!1764 = !DILocation(line: 33, column: 16, scope: !1756)
!1765 = !DILocation(line: 33, column: 18, scope: !1756)
!1766 = !DILocation(line: 33, column: 23, scope: !1756)
!1767 = !DILocation(line: 34, column: 30, scope: !1756)
!1768 = !DILocation(line: 34, column: 32, scope: !1756)
!1769 = !DILocation(line: 34, column: 43, scope: !1756)
!1770 = !DILocation(line: 34, column: 37, scope: !1756)
!1771 = !DILocation(line: 34, column: 18, scope: !1756)
!1772 = !DILocation(line: 34, column: 22, scope: !1756)
!1773 = !DILocation(line: 35, column: 5, scope: !1756)
!1774 = !DILocation(line: 38, column: 15, scope: !1756)
!1775 = !DILocation(line: 38, column: 13, scope: !1756)
!1776 = !DILocation(line: 39, column: 13, scope: !1756)
!1777 = !DILocation(line: 40, column: 32, scope: !1756)
!1778 = !DILocation(line: 40, column: 34, scope: !1756)
!1779 = !DILocation(line: 40, column: 39, scope: !1756)
!1780 = !DILocation(line: 40, column: 16, scope: !1756)
!1781 = !DILocation(line: 40, column: 18, scope: !1756)
!1782 = !DILocation(line: 40, column: 24, scope: !1756)
!1783 = !DILocation(line: 41, column: 31, scope: !1756)
!1784 = !DILocation(line: 41, column: 33, scope: !1756)
!1785 = !DILocation(line: 41, column: 55, scope: !1756)
!1786 = !DILocation(line: 41, column: 38, scope: !1756)
!1787 = !DILocation(line: 41, column: 72, scope: !1756)
!1788 = !DILocation(line: 41, column: 76, scope: !1756)
!1789 = !DILocation(line: 41, column: 61, scope: !1756)
!1790 = !DILocation(line: 41, column: 18, scope: !1756)
!1791 = !DILocation(line: 41, column: 22, scope: !1756)
!1792 = !DILocation(line: 43, column: 19, scope: !1756)
!1793 = !DILocation(line: 43, column: 5, scope: !1756)
!1794 = !DILocation(line: 0, scope: !1756)
!1795 = !DILocation(line: 44, column: 1, scope: !1756)
!1796 = distinct !DISubprogram(name: "__clzdi2", scope: !219, file: !219, line: 22, type: !1683, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !218, retainedNodes: !324)
!1797 = !DILocation(line: 25, column: 7, scope: !1796)
!1798 = !DILocation(line: 25, column: 11, scope: !1796)
!1799 = !DILocation(line: 26, column: 26, scope: !1796)
!1800 = !DILocation(line: 26, column: 28, scope: !1796)
!1801 = !DILocation(line: 26, column: 33, scope: !1796)
!1802 = !DILocation(line: 27, column: 29, scope: !1796)
!1803 = !DILocation(line: 27, column: 31, scope: !1796)
!1804 = !DILocation(line: 27, column: 49, scope: !1796)
!1805 = !DILocation(line: 27, column: 42, scope: !1796)
!1806 = !DILocation(line: 27, column: 12, scope: !1796)
!1807 = !{i32 0, i32 33}
!1808 = !DILocation(line: 28, column: 15, scope: !1796)
!1809 = !DILocation(line: 27, column: 59, scope: !1796)
!1810 = !DILocation(line: 27, column: 5, scope: !1796)
!1811 = distinct !DISubprogram(name: "__clzsi2", scope: !221, file: !221, line: 22, type: !1683, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !220, retainedNodes: !324)
!1812 = !DILocation(line: 25, column: 34, scope: !1811)
!1813 = !DILocation(line: 25, column: 40, scope: !1811)
!1814 = !DILocation(line: 26, column: 14, scope: !1811)
!1815 = !DILocation(line: 26, column: 7, scope: !1811)
!1816 = !DILocation(line: 29, column: 13, scope: !1811)
!1817 = !DILocation(line: 29, column: 23, scope: !1811)
!1818 = !DILocation(line: 29, column: 29, scope: !1811)
!1819 = !DILocation(line: 30, column: 13, scope: !1811)
!1820 = !DILocation(line: 30, column: 7, scope: !1811)
!1821 = !DILocation(line: 31, column: 7, scope: !1811)
!1822 = !DILocation(line: 33, column: 13, scope: !1811)
!1823 = !DILocation(line: 33, column: 21, scope: !1811)
!1824 = !DILocation(line: 33, column: 27, scope: !1811)
!1825 = !DILocation(line: 34, column: 13, scope: !1811)
!1826 = !DILocation(line: 34, column: 7, scope: !1811)
!1827 = !DILocation(line: 35, column: 7, scope: !1811)
!1828 = !DILocation(line: 37, column: 13, scope: !1811)
!1829 = !DILocation(line: 37, column: 20, scope: !1811)
!1830 = !DILocation(line: 37, column: 26, scope: !1811)
!1831 = !DILocation(line: 38, column: 13, scope: !1811)
!1832 = !DILocation(line: 38, column: 7, scope: !1811)
!1833 = !DILocation(line: 39, column: 7, scope: !1811)
!1834 = !DILocation(line: 52, column: 20, scope: !1811)
!1835 = !DILocation(line: 52, column: 37, scope: !1811)
!1836 = !DILocation(line: 52, column: 25, scope: !1811)
!1837 = !DILocation(line: 52, column: 14, scope: !1811)
!1838 = !DILocation(line: 52, column: 5, scope: !1811)
!1839 = distinct !DISubprogram(name: "__cmpdi2", scope: !225, file: !225, line: 23, type: !1683, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !224, retainedNodes: !324)
!1840 = !DILocation(line: 26, column: 7, scope: !1839)
!1841 = !DILocation(line: 26, column: 11, scope: !1839)
!1842 = !DILocation(line: 28, column: 7, scope: !1839)
!1843 = !DILocation(line: 28, column: 11, scope: !1839)
!1844 = !DILocation(line: 29, column: 11, scope: !1839)
!1845 = !DILocation(line: 29, column: 13, scope: !1839)
!1846 = !DILocation(line: 29, column: 22, scope: !1839)
!1847 = !DILocation(line: 29, column: 24, scope: !1839)
!1848 = !DILocation(line: 29, column: 18, scope: !1839)
!1849 = !DILocation(line: 29, column: 9, scope: !1839)
!1850 = !DILocation(line: 30, column: 9, scope: !1839)
!1851 = !DILocation(line: 31, column: 11, scope: !1839)
!1852 = !DILocation(line: 31, column: 13, scope: !1839)
!1853 = !DILocation(line: 31, column: 22, scope: !1839)
!1854 = !DILocation(line: 31, column: 24, scope: !1839)
!1855 = !DILocation(line: 31, column: 18, scope: !1839)
!1856 = !DILocation(line: 31, column: 9, scope: !1839)
!1857 = !DILocation(line: 32, column: 9, scope: !1839)
!1858 = !DILocation(line: 33, column: 13, scope: !1839)
!1859 = !DILocation(line: 33, column: 23, scope: !1839)
!1860 = !DILocation(line: 33, column: 17, scope: !1839)
!1861 = !DILocation(line: 33, column: 9, scope: !1839)
!1862 = !DILocation(line: 34, column: 9, scope: !1839)
!1863 = !DILocation(line: 35, column: 13, scope: !1839)
!1864 = !DILocation(line: 35, column: 23, scope: !1839)
!1865 = !DILocation(line: 35, column: 17, scope: !1839)
!1866 = !DILocation(line: 35, column: 9, scope: !1839)
!1867 = !DILocation(line: 36, column: 9, scope: !1839)
!1868 = !DILocation(line: 37, column: 5, scope: !1839)
!1869 = !DILocation(line: 0, scope: !1839)
!1870 = !DILocation(line: 38, column: 1, scope: !1839)
!1871 = distinct !DISubprogram(name: "__aeabi_lcmp", scope: !225, file: !225, line: 46, type: !1683, scopeLine: 47, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !224, retainedNodes: !324)
!1872 = !DILocation(line: 48, column: 9, scope: !1871)
!1873 = !DILocation(line: 48, column: 24, scope: !1871)
!1874 = !DILocation(line: 48, column: 2, scope: !1871)
!1875 = distinct !DISubprogram(name: "__ctzdi2", scope: !229, file: !229, line: 22, type: !1683, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !228, retainedNodes: !324)
!1876 = !DILocation(line: 25, column: 7, scope: !1875)
!1877 = !DILocation(line: 25, column: 11, scope: !1875)
!1878 = !DILocation(line: 26, column: 28, scope: !1875)
!1879 = !DILocation(line: 26, column: 32, scope: !1875)
!1880 = !DILocation(line: 27, column: 29, scope: !1875)
!1881 = !DILocation(line: 27, column: 31, scope: !1875)
!1882 = !DILocation(line: 27, column: 41, scope: !1875)
!1883 = !DILocation(line: 27, column: 12, scope: !1875)
!1884 = !DILocation(line: 28, column: 18, scope: !1875)
!1885 = !DILocation(line: 27, column: 59, scope: !1875)
!1886 = !DILocation(line: 27, column: 5, scope: !1875)
!1887 = distinct !DISubprogram(name: "__ctzsi2", scope: !231, file: !231, line: 22, type: !1683, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !230, retainedNodes: !324)
!1888 = !DILocation(line: 25, column: 20, scope: !1887)
!1889 = !DILocation(line: 25, column: 34, scope: !1887)
!1890 = !DILocation(line: 25, column: 40, scope: !1887)
!1891 = !DILocation(line: 26, column: 7, scope: !1887)
!1892 = !DILocation(line: 29, column: 13, scope: !1887)
!1893 = !DILocation(line: 29, column: 23, scope: !1887)
!1894 = !DILocation(line: 29, column: 29, scope: !1887)
!1895 = !DILocation(line: 30, column: 7, scope: !1887)
!1896 = !DILocation(line: 31, column: 7, scope: !1887)
!1897 = !DILocation(line: 33, column: 13, scope: !1887)
!1898 = !DILocation(line: 33, column: 21, scope: !1887)
!1899 = !DILocation(line: 33, column: 27, scope: !1887)
!1900 = !DILocation(line: 34, column: 7, scope: !1887)
!1901 = !DILocation(line: 35, column: 7, scope: !1887)
!1902 = !DILocation(line: 37, column: 13, scope: !1887)
!1903 = !DILocation(line: 37, column: 20, scope: !1887)
!1904 = !DILocation(line: 37, column: 26, scope: !1887)
!1905 = !DILocation(line: 38, column: 7, scope: !1887)
!1906 = !DILocation(line: 40, column: 7, scope: !1887)
!1907 = !DILocation(line: 56, column: 25, scope: !1887)
!1908 = !DILocation(line: 56, column: 20, scope: !1887)
!1909 = !DILocation(line: 56, column: 44, scope: !1887)
!1910 = !DILocation(line: 56, column: 32, scope: !1887)
!1911 = !DILocation(line: 56, column: 14, scope: !1887)
!1912 = !DILocation(line: 56, column: 5, scope: !1887)
!1913 = distinct !DISubprogram(name: "__divdi3", scope: !235, file: !235, line: 20, type: !1683, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !234, retainedNodes: !324)
!1914 = !DILocation(line: 23, column: 20, scope: !1913)
!1915 = !DILocation(line: 24, column: 20, scope: !1913)
!1916 = !DILocation(line: 25, column: 12, scope: !1913)
!1917 = !DILocation(line: 25, column: 19, scope: !1913)
!1918 = !DILocation(line: 26, column: 12, scope: !1913)
!1919 = !DILocation(line: 26, column: 19, scope: !1913)
!1920 = !DILocation(line: 27, column: 9, scope: !1913)
!1921 = !DILocation(line: 28, column: 13, scope: !1913)
!1922 = !DILocation(line: 28, column: 44, scope: !1913)
!1923 = !DILocation(line: 28, column: 51, scope: !1913)
!1924 = !DILocation(line: 28, column: 5, scope: !1913)
!1925 = distinct !DISubprogram(name: "__udivmoddi4", scope: !293, file: !293, line: 24, type: !1683, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !292, retainedNodes: !324)
!1926 = !DILocation(line: 29, column: 7, scope: !1925)
!1927 = !DILocation(line: 29, column: 11, scope: !1925)
!1928 = !DILocation(line: 31, column: 7, scope: !1925)
!1929 = !DILocation(line: 31, column: 11, scope: !1925)
!1930 = !DILocation(line: 36, column: 11, scope: !1925)
!1931 = !DILocation(line: 36, column: 13, scope: !1925)
!1932 = !DILocation(line: 36, column: 18, scope: !1925)
!1933 = !DILocation(line: 36, column: 9, scope: !1925)
!1934 = !DILocation(line: 38, column: 15, scope: !1925)
!1935 = !DILocation(line: 38, column: 17, scope: !1925)
!1936 = !DILocation(line: 38, column: 22, scope: !1925)
!1937 = !DILocation(line: 38, column: 13, scope: !1925)
!1938 = !DILocation(line: 44, column: 17, scope: !1925)
!1939 = !DILocation(line: 45, column: 28, scope: !1925)
!1940 = !DILocation(line: 45, column: 38, scope: !1925)
!1941 = !DILocation(line: 45, column: 32, scope: !1925)
!1942 = !DILocation(line: 45, column: 24, scope: !1925)
!1943 = !DILocation(line: 45, column: 22, scope: !1925)
!1944 = !DILocation(line: 45, column: 17, scope: !1925)
!1945 = !DILocation(line: 46, column: 24, scope: !1925)
!1946 = !DILocation(line: 46, column: 34, scope: !1925)
!1947 = !DILocation(line: 46, column: 28, scope: !1925)
!1948 = !DILocation(line: 46, column: 20, scope: !1925)
!1949 = !DILocation(line: 46, column: 13, scope: !1925)
!1950 = !DILocation(line: 52, column: 13, scope: !1925)
!1951 = !DILocation(line: 53, column: 24, scope: !1925)
!1952 = !DILocation(line: 53, column: 20, scope: !1925)
!1953 = !DILocation(line: 53, column: 18, scope: !1925)
!1954 = !DILocation(line: 53, column: 13, scope: !1925)
!1955 = !DILocation(line: 54, column: 9, scope: !1925)
!1956 = !DILocation(line: 57, column: 13, scope: !1925)
!1957 = !DILocation(line: 57, column: 17, scope: !1925)
!1958 = !DILocation(line: 57, column: 9, scope: !1925)
!1959 = !DILocation(line: 59, column: 15, scope: !1925)
!1960 = !DILocation(line: 59, column: 17, scope: !1925)
!1961 = !DILocation(line: 59, column: 22, scope: !1925)
!1962 = !DILocation(line: 59, column: 13, scope: !1925)
!1963 = !DILocation(line: 65, column: 17, scope: !1925)
!1964 = !DILocation(line: 66, column: 26, scope: !1925)
!1965 = !DILocation(line: 66, column: 28, scope: !1925)
!1966 = !DILocation(line: 66, column: 39, scope: !1925)
!1967 = !DILocation(line: 66, column: 33, scope: !1925)
!1968 = !DILocation(line: 66, column: 24, scope: !1925)
!1969 = !DILocation(line: 66, column: 22, scope: !1925)
!1970 = !DILocation(line: 66, column: 17, scope: !1925)
!1971 = !DILocation(line: 67, column: 22, scope: !1925)
!1972 = !DILocation(line: 67, column: 24, scope: !1925)
!1973 = !DILocation(line: 67, column: 35, scope: !1925)
!1974 = !DILocation(line: 67, column: 29, scope: !1925)
!1975 = !DILocation(line: 67, column: 20, scope: !1925)
!1976 = !DILocation(line: 67, column: 13, scope: !1925)
!1977 = !DILocation(line: 70, column: 17, scope: !1925)
!1978 = !DILocation(line: 70, column: 21, scope: !1925)
!1979 = !DILocation(line: 70, column: 13, scope: !1925)
!1980 = !DILocation(line: 76, column: 17, scope: !1925)
!1981 = !DILocation(line: 78, column: 30, scope: !1925)
!1982 = !DILocation(line: 78, column: 32, scope: !1925)
!1983 = !DILocation(line: 78, column: 41, scope: !1925)
!1984 = !DILocation(line: 78, column: 43, scope: !1925)
!1985 = !DILocation(line: 78, column: 37, scope: !1925)
!1986 = !DILocation(line: 78, column: 19, scope: !1925)
!1987 = !DILocation(line: 78, column: 21, scope: !1925)
!1988 = !DILocation(line: 78, column: 26, scope: !1925)
!1989 = !DILocation(line: 79, column: 21, scope: !1925)
!1990 = !DILocation(line: 79, column: 25, scope: !1925)
!1991 = !DILocation(line: 80, column: 26, scope: !1925)
!1992 = !DILocation(line: 80, column: 22, scope: !1925)
!1993 = !DILocation(line: 81, column: 13, scope: !1925)
!1994 = !DILocation(line: 82, column: 22, scope: !1925)
!1995 = !DILocation(line: 82, column: 24, scope: !1925)
!1996 = !DILocation(line: 82, column: 33, scope: !1925)
!1997 = !DILocation(line: 82, column: 35, scope: !1925)
!1998 = !DILocation(line: 82, column: 29, scope: !1925)
!1999 = !DILocation(line: 82, column: 20, scope: !1925)
!2000 = !DILocation(line: 82, column: 13, scope: !1925)
!2001 = !DILocation(line: 88, column: 16, scope: !1925)
!2002 = !DILocation(line: 88, column: 18, scope: !1925)
!2003 = !DILocation(line: 88, column: 28, scope: !1925)
!2004 = !DILocation(line: 88, column: 30, scope: !1925)
!2005 = !DILocation(line: 88, column: 35, scope: !1925)
!2006 = !DILocation(line: 88, column: 23, scope: !1925)
!2007 = !DILocation(line: 88, column: 41, scope: !1925)
!2008 = !DILocation(line: 88, column: 13, scope: !1925)
!2009 = !DILocation(line: 90, column: 17, scope: !1925)
!2010 = !DILocation(line: 92, column: 31, scope: !1925)
!2011 = !DILocation(line: 92, column: 21, scope: !1925)
!2012 = !DILocation(line: 92, column: 25, scope: !1925)
!2013 = !DILocation(line: 93, column: 30, scope: !1925)
!2014 = !DILocation(line: 93, column: 32, scope: !1925)
!2015 = !DILocation(line: 93, column: 42, scope: !1925)
!2016 = !DILocation(line: 93, column: 44, scope: !1925)
!2017 = !DILocation(line: 93, column: 49, scope: !1925)
!2018 = !DILocation(line: 93, column: 37, scope: !1925)
!2019 = !DILocation(line: 93, column: 19, scope: !1925)
!2020 = !DILocation(line: 93, column: 21, scope: !1925)
!2021 = !DILocation(line: 93, column: 26, scope: !1925)
!2022 = !DILocation(line: 94, column: 26, scope: !1925)
!2023 = !DILocation(line: 94, column: 22, scope: !1925)
!2024 = !DILocation(line: 95, column: 13, scope: !1925)
!2025 = !DILocation(line: 96, column: 22, scope: !1925)
!2026 = !DILocation(line: 96, column: 24, scope: !1925)
!2027 = !DILocation(line: 96, column: 48, scope: !1925)
!2028 = !DILocation(line: 96, column: 50, scope: !1925)
!2029 = !DILocation(line: 96, column: 32, scope: !1925)
!2030 = !DILocation(line: 96, column: 29, scope: !1925)
!2031 = !DILocation(line: 96, column: 20, scope: !1925)
!2032 = !DILocation(line: 96, column: 13, scope: !1925)
!2033 = !DILocation(line: 102, column: 30, scope: !1925)
!2034 = !DILocation(line: 102, column: 32, scope: !1925)
!2035 = !DILocation(line: 102, column: 14, scope: !1925)
!2036 = !DILocation(line: 102, column: 56, scope: !1925)
!2037 = !DILocation(line: 102, column: 58, scope: !1925)
!2038 = !DILocation(line: 102, column: 40, scope: !1925)
!2039 = !DILocation(line: 102, column: 38, scope: !1925)
!2040 = !DILocation(line: 104, column: 16, scope: !1925)
!2041 = !DILocation(line: 104, column: 13, scope: !1925)
!2042 = !DILocation(line: 106, column: 16, scope: !1925)
!2043 = !DILocation(line: 107, column: 26, scope: !1925)
!2044 = !DILocation(line: 107, column: 22, scope: !1925)
!2045 = !DILocation(line: 107, column: 17, scope: !1925)
!2046 = !DILocation(line: 108, column: 13, scope: !1925)
!2047 = !DILocation(line: 110, column: 9, scope: !1925)
!2048 = !DILocation(line: 113, column: 13, scope: !1925)
!2049 = !DILocation(line: 113, column: 17, scope: !1925)
!2050 = !DILocation(line: 114, column: 24, scope: !1925)
!2051 = !DILocation(line: 114, column: 45, scope: !1925)
!2052 = !DILocation(line: 114, column: 28, scope: !1925)
!2053 = !DILocation(line: 114, column: 11, scope: !1925)
!2054 = !DILocation(line: 114, column: 13, scope: !1925)
!2055 = !DILocation(line: 114, column: 18, scope: !1925)
!2056 = !DILocation(line: 116, column: 22, scope: !1925)
!2057 = !DILocation(line: 116, column: 24, scope: !1925)
!2058 = !DILocation(line: 116, column: 29, scope: !1925)
!2059 = !DILocation(line: 116, column: 11, scope: !1925)
!2060 = !DILocation(line: 116, column: 13, scope: !1925)
!2061 = !DILocation(line: 116, column: 18, scope: !1925)
!2062 = !DILocation(line: 117, column: 22, scope: !1925)
!2063 = !DILocation(line: 117, column: 24, scope: !1925)
!2064 = !DILocation(line: 117, column: 46, scope: !1925)
!2065 = !DILocation(line: 117, column: 29, scope: !1925)
!2066 = !DILocation(line: 117, column: 60, scope: !1925)
!2067 = !DILocation(line: 117, column: 64, scope: !1925)
!2068 = !DILocation(line: 117, column: 53, scope: !1925)
!2069 = !DILocation(line: 117, column: 13, scope: !1925)
!2070 = !DILocation(line: 117, column: 17, scope: !1925)
!2071 = !DILocation(line: 118, column: 5, scope: !1925)
!2072 = !DILocation(line: 121, column: 15, scope: !1925)
!2073 = !DILocation(line: 121, column: 17, scope: !1925)
!2074 = !DILocation(line: 121, column: 22, scope: !1925)
!2075 = !DILocation(line: 121, column: 13, scope: !1925)
!2076 = !DILocation(line: 127, column: 22, scope: !1925)
!2077 = !DILocation(line: 127, column: 43, scope: !1925)
!2078 = !DILocation(line: 127, column: 17, scope: !1925)
!2079 = !DILocation(line: 129, column: 21, scope: !1925)
!2080 = !DILocation(line: 130, column: 32, scope: !1925)
!2081 = !DILocation(line: 130, column: 43, scope: !1925)
!2082 = !DILocation(line: 130, column: 47, scope: !1925)
!2083 = !DILocation(line: 130, column: 36, scope: !1925)
!2084 = !DILocation(line: 130, column: 28, scope: !1925)
!2085 = !DILocation(line: 130, column: 26, scope: !1925)
!2086 = !DILocation(line: 130, column: 21, scope: !1925)
!2087 = !DILocation(line: 131, column: 25, scope: !1925)
!2088 = !DILocation(line: 131, column: 29, scope: !1925)
!2089 = !DILocation(line: 131, column: 21, scope: !1925)
!2090 = !DILocation(line: 132, column: 30, scope: !1925)
!2091 = !DILocation(line: 132, column: 21, scope: !1925)
!2092 = !DILocation(line: 133, column: 40, scope: !1925)
!2093 = !DILocation(line: 133, column: 22, scope: !1925)
!2094 = !DILocation(line: 134, column: 30, scope: !1925)
!2095 = !DILocation(line: 134, column: 32, scope: !1925)
!2096 = !DILocation(line: 134, column: 37, scope: !1925)
!2097 = !DILocation(line: 134, column: 19, scope: !1925)
!2098 = !DILocation(line: 134, column: 21, scope: !1925)
!2099 = !DILocation(line: 134, column: 26, scope: !1925)
!2100 = !DILocation(line: 135, column: 30, scope: !1925)
!2101 = !DILocation(line: 135, column: 32, scope: !1925)
!2102 = !DILocation(line: 135, column: 54, scope: !1925)
!2103 = !DILocation(line: 135, column: 37, scope: !1925)
!2104 = !DILocation(line: 135, column: 68, scope: !1925)
!2105 = !DILocation(line: 135, column: 72, scope: !1925)
!2106 = !DILocation(line: 135, column: 61, scope: !1925)
!2107 = !DILocation(line: 135, column: 21, scope: !1925)
!2108 = !DILocation(line: 135, column: 25, scope: !1925)
!2109 = !DILocation(line: 136, column: 26, scope: !1925)
!2110 = !DILocation(line: 136, column: 17, scope: !1925)
!2111 = !DILocation(line: 142, column: 55, scope: !1925)
!2112 = !DILocation(line: 142, column: 37, scope: !1925)
!2113 = !DILocation(line: 142, column: 35, scope: !1925)
!2114 = !DILocation(line: 142, column: 78, scope: !1925)
!2115 = !DILocation(line: 142, column: 80, scope: !1925)
!2116 = !DILocation(line: 142, column: 62, scope: !1925)
!2117 = !DILocation(line: 142, column: 60, scope: !1925)
!2118 = !DILocation(line: 147, column: 20, scope: !1925)
!2119 = !DILocation(line: 147, column: 17, scope: !1925)
!2120 = !DILocation(line: 149, column: 21, scope: !1925)
!2121 = !DILocation(line: 149, column: 25, scope: !1925)
!2122 = !DILocation(line: 150, column: 32, scope: !1925)
!2123 = !DILocation(line: 150, column: 19, scope: !1925)
!2124 = !DILocation(line: 150, column: 21, scope: !1925)
!2125 = !DILocation(line: 150, column: 26, scope: !1925)
!2126 = !DILocation(line: 151, column: 19, scope: !1925)
!2127 = !DILocation(line: 151, column: 21, scope: !1925)
!2128 = !DILocation(line: 151, column: 26, scope: !1925)
!2129 = !DILocation(line: 152, column: 29, scope: !1925)
!2130 = !DILocation(line: 152, column: 31, scope: !1925)
!2131 = !DILocation(line: 152, column: 21, scope: !1925)
!2132 = !DILocation(line: 152, column: 25, scope: !1925)
!2133 = !DILocation(line: 153, column: 13, scope: !1925)
!2134 = !DILocation(line: 154, column: 25, scope: !1925)
!2135 = !DILocation(line: 154, column: 22, scope: !1925)
!2136 = !DILocation(line: 156, column: 21, scope: !1925)
!2137 = !DILocation(line: 156, column: 25, scope: !1925)
!2138 = !DILocation(line: 157, column: 32, scope: !1925)
!2139 = !DILocation(line: 157, column: 53, scope: !1925)
!2140 = !DILocation(line: 157, column: 36, scope: !1925)
!2141 = !DILocation(line: 157, column: 19, scope: !1925)
!2142 = !DILocation(line: 157, column: 21, scope: !1925)
!2143 = !DILocation(line: 157, column: 26, scope: !1925)
!2144 = !DILocation(line: 158, column: 30, scope: !1925)
!2145 = !DILocation(line: 158, column: 32, scope: !1925)
!2146 = !DILocation(line: 158, column: 37, scope: !1925)
!2147 = !DILocation(line: 158, column: 19, scope: !1925)
!2148 = !DILocation(line: 158, column: 21, scope: !1925)
!2149 = !DILocation(line: 158, column: 26, scope: !1925)
!2150 = !DILocation(line: 159, column: 30, scope: !1925)
!2151 = !DILocation(line: 159, column: 32, scope: !1925)
!2152 = !DILocation(line: 159, column: 54, scope: !1925)
!2153 = !DILocation(line: 159, column: 37, scope: !1925)
!2154 = !DILocation(line: 159, column: 68, scope: !1925)
!2155 = !DILocation(line: 159, column: 72, scope: !1925)
!2156 = !DILocation(line: 159, column: 61, scope: !1925)
!2157 = !DILocation(line: 159, column: 21, scope: !1925)
!2158 = !DILocation(line: 159, column: 25, scope: !1925)
!2159 = !DILocation(line: 160, column: 13, scope: !1925)
!2160 = !DILocation(line: 163, column: 31, scope: !1925)
!2161 = !DILocation(line: 163, column: 53, scope: !1925)
!2162 = !DILocation(line: 163, column: 35, scope: !1925)
!2163 = !DILocation(line: 163, column: 21, scope: !1925)
!2164 = !DILocation(line: 163, column: 25, scope: !1925)
!2165 = !DILocation(line: 164, column: 31, scope: !1925)
!2166 = !DILocation(line: 164, column: 33, scope: !1925)
!2167 = !DILocation(line: 164, column: 56, scope: !1925)
!2168 = !DILocation(line: 164, column: 38, scope: !1925)
!2169 = !DILocation(line: 165, column: 33, scope: !1925)
!2170 = !DILocation(line: 165, column: 44, scope: !1925)
!2171 = !DILocation(line: 165, column: 37, scope: !1925)
!2172 = !DILocation(line: 164, column: 63, scope: !1925)
!2173 = !DILocation(line: 164, column: 19, scope: !1925)
!2174 = !DILocation(line: 164, column: 21, scope: !1925)
!2175 = !DILocation(line: 164, column: 26, scope: !1925)
!2176 = !DILocation(line: 166, column: 19, scope: !1925)
!2177 = !DILocation(line: 166, column: 21, scope: !1925)
!2178 = !DILocation(line: 166, column: 26, scope: !1925)
!2179 = !DILocation(line: 167, column: 29, scope: !1925)
!2180 = !DILocation(line: 167, column: 31, scope: !1925)
!2181 = !DILocation(line: 167, column: 43, scope: !1925)
!2182 = !DILocation(line: 167, column: 36, scope: !1925)
!2183 = !DILocation(line: 167, column: 21, scope: !1925)
!2184 = !DILocation(line: 167, column: 25, scope: !1925)
!2185 = !DILocation(line: 169, column: 9, scope: !1925)
!2186 = !DILocation(line: 176, column: 34, scope: !1925)
!2187 = !DILocation(line: 176, column: 36, scope: !1925)
!2188 = !DILocation(line: 176, column: 18, scope: !1925)
!2189 = !DILocation(line: 176, column: 60, scope: !1925)
!2190 = !DILocation(line: 176, column: 62, scope: !1925)
!2191 = !DILocation(line: 176, column: 44, scope: !1925)
!2192 = !DILocation(line: 176, column: 42, scope: !1925)
!2193 = !DILocation(line: 178, column: 20, scope: !1925)
!2194 = !DILocation(line: 178, column: 17, scope: !1925)
!2195 = !DILocation(line: 180, column: 21, scope: !1925)
!2196 = !DILocation(line: 181, column: 30, scope: !1925)
!2197 = !DILocation(line: 181, column: 26, scope: !1925)
!2198 = !DILocation(line: 181, column: 21, scope: !1925)
!2199 = !DILocation(line: 182, column: 17, scope: !1925)
!2200 = !DILocation(line: 184, column: 13, scope: !1925)
!2201 = !DILocation(line: 187, column: 17, scope: !1925)
!2202 = !DILocation(line: 187, column: 21, scope: !1925)
!2203 = !DILocation(line: 188, column: 20, scope: !1925)
!2204 = !DILocation(line: 188, column: 17, scope: !1925)
!2205 = !DILocation(line: 190, column: 32, scope: !1925)
!2206 = !DILocation(line: 190, column: 19, scope: !1925)
!2207 = !DILocation(line: 190, column: 21, scope: !1925)
!2208 = !DILocation(line: 190, column: 26, scope: !1925)
!2209 = !DILocation(line: 191, column: 19, scope: !1925)
!2210 = !DILocation(line: 191, column: 21, scope: !1925)
!2211 = !DILocation(line: 191, column: 26, scope: !1925)
!2212 = !DILocation(line: 192, column: 29, scope: !1925)
!2213 = !DILocation(line: 192, column: 31, scope: !1925)
!2214 = !DILocation(line: 192, column: 21, scope: !1925)
!2215 = !DILocation(line: 192, column: 25, scope: !1925)
!2216 = !DILocation(line: 193, column: 13, scope: !1925)
!2217 = !DILocation(line: 196, column: 32, scope: !1925)
!2218 = !DILocation(line: 196, column: 53, scope: !1925)
!2219 = !DILocation(line: 196, column: 36, scope: !1925)
!2220 = !DILocation(line: 196, column: 19, scope: !1925)
!2221 = !DILocation(line: 196, column: 21, scope: !1925)
!2222 = !DILocation(line: 196, column: 26, scope: !1925)
!2223 = !DILocation(line: 197, column: 30, scope: !1925)
!2224 = !DILocation(line: 197, column: 32, scope: !1925)
!2225 = !DILocation(line: 197, column: 37, scope: !1925)
!2226 = !DILocation(line: 197, column: 19, scope: !1925)
!2227 = !DILocation(line: 197, column: 21, scope: !1925)
!2228 = !DILocation(line: 197, column: 26, scope: !1925)
!2229 = !DILocation(line: 198, column: 30, scope: !1925)
!2230 = !DILocation(line: 198, column: 32, scope: !1925)
!2231 = !DILocation(line: 198, column: 54, scope: !1925)
!2232 = !DILocation(line: 198, column: 37, scope: !1925)
!2233 = !DILocation(line: 198, column: 68, scope: !1925)
!2234 = !DILocation(line: 198, column: 72, scope: !1925)
!2235 = !DILocation(line: 198, column: 61, scope: !1925)
!2236 = !DILocation(line: 198, column: 21, scope: !1925)
!2237 = !DILocation(line: 198, column: 25, scope: !1925)
!2238 = !DILocation(line: 0, scope: !1925)
!2239 = !DILocation(line: 209, column: 5, scope: !1925)
!2240 = !DILocation(line: 209, column: 15, scope: !1925)
!2241 = !DILocation(line: 212, column: 23, scope: !1925)
!2242 = !DILocation(line: 212, column: 25, scope: !1925)
!2243 = !DILocation(line: 212, column: 43, scope: !1925)
!2244 = !DILocation(line: 212, column: 36, scope: !1925)
!2245 = !DILocation(line: 212, column: 11, scope: !1925)
!2246 = !DILocation(line: 212, column: 13, scope: !1925)
!2247 = !DILocation(line: 212, column: 18, scope: !1925)
!2248 = !DILocation(line: 213, column: 41, scope: !1925)
!2249 = !DILocation(line: 213, column: 43, scope: !1925)
!2250 = !DILocation(line: 213, column: 36, scope: !1925)
!2251 = !DILocation(line: 213, column: 13, scope: !1925)
!2252 = !DILocation(line: 213, column: 18, scope: !1925)
!2253 = !DILocation(line: 214, column: 23, scope: !1925)
!2254 = !DILocation(line: 214, column: 25, scope: !1925)
!2255 = !DILocation(line: 214, column: 43, scope: !1925)
!2256 = !DILocation(line: 214, column: 36, scope: !1925)
!2257 = !DILocation(line: 214, column: 11, scope: !1925)
!2258 = !DILocation(line: 214, column: 13, scope: !1925)
!2259 = !DILocation(line: 214, column: 18, scope: !1925)
!2260 = !DILocation(line: 215, column: 30, scope: !1925)
!2261 = !DILocation(line: 215, column: 36, scope: !1925)
!2262 = !DILocation(line: 215, column: 13, scope: !1925)
!2263 = !DILocation(line: 215, column: 18, scope: !1925)
!2264 = !DILocation(line: 223, column: 37, scope: !1925)
!2265 = !DILocation(line: 223, column: 45, scope: !1925)
!2266 = !DILocation(line: 223, column: 49, scope: !1925)
!2267 = !DILocation(line: 225, column: 24, scope: !1925)
!2268 = !DILocation(line: 225, column: 11, scope: !1925)
!2269 = !DILocation(line: 225, column: 15, scope: !1925)
!2270 = !DILocation(line: 226, column: 5, scope: !1925)
!2271 = !DILocation(line: 224, column: 19, scope: !1925)
!2272 = !DILocation(line: 224, column: 17, scope: !1925)
!2273 = !DILocation(line: 209, column: 20, scope: !1925)
!2274 = distinct !{!2274, !2239, !2270, !425}
!2275 = !DILocation(line: 227, column: 16, scope: !1925)
!2276 = !DILocation(line: 227, column: 20, scope: !1925)
!2277 = !DILocation(line: 227, column: 28, scope: !1925)
!2278 = !DILocation(line: 227, column: 26, scope: !1925)
!2279 = !DILocation(line: 227, column: 7, scope: !1925)
!2280 = !DILocation(line: 227, column: 11, scope: !1925)
!2281 = !DILocation(line: 228, column: 9, scope: !1925)
!2282 = !DILocation(line: 229, column: 18, scope: !1925)
!2283 = !DILocation(line: 229, column: 14, scope: !1925)
!2284 = !DILocation(line: 229, column: 9, scope: !1925)
!2285 = !DILocation(line: 230, column: 14, scope: !1925)
!2286 = !DILocation(line: 230, column: 5, scope: !1925)
!2287 = !DILocation(line: 231, column: 1, scope: !1925)
!2288 = distinct !DISubprogram(name: "__divmoddi4", scope: !237, file: !237, line: 20, type: !1683, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !236, retainedNodes: !324)
!2289 = !DILocation(line: 22, column: 14, scope: !2288)
!2290 = !DILocation(line: 23, column: 16, scope: !2288)
!2291 = !DILocation(line: 23, column: 12, scope: !2288)
!2292 = !DILocation(line: 23, column: 8, scope: !2288)
!2293 = !DILocation(line: 24, column: 3, scope: !2288)
!2294 = distinct !DISubprogram(name: "__divmodsi4", scope: !239, file: !239, line: 20, type: !1683, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !238, retainedNodes: !324)
!2295 = !DILocation(line: 22, column: 14, scope: !2294)
!2296 = !DILocation(line: 23, column: 16, scope: !2294)
!2297 = !DILocation(line: 23, column: 12, scope: !2294)
!2298 = !DILocation(line: 23, column: 8, scope: !2294)
!2299 = !DILocation(line: 24, column: 3, scope: !2294)
!2300 = distinct !DISubprogram(name: "__divsi3", scope: !241, file: !241, line: 22, type: !1683, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !240, retainedNodes: !324)
!2301 = !DILocation(line: 25, column: 20, scope: !2300)
!2302 = !DILocation(line: 26, column: 20, scope: !2300)
!2303 = !DILocation(line: 27, column: 12, scope: !2300)
!2304 = !DILocation(line: 27, column: 19, scope: !2300)
!2305 = !DILocation(line: 28, column: 12, scope: !2300)
!2306 = !DILocation(line: 28, column: 19, scope: !2300)
!2307 = !DILocation(line: 29, column: 9, scope: !2300)
!2308 = !DILocation(line: 36, column: 22, scope: !2300)
!2309 = !DILocation(line: 36, column: 33, scope: !2300)
!2310 = !DILocation(line: 36, column: 40, scope: !2300)
!2311 = !DILocation(line: 36, column: 5, scope: !2300)
!2312 = distinct !DISubprogram(name: "__ffsdi2", scope: !245, file: !245, line: 22, type: !1683, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !244, retainedNodes: !324)
!2313 = !DILocation(line: 25, column: 7, scope: !2312)
!2314 = !DILocation(line: 25, column: 11, scope: !2312)
!2315 = !DILocation(line: 26, column: 13, scope: !2312)
!2316 = !DILocation(line: 26, column: 17, scope: !2312)
!2317 = !DILocation(line: 26, column: 9, scope: !2312)
!2318 = !DILocation(line: 28, column: 15, scope: !2312)
!2319 = !DILocation(line: 28, column: 17, scope: !2312)
!2320 = !DILocation(line: 28, column: 22, scope: !2312)
!2321 = !DILocation(line: 28, column: 13, scope: !2312)
!2322 = !DILocation(line: 29, column: 13, scope: !2312)
!2323 = !DILocation(line: 30, column: 32, scope: !2312)
!2324 = !DILocation(line: 30, column: 34, scope: !2312)
!2325 = !DILocation(line: 30, column: 16, scope: !2312)
!2326 = !DILocation(line: 30, column: 40, scope: !2312)
!2327 = !DILocation(line: 30, column: 9, scope: !2312)
!2328 = !DILocation(line: 32, column: 30, scope: !2312)
!2329 = !DILocation(line: 32, column: 12, scope: !2312)
!2330 = !DILocation(line: 32, column: 35, scope: !2312)
!2331 = !DILocation(line: 32, column: 5, scope: !2312)
!2332 = !DILocation(line: 0, scope: !2312)
!2333 = !DILocation(line: 33, column: 1, scope: !2312)
!2334 = distinct !DISubprogram(name: "__ffssi2", scope: !247, file: !247, line: 22, type: !1683, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !246, retainedNodes: !324)
!2335 = !DILocation(line: 24, column: 11, scope: !2334)
!2336 = !DILocation(line: 24, column: 9, scope: !2334)
!2337 = !DILocation(line: 26, column: 9, scope: !2334)
!2338 = !DILocation(line: 28, column: 12, scope: !2334)
!2339 = !DILocation(line: 28, column: 29, scope: !2334)
!2340 = !DILocation(line: 28, column: 5, scope: !2334)
!2341 = !DILocation(line: 0, scope: !2334)
!2342 = !DILocation(line: 29, column: 1, scope: !2334)
!2343 = distinct !DISubprogram(name: "__lshrdi3", scope: !253, file: !253, line: 24, type: !1683, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !252, retainedNodes: !324)
!2344 = !DILocation(line: 29, column: 11, scope: !2343)
!2345 = !DILocation(line: 29, column: 15, scope: !2343)
!2346 = !DILocation(line: 30, column: 11, scope: !2343)
!2347 = !DILocation(line: 30, column: 9, scope: !2343)
!2348 = !DILocation(line: 32, column: 16, scope: !2343)
!2349 = !DILocation(line: 32, column: 18, scope: !2343)
!2350 = !DILocation(line: 32, column: 23, scope: !2343)
!2351 = !DILocation(line: 33, column: 30, scope: !2343)
!2352 = !DILocation(line: 33, column: 32, scope: !2343)
!2353 = !DILocation(line: 33, column: 43, scope: !2343)
!2354 = !DILocation(line: 33, column: 37, scope: !2343)
!2355 = !DILocation(line: 33, column: 18, scope: !2343)
!2356 = !DILocation(line: 33, column: 22, scope: !2343)
!2357 = !DILocation(line: 34, column: 5, scope: !2343)
!2358 = !DILocation(line: 37, column: 15, scope: !2343)
!2359 = !DILocation(line: 37, column: 13, scope: !2343)
!2360 = !DILocation(line: 38, column: 13, scope: !2343)
!2361 = !DILocation(line: 39, column: 32, scope: !2343)
!2362 = !DILocation(line: 39, column: 34, scope: !2343)
!2363 = !DILocation(line: 39, column: 39, scope: !2343)
!2364 = !DILocation(line: 39, column: 16, scope: !2343)
!2365 = !DILocation(line: 39, column: 18, scope: !2343)
!2366 = !DILocation(line: 39, column: 24, scope: !2343)
!2367 = !DILocation(line: 40, column: 31, scope: !2343)
!2368 = !DILocation(line: 40, column: 33, scope: !2343)
!2369 = !DILocation(line: 40, column: 55, scope: !2343)
!2370 = !DILocation(line: 40, column: 38, scope: !2343)
!2371 = !DILocation(line: 40, column: 72, scope: !2343)
!2372 = !DILocation(line: 40, column: 76, scope: !2343)
!2373 = !DILocation(line: 40, column: 61, scope: !2343)
!2374 = !DILocation(line: 40, column: 18, scope: !2343)
!2375 = !DILocation(line: 40, column: 22, scope: !2343)
!2376 = !DILocation(line: 42, column: 19, scope: !2343)
!2377 = !DILocation(line: 42, column: 5, scope: !2343)
!2378 = !DILocation(line: 0, scope: !2343)
!2379 = !DILocation(line: 43, column: 1, scope: !2343)
!2380 = distinct !DISubprogram(name: "__moddi3", scope: !257, file: !257, line: 20, type: !1683, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !256, retainedNodes: !324)
!2381 = !DILocation(line: 24, column: 17, scope: !2380)
!2382 = !DILocation(line: 25, column: 11, scope: !2380)
!2383 = !DILocation(line: 26, column: 12, scope: !2380)
!2384 = !DILocation(line: 26, column: 17, scope: !2380)
!2385 = !DILocation(line: 28, column: 5, scope: !2380)
!2386 = !DILocation(line: 29, column: 21, scope: !2380)
!2387 = !DILocation(line: 29, column: 23, scope: !2380)
!2388 = !DILocation(line: 29, column: 28, scope: !2380)
!2389 = !DILocation(line: 29, column: 5, scope: !2380)
!2390 = distinct !DISubprogram(name: "__modsi3", scope: !259, file: !259, line: 20, type: !1683, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !258, retainedNodes: !324)
!2391 = !DILocation(line: 22, column: 16, scope: !2390)
!2392 = !DILocation(line: 22, column: 31, scope: !2390)
!2393 = !DILocation(line: 22, column: 14, scope: !2390)
!2394 = !DILocation(line: 22, column: 5, scope: !2390)
!2395 = distinct !DISubprogram(name: "__mulvdi3", scope: !263, file: !263, line: 22, type: !1683, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !262, retainedNodes: !324)
!2396 = !DILocation(line: 27, column: 11, scope: !2395)
!2397 = !DILocation(line: 27, column: 9, scope: !2395)
!2398 = !DILocation(line: 29, column: 15, scope: !2395)
!2399 = !DILocation(line: 29, column: 20, scope: !2395)
!2400 = !DILocation(line: 29, column: 25, scope: !2395)
!2401 = !DILocation(line: 29, column: 13, scope: !2395)
!2402 = !DILocation(line: 30, column: 13, scope: !2395)
!2403 = !DILocation(line: 31, column: 9, scope: !2395)
!2404 = !DILocation(line: 33, column: 11, scope: !2395)
!2405 = !DILocation(line: 33, column: 9, scope: !2395)
!2406 = !DILocation(line: 35, column: 15, scope: !2395)
!2407 = !DILocation(line: 35, column: 20, scope: !2395)
!2408 = !DILocation(line: 35, column: 25, scope: !2395)
!2409 = !DILocation(line: 35, column: 13, scope: !2395)
!2410 = !DILocation(line: 36, column: 13, scope: !2395)
!2411 = !DILocation(line: 37, column: 9, scope: !2395)
!2412 = !DILocation(line: 39, column: 19, scope: !2395)
!2413 = !DILocation(line: 40, column: 23, scope: !2395)
!2414 = !DILocation(line: 40, column: 29, scope: !2395)
!2415 = !DILocation(line: 41, column: 19, scope: !2395)
!2416 = !DILocation(line: 42, column: 23, scope: !2395)
!2417 = !DILocation(line: 42, column: 29, scope: !2395)
!2418 = !DILocation(line: 43, column: 15, scope: !2395)
!2419 = !DILocation(line: 43, column: 19, scope: !2395)
!2420 = !DILocation(line: 43, column: 28, scope: !2395)
!2421 = !DILocation(line: 43, column: 9, scope: !2395)
!2422 = !DILocation(line: 44, column: 9, scope: !2395)
!2423 = !DILocation(line: 45, column: 12, scope: !2395)
!2424 = !DILocation(line: 45, column: 9, scope: !2395)
!2425 = !DILocation(line: 47, column: 25, scope: !2395)
!2426 = !DILocation(line: 47, column: 19, scope: !2395)
!2427 = !DILocation(line: 47, column: 13, scope: !2395)
!2428 = !DILocation(line: 48, column: 13, scope: !2395)
!2429 = !DILocation(line: 49, column: 5, scope: !2395)
!2430 = !DILocation(line: 52, column: 27, scope: !2395)
!2431 = !DILocation(line: 52, column: 25, scope: !2395)
!2432 = !DILocation(line: 52, column: 19, scope: !2395)
!2433 = !DILocation(line: 52, column: 13, scope: !2395)
!2434 = !DILocation(line: 53, column: 13, scope: !2395)
!2435 = !DILocation(line: 55, column: 5, scope: !2395)
!2436 = !DILocation(line: 0, scope: !2395)
!2437 = !DILocation(line: 56, column: 1, scope: !2395)
!2438 = distinct !DISubprogram(name: "__mulvsi3", scope: !265, file: !265, line: 22, type: !1683, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !264, retainedNodes: !324)
!2439 = !DILocation(line: 27, column: 11, scope: !2438)
!2440 = !DILocation(line: 27, column: 9, scope: !2438)
!2441 = !DILocation(line: 29, column: 15, scope: !2438)
!2442 = !DILocation(line: 29, column: 20, scope: !2438)
!2443 = !DILocation(line: 29, column: 25, scope: !2438)
!2444 = !DILocation(line: 29, column: 13, scope: !2438)
!2445 = !DILocation(line: 30, column: 13, scope: !2438)
!2446 = !DILocation(line: 31, column: 9, scope: !2438)
!2447 = !DILocation(line: 33, column: 11, scope: !2438)
!2448 = !DILocation(line: 33, column: 9, scope: !2438)
!2449 = !DILocation(line: 35, column: 15, scope: !2438)
!2450 = !DILocation(line: 35, column: 20, scope: !2438)
!2451 = !DILocation(line: 35, column: 25, scope: !2438)
!2452 = !DILocation(line: 35, column: 13, scope: !2438)
!2453 = !DILocation(line: 36, column: 13, scope: !2438)
!2454 = !DILocation(line: 37, column: 9, scope: !2438)
!2455 = !DILocation(line: 39, column: 19, scope: !2438)
!2456 = !DILocation(line: 40, column: 23, scope: !2438)
!2457 = !DILocation(line: 40, column: 29, scope: !2438)
!2458 = !DILocation(line: 41, column: 19, scope: !2438)
!2459 = !DILocation(line: 42, column: 23, scope: !2438)
!2460 = !DILocation(line: 42, column: 29, scope: !2438)
!2461 = !DILocation(line: 43, column: 15, scope: !2438)
!2462 = !DILocation(line: 43, column: 19, scope: !2438)
!2463 = !DILocation(line: 43, column: 28, scope: !2438)
!2464 = !DILocation(line: 43, column: 9, scope: !2438)
!2465 = !DILocation(line: 44, column: 9, scope: !2438)
!2466 = !DILocation(line: 45, column: 12, scope: !2438)
!2467 = !DILocation(line: 45, column: 9, scope: !2438)
!2468 = !DILocation(line: 47, column: 25, scope: !2438)
!2469 = !DILocation(line: 47, column: 19, scope: !2438)
!2470 = !DILocation(line: 47, column: 13, scope: !2438)
!2471 = !DILocation(line: 48, column: 13, scope: !2438)
!2472 = !DILocation(line: 49, column: 5, scope: !2438)
!2473 = !DILocation(line: 52, column: 27, scope: !2438)
!2474 = !DILocation(line: 52, column: 25, scope: !2438)
!2475 = !DILocation(line: 52, column: 19, scope: !2438)
!2476 = !DILocation(line: 52, column: 13, scope: !2438)
!2477 = !DILocation(line: 53, column: 13, scope: !2438)
!2478 = !DILocation(line: 55, column: 5, scope: !2438)
!2479 = !DILocation(line: 0, scope: !2438)
!2480 = !DILocation(line: 56, column: 1, scope: !2438)
!2481 = distinct !DISubprogram(name: "__paritydi2", scope: !269, file: !269, line: 20, type: !1683, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !268, retainedNodes: !324)
!2482 = !DILocation(line: 23, column: 7, scope: !2481)
!2483 = !DILocation(line: 23, column: 11, scope: !2481)
!2484 = !DILocation(line: 24, column: 26, scope: !2481)
!2485 = !DILocation(line: 24, column: 28, scope: !2481)
!2486 = !DILocation(line: 24, column: 39, scope: !2481)
!2487 = !DILocation(line: 24, column: 33, scope: !2481)
!2488 = !DILocation(line: 24, column: 12, scope: !2481)
!2489 = !DILocation(line: 24, column: 5, scope: !2481)
!2490 = distinct !DISubprogram(name: "__paritysi2", scope: !271, file: !271, line: 20, type: !1683, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !270, retainedNodes: !324)
!2491 = !DILocation(line: 23, column: 12, scope: !2490)
!2492 = !DILocation(line: 23, column: 7, scope: !2490)
!2493 = !DILocation(line: 24, column: 12, scope: !2490)
!2494 = !DILocation(line: 24, column: 7, scope: !2490)
!2495 = !DILocation(line: 25, column: 12, scope: !2490)
!2496 = !DILocation(line: 25, column: 7, scope: !2490)
!2497 = !DILocation(line: 26, column: 26, scope: !2490)
!2498 = !DILocation(line: 26, column: 20, scope: !2490)
!2499 = !DILocation(line: 26, column: 34, scope: !2490)
!2500 = !DILocation(line: 26, column: 5, scope: !2490)
!2501 = distinct !DISubprogram(name: "__popcountdi2", scope: !275, file: !275, line: 20, type: !1683, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !274, retainedNodes: !324)
!2502 = !DILocation(line: 23, column: 20, scope: !2501)
!2503 = !DILocation(line: 23, column: 26, scope: !2501)
!2504 = !DILocation(line: 23, column: 13, scope: !2501)
!2505 = !DILocation(line: 25, column: 15, scope: !2501)
!2506 = !DILocation(line: 25, column: 21, scope: !2501)
!2507 = !DILocation(line: 25, column: 52, scope: !2501)
!2508 = !DILocation(line: 25, column: 46, scope: !2501)
!2509 = !DILocation(line: 27, column: 20, scope: !2501)
!2510 = !DILocation(line: 27, column: 14, scope: !2501)
!2511 = !DILocation(line: 27, column: 27, scope: !2501)
!2512 = !DILocation(line: 29, column: 34, scope: !2501)
!2513 = !DILocation(line: 29, column: 28, scope: !2501)
!2514 = !DILocation(line: 29, column: 16, scope: !2501)
!2515 = !DILocation(line: 32, column: 16, scope: !2501)
!2516 = !DILocation(line: 32, column: 11, scope: !2501)
!2517 = !DILocation(line: 35, column: 20, scope: !2501)
!2518 = !DILocation(line: 35, column: 15, scope: !2501)
!2519 = !DILocation(line: 35, column: 27, scope: !2501)
!2520 = !DILocation(line: 35, column: 5, scope: !2501)
!2521 = distinct !DISubprogram(name: "__popcountsi2", scope: !277, file: !277, line: 20, type: !1683, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !276, retainedNodes: !324)
!2522 = !DILocation(line: 23, column: 17, scope: !2521)
!2523 = !DILocation(line: 23, column: 23, scope: !2521)
!2524 = !DILocation(line: 23, column: 11, scope: !2521)
!2525 = !DILocation(line: 25, column: 13, scope: !2521)
!2526 = !DILocation(line: 25, column: 19, scope: !2521)
!2527 = !DILocation(line: 25, column: 38, scope: !2521)
!2528 = !DILocation(line: 25, column: 33, scope: !2521)
!2529 = !DILocation(line: 27, column: 17, scope: !2521)
!2530 = !DILocation(line: 27, column: 12, scope: !2521)
!2531 = !DILocation(line: 27, column: 24, scope: !2521)
!2532 = !DILocation(line: 29, column: 17, scope: !2521)
!2533 = !DILocation(line: 29, column: 12, scope: !2521)
!2534 = !DILocation(line: 32, column: 20, scope: !2521)
!2535 = !DILocation(line: 32, column: 15, scope: !2521)
!2536 = !DILocation(line: 32, column: 27, scope: !2521)
!2537 = !DILocation(line: 32, column: 5, scope: !2521)
!2538 = distinct !DISubprogram(name: "__subvdi3", scope: !281, file: !281, line: 22, type: !1683, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !280, retainedNodes: !324)
!2539 = !DILocation(line: 24, column: 27, scope: !2538)
!2540 = !DILocation(line: 25, column: 11, scope: !2538)
!2541 = !DILocation(line: 25, column: 9, scope: !2538)
!2542 = !DILocation(line: 27, column: 15, scope: !2538)
!2543 = !DILocation(line: 27, column: 13, scope: !2538)
!2544 = !DILocation(line: 28, column: 13, scope: !2538)
!2545 = !DILocation(line: 29, column: 5, scope: !2538)
!2546 = !DILocation(line: 32, column: 15, scope: !2538)
!2547 = !DILocation(line: 32, column: 13, scope: !2538)
!2548 = !DILocation(line: 33, column: 13, scope: !2538)
!2549 = !DILocation(line: 35, column: 5, scope: !2538)
!2550 = distinct !DISubprogram(name: "__subvsi3", scope: !283, file: !283, line: 22, type: !1683, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !282, retainedNodes: !324)
!2551 = !DILocation(line: 24, column: 27, scope: !2550)
!2552 = !DILocation(line: 25, column: 11, scope: !2550)
!2553 = !DILocation(line: 25, column: 9, scope: !2550)
!2554 = !DILocation(line: 27, column: 15, scope: !2550)
!2555 = !DILocation(line: 27, column: 13, scope: !2550)
!2556 = !DILocation(line: 28, column: 13, scope: !2550)
!2557 = !DILocation(line: 29, column: 5, scope: !2550)
!2558 = !DILocation(line: 32, column: 15, scope: !2550)
!2559 = !DILocation(line: 32, column: 13, scope: !2550)
!2560 = !DILocation(line: 33, column: 13, scope: !2550)
!2561 = !DILocation(line: 35, column: 5, scope: !2550)
!2562 = distinct !DISubprogram(name: "__ucmpdi2", scope: !287, file: !287, line: 23, type: !1683, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !286, retainedNodes: !324)
!2563 = !DILocation(line: 26, column: 7, scope: !2562)
!2564 = !DILocation(line: 26, column: 11, scope: !2562)
!2565 = !DILocation(line: 28, column: 7, scope: !2562)
!2566 = !DILocation(line: 28, column: 11, scope: !2562)
!2567 = !DILocation(line: 29, column: 11, scope: !2562)
!2568 = !DILocation(line: 29, column: 13, scope: !2562)
!2569 = !DILocation(line: 29, column: 22, scope: !2562)
!2570 = !DILocation(line: 29, column: 24, scope: !2562)
!2571 = !DILocation(line: 29, column: 18, scope: !2562)
!2572 = !DILocation(line: 29, column: 9, scope: !2562)
!2573 = !DILocation(line: 30, column: 9, scope: !2562)
!2574 = !DILocation(line: 31, column: 11, scope: !2562)
!2575 = !DILocation(line: 31, column: 13, scope: !2562)
!2576 = !DILocation(line: 31, column: 22, scope: !2562)
!2577 = !DILocation(line: 31, column: 24, scope: !2562)
!2578 = !DILocation(line: 31, column: 18, scope: !2562)
!2579 = !DILocation(line: 31, column: 9, scope: !2562)
!2580 = !DILocation(line: 32, column: 9, scope: !2562)
!2581 = !DILocation(line: 33, column: 13, scope: !2562)
!2582 = !DILocation(line: 33, column: 23, scope: !2562)
!2583 = !DILocation(line: 33, column: 17, scope: !2562)
!2584 = !DILocation(line: 33, column: 9, scope: !2562)
!2585 = !DILocation(line: 34, column: 9, scope: !2562)
!2586 = !DILocation(line: 35, column: 13, scope: !2562)
!2587 = !DILocation(line: 35, column: 23, scope: !2562)
!2588 = !DILocation(line: 35, column: 17, scope: !2562)
!2589 = !DILocation(line: 35, column: 9, scope: !2562)
!2590 = !DILocation(line: 36, column: 9, scope: !2562)
!2591 = !DILocation(line: 37, column: 5, scope: !2562)
!2592 = !DILocation(line: 0, scope: !2562)
!2593 = !DILocation(line: 38, column: 1, scope: !2562)
!2594 = distinct !DISubprogram(name: "__aeabi_ulcmp", scope: !287, file: !287, line: 46, type: !1683, scopeLine: 47, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !286, retainedNodes: !324)
!2595 = !DILocation(line: 48, column: 9, scope: !2594)
!2596 = !DILocation(line: 48, column: 25, scope: !2594)
!2597 = !DILocation(line: 48, column: 2, scope: !2594)
!2598 = distinct !DISubprogram(name: "__udivdi3", scope: !291, file: !291, line: 20, type: !1683, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !290, retainedNodes: !324)
!2599 = !DILocation(line: 22, column: 12, scope: !2598)
!2600 = !DILocation(line: 22, column: 5, scope: !2598)
!2601 = distinct !DISubprogram(name: "__udivmodsi4", scope: !295, file: !295, line: 20, type: !1683, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !294, retainedNodes: !324)
!2602 = !DILocation(line: 22, column: 14, scope: !2601)
!2603 = !DILocation(line: 23, column: 16, scope: !2601)
!2604 = !DILocation(line: 23, column: 12, scope: !2601)
!2605 = !DILocation(line: 23, column: 8, scope: !2601)
!2606 = !DILocation(line: 24, column: 3, scope: !2601)
!2607 = distinct !DISubprogram(name: "__udivsi3", scope: !299, file: !299, line: 25, type: !1683, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !298, retainedNodes: !324)
!2608 = !DILocation(line: 32, column: 11, scope: !2607)
!2609 = !DILocation(line: 32, column: 9, scope: !2607)
!2610 = !DILocation(line: 33, column: 9, scope: !2607)
!2611 = !DILocation(line: 34, column: 11, scope: !2607)
!2612 = !DILocation(line: 34, column: 9, scope: !2607)
!2613 = !DILocation(line: 35, column: 9, scope: !2607)
!2614 = !DILocation(line: 36, column: 10, scope: !2607)
!2615 = !DILocation(line: 36, column: 29, scope: !2607)
!2616 = !DILocation(line: 36, column: 27, scope: !2607)
!2617 = !DILocation(line: 38, column: 12, scope: !2607)
!2618 = !DILocation(line: 38, column: 9, scope: !2607)
!2619 = !DILocation(line: 39, column: 9, scope: !2607)
!2620 = !DILocation(line: 40, column: 12, scope: !2607)
!2621 = !DILocation(line: 40, column: 9, scope: !2607)
!2622 = !DILocation(line: 41, column: 9, scope: !2607)
!2623 = !DILocation(line: 42, column: 5, scope: !2607)
!2624 = !DILocation(line: 45, column: 28, scope: !2607)
!2625 = !DILocation(line: 45, column: 11, scope: !2607)
!2626 = !DILocation(line: 46, column: 11, scope: !2607)
!2627 = !DILocation(line: 48, column: 5, scope: !2607)
!2628 = !DILocation(line: 0, scope: !2607)
!2629 = !DILocation(line: 48, column: 15, scope: !2607)
!2630 = !DILocation(line: 51, column: 22, scope: !2607)
!2631 = !DILocation(line: 60, column: 41, scope: !2607)
!2632 = !DILocation(line: 63, column: 5, scope: !2607)
!2633 = !DILocation(line: 62, column: 16, scope: !2607)
!2634 = !DILocation(line: 62, column: 11, scope: !2607)
!2635 = !DILocation(line: 61, column: 19, scope: !2607)
!2636 = !DILocation(line: 52, column: 16, scope: !2607)
!2637 = !DILocation(line: 52, column: 22, scope: !2607)
!2638 = !DILocation(line: 48, column: 20, scope: !2607)
!2639 = distinct !{!2639, !2627, !2632, !425}
!2640 = !DILocation(line: 64, column: 12, scope: !2607)
!2641 = !DILocation(line: 64, column: 18, scope: !2607)
!2642 = !DILocation(line: 65, column: 5, scope: !2607)
!2643 = !DILocation(line: 66, column: 1, scope: !2607)
!2644 = distinct !DISubprogram(name: "__umoddi3", scope: !303, file: !303, line: 20, type: !1683, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !302, retainedNodes: !324)
!2645 = !DILocation(line: 23, column: 5, scope: !2644)
!2646 = !DILocation(line: 24, column: 12, scope: !2644)
!2647 = !DILocation(line: 24, column: 5, scope: !2644)
!2648 = distinct !DISubprogram(name: "__umodsi3", scope: !305, file: !305, line: 20, type: !1683, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !304, retainedNodes: !324)
!2649 = !DILocation(line: 22, column: 16, scope: !2648)
!2650 = !DILocation(line: 22, column: 32, scope: !2648)
!2651 = !DILocation(line: 22, column: 14, scope: !2648)
!2652 = !DILocation(line: 22, column: 5, scope: !2648)
!2653 = distinct !DISubprogram(name: "memcpy", scope: !309, file: !309, line: 3, type: !1683, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !308, retainedNodes: !324)
!2654 = !DILocation(line: 8, column: 6, scope: !2653)
!2655 = !DILocation(line: 0, scope: !2653)
!2656 = !DILocation(line: 8, column: 19, scope: !2653)
!2657 = !DILocation(line: 8, column: 2, scope: !2653)
!2658 = !DILocation(line: 9, column: 21, scope: !2653)
!2659 = !DILocation(line: 9, column: 3, scope: !2653)
!2660 = !DILocation(line: 9, column: 19, scope: !2653)
!2661 = !DILocation(line: 10, column: 2, scope: !2653)
!2662 = !DILocation(line: 8, column: 26, scope: !2653)
!2663 = distinct !{!2663, !2657, !2661, !425}
!2664 = !DILocation(line: 11, column: 1, scope: !2653)
!2665 = distinct !DISubprogram(name: "memset", scope: !309, file: !309, line: 13, type: !1683, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !308, retainedNodes: !324)
!2666 = !DILocation(line: 17, column: 6, scope: !2665)
!2667 = !DILocation(line: 0, scope: !2665)
!2668 = !DILocation(line: 17, column: 19, scope: !2665)
!2669 = !DILocation(line: 17, column: 2, scope: !2665)
!2670 = !DILocation(line: 18, column: 13, scope: !2665)
!2671 = !DILocation(line: 18, column: 3, scope: !2665)
!2672 = !DILocation(line: 18, column: 11, scope: !2665)
!2673 = !DILocation(line: 19, column: 2, scope: !2665)
!2674 = !DILocation(line: 17, column: 26, scope: !2665)
!2675 = distinct !{!2675, !2669, !2673, !425}
!2676 = !DILocation(line: 20, column: 2, scope: !2665)
