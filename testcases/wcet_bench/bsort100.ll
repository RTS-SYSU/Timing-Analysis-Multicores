; ModuleID = '/workspaces/llvmta/testcases/wcet_bench/bsort100.c'
source_filename = "/workspaces/llvmta/testcases/wcet_bench/bsort100.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv4t-unknown-unknown"

%struct.tms = type { i32, i32, i32, i32 }

@Array = dso_local global [101 x i32] zeroinitializer, align 4
@factor = dso_local global i32 0, align 4
@Seed = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @main() #0 !dbg !12 {
entry:
  %StartTime = alloca i32, align 4
  %StopTime = alloca i32, align 4
  %TotalTime = alloca float, align 4
  %call = call arm_aapcs_vfpcc i32 @Initialize(i32* noundef getelementptr inbounds ([101 x i32], [101 x i32]* @Array, i32 0, i32 0)) #1, !dbg !16
  %call1 = call arm_aapcs_vfpcc i32 @BubbleSort(i32* noundef getelementptr inbounds ([101 x i32], [101 x i32]* @Array, i32 0, i32 0)) #1, !dbg !17
  ret i32 0, !dbg !18
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @ttime() #0 !dbg !19 {
entry:
  %buffer = alloca %struct.tms, align 4
  %utime = alloca i32, align 4
  %tms_utime = getelementptr inbounds %struct.tms, %struct.tms* %buffer, i32 0, i32 0, !dbg !20
  %0 = load i32, i32* %tms_utime, align 4, !dbg !20
  %conv = sitofp i32 %0 to double, !dbg !21
  %div = fdiv double %conv, 6.000000e+01, !dbg !22
  %mul = fmul double %div, 1.000000e+03, !dbg !23
  %conv1 = fptosi double %mul to i32, !dbg !24
  store i32 %conv1, i32* %utime, align 4, !dbg !25
  %1 = load i32, i32* %utime, align 4, !dbg !26
  ret i32 %1, !dbg !27
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @Initialize(i32* noundef %Array) #0 !dbg !28 {
entry:
  %retval = alloca i32, align 4
  %Array.addr = alloca i32*, align 4
  %Index = alloca i32, align 4
  %fact = alloca i32, align 4
  store i32* %Array, i32** %Array.addr, align 4
  store i32 -1, i32* @factor, align 4, !dbg !29
  %0 = load i32, i32* @factor, align 4, !dbg !30
  store i32 %0, i32* %fact, align 4, !dbg !31
  store i32 1, i32* %Index, align 4, !dbg !32
  br label %for.cond, !dbg !33

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %Index, align 4, !dbg !34
  %cmp = icmp sle i32 %1, 100, !dbg !35
  br i1 %cmp, label %for.body, label %for.end, !dbg !36

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %Index, align 4, !dbg !37
  %3 = load i32, i32* %fact, align 4, !dbg !38
  %mul = mul nsw i32 %2, %3, !dbg !39
  %4 = load i8, i8* inttoptr (i32 -2145386495 to i8*), align 1, !dbg !40
  %conv = zext i8 %4 to i32, !dbg !40
  %mul1 = mul nsw i32 %mul, %conv, !dbg !41
  %5 = load i32*, i32** %Array.addr, align 4, !dbg !42
  %6 = load i32, i32* %Index, align 4, !dbg !43
  %arrayidx = getelementptr inbounds i32, i32* %5, i32 %6, !dbg !42
  store i32 %mul1, i32* %arrayidx, align 4, !dbg !44
  br label %for.inc, !dbg !42

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %Index, align 4, !dbg !45
  %inc = add nsw i32 %7, 1, !dbg !45
  store i32 %inc, i32* %Index, align 4, !dbg !45
  br label %for.cond, !dbg !36, !llvm.loop !46

