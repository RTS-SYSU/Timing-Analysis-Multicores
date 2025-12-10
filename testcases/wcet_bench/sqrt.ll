; ModuleID = '/workspaces/llvmta/testcases/wcet_bench/sqrt.c'
source_filename = "/workspaces/llvmta/testcases/wcet_bench/sqrt.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv4t-unknown-unknown"

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc float @fabs(float noundef %x) #0 !dbg !12 {
entry:
  %retval = alloca float, align 4
  %x.addr = alloca float, align 4
  store float %x, float* %x.addr, align 4
  %0 = load float, float* %x.addr, align 4, !dbg !16
  %cmp = fcmp olt float %0, 0.000000e+00, !dbg !17
  br i1 %cmp, label %if.then, label %if.else, !dbg !16

if.then:                                          ; preds = %entry
  %1 = load float, float* %x.addr, align 4, !dbg !18
  %fneg = fneg float %1, !dbg !19
  store float %fneg, float* %retval, align 4, !dbg !20
  br label %return, !dbg !20

if.else:                                          ; preds = %entry
  %2 = load float, float* %x.addr, align 4, !dbg !21
  store float %2, float* %retval, align 4, !dbg !22
  br label %return, !dbg !22

return:                                           ; preds = %if.else, %if.then
  %3 = load float, float* %retval, align 4, !dbg !23
  ret float %3, !dbg !23
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc float @sqrtfcn(float noundef %val) #0 !dbg !24 {
entry:
  %val.addr = alloca float, align 4
  %x = alloca float, align 4
  %dx = alloca float, align 4
  %diff = alloca double, align 8
  %min_tol = alloca double, align 8
  %i = alloca i32, align 4
  %flag = alloca i32, align 4
  store float %val, float* %val.addr, align 4
  %0 = load float, float* %val.addr, align 4, !dbg !25
  %div = fdiv float %0, 1.000000e+01, !dbg !26
  store float %div, float* %x, align 4, !dbg !27
  store double 1.000000e-05, double* %min_tol, align 8, !dbg !28
  store i32 0, i32* %flag, align 4, !dbg !29
  %1 = load float, float* %val.addr, align 4, !dbg !30
  %cmp = fcmp oeq float %1, 0.000000e+00, !dbg !31
  br i1 %cmp, label %if.then, label %if.else, !dbg !30

if.then:                                          ; preds = %entry
  store float 0.000000e+00, float* %x, align 4, !dbg !32
  br label %if.end16, !dbg !33

if.else:                                          ; preds = %entry
  store i32 1, i32* %i, align 4, !dbg !34
  br label %for.cond, !dbg !35

for.cond:                                         ; preds = %for.inc, %if.else
  %2 = load i32, i32* %i, align 4, !dbg !36
  %cmp1 = icmp slt i32 %2, 20, !dbg !37
  br i1 %cmp1, label %for.body, label %for.end, !dbg !38

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %flag, align 4, !dbg !39
  %tobool = icmp ne i32 %3, 0, !dbg !39
  br i1 %tobool, label %if.else14, label %if.then2, !dbg !40

if.then2:                                         ; preds = %for.body
  %4 = load float, float* %val.addr, align 4, !dbg !41
  %5 = load float, float* %x, align 4, !dbg !42
  %6 = load float, float* %x, align 4, !dbg !43
  %neg = fneg float %5, !dbg !44
  %7 = call float @llvm.fmuladd.f32(float %neg, float %6, float %4), !dbg !44
  %conv = fpext float %7 to double, !dbg !45
  %8 = load float, float* %x, align 4, !dbg !46
  %conv3 = fpext float %8 to double, !dbg !46
  %mul = fmul double 2.000000e+00, %conv3, !dbg !47
  %div4 = fdiv double %conv, %mul, !dbg !48
  %conv5 = fptrunc double %div4 to float, !dbg !45
  store float %conv5, float* %dx, align 4, !dbg !49
  %9 = load float, float* %x, align 4, !dbg !50
  %10 = load float, float* %dx, align 4, !dbg !51
  %add = fadd float %9, %10, !dbg !52
  store float %add, float* %x, align 4, !dbg !53
  %11 = load float, float* %val.addr, align 4, !dbg !54
  %12 = load float, float* %x, align 4, !dbg !55
  %13 = load float, float* %x, align 4, !dbg !56
  %neg7 = fneg float %12, !dbg !57
  %14 = call float @llvm.fmuladd.f32(float %neg7, float %13, float %11), !dbg !57
  %conv8 = fpext float %14 to double, !dbg !54
  store double %conv8, double* %diff, align 8, !dbg !58
  %15 = load double, double* %diff, align 8, !dbg !59
  %conv9 = fptrunc double %15 to float, !dbg !59
  %call = call arm_aapcs_vfpcc float @fabs(float noundef %conv9) #2, !dbg !60
  %conv10 = fpext float %call to double, !dbg !60
  %16 = load double, double* %min_tol, align 8, !dbg !61
  %cmp11 = fcmp ole double %conv10, %16, !dbg !62
  br i1 %cmp11, label %if.then13, label %if.end, !dbg !60

if.then13:                                        ; preds = %if.then2
  store i32 1, i32* %flag, align 4, !dbg !63
  br label %if.end, !dbg !64

if.end:                                           ; preds = %if.then13, %if.then2
  br label %if.end15, !dbg !65

if.else14:                                        ; preds = %for.body
  br label %if.end15

