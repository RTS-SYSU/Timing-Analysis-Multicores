; ModuleID = '/workspaces/llvmta/testcases/wcet_bench/insertsort.c'
source_filename = "/workspaces/llvmta/testcases/wcet_bench/insertsort.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv4t-unknown-unknown"

@a_a = dso_local global [11 x i32] zeroinitializer, align 4

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @insertsort() #0 !dbg !12 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %temp = alloca i32, align 4
  store i32 0, i32* getelementptr inbounds ([11 x i32], [11 x i32]* @a_a, i32 0, i32 0), align 4, !dbg !16
  store i32 11, i32* getelementptr inbounds ([11 x i32], [11 x i32]* @a_a, i32 0, i32 1), align 4, !dbg !17
  store i32 10, i32* getelementptr inbounds ([11 x i32], [11 x i32]* @a_a, i32 0, i32 2), align 4, !dbg !18
  store i32 9, i32* getelementptr inbounds ([11 x i32], [11 x i32]* @a_a, i32 0, i32 3), align 4, !dbg !19
  store i32 8, i32* getelementptr inbounds ([11 x i32], [11 x i32]* @a_a, i32 0, i32 4), align 4, !dbg !20
  store i32 7, i32* getelementptr inbounds ([11 x i32], [11 x i32]* @a_a, i32 0, i32 5), align 4, !dbg !21
  store i32 6, i32* getelementptr inbounds ([11 x i32], [11 x i32]* @a_a, i32 0, i32 6), align 4, !dbg !22
  store i32 5, i32* getelementptr inbounds ([11 x i32], [11 x i32]* @a_a, i32 0, i32 7), align 4, !dbg !23
  store i32 4, i32* getelementptr inbounds ([11 x i32], [11 x i32]* @a_a, i32 0, i32 8), align 4, !dbg !24
  store i32 3, i32* getelementptr inbounds ([11 x i32], [11 x i32]* @a_a, i32 0, i32 9), align 4, !dbg !25
  store i32 2, i32* getelementptr inbounds ([11 x i32], [11 x i32]* @a_a, i32 0, i32 10), align 4, !dbg !26
  store i32 2, i32* %i, align 4, !dbg !27
  br label %while.cond, !dbg !28

while.cond:                                       ; preds = %while.end, %entry
  %0 = load i32, i32* %i, align 4, !dbg !29
  %cmp = icmp sle i32 %0, 10, !dbg !30
  br i1 %cmp, label %while.body, label %while.end11, !dbg !28

while.body:                                       ; preds = %while.cond
  %1 = load i32, i32* %i, align 4, !dbg !31
  store i32 %1, i32* %j, align 4, !dbg !32
  br label %while.cond1, !dbg !33

while.cond1:                                      ; preds = %while.body4, %while.body
  %2 = load i32, i32* %j, align 4, !dbg !34
  %arrayidx = getelementptr inbounds [11 x i32], [11 x i32]* @a_a, i32 0, i32 %2, !dbg !35
  %3 = load i32, i32* %arrayidx, align 4, !dbg !35
  %4 = load i32, i32* %j, align 4, !dbg !36
  %sub = sub nsw i32 %4, 1, !dbg !37
  %arrayidx2 = getelementptr inbounds [11 x i32], [11 x i32]* @a_a, i32 0, i32 %sub, !dbg !38
  %5 = load i32, i32* %arrayidx2, align 4, !dbg !38
  %cmp3 = icmp ult i32 %3, %5, !dbg !39
  br i1 %cmp3, label %while.body4, label %while.end, !dbg !33

while.body4:                                      ; preds = %while.cond1
  %6 = load i32, i32* %j, align 4, !dbg !40
  %arrayidx5 = getelementptr inbounds [11 x i32], [11 x i32]* @a_a, i32 0, i32 %6, !dbg !41
  %7 = load i32, i32* %arrayidx5, align 4, !dbg !41
  store i32 %7, i32* %temp, align 4, !dbg !42
  %8 = load i32, i32* %j, align 4, !dbg !43
  %sub6 = sub nsw i32 %8, 1, !dbg !44
  %arrayidx7 = getelementptr inbounds [11 x i32], [11 x i32]* @a_a, i32 0, i32 %sub6, !dbg !45
  %9 = load i32, i32* %arrayidx7, align 4, !dbg !45
  %10 = load i32, i32* %j, align 4, !dbg !46
  %arrayidx8 = getelementptr inbounds [11 x i32], [11 x i32]* @a_a, i32 0, i32 %10, !dbg !47
  store i32 %9, i32* %arrayidx8, align 4, !dbg !48
  %11 = load i32, i32* %temp, align 4, !dbg !49
  %12 = load i32, i32* %j, align 4, !dbg !50
  %sub9 = sub nsw i32 %12, 1, !dbg !51
  %arrayidx10 = getelementptr inbounds [11 x i32], [11 x i32]* @a_a, i32 0, i32 %sub9, !dbg !52
  store i32 %11, i32* %arrayidx10, align 4, !dbg !53
  %13 = load i32, i32* %j, align 4, !dbg !54
  %dec = add nsw i32 %13, -1, !dbg !54
  store i32 %dec, i32* %j, align 4, !dbg !54
  br label %while.cond1, !dbg !33, !llvm.loop !55

