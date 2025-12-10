; ModuleID = '/workspaces/llvmta/testcases/wcet_bench/expint.c'
source_filename = "/workspaces/llvmta/testcases/wcet_bench/expint.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv4t-unknown-unknown"

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @expint() #0 !dbg !12 {
entry:
  %call = call arm_aapcs_vfpcc i32 @expint_expint(i32 noundef 50, i32 noundef 1) #1, !dbg !16
  ret void, !dbg !17
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @expint_expint(i32 noundef %n, i32 noundef %x) #0 !dbg !18 {
entry:
  %retval = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %ii = alloca i32, align 4
  %nm1 = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  %d = alloca i32, align 4
  %del = alloca i32, align 4
  %fact = alloca i32, align 4
  %h = alloca i32, align 4
  %psi = alloca i32, align 4
  %ans = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store i32 %x, i32* %x.addr, align 4
  %0 = load i32, i32* %n.addr, align 4, !dbg !19
  %sub = sub nsw i32 %0, 1, !dbg !20
  store i32 %sub, i32* %nm1, align 4, !dbg !21
  %1 = load i32, i32* %x.addr, align 4, !dbg !22
  %cmp = icmp sgt i32 %1, 1, !dbg !23
  br i1 %cmp, label %if.then, label %if.else, !dbg !22

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %x.addr, align 4, !dbg !24
  %3 = load i32, i32* %n.addr, align 4, !dbg !25
  %add = add nsw i32 %2, %3, !dbg !26
  store i32 %add, i32* %b, align 4, !dbg !27
  store i32 2000000, i32* %c, align 4, !dbg !28
  store i32 30000000, i32* %d, align 4, !dbg !29
  %4 = load i32, i32* %d, align 4, !dbg !30
  store i32 %4, i32* %h, align 4, !dbg !31
  store i32 1, i32* %i, align 4, !dbg !32
  br label %for.cond, !dbg !33

for.cond:                                         ; preds = %for.inc, %if.then
  %5 = load i32, i32* %i, align 4, !dbg !34
  %cmp1 = icmp sle i32 %5, 100, !dbg !35
  br i1 %cmp1, label %for.body, label %for.end, !dbg !36

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4, !dbg !37
  %sub2 = sub nsw i32 0, %6, !dbg !38
  %7 = load i32, i32* %nm1, align 4, !dbg !39
  %8 = load i32, i32* %i, align 4, !dbg !40
  %add3 = add nsw i32 %7, %8, !dbg !41
  %mul = mul nsw i32 %sub2, %add3, !dbg !42
  store i32 %mul, i32* %a, align 4, !dbg !43
  %9 = load i32, i32* %b, align 4, !dbg !44
  %add4 = add nsw i32 %9, 2, !dbg !44
  store i32 %add4, i32* %b, align 4, !dbg !44
  %10 = load i32, i32* %a, align 4, !dbg !45
  %11 = load i32, i32* %d, align 4, !dbg !46
  %mul5 = mul nsw i32 %10, %11, !dbg !47
  %12 = load i32, i32* %b, align 4, !dbg !48
  %add6 = add nsw i32 %mul5, %12, !dbg !49
  %mul7 = mul nsw i32 10, %add6, !dbg !50
  store i32 %mul7, i32* %d, align 4, !dbg !51
  %13 = load i32, i32* %b, align 4, !dbg !52
  %14 = load i32, i32* %a, align 4, !dbg !53
  %15 = load i32, i32* %c, align 4, !dbg !54
  %div = sdiv i32 %14, %15, !dbg !55
  %add8 = add nsw i32 %13, %div, !dbg !56
  store i32 %add8, i32* %c, align 4, !dbg !57
  %16 = load i32, i32* %c, align 4, !dbg !58
  %17 = load i32, i32* %d, align 4, !dbg !59
  %mul9 = mul nsw i32 %16, %17, !dbg !60
  store i32 %mul9, i32* %del, align 4, !dbg !61
  %18 = load i32, i32* %del, align 4, !dbg !62
  %19 = load i32, i32* %h, align 4, !dbg !63
  %mul10 = mul nsw i32 %19, %18, !dbg !63
  store i32 %mul10, i32* %h, align 4, !dbg !63
  %20 = load i32, i32* %del, align 4, !dbg !64
  %cmp11 = icmp slt i32 %20, 10000, !dbg !65
  br i1 %cmp11, label %if.then12, label %if.end, !dbg !64

