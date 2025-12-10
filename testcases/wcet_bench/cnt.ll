; ModuleID = '/workspaces/llvmta/testcases/wcet_bench/cnt.c'
source_filename = "/workspaces/llvmta/testcases/wcet_bench/cnt.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv4t-unknown-unknown"

@Array = dso_local global [10 x [10 x i32]] zeroinitializer, align 4
@Seed = dso_local global i32 0, align 4
@Postotal = dso_local global i32 0, align 4
@Poscnt = dso_local global i32 0, align 4
@Negtotal = dso_local global i32 0, align 4
@Negcnt = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @main() #0 !dbg !12 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %call = call arm_aapcs_vfpcc i32 @InitSeed() #1, !dbg !16
  %call1 = call arm_aapcs_vfpcc i32 @Test([10 x i32]* noundef getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @Array, i32 0, i32 0)) #1, !dbg !17
  ret i32 1, !dbg !18
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @InitSeed() #0 !dbg !19 {
entry:
  store i32 0, i32* @Seed, align 4, !dbg !20
  ret i32 0, !dbg !21
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @Test([10 x i32]* noundef %Array) #0 !dbg !22 {
entry:
  %Array.addr = alloca [10 x i32]*, align 4
  %StartTime = alloca i32, align 4
  %StopTime = alloca i32, align 4
  %TotalTime = alloca float, align 4
  store [10 x i32]* %Array, [10 x i32]** %Array.addr, align 4
  %0 = load [10 x i32]*, [10 x i32]** %Array.addr, align 4, !dbg !23
  %call = call arm_aapcs_vfpcc i32 @Initialize([10 x i32]* noundef %0) #1, !dbg !24
  store i32 1000, i32* %StartTime, align 4, !dbg !25
  %1 = load [10 x i32]*, [10 x i32]** %Array.addr, align 4, !dbg !26
  call arm_aapcs_vfpcc void @Sum([10 x i32]* noundef %1) #1, !dbg !27
  store i32 1500, i32* %StopTime, align 4, !dbg !28
  %2 = load i32, i32* %StopTime, align 4, !dbg !29
  %3 = load i32, i32* %StartTime, align 4, !dbg !30
  %sub = sub nsw i32 %2, %3, !dbg !31
  %conv = sitofp i32 %sub to double, !dbg !32
  %div = fdiv double %conv, 1.000000e+03, !dbg !33
  %conv1 = fptrunc double %div to float, !dbg !32
  store float %conv1, float* %TotalTime, align 4, !dbg !34
  ret i32 0, !dbg !35
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @Initialize([10 x i32]* noundef %Array) #0 !dbg !36 {
entry:
  %Array.addr = alloca [10 x i32]*, align 4
  %OuterIndex = alloca i32, align 4
  %InnerIndex = alloca i32, align 4
  store [10 x i32]* %Array, [10 x i32]** %Array.addr, align 4
  store i32 0, i32* %OuterIndex, align 4, !dbg !37
  br label %for.cond, !dbg !38

for.cond:                                         ; preds = %for.inc5, %entry
  %0 = load i32, i32* %OuterIndex, align 4, !dbg !39
  %cmp = icmp slt i32 %0, 10, !dbg !40
  br i1 %cmp, label %for.body, label %for.end7, !dbg !41

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %InnerIndex, align 4, !dbg !42
  br label %for.cond1, !dbg !43

for.cond1:                                        ; preds = %for.inc, %for.body
  %1 = load i32, i32* %InnerIndex, align 4, !dbg !44
  %cmp2 = icmp slt i32 %1, 10, !dbg !45
  br i1 %cmp2, label %for.body3, label %for.end, !dbg !46

for.body3:                                        ; preds = %for.cond1
  %call = call arm_aapcs_vfpcc i32 @RandomInteger() #1, !dbg !47
  %2 = load [10 x i32]*, [10 x i32]** %Array.addr, align 4, !dbg !48
  %3 = load i32, i32* %OuterIndex, align 4, !dbg !49
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %2, i32 %3, !dbg !48
  %4 = load i32, i32* %InnerIndex, align 4, !dbg !50
  %arrayidx4 = getelementptr inbounds [10 x i32], [10 x i32]* %arrayidx, i32 0, i32 %4, !dbg !48
  store i32 %call, i32* %arrayidx4, align 4, !dbg !51
  br label %for.inc, !dbg !48

for.inc:                                          ; preds = %for.body3
  %5 = load i32, i32* %InnerIndex, align 4, !dbg !52
  %inc = add nsw i32 %5, 1, !dbg !52
  store i32 %inc, i32* %InnerIndex, align 4, !dbg !52
  br label %for.cond1, !dbg !46, !llvm.loop !53

for.end:                                          ; preds = %for.cond1
  br label %for.inc5, !dbg !54

