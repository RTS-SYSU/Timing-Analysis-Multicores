; ModuleID = '/workspaces/llvmta/testcases/wcet_bench/matmult.c'
source_filename = "/workspaces/llvmta/testcases/wcet_bench/matmult.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv4t-unknown-unknown"

@ArrayA = dso_local global [20 x [20 x i32]] zeroinitializer, align 4
@ArrayB = dso_local global [20 x [20 x i32]] zeroinitializer, align 4
@ResultArray = dso_local global [20 x [20 x i32]] zeroinitializer, align 4
@Seed = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @matmult() #0 !dbg !12 {
entry:
  call arm_aapcs_vfpcc void @InitSeed() #1, !dbg !16
  call arm_aapcs_vfpcc void @Test([20 x i32]* noundef getelementptr inbounds ([20 x [20 x i32]], [20 x [20 x i32]]* @ArrayA, i32 0, i32 0), [20 x i32]* noundef getelementptr inbounds ([20 x [20 x i32]], [20 x [20 x i32]]* @ArrayB, i32 0, i32 0), [20 x i32]* noundef getelementptr inbounds ([20 x [20 x i32]], [20 x [20 x i32]]* @ResultArray, i32 0, i32 0)) #1, !dbg !17
  ret void, !dbg !18
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @InitSeed() #0 !dbg !19 {
entry:
  store i32 0, i32* @Seed, align 4, !dbg !20
  ret void, !dbg !21
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @Test([20 x i32]* noundef %A, [20 x i32]* noundef %B, [20 x i32]* noundef %Res) #0 !dbg !22 {
entry:
  %A.addr = alloca [20 x i32]*, align 4
  %B.addr = alloca [20 x i32]*, align 4
  %Res.addr = alloca [20 x i32]*, align 4
  store [20 x i32]* %A, [20 x i32]** %A.addr, align 4
  store [20 x i32]* %B, [20 x i32]** %B.addr, align 4
  store [20 x i32]* %Res, [20 x i32]** %Res.addr, align 4
  %0 = load [20 x i32]*, [20 x i32]** %A.addr, align 4, !dbg !23
  call arm_aapcs_vfpcc void @Initialize([20 x i32]* noundef %0) #1, !dbg !24
  %1 = load [20 x i32]*, [20 x i32]** %B.addr, align 4, !dbg !25
  call arm_aapcs_vfpcc void @Initialize([20 x i32]* noundef %1) #1, !dbg !26
  %2 = load [20 x i32]*, [20 x i32]** %A.addr, align 4, !dbg !27
  %3 = load [20 x i32]*, [20 x i32]** %B.addr, align 4, !dbg !28
  %4 = load [20 x i32]*, [20 x i32]** %Res.addr, align 4, !dbg !29
  call arm_aapcs_vfpcc void @Multiply([20 x i32]* noundef %2, [20 x i32]* noundef %3, [20 x i32]* noundef %4) #1, !dbg !30
  ret void, !dbg !31
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @Initialize([20 x i32]* noundef %Array) #0 !dbg !32 {
entry:
  %Array.addr = alloca [20 x i32]*, align 4
  %OuterIndex = alloca i32, align 4
  %InnerIndex = alloca i32, align 4
  store [20 x i32]* %Array, [20 x i32]** %Array.addr, align 4
  store i32 0, i32* %OuterIndex, align 4, !dbg !33
  br label %for.cond, !dbg !34

for.cond:                                         ; preds = %for.inc5, %entry
  %0 = load i32, i32* %OuterIndex, align 4, !dbg !35
  %cmp = icmp slt i32 %0, 20, !dbg !36
  br i1 %cmp, label %for.body, label %for.end7, !dbg !37

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %InnerIndex, align 4, !dbg !38
  br label %for.cond1, !dbg !39

for.cond1:                                        ; preds = %for.inc, %for.body
  %1 = load i32, i32* %InnerIndex, align 4, !dbg !40
  %cmp2 = icmp slt i32 %1, 20, !dbg !41
  br i1 %cmp2, label %for.body3, label %for.end, !dbg !42

for.body3:                                        ; preds = %for.cond1
  %call = call arm_aapcs_vfpcc i32 @RandomInteger() #1, !dbg !43
  %2 = load [20 x i32]*, [20 x i32]** %Array.addr, align 4, !dbg !44
  %3 = load i32, i32* %OuterIndex, align 4, !dbg !45
  %arrayidx = getelementptr inbounds [20 x i32], [20 x i32]* %2, i32 %3, !dbg !44
  %4 = load i32, i32* %InnerIndex, align 4, !dbg !46
  %arrayidx4 = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx, i32 0, i32 %4, !dbg !44
  store i32 %call, i32* %arrayidx4, align 4, !dbg !47
  br label %for.inc, !dbg !44

