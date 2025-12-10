; ModuleID = '/workspaces/llvmta/testcases/wcet_bench/lcdnum.c'
source_filename = "/workspaces/llvmta/testcases/wcet_bench/lcdnum.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv4t-unknown-unknown"

@IN = dso_local global i8 0, align 1
@OUT = dso_local global i8 0, align 1

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc zeroext i8 @num_to_lcd(i8 noundef zeroext %a) #0 !dbg !12 {
entry:
  %retval = alloca i8, align 1
  %a.addr = alloca i8, align 1
  store i8 %a, i8* %a.addr, align 1
  %0 = load i8, i8* %a.addr, align 1, !dbg !16
  %conv = zext i8 %0 to i32, !dbg !16
  switch i32 %conv, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb2
    i32 3, label %sw.bb3
    i32 4, label %sw.bb4
    i32 5, label %sw.bb5
    i32 6, label %sw.bb6
    i32 7, label %sw.bb7
    i32 8, label %sw.bb8
    i32 9, label %sw.bb9
    i32 10, label %sw.bb10
    i32 11, label %sw.bb11
    i32 12, label %sw.bb12
    i32 13, label %sw.bb13
    i32 14, label %sw.bb14
    i32 15, label %sw.bb15
  ], !dbg !17

sw.bb:                                            ; preds = %entry
  store i8 0, i8* %retval, align 1, !dbg !18
  br label %return, !dbg !18

sw.bb1:                                           ; preds = %entry
  store i8 36, i8* %retval, align 1, !dbg !19
  br label %return, !dbg !19

sw.bb2:                                           ; preds = %entry
  store i8 93, i8* %retval, align 1, !dbg !20
  br label %return, !dbg !20

sw.bb3:                                           ; preds = %entry
  store i8 109, i8* %retval, align 1, !dbg !21
  br label %return, !dbg !21

sw.bb4:                                           ; preds = %entry
  store i8 46, i8* %retval, align 1, !dbg !22
  br label %return, !dbg !22

sw.bb5:                                           ; preds = %entry
  store i8 93, i8* %retval, align 1, !dbg !23
  br label %return, !dbg !23

sw.bb6:                                           ; preds = %entry
  store i8 123, i8* %retval, align 1, !dbg !24
  br label %return, !dbg !24

sw.bb7:                                           ; preds = %entry
  store i8 37, i8* %retval, align 1, !dbg !25
  br label %return, !dbg !25

sw.bb8:                                           ; preds = %entry
  store i8 127, i8* %retval, align 1, !dbg !26
  br label %return, !dbg !26

sw.bb9:                                           ; preds = %entry
  store i8 111, i8* %retval, align 1, !dbg !27
  br label %return, !dbg !27

sw.bb10:                                          ; preds = %entry
  store i8 63, i8* %retval, align 1, !dbg !28
  br label %return, !dbg !28

sw.bb11:                                          ; preds = %entry
  store i8 122, i8* %retval, align 1, !dbg !29
  br label %return, !dbg !29

sw.bb12:                                          ; preds = %entry
  store i8 83, i8* %retval, align 1, !dbg !30
  br label %return, !dbg !30

sw.bb13:                                          ; preds = %entry
  store i8 124, i8* %retval, align 1, !dbg !31
  br label %return, !dbg !31

sw.bb14:                                          ; preds = %entry
  store i8 91, i8* %retval, align 1, !dbg !32
  br label %return, !dbg !32

sw.bb15:                                          ; preds = %entry
  store i8 27, i8* %retval, align 1, !dbg !33
  br label %return, !dbg !33

sw.epilog:                                        ; preds = %entry
  store i8 0, i8* %retval, align 1, !dbg !34
  br label %return, !dbg !34

return:                                           ; preds = %sw.epilog, %sw.bb15, %sw.bb14, %sw.bb13, %sw.bb12, %sw.bb11, %sw.bb10, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %1 = load i8, i8* %retval, align 1, !dbg !35
  ret i8 %1, !dbg !35
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @main() #0 !dbg !36 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %a = alloca i8, align 1
  %n = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 10, i32* %n, align 4, !dbg !37
  store i32 0, i32* %i, align 4, !dbg !38
  br label %for.cond, !dbg !39

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !40
  %1 = load i32, i32* %n, align 4, !dbg !41
  %cmp = icmp slt i32 %0, %1, !dbg !42
  br i1 %cmp, label %for.body, label %for.end, !dbg !43

for.body:                                         ; preds = %for.cond
  %2 = load volatile i8, i8* @IN, align 1, !dbg !44
  store i8 %2, i8* %a, align 1, !dbg !45
  %3 = load i32, i32* %i, align 4, !dbg !46
  %cmp1 = icmp slt i32 %3, 5, !dbg !47
  br i1 %cmp1, label %if.then, label %if.end, !dbg !46