for.inc5:                                         ; preds = %for.end
  %6 = load i32, i32* %OuterIndex, align 4, !dbg !56
  %inc6 = add nsw i32 %6, 1, !dbg !56
  store i32 %inc6, i32* %OuterIndex, align 4, !dbg !56
  br label %for.cond, !dbg !41, !llvm.loop !57

for.end7:                                         ; preds = %for.cond
  ret i32 0, !dbg !58
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @Sum([10 x i32]* noundef %Array) #0 !dbg !59 {
entry:
  %Array.addr = alloca [10 x i32]*, align 4
  %Outer = alloca i32, align 4
  %Inner = alloca i32, align 4
  %Ptotal = alloca i32, align 4
  %Ntotal = alloca i32, align 4
  %Pcnt = alloca i32, align 4
  %Ncnt = alloca i32, align 4
  store [10 x i32]* %Array, [10 x i32]** %Array.addr, align 4
  store i32 0, i32* %Ptotal, align 4, !dbg !60
  store i32 0, i32* %Ntotal, align 4, !dbg !61
  store i32 0, i32* %Pcnt, align 4, !dbg !62
  store i32 0, i32* %Ncnt, align 4, !dbg !63
  store i32 0, i32* %Outer, align 4, !dbg !64
  br label %for.cond, !dbg !65

for.cond:                                         ; preds = %for.inc13, %entry
  %0 = load i32, i32* %Outer, align 4, !dbg !66
  %cmp = icmp slt i32 %0, 10, !dbg !67
  br i1 %cmp, label %for.body, label %for.end15, !dbg !68

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %Inner, align 4, !dbg !69
  br label %for.cond1, !dbg !70

for.cond1:                                        ; preds = %for.inc, %for.body
  %1 = load i32, i32* %Inner, align 4, !dbg !71
  %cmp2 = icmp slt i32 %1, 10, !dbg !72
  br i1 %cmp2, label %for.body3, label %for.end, !dbg !73

for.body3:                                        ; preds = %for.cond1
  %2 = load [10 x i32]*, [10 x i32]** %Array.addr, align 4, !dbg !74
  %3 = load i32, i32* %Outer, align 4, !dbg !75
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %2, i32 %3, !dbg !74
  %4 = load i32, i32* %Inner, align 4, !dbg !76
  %arrayidx4 = getelementptr inbounds [10 x i32], [10 x i32]* %arrayidx, i32 0, i32 %4, !dbg !74
  %5 = load i32, i32* %arrayidx4, align 4, !dbg !74
  %cmp5 = icmp slt i32 %5, 0, !dbg !77
  br i1 %cmp5, label %if.then, label %if.else, !dbg !74

if.then:                                          ; preds = %for.body3
  %6 = load [10 x i32]*, [10 x i32]** %Array.addr, align 4, !dbg !78
  %7 = load i32, i32* %Outer, align 4, !dbg !79
  %arrayidx6 = getelementptr inbounds [10 x i32], [10 x i32]* %6, i32 %7, !dbg !78
  %8 = load i32, i32* %Inner, align 4, !dbg !80
  %arrayidx7 = getelementptr inbounds [10 x i32], [10 x i32]* %arrayidx6, i32 0, i32 %8, !dbg !78
  %9 = load i32, i32* %arrayidx7, align 4, !dbg !78
  %10 = load i32, i32* %Ptotal, align 4, !dbg !81
  %add = add nsw i32 %10, %9, !dbg !81
  store i32 %add, i32* %Ptotal, align 4, !dbg !81
  %11 = load i32, i32* %Pcnt, align 4, !dbg !82
  %inc = add nsw i32 %11, 1, !dbg !82
  store i32 %inc, i32* %Pcnt, align 4, !dbg !82
  br label %if.end, !dbg !83

if.else:                                          ; preds = %for.body3
  %12 = load [10 x i32]*, [10 x i32]** %Array.addr, align 4, !dbg !84
  %13 = load i32, i32* %Outer, align 4, !dbg !85
  %arrayidx8 = getelementptr inbounds [10 x i32], [10 x i32]* %12, i32 %13, !dbg !84
  %14 = load i32, i32* %Inner, align 4, !dbg !86
  %arrayidx9 = getelementptr inbounds [10 x i32], [10 x i32]* %arrayidx8, i32 0, i32 %14, !dbg !84
  %15 = load i32, i32* %arrayidx9, align 4, !dbg !84
  %16 = load i32, i32* %Ntotal, align 4, !dbg !87
  %add10 = add nsw i32 %16, %15, !dbg !87
  store i32 %add10, i32* %Ntotal, align 4, !dbg !87
  %17 = load i32, i32* %Ncnt, align 4, !dbg !88
  %inc11 = add nsw i32 %17, 1, !dbg !88
  store i32 %inc11, i32* %Ncnt, align 4, !dbg !88
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc, !dbg !89

