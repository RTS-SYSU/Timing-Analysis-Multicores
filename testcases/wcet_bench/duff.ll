; ModuleID = '/workspaces/llvmta/testcases/wcet_bench/duff.c'
source_filename = "/workspaces/llvmta/testcases/wcet_bench/duff.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv4t-unknown-unknown"

@source = dso_local global [100 x i8] zeroinitializer, align 1
@target = dso_local global [100 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @duffcopy(i8* noundef %to, i8* noundef %from, i32 noundef %count) #0 !dbg !12 {
entry:
  %to.addr = alloca i8*, align 4
  %from.addr = alloca i8*, align 4
  %count.addr = alloca i32, align 4
  %n = alloca i32, align 4
  store i8* %to, i8** %to.addr, align 4
  store i8* %from, i8** %from.addr, align 4
  store i32 %count, i32* %count.addr, align 4
  %0 = load i32, i32* %count.addr, align 4, !dbg !16
  %add = add nsw i32 %0, 7, !dbg !17
  %div = sdiv i32 %add, 8, !dbg !18
  store i32 %div, i32* %n, align 4, !dbg !19
  %1 = load i32, i32* %count.addr, align 4, !dbg !20
  %rem = srem i32 %1, 8, !dbg !21
  switch i32 %rem, label %sw.epilog [
    i32 0, label %sw.bb
    i32 7, label %sw.bb2
    i32 6, label %sw.bb5
    i32 5, label %sw.bb8
    i32 4, label %sw.bb11
    i32 3, label %sw.bb14
    i32 2, label %sw.bb17
    i32 1, label %sw.bb20
  ], !dbg !22

sw.bb:                                            ; preds = %entry
  br label %do.body, !dbg !23

do.body:                                          ; preds = %do.cond, %sw.bb
  %2 = load i8*, i8** %from.addr, align 4, !dbg !24
  %incdec.ptr = getelementptr inbounds i8, i8* %2, i32 1, !dbg !24
  store i8* %incdec.ptr, i8** %from.addr, align 4, !dbg !24
  %3 = load i8, i8* %2, align 1, !dbg !25
  %4 = load i8*, i8** %to.addr, align 4, !dbg !26
  %incdec.ptr1 = getelementptr inbounds i8, i8* %4, i32 1, !dbg !26
  store i8* %incdec.ptr1, i8** %to.addr, align 4, !dbg !26
  store i8 %3, i8* %4, align 1, !dbg !27
  br label %sw.bb2, !dbg !28

sw.bb2:                                           ; preds = %entry, %do.body
  %5 = load i8*, i8** %from.addr, align 4, !dbg !29
  %incdec.ptr3 = getelementptr inbounds i8, i8* %5, i32 1, !dbg !29
  store i8* %incdec.ptr3, i8** %from.addr, align 4, !dbg !29
  %6 = load i8, i8* %5, align 1, !dbg !30
  %7 = load i8*, i8** %to.addr, align 4, !dbg !31
  %incdec.ptr4 = getelementptr inbounds i8, i8* %7, i32 1, !dbg !31
  store i8* %incdec.ptr4, i8** %to.addr, align 4, !dbg !31
  store i8 %6, i8* %7, align 1, !dbg !32
  br label %sw.bb5, !dbg !33

sw.bb5:                                           ; preds = %entry, %sw.bb2
  %8 = load i8*, i8** %from.addr, align 4, !dbg !34
  %incdec.ptr6 = getelementptr inbounds i8, i8* %8, i32 1, !dbg !34
  store i8* %incdec.ptr6, i8** %from.addr, align 4, !dbg !34
  %9 = load i8, i8* %8, align 1, !dbg !35
  %10 = load i8*, i8** %to.addr, align 4, !dbg !36
  %incdec.ptr7 = getelementptr inbounds i8, i8* %10, i32 1, !dbg !36
  store i8* %incdec.ptr7, i8** %to.addr, align 4, !dbg !36
  store i8 %9, i8* %10, align 1, !dbg !37
  br label %sw.bb8, !dbg !38

sw.bb8:                                           ; preds = %entry, %sw.bb5
  %11 = load i8*, i8** %from.addr, align 4, !dbg !39
  %incdec.ptr9 = getelementptr inbounds i8, i8* %11, i32 1, !dbg !39
  store i8* %incdec.ptr9, i8** %from.addr, align 4, !dbg !39
  %12 = load i8, i8* %11, align 1, !dbg !40
  %13 = load i8*, i8** %to.addr, align 4, !dbg !41
  %incdec.ptr10 = getelementptr inbounds i8, i8* %13, i32 1, !dbg !41
  store i8* %incdec.ptr10, i8** %to.addr, align 4, !dbg !41
  store i8 %12, i8* %13, align 1, !dbg !42
  br label %sw.bb11, !dbg !43

sw.bb11:                                          ; preds = %entry, %sw.bb8
  %14 = load i8*, i8** %from.addr, align 4, !dbg !44
  %incdec.ptr12 = getelementptr inbounds i8, i8* %14, i32 1, !dbg !44
  store i8* %incdec.ptr12, i8** %from.addr, align 4, !dbg !44
  %15 = load i8, i8* %14, align 1, !dbg !45
  %16 = load i8*, i8** %to.addr, align 4, !dbg !46
  %incdec.ptr13 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !46
  store i8* %incdec.ptr13, i8** %to.addr, align 4, !dbg !46
  store i8 %15, i8* %16, align 1, !dbg !47
  br label %sw.bb14, !dbg !48

sw.bb14:                                          ; preds = %entry, %sw.bb11
  %17 = load i8*, i8** %from.addr, align 4, !dbg !49
  %incdec.ptr15 = getelementptr inbounds i8, i8* %17, i32 1, !dbg !49
  store i8* %incdec.ptr15, i8** %from.addr, align 4, !dbg !49
  %18 = load i8, i8* %17, align 1, !dbg !50
  %19 = load i8*, i8** %to.addr, align 4, !dbg !51
  %incdec.ptr16 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !51
  store i8* %incdec.ptr16, i8** %to.addr, align 4, !dbg !51
  store i8 %18, i8* %19, align 1, !dbg !52
  br label %sw.bb17, !dbg !53

sw.bb17:                                          ; preds = %entry, %sw.bb14
  %20 = load i8*, i8** %from.addr, align 4, !dbg !54
  %incdec.ptr18 = getelementptr inbounds i8, i8* %20, i32 1, !dbg !54
  store i8* %incdec.ptr18, i8** %from.addr, align 4, !dbg !54
  %21 = load i8, i8* %20, align 1, !dbg !55
  %22 = load i8*, i8** %to.addr, align 4, !dbg !56
  %incdec.ptr19 = getelementptr inbounds i8, i8* %22, i32 1, !dbg !56
  store i8* %incdec.ptr19, i8** %to.addr, align 4, !dbg !56
  store i8 %21, i8* %22, align 1, !dbg !57
  br label %sw.bb20, !dbg !58

sw.bb20:                                          ; preds = %entry, %sw.bb17
  %23 = load i8*, i8** %from.addr, align 4, !dbg !59
  %incdec.ptr21 = getelementptr inbounds i8, i8* %23, i32 1, !dbg !59
  store i8* %incdec.ptr21, i8** %from.addr, align 4, !dbg !59
  %24 = load i8, i8* %23, align 1, !dbg !60
  %25 = load i8*, i8** %to.addr, align 4, !dbg !61
  %incdec.ptr22 = getelementptr inbounds i8, i8* %25, i32 1, !dbg !61
  store i8* %incdec.ptr22, i8** %to.addr, align 4, !dbg !61
  store i8 %24, i8* %25, align 1, !dbg !62
  br label %do.cond, !dbg !63

do.cond:                                          ; preds = %sw.bb20
  %26 = load i32, i32* %n, align 4, !dbg !64
  %dec = add nsw i32 %26, -1, !dbg !64
  store i32 %dec, i32* %n, align 4, !dbg !64
  %cmp = icmp sgt i32 %dec, 0, !dbg !65
  br i1 %cmp, label %do.body, label %do.end, !dbg !63, !llvm.loop !66

do.end:                                           ; preds = %do.cond
  br label %sw.epilog, !dbg !69

sw.epilog:                                        ; preds = %do.end, %entry
  ret void, !dbg !70
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @duff_initialize(i8* noundef %arr, i32 noundef %length) #0 !dbg !71 {
entry:
  %arr.addr = alloca i8*, align 4
  %length.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i8* %arr, i8** %arr.addr, align 4
  store i32 %length, i32* %length.addr, align 4
  store i32 0, i32* %i, align 4, !dbg !72
  br label %for.cond, !dbg !73

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !74
  %1 = load i32, i32* %length.addr, align 4, !dbg !75
  %cmp = icmp slt i32 %0, %1, !dbg !76
  br i1 %cmp, label %for.body, label %for.end, !dbg !77

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %length.addr, align 4, !dbg !78
  %3 = load i32, i32* %i, align 4, !dbg !79
  %sub = sub nsw i32 %2, %3, !dbg !80
  %conv = trunc i32 %sub to i8, !dbg !78
  %4 = load i8*, i8** %arr.addr, align 4, !dbg !81
  %5 = load i32, i32* %i, align 4, !dbg !82
  %arrayidx = getelementptr inbounds i8, i8* %4, i32 %5, !dbg !81
  store i8 %conv, i8* %arrayidx, align 1, !dbg !83
  br label %for.inc, !dbg !84

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !85
  %inc = add nsw i32 %6, 1, !dbg !85
  store i32 %inc, i32* %i, align 4, !dbg !85
  br label %for.cond, !dbg !77, !llvm.loop !86

for.end:                                          ; preds = %for.cond
  ret void, !dbg !87
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @duff() #0 !dbg !88 {
entry:
  call arm_aapcs_vfpcc void @duff_initialize(i8* noundef getelementptr inbounds ([100 x i8], [100 x i8]* @source, i32 0, i32 0), i32 noundef 100) #1, !dbg !89
  call arm_aapcs_vfpcc void @duffcopy(i8* noundef getelementptr inbounds ([100 x i8], [100 x i8]* @source, i32 0, i32 0), i8* noundef getelementptr inbounds ([100 x i8], [100 x i8]* @target, i32 0, i32 0), i32 noundef 43) #1, !dbg !90
  ret void, !dbg !91
}

