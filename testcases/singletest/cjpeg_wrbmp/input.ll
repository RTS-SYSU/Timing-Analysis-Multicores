; ModuleID = '/workspaces/llvmta/testcases/singletest/cjpeg_wrbmp/input.c'
source_filename = "/workspaces/llvmta/testcases/singletest/cjpeg_wrbmp/input.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv4t-unknown-unknown"

@__const.cjpeg_wrbmp_initInput.tmp = private unnamed_addr constant [3 x [256 x i8]] [[256 x i8] c",i\99G\97\A0\BCZ\D1\83\DDr]|\D0\CF\DA6\91q\99\EF\E2S\F3\97bCr\99S\BAtH\BC\BEm\A2\DA\85\D0\D1s\FB\87Y\8F\E2\E6\F6\98\F3\98s\B4N\F6\A4\FAuL\96\98\BC\FB\C3\7Fo\E1\D0^]\8F\83\C9\D3c]\BE\9Dy\F0u\B9\A7\89\98\BC\FA;\F8\F5s\F0\C0\D1\8F\88b\E0\A7\87\84\BDH\F9\CD,j`\93\F7\F9\E4\E0\F9\BEp\87\A8_\CD\AB:pO\CEK\F2\BC\BD\E1\B9Q\DD\99\F4\C6\AB\A3\9F\D1\F0\8A\94\CF\A6\C0\BC\97b\BE\D1\9A\E1H`\F9\BF\DF\CF\A3\CF\85\FB\B7\87\89\9F\F7\A7S{\C7\CB\90\8E\EDM\80u\A9\CA\88\80\BC\A87\DE\A9t<K\AFf\D9\A8\B9\BD\E1}\C0po\A8\EF\E1\A8a\81\BE\AF\A9\E1\AA\E2\E1\E2\E0\86j\FA\DE\94\F1\A8\A6\A0_\BEf\B4\C1o\97\A5\AB\C84\86\A9\DF\A6\E1\A9o\B9m8\F4\9D\FA\E2\E7w\BC", [256 x i8] c"*\8F.[T\C9\8C[R\8C\1FX,\AB9s\CE;\91ut5\E8uP<B@u\AEY\B2\93?S;g\8B\D3@Dbv5wZ\A1\E8\ABb\B0\ECv\9D\B4MrX\1Cw(aE\BD\FC\E1w`\DBTRi\9E1\C8=uN?\93\8CElZ\A1i\BErTLF+\9C\DE`H\8FZi8\90N\81#Bed1i\82\A0\EF\81\8DS+Dj\84S\\\82\AF?\83O\C0i9\A0v\A2\8DN\C0\80\CE\C9\CB\A2\9F\A3\DD\B7\9D\B1\BD\C0\81\826h-e\FC4[\B11\DDto\8F\\\8E\9F\83\AD=\9F\ADQ\81\D6\D5\91\8F\E8C\91\82c\EDn\A0\83C2\81\83\7FL\\\CB`\CE\B0\B4Uc\A2v@N\BE\BF-e\81:H\D31ssU=dtk\8Fu\DB\9A\E1\AE\A0\A3w\BEj\BA1-\B1\93U\8A*\AE;DxG\818\95aDX\94<\EF\B3\95h", [256 x i8] c",L%8L\98z\99M\BF)L'a.m\AC+t[f1\C9DX-5_\A0\AFf\A4t2L-V\BD\D82=]\C4[d:t\DF\A6f~\DD\9EV\EB7qx4s*V7\A5\F7\C2\A0l\AAlbM\A8*\B3F`>G\D8dG\9By\92V\86ir1d2w\DA_Q\DCNf2}D\AA$>w\81,\97H\8F\F1\83\89OI7z\CCIJ\83\DD5YH\B2<@\91\9D\9C\B1e\B4p\C2\CE\B2\A8\DD\99\C9w\DE\A5\BC\D4u\B4-\86*\82\E5/k\AC(\DD\92\84\8An\90\BCp\84@\A2\91\8C\C8\B5\D7\8B\C5\B7j~tY\CC\98{\A14.\83\A7\AD>F\97\97\C5\B1\B8`ae\826?\8D\B9-~`.G\AC&rdjEv\8A\7Fc\7F\C6\CC\F2\F8\C5\F1J\BD\B2\FCA-\94\91a\A8-o+@\A4Pq/\88S*[\C5_\DE\A7\\b"], align 1
@cjpeg_wrbmp_colormap = dso_local global [3 x [256 x i8]] zeroinitializer, align 1, !dbg !0

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @cjpeg_wrbmp_initInput() #0 !dbg !21 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %tmp = alloca [3 x [256 x i8]], align 1
  call void @llvm.dbg.declare(metadata i32* %i, metadata !25, metadata !DIExpression()), !dbg !27
  call void @llvm.dbg.declare(metadata i32* %j, metadata !28, metadata !DIExpression()), !dbg !29
  call void @llvm.dbg.declare(metadata [3 x [256 x i8]]* %tmp, metadata !30, metadata !DIExpression()), !dbg !33
  %0 = bitcast [3 x [256 x i8]]* %tmp to i8*, !dbg !33
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 1 %0, i8* align 1 getelementptr inbounds ([3 x [256 x i8]], [3 x [256 x i8]]* @__const.cjpeg_wrbmp_initInput.tmp, i32 0, i32 0, i32 0), i32 768, i1 true), !dbg !33
  store i32 0, i32* %i, align 4, !dbg !34
  br label %for.cond, !dbg !36