for.inc:                                          ; preds = %if.end
  %18 = load i32, i32* %Inner, align 4, !dbg !90
  %inc12 = add nsw i32 %18, 1, !dbg !90
  store i32 %inc12, i32* %Inner, align 4, !dbg !90
  br label %for.cond1, !dbg !73, !llvm.loop !91

for.end:                                          ; preds = %for.cond1
  br label %for.inc13, !dbg !92

for.inc13:                                        ; preds = %for.end
  %19 = load i32, i32* %Outer, align 4, !dbg !93
  %inc14 = add nsw i32 %19, 1, !dbg !93
  store i32 %inc14, i32* %Outer, align 4, !dbg !93
  br label %for.cond, !dbg !68, !llvm.loop !94

for.end15:                                        ; preds = %for.cond
  %20 = load i32, i32* %Ptotal, align 4, !dbg !95
  store i32 %20, i32* @Postotal, align 4, !dbg !96
  %21 = load i32, i32* %Pcnt, align 4, !dbg !97
  store i32 %21, i32* @Poscnt, align 4, !dbg !98
  %22 = load i32, i32* %Ntotal, align 4, !dbg !99
  store i32 %22, i32* @Negtotal, align 4, !dbg !100
  %23 = load i32, i32* %Ncnt, align 4, !dbg !101
  store i32 %23, i32* @Negcnt, align 4, !dbg !102
  ret void, !dbg !103
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @RandomInteger() #0 !dbg !104 {
entry:
  %0 = load i32, i32* @Seed, align 4, !dbg !105
  %mul = mul nsw i32 %0, 133, !dbg !106
  %add = add nsw i32 %mul, 81, !dbg !107
  %rem = srem i32 %add, 8095, !dbg !108
  store i32 %rem, i32* @Seed, align 4, !dbg !109
  %1 = load i32, i32* @Seed, align 4, !dbg !110
  ret i32 %1, !dbg !111
}

