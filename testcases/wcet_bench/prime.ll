; ModuleID = '/workspaces/llvmta/testcases/wcet_bench/prime.c'
source_filename = "/workspaces/llvmta/testcases/wcet_bench/prime.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv4t-unknown-unknown"

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc zeroext i8 @divides(i32 noundef %n, i32 noundef %m) #0 !dbg !12 {
entry:
  %n.addr = alloca i32, align 4
  %m.addr = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store i32 %m, i32* %m.addr, align 4
  %0 = load i32, i32* %m.addr, align 4, !dbg !16
  %1 = load i32, i32* %n.addr, align 4, !dbg !17
  %rem = urem i32 %0, %1, !dbg !18
  %cmp = icmp eq i32 %rem, 0, !dbg !19
  %conv = zext i1 %cmp to i32, !dbg !19
  %conv1 = trunc i32 %conv to i8, !dbg !20
  ret i8 %conv1, !dbg !21
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc zeroext i8 @even(i32 noundef %n) #0 !dbg !22 {
entry:
  %n.addr = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  %0 = load i32, i32* %n.addr, align 4, !dbg !23
  %call = call arm_aapcs_vfpcc zeroext i8 @divides(i32 noundef 2, i32 noundef %0) #1, !dbg !24
  ret i8 %call, !dbg !25
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc zeroext i8 @prime(i32 noundef %n) #0 !dbg !26 {
entry:
  %retval = alloca i8, align 1
  %n.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  %0 = load i32, i32* %n.addr, align 4, !dbg !27
  %call = call arm_aapcs_vfpcc zeroext i8 @even(i32 noundef %0) #1, !dbg !28
  %tobool = icmp ne i8 %call, 0, !dbg !28
  br i1 %tobool, label %if.then, label %if.end, !dbg !28

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %n.addr, align 4, !dbg !29
  %cmp = icmp eq i32 %1, 2, !dbg !30
  %conv = zext i1 %cmp to i32, !dbg !30
  %conv1 = trunc i32 %conv to i8, !dbg !31
  store i8 %conv1, i8* %retval, align 1, !dbg !32
  br label %return, !dbg !32

if.end:                                           ; preds = %entry
  store i32 3, i32* %i, align 4, !dbg !33
  br label %for.cond, !dbg !34

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i32, i32* %i, align 4, !dbg !35
  %3 = load i32, i32* %i, align 4, !dbg !36
  %mul = mul i32 %2, %3, !dbg !37
  %4 = load i32, i32* %n.addr, align 4, !dbg !38
  %cmp2 = icmp ule i32 %mul, %4, !dbg !39
  br i1 %cmp2, label %for.body, label %for.end, !dbg !40

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4, !dbg !41
  %6 = load i32, i32* %n.addr, align 4, !dbg !42
  %call4 = call arm_aapcs_vfpcc zeroext i8 @divides(i32 noundef %5, i32 noundef %6) #1, !dbg !43
  %tobool5 = icmp ne i8 %call4, 0, !dbg !43
  br i1 %tobool5, label %if.then6, label %if.end7, !dbg !43

if.then6:                                         ; preds = %for.body
  store i8 0, i8* %retval, align 1, !dbg !44
  br label %return, !dbg !44

if.end7:                                          ; preds = %for.body
  br label %for.inc, !dbg !45

for.inc:                                          ; preds = %if.end7
  %7 = load i32, i32* %i, align 4, !dbg !46
  %add = add i32 %7, 2, !dbg !46
  store i32 %add, i32* %i, align 4, !dbg !46
  br label %for.cond, !dbg !40, !llvm.loop !47

for.end:                                          ; preds = %for.cond
  %8 = load i32, i32* %n.addr, align 4, !dbg !49
  %cmp8 = icmp ugt i32 %8, 1, !dbg !50
  %conv9 = zext i1 %cmp8 to i32, !dbg !50
  %conv10 = trunc i32 %conv9 to i8, !dbg !51
  store i8 %conv10, i8* %retval, align 1, !dbg !52
  br label %return, !dbg !52

