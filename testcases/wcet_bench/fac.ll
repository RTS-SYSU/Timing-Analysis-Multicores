; ModuleID = '/workspaces/llvmta/testcases/wcet_bench/fac.c'
source_filename = "/workspaces/llvmta/testcases/wcet_bench/fac.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv4t-unknown-unknown"

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @fac(i32 noundef %n) #0 !dbg !12 {
entry:
  %retval = alloca i32, align 4
  %n.addr = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  %0 = load i32, i32* %n.addr, align 4, !dbg !16
  %cmp = icmp eq i32 %0, 0, !dbg !17
  br i1 %cmp, label %if.then, label %if.else, !dbg !16

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval, align 4, !dbg !18
  br label %return, !dbg !18

if.else:                                          ; preds = %entry
  %1 = load i32, i32* %n.addr, align 4, !dbg !19
  %2 = load i32, i32* %n.addr, align 4, !dbg !20
  %sub = sub nsw i32 %2, 1, !dbg !21
  %call = call arm_aapcs_vfpcc i32 @fac(i32 noundef %sub) #1, !dbg !22
  %mul = mul nsw i32 %1, %call, !dbg !23
  store i32 %mul, i32* %retval, align 4, !dbg !24
  br label %return, !dbg !24

return:                                           ; preds = %if.else, %if.then
  %3 = load i32, i32* %retval, align 4, !dbg !25
  ret i32 %3, !dbg !25
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @main() #0 !dbg !26 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %s = alloca i32, align 4
  %n = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 0, i32* %s, align 4, !dbg !27
  store volatile i32 5, i32* %n, align 4, !dbg !28
  store i32 0, i32* %i, align 4, !dbg !29
  br label %for.cond, !dbg !30

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !31
  %1 = load volatile i32, i32* %n, align 4, !dbg !32
  %cmp = icmp sle i32 %0, %1, !dbg !33
  br i1 %cmp, label %for.body, label %for.end, !dbg !34

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4, !dbg !35
  %call = call arm_aapcs_vfpcc i32 @fac(i32 noundef %2) #1, !dbg !36
  %3 = load i32, i32* %s, align 4, !dbg !37
  %add = add nsw i32 %3, %call, !dbg !37
  store i32 %add, i32* %s, align 4, !dbg !37
  br label %for.inc, !dbg !38

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4, !dbg !39
  %inc = add nsw i32 %4, 1, !dbg !39
  store i32 %inc, i32* %i, align 4, !dbg !39
  br label %for.cond, !dbg !34, !llvm.loop !40

for.end:                                          ; preds = %for.cond
  %5 = load i32, i32* %s, align 4, !dbg !43
  ret i32 %5, !dbg !44
}

attributes #0 = { noinline nounwind "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #1 = { nobuiltin "no-builtins" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 14.0.6 (git@github.com:RTS-SYSU/LLVM-TA.git b7f9c4ccdebc6c37532ddd772889e5f0ff989c79)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/workspaces/llvmta/testcases/wcet_bench/fac.c", directory: "/workspaces/llvmta/testcases/util_scripts", checksumkind: CSK_MD5, checksum: "9bd698d132f902a691fd2fdd6b1c4870")
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
!12 = distinct !DISubprogram(name: "fac", scope: !13, file: !13, line: 6, type: !14, scopeLine: 7, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!13 = !DIFile(filename: "wcet_bench/fac.c", directory: "/workspaces/llvmta/testcases", checksumkind: CSK_MD5, checksum: "9bd698d132f902a691fd2fdd6b1c4870")
!14 = !DISubroutineType(types: !15)
!15 = !{}
!16 = !DILocation(line: 8, column: 7, scope: !12)
!17 = !DILocation(line: 8, column: 9, scope: !12)
!18 = !DILocation(line: 9, column: 6, scope: !12)
!19 = !DILocation(line: 11, column: 14, scope: !12)
!20 = !DILocation(line: 11, column: 23, scope: !12)
!21 = !DILocation(line: 11, column: 24, scope: !12)
!22 = !DILocation(line: 11, column: 18, scope: !12)
!23 = !DILocation(line: 11, column: 16, scope: !12)
!24 = !DILocation(line: 11, column: 6, scope: !12)
!25 = !DILocation(line: 12, column: 1, scope: !12)
!26 = distinct !DISubprogram(name: "main", scope: !13, file: !13, line: 14, type: !14, scopeLine: 15, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!27 = !DILocation(line: 17, column: 7, scope: !26)
!28 = !DILocation(line: 20, column: 5, scope: !26)
!29 = !DILocation(line: 21, column: 10, scope: !26)
!30 = !DILocation(line: 21, column: 8, scope: !26)
!31 = !DILocation(line: 21, column: 16, scope: !26)
!32 = !DILocation(line: 21, column: 21, scope: !26)
!33 = !DILocation(line: 21, column: 18, scope: !26)
!34 = !DILocation(line: 21, column: 3, scope: !26)
!35 = !DILocation(line: 22, column: 17, scope: !26)
!36 = !DILocation(line: 22, column: 12, scope: !26)
!37 = !DILocation(line: 22, column: 9, scope: !26)
!38 = !DILocation(line: 22, column: 7, scope: !26)
!39 = !DILocation(line: 21, column: 25, scope: !26)
!40 = distinct !{!40, !34, !41, !42}
!41 = !DILocation(line: 22, column: 18, scope: !26)
!42 = !{!"llvm.loop.mustprogress"}
!43 = !DILocation(line: 24, column: 11, scope: !26)
!44 = !DILocation(line: 24, column: 3, scope: !26)