if.then12:                                        ; preds = %for.body
  %21 = load i32, i32* %h, align 4, !dbg !66
  %22 = load i32, i32* %x.addr, align 4, !dbg !67
  %sub13 = sub nsw i32 0, %22, !dbg !68
  %mul14 = mul nsw i32 %21, %sub13, !dbg !69
  store i32 %mul14, i32* %ans, align 4, !dbg !70
  %23 = load i32, i32* %ans, align 4, !dbg !71
  store i32 %23, i32* %retval, align 4, !dbg !72
  br label %return, !dbg !72

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !73

for.inc:                                          ; preds = %if.end
  %24 = load i32, i32* %i, align 4, !dbg !74
  %inc = add nsw i32 %24, 1, !dbg !74
  store i32 %inc, i32* %i, align 4, !dbg !74
  br label %for.cond, !dbg !36, !llvm.loop !75

for.end:                                          ; preds = %for.cond
  br label %if.end43, !dbg !77

if.else:                                          ; preds = %entry
  %25 = load i32, i32* %nm1, align 4, !dbg !78
  %cmp15 = icmp ne i32 %25, 0, !dbg !79
  %26 = zext i1 %cmp15 to i64, !dbg !78
  %cond = select i1 %cmp15, i32 2, i32 1000, !dbg !78
  store i32 %cond, i32* %ans, align 4, !dbg !80
  store i32 1, i32* %fact, align 4, !dbg !81
  store i32 1, i32* %i, align 4, !dbg !82
  br label %for.cond16, !dbg !83

for.cond16:                                       ; preds = %for.inc40, %if.else
  %27 = load i32, i32* %i, align 4, !dbg !84
  %cmp17 = icmp sle i32 %27, 100, !dbg !85
  br i1 %cmp17, label %for.body18, label %for.end42, !dbg !86

for.body18:                                       ; preds = %for.cond16
  %28 = load i32, i32* %x.addr, align 4, !dbg !87
  %sub19 = sub nsw i32 0, %28, !dbg !88
  %29 = load i32, i32* %i, align 4, !dbg !89
  %div20 = sdiv i32 %sub19, %29, !dbg !90
  %30 = load i32, i32* %fact, align 4, !dbg !91
  %mul21 = mul nsw i32 %30, %div20, !dbg !91
  store i32 %mul21, i32* %fact, align 4, !dbg !91
  %31 = load i32, i32* %i, align 4, !dbg !92
  %32 = load i32, i32* %nm1, align 4, !dbg !93
  %cmp22 = icmp ne i32 %31, %32, !dbg !94
  br i1 %cmp22, label %if.then23, label %if.else27, !dbg !92

if.then23:                                        ; preds = %for.body18
  %33 = load i32, i32* %fact, align 4, !dbg !95
  %sub24 = sub nsw i32 0, %33, !dbg !96
  %34 = load i32, i32* %i, align 4, !dbg !97
  %35 = load i32, i32* %nm1, align 4, !dbg !98
  %sub25 = sub nsw i32 %34, %35, !dbg !99
  %div26 = sdiv i32 %sub24, %sub25, !dbg !100
  store i32 %div26, i32* %del, align 4, !dbg !101
  br label %if.end38, !dbg !102

if.else27:                                        ; preds = %for.body18
  store i32 255, i32* %psi, align 4, !dbg !103
  store i32 1, i32* %ii, align 4, !dbg !104
  br label %for.cond28, !dbg !105

for.cond28:                                       ; preds = %for.inc33, %if.else27
  %36 = load i32, i32* %ii, align 4, !dbg !106
  %37 = load i32, i32* %nm1, align 4, !dbg !107
  %cmp29 = icmp sle i32 %36, %37, !dbg !108
  br i1 %cmp29, label %for.body30, label %for.end35, !dbg !109

for.body30:                                       ; preds = %for.cond28
  %38 = load i32, i32* %ii, align 4, !dbg !110
  %39 = load i32, i32* %nm1, align 4, !dbg !111
  %add31 = add nsw i32 %38, %39, !dbg !112
  %40 = load i32, i32* %psi, align 4, !dbg !113
  %add32 = add nsw i32 %40, %add31, !dbg !113
  store i32 %add32, i32* %psi, align 4, !dbg !113
  br label %for.inc33, !dbg !114

