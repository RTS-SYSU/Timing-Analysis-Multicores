; ModuleID = '/workspaces/llvmta/testcases/wcet_bench/janne_complex.c'
source_filename = "/workspaces/llvmta/testcases/wcet_bench/janne_complex.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv4t-unknown-unknown"

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @complex(i32 noundef %a, i32 noundef %b) #0 !dbg !12 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  store i32 %b, i32* %b.addr, align 4
  br label %while.cond, !dbg !16

while.cond:                                       ; preds = %while.end, %entry
  %0 = load i32, i32* %a.addr, align 4, !dbg !17
  %cmp = icmp slt i32 %0, 30, !dbg !18
  br i1 %cmp, label %while.body, label %while.end13, !dbg !16

while.body:                                       ; preds = %while.cond
  br label %while.cond1, !dbg !19

while.cond1:                                      ; preds = %if.end11, %while.body
  %1 = load i32, i32* %b.addr, align 4, !dbg !20
  %2 = load i32, i32* %a.addr, align 4, !dbg !21
  %cmp2 = icmp slt i32 %1, %2, !dbg !22
  br i1 %cmp2, label %while.body3, label %while.end, !dbg !19

while.body3:                                      ; preds = %while.cond1
  %3 = load i32, i32* %b.addr, align 4, !dbg !23
  %cmp4 = icmp sgt i32 %3, 5, !dbg !24
  br i1 %cmp4, label %if.then, label %if.else, !dbg !23

if.then:                                          ; preds = %while.body3
  %4 = load i32, i32* %b.addr, align 4, !dbg !25
  %mul = mul nsw i32 %4, 3, !dbg !26
  store i32 %mul, i32* %b.addr, align 4, !dbg !27
  br label %if.end, !dbg !28

if.else:                                          ; preds = %while.body3
  %5 = load i32, i32* %b.addr, align 4, !dbg !29
  %add = add nsw i32 %5, 2, !dbg !30
  store i32 %add, i32* %b.addr, align 4, !dbg !31
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %6 = load i32, i32* %b.addr, align 4, !dbg !32
  %cmp5 = icmp sge i32 %6, 10, !dbg !33
  br i1 %cmp5, label %land.lhs.true, label %if.else9, !dbg !34

land.lhs.true:                                    ; preds = %if.end
  %7 = load i32, i32* %b.addr, align 4, !dbg !35
  %cmp6 = icmp sle i32 %7, 12, !dbg !36
  br i1 %cmp6, label %if.then7, label %if.else9, !dbg !32

if.then7:                                         ; preds = %land.lhs.true
  %8 = load i32, i32* %a.addr, align 4, !dbg !37
  %add8 = add nsw i32 %8, 10, !dbg !38
  store i32 %add8, i32* %a.addr, align 4, !dbg !39
  br label %if.end11, !dbg !40

if.else9:                                         ; preds = %land.lhs.true, %if.end
  %9 = load i32, i32* %a.addr, align 4, !dbg !41
  %add10 = add nsw i32 %9, 1, !dbg !42
  store i32 %add10, i32* %a.addr, align 4, !dbg !43
  br label %if.end11

if.end11:                                         ; preds = %if.else9, %if.then7
  br label %while.cond1, !dbg !19, !llvm.loop !44

while.end:                                        ; preds = %while.cond1
  %10 = load i32, i32* %a.addr, align 4, !dbg !47
  %add12 = add nsw i32 %10, 2, !dbg !48
  store i32 %add12, i32* %a.addr, align 4, !dbg !49
  %11 = load i32, i32* %b.addr, align 4, !dbg !50
  %sub = sub nsw i32 %11, 10, !dbg !51
  store i32 %sub, i32* %b.addr, align 4, !dbg !52
  br label %while.cond, !dbg !16, !llvm.loop !53

while.end13:                                      ; preds = %while.cond
  ret i32 1, !dbg !55
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @main() #0 !dbg !56 {
entry:
  %retval = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %answer = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 1, i32* %a, align 4, !dbg !57
  store i32 1, i32* %b, align 4, !dbg !58
  store i32 0, i32* %answer, align 4, !dbg !59
  %0 = load i32, i32* %a, align 4, !dbg !60
  %1 = load i32, i32* %b, align 4, !dbg !61
  %call = call arm_aapcs_vfpcc i32 @complex(i32 noundef %0, i32 noundef %1) #1, !dbg !62
  store i32 %call, i32* %answer, align 4, !dbg !63
  %2 = load i32, i32* %answer, align 4, !dbg !64
  ret i32 %2, !dbg !65
}

