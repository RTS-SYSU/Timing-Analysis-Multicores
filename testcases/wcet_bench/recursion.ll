; ModuleID = '/workspaces/llvmta/testcases/wcet_bench/recursion.c'
source_filename = "/workspaces/llvmta/testcases/wcet_bench/recursion.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv4t-unknown-unknown"

@In = external dso_local global i32, align 4

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @fib(i32 noundef %i) #0 !dbg !12 {
entry:
  %retval = alloca i32, align 4
  %i.addr = alloca i32, align 4
  store i32 %i, i32* %i.addr, align 4
  %0 = load i32, i32* %i.addr, align 4, !dbg !16
  %cmp = icmp eq i32 %0, 0, !dbg !17
  br i1 %cmp, label %if.then, label %if.end, !dbg !16

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval, align 4, !dbg !18
  br label %return, !dbg !18

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %i.addr, align 4, !dbg !19
  %cmp1 = icmp eq i32 %1, 1, !dbg !20
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !19

if.then2:                                         ; preds = %if.end
  store i32 1, i32* %retval, align 4, !dbg !21
  br label %return, !dbg !21

if.end3:                                          ; preds = %if.end
  %2 = load i32, i32* %i.addr, align 4, !dbg !22
  %sub = sub nsw i32 %2, 1, !dbg !23
  %call = call arm_aapcs_vfpcc i32 @fib(i32 noundef %sub) #1, !dbg !24
  %3 = load i32, i32* %i.addr, align 4, !dbg !25
  %sub4 = sub nsw i32 %3, 2, !dbg !26
  %call5 = call arm_aapcs_vfpcc i32 @fib(i32 noundef %sub4) #1, !dbg !27
  %add = add nsw i32 %call, %call5, !dbg !28
  store i32 %add, i32* %retval, align 4, !dbg !29
  br label %return, !dbg !29

return:                                           ; preds = %if.end3, %if.then2, %if.then
  %4 = load i32, i32* %retval, align 4, !dbg !30
  ret i32 %4, !dbg !30
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @kalle(i32 noundef %i) #0 !dbg !31 {
entry:
  %retval = alloca i32, align 4
  %i.addr = alloca i32, align 4
  store i32 %i, i32* %i.addr, align 4
  %0 = load i32, i32* %i.addr, align 4, !dbg !32
  %cmp = icmp sle i32 %0, 0, !dbg !33
  br i1 %cmp, label %if.then, label %if.else, !dbg !32

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !34
  br label %return, !dbg !34

if.else:                                          ; preds = %entry
  %1 = load i32, i32* %i.addr, align 4, !dbg !35
  %sub = sub nsw i32 %1, 1, !dbg !36
  %call = call arm_aapcs_vfpcc i32 @anka(i32 noundef %sub) #1, !dbg !37
  store i32 %call, i32* %retval, align 4, !dbg !38
  br label %return, !dbg !38

return:                                           ; preds = %if.else, %if.then
  %2 = load i32, i32* %retval, align 4, !dbg !39
  ret i32 %2, !dbg !39
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @anka(i32 noundef %i) #0 !dbg !40 {
entry:
  %retval = alloca i32, align 4
  %i.addr = alloca i32, align 4
  store i32 %i, i32* %i.addr, align 4
  %0 = load i32, i32* %i.addr, align 4, !dbg !41
  %cmp = icmp sle i32 %0, 0, !dbg !42
  br i1 %cmp, label %if.then, label %if.else, !dbg !41

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval, align 4, !dbg !43
  br label %return, !dbg !43

if.else:                                          ; preds = %entry
  %1 = load i32, i32* %i.addr, align 4, !dbg !44
  %sub = sub nsw i32 %1, 1, !dbg !45
  %call = call arm_aapcs_vfpcc i32 @kalle(i32 noundef %sub) #1, !dbg !46
  store i32 %call, i32* %retval, align 4, !dbg !47
  br label %return, !dbg !47