for.end:                                          ; preds = %for.cond
  %8 = load i32, i32* %retval, align 4, !dbg !48
  ret i32 %8, !dbg !48
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @BubbleSort(i32* noundef %Array) #0 !dbg !49 {
entry:
  %retval = alloca i32, align 4
  %Array.addr = alloca i32*, align 4
  %Sorted = alloca i32, align 4
  %Temp = alloca i32, align 4
  %LastIndex = alloca i32, align 4
  %Index = alloca i32, align 4
  %i = alloca i32, align 4
  store i32* %Array, i32** %Array.addr, align 4
  store i32 0, i32* %Sorted, align 4, !dbg !50
  store i32 1, i32* %i, align 4, !dbg !51
  br label %for.cond, !dbg !52

for.cond:                                         ; preds = %for.inc17, %entry
  %0 = load i32, i32* %i, align 4, !dbg !53
  %cmp = icmp sle i32 %0, 99, !dbg !54
  br i1 %cmp, label %for.body, label %for.end19, !dbg !55

for.body:                                         ; preds = %for.cond
  store i32 1, i32* %Sorted, align 4, !dbg !56
  store i32 1, i32* %Index, align 4, !dbg !57
  br label %for.cond1, !dbg !58

for.cond1:                                        ; preds = %for.inc, %for.body
  %1 = load i32, i32* %Index, align 4, !dbg !59
  %cmp2 = icmp sle i32 %1, 99, !dbg !60
  br i1 %cmp2, label %for.body3, label %for.end, !dbg !61

for.body3:                                        ; preds = %for.cond1
  %2 = load i32, i32* %Index, align 4, !dbg !62
  %3 = load i32, i32* %i, align 4, !dbg !63
  %sub = sub nsw i32 100, %3, !dbg !64
  %cmp4 = icmp sgt i32 %2, %sub, !dbg !65
  br i1 %cmp4, label %if.then, label %if.end, !dbg !62

if.then:                                          ; preds = %for.body3
  br label %for.end, !dbg !66

if.end:                                           ; preds = %for.body3
  %4 = load i32*, i32** %Array.addr, align 4, !dbg !67
  %5 = load i32, i32* %Index, align 4, !dbg !68
  %arrayidx = getelementptr inbounds i32, i32* %4, i32 %5, !dbg !67
  %6 = load i32, i32* %arrayidx, align 4, !dbg !67
  %7 = load i32*, i32** %Array.addr, align 4, !dbg !69
  %8 = load i32, i32* %Index, align 4, !dbg !70
  %add = add nsw i32 %8, 1, !dbg !71
  %arrayidx5 = getelementptr inbounds i32, i32* %7, i32 %add, !dbg !69
  %9 = load i32, i32* %arrayidx5, align 4, !dbg !69
  %cmp6 = icmp sgt i32 %6, %9, !dbg !72
  br i1 %cmp6, label %if.then7, label %if.end14, !dbg !67

if.then7:                                         ; preds = %if.end
  %10 = load i32*, i32** %Array.addr, align 4, !dbg !73
  %11 = load i32, i32* %Index, align 4, !dbg !74
  %arrayidx8 = getelementptr inbounds i32, i32* %10, i32 %11, !dbg !73
  %12 = load i32, i32* %arrayidx8, align 4, !dbg !73
  store i32 %12, i32* %Temp, align 4, !dbg !75
  %13 = load i32*, i32** %Array.addr, align 4, !dbg !76
  %14 = load i32, i32* %Index, align 4, !dbg !77
  %add9 = add nsw i32 %14, 1, !dbg !78
  %arrayidx10 = getelementptr inbounds i32, i32* %13, i32 %add9, !dbg !76
  %15 = load i32, i32* %arrayidx10, align 4, !dbg !76
  %16 = load i32*, i32** %Array.addr, align 4, !dbg !79
  %17 = load i32, i32* %Index, align 4, !dbg !80
  %arrayidx11 = getelementptr inbounds i32, i32* %16, i32 %17, !dbg !79
  store i32 %15, i32* %arrayidx11, align 4, !dbg !81
  %18 = load i32, i32* %Temp, align 4, !dbg !82
  %19 = load i32*, i32** %Array.addr, align 4, !dbg !83
  %20 = load i32, i32* %Index, align 4, !dbg !84
  %add12 = add nsw i32 %20, 1, !dbg !85
  %arrayidx13 = getelementptr inbounds i32, i32* %19, i32 %add12, !dbg !83
  store i32 %18, i32* %arrayidx13, align 4, !dbg !86
  store i32 0, i32* %Sorted, align 4, !dbg !87
  br label %if.end14, !dbg !88