attributes #0 = { noinline nounwind "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #1 = { nobuiltin "no-builtins" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 14.0.6 (git@github.com:RTS-SYSU/LLVM-TA.git b7f9c4ccdebc6c37532ddd772889e5f0ff989c79)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/workspaces/llvmta/testcases/wcet_bench/janne_complex.c", directory: "/workspaces/llvmta/testcases/util_scripts", checksumkind: CSK_MD5, checksum: "a16f43182d5a8b9f58009ada8638dd18")
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
!12 = distinct !DISubprogram(name: "complex", scope: !13, file: !13, line: 29, type: !14, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!13 = !DIFile(filename: "wcet_bench/janne_complex.c", directory: "/workspaces/llvmta/testcases", checksumkind: CSK_MD5, checksum: "a16f43182d5a8b9f58009ada8638dd18")
!14 = !DISubroutineType(types: !15)
!15 = !{}
!16 = !DILocation(line: 31, column: 3, scope: !12)
!17 = !DILocation(line: 31, column: 9, scope: !12)
!18 = !DILocation(line: 31, column: 11, scope: !12)
!19 = !DILocation(line: 33, column: 7, scope: !12)
!20 = !DILocation(line: 33, column: 13, scope: !12)
!21 = !DILocation(line: 33, column: 17, scope: !12)
!22 = !DILocation(line: 33, column: 15, scope: !12)
!23 = !DILocation(line: 35, column: 7, scope: !12)
!24 = !DILocation(line: 35, column: 9, scope: !12)
!25 = !DILocation(line: 36, column: 10, scope: !12)
!26 = !DILocation(line: 36, column: 12, scope: !12)
!27 = !DILocation(line: 36, column: 8, scope: !12)
!28 = !DILocation(line: 36, column: 6, scope: !12)
!29 = !DILocation(line: 38, column: 10, scope: !12)
!30 = !DILocation(line: 38, column: 12, scope: !12)
!31 = !DILocation(line: 38, column: 8, scope: !12)
!32 = !DILocation(line: 39, column: 7, scope: !12)
!33 = !DILocation(line: 39, column: 9, scope: !12)
!34 = !DILocation(line: 39, column: 15, scope: !12)
!35 = !DILocation(line: 39, column: 18, scope: !12)
!36 = !DILocation(line: 39, column: 20, scope: !12)
!37 = !DILocation(line: 40, column: 10, scope: !12)
!38 = !DILocation(line: 40, column: 12, scope: !12)
!39 = !DILocation(line: 40, column: 8, scope: !12)
!40 = !DILocation(line: 40, column: 6, scope: !12)
!41 = !DILocation(line: 42, column: 10, scope: !12)
!42 = !DILocation(line: 42, column: 12, scope: !12)
!43 = !DILocation(line: 42, column: 8, scope: !12)
!44 = distinct !{!44, !19, !45, !46}
!45 = !DILocation(line: 43, column: 2, scope: !12)
!46 = !{!"llvm.loop.mustprogress"}
!47 = !DILocation(line: 44, column: 11, scope: !12)
!48 = !DILocation(line: 44, column: 13, scope: !12)
!49 = !DILocation(line: 44, column: 9, scope: !12)
!50 = !DILocation(line: 45, column: 11, scope: !12)
!51 = !DILocation(line: 45, column: 13, scope: !12)
!52 = !DILocation(line: 45, column: 9, scope: !12)
!53 = distinct !{!53, !16, !54, !46}
!54 = !DILocation(line: 46, column: 5, scope: !12)
!55 = !DILocation(line: 47, column: 3, scope: !12)
!56 = distinct !DISubprogram(name: "main", scope: !13, file: !13, line: 50, type: !14, scopeLine: 51, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!57 = !DILocation(line: 53, column: 7, scope: !56)
!58 = !DILocation(line: 53, column: 14, scope: !56)
!59 = !DILocation(line: 53, column: 21, scope: !56)
!60 = !DILocation(line: 58, column: 20, scope: !56)
!61 = !DILocation(line: 58, column: 23, scope: !56)
!62 = !DILocation(line: 58, column: 12, scope: !56)
!63 = !DILocation(line: 58, column: 10, scope: !56)
!64 = !DILocation(line: 59, column: 10, scope: !56)
!65 = !DILocation(line: 59, column: 3, scope: !56)