attributes #0 = { noinline nounwind "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #1 = { nobuiltin "no-builtins" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 14.0.6 (git@github.com:RTS-SYSU/LLVM-TA.git b7f9c4ccdebc6c37532ddd772889e5f0ff989c79)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/workspaces/llvmta/testcases/wcet_bench/duff.c", directory: "/workspaces/llvmta/testcases/util_scripts", checksumkind: CSK_MD5, checksum: "110f58e90b9a5b356aaca9765ef91016")
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
!12 = distinct !DISubprogram(name: "duffcopy", scope: !13, file: !13, line: 37, type: !14, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!13 = !DIFile(filename: "wcet_bench/duff.c", directory: "/workspaces/llvmta/testcases", checksumkind: CSK_MD5, checksum: "110f58e90b9a5b356aaca9765ef91016")
!14 = !DISubroutineType(types: !15)
!15 = !{}
!16 = !DILocation(line: 41, column: 12, scope: !12)
!17 = !DILocation(line: 41, column: 18, scope: !12)
!18 = !DILocation(line: 41, column: 23, scope: !12)
!19 = !DILocation(line: 41, column: 7, scope: !12)
!20 = !DILocation(line: 43, column: 11, scope: !12)
!21 = !DILocation(line: 43, column: 17, scope: !12)
!22 = !DILocation(line: 43, column: 3, scope: !12)
!23 = !DILocation(line: 46, column: 5, scope: !12)
!24 = !DILocation(line: 47, column: 20, scope: !12)
!25 = !DILocation(line: 47, column: 15, scope: !12)
!26 = !DILocation(line: 47, column: 10, scope: !12)
!27 = !DILocation(line: 47, column: 13, scope: !12)
!28 = !DILocation(line: 47, column: 7, scope: !12)
!29 = !DILocation(line: 50, column: 20, scope: !12)
!30 = !DILocation(line: 50, column: 15, scope: !12)
!31 = !DILocation(line: 50, column: 10, scope: !12)
!32 = !DILocation(line: 50, column: 13, scope: !12)
!33 = !DILocation(line: 50, column: 7, scope: !12)
!34 = !DILocation(line: 53, column: 20, scope: !12)
!35 = !DILocation(line: 53, column: 15, scope: !12)
!36 = !DILocation(line: 53, column: 10, scope: !12)
!37 = !DILocation(line: 53, column: 13, scope: !12)
!38 = !DILocation(line: 53, column: 7, scope: !12)
!39 = !DILocation(line: 56, column: 20, scope: !12)
!40 = !DILocation(line: 56, column: 15, scope: !12)
!41 = !DILocation(line: 56, column: 10, scope: !12)
!42 = !DILocation(line: 56, column: 13, scope: !12)
!43 = !DILocation(line: 56, column: 7, scope: !12)
!44 = !DILocation(line: 59, column: 20, scope: !12)
!45 = !DILocation(line: 59, column: 15, scope: !12)
!46 = !DILocation(line: 59, column: 10, scope: !12)
!47 = !DILocation(line: 59, column: 13, scope: !12)
!48 = !DILocation(line: 59, column: 7, scope: !12)
!49 = !DILocation(line: 62, column: 20, scope: !12)
!50 = !DILocation(line: 62, column: 15, scope: !12)
!51 = !DILocation(line: 62, column: 10, scope: !12)
!52 = !DILocation(line: 62, column: 13, scope: !12)
!53 = !DILocation(line: 62, column: 7, scope: !12)
!54 = !DILocation(line: 65, column: 20, scope: !12)
!55 = !DILocation(line: 65, column: 15, scope: !12)
!56 = !DILocation(line: 65, column: 10, scope: !12)
!57 = !DILocation(line: 65, column: 13, scope: !12)
!58 = !DILocation(line: 65, column: 7, scope: !12)
!59 = !DILocation(line: 68, column: 20, scope: !12)
!60 = !DILocation(line: 68, column: 15, scope: !12)
!61 = !DILocation(line: 68, column: 10, scope: !12)
!62 = !DILocation(line: 68, column: 13, scope: !12)
!63 = !DILocation(line: 70, column: 5, scope: !12)
!64 = !DILocation(line: 70, column: 14, scope: !12)
!65 = !DILocation(line: 70, column: 18, scope: !12)
!66 = distinct !{!66, !23, !67, !68}
!67 = !DILocation(line: 70, column: 21, scope: !12)
!68 = !{!"llvm.loop.mustprogress"}
!69 = !DILocation(line: 71, column: 3, scope: !12)
!70 = !DILocation(line: 72, column: 1, scope: !12)
!71 = distinct !DISubprogram(name: "duff_initialize", scope: !13, file: !13, line: 74, type: !14, scopeLine: 76, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!72 = !DILocation(line: 80, column: 10, scope: !71)
!73 = !DILocation(line: 80, column: 8, scope: !71)
!74 = !DILocation(line: 80, column: 15, scope: !71)
!75 = !DILocation(line: 80, column: 19, scope: !71)
!76 = !DILocation(line: 80, column: 17, scope: !71)
!77 = !DILocation(line: 80, column: 3, scope: !71)
!78 = !DILocation(line: 84, column: 14, scope: !71)
!79 = !DILocation(line: 84, column: 23, scope: !71)
!80 = !DILocation(line: 84, column: 21, scope: !71)
!81 = !DILocation(line: 84, column: 5, scope: !71)
!82 = !DILocation(line: 84, column: 9, scope: !71)
!83 = !DILocation(line: 84, column: 12, scope: !71)
!84 = !DILocation(line: 85, column: 3, scope: !71)
!85 = !DILocation(line: 80, column: 28, scope: !71)
!86 = distinct !{!86, !77, !84, !68}
!87 = !DILocation(line: 86, column: 1, scope: !71)
!88 = distinct !DISubprogram(name: "duff", scope: !13, file: !13, line: 92, type: !14, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!89 = !DILocation(line: 96, column: 3, scope: !88)
!90 = !DILocation(line: 98, column: 3, scope: !88)
!91 = !DILocation(line: 99, column: 1, scope: !88)