for.inc33:                                        ; preds = %for.body30
  %41 = load i32, i32* %ii, align 4, !dbg !115
  %inc34 = add nsw i32 %41, 1, !dbg !115
  store i32 %inc34, i32* %ii, align 4, !dbg !115
  br label %for.cond28, !dbg !109, !llvm.loop !116

for.end35:                                        ; preds = %for.cond28
  %42 = load i32, i32* %psi, align 4, !dbg !117
  %43 = load i32, i32* %fact, align 4, !dbg !118
  %44 = load i32, i32* %x.addr, align 4, !dbg !119
  %call = call arm_aapcs_vfpcc i32 @foo(i32 noundef %44) #1, !dbg !120
  %mul36 = mul nsw i32 %43, %call, !dbg !121
  %add37 = add nsw i32 %42, %mul36, !dbg !122
  store i32 %add37, i32* %del, align 4, !dbg !123
  br label %if.end38

if.end38:                                         ; preds = %for.end35, %if.then23
  %45 = load i32, i32* %del, align 4, !dbg !124
  %46 = load i32, i32* %ans, align 4, !dbg !125
  %add39 = add nsw i32 %46, %45, !dbg !125
  store i32 %add39, i32* %ans, align 4, !dbg !125
  br label %for.inc40, !dbg !126

for.inc40:                                        ; preds = %if.end38
  %47 = load i32, i32* %i, align 4, !dbg !127
  %inc41 = add nsw i32 %47, 1, !dbg !127
  store i32 %inc41, i32* %i, align 4, !dbg !127
  br label %for.cond16, !dbg !86, !llvm.loop !128

for.end42:                                        ; preds = %for.cond16
  br label %if.end43

if.end43:                                         ; preds = %for.end42, %for.end
  %48 = load i32, i32* %ans, align 4, !dbg !129
  store i32 %48, i32* %retval, align 4, !dbg !130
  br label %return, !dbg !130

return:                                           ; preds = %if.end43, %if.then12
  %49 = load i32, i32* %retval, align 4, !dbg !131
  ret i32 %49, !dbg !131
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @foo(i32 noundef %x) #0 !dbg !132 {
entry:
  %x.addr = alloca i32, align 4
  store i32 %x, i32* %x.addr, align 4
  %0 = load i32, i32* %x.addr, align 4, !dbg !133
  %1 = load i32, i32* %x.addr, align 4, !dbg !134
  %mul = mul nsw i32 %0, %1, !dbg !135
  %2 = load i32, i32* %x.addr, align 4, !dbg !136
  %mul1 = mul nsw i32 8, %2, !dbg !137
  %add = add nsw i32 %mul, %mul1, !dbg !138
  %3 = load i32, i32* %x.addr, align 4, !dbg !139
  %sub = sub nsw i32 4, %3, !dbg !140
  %shl = shl i32 %add, %sub, !dbg !141
  ret i32 %shl, !dbg !142
}