for.inc:                                          ; preds = %for.body3
  %5 = load i32, i32* %InnerIndex, align 4, !dbg !48
  %inc = add nsw i32 %5, 1, !dbg !48
  store i32 %inc, i32* %InnerIndex, align 4, !dbg !48
  br label %for.cond1, !dbg !42, !llvm.loop !49

for.end:                                          ; preds = %for.cond1
  br label %for.inc5, !dbg !50

for.inc5:                                         ; preds = %for.end
  %6 = load i32, i32* %OuterIndex, align 4, !dbg !52
  %inc6 = add nsw i32 %6, 1, !dbg !52
  store i32 %inc6, i32* %OuterIndex, align 4, !dbg !52
  br label %for.cond, !dbg !37, !llvm.loop !53

for.end7:                                         ; preds = %for.cond
  ret void, !dbg !54
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @Multiply([20 x i32]* noundef %A, [20 x i32]* noundef %B, [20 x i32]* noundef %Res) #0 !dbg !55 {
entry:
  %A.addr = alloca [20 x i32]*, align 4
  %B.addr = alloca [20 x i32]*, align 4
  %Res.addr = alloca [20 x i32]*, align 4
  %Outer = alloca i32, align 4
  %Inner = alloca i32, align 4
  %Index = alloca i32, align 4
  store [20 x i32]* %A, [20 x i32]** %A.addr, align 4
  store [20 x i32]* %B, [20 x i32]** %B.addr, align 4
  store [20 x i32]* %Res, [20 x i32]** %Res.addr, align 4
  store i32 0, i32* %Outer, align 4, !dbg !56
  br label %for.cond, !dbg !57

for.cond:                                         ; preds = %for.inc17, %entry
  %0 = load i32, i32* %Outer, align 4, !dbg !58
  %cmp = icmp slt i32 %0, 20, !dbg !59
  br i1 %cmp, label %for.body, label %for.end19, !dbg !60

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %Inner, align 4, !dbg !61
  br label %for.cond1, !dbg !62

for.cond1:                                        ; preds = %for.inc14, %for.body
  %1 = load i32, i32* %Inner, align 4, !dbg !63
  %cmp2 = icmp slt i32 %1, 20, !dbg !64
  br i1 %cmp2, label %for.body3, label %for.end16, !dbg !65

for.body3:                                        ; preds = %for.cond1
  %2 = load [20 x i32]*, [20 x i32]** %Res.addr, align 4, !dbg !66
  %3 = load i32, i32* %Outer, align 4, !dbg !67
  %arrayidx = getelementptr inbounds [20 x i32], [20 x i32]* %2, i32 %3, !dbg !66
  %4 = load i32, i32* %Inner, align 4, !dbg !68
  %arrayidx4 = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx, i32 0, i32 %4, !dbg !66
  store i32 0, i32* %arrayidx4, align 4, !dbg !69
  store i32 0, i32* %Index, align 4, !dbg !70
  br label %for.cond5, !dbg !71

for.cond5:                                        ; preds = %for.inc, %for.body3
  %5 = load i32, i32* %Index, align 4, !dbg !72
  %cmp6 = icmp slt i32 %5, 20, !dbg !73
  br i1 %cmp6, label %for.body7, label %for.end, !dbg !74

for.body7:                                        ; preds = %for.cond5
  %6 = load [20 x i32]*, [20 x i32]** %A.addr, align 4, !dbg !75
  %7 = load i32, i32* %Outer, align 4, !dbg !76
  %arrayidx8 = getelementptr inbounds [20 x i32], [20 x i32]* %6, i32 %7, !dbg !75
  %8 = load i32, i32* %Index, align 4, !dbg !77
  %arrayidx9 = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx8, i32 0, i32 %8, !dbg !75
  %9 = load i32, i32* %arrayidx9, align 4, !dbg !75
  %10 = load [20 x i32]*, [20 x i32]** %B.addr, align 4, !dbg !78
  %11 = load i32, i32* %Index, align 4, !dbg !79
  %arrayidx10 = getelementptr inbounds [20 x i32], [20 x i32]* %10, i32 %11, !dbg !78
  %12 = load i32, i32* %Inner, align 4, !dbg !80
  %arrayidx11 = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx10, i32 0, i32 %12, !dbg !78
  %13 = load i32, i32* %arrayidx11, align 4, !dbg !78
  %mul = mul nsw i32 %9, %13, !dbg !81
  %14 = load [20 x i32]*, [20 x i32]** %Res.addr, align 4, !dbg !82
  %15 = load i32, i32* %Outer, align 4, !dbg !83
  %arrayidx12 = getelementptr inbounds [20 x i32], [20 x i32]* %14, i32 %15, !dbg !82
  %16 = load i32, i32* %Inner, align 4, !dbg !84
  %arrayidx13 = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx12, i32 0, i32 %16, !dbg !82
  %17 = load i32, i32* %arrayidx13, align 4, !dbg !85
  %add = add nsw i32 %17, %mul, !dbg !85
  store i32 %add, i32* %arrayidx13, align 4, !dbg !85
  br label %for.inc, !dbg !82