while.end:                                        ; preds = %while.cond1
  %14 = load i32, i32* %i, align 4, !dbg !58
  %inc = add nsw i32 %14, 1, !dbg !58
  store i32 %inc, i32* %i, align 4, !dbg !58
  br label %while.cond, !dbg !28, !llvm.loop !59

while.end11:                                      ; preds = %while.cond
  ret i32 1, !dbg !61
}

attributes #0 = { noinline nounwind "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 14.0.6 (git@github.com:RTS-SYSU/LLVM-TA.git b7f9c4ccdebc6c37532ddd772889e5f0ff989c79)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/workspaces/llvmta/testcases/wcet_bench/insertsort.c", directory: "/workspaces/llvmta/testcases/util_scripts", checksumkind: CSK_MD5, checksum: "9401cd6c06a6445d46de467b48934f60")
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
!12 = distinct !DISubprogram(name: "insertsort", scope: !13, file: !13, line: 52, type: !14, scopeLine: 52, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!13 = !DIFile(filename: "wcet_bench/insertsort.c", directory: "/workspaces/llvmta/testcases", checksumkind: CSK_MD5, checksum: "9401cd6c06a6445d46de467b48934f60")
!14 = !DISubroutineType(types: !15)
!15 = !{}
!16 = !DILocation(line: 55, column: 10, scope: !12)
!17 = !DILocation(line: 56, column: 10, scope: !12)
!18 = !DILocation(line: 57, column: 10, scope: !12)
!19 = !DILocation(line: 58, column: 10, scope: !12)
!20 = !DILocation(line: 59, column: 10, scope: !12)
!21 = !DILocation(line: 60, column: 10, scope: !12)
!22 = !DILocation(line: 61, column: 10, scope: !12)
!23 = !DILocation(line: 62, column: 10, scope: !12)
!24 = !DILocation(line: 63, column: 10, scope: !12)
!25 = !DILocation(line: 64, column: 10, scope: !12)
!26 = !DILocation(line: 65, column: 11, scope: !12)
!27 = !DILocation(line: 66, column: 5, scope: !12)
!28 = !DILocation(line: 67, column: 3, scope: !12)
!29 = !DILocation(line: 67, column: 10, scope: !12)
!30 = !DILocation(line: 67, column: 12, scope: !12)
!31 = !DILocation(line: 71, column: 9, scope: !12)
!32 = !DILocation(line: 71, column: 7, scope: !12)
!33 = !DILocation(line: 75, column: 5, scope: !12)
!34 = !DILocation(line: 75, column: 16, scope: !12)
!35 = !DILocation(line: 75, column: 12, scope: !12)
!36 = !DILocation(line: 75, column: 25, scope: !12)
!37 = !DILocation(line: 75, column: 27, scope: !12)
!38 = !DILocation(line: 75, column: 21, scope: !12)
!39 = !DILocation(line: 75, column: 19, scope: !12)
!40 = !DILocation(line: 79, column: 18, scope: !12)
!41 = !DILocation(line: 79, column: 14, scope: !12)
!42 = !DILocation(line: 79, column: 12, scope: !12)
!43 = !DILocation(line: 80, column: 20, scope: !12)
!44 = !DILocation(line: 80, column: 22, scope: !12)
!45 = !DILocation(line: 80, column: 16, scope: !12)
!46 = !DILocation(line: 80, column: 11, scope: !12)
!47 = !DILocation(line: 80, column: 7, scope: !12)
!48 = !DILocation(line: 80, column: 14, scope: !12)
!49 = !DILocation(line: 81, column: 20, scope: !12)
!50 = !DILocation(line: 81, column: 11, scope: !12)
!51 = !DILocation(line: 81, column: 13, scope: !12)
!52 = !DILocation(line: 81, column: 7, scope: !12)
!53 = !DILocation(line: 81, column: 18, scope: !12)
!54 = !DILocation(line: 82, column: 8, scope: !12)
!55 = distinct !{!55, !33, !56, !57}
!56 = !DILocation(line: 83, column: 5, scope: !12)
!57 = !{!"llvm.loop.mustprogress"}
!58 = !DILocation(line: 87, column: 6, scope: !12)
!59 = distinct !{!59, !28, !60, !57}
!60 = !DILocation(line: 88, column: 3, scope: !12)
!61 = !DILocation(line: 92, column: 3, scope: !12)