for.cond:                                         ; preds = %for.inc7, %entry
  %1 = load i32, i32* %i, align 4, !dbg !37
  %cmp = icmp slt i32 %1, 3, !dbg !39
  br i1 %cmp, label %for.body, label %for.end9, !dbg !40

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4, !dbg !41
  br label %for.cond1, !dbg !44

for.cond1:                                        ; preds = %for.inc, %for.body
  %2 = load i32, i32* %j, align 4, !dbg !45
  %cmp2 = icmp slt i32 %2, 256, !dbg !47
  br i1 %cmp2, label %for.body3, label %for.end, !dbg !48

for.body3:                                        ; preds = %for.cond1
  %3 = load i32, i32* %i, align 4, !dbg !49
  %arrayidx = getelementptr inbounds [3 x [256 x i8]], [3 x [256 x i8]]* %tmp, i32 0, i32 %3, !dbg !50
  %4 = load i32, i32* %j, align 4, !dbg !51
  %arrayidx4 = getelementptr inbounds [256 x i8], [256 x i8]* %arrayidx, i32 0, i32 %4, !dbg !50
  %5 = load volatile i8, i8* %arrayidx4, align 1, !dbg !50
  %6 = load i32, i32* %i, align 4, !dbg !52
  %arrayidx5 = getelementptr inbounds [3 x [256 x i8]], [3 x [256 x i8]]* @cjpeg_wrbmp_colormap, i32 0, i32 %6, !dbg !53
  %7 = load i32, i32* %j, align 4, !dbg !54
  %arrayidx6 = getelementptr inbounds [256 x i8], [256 x i8]* %arrayidx5, i32 0, i32 %7, !dbg !53
  store i8 %5, i8* %arrayidx6, align 1, !dbg !55
  br label %for.inc, !dbg !53

for.inc:                                          ; preds = %for.body3
  %8 = load i32, i32* %j, align 4, !dbg !56
  %inc = add nsw i32 %8, 1, !dbg !56
  store i32 %inc, i32* %j, align 4, !dbg !56
  br label %for.cond1, !dbg !57, !llvm.loop !58

for.end:                                          ; preds = %for.cond1
  br label %for.inc7, !dbg !61

for.inc7:                                         ; preds = %for.end
  %9 = load i32, i32* %i, align 4, !dbg !62
  %inc8 = add nsw i32 %9, 1, !dbg !62
  store i32 %inc8, i32* %i, align 4, !dbg !62
  br label %for.cond, !dbg !63, !llvm.loop !64

for.end9:                                         ; preds = %for.cond
  ret void, !dbg !66
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i32, i1 immarg) #2