for.inc:                                          ; preds = %for.body7
  %18 = load i32, i32* %Index, align 4, !dbg !86
  %inc = add nsw i32 %18, 1, !dbg !86
  store i32 %inc, i32* %Index, align 4, !dbg !86
  br label %for.cond5, !dbg !74, !llvm.loop !87

for.end:                                          ; preds = %for.cond5
  br label %for.inc14, !dbg !89

for.inc14:                                        ; preds = %for.end
  %19 = load i32, i32* %Inner, align 4, !dbg !90
  %inc15 = add nsw i32 %19, 1, !dbg !90
  store i32 %inc15, i32* %Inner, align 4, !dbg !90
  br label %for.cond1, !dbg !65, !llvm.loop !91

for.end16:                                        ; preds = %for.cond1
  br label %for.inc17, !dbg !89

for.inc17:                                        ; preds = %for.end16
  %20 = load i32, i32* %Outer, align 4, !dbg !92
  %inc18 = add nsw i32 %20, 1, !dbg !92
  store i32 %inc18, i32* %Outer, align 4, !dbg !92
  br label %for.cond, !dbg !60, !llvm.loop !93

for.end19:                                        ; preds = %for.cond
  ret void, !dbg !94
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @RandomInteger() #0 !dbg !95 {
entry:
  %0 = load i32, i32* @Seed, align 4, !dbg !96
  %mul = mul nsw i32 %0, 133, !dbg !97
  %add = add nsw i32 %mul, 81, !dbg !98
  %rem = srem i32 %add, 8095, !dbg !99
  store i32 %rem, i32* @Seed, align 4, !dbg !100
  %1 = load i32, i32* @Seed, align 4, !dbg !101
  ret i32 %1, !dbg !102
}