attributes #0 = { noinline nounwind "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #1 = { nobuiltin "no-builtins" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 14.0.6 (git@github.com:RTS-SYSU/LLVM-TA.git b7f9c4ccdebc6c37532ddd772889e5f0ff989c79)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/workspaces/llvmta/testcases/wcet_bench/cnt.c", directory: "/workspaces/llvmta/testcases/util_scripts", checksumkind: CSK_MD5, checksum: "1434d58548875dde379095d73eaaacb8")
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
!12 = distinct !DISubprogram(name: "main", scope: !13, file: !13, line: 43, type: !14, scopeLine: 45, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!13 = !DIFile(filename: "wcet_bench/cnt.c", directory: "/workspaces/llvmta/testcases", checksumkind: CSK_MD5, checksum: "1434d58548875dde379095d73eaaacb8")
!14 = !DISubroutineType(types: !15)
!15 = !{}
!16 = !DILocation(line: 47, column: 3, scope: !12)
!17 = !DILocation(line: 53, column: 3, scope: !12)
!18 = !DILocation(line: 55, column: 3, scope: !12)
!19 = distinct !DISubprogram(name: "InitSeed", scope: !13, file: !13, line: 108, type: !14, scopeLine: 110, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!20 = !DILocation(line: 112, column: 8, scope: !19)
!21 = !DILocation(line: 114, column: 3, scope: !19)
!22 = distinct !DISubprogram(name: "Test", scope: !13, file: !13, line: 58, type: !14, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!23 = !DILocation(line: 66, column: 14, scope: !22)
!24 = !DILocation(line: 66, column: 3, scope: !22)
!25 = !DILocation(line: 68, column: 13, scope: !22)
!26 = !DILocation(line: 70, column: 7, scope: !22)
!27 = !DILocation(line: 70, column: 3, scope: !22)
!28 = !DILocation(line: 72, column: 12, scope: !22)
!29 = !DILocation(line: 74, column: 16, scope: !22)
!30 = !DILocation(line: 74, column: 27, scope: !22)
!31 = !DILocation(line: 74, column: 25, scope: !22)
!32 = !DILocation(line: 74, column: 15, scope: !22)
!33 = !DILocation(line: 74, column: 38, scope: !22)
!34 = !DILocation(line: 74, column: 13, scope: !22)
!35 = !DILocation(line: 86, column: 3, scope: !22)
!36 = distinct !DISubprogram(name: "Initialize", scope: !13, file: !13, line: 91, type: !14, scopeLine: 93, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!37 = !DILocation(line: 97, column: 19, scope: !36)
!38 = !DILocation(line: 97, column: 8, scope: !36)
!39 = !DILocation(line: 97, column: 24, scope: !36)
!40 = !DILocation(line: 97, column: 35, scope: !36)
!41 = !DILocation(line: 97, column: 3, scope: !36)
!42 = !DILocation(line: 99, column: 21, scope: !36)
!43 = !DILocation(line: 99, column: 10, scope: !36)
!44 = !DILocation(line: 99, column: 26, scope: !36)
!45 = !DILocation(line: 99, column: 37, scope: !36)
!46 = !DILocation(line: 99, column: 5, scope: !36)
!47 = !DILocation(line: 101, column: 39, scope: !36)
!48 = !DILocation(line: 101, column: 7, scope: !36)
!49 = !DILocation(line: 101, column: 13, scope: !36)
!50 = !DILocation(line: 101, column: 25, scope: !36)
!51 = !DILocation(line: 101, column: 37, scope: !36)
!52 = !DILocation(line: 99, column: 58, scope: !36)
!53 = distinct !{!53, !46, !54, !55}
!54 = !DILocation(line: 101, column: 53, scope: !36)
!55 = !{!"llvm.loop.mustprogress"}
!56 = !DILocation(line: 97, column: 56, scope: !36)
!57 = distinct !{!57, !41, !54, !55}
!58 = !DILocation(line: 103, column: 3, scope: !36)
!59 = distinct !DISubprogram(name: "Sum", scope: !13, file: !13, line: 117, type: !14, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!60 = !DILocation(line: 123, column: 7, scope: !59)
!61 = !DILocation(line: 125, column: 7, scope: !59)
!62 = !DILocation(line: 127, column: 7, scope: !59)
!63 = !DILocation(line: 129, column: 7, scope: !59)
!64 = !DILocation(line: 131, column: 14, scope: !59)
!65 = !DILocation(line: 131, column: 8, scope: !59)
!66 = !DILocation(line: 131, column: 19, scope: !59)
!67 = !DILocation(line: 131, column: 25, scope: !59)
!68 = !DILocation(line: 131, column: 3, scope: !59)
!69 = !DILocation(line: 133, column: 16, scope: !59)
!70 = !DILocation(line: 133, column: 10, scope: !59)
!71 = !DILocation(line: 133, column: 21, scope: !59)
!72 = !DILocation(line: 133, column: 27, scope: !59)
!73 = !DILocation(line: 133, column: 5, scope: !59)
!74 = !DILocation(line: 141, column: 11, scope: !59)
!75 = !DILocation(line: 141, column: 17, scope: !59)
!76 = !DILocation(line: 141, column: 24, scope: !59)
!77 = !DILocation(line: 141, column: 31, scope: !59)
!78 = !DILocation(line: 145, column: 19, scope: !59)
!79 = !DILocation(line: 145, column: 25, scope: !59)
!80 = !DILocation(line: 145, column: 32, scope: !59)
!81 = !DILocation(line: 145, column: 16, scope: !59)
!82 = !DILocation(line: 147, column: 13, scope: !59)
!83 = !DILocation(line: 149, column: 7, scope: !59)
!84 = !DILocation(line: 153, column: 19, scope: !59)
!85 = !DILocation(line: 153, column: 25, scope: !59)
!86 = !DILocation(line: 153, column: 32, scope: !59)
!87 = !DILocation(line: 153, column: 16, scope: !59)
!88 = !DILocation(line: 155, column: 13, scope: !59)
!89 = !DILocation(line: 141, column: 33, scope: !59)
!90 = !DILocation(line: 133, column: 43, scope: !59)
!91 = distinct !{!91, !73, !92, !55}
!92 = !DILocation(line: 156, column: 7, scope: !59)
!93 = !DILocation(line: 131, column: 41, scope: !59)
!94 = distinct !{!94, !68, !92, !55}
!95 = !DILocation(line: 158, column: 14, scope: !59)
!96 = !DILocation(line: 158, column: 12, scope: !59)
!97 = !DILocation(line: 160, column: 12, scope: !59)
!98 = !DILocation(line: 160, column: 10, scope: !59)
!99 = !DILocation(line: 162, column: 14, scope: !59)
!100 = !DILocation(line: 162, column: 12, scope: !59)
!101 = !DILocation(line: 164, column: 12, scope: !59)
!102 = !DILocation(line: 164, column: 10, scope: !59)
!103 = !DILocation(line: 165, column: 1, scope: !59)
!104 = distinct !DISubprogram(name: "RandomInteger", scope: !13, file: !13, line: 187, type: !14, scopeLine: 189, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!105 = !DILocation(line: 191, column: 12, scope: !104)
!106 = !DILocation(line: 191, column: 17, scope: !104)
!107 = !DILocation(line: 191, column: 24, scope: !104)
!108 = !DILocation(line: 191, column: 30, scope: !104)
!109 = !DILocation(line: 191, column: 8, scope: !104)
!110 = !DILocation(line: 193, column: 10, scope: !104)
!111 = !DILocation(line: 193, column: 3, scope: !104)