if.end14:                                         ; preds = %if.then7, %if.end
  br label %for.inc, !dbg !89

for.inc:                                          ; preds = %if.end14
  %21 = load i32, i32* %Index, align 4, !dbg !90
  %inc = add nsw i32 %21, 1, !dbg !90
  store i32 %inc, i32* %Index, align 4, !dbg !90
  br label %for.cond1, !dbg !61, !llvm.loop !91

for.end:                                          ; preds = %if.then, %for.cond1
  %22 = load i32, i32* %Sorted, align 4, !dbg !92
  %tobool = icmp ne i32 %22, 0, !dbg !92
  br i1 %tobool, label %if.then15, label %if.end16, !dbg !92

if.then15:                                        ; preds = %for.end
  br label %for.end19, !dbg !93

if.end16:                                         ; preds = %for.end
  br label %for.inc17, !dbg !94

for.inc17:                                        ; preds = %if.end16
  %23 = load i32, i32* %i, align 4, !dbg !95
  %inc18 = add nsw i32 %23, 1, !dbg !95
  store i32 %inc18, i32* %i, align 4, !dbg !95
  br label %for.cond, !dbg !55, !llvm.loop !96

for.end19:                                        ; preds = %if.then15, %for.cond
  %24 = load i32, i32* %retval, align 4, !dbg !97
  ret i32 %24, !dbg !97
}