attributes #0 = { noinline nounwind "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #1 = { nobuiltin "no-builtins" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 14.0.6 (git@github.com:RTS-SYSU/LLVM-TA.git b7f9c4ccdebc6c37532ddd772889e5f0ff989c79)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/workspaces/llvmta/testcases/wcet_bench/matmult.c", directory: "/workspaces/llvmta/testcases/util_scripts", checksumkind: CSK_MD5, checksum: "9a184d8c1a3e835ab24813f22529d2a5")
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
!12 = distinct !DISubprogram(name: "matmult", scope: !13, file: !13, line: 52, type: !14, scopeLine: 53, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!13 = !DIFile(filename: "wcet_bench/matmult.c", directory: "/workspaces/llvmta/testcases", checksumkind: CSK_MD5, checksum: "9a184d8c1a3e835ab24813f22529d2a5")
!14 = !DISubroutineType(types: !15)
!15 = !{}
!16 = !DILocation(line: 54, column: 4, scope: !12)
!17 = !DILocation(line: 61, column: 4, scope: !12)
!18 = !DILocation(line: 62, column: 1, scope: !12)
!19 = distinct !DISubprogram(name: "InitSeed", scope: !13, file: !13, line: 65, type: !14, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!20 = !DILocation(line: 73, column: 8, scope: !19)
!21 = !DILocation(line: 74, column: 1, scope: !19)
!22 = distinct !DISubprogram(name: "Test", scope: !13, file: !13, line: 77, type: !14, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!23 = !DILocation(line: 88, column: 15, scope: !22)
!24 = !DILocation(line: 88, column: 4, scope: !22)
!25 = !DILocation(line: 89, column: 15, scope: !22)
!26 = !DILocation(line: 89, column: 4, scope: !22)
!27 = !DILocation(line: 96, column: 13, scope: !22)
!28 = !DILocation(line: 96, column: 16, scope: !22)
!29 = !DILocation(line: 96, column: 19, scope: !22)
!30 = !DILocation(line: 96, column: 4, scope: !22)
!31 = !DILocation(line: 105, column: 1, scope: !22)
!32 = distinct !DISubprogram(name: "Initialize", scope: !13, file: !13, line: 108, type: !14, scopeLine: 112, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!33 = !DILocation(line: 115, column: 20, scope: !32)
!34 = !DILocation(line: 115, column: 9, scope: !32)
!35 = !DILocation(line: 115, column: 25, scope: !32)
!36 = !DILocation(line: 115, column: 36, scope: !32)
!37 = !DILocation(line: 115, column: 4, scope: !32)
!38 = !DILocation(line: 116, column: 23, scope: !32)
!39 = !DILocation(line: 116, column: 12, scope: !32)
!40 = !DILocation(line: 116, column: 28, scope: !32)
!41 = !DILocation(line: 116, column: 39, scope: !32)
!42 = !DILocation(line: 116, column: 7, scope: !32)
!43 = !DILocation(line: 117, column: 42, scope: !32)
!44 = !DILocation(line: 117, column: 10, scope: !32)
!45 = !DILocation(line: 117, column: 16, scope: !32)
!46 = !DILocation(line: 117, column: 28, scope: !32)
!47 = !DILocation(line: 117, column: 40, scope: !32)
!48 = !DILocation(line: 116, column: 63, scope: !32)
!49 = distinct !{!49, !42, !50, !51}
!50 = !DILocation(line: 117, column: 56, scope: !32)
!51 = !{!"llvm.loop.mustprogress"}
!52 = !DILocation(line: 115, column: 60, scope: !32)
!53 = distinct !{!53, !37, !50, !51}
!54 = !DILocation(line: 118, column: 1, scope: !32)
!55 = distinct !DISubprogram(name: "Multiply", scope: !13, file: !13, line: 147, type: !14, scopeLine: 151, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!56 = !DILocation(line: 154, column: 15, scope: !55)
!57 = !DILocation(line: 154, column: 9, scope: !55)
!58 = !DILocation(line: 154, column: 20, scope: !55)
!59 = !DILocation(line: 154, column: 26, scope: !55)
!60 = !DILocation(line: 154, column: 4, scope: !55)
!61 = !DILocation(line: 155, column: 18, scope: !55)
!62 = !DILocation(line: 155, column: 12, scope: !55)
!63 = !DILocation(line: 155, column: 23, scope: !55)
!64 = !DILocation(line: 155, column: 29, scope: !55)
!65 = !DILocation(line: 155, column: 7, scope: !55)
!66 = !DILocation(line: 157, column: 10, scope: !55)
!67 = !DILocation(line: 157, column: 15, scope: !55)
!68 = !DILocation(line: 157, column: 22, scope: !55)
!69 = !DILocation(line: 157, column: 29, scope: !55)
!70 = !DILocation(line: 158, column: 21, scope: !55)
!71 = !DILocation(line: 158, column: 15, scope: !55)
!72 = !DILocation(line: 158, column: 26, scope: !55)
!73 = !DILocation(line: 158, column: 32, scope: !55)
!74 = !DILocation(line: 158, column: 10, scope: !55)
!75 = !DILocation(line: 160, column: 16, scope: !55)
!76 = !DILocation(line: 160, column: 18, scope: !55)
!77 = !DILocation(line: 160, column: 25, scope: !55)
!78 = !DILocation(line: 160, column: 34, scope: !55)
!79 = !DILocation(line: 160, column: 36, scope: !55)
!80 = !DILocation(line: 160, column: 43, scope: !55)
!81 = !DILocation(line: 160, column: 32, scope: !55)
!82 = !DILocation(line: 159, column: 13, scope: !55)
!83 = !DILocation(line: 159, column: 17, scope: !55)
!84 = !DILocation(line: 159, column: 24, scope: !55)
!85 = !DILocation(line: 159, column: 32, scope: !55)
!86 = !DILocation(line: 158, column: 51, scope: !55)
!87 = distinct !{!87, !74, !88, !51}
!88 = !DILocation(line: 160, column: 48, scope: !55)
!89 = !DILocation(line: 161, column: 8, scope: !55)
!90 = !DILocation(line: 155, column: 48, scope: !55)
!91 = distinct !{!91, !65, !89, !51}
!92 = !DILocation(line: 154, column: 45, scope: !55)
!93 = distinct !{!93, !60, !89, !51}
!94 = !DILocation(line: 162, column: 1, scope: !55)
!95 = distinct !DISubprogram(name: "RandomInteger", scope: !13, file: !13, line: 121, type: !14, scopeLine: 125, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!96 = !DILocation(line: 126, column: 13, scope: !95)
!97 = !DILocation(line: 126, column: 18, scope: !95)
!98 = !DILocation(line: 126, column: 25, scope: !95)
!99 = !DILocation(line: 126, column: 31, scope: !95)
!100 = !DILocation(line: 126, column: 9, scope: !95)
!101 = !DILocation(line: 127, column: 12, scope: !95)
!102 = !DILocation(line: 127, column: 4, scope: !95)