return:                                           ; preds = %for.end, %if.then6, %if.then
  %9 = load i8, i8* %retval, align 1, !dbg !53
  ret i8 %9, !dbg !53
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @swap(i32* noundef %a, i32* noundef %b) #0 !dbg !54 {
entry:
  %a.addr = alloca i32*, align 4
  %b.addr = alloca i32*, align 4
  %tmp = alloca i32, align 4
  store i32* %a, i32** %a.addr, align 4
  store i32* %b, i32** %b.addr, align 4
  %0 = load i32*, i32** %a.addr, align 4, !dbg !55
  %1 = load i32, i32* %0, align 4, !dbg !56
  store i32 %1, i32* %tmp, align 4, !dbg !57
  %2 = load i32*, i32** %b.addr, align 4, !dbg !58
  %3 = load i32, i32* %2, align 4, !dbg !59
  %4 = load i32*, i32** %a.addr, align 4, !dbg !60
  store i32 %3, i32* %4, align 4, !dbg !61
  %5 = load i32, i32* %tmp, align 4, !dbg !62
  %6 = load i32*, i32** %b.addr, align 4, !dbg !63
  store i32 %5, i32* %6, align 4, !dbg !64
  ret void, !dbg !65
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @main() #0 !dbg !66 {
entry:
  %retval = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 21649, i32* %x, align 4, !dbg !67
  store i32 513239, i32* %y, align 4, !dbg !68
  call arm_aapcs_vfpcc void @swap(i32* noundef %x, i32* noundef %y) #1, !dbg !69
  %0 = load i32, i32* %x, align 4, !dbg !70
  %call = call arm_aapcs_vfpcc zeroext i8 @prime(i32 noundef %0) #1, !dbg !71
  %conv = zext i8 %call to i32, !dbg !71
  %tobool = icmp ne i32 %conv, 0, !dbg !71
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !72

land.rhs:                                         ; preds = %entry
  %1 = load i32, i32* %y, align 4, !dbg !73
  %call1 = call arm_aapcs_vfpcc zeroext i8 @prime(i32 noundef %1) #1, !dbg !74
  %conv2 = zext i8 %call1 to i32, !dbg !74
  %tobool3 = icmp ne i32 %conv2, 0, !dbg !72
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %tobool3, %land.rhs ], !dbg !75
  %lnot = xor i1 %2, true, !dbg !76
  %lnot.ext = zext i1 %lnot to i32, !dbg !76
  ret i32 %lnot.ext, !dbg !77
}