attributes #0 = { noinline nounwind "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #1 = { nobuiltin "no-builtins" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 14.0.6 (git@github.com:RTS-SYSU/LLVM-TA.git b7f9c4ccdebc6c37532ddd772889e5f0ff989c79)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/workspaces/llvmta/testcases/wcet_bench/bsort100.c", directory: "/workspaces/llvmta/testcases/util_scripts", checksumkind: CSK_MD5, checksum: "c7a88945fd4b12d7774ba478bc5e615c")
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
!12 = distinct !DISubprogram(name: "main", scope: !13, file: !13, line: 32, type: !14, scopeLine: 33, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!13 = !DIFile(filename: "wcet_bench/bsort100.c", directory: "/workspaces/llvmta/testcases", checksumkind: CSK_MD5, checksum: "c7a88945fd4b12d7774ba478bc5e615c")
!14 = !DISubroutineType(types: !15)
!15 = !{}
!16 = !DILocation(line: 41, column: 4, scope: !12)
!17 = !DILocation(line: 43, column: 4, scope: !12)
!18 = !DILocation(line: 50, column: 1, scope: !12)
!19 = distinct !DISubprogram(name: "ttime", scope: !13, file: !13, line: 53, type: !14, scopeLine: 58, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!20 = !DILocation(line: 63, column: 20, scope: !19)
!21 = !DILocation(line: 63, column: 13, scope: !19)
!22 = !DILocation(line: 63, column: 30, scope: !19)
!23 = !DILocation(line: 63, column: 38, scope: !19)
!24 = !DILocation(line: 63, column: 12, scope: !19)
!25 = !DILocation(line: 63, column: 10, scope: !19)
!26 = !DILocation(line: 64, column: 11, scope: !19)
!27 = !DILocation(line: 64, column: 4, scope: !19)
!28 = distinct !DISubprogram(name: "Initialize", scope: !13, file: !13, line: 68, type: !14, scopeLine: 73, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!29 = !DILocation(line: 77, column: 11, scope: !28)
!30 = !DILocation(line: 82, column: 8, scope: !28)
!31 = !DILocation(line: 82, column: 6, scope: !28)
!32 = !DILocation(line: 83, column: 12, scope: !28)
!33 = !DILocation(line: 83, column: 6, scope: !28)
!34 = !DILocation(line: 83, column: 17, scope: !28)
!35 = !DILocation(line: 83, column: 23, scope: !28)
!36 = !DILocation(line: 83, column: 1, scope: !28)
!37 = !DILocation(line: 84, column: 20, scope: !28)
!38 = !DILocation(line: 84, column: 26, scope: !28)
!39 = !DILocation(line: 84, column: 25, scope: !28)
!40 = !DILocation(line: 84, column: 33, scope: !28)
!41 = !DILocation(line: 84, column: 31, scope: !28)
!42 = !DILocation(line: 84, column: 5, scope: !28)
!43 = !DILocation(line: 84, column: 11, scope: !28)
!44 = !DILocation(line: 84, column: 18, scope: !28)
!45 = !DILocation(line: 83, column: 42, scope: !28)
!46 = distinct !{!46, !36, !40, !47}
!47 = !{!"llvm.loop.mustprogress"}
!48 = !DILocation(line: 85, column: 1, scope: !28)
!49 = distinct !DISubprogram(name: "BubbleSort", scope: !13, file: !13, line: 89, type: !14, scopeLine: 94, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!50 = !DILocation(line: 95, column: 8, scope: !49)
!51 = !DILocation(line: 98, column: 11, scope: !49)
!52 = !DILocation(line: 98, column: 9, scope: !49)
!53 = !DILocation(line: 99, column: 2, scope: !49)
!54 = !DILocation(line: 99, column: 4, scope: !49)
!55 = !DILocation(line: 98, column: 4, scope: !49)
!56 = !DILocation(line: 102, column: 14, scope: !49)
!57 = !DILocation(line: 103, column: 18, scope: !49)
!58 = !DILocation(line: 103, column: 12, scope: !49)
!59 = !DILocation(line: 104, column: 5, scope: !49)
!60 = !DILocation(line: 104, column: 11, scope: !49)
!61 = !DILocation(line: 103, column: 7, scope: !49)
!62 = !DILocation(line: 106, column: 14, scope: !49)
!63 = !DILocation(line: 106, column: 31, scope: !49)
!64 = !DILocation(line: 106, column: 30, scope: !49)
!65 = !DILocation(line: 106, column: 20, scope: !49)
!66 = !DILocation(line: 107, column: 13, scope: !49)
!67 = !DILocation(line: 108, column: 14, scope: !49)
!68 = !DILocation(line: 108, column: 20, scope: !49)
!69 = !DILocation(line: 108, column: 29, scope: !49)
!70 = !DILocation(line: 108, column: 35, scope: !49)
!71 = !DILocation(line: 108, column: 41, scope: !49)
!72 = !DILocation(line: 108, column: 27, scope: !49)
!73 = !DILocation(line: 110, column: 20, scope: !49)
!74 = !DILocation(line: 110, column: 26, scope: !49)
!75 = !DILocation(line: 110, column: 18, scope: !49)
!76 = !DILocation(line: 111, column: 28, scope: !49)
!77 = !DILocation(line: 111, column: 34, scope: !49)
!78 = !DILocation(line: 111, column: 39, scope: !49)
!79 = !DILocation(line: 111, column: 13, scope: !49)
!80 = !DILocation(line: 111, column: 19, scope: !49)
!81 = !DILocation(line: 111, column: 26, scope: !49)
!82 = !DILocation(line: 112, column: 30, scope: !49)
!83 = !DILocation(line: 112, column: 13, scope: !49)
!84 = !DILocation(line: 112, column: 19, scope: !49)
!85 = !DILocation(line: 112, column: 24, scope: !49)
!86 = !DILocation(line: 112, column: 28, scope: !49)
!87 = !DILocation(line: 113, column: 20, scope: !49)
!88 = !DILocation(line: 114, column: 10, scope: !49)
!89 = !DILocation(line: 115, column: 7, scope: !49)
!90 = !DILocation(line: 105, column: 11, scope: !49)
!91 = distinct !{!91, !61, !89, !47}
!92 = !DILocation(line: 117, column: 11, scope: !49)
!93 = !DILocation(line: 118, column: 10, scope: !49)
!94 = !DILocation(line: 119, column: 4, scope: !49)
!95 = !DILocation(line: 100, column: 3, scope: !49)
!96 = distinct !{!96, !55, !94, !47}
!97 = !DILocation(line: 127, column: 1, scope: !49)