attributes #0 = { noinline nounwind "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #1 = { nobuiltin "no-builtins" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 14.0.6 (git@github.com:RTS-SYSU/LLVM-TA.git b7f9c4ccdebc6c37532ddd772889e5f0ff989c79)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/workspaces/llvmta/testcases/wcet_bench/expint.c", directory: "/workspaces/llvmta/testcases/util_scripts", checksumkind: CSK_MD5, checksum: "43d51292e0f0d67fd2201d0e410a84f4")
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
!12 = distinct !DISubprogram(name: "expint", scope: !13, file: !13, line: 29, type: !14, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!13 = !DIFile(filename: "wcet_bench/expint.c", directory: "/workspaces/llvmta/testcases", checksumkind: CSK_MD5, checksum: "43d51292e0f0d67fd2201d0e410a84f4")
!14 = !DISubroutineType(types: !15)
!15 = !{}
!16 = !DILocation(line: 33, column: 3, scope: !12)
!17 = !DILocation(line: 38, column: 1, scope: !12)
!18 = distinct !DISubprogram(name: "expint_expint", scope: !13, file: !13, line: 56, type: !14, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!19 = !DILocation(line: 66, column: 7, scope: !18)
!20 = !DILocation(line: 66, column: 8, scope: !18)
!21 = !DILocation(line: 66, column: 6, scope: !18)
!22 = !DILocation(line: 70, column: 6, scope: !18)
!23 = !DILocation(line: 70, column: 7, scope: !18)
!24 = !DILocation(line: 74, column: 9, scope: !18)
!25 = !DILocation(line: 74, column: 11, scope: !18)
!26 = !DILocation(line: 74, column: 10, scope: !18)
!27 = !DILocation(line: 74, column: 8, scope: !18)
!28 = !DILocation(line: 76, column: 8, scope: !18)
!29 = !DILocation(line: 78, column: 8, scope: !18)
!30 = !DILocation(line: 80, column: 9, scope: !18)
!31 = !DILocation(line: 80, column: 8, scope: !18)
!32 = !DILocation(line: 84, column: 13, scope: !18)
!33 = !DILocation(line: 84, column: 12, scope: !18)
!34 = !DILocation(line: 84, column: 16, scope: !18)
!35 = !DILocation(line: 84, column: 17, scope: !18)
!36 = !DILocation(line: 84, column: 7, scope: !18)
!37 = !DILocation(line: 88, column: 16, scope: !18)
!38 = !DILocation(line: 88, column: 15, scope: !18)
!39 = !DILocation(line: 88, column: 19, scope: !18)
!40 = !DILocation(line: 88, column: 23, scope: !18)
!41 = !DILocation(line: 88, column: 22, scope: !18)
!42 = !DILocation(line: 88, column: 17, scope: !18)
!43 = !DILocation(line: 88, column: 13, scope: !18)
!44 = !DILocation(line: 90, column: 13, scope: !18)
!45 = !DILocation(line: 92, column: 17, scope: !18)
!46 = !DILocation(line: 92, column: 19, scope: !18)
!47 = !DILocation(line: 92, column: 18, scope: !18)
!48 = !DILocation(line: 92, column: 21, scope: !18)
!49 = !DILocation(line: 92, column: 20, scope: !18)
!50 = !DILocation(line: 92, column: 15, scope: !18)
!51 = !DILocation(line: 92, column: 12, scope: !18)
!52 = !DILocation(line: 94, column: 13, scope: !18)
!53 = !DILocation(line: 94, column: 15, scope: !18)
!54 = !DILocation(line: 94, column: 17, scope: !18)
!55 = !DILocation(line: 94, column: 16, scope: !18)
!56 = !DILocation(line: 94, column: 14, scope: !18)
!57 = !DILocation(line: 94, column: 12, scope: !18)
!58 = !DILocation(line: 96, column: 15, scope: !18)
!59 = !DILocation(line: 96, column: 17, scope: !18)
!60 = !DILocation(line: 96, column: 16, scope: !18)
!61 = !DILocation(line: 96, column: 14, scope: !18)
!62 = !DILocation(line: 98, column: 16, scope: !18)
!63 = !DILocation(line: 98, column: 13, scope: !18)
!64 = !DILocation(line: 100, column: 15, scope: !18)
!65 = !DILocation(line: 100, column: 19, scope: !18)
!66 = !DILocation(line: 104, column: 19, scope: !18)
!67 = !DILocation(line: 104, column: 22, scope: !18)
!68 = !DILocation(line: 104, column: 21, scope: !18)
!69 = !DILocation(line: 104, column: 20, scope: !18)
!70 = !DILocation(line: 104, column: 18, scope: !18)
!71 = !DILocation(line: 106, column: 22, scope: !18)
!72 = !DILocation(line: 106, column: 15, scope: !18)
!73 = !DILocation(line: 110, column: 9, scope: !18)
!74 = !DILocation(line: 84, column: 24, scope: !18)
!75 = distinct !{!75, !36, !73, !76}
!76 = !{!"llvm.loop.mustprogress"}
!77 = !DILocation(line: 112, column: 5, scope: !18)
!78 = !DILocation(line: 122, column: 13, scope: !18)
!79 = !DILocation(line: 122, column: 17, scope: !18)
!80 = !DILocation(line: 122, column: 11, scope: !18)
!81 = !DILocation(line: 124, column: 11, scope: !18)
!82 = !DILocation(line: 126, column: 13, scope: !18)
!83 = !DILocation(line: 126, column: 12, scope: !18)
!84 = !DILocation(line: 126, column: 16, scope: !18)
!85 = !DILocation(line: 126, column: 17, scope: !18)
!86 = !DILocation(line: 126, column: 7, scope: !18)
!87 = !DILocation(line: 130, column: 20, scope: !18)
!88 = !DILocation(line: 130, column: 19, scope: !18)
!89 = !DILocation(line: 130, column: 22, scope: !18)
!90 = !DILocation(line: 130, column: 21, scope: !18)
!91 = !DILocation(line: 130, column: 16, scope: !18)
!92 = !DILocation(line: 132, column: 15, scope: !18)
!93 = !DILocation(line: 132, column: 20, scope: !18)
!94 = !DILocation(line: 132, column: 17, scope: !18)
!95 = !DILocation(line: 134, column: 20, scope: !18)
!96 = !DILocation(line: 134, column: 19, scope: !18)
!97 = !DILocation(line: 134, column: 26, scope: !18)
!98 = !DILocation(line: 134, column: 28, scope: !18)
!99 = !DILocation(line: 134, column: 27, scope: !18)
!100 = !DILocation(line: 134, column: 24, scope: !18)
!101 = !DILocation(line: 134, column: 17, scope: !18)
!102 = !DILocation(line: 134, column: 13, scope: !18)
!103 = !DILocation(line: 140, column: 19, scope: !18)
!104 = !DILocation(line: 142, column: 22, scope: !18)
!105 = !DILocation(line: 142, column: 20, scope: !18)
!106 = !DILocation(line: 142, column: 25, scope: !18)
!107 = !DILocation(line: 142, column: 29, scope: !18)
!108 = !DILocation(line: 142, column: 27, scope: !18)
!109 = !DILocation(line: 142, column: 15, scope: !18)
!110 = !DILocation(line: 144, column: 24, scope: !18)
!111 = !DILocation(line: 144, column: 29, scope: !18)
!112 = !DILocation(line: 144, column: 27, scope: !18)
!113 = !DILocation(line: 144, column: 21, scope: !18)
!114 = !DILocation(line: 144, column: 17, scope: !18)
!115 = !DILocation(line: 142, column: 35, scope: !18)
!116 = distinct !{!116, !109, !111, !76}
!117 = !DILocation(line: 146, column: 19, scope: !18)
!118 = !DILocation(line: 146, column: 23, scope: !18)
!119 = !DILocation(line: 146, column: 32, scope: !18)
!120 = !DILocation(line: 146, column: 28, scope: !18)
!121 = !DILocation(line: 146, column: 27, scope: !18)
!122 = !DILocation(line: 146, column: 22, scope: !18)
!123 = !DILocation(line: 146, column: 18, scope: !18)
!124 = !DILocation(line: 150, column: 18, scope: !18)
!125 = !DILocation(line: 150, column: 15, scope: !18)
!126 = !DILocation(line: 154, column: 9, scope: !18)
!127 = !DILocation(line: 126, column: 24, scope: !18)
!128 = distinct !{!128, !86, !126, !76}
!129 = !DILocation(line: 160, column: 10, scope: !18)
!130 = !DILocation(line: 160, column: 3, scope: !18)
!131 = !DILocation(line: 162, column: 1, scope: !18)
!132 = distinct !DISubprogram(name: "foo", scope: !13, file: !13, line: 40, type: !14, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!133 = !DILocation(line: 44, column: 10, scope: !132)
!134 = !DILocation(line: 44, column: 12, scope: !132)
!135 = !DILocation(line: 44, column: 11, scope: !132)
!136 = !DILocation(line: 44, column: 17, scope: !132)
!137 = !DILocation(line: 44, column: 16, scope: !132)
!138 = !DILocation(line: 44, column: 13, scope: !132)
!139 = !DILocation(line: 44, column: 23, scope: !132)
!140 = !DILocation(line: 44, column: 22, scope: !132)
!141 = !DILocation(line: 44, column: 19, scope: !132)
!142 = !DILocation(line: 44, column: 3, scope: !132)