if.end15:                                         ; preds = %if.else14, %if.end
  br label %for.inc, !dbg !66

for.inc:                                          ; preds = %if.end15
  %17 = load i32, i32* %i, align 4, !dbg !67
  %inc = add nsw i32 %17, 1, !dbg !67
  store i32 %inc, i32* %i, align 4, !dbg !67
  br label %for.cond, !dbg !38, !llvm.loop !68

for.end:                                          ; preds = %for.cond
  br label %if.end16

if.end16:                                         ; preds = %for.end, %if.then
  %18 = load float, float* %x, align 4, !dbg !70
  ret float %18, !dbg !71
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.fmuladd.f32(float, float, float) #1

attributes #0 = { noinline nounwind "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nobuiltin "no-builtins" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 14.0.6 (git@github.com:RTS-SYSU/LLVM-TA.git b7f9c4ccdebc6c37532ddd772889e5f0ff989c79)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/workspaces/llvmta/testcases/wcet_bench/sqrt.c", directory: "/workspaces/llvmta/testcases/util_scripts", checksumkind: CSK_MD5, checksum: "a477b1009e3ca2817e394e69cb817d2e")
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
!12 = distinct !DISubprogram(name: "fabs", scope: !13, file: !13, line: 52, type: !14, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!13 = !DIFile(filename: "wcet_bench/sqrt.c", directory: "/workspaces/llvmta/testcases", checksumkind: CSK_MD5, checksum: "a477b1009e3ca2817e394e69cb817d2e")
!14 = !DISubroutineType(types: !15)
!15 = !{}
!16 = !DILocation(line: 54, column: 8, scope: !12)
!17 = !DILocation(line: 54, column: 10, scope: !12)
!18 = !DILocation(line: 55, column: 15, scope: !12)
!19 = !DILocation(line: 55, column: 14, scope: !12)
!20 = !DILocation(line: 55, column: 7, scope: !12)
!21 = !DILocation(line: 57, column: 14, scope: !12)
!22 = !DILocation(line: 57, column: 7, scope: !12)
!23 = !DILocation(line: 58, column: 1, scope: !12)
!24 = distinct !DISubprogram(name: "sqrtfcn", scope: !13, file: !13, line: 60, type: !14, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!25 = !DILocation(line: 62, column: 14, scope: !24)
!26 = !DILocation(line: 62, column: 17, scope: !24)
!27 = !DILocation(line: 62, column: 10, scope: !24)
!28 = !DILocation(line: 67, column: 11, scope: !24)
!29 = !DILocation(line: 71, column: 9, scope: !24)
!30 = !DILocation(line: 72, column: 8, scope: !24)
!31 = !DILocation(line: 72, column: 12, scope: !24)
!32 = !DILocation(line: 73, column: 9, scope: !24)
!33 = !DILocation(line: 73, column: 7, scope: !24)
!34 = !DILocation(line: 75, column: 13, scope: !24)
!35 = !DILocation(line: 75, column: 12, scope: !24)
!36 = !DILocation(line: 75, column: 16, scope: !24)
!37 = !DILocation(line: 75, column: 17, scope: !24)
!38 = !DILocation(line: 75, column: 7, scope: !24)
!39 = !DILocation(line: 77, column: 15, scope: !24)
!40 = !DILocation(line: 77, column: 14, scope: !24)
!41 = !DILocation(line: 78, column: 19, scope: !24)
!42 = !DILocation(line: 78, column: 26, scope: !24)
!43 = !DILocation(line: 78, column: 28, scope: !24)
!44 = !DILocation(line: 78, column: 23, scope: !24)
!45 = !DILocation(line: 78, column: 18, scope: !24)
!46 = !DILocation(line: 78, column: 41, scope: !24)
!47 = !DILocation(line: 78, column: 39, scope: !24)
!48 = !DILocation(line: 78, column: 32, scope: !24)
!49 = !DILocation(line: 78, column: 16, scope: !24)
!50 = !DILocation(line: 79, column: 17, scope: !24)
!51 = !DILocation(line: 79, column: 21, scope: !24)
!52 = !DILocation(line: 79, column: 19, scope: !24)
!53 = !DILocation(line: 79, column: 15, scope: !24)
!54 = !DILocation(line: 80, column: 20, scope: !24)
!55 = !DILocation(line: 80, column: 27, scope: !24)
!56 = !DILocation(line: 80, column: 29, scope: !24)
!57 = !DILocation(line: 80, column: 24, scope: !24)
!58 = !DILocation(line: 80, column: 18, scope: !24)
!59 = !DILocation(line: 81, column: 22, scope: !24)
!60 = !DILocation(line: 81, column: 17, scope: !24)
!61 = !DILocation(line: 81, column: 31, scope: !24)
!62 = !DILocation(line: 81, column: 28, scope: !24)
!63 = !DILocation(line: 82, column: 21, scope: !24)
!64 = !DILocation(line: 82, column: 16, scope: !24)
!65 = !DILocation(line: 83, column: 10, scope: !24)
!66 = !DILocation(line: 86, column: 7, scope: !24)
!67 = !DILocation(line: 75, column: 22, scope: !24)
!68 = distinct !{!68, !38, !66, !69}
!69 = !{!"llvm.loop.mustprogress"}
!70 = !DILocation(line: 88, column: 12, scope: !24)
!71 = !DILocation(line: 88, column: 4, scope: !24)