return:                                           ; preds = %if.else, %if.then
  %2 = load i32, i32* %retval, align 4, !dbg !48
  ret i32 %2, !dbg !48
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @main() #0 !dbg !49 {
entry:
  %call = call arm_aapcs_vfpcc i32 @fib(i32 noundef 10) #1, !dbg !50
  store volatile i32 %call, i32* @In, align 4, !dbg !51
  ret void, !dbg !52
}

attributes #0 = { noinline nounwind "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #1 = { nobuiltin "no-builtins" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 14.0.6 (git@github.com:RTS-SYSU/LLVM-TA.git b7f9c4ccdebc6c37532ddd772889e5f0ff989c79)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/workspaces/llvmta/testcases/wcet_bench/recursion.c", directory: "/workspaces/llvmta/testcases/util_scripts", checksumkind: CSK_MD5, checksum: "cb885a292cbea2153ed62d007b19981e")
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
!12 = distinct !DISubprogram(name: "fib", scope: !13, file: !13, line: 13, type: !14, scopeLine: 15, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!13 = !DIFile(filename: "wcet_bench/recursion.c", directory: "/workspaces/llvmta/testcases", checksumkind: CSK_MD5, checksum: "cb885a292cbea2153ed62d007b19981e")
!14 = !DISubroutineType(types: !15)
!15 = !{}
!16 = !DILocation(line: 17, column: 6, scope: !12)
!17 = !DILocation(line: 17, column: 7, scope: !12)
!18 = !DILocation(line: 19, column: 5, scope: !12)
!19 = !DILocation(line: 21, column: 6, scope: !12)
!20 = !DILocation(line: 21, column: 7, scope: !12)
!21 = !DILocation(line: 23, column: 5, scope: !12)
!22 = !DILocation(line: 25, column: 14, scope: !12)
!23 = !DILocation(line: 25, column: 15, scope: !12)
!24 = !DILocation(line: 25, column: 10, scope: !12)
!25 = !DILocation(line: 25, column: 25, scope: !12)
!26 = !DILocation(line: 25, column: 26, scope: !12)
!27 = !DILocation(line: 25, column: 21, scope: !12)
!28 = !DILocation(line: 25, column: 19, scope: !12)
!29 = !DILocation(line: 25, column: 3, scope: !12)
!30 = !DILocation(line: 27, column: 1, scope: !12)
!31 = distinct !DISubprogram(name: "kalle", scope: !13, file: !13, line: 37, type: !14, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!32 = !DILocation(line: 41, column: 6, scope: !31)
!33 = !DILocation(line: 41, column: 7, scope: !31)
!34 = !DILocation(line: 43, column: 5, scope: !31)
!35 = !DILocation(line: 47, column: 17, scope: !31)
!36 = !DILocation(line: 47, column: 18, scope: !31)
!37 = !DILocation(line: 47, column: 12, scope: !31)
!38 = !DILocation(line: 47, column: 5, scope: !31)
!39 = !DILocation(line: 49, column: 1, scope: !31)
!40 = distinct !DISubprogram(name: "anka", scope: !13, file: !13, line: 53, type: !14, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!41 = !DILocation(line: 57, column: 6, scope: !40)
!42 = !DILocation(line: 57, column: 7, scope: !40)
!43 = !DILocation(line: 59, column: 5, scope: !40)
!44 = !DILocation(line: 63, column: 18, scope: !40)
!45 = !DILocation(line: 63, column: 19, scope: !40)
!46 = !DILocation(line: 63, column: 12, scope: !40)
!47 = !DILocation(line: 63, column: 5, scope: !40)
!48 = !DILocation(line: 65, column: 1, scope: !40)
!49 = distinct !DISubprogram(name: "main", scope: !13, file: !13, line: 73, type: !14, scopeLine: 75, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!50 = !DILocation(line: 77, column: 8, scope: !49)
!51 = !DILocation(line: 77, column: 6, scope: !49)
!52 = !DILocation(line: 79, column: 1, scope: !49)
