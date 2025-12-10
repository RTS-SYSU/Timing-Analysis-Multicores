; ModuleID = '/workspaces/llvmta/testcases/wcet_bench/bs.c'
source_filename = "/workspaces/llvmta/testcases/wcet_bench/bs.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv4t-unknown-unknown"

%struct.DATA = type { i32, i32 }

@data = dso_local global [15 x %struct.DATA] [%struct.DATA { i32 1, i32 100 }, %struct.DATA { i32 5, i32 200 }, %struct.DATA { i32 6, i32 300 }, %struct.DATA { i32 7, i32 700 }, %struct.DATA { i32 8, i32 900 }, %struct.DATA { i32 9, i32 250 }, %struct.DATA { i32 10, i32 400 }, %struct.DATA { i32 11, i32 600 }, %struct.DATA { i32 12, i32 800 }, %struct.DATA { i32 13, i32 1500 }, %struct.DATA { i32 14, i32 1200 }, %struct.DATA { i32 15, i32 110 }, %struct.DATA { i32 16, i32 140 }, %struct.DATA { i32 17, i32 133 }, %struct.DATA { i32 18, i32 10 }], align 4

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @main() #0 !dbg !12 {
entry:
  %call = call arm_aapcs_vfpcc i32 @binary_search(i32 noundef 8) #1, !dbg !16
  ret i32 0, !dbg !17
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @binary_search(i32 noundef %x) #0 !dbg !18 {
entry:
  %x.addr = alloca i32, align 4
  %fvalue = alloca i32, align 4
  %mid = alloca i32, align 4
  %up = alloca i32, align 4
  %low = alloca i32, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 0, i32* %low, align 4, !dbg !19
  store i32 14, i32* %up, align 4, !dbg !20
  store i32 -1, i32* %fvalue, align 4, !dbg !21
  br label %while.cond, !dbg !22

while.cond:                                       ; preds = %if.end10, %entry
  %0 = load i32, i32* %low, align 4, !dbg !23
  %1 = load i32, i32* %up, align 4, !dbg !24
  %cmp = icmp sle i32 %0, %1, !dbg !25
  br i1 %cmp, label %while.body, label %while.end, !dbg !22

while.body:                                       ; preds = %while.cond
  %2 = load i32, i32* %low, align 4, !dbg !26
  %3 = load i32, i32* %up, align 4, !dbg !27
  %add = add nsw i32 %2, %3, !dbg !28
  %shr = ashr i32 %add, 1, !dbg !29
  store i32 %shr, i32* %mid, align 4, !dbg !30
  %4 = load i32, i32* %mid, align 4, !dbg !31
  %arrayidx = getelementptr inbounds [15 x %struct.DATA], [15 x %struct.DATA]* @data, i32 0, i32 %4, !dbg !32
  %key = getelementptr inbounds %struct.DATA, %struct.DATA* %arrayidx, i32 0, i32 0, !dbg !33
  %5 = load i32, i32* %key, align 4, !dbg !33
  %6 = load i32, i32* %x.addr, align 4, !dbg !34
  %cmp1 = icmp eq i32 %5, %6, !dbg !35
  br i1 %cmp1, label %if.then, label %if.else, !dbg !32

if.then:                                          ; preds = %while.body
  %7 = load i32, i32* %low, align 4, !dbg !36
  %sub = sub nsw i32 %7, 1, !dbg !37
  store i32 %sub, i32* %up, align 4, !dbg !38
  %8 = load i32, i32* %mid, align 4, !dbg !39
  %arrayidx2 = getelementptr inbounds [15 x %struct.DATA], [15 x %struct.DATA]* @data, i32 0, i32 %8, !dbg !40
  %value = getelementptr inbounds %struct.DATA, %struct.DATA* %arrayidx2, i32 0, i32 1, !dbg !41
  %9 = load i32, i32* %value, align 4, !dbg !41
  store i32 %9, i32* %fvalue, align 4, !dbg !42
  br label %if.end10, !dbg !43

if.else:                                          ; preds = %while.body
  %10 = load i32, i32* %mid, align 4, !dbg !44
  %arrayidx3 = getelementptr inbounds [15 x %struct.DATA], [15 x %struct.DATA]* @data, i32 0, i32 %10, !dbg !45
  %key4 = getelementptr inbounds %struct.DATA, %struct.DATA* %arrayidx3, i32 0, i32 0, !dbg !46
  %11 = load i32, i32* %key4, align 4, !dbg !46
  %12 = load i32, i32* %x.addr, align 4, !dbg !47
  %cmp5 = icmp sgt i32 %11, %12, !dbg !48
  br i1 %cmp5, label %if.then6, label %if.else8, !dbg !45