if.then:                                          ; preds = %for.body
  %4 = load i8, i8* %a, align 1, !dbg !48
  %conv = zext i8 %4 to i32, !dbg !48
  %and = and i32 %conv, 15, !dbg !49
  %conv2 = trunc i32 %and to i8, !dbg !48
  store i8 %conv2, i8* %a, align 1, !dbg !50
  %5 = load i8, i8* %a, align 1, !dbg !51
  %call = call arm_aapcs_vfpcc zeroext i8 @num_to_lcd(i8 noundef zeroext %5) #1, !dbg !52
  store volatile i8 %call, i8* @OUT, align 1, !dbg !53
  br label %if.end, !dbg !54

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc, !dbg !55

for.inc:                                          ; preds = %if.end
  %6 = load i32, i32* %i, align 4, !dbg !56
  %inc = add nsw i32 %6, 1, !dbg !56
  store i32 %inc, i32* %i, align 4, !dbg !56
  br label %for.cond, !dbg !43, !llvm.loop !57

for.end:                                          ; preds = %for.cond
  ret i32 0, !dbg !59
}

attributes #0 = { noinline nounwind "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #1 = { nobuiltin "no-builtins" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 14.0.6 (git@github.com:RTS-SYSU/LLVM-TA.git b7f9c4ccdebc6c37532ddd772889e5f0ff989c79)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/workspaces/llvmta/testcases/wcet_bench/lcdnum.c", directory: "/workspaces/llvmta/testcases/util_scripts", checksumkind: CSK_MD5, checksum: "064b65c1c0637e48f0c16ae6e21f2621")
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
!12 = distinct !DISubprogram(name: "num_to_lcd", scope: !13, file: !13, line: 19, type: !14, scopeLine: 20, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!13 = !DIFile(filename: "wcet_bench/lcdnum.c", directory: "/workspaces/llvmta/testcases", checksumkind: CSK_MD5, checksum: "064b65c1c0637e48f0c16ae6e21f2621")
!14 = !DISubroutineType(types: !15)
!15 = !{}
!16 = !DILocation(line: 28, column: 10, scope: !12)
!17 = !DILocation(line: 28, column: 3, scope: !12)
!18 = !DILocation(line: 30, column: 16, scope: !12)
!19 = !DILocation(line: 31, column: 16, scope: !12)
!20 = !DILocation(line: 32, column: 16, scope: !12)
!21 = !DILocation(line: 33, column: 16, scope: !12)
!22 = !DILocation(line: 34, column: 16, scope: !12)
!23 = !DILocation(line: 35, column: 16, scope: !12)
!24 = !DILocation(line: 36, column: 16, scope: !12)
!25 = !DILocation(line: 37, column: 16, scope: !12)
!26 = !DILocation(line: 38, column: 16, scope: !12)
!27 = !DILocation(line: 39, column: 16, scope: !12)
!28 = !DILocation(line: 40, column: 16, scope: !12)
!29 = !DILocation(line: 41, column: 16, scope: !12)
!30 = !DILocation(line: 42, column: 16, scope: !12)
!31 = !DILocation(line: 43, column: 16, scope: !12)
!32 = !DILocation(line: 44, column: 16, scope: !12)
!33 = !DILocation(line: 45, column: 16, scope: !12)
!34 = !DILocation(line: 47, column: 3, scope: !12)
!35 = !DILocation(line: 48, column: 1, scope: !12)
!36 = distinct !DISubprogram(name: "main", scope: !13, file: !13, line: 53, type: !14, scopeLine: 54, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!37 = !DILocation(line: 59, column: 5, scope: !36)
!38 = !DILocation(line: 60, column: 8, scope: !36)
!39 = !DILocation(line: 60, column: 7, scope: !36)
!40 = !DILocation(line: 60, column: 12, scope: !36)
!41 = !DILocation(line: 60, column: 15, scope: !36)
!42 = !DILocation(line: 60, column: 13, scope: !36)
!43 = !DILocation(line: 60, column: 3, scope: !36)
!44 = !DILocation(line: 62, column: 11, scope: !36)
!45 = !DILocation(line: 62, column: 9, scope: !36)
!46 = !DILocation(line: 63, column: 10, scope: !36)
!47 = !DILocation(line: 63, column: 11, scope: !36)
!48 = !DILocation(line: 65, column: 15, scope: !36)
!49 = !DILocation(line: 65, column: 17, scope: !36)
!50 = !DILocation(line: 65, column: 13, scope: !36)
!51 = !DILocation(line: 66, column: 28, scope: !36)
!52 = !DILocation(line: 66, column: 17, scope: !36)
!53 = !DILocation(line: 66, column: 15, scope: !36)
!54 = !DILocation(line: 67, column: 9, scope: !36)
!55 = !DILocation(line: 68, column: 5, scope: !36)
!56 = !DILocation(line: 60, column: 19, scope: !36)
!57 = distinct !{!57, !43, !55, !58}
!58 = !{!"llvm.loop.mustprogress"}
!59 = !DILocation(line: 69, column: 3, scope: !36)