attributes #0 = { noinline nounwind "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!11, !12, !13, !14, !15, !16, !17, !18, !19}
!llvm.ident = !{!20}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "cjpeg_wrbmp_colormap", scope: !2, file: !5, line: 20, type: !6, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 14.0.6 (git@github.com:RTS-SYSU/LLVM-TA.git b7f9c4ccdebc6c37532ddd772889e5f0ff989c79)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !4, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/workspaces/llvmta/testcases/singletest/cjpeg_wrbmp/input.c", directory: "/workspaces/llvmta/testcases/singletest/bsort")
!4 = !{!0}
!5 = !DIFile(filename: "cjpeg_wrbmp/input.c", directory: "/workspaces/llvmta/testcases/singletest")
!6 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 6144, elements: !8)
!7 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!8 = !{!9, !10}
!9 = !DISubrange(count: 3)
!10 = !DISubrange(count: 256)
!11 = !{i32 7, !"Dwarf Version", i32 4}
!12 = !{i32 2, !"Debug Info Version", i32 3}
!13 = !{i32 1, !"wchar_size", i32 4}
!14 = !{i32 1, !"min_enum_size", i32 4}
!15 = !{i32 1, !"branch-target-enforcement", i32 0}
!16 = !{i32 1, !"sign-return-address", i32 0}
!17 = !{i32 1, !"sign-return-address-all", i32 0}
!18 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!19 = !{i32 7, !"frame-pointer", i32 2}
!20 = !{!"clang version 14.0.6 (git@github.com:RTS-SYSU/LLVM-TA.git b7f9c4ccdebc6c37532ddd772889e5f0ff989c79)"}
!21 = distinct !DISubprogram(name: "cjpeg_wrbmp_initInput", scope: !5, file: !5, line: 22, type: !22, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !24)
!22 = !DISubroutineType(types: !23)
!23 = !{null}
!24 = !{}
!25 = !DILocalVariable(name: "i", scope: !21, file: !5, line: 24, type: !26)
!26 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!27 = !DILocation(line: 24, column: 7, scope: !21)
!28 = !DILocalVariable(name: "j", scope: !21, file: !5, line: 24, type: !26)
!29 = !DILocation(line: 24, column: 10, scope: !21)
!30 = !DILocalVariable(name: "tmp", scope: !21, file: !5, line: 25, type: !31)
!31 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 6144, elements: !8)
!32 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !7)
!33 = !DILocation(line: 25, column: 26, scope: !21)
!34 = !DILocation(line: 81, column: 11, scope: !35)
!35 = distinct !DILexicalBlock(scope: !21, file: !5, line: 81, column: 3)
!36 = !DILocation(line: 81, column: 9, scope: !35)
!37 = !DILocation(line: 81, column: 16, scope: !38)
!38 = distinct !DILexicalBlock(scope: !35, file: !5, line: 81, column: 3)
!39 = !DILocation(line: 81, column: 18, scope: !38)
!40 = !DILocation(line: 81, column: 3, scope: !35)
!41 = !DILocation(line: 83, column: 13, scope: !42)
!42 = distinct !DILexicalBlock(scope: !43, file: !5, line: 83, column: 5)
!43 = distinct !DILexicalBlock(scope: !38, file: !5, line: 81, column: 29)
!44 = !DILocation(line: 83, column: 11, scope: !42)
!45 = !DILocation(line: 83, column: 18, scope: !46)
!46 = distinct !DILexicalBlock(scope: !42, file: !5, line: 83, column: 5)
!47 = !DILocation(line: 83, column: 20, scope: !46)
!48 = !DILocation(line: 83, column: 5, scope: !42)
!49 = !DILocation(line: 84, column: 45, scope: !46)
!50 = !DILocation(line: 84, column: 40, scope: !46)
!51 = !DILocation(line: 84, column: 50, scope: !46)
!52 = !DILocation(line: 84, column: 29, scope: !46)
!53 = !DILocation(line: 84, column: 7, scope: !46)
!54 = !DILocation(line: 84, column: 34, scope: !46)
!55 = !DILocation(line: 84, column: 38, scope: !46)
!56 = !DILocation(line: 83, column: 28, scope: !46)
!57 = !DILocation(line: 83, column: 5, scope: !46)
!58 = distinct !{!58, !48, !59, !60}
!59 = !DILocation(line: 84, column: 52, scope: !42)
!60 = !{!"llvm.loop.mustprogress"}
!61 = !DILocation(line: 85, column: 3, scope: !43)
!62 = !DILocation(line: 81, column: 24, scope: !38)
!63 = !DILocation(line: 81, column: 3, scope: !38)
!64 = distinct !{!64, !40, !65, !60}
!65 = !DILocation(line: 85, column: 3, scope: !35)
!66 = !DILocation(line: 86, column: 1, scope: !21)