if.then6:                                         ; preds = %if.else
  %13 = load i32, i32* %mid, align 4, !dbg !49
  %sub7 = sub nsw i32 %13, 1, !dbg !50
  store i32 %sub7, i32* %up, align 4, !dbg !51
  br label %if.end, !dbg !52

if.else8:                                         ; preds = %if.else
  %14 = load i32, i32* %mid, align 4, !dbg !53
  %add9 = add nsw i32 %14, 1, !dbg !54
  store i32 %add9, i32* %low, align 4, !dbg !55
  br label %if.end

if.end:                                           ; preds = %if.else8, %if.then6
  br label %if.end10

if.end10:                                         ; preds = %if.end, %if.then
  br label %while.cond, !dbg !22, !llvm.loop !56

while.end:                                        ; preds = %while.cond
  %15 = load i32, i32* %fvalue, align 4, !dbg !59
  ret i32 %15, !dbg !60
}

attributes #0 = { noinline nounwind "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #1 = { nobuiltin "no-builtins" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 14.0.6 (git@github.com:RTS-SYSU/LLVM-TA.git b7f9c4ccdebc6c37532ddd772889e5f0ff989c79)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/workspaces/llvmta/testcases/wcet_bench/bs.c", directory: "/workspaces/llvmta/testcases/util_scripts", checksumkind: CSK_MD5, checksum: "2efb64b110e503ac59b508131161518f")
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
!12 = distinct !DISubprogram(name: "main", scope: !13, file: !13, line: 71, type: !14, scopeLine: 72, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!13 = !DIFile(filename: "wcet_bench/bs.c", directory: "/workspaces/llvmta/testcases", checksumkind: CSK_MD5, checksum: "2efb64b110e503ac59b508131161518f")
!14 = !DISubroutineType(types: !15)
!15 = !{}
!16 = !DILocation(line: 73, column: 2, scope: !12)
!17 = !DILocation(line: 74, column: 1, scope: !12)
!18 = distinct !DISubprogram(name: "binary_search", scope: !13, file: !13, line: 76, type: !14, scopeLine: 77, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!19 = !DILocation(line: 80, column: 7, scope: !18)
!20 = !DILocation(line: 81, column: 6, scope: !18)
!21 = !DILocation(line: 82, column: 10, scope: !18)
!22 = !DILocation(line: 83, column: 3, scope: !18)
!23 = !DILocation(line: 83, column: 10, scope: !18)
!24 = !DILocation(line: 83, column: 17, scope: !18)
!25 = !DILocation(line: 83, column: 14, scope: !18)
!26 = !DILocation(line: 84, column: 12, scope: !18)
!27 = !DILocation(line: 84, column: 18, scope: !18)
!28 = !DILocation(line: 84, column: 16, scope: !18)
!29 = !DILocation(line: 84, column: 22, scope: !18)
!30 = !DILocation(line: 84, column: 9, scope: !18)
!31 = !DILocation(line: 85, column: 15, scope: !18)
!32 = !DILocation(line: 85, column: 10, scope: !18)
!33 = !DILocation(line: 85, column: 20, scope: !18)
!34 = !DILocation(line: 85, column: 27, scope: !18)
!35 = !DILocation(line: 85, column: 24, scope: !18)
!36 = !DILocation(line: 86, column: 12, scope: !18)
!37 = !DILocation(line: 86, column: 16, scope: !18)
!38 = !DILocation(line: 86, column: 10, scope: !18)
!39 = !DILocation(line: 87, column: 21, scope: !18)
!40 = !DILocation(line: 87, column: 16, scope: !18)
!41 = !DILocation(line: 87, column: 26, scope: !18)
!42 = !DILocation(line: 87, column: 14, scope: !18)
!43 = !DILocation(line: 91, column: 5, scope: !18)
!44 = !DILocation(line: 93, column: 17, scope: !18)
!45 = !DILocation(line: 93, column: 12, scope: !18)
!46 = !DILocation(line: 93, column: 22, scope: !18)
!47 = !DILocation(line: 93, column: 28, scope: !18)
!48 = !DILocation(line: 93, column: 26, scope: !18)
!49 = !DILocation(line: 94, column: 7, scope: !18)
!50 = !DILocation(line: 94, column: 11, scope: !18)
!51 = !DILocation(line: 94, column: 5, scope: !18)
!52 = !DILocation(line: 98, column: 7, scope: !18)
!53 = !DILocation(line: 100, column: 21, scope: !18)
!54 = !DILocation(line: 100, column: 25, scope: !18)
!55 = !DILocation(line: 100, column: 19, scope: !18)
!56 = distinct !{!56, !22, !57, !58}
!57 = !DILocation(line: 108, column: 3, scope: !18)
!58 = !{!"llvm.loop.mustprogress"}
!59 = !DILocation(line: 112, column: 10, scope: !18)
!60 = !DILocation(line: 112, column: 3, scope: !18)