attributes #0 = { noinline nounwind "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #1 = { nobuiltin "no-builtins" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 14.0.6 (git@github.com:RTS-SYSU/LLVM-TA.git b7f9c4ccdebc6c37532ddd772889e5f0ff989c79)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/workspaces/llvmta/testcases/wcet_bench/prime.c", directory: "/workspaces/llvmta/testcases/util_scripts", checksumkind: CSK_MD5, checksum: "7271a0ea0a06cb490a4db8f25f92dc3e")
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
!12 = distinct !DISubprogram(name: "divides", scope: !13, file: !13, line: 15, type: !14, scopeLine: 15, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!13 = !DIFile(filename: "wcet_bench/prime.c", directory: "/workspaces/llvmta/testcases", checksumkind: CSK_MD5, checksum: "7271a0ea0a06cb490a4db8f25f92dc3e")
!14 = !DISubroutineType(types: !15)
!15 = !{}
!16 = !DILocation(line: 16, column: 11, scope: !12)
!17 = !DILocation(line: 16, column: 15, scope: !12)
!18 = !DILocation(line: 16, column: 13, scope: !12)
!19 = !DILocation(line: 16, column: 17, scope: !12)
!20 = !DILocation(line: 16, column: 10, scope: !12)
!21 = !DILocation(line: 16, column: 3, scope: !12)
!22 = distinct !DISubprogram(name: "even", scope: !13, file: !13, line: 19, type: !14, scopeLine: 19, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!23 = !DILocation(line: 20, column: 23, scope: !22)
!24 = !DILocation(line: 20, column: 11, scope: !22)
!25 = !DILocation(line: 20, column: 3, scope: !22)
!26 = distinct !DISubprogram(name: "prime", scope: !13, file: !13, line: 23, type: !14, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!27 = !DILocation(line: 25, column: 13, scope: !26)
!28 = !DILocation(line: 25, column: 7, scope: !26)
!29 = !DILocation(line: 26, column: 15, scope: !26)
!30 = !DILocation(line: 26, column: 17, scope: !26)
!31 = !DILocation(line: 26, column: 14, scope: !26)
!32 = !DILocation(line: 26, column: 7, scope: !26)
!33 = !DILocation(line: 27, column: 10, scope: !26)
!34 = !DILocation(line: 27, column: 8, scope: !26)
!35 = !DILocation(line: 27, column: 15, scope: !26)
!36 = !DILocation(line: 27, column: 19, scope: !26)
!37 = !DILocation(line: 27, column: 17, scope: !26)
!38 = !DILocation(line: 27, column: 24, scope: !26)
!39 = !DILocation(line: 27, column: 21, scope: !26)
!40 = !DILocation(line: 27, column: 3, scope: !26)
!41 = !DILocation(line: 28, column: 20, scope: !26)
!42 = !DILocation(line: 28, column: 23, scope: !26)
!43 = !DILocation(line: 28, column: 11, scope: !26)
!44 = !DILocation(line: 29, column: 11, scope: !26)
!45 = !DILocation(line: 30, column: 3, scope: !26)
!46 = !DILocation(line: 27, column: 29, scope: !26)
!47 = distinct !{!47, !40, !45, !48}
!48 = !{!"llvm.loop.mustprogress"}
!49 = !DILocation(line: 31, column: 11, scope: !26)
!50 = !DILocation(line: 31, column: 13, scope: !26)
!51 = !DILocation(line: 31, column: 10, scope: !26)
!52 = !DILocation(line: 31, column: 3, scope: !26)
!53 = !DILocation(line: 32, column: 1, scope: !26)
!54 = distinct !DISubprogram(name: "swap", scope: !13, file: !13, line: 34, type: !14, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!55 = !DILocation(line: 35, column: 15, scope: !54)
!56 = !DILocation(line: 35, column: 14, scope: !54)
!57 = !DILocation(line: 35, column: 8, scope: !54)
!58 = !DILocation(line: 36, column: 9, scope: !54)
!59 = !DILocation(line: 36, column: 8, scope: !54)
!60 = !DILocation(line: 36, column: 4, scope: !54)
!61 = !DILocation(line: 36, column: 6, scope: !54)
!62 = !DILocation(line: 37, column: 8, scope: !54)
!63 = !DILocation(line: 37, column: 4, scope: !54)
!64 = !DILocation(line: 37, column: 6, scope: !54)
!65 = !DILocation(line: 38, column: 1, scope: !54)
!66 = distinct !DISubprogram(name: "main", scope: !13, file: !13, line: 40, type: !14, scopeLine: 40, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!67 = !DILocation(line: 41, column: 8, scope: !66)
!68 = !DILocation(line: 42, column: 8, scope: !66)
!69 = !DILocation(line: 43, column: 3, scope: !66)
!70 = !DILocation(line: 44, column: 19, scope: !66)
!71 = !DILocation(line: 44, column: 13, scope: !66)
!72 = !DILocation(line: 44, column: 22, scope: !66)
!73 = !DILocation(line: 44, column: 31, scope: !66)
!74 = !DILocation(line: 44, column: 25, scope: !66)
!75 = !DILocation(line: 0, scope: !66)
!76 = !DILocation(line: 44, column: 11, scope: !66)
!77 = !DILocation(line: 44, column: 3, scope: !66)
