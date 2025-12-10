; ModuleID = '/workspaces/llvmta/testcases/wcet_bench/fibcall.c'
source_filename = "/workspaces/llvmta/testcases/wcet_bench/fibcall.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv4t-unknown-unknown"

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @fib(i32 noundef %n) #0 !dbg !12 {
entry:
  %n.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %Fnew = alloca i32, align 4
  %Fold = alloca i32, align 4
  %temp = alloca i32, align 4
  %ans = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store i32 1, i32* %Fnew, align 4, !dbg !16
  store i32 0, i32* %Fold, align 4, !dbg !17
  store i32 2, i32* %i, align 4, !dbg !18
  br label %for.cond, !dbg !19

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !20
  %cmp = icmp sle i32 %0, 30, !dbg !21
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !22

land.rhs:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4, !dbg !23
  %2 = load i32, i32* %n.addr, align 4, !dbg !24
  %cmp1 = icmp sle i32 %1, %2, !dbg !25
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %3 = phi i1 [ false, %for.cond ], [ %cmp1, %land.rhs ], !dbg !26
  br i1 %3, label %for.body, label %for.end, !dbg !27

for.body:                                         ; preds = %land.end
  %4 = load i32, i32* %Fnew, align 4, !dbg !28
  store i32 %4, i32* %temp, align 4, !dbg !29
  %5 = load i32, i32* %Fnew, align 4, !dbg !30
  %6 = load i32, i32* %Fold, align 4, !dbg !31
  %add = add nsw i32 %5, %6, !dbg !32
  store i32 %add, i32* %Fnew, align 4, !dbg !33
  %7 = load i32, i32* %temp, align 4, !dbg !34
  store i32 %7, i32* %Fold, align 4, !dbg !35
  br label %for.inc, !dbg !36

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !37
  %inc = add nsw i32 %8, 1, !dbg !37
  store i32 %inc, i32* %i, align 4, !dbg !37
  br label %for.cond, !dbg !27, !llvm.loop !38

for.end:                                          ; preds = %land.end
  %9 = load i32, i32* %Fnew, align 4, !dbg !40
  store i32 %9, i32* %ans, align 4, !dbg !41
  %10 = load i32, i32* %ans, align 4, !dbg !42
  ret i32 %10, !dbg !43
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @main() #0 !dbg !44 {
entry:
  %retval = alloca i32, align 4
  %a = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 30, i32* %a, align 4, !dbg !45
  %0 = load i32, i32* %a, align 4, !dbg !46
  %call = call arm_aapcs_vfpcc i32 @fib(i32 noundef %0) #1, !dbg !47
  %1 = load i32, i32* %a, align 4, !dbg !48
  ret i32 %1, !dbg !49
}

attributes #0 = { noinline nounwind "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #1 = { nobuiltin "no-builtins" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 14.0.6 (git@github.com:RTS-SYSU/LLVM-TA.git b7f9c4ccdebc6c37532ddd772889e5f0ff989c79)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/workspaces/llvmta/testcases/wcet_bench/fibcall.c", directory: "/workspaces/llvmta/testcases/util_scripts", checksumkind: CSK_MD5, checksum: "dece3b68e52ae4e86f0503d56a170a26")
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
!12 = distinct !DISubprogram(name: "fib", scope: !13, file: !13, line: 47, type: !14, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!13 = !DIFile(filename: "wcet_bench/fibcall.c", directory: "/workspaces/llvmta/testcases", checksumkind: CSK_MD5, checksum: "dece3b68e52ae4e86f0503d56a170a26")
!14 = !DISubroutineType(types: !15)
!15 = !{}
!16 = !DILocation(line: 51, column: 10, scope: !12)
!17 = !DILocation(line: 51, column: 21, scope: !12)
!18 = !DILocation(line: 52, column: 13, scope: !12)
!19 = !DILocation(line: 52, column: 11, scope: !12)
!20 = !DILocation(line: 53, column: 4, scope: !12)
!21 = !DILocation(line: 53, column: 6, scope: !12)
!22 = !DILocation(line: 53, column: 12, scope: !12)
!23 = !DILocation(line: 53, column: 15, scope: !12)
!24 = !DILocation(line: 53, column: 20, scope: !12)
!25 = !DILocation(line: 53, column: 17, scope: !12)
!26 = !DILocation(line: 0, scope: !12)
!27 = !DILocation(line: 52, column: 5, scope: !12)
!28 = !DILocation(line: 56, column: 14, scope: !12)
!29 = !DILocation(line: 56, column: 12, scope: !12)
!30 = !DILocation(line: 57, column: 14, scope: !12)
!31 = !DILocation(line: 57, column: 21, scope: !12)
!32 = !DILocation(line: 57, column: 19, scope: !12)
!33 = !DILocation(line: 57, column: 12, scope: !12)
!34 = !DILocation(line: 58, column: 14, scope: !12)
!35 = !DILocation(line: 58, column: 12, scope: !12)
!36 = !DILocation(line: 59, column: 5, scope: !12)
!37 = !DILocation(line: 54, column: 5, scope: !12)
!38 = distinct !{!38, !27, !36, !39}
!39 = !{!"llvm.loop.mustprogress"}
!40 = !DILocation(line: 60, column: 11, scope: !12)
!41 = !DILocation(line: 60, column: 9, scope: !12)
!42 = !DILocation(line: 61, column: 10, scope: !12)
!43 = !DILocation(line: 61, column: 3, scope: !12)
!44 = distinct !DISubprogram(name: "main", scope: !13, file: !13, line: 64, type: !14, scopeLine: 65, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!45 = !DILocation(line: 68, column: 5, scope: !44)
!46 = !DILocation(line: 69, column: 7, scope: !44)
!47 = !DILocation(line: 69, column: 3, scope: !44)
!48 = !DILocation(line: 70, column: 10, scope: !44)
!49 = !DILocation(line: 70, column: 3, scope: !44)
