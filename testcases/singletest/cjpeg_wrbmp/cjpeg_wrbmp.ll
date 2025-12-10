; ModuleID = 'unoptimized.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv4t-unknown-unknown"

%struct.cjpeg_wrbmp_jpeg_decompress_struct = type { %struct.cjpeg_wrbmp_jpeg_error_mgr*, %struct.cjpeg_wrbmp_jpeg_memory_mgr*, %struct.cjpeg_wrbmp_jpeg_progress_mgr*, i8*, i32, i32, %struct.cjpeg_wrbmp_jpeg_source_mgr*, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8**, i32, i32, i32, i32, i32, [64 x i32]*, [4 x %struct.CJPEG_WRBMP_JQUANT_TBL*], [4 x %struct.CJPEG_WRBMP_JHUFF_TBL*], [4 x %struct.CJPEG_WRBMP_JHUFF_TBL*], i32, %struct.cjpeg_wrbmp_jpeg_component_info*, i32, i32, [16 x i8], [16 x i8], [16 x i8], i32, i32, i8, i8, i8, i16, i16, i32, i8, i32, %struct.cjpeg_wrbmp_jpeg_marker_struct*, i32, i32, i32, i32, i8*, i32, [4 x %struct.cjpeg_wrbmp_jpeg_component_info*], i32, i32, i32, [10 x i32], i32, i32, i32, i32, i32, %struct.jpeg_decomp_master*, %struct.jpeg_d_main_controller*, %struct.jpeg_d_coef_controller*, %struct.jpeg_d_post_controller*, %struct.jpeg_input_controller*, %struct.jpeg_marker_reader*, %struct.jpeg_entropy_decoder*, %struct.jpeg_inverse_dct*, %struct.jpeg_upsampler*, %struct.jpeg_color_deconverter*, %struct.jpeg_color_quantizer* }
%struct.cjpeg_wrbmp_jpeg_error_mgr = type { {}*, void (%struct.cjpeg_wrbmp_jpeg_common_struct*, i32)*, {}*, void (%struct.cjpeg_wrbmp_jpeg_common_struct*, i8*)*, {}*, i32, i32, i32, i8**, i32, i8**, i32, i32 }
%struct.cjpeg_wrbmp_jpeg_common_struct = type { %struct.cjpeg_wrbmp_jpeg_error_mgr*, %struct.cjpeg_wrbmp_jpeg_memory_mgr*, %struct.cjpeg_wrbmp_jpeg_progress_mgr*, i8*, i32, i32 }
%struct.cjpeg_wrbmp_jpeg_memory_mgr = type { i8* (%struct.cjpeg_wrbmp_jpeg_common_struct*, i32, i32)*, i8* (%struct.cjpeg_wrbmp_jpeg_common_struct*, i32, i32)*, i8** (%struct.cjpeg_wrbmp_jpeg_common_struct*, i32, i32, i32)*, [64 x i16]** (%struct.cjpeg_wrbmp_jpeg_common_struct*, i32, i32, i32)*, %struct.jvirt_sarray_control* (%struct.cjpeg_wrbmp_jpeg_common_struct*, i32, i32, i32, i32, i32)*, %struct.jvirt_barray_control* (%struct.cjpeg_wrbmp_jpeg_common_struct*, i32, i32, i32, i32, i32)*, {}*, i8** (%struct.cjpeg_wrbmp_jpeg_common_struct*, %struct.jvirt_sarray_control*, i32, i32, i32)*, [64 x i16]** (%struct.cjpeg_wrbmp_jpeg_common_struct*, %struct.jvirt_barray_control*, i32, i32, i32)*, void (%struct.cjpeg_wrbmp_jpeg_common_struct*, i32)*, {}*, i32, i32 }
%struct.jvirt_sarray_control = type opaque
%struct.jvirt_barray_control = type opaque
%struct.cjpeg_wrbmp_jpeg_progress_mgr = type { void (%struct.cjpeg_wrbmp_jpeg_common_struct*)*, i32, i32, i32, i32 }
%struct.cjpeg_wrbmp_jpeg_source_mgr = type { i8*, i32, void (%struct.cjpeg_wrbmp_jpeg_decompress_struct*)*, i32 (%struct.cjpeg_wrbmp_jpeg_decompress_struct*)*, void (%struct.cjpeg_wrbmp_jpeg_decompress_struct*, i32)*, i32 (%struct.cjpeg_wrbmp_jpeg_decompress_struct*, i32)*, void (%struct.cjpeg_wrbmp_jpeg_decompress_struct*)* }
%struct.CJPEG_WRBMP_JQUANT_TBL = type { [64 x i16], i32 }
%struct.CJPEG_WRBMP_JHUFF_TBL = type { [17 x i8], [256 x i8], i32 }
%struct.cjpeg_wrbmp_jpeg_component_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.CJPEG_WRBMP_JQUANT_TBL*, i8* }
%struct.cjpeg_wrbmp_jpeg_marker_struct = type { %struct.cjpeg_wrbmp_jpeg_marker_struct*, i8, i32, i32, i8* }
%struct.jpeg_decomp_master = type opaque
%struct.jpeg_d_main_controller = type opaque
%struct.jpeg_d_coef_controller = type opaque
%struct.jpeg_d_post_controller = type opaque
%struct.jpeg_input_controller = type opaque
%struct.jpeg_marker_reader = type opaque
%struct.jpeg_entropy_decoder = type opaque
%struct.jpeg_inverse_dct = type opaque
%struct.jpeg_upsampler = type opaque
%struct.jpeg_color_deconverter = type opaque
%struct.jpeg_color_quantizer = type opaque
%struct.cjpeg_wrbmp_djpeg_dest_struct = type { void (%struct.cjpeg_wrbmp_jpeg_decompress_struct*, %struct.cjpeg_wrbmp_djpeg_dest_struct*)*, void (%struct.cjpeg_wrbmp_jpeg_decompress_struct*, %struct.cjpeg_wrbmp_djpeg_dest_struct*, i32)*, void (%struct.cjpeg_wrbmp_jpeg_decompress_struct*, %struct.cjpeg_wrbmp_djpeg_dest_struct*)*, i32*, i8**, i32 }
%struct.cjpeg_wrbmp_bmp_dest_struct = type { %struct.cjpeg_wrbmp_djpeg_dest_struct, i32, %struct.jvirt_sarray_control*, i32, i32, i32, i32 }
%struct.cjpeg_wrbmp_cdjpeg_progress_mgr = type { %struct.cjpeg_wrbmp_jpeg_progress_mgr, i32, i32, i32 }
%union.dwords = type { i64 }
%struct.anon = type { i32, i32 }

@cjpeg_wrbmp_jpeg_dec_1 = dso_local global %struct.cjpeg_wrbmp_jpeg_decompress_struct zeroinitializer, align 4, !dbg !0
@cjpeg_wrbmp_jpeg_dec_2 = dso_local global %struct.cjpeg_wrbmp_jpeg_decompress_struct zeroinitializer, align 4, !dbg !162
@cjpeg_wrbmp_output_array = dso_local global [6144 x i8] zeroinitializer, align 1, !dbg !151
@cjpeg_wrbmp_jpeg_stream = dso_local global i8* null, align 4, !dbg !157
@cjpeg_wrbmp_checksum = dso_local global i32 0, align 4, !dbg !160
@cjpeg_wrbmp_djpeg_dest = dso_local global %struct.cjpeg_wrbmp_djpeg_dest_struct zeroinitializer, align 4, !dbg !378
@cjpeg_wrbmp_bmp_dest = dso_local global %struct.cjpeg_wrbmp_bmp_dest_struct zeroinitializer, align 4, !dbg !398
@__const.cjpeg_wrbmp_initInput.tmp = private unnamed_addr constant [3 x [256 x i8]] [[256 x i8] c",i\99G\97\A0\BCZ\D1\83\DDr]|\D0\CF\DA6\91q\99\EF\E2S\F3\97bCr\99S\BAtH\BC\BEm\A2\DA\85\D0\D1s\FB\87Y\8F\E2\E6\F6\98\F3\98s\B4N\F6\A4\FAuL\96\98\BC\FB\C3\7Fo\E1\D0^]\8F\83\C9\D3c]\BE\9Dy\F0u\B9\A7\89\98\BC\FA;\F8\F5s\F0\C0\D1\8F\88b\E0\A7\87\84\BDH\F9\CD,j`\93\F7\F9\E4\E0\F9\BEp\87\A8_\CD\AB:pO\CEK\F2\BC\BD\E1\B9Q\DD\99\F4\C6\AB\A3\9F\D1\F0\8A\94\CF\A6\C0\BC\97b\BE\D1\9A\E1H`\F9\BF\DF\CF\A3\CF\85\FB\B7\87\89\9F\F7\A7S{\C7\CB\90\8E\EDM\80u\A9\CA\88\80\BC\A87\DE\A9t<K\AFf\D9\A8\B9\BD\E1}\C0po\A8\EF\E1\A8a\81\BE\AF\A9\E1\AA\E2\E1\E2\E0\86j\FA\DE\94\F1\A8\A6\A0_\BEf\B4\C1o\97\A5\AB\C84\86\A9\DF\A6\E1\A9o\B9m8\F4\9D\FA\E2\E7w\BC", [256 x i8] c"*\8F.[T\C9\8C[R\8C\1FX,\AB9s\CE;\91ut5\E8uP<B@u\AEY\B2\93?S;g\8B\D3@Dbv5wZ\A1\E8\ABb\B0\ECv\9D\B4MrX\1Cw(aE\BD\FC\E1w`\DBTRi\9E1\C8=uN?\93\8CElZ\A1i\BErTLF+\9C\DE`H\8FZi8\90N\81#Bed1i\82\A0\EF\81\8DS+Dj\84S\\\82\AF?\83O\C0i9\A0v\A2\8DN\C0\80\CE\C9\CB\A2\9F\A3\DD\B7\9D\B1\BD\C0\81\826h-e\FC4[\B11\DDto\8F\\\8E\9F\83\AD=\9F\ADQ\81\D6\D5\91\8F\E8C\91\82c\EDn\A0\83C2\81\83\7FL\\\CB`\CE\B0\B4Uc\A2v@N\BE\BF-e\81:H\D31ssU=dtk\8Fu\DB\9A\E1\AE\A0\A3w\BEj\BA1-\B1\93U\8A*\AE;DxG\818\95aDX\94<\EF\B3\95h", [256 x i8] c",L%8L\98z\99M\BF)L'a.m\AC+t[f1\C9DX-5_\A0\AFf\A4t2L-V\BD\D82=]\C4[d:t\DF\A6f~\DD\9EV\EB7qx4s*V7\A5\F7\C2\A0l\AAlbM\A8*\B3F`>G\D8dG\9By\92V\86ir1d2w\DA_Q\DCNf2}D\AA$>w\81,\97H\8F\F1\83\89OI7z\CCIJ\83\DD5YH\B2<@\91\9D\9C\B1e\B4p\C2\CE\B2\A8\DD\99\C9w\DE\A5\BC\D4u\B4-\86*\82\E5/k\AC(\DD\92\84\8An\90\BCp\84@\A2\91\8C\C8\B5\D7\8B\C5\B7j~tY\CC\98{\A14.\83\A7\AD>F\97\97\C5\B1\B8`ae\826?\8D\B9-~`.G\AC&rdjEv\8A\7Fc\7F\C6\CC\F2\F8\C5\F1J\BD\B2\FCA-\94\91a\A8-o+@\A4Pq/\88S*[\C5_\DE\A7\\b"], align 1
@cjpeg_wrbmp_colormap = dso_local global [3 x [256 x i8]] zeroinitializer, align 1, !dbg !410
@.str = private unnamed_addr constant [13 x i8] c"../absvdi2.c\00", align 1
@__func__.__absvdi2 = private unnamed_addr constant [10 x i8] c"__absvdi2\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"../absvsi2.c\00", align 1
@__func__.__absvsi2 = private unnamed_addr constant [10 x i8] c"__absvsi2\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"../addvdi3.c\00", align 1
@__func__.__addvdi3 = private unnamed_addr constant [10 x i8] c"__addvdi3\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"../addvsi3.c\00", align 1
@__func__.__addvsi3 = private unnamed_addr constant [10 x i8] c"__addvsi3\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"../mulvdi3.c\00", align 1
@__func__.__mulvdi3 = private unnamed_addr constant [10 x i8] c"__mulvdi3\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"../mulvsi3.c\00", align 1
@__func__.__mulvsi3 = private unnamed_addr constant [10 x i8] c"__mulvsi3\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"../subvdi3.c\00", align 1
@__func__.__subvdi3 = private unnamed_addr constant [10 x i8] c"__subvdi3\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"../subvsi3.c\00", align 1
@__func__.__subvsi3 = private unnamed_addr constant [10 x i8] c"__subvsi3\00", align 1

@__aeabi_llsl = dso_local alias void (...), bitcast (i64 (i64, i32)* @__ashldi3 to void (...)*)
@__aeabi_lasr = dso_local alias void (...), bitcast (i64 (i64, i32)* @__ashrdi3 to void (...)*)
@__aeabi_idiv = dso_local alias void (...), bitcast (i32 (i32, i32)* @__divsi3 to void (...)*)
@__aeabi_llsr = dso_local alias void (...), bitcast (i64 (i64, i32)* @__lshrdi3 to void (...)*)
@__aeabi_uidiv = dso_local alias void (...), bitcast (i32 (i32, i32)* @__udivsi3 to void (...)*)

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @cjpeg_wrbmp_init() #0 !dbg !542 {
entry:
  call arm_aapcs_vfpcc void @cjpeg_wrbmp_initInput() #5, !dbg !546
  store %struct.cjpeg_wrbmp_jpeg_progress_mgr* null, %struct.cjpeg_wrbmp_jpeg_progress_mgr** getelementptr inbounds (%struct.cjpeg_wrbmp_jpeg_decompress_struct, %struct.cjpeg_wrbmp_jpeg_decompress_struct* @cjpeg_wrbmp_jpeg_dec_1, i32 0, i32 2), align 4, !dbg !547
  store i32 30, i32* getelementptr inbounds (%struct.cjpeg_wrbmp_jpeg_decompress_struct, %struct.cjpeg_wrbmp_jpeg_decompress_struct* @cjpeg_wrbmp_jpeg_dec_1, i32 0, i32 28), align 4, !dbg !548
  store i32 256, i32* getelementptr inbounds (%struct.cjpeg_wrbmp_jpeg_decompress_struct, %struct.cjpeg_wrbmp_jpeg_decompress_struct* @cjpeg_wrbmp_jpeg_dec_1, i32 0, i32 32), align 4, !dbg !549
  store i32 2, i32* getelementptr inbounds (%struct.cjpeg_wrbmp_jpeg_decompress_struct, %struct.cjpeg_wrbmp_jpeg_decompress_struct* @cjpeg_wrbmp_jpeg_dec_1, i32 0, i32 29), align 4, !dbg !550
  store %struct.cjpeg_wrbmp_jpeg_progress_mgr* null, %struct.cjpeg_wrbmp_jpeg_progress_mgr** getelementptr inbounds (%struct.cjpeg_wrbmp_jpeg_decompress_struct, %struct.cjpeg_wrbmp_jpeg_decompress_struct* @cjpeg_wrbmp_jpeg_dec_2, i32 0, i32 2), align 4, !dbg !551
  store i32 30, i32* getelementptr inbounds (%struct.cjpeg_wrbmp_jpeg_decompress_struct, %struct.cjpeg_wrbmp_jpeg_decompress_struct* @cjpeg_wrbmp_jpeg_dec_2, i32 0, i32 28), align 4, !dbg !552
  store i32 256, i32* getelementptr inbounds (%struct.cjpeg_wrbmp_jpeg_decompress_struct, %struct.cjpeg_wrbmp_jpeg_decompress_struct* @cjpeg_wrbmp_jpeg_dec_2, i32 0, i32 32), align 4, !dbg !553
  store i32 3, i32* getelementptr inbounds (%struct.cjpeg_wrbmp_jpeg_decompress_struct, %struct.cjpeg_wrbmp_jpeg_decompress_struct* @cjpeg_wrbmp_jpeg_dec_2, i32 0, i32 29), align 4, !dbg !554
  store i8* getelementptr inbounds ([6144 x i8], [6144 x i8]* @cjpeg_wrbmp_output_array, i32 0, i32 0), i8** @cjpeg_wrbmp_jpeg_stream, align 4, !dbg !555
  store i32 0, i32* @cjpeg_wrbmp_checksum, align 4, !dbg !556
  ret void, !dbg !557
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @cjpeg_wrbmp_putc_modified(i32 noundef %character) #0 !dbg !558 {
entry:
  call void @llvm.dbg.value(metadata i32 %character, metadata !561, metadata !DIExpression()), !dbg !562
  %conv = trunc i32 %character to i8, !dbg !563
  %0 = load i8*, i8** @cjpeg_wrbmp_jpeg_stream, align 4, !dbg !564
  store i8 %conv, i8* %0, align 1, !dbg !565
  %1 = load i8*, i8** @cjpeg_wrbmp_jpeg_stream, align 4, !dbg !566
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i32 1, !dbg !566
  store i8* %incdec.ptr, i8** @cjpeg_wrbmp_jpeg_stream, align 4, !dbg !566
  %2 = load i32, i32* @cjpeg_wrbmp_checksum, align 4, !dbg !567
  %add = add nsw i32 %2, %character, !dbg !567
  store i32 %add, i32* @cjpeg_wrbmp_checksum, align 4, !dbg !567
  ret i32 %character, !dbg !568
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @cjpeg_wrbmp_finish_output_bmp(%struct.cjpeg_wrbmp_jpeg_decompress_struct* noundef %cinfo) #0 !dbg !569 {
entry:
  call void @llvm.dbg.value(metadata %struct.cjpeg_wrbmp_jpeg_decompress_struct* %cinfo, metadata !570, metadata !DIExpression()), !dbg !571
  %progress1 = getelementptr inbounds %struct.cjpeg_wrbmp_jpeg_decompress_struct, %struct.cjpeg_wrbmp_jpeg_decompress_struct* %cinfo, i32 0, i32 2, !dbg !572
  %0 = bitcast %struct.cjpeg_wrbmp_jpeg_progress_mgr** %progress1 to %struct.cjpeg_wrbmp_cdjpeg_progress_mgr**, !dbg !572
  %1 = load %struct.cjpeg_wrbmp_cdjpeg_progress_mgr*, %struct.cjpeg_wrbmp_cdjpeg_progress_mgr** %0, align 4, !dbg !572
  call void @llvm.dbg.value(metadata %struct.cjpeg_wrbmp_cdjpeg_progress_mgr* %1, metadata !573, metadata !DIExpression()), !dbg !571
  %output_height = getelementptr inbounds %struct.cjpeg_wrbmp_jpeg_decompress_struct, %struct.cjpeg_wrbmp_jpeg_decompress_struct* %cinfo, i32 0, i32 28, !dbg !574
  %2 = load i32, i32* %output_height, align 4, !dbg !574
  call void @llvm.dbg.value(metadata i32 %2, metadata !576, metadata !DIExpression()), !dbg !571
  br label %for.cond, !dbg !577

for.cond:                                         ; preds = %for.inc, %entry
  %row.0 = phi i32 [ %2, %entry ], [ %dec, %for.inc ], !dbg !578
  call void @llvm.dbg.value(metadata i32 %row.0, metadata !576, metadata !DIExpression()), !dbg !571
  %cmp.not = icmp eq i32 %row.0, 0, !dbg !579
  br i1 %cmp.not, label %for.end, label %for.body, !dbg !581

for.body:                                         ; preds = %for.cond
  %cmp2.not = icmp eq %struct.cjpeg_wrbmp_cdjpeg_progress_mgr* %1, null, !dbg !582
  br i1 %cmp2.not, label %if.end, label %if.then, !dbg !585

if.then:                                          ; preds = %for.body
  %output_height3 = getelementptr inbounds %struct.cjpeg_wrbmp_jpeg_decompress_struct, %struct.cjpeg_wrbmp_jpeg_decompress_struct* %cinfo, i32 0, i32 28, !dbg !586
  %3 = load i32, i32* %output_height3, align 4, !dbg !586
  %sub = sub i32 %3, %row.0, !dbg !588
  %pass_counter = getelementptr inbounds %struct.cjpeg_wrbmp_cdjpeg_progress_mgr, %struct.cjpeg_wrbmp_cdjpeg_progress_mgr* %1, i32 0, i32 0, i32 1, !dbg !589
  store i32 %sub, i32* %pass_counter, align 4, !dbg !590
  %output_height4 = getelementptr inbounds %struct.cjpeg_wrbmp_jpeg_decompress_struct, %struct.cjpeg_wrbmp_jpeg_decompress_struct* %cinfo, i32 0, i32 28, !dbg !591
  %4 = load i32, i32* %output_height4, align 4, !dbg !591
  %pass_limit = getelementptr inbounds %struct.cjpeg_wrbmp_cdjpeg_progress_mgr, %struct.cjpeg_wrbmp_cdjpeg_progress_mgr* %1, i32 0, i32 0, i32 2, !dbg !592
  store i32 %4, i32* %pass_limit, align 4, !dbg !593
  br label %if.end, !dbg !594

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc, !dbg !595

for.inc:                                          ; preds = %if.end
  %dec = add i32 %row.0, -1, !dbg !596
  call void @llvm.dbg.value(metadata i32 %dec, metadata !576, metadata !DIExpression()), !dbg !571
  br label %for.cond, !dbg !597, !llvm.loop !598

for.end:                                          ; preds = %for.cond
  %cmp6.not = icmp eq %struct.cjpeg_wrbmp_cdjpeg_progress_mgr* %1, null, !dbg !601
  br i1 %cmp6.not, label %if.end8, label %if.then7, !dbg !603

if.then7:                                         ; preds = %for.end
  %completed_extra_passes = getelementptr inbounds %struct.cjpeg_wrbmp_cdjpeg_progress_mgr, %struct.cjpeg_wrbmp_cdjpeg_progress_mgr* %1, i32 0, i32 1, !dbg !604
  %5 = load i32, i32* %completed_extra_passes, align 4, !dbg !605
  %inc = add nsw i32 %5, 1, !dbg !605
  store i32 %inc, i32* %completed_extra_passes, align 4, !dbg !605
  br label %if.end8, !dbg !606

if.end8:                                          ; preds = %if.then7, %for.end
  ret void, !dbg !607
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @cjpeg_wrbmp_write_colormap(%struct.cjpeg_wrbmp_jpeg_decompress_struct* noundef %cinfo, i32 noundef %map_colors, i32 noundef %map_entry_size, i32 noundef %cMap) #0 !dbg !608 {
entry:
  call void @llvm.dbg.value(metadata %struct.cjpeg_wrbmp_jpeg_decompress_struct* %cinfo, metadata !611, metadata !DIExpression()), !dbg !612
  call void @llvm.dbg.value(metadata i32 %map_colors, metadata !613, metadata !DIExpression()), !dbg !612
  call void @llvm.dbg.value(metadata i32 %map_entry_size, metadata !614, metadata !DIExpression()), !dbg !612
  call void @llvm.dbg.value(metadata i32 %cMap, metadata !615, metadata !DIExpression()), !dbg !612
  %actual_number_of_colors = getelementptr inbounds %struct.cjpeg_wrbmp_jpeg_decompress_struct, %struct.cjpeg_wrbmp_jpeg_decompress_struct* %cinfo, i32 0, i32 32, !dbg !616
  %0 = load i32, i32* %actual_number_of_colors, align 4, !dbg !616
  call void @llvm.dbg.value(metadata i32 %0, metadata !617, metadata !DIExpression()), !dbg !612
  %cmp.not = icmp eq i32 %cMap, 0, !dbg !618
  br i1 %cmp.not, label %if.else36, label %if.then, !dbg !620

if.then:                                          ; preds = %entry
  %out_color_components = getelementptr inbounds %struct.cjpeg_wrbmp_jpeg_decompress_struct, %struct.cjpeg_wrbmp_jpeg_decompress_struct* %cinfo, i32 0, i32 29, !dbg !621
  %1 = load i32, i32* %out_color_components, align 4, !dbg !621
  %cmp1 = icmp eq i32 %1, 3, !dbg !624
  br i1 %cmp1, label %if.then2, label %if.else, !dbg !625

if.then2:                                         ; preds = %if.then
  call void @llvm.dbg.value(metadata i32 0, metadata !626, metadata !DIExpression()), !dbg !612
  %smax2 = call i32 @llvm.smax.i32(i32 %0, i32 0), !dbg !627
  br label %for.cond, !dbg !627

for.cond:                                         ; preds = %for.inc, %if.then2
  %i.0 = phi i32 [ 0, %if.then2 ], [ %inc, %for.inc ], !dbg !630
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !626, metadata !DIExpression()), !dbg !612
  %exitcond3.not = icmp eq i32 %i.0, %smax2, !dbg !631
  br i1 %exitcond3.not, label %for.end, label %for.body, !dbg !633

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds [3 x [256 x i8]], [3 x [256 x i8]]* @cjpeg_wrbmp_colormap, i32 0, i32 2, i32 %i.0, !dbg !634
  %2 = load i8, i8* %arrayidx, align 1, !dbg !634
  %conv = zext i8 %2 to i32, !dbg !634
  %call = call arm_aapcs_vfpcc i32 @cjpeg_wrbmp_putc_modified(i32 noundef %conv) #5, !dbg !636
  %arrayidx4 = getelementptr inbounds [3 x [256 x i8]], [3 x [256 x i8]]* @cjpeg_wrbmp_colormap, i32 0, i32 1, i32 %i.0, !dbg !637
  %3 = load i8, i8* %arrayidx4, align 1, !dbg !637
  %conv5 = zext i8 %3 to i32, !dbg !637
  %call6 = call arm_aapcs_vfpcc i32 @cjpeg_wrbmp_putc_modified(i32 noundef %conv5) #5, !dbg !638
  %arrayidx7 = getelementptr inbounds [3 x [256 x i8]], [3 x [256 x i8]]* @cjpeg_wrbmp_colormap, i32 0, i32 0, i32 %i.0, !dbg !639
  %4 = load i8, i8* %arrayidx7, align 1, !dbg !639
  %conv8 = zext i8 %4 to i32, !dbg !639
  %call9 = call arm_aapcs_vfpcc i32 @cjpeg_wrbmp_putc_modified(i32 noundef %conv8) #5, !dbg !640
  %cmp10 = icmp eq i32 %map_entry_size, 4, !dbg !641
  br i1 %cmp10, label %if.then12, label %if.end, !dbg !643

if.then12:                                        ; preds = %for.body
  %call13 = call arm_aapcs_vfpcc i32 @cjpeg_wrbmp_putc_modified(i32 noundef 0) #5, !dbg !644
  br label %if.end, !dbg !644

if.end:                                           ; preds = %if.then12, %for.body
  br label %for.inc, !dbg !645

for.inc:                                          ; preds = %if.end
  %inc = add nuw i32 %i.0, 1, !dbg !646
  call void @llvm.dbg.value(metadata i32 %inc, metadata !626, metadata !DIExpression()), !dbg !612
  br label %for.cond, !dbg !647, !llvm.loop !648

for.end:                                          ; preds = %for.cond
  br label %if.end35, !dbg !650

if.else:                                          ; preds = %if.then
  call void @llvm.dbg.value(metadata i32 0, metadata !626, metadata !DIExpression()), !dbg !612
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 0), !dbg !651
  br label %for.cond14, !dbg !651

for.cond14:                                       ; preds = %for.inc32, %if.else
  %i.1 = phi i32 [ 0, %if.else ], [ %inc33, %for.inc32 ], !dbg !654
  call void @llvm.dbg.value(metadata i32 %i.1, metadata !626, metadata !DIExpression()), !dbg !612
  %exitcond1.not = icmp eq i32 %i.1, %smax, !dbg !655
  br i1 %exitcond1.not, label %for.end34, label %for.body17, !dbg !657

for.body17:                                       ; preds = %for.cond14
  %arrayidx18 = getelementptr inbounds [3 x [256 x i8]], [3 x [256 x i8]]* @cjpeg_wrbmp_colormap, i32 0, i32 2, i32 %i.1, !dbg !658
  %5 = load i8, i8* %arrayidx18, align 1, !dbg !658
  %conv19 = zext i8 %5 to i32, !dbg !658
  %call20 = call arm_aapcs_vfpcc i32 @cjpeg_wrbmp_putc_modified(i32 noundef %conv19) #5, !dbg !660
  %arrayidx21 = getelementptr inbounds [3 x [256 x i8]], [3 x [256 x i8]]* @cjpeg_wrbmp_colormap, i32 0, i32 1, i32 %i.1, !dbg !661
  %6 = load i8, i8* %arrayidx21, align 1, !dbg !661
  %conv22 = zext i8 %6 to i32, !dbg !661
  %call23 = call arm_aapcs_vfpcc i32 @cjpeg_wrbmp_putc_modified(i32 noundef %conv22) #5, !dbg !662
  %arrayidx24 = getelementptr inbounds [3 x [256 x i8]], [3 x [256 x i8]]* @cjpeg_wrbmp_colormap, i32 0, i32 0, i32 %i.1, !dbg !663
  %7 = load i8, i8* %arrayidx24, align 1, !dbg !663
  %conv25 = zext i8 %7 to i32, !dbg !663
  %call26 = call arm_aapcs_vfpcc i32 @cjpeg_wrbmp_putc_modified(i32 noundef %conv25) #5, !dbg !664
  %cmp27 = icmp eq i32 %map_entry_size, 4, !dbg !665
  br i1 %cmp27, label %if.then29, label %if.end31, !dbg !667

if.then29:                                        ; preds = %for.body17
  %call30 = call arm_aapcs_vfpcc i32 @cjpeg_wrbmp_putc_modified(i32 noundef 0) #5, !dbg !668
  br label %if.end31, !dbg !668

if.end31:                                         ; preds = %if.then29, %for.body17
  br label %for.inc32, !dbg !669

for.inc32:                                        ; preds = %if.end31
  %inc33 = add nuw i32 %i.1, 1, !dbg !670
  call void @llvm.dbg.value(metadata i32 %inc33, metadata !626, metadata !DIExpression()), !dbg !612
  br label %for.cond14, !dbg !671, !llvm.loop !672

for.end34:                                        ; preds = %for.cond14
  br label %if.end35

if.end35:                                         ; preds = %for.end34, %for.end
  %i.2 = phi i32 [ %i.0, %for.end ], [ %i.1, %for.end34 ], !dbg !674
  call void @llvm.dbg.value(metadata i32 %i.2, metadata !626, metadata !DIExpression()), !dbg !612
  br label %if.end52, !dbg !675

if.else36:                                        ; preds = %entry
  call void @llvm.dbg.value(metadata i32 0, metadata !626, metadata !DIExpression()), !dbg !612
  br label %for.cond37, !dbg !676

for.cond37:                                       ; preds = %for.inc49, %if.else36
  %i.3 = phi i32 [ 0, %if.else36 ], [ %inc50, %for.inc49 ], !dbg !679
  call void @llvm.dbg.value(metadata i32 %i.3, metadata !626, metadata !DIExpression()), !dbg !612
  %exitcond.not = icmp eq i32 %i.3, 256, !dbg !680
  br i1 %exitcond.not, label %for.end51, label %for.body40, !dbg !682

for.body40:                                       ; preds = %for.cond37
  %call41 = call arm_aapcs_vfpcc i32 @cjpeg_wrbmp_putc_modified(i32 noundef %i.3) #5, !dbg !683
  %call42 = call arm_aapcs_vfpcc i32 @cjpeg_wrbmp_putc_modified(i32 noundef %i.3) #5, !dbg !685
  %call43 = call arm_aapcs_vfpcc i32 @cjpeg_wrbmp_putc_modified(i32 noundef %i.3) #5, !dbg !686
  %cmp44 = icmp eq i32 %map_entry_size, 4, !dbg !687
  br i1 %cmp44, label %if.then46, label %if.end48, !dbg !689

if.then46:                                        ; preds = %for.body40
  %call47 = call arm_aapcs_vfpcc i32 @cjpeg_wrbmp_putc_modified(i32 noundef 0) #5, !dbg !690
  br label %if.end48, !dbg !690

if.end48:                                         ; preds = %if.then46, %for.body40
  br label %for.inc49, !dbg !691

for.inc49:                                        ; preds = %if.end48
  %inc50 = add nuw nsw i32 %i.3, 1, !dbg !692
  call void @llvm.dbg.value(metadata i32 %inc50, metadata !626, metadata !DIExpression()), !dbg !612
  br label %for.cond37, !dbg !693, !llvm.loop !694

for.end51:                                        ; preds = %for.cond37
  br label %if.end52

if.end52:                                         ; preds = %for.end51, %if.end35
  %i.4 = phi i32 [ %i.2, %if.end35 ], [ 256, %for.end51 ], !dbg !696
  call void @llvm.dbg.value(metadata i32 %i.4, metadata !626, metadata !DIExpression()), !dbg !612
  %smax4 = call i32 @llvm.smax.i32(i32 %i.4, i32 %map_colors), !dbg !697
  br label %for.cond53, !dbg !697

for.cond53:                                       ; preds = %for.inc65, %if.end52
  %i.5 = phi i32 [ %i.4, %if.end52 ], [ %inc66, %for.inc65 ], !dbg !612
  call void @llvm.dbg.value(metadata i32 %i.5, metadata !626, metadata !DIExpression()), !dbg !612
  %exitcond5.not = icmp eq i32 %i.5, %smax4, !dbg !698
  br i1 %exitcond5.not, label %for.end67, label %for.body56, !dbg !701

for.body56:                                       ; preds = %for.cond53
  %call57 = call arm_aapcs_vfpcc i32 @cjpeg_wrbmp_putc_modified(i32 noundef 0) #5, !dbg !702
  %call58 = call arm_aapcs_vfpcc i32 @cjpeg_wrbmp_putc_modified(i32 noundef 0) #5, !dbg !704
  %call59 = call arm_aapcs_vfpcc i32 @cjpeg_wrbmp_putc_modified(i32 noundef 0) #5, !dbg !705
  %cmp60 = icmp eq i32 %map_entry_size, 4, !dbg !706
  br i1 %cmp60, label %if.then62, label %if.end64, !dbg !708

if.then62:                                        ; preds = %for.body56
  %call63 = call arm_aapcs_vfpcc i32 @cjpeg_wrbmp_putc_modified(i32 noundef 0) #5, !dbg !709
  br label %if.end64, !dbg !709

if.end64:                                         ; preds = %if.then62, %for.body56
  br label %for.inc65, !dbg !710

for.inc65:                                        ; preds = %if.end64
  %inc66 = add nuw i32 %i.5, 1, !dbg !711
  call void @llvm.dbg.value(metadata i32 %inc66, metadata !626, metadata !DIExpression()), !dbg !612
  br label %for.cond53, !dbg !712, !llvm.loop !713

for.end67:                                        ; preds = %for.cond53
  ret void, !dbg !715
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @cjpeg_wrbmp_main() #0 !dbg !716 {
entry:
  call arm_aapcs_vfpcc void @cjpeg_wrbmp_finish_output_bmp(%struct.cjpeg_wrbmp_jpeg_decompress_struct* noundef nonnull @cjpeg_wrbmp_jpeg_dec_1) #5, !dbg !717
  call arm_aapcs_vfpcc void @cjpeg_wrbmp_write_colormap(%struct.cjpeg_wrbmp_jpeg_decompress_struct* noundef nonnull @cjpeg_wrbmp_jpeg_dec_1, i32 noundef 768, i32 noundef 4, i32 noundef 1) #5, !dbg !718
  call arm_aapcs_vfpcc void @cjpeg_wrbmp_finish_output_bmp(%struct.cjpeg_wrbmp_jpeg_decompress_struct* noundef nonnull @cjpeg_wrbmp_jpeg_dec_2) #5, !dbg !719
  call arm_aapcs_vfpcc void @cjpeg_wrbmp_write_colormap(%struct.cjpeg_wrbmp_jpeg_decompress_struct* noundef nonnull @cjpeg_wrbmp_jpeg_dec_2, i32 noundef 768, i32 noundef 4, i32 noundef 1) #5, !dbg !720
  ret void, !dbg !721
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @cjpeg_wrbmp_return() #0 !dbg !722 {
entry:
  %0 = load i32, i32* @cjpeg_wrbmp_checksum, align 4, !dbg !725
  %cmp = icmp ne i32 %0, 209330, !dbg !726
  %conv = zext i1 %cmp to i32, !dbg !726
  ret i32 %conv, !dbg !727
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @main() #0 !dbg !728 {
entry:
  call arm_aapcs_vfpcc void @cjpeg_wrbmp_init() #5, !dbg !729
  call arm_aapcs_vfpcc void @cjpeg_wrbmp_main() #5, !dbg !730
  %call = call arm_aapcs_vfpcc i32 @cjpeg_wrbmp_return() #5, !dbg !731
  ret i32 %call, !dbg !732
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @cjpeg_wrbmp_initInput() #0 !dbg !733 {
entry:
  %tmp = alloca [3 x [256 x i8]], align 1
  call void @llvm.dbg.declare(metadata [3 x [256 x i8]]* %tmp, metadata !734, metadata !DIExpression()), !dbg !737
  %0 = getelementptr inbounds [3 x [256 x i8]], [3 x [256 x i8]]* %tmp, i32 0, i32 0, i32 0, !dbg !737
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 1 %0, i8* align 1 getelementptr inbounds ([3 x [256 x i8]], [3 x [256 x i8]]* @__const.cjpeg_wrbmp_initInput.tmp, i32 0, i32 0, i32 0), i32 768, i1 true), !dbg !737
  call void @llvm.dbg.value(metadata i32 0, metadata !738, metadata !DIExpression()), !dbg !739
  br label %for.cond, !dbg !740

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !dbg !742
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !738, metadata !DIExpression()), !dbg !739
  %exitcond1.not = icmp eq i32 %i.0, 3, !dbg !743
  br i1 %exitcond1.not, label %for.end9, label %for.body, !dbg !745

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.value(metadata i32 0, metadata !746, metadata !DIExpression()), !dbg !739
  br label %for.cond1, !dbg !747

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !dbg !750
  call void @llvm.dbg.value(metadata i32 %j.0, metadata !746, metadata !DIExpression()), !dbg !739
  %exitcond.not = icmp eq i32 %j.0, 256, !dbg !751
  br i1 %exitcond.not, label %for.end, label %for.body3, !dbg !753

for.body3:                                        ; preds = %for.cond1
  %arrayidx4 = getelementptr inbounds [3 x [256 x i8]], [3 x [256 x i8]]* %tmp, i32 0, i32 %i.0, i32 %j.0, !dbg !754
  %1 = load volatile i8, i8* %arrayidx4, align 1, !dbg !754
  %arrayidx6 = getelementptr inbounds [3 x [256 x i8]], [3 x [256 x i8]]* @cjpeg_wrbmp_colormap, i32 0, i32 %i.0, i32 %j.0, !dbg !755
  store i8 %1, i8* %arrayidx6, align 1, !dbg !756
  br label %for.inc, !dbg !755

for.inc:                                          ; preds = %for.body3
  %inc = add nuw nsw i32 %j.0, 1, !dbg !757
  call void @llvm.dbg.value(metadata i32 %inc, metadata !746, metadata !DIExpression()), !dbg !739
  br label %for.cond1, !dbg !758, !llvm.loop !759

for.end:                                          ; preds = %for.cond1
  br label %for.inc7, !dbg !761

for.inc7:                                         ; preds = %for.end
  %inc8 = add nuw nsw i32 %i.0, 1, !dbg !762
  call void @llvm.dbg.value(metadata i32 %inc8, metadata !738, metadata !DIExpression()), !dbg !739
  br label %for.cond, !dbg !763, !llvm.loop !764

for.end9:                                         ; preds = %for.cond
  ret void, !dbg !766
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i32, i1 immarg) #2

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__absvdi2(i64 noundef %a) #3 !dbg !767 {
entry:
  %cmp = icmp eq i64 %a, -9223372036854775808, !dbg !769
  br i1 %cmp, label %if.then, label %if.end, !dbg !770

if.then:                                          ; preds = %entry
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i32 noundef 26, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__absvdi2, i32 0, i32 0)) #6, !dbg !771
  unreachable, !dbg !771

if.end:                                           ; preds = %entry
  %0 = call i64 @llvm.abs.i64(i64 %a, i1 true), !dbg !772
  ret i64 %0, !dbg !773
}

; Function Attrs: noinline noreturn nounwind
define weak hidden arm_aapcscc void @compilerrt_abort_impl(i8* noundef %file, i32 noundef %line, i8* noundef %function) #4 !dbg !774 {
entry:
  unreachable, !dbg !775
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__absvsi2(i32 noundef %a) #3 !dbg !776 {
entry:
  %cmp = icmp eq i32 %a, -2147483648, !dbg !777
  br i1 %cmp, label %if.then, label %if.end, !dbg !778

if.then:                                          ; preds = %entry
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 noundef 26, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__absvsi2, i32 0, i32 0)) #6, !dbg !779
  unreachable, !dbg !779

if.end:                                           ; preds = %entry
  %0 = call i32 @llvm.abs.i32(i32 %a, i1 true), !dbg !780
  ret i32 %0, !dbg !781
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__addvdi3(i64 noundef %a, i64 noundef %b) #3 !dbg !782 {
entry:
  %add = add i64 %a, %b, !dbg !783
  %cmp = icmp sgt i64 %b, -1, !dbg !784
  br i1 %cmp, label %if.then, label %if.else, !dbg !785

if.then:                                          ; preds = %entry
  %cmp1 = icmp slt i64 %add, %a, !dbg !786
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !787

if.then2:                                         ; preds = %if.then
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i32 noundef 28, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__addvdi3, i32 0, i32 0)) #6, !dbg !788
  unreachable, !dbg !788

if.end:                                           ; preds = %if.then
  br label %if.end6, !dbg !789

if.else:                                          ; preds = %entry
  %cmp3.not = icmp slt i64 %add, %a, !dbg !790
  br i1 %cmp3.not, label %if.end5, label %if.then4, !dbg !791

if.then4:                                         ; preds = %if.else
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i32 noundef 33, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__addvdi3, i32 0, i32 0)) #6, !dbg !792
  unreachable, !dbg !792

if.end5:                                          ; preds = %if.else
  br label %if.end6

if.end6:                                          ; preds = %if.end5, %if.end
  ret i64 %add, !dbg !793
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__addvsi3(i32 noundef %a, i32 noundef %b) #3 !dbg !794 {
entry:
  %add = add i32 %a, %b, !dbg !795
  %cmp = icmp sgt i32 %b, -1, !dbg !796
  br i1 %cmp, label %if.then, label %if.else, !dbg !797

if.then:                                          ; preds = %entry
  %cmp1 = icmp slt i32 %add, %a, !dbg !798
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !799

if.then2:                                         ; preds = %if.then
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), i32 noundef 28, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__addvsi3, i32 0, i32 0)) #6, !dbg !800
  unreachable, !dbg !800

if.end:                                           ; preds = %if.then
  br label %if.end6, !dbg !801

if.else:                                          ; preds = %entry
  %cmp3.not = icmp slt i32 %add, %a, !dbg !802
  br i1 %cmp3.not, label %if.end5, label %if.then4, !dbg !803

if.then4:                                         ; preds = %if.else
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), i32 noundef 33, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__addvsi3, i32 0, i32 0)) #6, !dbg !804
  unreachable, !dbg !804

if.end5:                                          ; preds = %if.else
  br label %if.end6

if.end6:                                          ; preds = %if.end5, %if.end
  ret i32 %add, !dbg !805
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__ashldi3(i64 noundef %a, i32 noundef %b) #3 !dbg !806 {
entry:
  %input = alloca %union.dwords, align 8
  %result = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %input, i32 0, i32 0, !dbg !807
  store i64 %a, i64* %all, align 8, !dbg !808
  %and = and i32 %b, 32, !dbg !809
  %tobool.not = icmp eq i32 %and, 0, !dbg !809
  br i1 %tobool.not, label %if.else, label %if.then, !dbg !810

if.then:                                          ; preds = %entry
  %low = bitcast %union.dwords* %result to i32*, !dbg !811
  store i32 0, i32* %low, align 8, !dbg !812
  %low2 = bitcast %union.dwords* %input to i32*, !dbg !813
  %0 = load i32, i32* %low2, align 8, !dbg !813
  %sub = add nsw i32 %b, -32, !dbg !814
  %shl = shl i32 %0, %sub, !dbg !815
  %s3 = bitcast %union.dwords* %result to %struct.anon*, !dbg !816
  %high = getelementptr inbounds %struct.anon, %struct.anon* %s3, i32 0, i32 1, !dbg !817
  store i32 %shl, i32* %high, align 4, !dbg !818
  br label %if.end18, !dbg !819

if.else:                                          ; preds = %entry
  %cmp = icmp eq i32 %b, 0, !dbg !820
  br i1 %cmp, label %if.then4, label %if.end, !dbg !821

if.then4:                                         ; preds = %if.else
  br label %return, !dbg !822

if.end:                                           ; preds = %if.else
  %low6 = bitcast %union.dwords* %input to i32*, !dbg !823
  %1 = load i32, i32* %low6, align 8, !dbg !823
  %shl7 = shl i32 %1, %b, !dbg !824
  %low9 = bitcast %union.dwords* %result to i32*, !dbg !825
  store i32 %shl7, i32* %low9, align 8, !dbg !826
  %s10 = bitcast %union.dwords* %input to %struct.anon*, !dbg !827
  %high11 = getelementptr inbounds %struct.anon, %struct.anon* %s10, i32 0, i32 1, !dbg !828
  %2 = load i32, i32* %high11, align 4, !dbg !828
  %shl12 = shl i32 %2, %b, !dbg !829
  %low14 = bitcast %union.dwords* %input to i32*, !dbg !830
  %3 = load i32, i32* %low14, align 8, !dbg !830
  %sub15 = sub nsw i32 32, %b, !dbg !831
  %shr = lshr i32 %3, %sub15, !dbg !832
  %or = or i32 %shl12, %shr, !dbg !833
  %s16 = bitcast %union.dwords* %result to %struct.anon*, !dbg !834
  %high17 = getelementptr inbounds %struct.anon, %struct.anon* %s16, i32 0, i32 1, !dbg !835
  store i32 %or, i32* %high17, align 4, !dbg !836
  br label %if.end18

if.end18:                                         ; preds = %if.end, %if.then
  %all19 = getelementptr inbounds %union.dwords, %union.dwords* %result, i32 0, i32 0, !dbg !837
  %4 = load i64, i64* %all19, align 8, !dbg !837
  br label %return, !dbg !838

return:                                           ; preds = %if.end18, %if.then4
  %retval.0 = phi i64 [ %4, %if.end18 ], [ %a, %if.then4 ], !dbg !839
  ret i64 %retval.0, !dbg !840
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__ashrdi3(i64 noundef %a, i32 noundef %b) #3 !dbg !841 {
entry:
  %input = alloca %union.dwords, align 8
  %result = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %input, i32 0, i32 0, !dbg !842
  store i64 %a, i64* %all, align 8, !dbg !843
  %and = and i32 %b, 32, !dbg !844
  %tobool.not = icmp eq i32 %and, 0, !dbg !844
  br i1 %tobool.not, label %if.else, label %if.then, !dbg !845

if.then:                                          ; preds = %entry
  %s = bitcast %union.dwords* %input to %struct.anon*, !dbg !846
  %high = getelementptr inbounds %struct.anon, %struct.anon* %s, i32 0, i32 1, !dbg !847
  %0 = load i32, i32* %high, align 4, !dbg !847
  %shr = ashr i32 %0, 31, !dbg !848
  %s1 = bitcast %union.dwords* %result to %struct.anon*, !dbg !849
  %high2 = getelementptr inbounds %struct.anon, %struct.anon* %s1, i32 0, i32 1, !dbg !850
  store i32 %shr, i32* %high2, align 4, !dbg !851
  %s3 = bitcast %union.dwords* %input to %struct.anon*, !dbg !852
  %high4 = getelementptr inbounds %struct.anon, %struct.anon* %s3, i32 0, i32 1, !dbg !853
  %1 = load i32, i32* %high4, align 4, !dbg !853
  %sub = add nsw i32 %b, -32, !dbg !854
  %shr5 = ashr i32 %1, %sub, !dbg !855
  %low = bitcast %union.dwords* %result to i32*, !dbg !856
  store i32 %shr5, i32* %low, align 8, !dbg !857
  br label %if.end21, !dbg !858

if.else:                                          ; preds = %entry
  %cmp = icmp eq i32 %b, 0, !dbg !859
  br i1 %cmp, label %if.then7, label %if.end, !dbg !860

if.then7:                                         ; preds = %if.else
  br label %return, !dbg !861

if.end:                                           ; preds = %if.else
  %s8 = bitcast %union.dwords* %input to %struct.anon*, !dbg !862
  %high9 = getelementptr inbounds %struct.anon, %struct.anon* %s8, i32 0, i32 1, !dbg !863
  %2 = load i32, i32* %high9, align 4, !dbg !863
  %shr10 = ashr i32 %2, %b, !dbg !864
  %s11 = bitcast %union.dwords* %result to %struct.anon*, !dbg !865
  %high12 = getelementptr inbounds %struct.anon, %struct.anon* %s11, i32 0, i32 1, !dbg !866
  store i32 %shr10, i32* %high12, align 4, !dbg !867
  %s13 = bitcast %union.dwords* %input to %struct.anon*, !dbg !868
  %high14 = getelementptr inbounds %struct.anon, %struct.anon* %s13, i32 0, i32 1, !dbg !869
  %3 = load i32, i32* %high14, align 4, !dbg !869
  %sub15 = sub nsw i32 32, %b, !dbg !870
  %shl = shl i32 %3, %sub15, !dbg !871
  %low17 = bitcast %union.dwords* %input to i32*, !dbg !872
  %4 = load i32, i32* %low17, align 8, !dbg !872
  %shr18 = lshr i32 %4, %b, !dbg !873
  %or = or i32 %shl, %shr18, !dbg !874
  %low20 = bitcast %union.dwords* %result to i32*, !dbg !875
  store i32 %or, i32* %low20, align 8, !dbg !876
  br label %if.end21

if.end21:                                         ; preds = %if.end, %if.then
  %all22 = getelementptr inbounds %union.dwords, %union.dwords* %result, i32 0, i32 0, !dbg !877
  %5 = load i64, i64* %all22, align 8, !dbg !877
  br label %return, !dbg !878

return:                                           ; preds = %if.end21, %if.then7
  %retval.0 = phi i64 [ %5, %if.end21 ], [ %a, %if.then7 ], !dbg !879
  ret i64 %retval.0, !dbg !880
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__clzdi2(i64 noundef %a) #3 !dbg !881 {
entry:
  %x = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %x, i32 0, i32 0, !dbg !882
  store i64 %a, i64* %all, align 8, !dbg !883
  %s = bitcast %union.dwords* %x to %struct.anon*, !dbg !884
  %high = getelementptr inbounds %struct.anon, %struct.anon* %s, i32 0, i32 1, !dbg !885
  %0 = load i32, i32* %high, align 4, !dbg !885
  %cmp = icmp eq i32 %0, 0, !dbg !886
  %s1 = bitcast %union.dwords* %x to %struct.anon*, !dbg !887
  %high2 = getelementptr inbounds %struct.anon, %struct.anon* %s1, i32 0, i32 1, !dbg !888
  %1 = load i32, i32* %high2, align 4, !dbg !888
  %low = bitcast %union.dwords* %x to i32*, !dbg !889
  %2 = load i32, i32* %low, align 8, !dbg !889
  %3 = select i1 %cmp, i32 %2, i32 %1, !dbg !890
  %4 = call i32 @llvm.ctlz.i32(i32 %3, i1 false), !dbg !891, !range !892
  %and5 = select i1 %cmp, i32 32, i32 0, !dbg !893
  %add = add nuw nsw i32 %4, %and5, !dbg !894
  ret i32 %add, !dbg !895
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #1

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__clzsi2(i32 noundef %a) #3 !dbg !896 {
entry:
  %cmp = icmp ult i32 %a, 65536, !dbg !897
  %shl = select i1 %cmp, i32 16, i32 0, !dbg !898
  %sub = sub nuw nsw i32 16, %shl, !dbg !899
  %shr = lshr i32 %a, %sub, !dbg !900
  %and1 = and i32 %shr, 65280, !dbg !901
  %cmp2 = icmp eq i32 %and1, 0, !dbg !902
  %shl4 = select i1 %cmp2, i32 8, i32 0, !dbg !903
  %sub5 = sub nuw nsw i32 8, %shl4, !dbg !904
  %shr6 = lshr i32 %shr, %sub5, !dbg !905
  %add = or i32 %shl, %shl4, !dbg !906
  %and7 = and i32 %shr6, 240, !dbg !907
  %cmp8 = icmp eq i32 %and7, 0, !dbg !908
  %shl10 = select i1 %cmp8, i32 4, i32 0, !dbg !909
  %sub11 = sub nuw nsw i32 4, %shl10, !dbg !910
  %shr12 = lshr i32 %shr6, %sub11, !dbg !911
  %add13 = or i32 %add, %shl10, !dbg !912
  %and14 = and i32 %shr12, 12, !dbg !913
  %cmp15 = icmp eq i32 %and14, 0, !dbg !914
  %shl17 = select i1 %cmp15, i32 2, i32 0, !dbg !915
  %sub18 = sub nuw nsw i32 2, %shl17, !dbg !916
  %shr19 = lshr i32 %shr12, %sub18, !dbg !917
  %add20 = or i32 %add13, %shl17, !dbg !918
  %sub21 = sub i32 2, %shr19, !dbg !919
  %and22 = lshr i32 %shr19, 1, !dbg !920
  %0 = or i32 %and22, -2, !dbg !920
  %.neg = add nsw i32 %0, 1, !dbg !920
  %and26 = and i32 %sub21, %.neg, !dbg !921
  %add27 = add i32 %add20, %and26, !dbg !922
  ret i32 %add27, !dbg !923
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__cmpdi2(i64 noundef %a, i64 noundef %b) #3 !dbg !924 {
entry:
  %x = alloca %union.dwords, align 8
  %y = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %x, i32 0, i32 0, !dbg !925
  store i64 %a, i64* %all, align 8, !dbg !926
  %all1 = getelementptr inbounds %union.dwords, %union.dwords* %y, i32 0, i32 0, !dbg !927
  store i64 %b, i64* %all1, align 8, !dbg !928
  %s = bitcast %union.dwords* %x to %struct.anon*, !dbg !929
  %high = getelementptr inbounds %struct.anon, %struct.anon* %s, i32 0, i32 1, !dbg !930
  %0 = load i32, i32* %high, align 4, !dbg !930
  %s2 = bitcast %union.dwords* %y to %struct.anon*, !dbg !931
  %high3 = getelementptr inbounds %struct.anon, %struct.anon* %s2, i32 0, i32 1, !dbg !932
  %1 = load i32, i32* %high3, align 4, !dbg !932
  %cmp = icmp slt i32 %0, %1, !dbg !933
  br i1 %cmp, label %if.then, label %if.end, !dbg !934

if.then:                                          ; preds = %entry
  br label %return, !dbg !935

if.end:                                           ; preds = %entry
  %s4 = bitcast %union.dwords* %x to %struct.anon*, !dbg !936
  %high5 = getelementptr inbounds %struct.anon, %struct.anon* %s4, i32 0, i32 1, !dbg !937
  %2 = load i32, i32* %high5, align 4, !dbg !937
  %s6 = bitcast %union.dwords* %y to %struct.anon*, !dbg !938
  %high7 = getelementptr inbounds %struct.anon, %struct.anon* %s6, i32 0, i32 1, !dbg !939
  %3 = load i32, i32* %high7, align 4, !dbg !939
  %cmp8 = icmp sgt i32 %2, %3, !dbg !940
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !941

if.then9:                                         ; preds = %if.end
  br label %return, !dbg !942

if.end10:                                         ; preds = %if.end
  %low = bitcast %union.dwords* %x to i32*, !dbg !943
  %4 = load i32, i32* %low, align 8, !dbg !943
  %low13 = bitcast %union.dwords* %y to i32*, !dbg !944
  %5 = load i32, i32* %low13, align 8, !dbg !944
  %cmp14 = icmp ult i32 %4, %5, !dbg !945
  br i1 %cmp14, label %if.then15, label %if.end16, !dbg !946

if.then15:                                        ; preds = %if.end10
  br label %return, !dbg !947

if.end16:                                         ; preds = %if.end10
  %low18 = bitcast %union.dwords* %x to i32*, !dbg !948
  %6 = load i32, i32* %low18, align 8, !dbg !948
  %low20 = bitcast %union.dwords* %y to i32*, !dbg !949
  %7 = load i32, i32* %low20, align 8, !dbg !949
  %cmp21 = icmp ugt i32 %6, %7, !dbg !950
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !951

if.then22:                                        ; preds = %if.end16
  br label %return, !dbg !952

if.end23:                                         ; preds = %if.end16
  br label %return, !dbg !953

return:                                           ; preds = %if.end23, %if.then22, %if.then15, %if.then9, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 2, %if.then9 ], [ 0, %if.then15 ], [ 2, %if.then22 ], [ 1, %if.end23 ], !dbg !954
  ret i32 %retval.0, !dbg !955
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__aeabi_lcmp(i64 noundef %a, i64 noundef %b) #3 !dbg !956 {
entry:
  %call = call arm_aapcscc i32 @__cmpdi2(i64 noundef %a, i64 noundef %b) #5, !dbg !957
  %sub = add nsw i32 %call, -1, !dbg !958
  ret i32 %sub, !dbg !959
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__ctzdi2(i64 noundef %a) #3 !dbg !960 {
entry:
  %x = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %x, i32 0, i32 0, !dbg !961
  store i64 %a, i64* %all, align 8, !dbg !962
  %low = bitcast %union.dwords* %x to i32*, !dbg !963
  %0 = load i32, i32* %low, align 8, !dbg !963
  %cmp = icmp eq i32 %0, 0, !dbg !964
  %s1 = bitcast %union.dwords* %x to %struct.anon*, !dbg !965
  %high = getelementptr inbounds %struct.anon, %struct.anon* %s1, i32 0, i32 1, !dbg !966
  %1 = load i32, i32* %high, align 4, !dbg !966
  %2 = select i1 %cmp, i32 %1, i32 %0, !dbg !967
  %3 = call i32 @llvm.cttz.i32(i32 %2, i1 false), !dbg !968, !range !892
  %and5 = select i1 %cmp, i32 32, i32 0, !dbg !969
  %add = add nuw nsw i32 %3, %and5, !dbg !970
  ret i32 %add, !dbg !971
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #1

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__ctzsi2(i32 noundef %a) #3 !dbg !972 {
entry:
  %and = and i32 %a, 65535, !dbg !973
  %cmp = icmp eq i32 %and, 0, !dbg !974
  %shl = select i1 %cmp, i32 16, i32 0, !dbg !975
  %shr = lshr i32 %a, %shl, !dbg !976
  %and1 = and i32 %shr, 255, !dbg !977
  %cmp2 = icmp eq i32 %and1, 0, !dbg !978
  %shl4 = select i1 %cmp2, i32 8, i32 0, !dbg !979
  %shr5 = lshr i32 %shr, %shl4, !dbg !980
  %add = or i32 %shl, %shl4, !dbg !981
  %and6 = and i32 %shr5, 15, !dbg !982
  %cmp7 = icmp eq i32 %and6, 0, !dbg !983
  %shl9 = select i1 %cmp7, i32 4, i32 0, !dbg !984
  %shr10 = lshr i32 %shr5, %shl9, !dbg !985
  %add11 = or i32 %add, %shl9, !dbg !986
  %and12 = and i32 %shr10, 3, !dbg !987
  %cmp13 = icmp eq i32 %and12, 0, !dbg !988
  %shl15 = select i1 %cmp13, i32 2, i32 0, !dbg !989
  %shr16 = lshr i32 %shr10, %shl15, !dbg !990
  %add18 = or i32 %add11, %shl15, !dbg !991
  %and17 = lshr i32 %shr16, 1, !dbg !992
  %shr19 = and i32 %and17, 1, !dbg !992
  %sub = sub nuw nsw i32 2, %shr19, !dbg !993
  %0 = or i32 %shr16, -2, !dbg !994
  %.neg = add nsw i32 %0, 1, !dbg !994
  %and24 = and i32 %sub, %.neg, !dbg !995
  %add25 = add nuw nsw i32 %add18, %and24, !dbg !996
  ret i32 %add25, !dbg !997
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__divdi3(i64 noundef %a, i64 noundef %b) #3 !dbg !998 {
entry:
  %shr = ashr i64 %a, 63, !dbg !999
  %shr1 = ashr i64 %b, 63, !dbg !1000
  %xor = xor i64 %shr, %a, !dbg !1001
  %sub = sub nsw i64 %xor, %shr, !dbg !1002
  %xor2 = xor i64 %shr1, %b, !dbg !1003
  %sub3 = sub nsw i64 %xor2, %shr1, !dbg !1004
  %xor4 = xor i64 %shr, %shr1, !dbg !1005
  %call = call arm_aapcscc i64 @__udivmoddi4(i64 noundef %sub, i64 noundef %sub3, i64* noundef null) #5, !dbg !1006
  %xor5 = xor i64 %call, %xor4, !dbg !1007
  %sub6 = sub i64 %xor5, %xor4, !dbg !1008
  ret i64 %sub6, !dbg !1009
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__udivmoddi4(i64 noundef %a, i64 noundef %b, i64* noundef %rem) #3 !dbg !1010 {
entry:
  %n = alloca %union.dwords, align 8
  %d = alloca %union.dwords, align 8
  %q = alloca %union.dwords, align 8
  %r = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %n, i32 0, i32 0, !dbg !1011
  store i64 %a, i64* %all, align 8, !dbg !1012
  %all1 = getelementptr inbounds %union.dwords, %union.dwords* %d, i32 0, i32 0, !dbg !1013
  store i64 %b, i64* %all1, align 8, !dbg !1014
  %s = bitcast %union.dwords* %n to %struct.anon*, !dbg !1015
  %high = getelementptr inbounds %struct.anon, %struct.anon* %s, i32 0, i32 1, !dbg !1016
  %0 = load i32, i32* %high, align 4, !dbg !1016
  %cmp = icmp eq i32 %0, 0, !dbg !1017
  br i1 %cmp, label %if.then, label %if.end23, !dbg !1018

if.then:                                          ; preds = %entry
  %s2 = bitcast %union.dwords* %d to %struct.anon*, !dbg !1019
  %high3 = getelementptr inbounds %struct.anon, %struct.anon* %s2, i32 0, i32 1, !dbg !1020
  %1 = load i32, i32* %high3, align 4, !dbg !1020
  %cmp4 = icmp eq i32 %1, 0, !dbg !1021
  br i1 %cmp4, label %if.then5, label %if.end16, !dbg !1022

if.then5:                                         ; preds = %if.then
  %tobool.not = icmp eq i64* %rem, null, !dbg !1023
  br i1 %tobool.not, label %if.end, label %if.then6, !dbg !1023

if.then6:                                         ; preds = %if.then5
  %low = bitcast %union.dwords* %n to i32*, !dbg !1024
  %2 = load i32, i32* %low, align 8, !dbg !1024
  %low9 = bitcast %union.dwords* %d to i32*, !dbg !1025
  %3 = load i32, i32* %low9, align 8, !dbg !1025
  %rem10 = urem i32 %2, %3, !dbg !1026
  %conv = zext i32 %rem10 to i64, !dbg !1027
  store i64 %conv, i64* %rem, align 8, !dbg !1028
  br label %if.end, !dbg !1029

if.end:                                           ; preds = %if.then6, %if.then5
  %low12 = bitcast %union.dwords* %n to i32*, !dbg !1030
  %4 = load i32, i32* %low12, align 8, !dbg !1030
  %low14 = bitcast %union.dwords* %d to i32*, !dbg !1031
  %5 = load i32, i32* %low14, align 8, !dbg !1031
  %div = udiv i32 %4, %5, !dbg !1032
  %conv15 = zext i32 %div to i64, !dbg !1033
  br label %return, !dbg !1034

if.end16:                                         ; preds = %if.then
  %tobool17.not = icmp eq i64* %rem, null, !dbg !1035
  br i1 %tobool17.not, label %if.end22, label %if.then18, !dbg !1035

if.then18:                                        ; preds = %if.end16
  %low20 = bitcast %union.dwords* %n to i32*, !dbg !1036
  %6 = load i32, i32* %low20, align 8, !dbg !1036
  %conv21 = zext i32 %6 to i64, !dbg !1037
  store i64 %conv21, i64* %rem, align 8, !dbg !1038
  br label %if.end22, !dbg !1039

if.end22:                                         ; preds = %if.then18, %if.end16
  br label %return, !dbg !1040

if.end23:                                         ; preds = %entry
  %low25 = bitcast %union.dwords* %d to i32*, !dbg !1041
  %7 = load i32, i32* %low25, align 8, !dbg !1041
  %cmp26 = icmp eq i32 %7, 0, !dbg !1042
  br i1 %cmp26, label %if.then28, label %if.else, !dbg !1043

if.then28:                                        ; preds = %if.end23
  %s29 = bitcast %union.dwords* %d to %struct.anon*, !dbg !1044
  %high30 = getelementptr inbounds %struct.anon, %struct.anon* %s29, i32 0, i32 1, !dbg !1045
  %8 = load i32, i32* %high30, align 4, !dbg !1045
  %cmp31 = icmp eq i32 %8, 0, !dbg !1046
  br i1 %cmp31, label %if.then33, label %if.end49, !dbg !1047

if.then33:                                        ; preds = %if.then28
  %tobool34.not = icmp eq i64* %rem, null, !dbg !1048
  br i1 %tobool34.not, label %if.end42, label %if.then35, !dbg !1048

if.then35:                                        ; preds = %if.then33
  %s36 = bitcast %union.dwords* %n to %struct.anon*, !dbg !1049
  %high37 = getelementptr inbounds %struct.anon, %struct.anon* %s36, i32 0, i32 1, !dbg !1050
  %9 = load i32, i32* %high37, align 4, !dbg !1050
  %low39 = bitcast %union.dwords* %d to i32*, !dbg !1051
  %10 = load i32, i32* %low39, align 8, !dbg !1051
  %rem40 = urem i32 %9, %10, !dbg !1052
  %conv41 = zext i32 %rem40 to i64, !dbg !1053
  store i64 %conv41, i64* %rem, align 8, !dbg !1054
  br label %if.end42, !dbg !1055

if.end42:                                         ; preds = %if.then35, %if.then33
  %s43 = bitcast %union.dwords* %n to %struct.anon*, !dbg !1056
  %high44 = getelementptr inbounds %struct.anon, %struct.anon* %s43, i32 0, i32 1, !dbg !1057
  %11 = load i32, i32* %high44, align 4, !dbg !1057
  %low46 = bitcast %union.dwords* %d to i32*, !dbg !1058
  %12 = load i32, i32* %low46, align 8, !dbg !1058
  %div47 = udiv i32 %11, %12, !dbg !1059
  %conv48 = zext i32 %div47 to i64, !dbg !1060
  br label %return, !dbg !1061

if.end49:                                         ; preds = %if.then28
  %low51 = bitcast %union.dwords* %n to i32*, !dbg !1062
  %13 = load i32, i32* %low51, align 8, !dbg !1062
  %cmp52 = icmp eq i32 %13, 0, !dbg !1063
  br i1 %cmp52, label %if.then54, label %if.end74, !dbg !1064

if.then54:                                        ; preds = %if.end49
  %tobool55.not = icmp eq i64* %rem, null, !dbg !1065
  br i1 %tobool55.not, label %if.end67, label %if.then56, !dbg !1065

if.then56:                                        ; preds = %if.then54
  %s57 = bitcast %union.dwords* %n to %struct.anon*, !dbg !1066
  %high58 = getelementptr inbounds %struct.anon, %struct.anon* %s57, i32 0, i32 1, !dbg !1067
  %14 = load i32, i32* %high58, align 4, !dbg !1067
  %s59 = bitcast %union.dwords* %d to %struct.anon*, !dbg !1068
  %high60 = getelementptr inbounds %struct.anon, %struct.anon* %s59, i32 0, i32 1, !dbg !1069
  %15 = load i32, i32* %high60, align 4, !dbg !1069
  %rem61 = urem i32 %14, %15, !dbg !1070
  %s62 = bitcast %union.dwords* %r to %struct.anon*, !dbg !1071
  %high63 = getelementptr inbounds %struct.anon, %struct.anon* %s62, i32 0, i32 1, !dbg !1072
  store i32 %rem61, i32* %high63, align 4, !dbg !1073
  %low65 = bitcast %union.dwords* %r to i32*, !dbg !1074
  store i32 0, i32* %low65, align 8, !dbg !1075
  %all66 = getelementptr inbounds %union.dwords, %union.dwords* %r, i32 0, i32 0, !dbg !1076
  %16 = load i64, i64* %all66, align 8, !dbg !1076
  store i64 %16, i64* %rem, align 8, !dbg !1077
  br label %if.end67, !dbg !1078

if.end67:                                         ; preds = %if.then56, %if.then54
  %s68 = bitcast %union.dwords* %n to %struct.anon*, !dbg !1079
  %high69 = getelementptr inbounds %struct.anon, %struct.anon* %s68, i32 0, i32 1, !dbg !1080
  %17 = load i32, i32* %high69, align 4, !dbg !1080
  %s70 = bitcast %union.dwords* %d to %struct.anon*, !dbg !1081
  %high71 = getelementptr inbounds %struct.anon, %struct.anon* %s70, i32 0, i32 1, !dbg !1082
  %18 = load i32, i32* %high71, align 4, !dbg !1082
  %div72 = udiv i32 %17, %18, !dbg !1083
  %conv73 = zext i32 %div72 to i64, !dbg !1084
  br label %return, !dbg !1085

if.end74:                                         ; preds = %if.end49
  %s75 = bitcast %union.dwords* %d to %struct.anon*, !dbg !1086
  %high76 = getelementptr inbounds %struct.anon, %struct.anon* %s75, i32 0, i32 1, !dbg !1087
  %19 = load i32, i32* %high76, align 4, !dbg !1087
  %s77 = bitcast %union.dwords* %d to %struct.anon*, !dbg !1088
  %high78 = getelementptr inbounds %struct.anon, %struct.anon* %s77, i32 0, i32 1, !dbg !1089
  %20 = load i32, i32* %high78, align 4, !dbg !1089
  %sub = add i32 %20, -1, !dbg !1090
  %and = and i32 %19, %sub, !dbg !1091
  %cmp79 = icmp eq i32 %and, 0, !dbg !1092
  br i1 %cmp79, label %if.then81, label %if.end103, !dbg !1093

if.then81:                                        ; preds = %if.end74
  %tobool82.not = icmp eq i64* %rem, null, !dbg !1094
  br i1 %tobool82.not, label %if.end97, label %if.then83, !dbg !1094

if.then83:                                        ; preds = %if.then81
  %low85 = bitcast %union.dwords* %n to i32*, !dbg !1095
  %21 = load i32, i32* %low85, align 8, !dbg !1095
  %low87 = bitcast %union.dwords* %r to i32*, !dbg !1096
  store i32 %21, i32* %low87, align 8, !dbg !1097
  %s88 = bitcast %union.dwords* %n to %struct.anon*, !dbg !1098
  %high89 = getelementptr inbounds %struct.anon, %struct.anon* %s88, i32 0, i32 1, !dbg !1099
  %22 = load i32, i32* %high89, align 4, !dbg !1099
  %s90 = bitcast %union.dwords* %d to %struct.anon*, !dbg !1100
  %high91 = getelementptr inbounds %struct.anon, %struct.anon* %s90, i32 0, i32 1, !dbg !1101
  %23 = load i32, i32* %high91, align 4, !dbg !1101
  %sub92 = add i32 %23, -1, !dbg !1102
  %and93 = and i32 %22, %sub92, !dbg !1103
  %s94 = bitcast %union.dwords* %r to %struct.anon*, !dbg !1104
  %high95 = getelementptr inbounds %struct.anon, %struct.anon* %s94, i32 0, i32 1, !dbg !1105
  store i32 %and93, i32* %high95, align 4, !dbg !1106
  %all96 = getelementptr inbounds %union.dwords, %union.dwords* %r, i32 0, i32 0, !dbg !1107
  %24 = load i64, i64* %all96, align 8, !dbg !1107
  store i64 %24, i64* %rem, align 8, !dbg !1108
  br label %if.end97, !dbg !1109

if.end97:                                         ; preds = %if.then83, %if.then81
  %s98 = bitcast %union.dwords* %n to %struct.anon*, !dbg !1110
  %high99 = getelementptr inbounds %struct.anon, %struct.anon* %s98, i32 0, i32 1, !dbg !1111
  %25 = load i32, i32* %high99, align 4, !dbg !1111
  %s100 = bitcast %union.dwords* %d to %struct.anon*, !dbg !1112
  %high101 = getelementptr inbounds %struct.anon, %struct.anon* %s100, i32 0, i32 1, !dbg !1113
  %26 = load i32, i32* %high101, align 4, !dbg !1113
  %27 = call i32 @llvm.cttz.i32(i32 %26, i1 false), !dbg !1114, !range !892
  %shr = lshr i32 %25, %27, !dbg !1115
  %conv102 = zext i32 %shr to i64, !dbg !1116
  br label %return, !dbg !1117

if.end103:                                        ; preds = %if.end74
  %s104 = bitcast %union.dwords* %d to %struct.anon*, !dbg !1118
  %high105 = getelementptr inbounds %struct.anon, %struct.anon* %s104, i32 0, i32 1, !dbg !1119
  %28 = load i32, i32* %high105, align 4, !dbg !1119
  %29 = call i32 @llvm.ctlz.i32(i32 %28, i1 false), !dbg !1120, !range !892
  %s106 = bitcast %union.dwords* %n to %struct.anon*, !dbg !1121
  %high107 = getelementptr inbounds %struct.anon, %struct.anon* %s106, i32 0, i32 1, !dbg !1122
  %30 = load i32, i32* %high107, align 4, !dbg !1122
  %31 = call i32 @llvm.ctlz.i32(i32 %30, i1 false), !dbg !1123, !range !892
  %sub108 = sub nsw i32 %29, %31, !dbg !1124
  %cmp109 = icmp ugt i32 %sub108, 30, !dbg !1125
  br i1 %cmp109, label %if.then111, label %if.end116, !dbg !1126

if.then111:                                       ; preds = %if.end103
  %tobool112.not = icmp eq i64* %rem, null, !dbg !1127
  br i1 %tobool112.not, label %if.end115, label %if.then113, !dbg !1127

if.then113:                                       ; preds = %if.then111
  %all114 = getelementptr inbounds %union.dwords, %union.dwords* %n, i32 0, i32 0, !dbg !1128
  %32 = load i64, i64* %all114, align 8, !dbg !1128
  store i64 %32, i64* %rem, align 8, !dbg !1129
  br label %if.end115, !dbg !1130

if.end115:                                        ; preds = %if.then113, %if.then111
  br label %return, !dbg !1131

if.end116:                                        ; preds = %if.end103
  %inc = add nsw i32 %sub108, 1, !dbg !1132
  %low118 = bitcast %union.dwords* %q to i32*, !dbg !1133
  store i32 0, i32* %low118, align 8, !dbg !1134
  %low120 = bitcast %union.dwords* %n to i32*, !dbg !1135
  %33 = load i32, i32* %low120, align 8, !dbg !1135
  %sub121 = sub nsw i32 31, %sub108, !dbg !1136
  %shl = shl i32 %33, %sub121, !dbg !1137
  %s122 = bitcast %union.dwords* %q to %struct.anon*, !dbg !1138
  %high123 = getelementptr inbounds %struct.anon, %struct.anon* %s122, i32 0, i32 1, !dbg !1139
  store i32 %shl, i32* %high123, align 4, !dbg !1140
  %s124 = bitcast %union.dwords* %n to %struct.anon*, !dbg !1141
  %high125 = getelementptr inbounds %struct.anon, %struct.anon* %s124, i32 0, i32 1, !dbg !1142
  %34 = load i32, i32* %high125, align 4, !dbg !1142
  %shr126 = lshr i32 %34, %inc, !dbg !1143
  %s127 = bitcast %union.dwords* %r to %struct.anon*, !dbg !1144
  %high128 = getelementptr inbounds %struct.anon, %struct.anon* %s127, i32 0, i32 1, !dbg !1145
  store i32 %shr126, i32* %high128, align 4, !dbg !1146
  %s129 = bitcast %union.dwords* %n to %struct.anon*, !dbg !1147
  %high130 = getelementptr inbounds %struct.anon, %struct.anon* %s129, i32 0, i32 1, !dbg !1148
  %35 = load i32, i32* %high130, align 4, !dbg !1148
  %sub131 = sub nsw i32 31, %sub108, !dbg !1149
  %shl132 = shl i32 %35, %sub131, !dbg !1150
  %low134 = bitcast %union.dwords* %n to i32*, !dbg !1151
  %36 = load i32, i32* %low134, align 8, !dbg !1151
  %shr135 = lshr i32 %36, %inc, !dbg !1152
  %or = or i32 %shl132, %shr135, !dbg !1153
  %low137 = bitcast %union.dwords* %r to i32*, !dbg !1154
  store i32 %or, i32* %low137, align 8, !dbg !1155
  br label %if.end317, !dbg !1156

if.else:                                          ; preds = %if.end23
  %s138 = bitcast %union.dwords* %d to %struct.anon*, !dbg !1157
  %high139 = getelementptr inbounds %struct.anon, %struct.anon* %s138, i32 0, i32 1, !dbg !1158
  %37 = load i32, i32* %high139, align 4, !dbg !1158
  %cmp140 = icmp eq i32 %37, 0, !dbg !1159
  br i1 %cmp140, label %if.then142, label %if.else263, !dbg !1160

if.then142:                                       ; preds = %if.else
  %low144 = bitcast %union.dwords* %d to i32*, !dbg !1161
  %38 = load i32, i32* %low144, align 8, !dbg !1161
  %39 = call i32 @llvm.ctpop.i32(i32 %38), !dbg !1162, !range !892
  %cmp149 = icmp ult i32 %39, 2, !dbg !1162
  br i1 %cmp149, label %if.then151, label %if.end187, !dbg !1163

if.then151:                                       ; preds = %if.then142
  %tobool152.not = icmp eq i64* %rem, null, !dbg !1164
  br i1 %tobool152.not, label %if.end161, label %if.then153, !dbg !1164

if.then153:                                       ; preds = %if.then151
  %low155 = bitcast %union.dwords* %n to i32*, !dbg !1165
  %40 = load i32, i32* %low155, align 8, !dbg !1165
  %low157 = bitcast %union.dwords* %d to i32*, !dbg !1166
  %41 = load i32, i32* %low157, align 8, !dbg !1166
  %sub158 = add i32 %41, -1, !dbg !1167
  %and159 = and i32 %40, %sub158, !dbg !1168
  %conv160 = zext i32 %and159 to i64, !dbg !1169
  store i64 %conv160, i64* %rem, align 8, !dbg !1170
  br label %if.end161, !dbg !1171

if.end161:                                        ; preds = %if.then153, %if.then151
  %low163 = bitcast %union.dwords* %d to i32*, !dbg !1172
  %42 = load i32, i32* %low163, align 8, !dbg !1172
  %cmp164 = icmp eq i32 %42, 1, !dbg !1173
  br i1 %cmp164, label %if.then166, label %if.end168, !dbg !1174

if.then166:                                       ; preds = %if.end161
  %all167 = getelementptr inbounds %union.dwords, %union.dwords* %n, i32 0, i32 0, !dbg !1175
  %43 = load i64, i64* %all167, align 8, !dbg !1175
  br label %return, !dbg !1176

if.end168:                                        ; preds = %if.end161
  %low170 = bitcast %union.dwords* %d to i32*, !dbg !1177
  %44 = load i32, i32* %low170, align 8, !dbg !1177
  %45 = call i32 @llvm.cttz.i32(i32 %44, i1 false), !dbg !1178, !range !892
  %s171 = bitcast %union.dwords* %n to %struct.anon*, !dbg !1179
  %high172 = getelementptr inbounds %struct.anon, %struct.anon* %s171, i32 0, i32 1, !dbg !1180
  %46 = load i32, i32* %high172, align 4, !dbg !1180
  %shr173 = lshr i32 %46, %45, !dbg !1181
  %s174 = bitcast %union.dwords* %q to %struct.anon*, !dbg !1182
  %high175 = getelementptr inbounds %struct.anon, %struct.anon* %s174, i32 0, i32 1, !dbg !1183
  store i32 %shr173, i32* %high175, align 4, !dbg !1184
  %s176 = bitcast %union.dwords* %n to %struct.anon*, !dbg !1185
  %high177 = getelementptr inbounds %struct.anon, %struct.anon* %s176, i32 0, i32 1, !dbg !1186
  %47 = load i32, i32* %high177, align 4, !dbg !1186
  %sub178 = sub nuw nsw i32 32, %45, !dbg !1187
  %shl179 = shl i32 %47, %sub178, !dbg !1188
  %low181 = bitcast %union.dwords* %n to i32*, !dbg !1189
  %48 = load i32, i32* %low181, align 8, !dbg !1189
  %shr182 = lshr i32 %48, %45, !dbg !1190
  %or183 = or i32 %shl179, %shr182, !dbg !1191
  %low185 = bitcast %union.dwords* %q to i32*, !dbg !1192
  store i32 %or183, i32* %low185, align 8, !dbg !1193
  %all186 = getelementptr inbounds %union.dwords, %union.dwords* %q, i32 0, i32 0, !dbg !1194
  %49 = load i64, i64* %all186, align 8, !dbg !1194
  br label %return, !dbg !1195

if.end187:                                        ; preds = %if.then142
  %low189 = bitcast %union.dwords* %d to i32*, !dbg !1196
  %50 = load i32, i32* %low189, align 8, !dbg !1196
  %51 = call i32 @llvm.ctlz.i32(i32 %50, i1 false), !dbg !1197, !range !892
  %add = add nuw nsw i32 %51, 33, !dbg !1198
  %s190 = bitcast %union.dwords* %n to %struct.anon*, !dbg !1199
  %high191 = getelementptr inbounds %struct.anon, %struct.anon* %s190, i32 0, i32 1, !dbg !1200
  %52 = load i32, i32* %high191, align 4, !dbg !1200
  %53 = call i32 @llvm.ctlz.i32(i32 %52, i1 false), !dbg !1201, !range !892
  %sub192 = sub nsw i32 %add, %53, !dbg !1202
  %cmp193 = icmp eq i32 %sub192, 32, !dbg !1203
  br i1 %cmp193, label %if.then195, label %if.else208, !dbg !1204

if.then195:                                       ; preds = %if.end187
  %low197 = bitcast %union.dwords* %q to i32*, !dbg !1205
  store i32 0, i32* %low197, align 8, !dbg !1206
  %low199 = bitcast %union.dwords* %n to i32*, !dbg !1207
  %54 = load i32, i32* %low199, align 8, !dbg !1207
  %s200 = bitcast %union.dwords* %q to %struct.anon*, !dbg !1208
  %high201 = getelementptr inbounds %struct.anon, %struct.anon* %s200, i32 0, i32 1, !dbg !1209
  store i32 %54, i32* %high201, align 4, !dbg !1210
  %s202 = bitcast %union.dwords* %r to %struct.anon*, !dbg !1211
  %high203 = getelementptr inbounds %struct.anon, %struct.anon* %s202, i32 0, i32 1, !dbg !1212
  store i32 0, i32* %high203, align 4, !dbg !1213
  %s204 = bitcast %union.dwords* %n to %struct.anon*, !dbg !1214
  %high205 = getelementptr inbounds %struct.anon, %struct.anon* %s204, i32 0, i32 1, !dbg !1215
  %55 = load i32, i32* %high205, align 4, !dbg !1215
  %low207 = bitcast %union.dwords* %r to i32*, !dbg !1216
  store i32 %55, i32* %low207, align 8, !dbg !1217
  br label %if.end262, !dbg !1218

if.else208:                                       ; preds = %if.end187
  %cmp209 = icmp ult i32 %sub192, 32, !dbg !1219
  br i1 %cmp209, label %if.then211, label %if.else235, !dbg !1220

if.then211:                                       ; preds = %if.else208
  %low213 = bitcast %union.dwords* %q to i32*, !dbg !1221
  store i32 0, i32* %low213, align 8, !dbg !1222
  %low215 = bitcast %union.dwords* %n to i32*, !dbg !1223
  %56 = load i32, i32* %low215, align 8, !dbg !1223
  %sub216 = sub nsw i32 32, %sub192, !dbg !1224
  %shl217 = shl i32 %56, %sub216, !dbg !1225
  %s218 = bitcast %union.dwords* %q to %struct.anon*, !dbg !1226
  %high219 = getelementptr inbounds %struct.anon, %struct.anon* %s218, i32 0, i32 1, !dbg !1227
  store i32 %shl217, i32* %high219, align 4, !dbg !1228
  %s220 = bitcast %union.dwords* %n to %struct.anon*, !dbg !1229
  %high221 = getelementptr inbounds %struct.anon, %struct.anon* %s220, i32 0, i32 1, !dbg !1230
  %57 = load i32, i32* %high221, align 4, !dbg !1230
  %shr222 = lshr i32 %57, %sub192, !dbg !1231
  %s223 = bitcast %union.dwords* %r to %struct.anon*, !dbg !1232
  %high224 = getelementptr inbounds %struct.anon, %struct.anon* %s223, i32 0, i32 1, !dbg !1233
  store i32 %shr222, i32* %high224, align 4, !dbg !1234
  %s225 = bitcast %union.dwords* %n to %struct.anon*, !dbg !1235
  %high226 = getelementptr inbounds %struct.anon, %struct.anon* %s225, i32 0, i32 1, !dbg !1236
  %58 = load i32, i32* %high226, align 4, !dbg !1236
  %sub227 = sub nsw i32 32, %sub192, !dbg !1237
  %shl228 = shl i32 %58, %sub227, !dbg !1238
  %low230 = bitcast %union.dwords* %n to i32*, !dbg !1239
  %59 = load i32, i32* %low230, align 8, !dbg !1239
  %shr231 = lshr i32 %59, %sub192, !dbg !1240
  %or232 = or i32 %shl228, %shr231, !dbg !1241
  %low234 = bitcast %union.dwords* %r to i32*, !dbg !1242
  store i32 %or232, i32* %low234, align 8, !dbg !1243
  br label %if.end261, !dbg !1244

if.else235:                                       ; preds = %if.else208
  %low237 = bitcast %union.dwords* %n to i32*, !dbg !1245
  %60 = load i32, i32* %low237, align 8, !dbg !1245
  %sub238 = sub nsw i32 64, %sub192, !dbg !1246
  %shl239 = shl i32 %60, %sub238, !dbg !1247
  %low241 = bitcast %union.dwords* %q to i32*, !dbg !1248
  store i32 %shl239, i32* %low241, align 8, !dbg !1249
  %s242 = bitcast %union.dwords* %n to %struct.anon*, !dbg !1250
  %high243 = getelementptr inbounds %struct.anon, %struct.anon* %s242, i32 0, i32 1, !dbg !1251
  %61 = load i32, i32* %high243, align 4, !dbg !1251
  %sub244 = sub nsw i32 64, %sub192, !dbg !1252
  %shl245 = shl i32 %61, %sub244, !dbg !1253
  %low247 = bitcast %union.dwords* %n to i32*, !dbg !1254
  %62 = load i32, i32* %low247, align 8, !dbg !1254
  %sub248 = add nsw i32 %sub192, -32, !dbg !1255
  %shr249 = lshr i32 %62, %sub248, !dbg !1256
  %or250 = or i32 %shl245, %shr249, !dbg !1257
  %s251 = bitcast %union.dwords* %q to %struct.anon*, !dbg !1258
  %high252 = getelementptr inbounds %struct.anon, %struct.anon* %s251, i32 0, i32 1, !dbg !1259
  store i32 %or250, i32* %high252, align 4, !dbg !1260
  %s253 = bitcast %union.dwords* %r to %struct.anon*, !dbg !1261
  %high254 = getelementptr inbounds %struct.anon, %struct.anon* %s253, i32 0, i32 1, !dbg !1262
  store i32 0, i32* %high254, align 4, !dbg !1263
  %s255 = bitcast %union.dwords* %n to %struct.anon*, !dbg !1264
  %high256 = getelementptr inbounds %struct.anon, %struct.anon* %s255, i32 0, i32 1, !dbg !1265
  %63 = load i32, i32* %high256, align 4, !dbg !1265
  %sub257 = add nsw i32 %sub192, -32, !dbg !1266
  %shr258 = lshr i32 %63, %sub257, !dbg !1267
  %low260 = bitcast %union.dwords* %r to i32*, !dbg !1268
  store i32 %shr258, i32* %low260, align 8, !dbg !1269
  br label %if.end261

if.end261:                                        ; preds = %if.else235, %if.then211
  br label %if.end262

if.end262:                                        ; preds = %if.end261, %if.then195
  br label %if.end316, !dbg !1270

if.else263:                                       ; preds = %if.else
  %s264 = bitcast %union.dwords* %d to %struct.anon*, !dbg !1271
  %high265 = getelementptr inbounds %struct.anon, %struct.anon* %s264, i32 0, i32 1, !dbg !1272
  %64 = load i32, i32* %high265, align 4, !dbg !1272
  %65 = call i32 @llvm.ctlz.i32(i32 %64, i1 false), !dbg !1273, !range !892
  %s266 = bitcast %union.dwords* %n to %struct.anon*, !dbg !1274
  %high267 = getelementptr inbounds %struct.anon, %struct.anon* %s266, i32 0, i32 1, !dbg !1275
  %66 = load i32, i32* %high267, align 4, !dbg !1275
  %67 = call i32 @llvm.ctlz.i32(i32 %66, i1 false), !dbg !1276, !range !892
  %sub268 = sub nsw i32 %65, %67, !dbg !1277
  %cmp269 = icmp ugt i32 %sub268, 31, !dbg !1278
  br i1 %cmp269, label %if.then271, label %if.end276, !dbg !1279

if.then271:                                       ; preds = %if.else263
  %tobool272.not = icmp eq i64* %rem, null, !dbg !1280
  br i1 %tobool272.not, label %if.end275, label %if.then273, !dbg !1280

if.then273:                                       ; preds = %if.then271
  %all274 = getelementptr inbounds %union.dwords, %union.dwords* %n, i32 0, i32 0, !dbg !1281
  %68 = load i64, i64* %all274, align 8, !dbg !1281
  store i64 %68, i64* %rem, align 8, !dbg !1282
  br label %if.end275, !dbg !1283

if.end275:                                        ; preds = %if.then273, %if.then271
  br label %return, !dbg !1284

if.end276:                                        ; preds = %if.else263
  %inc277 = add nsw i32 %sub268, 1, !dbg !1285
  %low279 = bitcast %union.dwords* %q to i32*, !dbg !1286
  store i32 0, i32* %low279, align 8, !dbg !1287
  %cmp280 = icmp eq i32 %inc277, 32, !dbg !1288
  br i1 %cmp280, label %if.then282, label %if.else293, !dbg !1289

if.then282:                                       ; preds = %if.end276
  %low284 = bitcast %union.dwords* %n to i32*, !dbg !1290
  %69 = load i32, i32* %low284, align 8, !dbg !1290
  %s285 = bitcast %union.dwords* %q to %struct.anon*, !dbg !1291
  %high286 = getelementptr inbounds %struct.anon, %struct.anon* %s285, i32 0, i32 1, !dbg !1292
  store i32 %69, i32* %high286, align 4, !dbg !1293
  %s287 = bitcast %union.dwords* %r to %struct.anon*, !dbg !1294
  %high288 = getelementptr inbounds %struct.anon, %struct.anon* %s287, i32 0, i32 1, !dbg !1295
  store i32 0, i32* %high288, align 4, !dbg !1296
  %s289 = bitcast %union.dwords* %n to %struct.anon*, !dbg !1297
  %high290 = getelementptr inbounds %struct.anon, %struct.anon* %s289, i32 0, i32 1, !dbg !1298
  %70 = load i32, i32* %high290, align 4, !dbg !1298
  %low292 = bitcast %union.dwords* %r to i32*, !dbg !1299
  store i32 %70, i32* %low292, align 8, !dbg !1300
  br label %if.end315, !dbg !1301

if.else293:                                       ; preds = %if.end276
  %low295 = bitcast %union.dwords* %n to i32*, !dbg !1302
  %71 = load i32, i32* %low295, align 8, !dbg !1302
  %sub296 = sub nsw i32 31, %sub268, !dbg !1303
  %shl297 = shl i32 %71, %sub296, !dbg !1304
  %s298 = bitcast %union.dwords* %q to %struct.anon*, !dbg !1305
  %high299 = getelementptr inbounds %struct.anon, %struct.anon* %s298, i32 0, i32 1, !dbg !1306
  store i32 %shl297, i32* %high299, align 4, !dbg !1307
  %s300 = bitcast %union.dwords* %n to %struct.anon*, !dbg !1308
  %high301 = getelementptr inbounds %struct.anon, %struct.anon* %s300, i32 0, i32 1, !dbg !1309
  %72 = load i32, i32* %high301, align 4, !dbg !1309
  %shr302 = lshr i32 %72, %inc277, !dbg !1310
  %s303 = bitcast %union.dwords* %r to %struct.anon*, !dbg !1311
  %high304 = getelementptr inbounds %struct.anon, %struct.anon* %s303, i32 0, i32 1, !dbg !1312
  store i32 %shr302, i32* %high304, align 4, !dbg !1313
  %s305 = bitcast %union.dwords* %n to %struct.anon*, !dbg !1314
  %high306 = getelementptr inbounds %struct.anon, %struct.anon* %s305, i32 0, i32 1, !dbg !1315
  %73 = load i32, i32* %high306, align 4, !dbg !1315
  %sub307 = sub nsw i32 31, %sub268, !dbg !1316
  %shl308 = shl i32 %73, %sub307, !dbg !1317
  %low310 = bitcast %union.dwords* %n to i32*, !dbg !1318
  %74 = load i32, i32* %low310, align 8, !dbg !1318
  %shr311 = lshr i32 %74, %inc277, !dbg !1319
  %or312 = or i32 %shl308, %shr311, !dbg !1320
  %low314 = bitcast %union.dwords* %r to i32*, !dbg !1321
  store i32 %or312, i32* %low314, align 8, !dbg !1322
  br label %if.end315

if.end315:                                        ; preds = %if.else293, %if.then282
  br label %if.end316

if.end316:                                        ; preds = %if.end315, %if.end262
  %sr.0 = phi i32 [ %sub192, %if.end262 ], [ %inc277, %if.end315 ], !dbg !1323
  br label %if.end317

if.end317:                                        ; preds = %if.end316, %if.end116
  %sr.1 = phi i32 [ %inc, %if.end116 ], [ %sr.0, %if.end316 ], !dbg !1323
  br label %for.cond, !dbg !1324

for.cond:                                         ; preds = %for.inc, %if.end317
  %sr.2 = phi i32 [ %sr.1, %if.end317 ], [ %dec, %for.inc ], !dbg !1323
  %carry.0 = phi i32 [ 0, %if.end317 ], [ %conv360, %for.inc ], !dbg !1323
  %cmp318.not = icmp eq i32 %sr.2, 0, !dbg !1325
  br i1 %cmp318.not, label %for.end, label %for.body, !dbg !1324

for.body:                                         ; preds = %for.cond
  %s320 = bitcast %union.dwords* %r to %struct.anon*, !dbg !1326
  %high321 = getelementptr inbounds %struct.anon, %struct.anon* %s320, i32 0, i32 1, !dbg !1327
  %75 = load i32, i32* %high321, align 4, !dbg !1327
  %low324 = bitcast %union.dwords* %r to i32*, !dbg !1328
  %76 = load i32, i32* %low324, align 8, !dbg !1328
  %or326 = call i32 @llvm.fshl.i32(i32 %75, i32 %76, i32 1), !dbg !1329
  %s327 = bitcast %union.dwords* %r to %struct.anon*, !dbg !1330
  %high328 = getelementptr inbounds %struct.anon, %struct.anon* %s327, i32 0, i32 1, !dbg !1331
  store i32 %or326, i32* %high328, align 4, !dbg !1332
  %s332 = bitcast %union.dwords* %q to %struct.anon*, !dbg !1333
  %high333 = getelementptr inbounds %struct.anon, %struct.anon* %s332, i32 0, i32 1, !dbg !1334
  %77 = load i32, i32* %high333, align 4, !dbg !1334
  %or335 = call i32 @llvm.fshl.i32(i32 %76, i32 %77, i32 1), !dbg !1335
  %low337 = bitcast %union.dwords* %r to i32*, !dbg !1336
  store i32 %or335, i32* %low337, align 8, !dbg !1337
  %s338 = bitcast %union.dwords* %q to %struct.anon*, !dbg !1338
  %high339 = getelementptr inbounds %struct.anon, %struct.anon* %s338, i32 0, i32 1, !dbg !1339
  %78 = load i32, i32* %high339, align 4, !dbg !1339
  %low342 = bitcast %union.dwords* %q to i32*, !dbg !1340
  %79 = load i32, i32* %low342, align 8, !dbg !1340
  %or344 = call i32 @llvm.fshl.i32(i32 %78, i32 %79, i32 1), !dbg !1341
  %s345 = bitcast %union.dwords* %q to %struct.anon*, !dbg !1342
  %high346 = getelementptr inbounds %struct.anon, %struct.anon* %s345, i32 0, i32 1, !dbg !1343
  store i32 %or344, i32* %high346, align 4, !dbg !1344
  %shl349 = shl i32 %79, 1, !dbg !1345
  %or350 = or i32 %shl349, %carry.0, !dbg !1346
  %low352 = bitcast %union.dwords* %q to i32*, !dbg !1347
  store i32 %or350, i32* %low352, align 8, !dbg !1348
  %all354 = getelementptr inbounds %union.dwords, %union.dwords* %d, i32 0, i32 0, !dbg !1349
  %80 = load i64, i64* %all354, align 8, !dbg !1349
  %all355 = getelementptr inbounds %union.dwords, %union.dwords* %r, i32 0, i32 0, !dbg !1350
  %81 = load i64, i64* %all355, align 8, !dbg !1350
  %82 = xor i64 %81, -1, !dbg !1351
  %sub357 = add i64 %80, %82, !dbg !1351
  %isneg = icmp slt i64 %sub357, 0, !dbg !1352
  %and362 = select i1 %isneg, i64 %80, i64 0, !dbg !1352
  %all363 = getelementptr inbounds %union.dwords, %union.dwords* %r, i32 0, i32 0, !dbg !1353
  %sub364 = sub i64 %81, %and362, !dbg !1354
  store i64 %sub364, i64* %all363, align 8, !dbg !1354
  br label %for.inc, !dbg !1355

for.inc:                                          ; preds = %for.body
  %and359 = lshr i64 %sub357, 63, !dbg !1356
  %conv360 = trunc i64 %and359 to i32, !dbg !1357
  %dec = add i32 %sr.2, -1, !dbg !1358
  br label %for.cond, !dbg !1324, !llvm.loop !1359

for.end:                                          ; preds = %for.cond
  %all365 = getelementptr inbounds %union.dwords, %union.dwords* %q, i32 0, i32 0, !dbg !1360
  %83 = load i64, i64* %all365, align 8, !dbg !1360
  %shl366 = shl i64 %83, 1, !dbg !1361
  %conv367 = zext i32 %carry.0 to i64, !dbg !1362
  %or368 = or i64 %shl366, %conv367, !dbg !1363
  %all369 = getelementptr inbounds %union.dwords, %union.dwords* %q, i32 0, i32 0, !dbg !1364
  store i64 %or368, i64* %all369, align 8, !dbg !1365
  %tobool370.not = icmp eq i64* %rem, null, !dbg !1366
  br i1 %tobool370.not, label %if.end373, label %if.then371, !dbg !1366

if.then371:                                       ; preds = %for.end
  %all372 = getelementptr inbounds %union.dwords, %union.dwords* %r, i32 0, i32 0, !dbg !1367
  %84 = load i64, i64* %all372, align 8, !dbg !1367
  store i64 %84, i64* %rem, align 8, !dbg !1368
  br label %if.end373, !dbg !1369

if.end373:                                        ; preds = %if.then371, %for.end
  %all374 = getelementptr inbounds %union.dwords, %union.dwords* %q, i32 0, i32 0, !dbg !1370
  %85 = load i64, i64* %all374, align 8, !dbg !1370
  br label %return, !dbg !1371

return:                                           ; preds = %if.end373, %if.end275, %if.end168, %if.then166, %if.end115, %if.end97, %if.end67, %if.end42, %if.end22, %if.end
  %retval.0 = phi i64 [ %conv15, %if.end ], [ 0, %if.end22 ], [ %conv48, %if.end42 ], [ %conv73, %if.end67 ], [ %conv102, %if.end97 ], [ 0, %if.end115 ], [ %85, %if.end373 ], [ %43, %if.then166 ], [ %49, %if.end168 ], [ 0, %if.end275 ], !dbg !1323
  ret i64 %retval.0, !dbg !1372
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__divmoddi4(i64 noundef %a, i64 noundef %b, i64* noundef %rem) #3 !dbg !1373 {
entry:
  %call = call arm_aapcscc i64 @__divdi3(i64 noundef %a, i64 noundef %b) #5, !dbg !1374
  %mul = mul nsw i64 %call, %b, !dbg !1375
  %sub = sub nsw i64 %a, %mul, !dbg !1376
  store i64 %sub, i64* %rem, align 8, !dbg !1377
  ret i64 %call, !dbg !1378
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__divmodsi4(i32 noundef %a, i32 noundef %b, i32* noundef %rem) #3 !dbg !1379 {
entry:
  %call = call arm_aapcscc i32 @__divsi3(i32 noundef %a, i32 noundef %b) #5, !dbg !1380
  %mul = mul nsw i32 %call, %b, !dbg !1381
  %sub = sub nsw i32 %a, %mul, !dbg !1382
  store i32 %sub, i32* %rem, align 4, !dbg !1383
  ret i32 %call, !dbg !1384
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__divsi3(i32 noundef %a, i32 noundef %b) #3 !dbg !1385 {
entry:
  %shr = ashr i32 %a, 31, !dbg !1386
  %shr1 = ashr i32 %b, 31, !dbg !1387
  %xor = xor i32 %shr, %a, !dbg !1388
  %sub = sub nsw i32 %xor, %shr, !dbg !1389
  %xor2 = xor i32 %shr1, %b, !dbg !1390
  %sub3 = sub nsw i32 %xor2, %shr1, !dbg !1391
  %xor4 = xor i32 %shr, %shr1, !dbg !1392
  %div = udiv i32 %sub, %sub3, !dbg !1393
  %xor5 = xor i32 %div, %xor4, !dbg !1394
  %sub6 = sub i32 %xor5, %xor4, !dbg !1395
  ret i32 %sub6, !dbg !1396
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__ffsdi2(i64 noundef %a) #3 !dbg !1397 {
entry:
  %x = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %x, i32 0, i32 0, !dbg !1398
  store i64 %a, i64* %all, align 8, !dbg !1399
  %low = bitcast %union.dwords* %x to i32*, !dbg !1400
  %0 = load i32, i32* %low, align 8, !dbg !1400
  %cmp = icmp eq i32 %0, 0, !dbg !1401
  br i1 %cmp, label %if.then, label %if.end6, !dbg !1402

if.then:                                          ; preds = %entry
  %s1 = bitcast %union.dwords* %x to %struct.anon*, !dbg !1403
  %high = getelementptr inbounds %struct.anon, %struct.anon* %s1, i32 0, i32 1, !dbg !1404
  %1 = load i32, i32* %high, align 4, !dbg !1404
  %cmp2 = icmp eq i32 %1, 0, !dbg !1405
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !1406

if.then3:                                         ; preds = %if.then
  br label %return, !dbg !1407

if.end:                                           ; preds = %if.then
  %s4 = bitcast %union.dwords* %x to %struct.anon*, !dbg !1408
  %high5 = getelementptr inbounds %struct.anon, %struct.anon* %s4, i32 0, i32 1, !dbg !1409
  %2 = load i32, i32* %high5, align 4, !dbg !1409
  %3 = call i32 @llvm.cttz.i32(i32 %2, i1 false), !dbg !1410, !range !892
  %add = add nuw nsw i32 %3, 33, !dbg !1411
  br label %return, !dbg !1412

if.end6:                                          ; preds = %entry
  %low8 = bitcast %union.dwords* %x to i32*, !dbg !1413
  %4 = load i32, i32* %low8, align 8, !dbg !1413
  %5 = call i32 @llvm.cttz.i32(i32 %4, i1 false), !dbg !1414, !range !892
  %add9 = add nuw nsw i32 %5, 1, !dbg !1415
  br label %return, !dbg !1416

return:                                           ; preds = %if.end6, %if.end, %if.then3
  %retval.0 = phi i32 [ 0, %if.then3 ], [ %add, %if.end ], [ %add9, %if.end6 ], !dbg !1417
  ret i32 %retval.0, !dbg !1418
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__ffssi2(i32 noundef %a) #3 !dbg !1419 {
entry:
  %cmp = icmp eq i32 %a, 0, !dbg !1420
  br i1 %cmp, label %if.then, label %if.end, !dbg !1421

if.then:                                          ; preds = %entry
  br label %return, !dbg !1422

if.end:                                           ; preds = %entry
  %0 = call i32 @llvm.cttz.i32(i32 %a, i1 true), !dbg !1423, !range !892
  %add = add nuw nsw i32 %0, 1, !dbg !1424
  br label %return, !dbg !1425

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %add, %if.end ], !dbg !1426
  ret i32 %retval.0, !dbg !1427
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__lshrdi3(i64 noundef %a, i32 noundef %b) #3 !dbg !1428 {
entry:
  %input = alloca %union.dwords, align 8
  %result = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %input, i32 0, i32 0, !dbg !1429
  store i64 %a, i64* %all, align 8, !dbg !1430
  %and = and i32 %b, 32, !dbg !1431
  %tobool.not = icmp eq i32 %and, 0, !dbg !1431
  br i1 %tobool.not, label %if.else, label %if.then, !dbg !1432

if.then:                                          ; preds = %entry
  %s = bitcast %union.dwords* %result to %struct.anon*, !dbg !1433
  %high = getelementptr inbounds %struct.anon, %struct.anon* %s, i32 0, i32 1, !dbg !1434
  store i32 0, i32* %high, align 4, !dbg !1435
  %s1 = bitcast %union.dwords* %input to %struct.anon*, !dbg !1436
  %high2 = getelementptr inbounds %struct.anon, %struct.anon* %s1, i32 0, i32 1, !dbg !1437
  %0 = load i32, i32* %high2, align 4, !dbg !1437
  %sub = add nsw i32 %b, -32, !dbg !1438
  %shr = lshr i32 %0, %sub, !dbg !1439
  %low = bitcast %union.dwords* %result to i32*, !dbg !1440
  store i32 %shr, i32* %low, align 8, !dbg !1441
  br label %if.end18, !dbg !1442

if.else:                                          ; preds = %entry
  %cmp = icmp eq i32 %b, 0, !dbg !1443
  br i1 %cmp, label %if.then4, label %if.end, !dbg !1444

if.then4:                                         ; preds = %if.else
  br label %return, !dbg !1445

if.end:                                           ; preds = %if.else
  %s5 = bitcast %union.dwords* %input to %struct.anon*, !dbg !1446
  %high6 = getelementptr inbounds %struct.anon, %struct.anon* %s5, i32 0, i32 1, !dbg !1447
  %1 = load i32, i32* %high6, align 4, !dbg !1447
  %shr7 = lshr i32 %1, %b, !dbg !1448
  %s8 = bitcast %union.dwords* %result to %struct.anon*, !dbg !1449
  %high9 = getelementptr inbounds %struct.anon, %struct.anon* %s8, i32 0, i32 1, !dbg !1450
  store i32 %shr7, i32* %high9, align 4, !dbg !1451
  %s10 = bitcast %union.dwords* %input to %struct.anon*, !dbg !1452
  %high11 = getelementptr inbounds %struct.anon, %struct.anon* %s10, i32 0, i32 1, !dbg !1453
  %2 = load i32, i32* %high11, align 4, !dbg !1453
  %sub12 = sub nsw i32 32, %b, !dbg !1454
  %shl = shl i32 %2, %sub12, !dbg !1455
  %low14 = bitcast %union.dwords* %input to i32*, !dbg !1456
  %3 = load i32, i32* %low14, align 8, !dbg !1456
  %shr15 = lshr i32 %3, %b, !dbg !1457
  %or = or i32 %shl, %shr15, !dbg !1458
  %low17 = bitcast %union.dwords* %result to i32*, !dbg !1459
  store i32 %or, i32* %low17, align 8, !dbg !1460
  br label %if.end18

if.end18:                                         ; preds = %if.end, %if.then
  %all19 = getelementptr inbounds %union.dwords, %union.dwords* %result, i32 0, i32 0, !dbg !1461
  %4 = load i64, i64* %all19, align 8, !dbg !1461
  br label %return, !dbg !1462

return:                                           ; preds = %if.end18, %if.then4
  %retval.0 = phi i64 [ %4, %if.end18 ], [ %a, %if.then4 ], !dbg !1463
  ret i64 %retval.0, !dbg !1464
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__moddi3(i64 noundef %a, i64 noundef %b) #3 !dbg !1465 {
entry:
  %r = alloca i64, align 8
  %0 = call i64 @llvm.abs.i64(i64 %b, i1 true), !dbg !1466
  %shr1 = ashr i64 %a, 63, !dbg !1467
  %xor2 = xor i64 %shr1, %a, !dbg !1468
  %sub3 = sub nsw i64 %xor2, %shr1, !dbg !1469
  %call = call arm_aapcscc i64 @__udivmoddi4(i64 noundef %sub3, i64 noundef %0, i64* noundef nonnull %r) #5, !dbg !1470
  %1 = load i64, i64* %r, align 8, !dbg !1471
  %xor4 = xor i64 %1, %shr1, !dbg !1472
  %sub5 = sub nsw i64 %xor4, %shr1, !dbg !1473
  ret i64 %sub5, !dbg !1474
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__modsi3(i32 noundef %a, i32 noundef %b) #3 !dbg !1475 {
entry:
  %call = call arm_aapcscc i32 @__divsi3(i32 noundef %a, i32 noundef %b) #5, !dbg !1476
  %mul = mul nsw i32 %call, %b, !dbg !1477
  %sub = sub nsw i32 %a, %mul, !dbg !1478
  ret i32 %sub, !dbg !1479
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__mulvdi3(i64 noundef %a, i64 noundef %b) #3 !dbg !1480 {
entry:
  %cmp = icmp eq i64 %a, -9223372036854775808, !dbg !1481
  br i1 %cmp, label %if.then, label %if.end4, !dbg !1482

if.then:                                          ; preds = %entry
  %cmp1 = icmp eq i64 %b, 0, !dbg !1483
  br i1 %cmp1, label %if.then3, label %lor.lhs.false, !dbg !1484

lor.lhs.false:                                    ; preds = %if.then
  %cmp2 = icmp eq i64 %b, 1, !dbg !1485
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !1486

if.then3:                                         ; preds = %lor.lhs.false, %if.then
  br label %return, !dbg !1487

if.end:                                           ; preds = %lor.lhs.false
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i32 noundef 31, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvdi3, i32 0, i32 0)) #6, !dbg !1488
  unreachable, !dbg !1488

if.end4:                                          ; preds = %entry
  %cmp5 = icmp eq i64 %b, -9223372036854775808, !dbg !1489
  br i1 %cmp5, label %if.then6, label %if.end13, !dbg !1490

if.then6:                                         ; preds = %if.end4
  %cmp7 = icmp eq i64 %a, 0, !dbg !1491
  br i1 %cmp7, label %if.then10, label %lor.lhs.false8, !dbg !1492

lor.lhs.false8:                                   ; preds = %if.then6
  %cmp9 = icmp eq i64 %a, 1, !dbg !1493
  br i1 %cmp9, label %if.then10, label %if.end12, !dbg !1494

if.then10:                                        ; preds = %lor.lhs.false8, %if.then6
  br label %return, !dbg !1495

if.end12:                                         ; preds = %lor.lhs.false8
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i32 noundef 37, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvdi3, i32 0, i32 0)) #6, !dbg !1496
  unreachable, !dbg !1496

if.end13:                                         ; preds = %if.end4
  %shr = ashr i64 %a, 63, !dbg !1497
  %xor = xor i64 %shr, %a, !dbg !1498
  %sub = sub nsw i64 %xor, %shr, !dbg !1499
  %shr14 = ashr i64 %b, 63, !dbg !1500
  %xor15 = xor i64 %shr14, %b, !dbg !1501
  %sub16 = sub nsw i64 %xor15, %shr14, !dbg !1502
  %cmp17 = icmp slt i64 %sub, 2, !dbg !1503
  br i1 %cmp17, label %if.then20, label %lor.lhs.false18, !dbg !1504

lor.lhs.false18:                                  ; preds = %if.end13
  %cmp19 = icmp slt i64 %sub16, 2, !dbg !1505
  br i1 %cmp19, label %if.then20, label %if.end22, !dbg !1506

if.then20:                                        ; preds = %lor.lhs.false18, %if.end13
  br label %return, !dbg !1507

if.end22:                                         ; preds = %lor.lhs.false18
  %cmp23 = icmp eq i64 %shr, %shr14, !dbg !1508
  br i1 %cmp23, label %if.then24, label %if.else, !dbg !1509

if.then24:                                        ; preds = %if.end22
  %div = sdiv i64 9223372036854775807, %sub16, !dbg !1510
  %cmp25 = icmp sgt i64 %sub, %div, !dbg !1511
  br i1 %cmp25, label %if.then26, label %if.end27, !dbg !1512

if.then26:                                        ; preds = %if.then24
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i32 noundef 48, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvdi3, i32 0, i32 0)) #6, !dbg !1513
  unreachable, !dbg !1513

if.end27:                                         ; preds = %if.then24
  br label %if.end33, !dbg !1514

if.else:                                          ; preds = %if.end22
  %sub28 = sub nsw i64 0, %sub16, !dbg !1515
  %div29 = sdiv i64 -9223372036854775808, %sub28, !dbg !1516
  %cmp30 = icmp sgt i64 %sub, %div29, !dbg !1517
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !1518

if.then31:                                        ; preds = %if.else
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i32 noundef 53, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvdi3, i32 0, i32 0)) #6, !dbg !1519
  unreachable, !dbg !1519

if.end32:                                         ; preds = %if.else
  br label %if.end33

if.end33:                                         ; preds = %if.end32, %if.end27
  br label %return, !dbg !1520

return:                                           ; preds = %if.end33, %if.then20, %if.then10, %if.then3
  %retval.0 = mul nsw i64 %a, %b, !dbg !1521
  ret i64 %retval.0, !dbg !1522
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__mulvsi3(i32 noundef %a, i32 noundef %b) #3 !dbg !1523 {
entry:
  %cmp = icmp eq i32 %a, -2147483648, !dbg !1524
  br i1 %cmp, label %if.then, label %if.end4, !dbg !1525

if.then:                                          ; preds = %entry
  %cmp1 = icmp eq i32 %b, 0, !dbg !1526
  br i1 %cmp1, label %if.then3, label %lor.lhs.false, !dbg !1527

lor.lhs.false:                                    ; preds = %if.then
  %cmp2 = icmp eq i32 %b, 1, !dbg !1528
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !1529

if.then3:                                         ; preds = %lor.lhs.false, %if.then
  br label %return, !dbg !1530

if.end:                                           ; preds = %lor.lhs.false
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), i32 noundef 31, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvsi3, i32 0, i32 0)) #6, !dbg !1531
  unreachable, !dbg !1531

if.end4:                                          ; preds = %entry
  %cmp5 = icmp eq i32 %b, -2147483648, !dbg !1532
  br i1 %cmp5, label %if.then6, label %if.end13, !dbg !1533

if.then6:                                         ; preds = %if.end4
  %cmp7 = icmp eq i32 %a, 0, !dbg !1534
  br i1 %cmp7, label %if.then10, label %lor.lhs.false8, !dbg !1535

lor.lhs.false8:                                   ; preds = %if.then6
  %cmp9 = icmp eq i32 %a, 1, !dbg !1536
  br i1 %cmp9, label %if.then10, label %if.end12, !dbg !1537

if.then10:                                        ; preds = %lor.lhs.false8, %if.then6
  br label %return, !dbg !1538

if.end12:                                         ; preds = %lor.lhs.false8
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), i32 noundef 37, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvsi3, i32 0, i32 0)) #6, !dbg !1539
  unreachable, !dbg !1539

if.end13:                                         ; preds = %if.end4
  %shr = ashr i32 %a, 31, !dbg !1540
  %xor = xor i32 %shr, %a, !dbg !1541
  %sub = sub nsw i32 %xor, %shr, !dbg !1542
  %shr14 = ashr i32 %b, 31, !dbg !1543
  %xor15 = xor i32 %shr14, %b, !dbg !1544
  %sub16 = sub nsw i32 %xor15, %shr14, !dbg !1545
  %cmp17 = icmp slt i32 %sub, 2, !dbg !1546
  br i1 %cmp17, label %if.then20, label %lor.lhs.false18, !dbg !1547

lor.lhs.false18:                                  ; preds = %if.end13
  %cmp19 = icmp slt i32 %sub16, 2, !dbg !1548
  br i1 %cmp19, label %if.then20, label %if.end22, !dbg !1549

if.then20:                                        ; preds = %lor.lhs.false18, %if.end13
  br label %return, !dbg !1550

if.end22:                                         ; preds = %lor.lhs.false18
  %cmp23 = icmp eq i32 %shr, %shr14, !dbg !1551
  br i1 %cmp23, label %if.then24, label %if.else, !dbg !1552

if.then24:                                        ; preds = %if.end22
  %div = sdiv i32 2147483647, %sub16, !dbg !1553
  %cmp25 = icmp sgt i32 %sub, %div, !dbg !1554
  br i1 %cmp25, label %if.then26, label %if.end27, !dbg !1555

if.then26:                                        ; preds = %if.then24
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), i32 noundef 48, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvsi3, i32 0, i32 0)) #6, !dbg !1556
  unreachable, !dbg !1556

if.end27:                                         ; preds = %if.then24
  br label %if.end33, !dbg !1557

if.else:                                          ; preds = %if.end22
  %sub28 = sub nsw i32 0, %sub16, !dbg !1558
  %div29 = sdiv i32 -2147483648, %sub28, !dbg !1559
  %cmp30 = icmp sgt i32 %sub, %div29, !dbg !1560
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !1561

if.then31:                                        ; preds = %if.else
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), i32 noundef 53, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvsi3, i32 0, i32 0)) #6, !dbg !1562
  unreachable, !dbg !1562

if.end32:                                         ; preds = %if.else
  br label %if.end33

if.end33:                                         ; preds = %if.end32, %if.end27
  br label %return, !dbg !1563

return:                                           ; preds = %if.end33, %if.then20, %if.then10, %if.then3
  %retval.0 = mul nsw i32 %a, %b, !dbg !1564
  ret i32 %retval.0, !dbg !1565
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__paritydi2(i64 noundef %a) #3 !dbg !1566 {
entry:
  %x = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %x, i32 0, i32 0, !dbg !1567
  store i64 %a, i64* %all, align 8, !dbg !1568
  %s = bitcast %union.dwords* %x to %struct.anon*, !dbg !1569
  %high = getelementptr inbounds %struct.anon, %struct.anon* %s, i32 0, i32 1, !dbg !1570
  %0 = load i32, i32* %high, align 4, !dbg !1570
  %low = bitcast %union.dwords* %x to i32*, !dbg !1571
  %1 = load i32, i32* %low, align 8, !dbg !1571
  %xor = xor i32 %0, %1, !dbg !1572
  %call = call arm_aapcscc i32 @__paritysi2(i32 noundef %xor) #5, !dbg !1573
  ret i32 %call, !dbg !1574
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__paritysi2(i32 noundef %a) #3 !dbg !1575 {
entry:
  %shr = lshr i32 %a, 16, !dbg !1576
  %xor = xor i32 %shr, %a, !dbg !1577
  %shr1 = lshr i32 %xor, 8, !dbg !1578
  %xor2 = xor i32 %xor, %shr1, !dbg !1579
  %shr3 = lshr i32 %xor2, 4, !dbg !1580
  %xor4 = xor i32 %xor2, %shr3, !dbg !1581
  %and = and i32 %xor4, 15, !dbg !1582
  %shr5 = lshr i32 27030, %and, !dbg !1583
  %and6 = and i32 %shr5, 1, !dbg !1584
  ret i32 %and6, !dbg !1585
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__popcountdi2(i64 noundef %a) #3 !dbg !1586 {
entry:
  %shr = lshr i64 %a, 1, !dbg !1587
  %and = and i64 %shr, 6148914691236517205, !dbg !1588
  %sub = sub i64 %a, %and, !dbg !1589
  %shr1 = lshr i64 %sub, 2, !dbg !1590
  %and2 = and i64 %shr1, 3689348814741910323, !dbg !1591
  %and3 = and i64 %sub, 3689348814741910323, !dbg !1592
  %add = add nuw nsw i64 %and2, %and3, !dbg !1593
  %shr4 = lshr i64 %add, 4, !dbg !1594
  %add5 = add nuw nsw i64 %add, %shr4, !dbg !1595
  %and6 = and i64 %add5, 1085102592571150095, !dbg !1596
  %shr7 = lshr i64 %and6, 32, !dbg !1597
  %add8 = add nuw nsw i64 %and6, %shr7, !dbg !1598
  %conv = trunc i64 %add8 to i32, !dbg !1599
  %shr9 = lshr i32 %conv, 16, !dbg !1600
  %add10 = add nuw nsw i32 %shr9, %conv, !dbg !1601
  %shr11 = lshr i32 %add10, 8, !dbg !1602
  %add12 = add nuw nsw i32 %add10, %shr11, !dbg !1603
  %and13 = and i32 %add12, 127, !dbg !1604
  ret i32 %and13, !dbg !1605
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__popcountsi2(i32 noundef %a) #3 !dbg !1606 {
entry:
  %shr = lshr i32 %a, 1, !dbg !1607
  %and = and i32 %shr, 1431655765, !dbg !1608
  %sub = sub i32 %a, %and, !dbg !1609
  %shr1 = lshr i32 %sub, 2, !dbg !1610
  %and2 = and i32 %shr1, 858993459, !dbg !1611
  %and3 = and i32 %sub, 858993459, !dbg !1612
  %add = add nuw nsw i32 %and2, %and3, !dbg !1613
  %shr4 = lshr i32 %add, 4, !dbg !1614
  %add5 = add nuw nsw i32 %add, %shr4, !dbg !1615
  %and6 = and i32 %add5, 252645135, !dbg !1616
  %shr7 = lshr i32 %and6, 16, !dbg !1617
  %add8 = add nuw nsw i32 %and6, %shr7, !dbg !1618
  %shr9 = lshr i32 %add8, 8, !dbg !1619
  %add10 = add nuw nsw i32 %add8, %shr9, !dbg !1620
  %and11 = and i32 %add10, 63, !dbg !1621
  ret i32 %and11, !dbg !1622
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__subvdi3(i64 noundef %a, i64 noundef %b) #3 !dbg !1623 {
entry:
  %sub = sub i64 %a, %b, !dbg !1624
  %cmp = icmp sgt i64 %b, -1, !dbg !1625
  br i1 %cmp, label %if.then, label %if.else, !dbg !1626

if.then:                                          ; preds = %entry
  %cmp1 = icmp sgt i64 %sub, %a, !dbg !1627
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !1628

if.then2:                                         ; preds = %if.then
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i32 0, i32 0), i32 noundef 28, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__subvdi3, i32 0, i32 0)) #6, !dbg !1629
  unreachable, !dbg !1629

if.end:                                           ; preds = %if.then
  br label %if.end6, !dbg !1630

if.else:                                          ; preds = %entry
  %cmp3.not = icmp sgt i64 %sub, %a, !dbg !1631
  br i1 %cmp3.not, label %if.end5, label %if.then4, !dbg !1632

if.then4:                                         ; preds = %if.else
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i32 0, i32 0), i32 noundef 33, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__subvdi3, i32 0, i32 0)) #6, !dbg !1633
  unreachable, !dbg !1633

if.end5:                                          ; preds = %if.else
  br label %if.end6

if.end6:                                          ; preds = %if.end5, %if.end
  ret i64 %sub, !dbg !1634
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__subvsi3(i32 noundef %a, i32 noundef %b) #3 !dbg !1635 {
entry:
  %sub = sub i32 %a, %b, !dbg !1636
  %cmp = icmp sgt i32 %b, -1, !dbg !1637
  br i1 %cmp, label %if.then, label %if.else, !dbg !1638

if.then:                                          ; preds = %entry
  %cmp1 = icmp sgt i32 %sub, %a, !dbg !1639
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !1640

if.then2:                                         ; preds = %if.then
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i32 0, i32 0), i32 noundef 28, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__subvsi3, i32 0, i32 0)) #6, !dbg !1641
  unreachable, !dbg !1641

if.end:                                           ; preds = %if.then
  br label %if.end6, !dbg !1642

if.else:                                          ; preds = %entry
  %cmp3.not = icmp sgt i32 %sub, %a, !dbg !1643
  br i1 %cmp3.not, label %if.end5, label %if.then4, !dbg !1644

if.then4:                                         ; preds = %if.else
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i32 0, i32 0), i32 noundef 33, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__subvsi3, i32 0, i32 0)) #6, !dbg !1645
  unreachable, !dbg !1645

if.end5:                                          ; preds = %if.else
  br label %if.end6

if.end6:                                          ; preds = %if.end5, %if.end
  ret i32 %sub, !dbg !1646
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__ucmpdi2(i64 noundef %a, i64 noundef %b) #3 !dbg !1647 {
entry:
  %x = alloca %union.dwords, align 8
  %y = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %x, i32 0, i32 0, !dbg !1648
  store i64 %a, i64* %all, align 8, !dbg !1649
  %all1 = getelementptr inbounds %union.dwords, %union.dwords* %y, i32 0, i32 0, !dbg !1650
  store i64 %b, i64* %all1, align 8, !dbg !1651
  %s = bitcast %union.dwords* %x to %struct.anon*, !dbg !1652
  %high = getelementptr inbounds %struct.anon, %struct.anon* %s, i32 0, i32 1, !dbg !1653
  %0 = load i32, i32* %high, align 4, !dbg !1653
  %s2 = bitcast %union.dwords* %y to %struct.anon*, !dbg !1654
  %high3 = getelementptr inbounds %struct.anon, %struct.anon* %s2, i32 0, i32 1, !dbg !1655
  %1 = load i32, i32* %high3, align 4, !dbg !1655
  %cmp = icmp ult i32 %0, %1, !dbg !1656
  br i1 %cmp, label %if.then, label %if.end, !dbg !1657

if.then:                                          ; preds = %entry
  br label %return, !dbg !1658

if.end:                                           ; preds = %entry
  %s4 = bitcast %union.dwords* %x to %struct.anon*, !dbg !1659
  %high5 = getelementptr inbounds %struct.anon, %struct.anon* %s4, i32 0, i32 1, !dbg !1660
  %2 = load i32, i32* %high5, align 4, !dbg !1660
  %s6 = bitcast %union.dwords* %y to %struct.anon*, !dbg !1661
  %high7 = getelementptr inbounds %struct.anon, %struct.anon* %s6, i32 0, i32 1, !dbg !1662
  %3 = load i32, i32* %high7, align 4, !dbg !1662
  %cmp8 = icmp ugt i32 %2, %3, !dbg !1663
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !1664

if.then9:                                         ; preds = %if.end
  br label %return, !dbg !1665

if.end10:                                         ; preds = %if.end
  %low = bitcast %union.dwords* %x to i32*, !dbg !1666
  %4 = load i32, i32* %low, align 8, !dbg !1666
  %low13 = bitcast %union.dwords* %y to i32*, !dbg !1667
  %5 = load i32, i32* %low13, align 8, !dbg !1667
  %cmp14 = icmp ult i32 %4, %5, !dbg !1668
  br i1 %cmp14, label %if.then15, label %if.end16, !dbg !1669

if.then15:                                        ; preds = %if.end10
  br label %return, !dbg !1670

if.end16:                                         ; preds = %if.end10
  %low18 = bitcast %union.dwords* %x to i32*, !dbg !1671
  %6 = load i32, i32* %low18, align 8, !dbg !1671
  %low20 = bitcast %union.dwords* %y to i32*, !dbg !1672
  %7 = load i32, i32* %low20, align 8, !dbg !1672
  %cmp21 = icmp ugt i32 %6, %7, !dbg !1673
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !1674

if.then22:                                        ; preds = %if.end16
  br label %return, !dbg !1675

if.end23:                                         ; preds = %if.end16
  br label %return, !dbg !1676

return:                                           ; preds = %if.end23, %if.then22, %if.then15, %if.then9, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 2, %if.then9 ], [ 0, %if.then15 ], [ 2, %if.then22 ], [ 1, %if.end23 ], !dbg !1677
  ret i32 %retval.0, !dbg !1678
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__aeabi_ulcmp(i64 noundef %a, i64 noundef %b) #3 !dbg !1679 {
entry:
  %call = call arm_aapcscc i32 @__ucmpdi2(i64 noundef %a, i64 noundef %b) #5, !dbg !1680
  %sub = add nsw i32 %call, -1, !dbg !1681
  ret i32 %sub, !dbg !1682
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__udivdi3(i64 noundef %a, i64 noundef %b) #3 !dbg !1683 {
entry:
  %call = call arm_aapcscc i64 @__udivmoddi4(i64 noundef %a, i64 noundef %b, i64* noundef null) #5, !dbg !1684
  ret i64 %call, !dbg !1685
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__udivmodsi4(i32 noundef %a, i32 noundef %b, i32* noundef %rem) #3 !dbg !1686 {
entry:
  %call = call arm_aapcscc i32 @__udivsi3(i32 noundef %a, i32 noundef %b) #5, !dbg !1687
  %mul = mul i32 %call, %b, !dbg !1688
  %sub = sub i32 %a, %mul, !dbg !1689
  store i32 %sub, i32* %rem, align 4, !dbg !1690
  ret i32 %call, !dbg !1691
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__udivsi3(i32 noundef %n, i32 noundef %d) #3 !dbg !1692 {
entry:
  %cmp = icmp eq i32 %d, 0, !dbg !1693
  br i1 %cmp, label %if.then, label %if.end, !dbg !1694

if.then:                                          ; preds = %entry
  br label %return, !dbg !1695

if.end:                                           ; preds = %entry
  %cmp1 = icmp eq i32 %n, 0, !dbg !1696
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !1697

if.then2:                                         ; preds = %if.end
  br label %return, !dbg !1698

if.end3:                                          ; preds = %if.end
  %0 = call i32 @llvm.ctlz.i32(i32 %d, i1 true), !dbg !1699, !range !892
  %1 = call i32 @llvm.ctlz.i32(i32 %n, i1 true), !dbg !1700, !range !892
  %sub = sub nsw i32 %0, %1, !dbg !1701
  %cmp4 = icmp ugt i32 %sub, 31, !dbg !1702
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !1703

if.then5:                                         ; preds = %if.end3
  br label %return, !dbg !1704

if.end6:                                          ; preds = %if.end3
  %cmp7 = icmp eq i32 %sub, 31, !dbg !1705
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !1706

if.then8:                                         ; preds = %if.end6
  br label %return, !dbg !1707

if.end9:                                          ; preds = %if.end6
  %inc = add nsw i32 %sub, 1, !dbg !1708
  %sub10 = sub nsw i32 31, %sub, !dbg !1709
  %shl = shl i32 %n, %sub10, !dbg !1710
  %shr = lshr i32 %n, %inc, !dbg !1711
  br label %for.cond, !dbg !1712

for.cond:                                         ; preds = %for.inc, %if.end9
  %q.0 = phi i32 [ %shl, %if.end9 ], [ %or15, %for.inc ], !dbg !1713
  %r.0 = phi i32 [ %shr, %if.end9 ], [ %sub20, %for.inc ], !dbg !1713
  %sr.0 = phi i32 [ %inc, %if.end9 ], [ %dec, %for.inc ], !dbg !1713
  %carry.0 = phi i32 [ 0, %if.end9 ], [ %and, %for.inc ], !dbg !1713
  %cmp11.not = icmp eq i32 %sr.0, 0, !dbg !1714
  br i1 %cmp11.not, label %for.end, label %for.body, !dbg !1712

for.body:                                         ; preds = %for.cond
  %or = call i32 @llvm.fshl.i32(i32 %r.0, i32 %q.0, i32 1), !dbg !1715
  %2 = xor i32 %or, -1, !dbg !1716
  %sub17 = add i32 %2, %d, !dbg !1716
  br label %for.inc, !dbg !1717

for.inc:                                          ; preds = %for.body
  %isneg = icmp slt i32 %sub17, 0, !dbg !1718
  %and19 = select i1 %isneg, i32 %d, i32 0, !dbg !1718
  %sub20 = sub i32 %or, %and19, !dbg !1719
  %and = lshr i32 %sub17, 31, !dbg !1720
  %shl14 = shl i32 %q.0, 1, !dbg !1721
  %or15 = or i32 %shl14, %carry.0, !dbg !1722
  %dec = add i32 %sr.0, -1, !dbg !1723
  br label %for.cond, !dbg !1712, !llvm.loop !1724

for.end:                                          ; preds = %for.cond
  %shl21 = shl i32 %q.0, 1, !dbg !1725
  %or22 = or i32 %shl21, %carry.0, !dbg !1726
  br label %return, !dbg !1727

return:                                           ; preds = %for.end, %if.then8, %if.then5, %if.then2, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then2 ], [ 0, %if.then5 ], [ %n, %if.then8 ], [ %or22, %for.end ], !dbg !1713
  ret i32 %retval.0, !dbg !1728
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__umoddi3(i64 noundef %a, i64 noundef %b) #3 !dbg !1729 {
entry:
  %r = alloca i64, align 8
  %call = call arm_aapcscc i64 @__udivmoddi4(i64 noundef %a, i64 noundef %b, i64* noundef nonnull %r) #5, !dbg !1730
  %0 = load i64, i64* %r, align 8, !dbg !1731
  ret i64 %0, !dbg !1732
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__umodsi3(i32 noundef %a, i32 noundef %b) #3 !dbg !1733 {
entry:
  %call = call arm_aapcscc i32 @__udivsi3(i32 noundef %a, i32 noundef %b) #5, !dbg !1734
  %mul = mul i32 %call, %b, !dbg !1735
  %sub = sub i32 %a, %mul, !dbg !1736
  ret i32 %sub, !dbg !1737
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i8* @memcpy(i8* noundef %destination, i8* noundef %source, i32 noundef %num) #3 !dbg !1738 {
entry:
  br label %for.cond, !dbg !1739

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !dbg !1740
  %exitcond.not = icmp eq i32 %i.0, %num, !dbg !1741
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !1742

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds i8, i8* %source, i32 %i.0, !dbg !1743
  %0 = load i8, i8* %arrayidx, align 1, !dbg !1743
  %arrayidx1 = getelementptr inbounds i8, i8* %destination, i32 %i.0, !dbg !1744
  store i8 %0, i8* %arrayidx1, align 1, !dbg !1745
  br label %for.inc, !dbg !1746

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.0, 1, !dbg !1747
  br label %for.cond, !dbg !1742, !llvm.loop !1748

for.end:                                          ; preds = %for.cond
  ret i8* undef, !dbg !1749
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i8* @memset(i8* noundef %ptr, i32 noundef %value, i32 noundef %num) #3 !dbg !1750 {
entry:
  br label %for.cond, !dbg !1751

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !dbg !1752
  %exitcond.not = icmp eq i32 %i.0, %num, !dbg !1753
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !1754

for.body:                                         ; preds = %for.cond
  %conv = trunc i32 %value to i8, !dbg !1755
  %arrayidx = getelementptr inbounds i8, i8* %ptr, i32 %i.0, !dbg !1756
  store i8 %conv, i8* %arrayidx, align 1, !dbg !1757
  br label %for.inc, !dbg !1758

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.0, 1, !dbg !1759
  br label %for.cond, !dbg !1754, !llvm.loop !1760

for.end:                                          ; preds = %for.cond
  ret i8* %ptr, !dbg !1761
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #1

attributes #0 = { noinline nounwind "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { noinline nounwind "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { noinline noreturn nounwind "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nobuiltin "no-builtins" }
attributes #6 = { nobuiltin noreturn "no-builtins" }

!llvm.dbg.cu = !{!2, !412, !419, !421, !423, !425, !427, !429, !431, !433, !435, !437, !439, !441, !443, !445, !447, !449, !451, !453, !455, !457, !459, !461, !463, !465, !467, !469, !471, !473, !475, !477, !479, !481, !483, !485, !487, !489, !491, !493, !495, !497, !499, !501, !503, !505, !507, !509, !511, !513, !515, !517, !519, !521, !523, !525, !527, !529}
!llvm.ident = !{!531, !531, !532, !532, !532, !532, !532, !532, !532, !532, !532, !532, !532, !532, !532, !532, !532, !532, !532, !532, !532, !532, !532, !532, !532, !532, !532, !532, !532, !532, !532, !532, !532, !532, !532, !532, !532, !532, !532, !532, !532, !532, !532, !532, !532, !532, !532, !532, !532, !532, !532, !532, !532, !532, !532, !532, !532, !532}
!llvm.module.flags = !{!533, !534, !535, !536, !537, !538, !539, !540, !541}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "cjpeg_wrbmp_jpeg_dec_1", scope: !2, file: !153, line: 54, type: !164, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 14.0.6 (git@github.com:RTS-SYSU/LLVM-TA.git b7f9c4ccdebc6c37532ddd772889e5f0ff989c79)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !25, globals: !150, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/workspaces/llvmta/testcases/singletest/cjpeg_wrbmp/cjpeg_wrbmp.c", directory: "/workspaces/llvmta/testcases/singletest/bsort")
!4 = !{!5, !15, !20}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 201, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "cjpeg_wrbmp/jpeglib.h", directory: "/workspaces/llvmta/testcases/singletest")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14}
!9 = !DIEnumerator(name: "JCS_UNKNOWN", value: 0)
!10 = !DIEnumerator(name: "JCS_GRAYSCALE", value: 1)
!11 = !DIEnumerator(name: "JCS_RGB", value: 2)
!12 = !DIEnumerator(name: "JCS_YCbCr", value: 3)
!13 = !DIEnumerator(name: "JCS_CMYK", value: 4)
!14 = !DIEnumerator(name: "JCS_YCCK", value: 5)
!15 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 212, baseType: !7, size: 32, elements: !16)
!16 = !{!17, !18, !19}
!17 = !DIEnumerator(name: "JDCT_ISLOW", value: 0)
!18 = !DIEnumerator(name: "JDCT_IFAST", value: 1)
!19 = !DIEnumerator(name: "JDCT_FLOAT", value: 2)
!20 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 220, baseType: !7, size: 32, elements: !21)
!21 = !{!22, !23, !24}
!22 = !DIEnumerator(name: "JDITHER_NONE", value: 0)
!23 = !DIEnumerator(name: "JDITHER_ORDERED", value: 1)
!24 = !DIEnumerator(name: "JDITHER_FS", value: 2)
!25 = !{!26, !63, !51}
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "cjpeg_wrbmp_cd_progress_ptr", file: !27, line: 102, baseType: !28)
!27 = !DIFile(filename: "cjpeg_wrbmp/cdjpeg.h", directory: "/workspaces/llvmta/testcases/singletest")
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 32)
!29 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cjpeg_wrbmp_cdjpeg_progress_mgr", file: !27, line: 92, size: 256, elements: !30)
!30 = !{!31, !147, !148, !149}
!31 = !DIDerivedType(tag: DW_TAG_member, name: "pub", scope: !29, file: !27, line: 94, baseType: !32, size: 160)
!32 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cjpeg_wrbmp_jpeg_progress_mgr", file: !6, line: 726, size: 160, elements: !33)
!33 = !{!34, !143, !144, !145, !146}
!34 = !DIDerivedType(tag: DW_TAG_member, name: "progress_monitor", scope: !32, file: !6, line: 727, baseType: !35, size: 32)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 32)
!36 = !DISubroutineType(types: !37)
!37 = !{null, !38}
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "cjpeg_wrbmp_j_common_ptr", file: !6, line: 250, baseType: !39)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 32)
!40 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cjpeg_wrbmp_jpeg_common_struct", file: !6, line: 241, size: 192, elements: !41)
!41 = !{!42, !73, !138, !140, !141, !142}
!42 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !40, file: !6, line: 242, baseType: !43, size: 32)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 32)
!44 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cjpeg_wrbmp_jpeg_error_mgr", file: !6, line: 662, size: 416, elements: !45)
!45 = !{!46, !47, !52, !53, !59, !60, !61, !62, !64, !69, !70, !71, !72}
!46 = !DIDerivedType(tag: DW_TAG_member, name: "error_exit", scope: !44, file: !6, line: 664, baseType: !35, size: 32)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "emit_message", scope: !44, file: !6, line: 667, baseType: !48, size: 32, offset: 32)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 32)
!49 = !DISubroutineType(types: !50)
!50 = !{null, !38, !51}
!51 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "output_message", scope: !44, file: !6, line: 670, baseType: !35, size: 32, offset: 64)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "format_message", scope: !44, file: !6, line: 673, baseType: !54, size: 32, offset: 96)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 32)
!55 = !DISubroutineType(types: !56)
!56 = !{null, !38, !57}
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 32)
!58 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "reset_error_mgr", scope: !44, file: !6, line: 677, baseType: !35, size: 32, offset: 128)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "msg_code", scope: !44, file: !6, line: 683, baseType: !51, size: 32, offset: 160)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "trace_level", scope: !44, file: !6, line: 693, baseType: !51, size: 32, offset: 192)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "num_warnings", scope: !44, file: !6, line: 701, baseType: !63, size: 32, offset: 224)
!63 = !DIBasicType(name: "long", size: 32, encoding: DW_ATE_signed)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "jpeg_message_table", scope: !44, file: !6, line: 713, baseType: !65, size: 32, offset: 256)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 32)
!66 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !67)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 32)
!68 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !58)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "last_jpeg_message", scope: !44, file: !6, line: 714, baseType: !51, size: 32, offset: 288)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "addon_message_table", scope: !44, file: !6, line: 718, baseType: !65, size: 32, offset: 320)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "first_addon_message", scope: !44, file: !6, line: 719, baseType: !51, size: 32, offset: 352)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "last_addon_message", scope: !44, file: !6, line: 720, baseType: !51, size: 32, offset: 384)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !40, file: !6, line: 242, baseType: !74, size: 32, offset: 32)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 32)
!75 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cjpeg_wrbmp_jpeg_memory_mgr", file: !6, line: 789, size: 416, elements: !76)
!76 = !{!77, !83, !84, !96, !110, !118, !125, !126, !130, !134, !135, !136, !137}
!77 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_small", scope: !75, file: !6, line: 791, baseType: !78, size: 32)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 32)
!79 = !DISubroutineType(types: !80)
!80 = !{!81, !38, !51, !82}
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "cjpeg_wrbmp_size_t", file: !6, line: 29, baseType: !7)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_large", scope: !75, file: !6, line: 794, baseType: !78, size: 32, offset: 32)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_sarray", scope: !75, file: !6, line: 797, baseType: !85, size: 32, offset: 64)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 32)
!86 = !DISubroutineType(types: !87)
!87 = !{!88, !38, !51, !95, !95}
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "CJPEG_WRBMP_JSAMPARRAY", file: !6, line: 51, baseType: !89)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 32)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "CJPEG_WRBMP_JSAMPROW", file: !6, line: 49, baseType: !91)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 32)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "CJPEG_WRBMP_JSAMPLE", file: !93, line: 30, baseType: !94)
!93 = !DIFile(filename: "cjpeg_wrbmp/jmorecfg.h", directory: "/workspaces/llvmta/testcases/singletest")
!94 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "CJPEG_WRBMP_JDIMENSION", file: !93, line: 63, baseType: !7)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_barray", scope: !75, file: !6, line: 801, baseType: !97, size: 32, offset: 96)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 32)
!98 = !DISubroutineType(types: !99)
!99 = !{!100, !38, !51, !95, !95}
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "CJPEG_WRBMP_JBLOCKARRAY", file: !6, line: 60, baseType: !101)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 32)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "CJPEG_WRBMP_JBLOCKROW", file: !6, line: 58, baseType: !103)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 32)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "CJPEG_WRBMP_JBLOCK", file: !6, line: 56, baseType: !105)
!105 = !DICompositeType(tag: DW_TAG_array_type, baseType: !106, size: 1024, elements: !108)
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "CJPEG_WRBMP_JCOEF", file: !93, line: 31, baseType: !107)
!107 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!108 = !{!109}
!109 = !DISubrange(count: 64)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "request_virt_sarray", scope: !75, file: !6, line: 805, baseType: !111, size: 32, offset: 128)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 32)
!112 = !DISubroutineType(types: !113)
!113 = !{!114, !38, !51, !117, !95, !95, !95}
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "cjpeg_wrbmp_jvirt_sarray_ptr", file: !6, line: 785, baseType: !115)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 32)
!116 = !DICompositeType(tag: DW_TAG_structure_type, name: "jvirt_sarray_control", file: !6, line: 785, flags: DIFlagFwdDecl)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "cjpeg_wrbmp_boolean", file: !93, line: 93, baseType: !51)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "request_virt_barray", scope: !75, file: !6, line: 812, baseType: !119, size: 32, offset: 160)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 32)
!120 = !DISubroutineType(types: !121)
!121 = !{!122, !38, !51, !117, !95, !95, !95}
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "cjpeg_wrbmp_jvirt_barray_ptr", file: !6, line: 786, baseType: !123)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 32)
!124 = !DICompositeType(tag: DW_TAG_structure_type, name: "jvirt_barray_control", file: !6, line: 786, flags: DIFlagFwdDecl)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "realize_virt_arrays", scope: !75, file: !6, line: 819, baseType: !35, size: 32, offset: 192)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "access_virt_sarray", scope: !75, file: !6, line: 821, baseType: !127, size: 32, offset: 224)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 32)
!128 = !DISubroutineType(types: !129)
!129 = !{!88, !38, !114, !95, !95, !117}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "access_virt_barray", scope: !75, file: !6, line: 827, baseType: !131, size: 32, offset: 256)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 32)
!132 = !DISubroutineType(types: !133)
!133 = !{!100, !38, !122, !95, !95, !117}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "free_pool", scope: !75, file: !6, line: 833, baseType: !48, size: 32, offset: 288)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "self_destruct", scope: !75, file: !6, line: 835, baseType: !35, size: 32, offset: 320)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "max_memory_to_use", scope: !75, file: !6, line: 843, baseType: !63, size: 32, offset: 352)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "max_alloc_chunk", scope: !75, file: !6, line: 846, baseType: !63, size: 32, offset: 384)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "progress", scope: !40, file: !6, line: 242, baseType: !139, size: 32, offset: 64)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 32)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "client_data", scope: !40, file: !6, line: 242, baseType: !81, size: 32, offset: 96)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "is_decompressor", scope: !40, file: !6, line: 242, baseType: !117, size: 32, offset: 128)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "global_state", scope: !40, file: !6, line: 242, baseType: !51, size: 32, offset: 160)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "pass_counter", scope: !32, file: !6, line: 730, baseType: !63, size: 32, offset: 32)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "pass_limit", scope: !32, file: !6, line: 731, baseType: !63, size: 32, offset: 64)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "completed_passes", scope: !32, file: !6, line: 732, baseType: !51, size: 32, offset: 96)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "total_passes", scope: !32, file: !6, line: 733, baseType: !51, size: 32, offset: 128)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "completed_extra_passes", scope: !29, file: !27, line: 95, baseType: !51, size: 32, offset: 160)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "total_extra_passes", scope: !29, file: !27, line: 96, baseType: !51, size: 32, offset: 192)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "percent_done", scope: !29, file: !27, line: 98, baseType: !51, size: 32, offset: 224)
!150 = !{!151, !157, !160, !0, !162, !378, !398}
!151 = !DIGlobalVariableExpression(var: !152, expr: !DIExpression())
!152 = distinct !DIGlobalVariable(name: "cjpeg_wrbmp_output_array", scope: !2, file: !153, line: 49, type: !154, isLocal: false, isDefinition: true)
!153 = !DIFile(filename: "cjpeg_wrbmp/cjpeg_wrbmp.c", directory: "/workspaces/llvmta/testcases/singletest")
!154 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 49152, elements: !155)
!155 = !{!156}
!156 = !DISubrange(count: 6144)
!157 = !DIGlobalVariableExpression(var: !158, expr: !DIExpression())
!158 = distinct !DIGlobalVariable(name: "cjpeg_wrbmp_jpeg_stream", scope: !2, file: !153, line: 50, type: !159, isLocal: false, isDefinition: true)
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 32)
!160 = !DIGlobalVariableExpression(var: !161, expr: !DIExpression())
!161 = distinct !DIGlobalVariable(name: "cjpeg_wrbmp_checksum", scope: !2, file: !153, line: 51, type: !51, isLocal: false, isDefinition: true)
!162 = !DIGlobalVariableExpression(var: !163, expr: !DIExpression())
!163 = distinct !DIGlobalVariable(name: "cjpeg_wrbmp_jpeg_dec_2", scope: !2, file: !153, line: 56, type: !164, isLocal: false, isDefinition: true)
!164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cjpeg_wrbmp_jpeg_decompress_struct", file: !6, line: 406, size: 3680, elements: !165)
!165 = !{!166, !167, !168, !169, !170, !171, !172, !200, !201, !202, !203, !205, !206, !207, !208, !210, !211, !212, !214, !215, !216, !217, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !239, !252, !268, !269, !270, !296, !297, !298, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !325, !326, !327, !328, !329, !330, !331, !333, !334, !335, !336, !340, !341, !342, !343, !344, !345, !348, !351, !354, !357, !360, !363, !366, !369, !372, !375}
!166 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !164, file: !6, line: 407, baseType: !43, size: 32)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !164, file: !6, line: 407, baseType: !74, size: 32, offset: 32)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "progress", scope: !164, file: !6, line: 407, baseType: !139, size: 32, offset: 64)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "client_data", scope: !164, file: !6, line: 407, baseType: !81, size: 32, offset: 96)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "is_decompressor", scope: !164, file: !6, line: 407, baseType: !117, size: 32, offset: 128)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "global_state", scope: !164, file: !6, line: 407, baseType: !51, size: 32, offset: 160)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !164, file: !6, line: 410, baseType: !173, size: 32, offset: 192)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 32)
!174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cjpeg_wrbmp_jpeg_source_mgr", file: !6, line: 756, size: 224, elements: !175)
!175 = !{!176, !180, !181, !187, !191, !195, !199}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "next_input_byte", scope: !174, file: !6, line: 758, baseType: !177, size: 32)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 32)
!178 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !179)
!179 = !DIDerivedType(tag: DW_TAG_typedef, name: "CJPEG_WRBMP_JOCTET", file: !93, line: 32, baseType: !94)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_in_buffer", scope: !174, file: !6, line: 759, baseType: !82, size: 32, offset: 32)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "init_source", scope: !174, file: !6, line: 761, baseType: !182, size: 32, offset: 64)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 32)
!183 = !DISubroutineType(types: !184)
!184 = !{null, !185}
!185 = !DIDerivedType(tag: DW_TAG_typedef, name: "cjpeg_wrbmp_j_decompress_ptr", file: !6, line: 254, baseType: !186)
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 32)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "fill_input_buffer", scope: !174, file: !6, line: 763, baseType: !188, size: 32, offset: 96)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 32)
!189 = !DISubroutineType(types: !190)
!190 = !{!117, !185}
!191 = !DIDerivedType(tag: DW_TAG_member, name: "skip_input_data", scope: !174, file: !6, line: 765, baseType: !192, size: 32, offset: 128)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 32)
!193 = !DISubroutineType(types: !194)
!194 = !{null, !185, !63}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "resync_to_restart", scope: !174, file: !6, line: 767, baseType: !196, size: 32, offset: 160)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 32)
!197 = !DISubroutineType(types: !198)
!198 = !{!117, !185, !51}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "term_source", scope: !174, file: !6, line: 769, baseType: !182, size: 32, offset: 192)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "image_width", scope: !164, file: !6, line: 416, baseType: !95, size: 32, offset: 224)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "image_height", scope: !164, file: !6, line: 417, baseType: !95, size: 32, offset: 256)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "num_components", scope: !164, file: !6, line: 418, baseType: !51, size: 32, offset: 288)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "jpeg_color_space", scope: !164, file: !6, line: 420, baseType: !204, size: 32, offset: 320)
!204 = !DIDerivedType(tag: DW_TAG_typedef, name: "CJPEG_WRBMP_J_COLOR_SPACE", file: !6, line: 208, baseType: !5)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "out_color_space", scope: !164, file: !6, line: 427, baseType: !204, size: 32, offset: 352)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "scale_num", scope: !164, file: !6, line: 429, baseType: !7, size: 32, offset: 384)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "scale_denom", scope: !164, file: !6, line: 429, baseType: !7, size: 32, offset: 416)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "output_gamma", scope: !164, file: !6, line: 431, baseType: !209, size: 32, offset: 448)
!209 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "buffered_image", scope: !164, file: !6, line: 433, baseType: !117, size: 32, offset: 480)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "raw_data_out", scope: !164, file: !6, line: 434, baseType: !117, size: 32, offset: 512)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "dct_method", scope: !164, file: !6, line: 436, baseType: !213, size: 32, offset: 544)
!213 = !DIDerivedType(tag: DW_TAG_typedef, name: "CJPEG_WRBMP_J_DCT_METHOD", file: !6, line: 216, baseType: !15)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "do_fancy_upsampling", scope: !164, file: !6, line: 438, baseType: !117, size: 32, offset: 576)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "do_block_smoothing", scope: !164, file: !6, line: 440, baseType: !117, size: 32, offset: 608)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "quantize_colors", scope: !164, file: !6, line: 443, baseType: !117, size: 32, offset: 640)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "dither_mode", scope: !164, file: !6, line: 446, baseType: !218, size: 32, offset: 672)
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "CJPEG_WRBMP_J_DITHER_MODE", file: !6, line: 224, baseType: !20)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "two_pass_quantize", scope: !164, file: !6, line: 448, baseType: !117, size: 32, offset: 704)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "desired_number_of_colors", scope: !164, file: !6, line: 449, baseType: !51, size: 32, offset: 736)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "enable_1pass_quant", scope: !164, file: !6, line: 452, baseType: !117, size: 32, offset: 768)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "enable_EXTERNal_quant", scope: !164, file: !6, line: 454, baseType: !117, size: 32, offset: 800)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "enable_2pass_quant", scope: !164, file: !6, line: 456, baseType: !117, size: 32, offset: 832)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "output_width", scope: !164, file: !6, line: 464, baseType: !95, size: 32, offset: 864)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "output_height", scope: !164, file: !6, line: 465, baseType: !95, size: 32, offset: 896)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "out_color_components", scope: !164, file: !6, line: 466, baseType: !51, size: 32, offset: 928)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "output_components", scope: !164, file: !6, line: 467, baseType: !51, size: 32, offset: 960)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "rec_outbuf_height", scope: !164, file: !6, line: 471, baseType: !51, size: 32, offset: 992)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "actual_number_of_colors", scope: !164, file: !6, line: 483, baseType: !51, size: 32, offset: 1024)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "colormap", scope: !164, file: !6, line: 485, baseType: !88, size: 32, offset: 1056)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "output_scanline", scope: !164, file: !6, line: 495, baseType: !95, size: 32, offset: 1088)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "input_scan_number", scope: !164, file: !6, line: 500, baseType: !51, size: 32, offset: 1120)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "input_iMCU_row", scope: !164, file: !6, line: 502, baseType: !95, size: 32, offset: 1152)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "output_scan_number", scope: !164, file: !6, line: 508, baseType: !51, size: 32, offset: 1184)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "output_iMCU_row", scope: !164, file: !6, line: 509, baseType: !95, size: 32, offset: 1216)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "coef_bits", scope: !164, file: !6, line: 518, baseType: !237, size: 32, offset: 1248)
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 32)
!238 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 2048, elements: !108)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "quant_tbl_ptrs", scope: !164, file: !6, line: 529, baseType: !240, size: 128, offset: 1280)
!240 = !DICompositeType(tag: DW_TAG_array_type, baseType: !241, size: 128, elements: !250)
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 32)
!242 = !DIDerivedType(tag: DW_TAG_typedef, name: "CJPEG_WRBMP_JQUANT_TBL", file: !6, line: 86, baseType: !243)
!243 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 73, size: 1056, elements: !244)
!244 = !{!245, !249}
!245 = !DIDerivedType(tag: DW_TAG_member, name: "quantval", scope: !243, file: !6, line: 79, baseType: !246, size: 1024)
!246 = !DICompositeType(tag: DW_TAG_array_type, baseType: !247, size: 1024, elements: !108)
!247 = !DIDerivedType(tag: DW_TAG_typedef, name: "CJPEG_WRBMP_UINT16", file: !93, line: 48, baseType: !248)
!248 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "sent_table", scope: !243, file: !6, line: 85, baseType: !117, size: 32, offset: 1024)
!250 = !{!251}
!251 = !DISubrange(count: 4)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "dc_huff_tbl_ptrs", scope: !164, file: !6, line: 532, baseType: !253, size: 128, offset: 1408)
!253 = !DICompositeType(tag: DW_TAG_array_type, baseType: !254, size: 128, elements: !250)
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 32)
!255 = !DIDerivedType(tag: DW_TAG_typedef, name: "CJPEG_WRBMP_JHUFF_TBL", file: !6, line: 103, baseType: !256)
!256 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 91, size: 2240, elements: !257)
!257 = !{!258, !263, !267}
!258 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !256, file: !6, line: 93, baseType: !259, size: 136)
!259 = !DICompositeType(tag: DW_TAG_array_type, baseType: !260, size: 136, elements: !261)
!260 = !DIDerivedType(tag: DW_TAG_typedef, name: "CJPEG_WRBMP_UINT8", file: !93, line: 43, baseType: !94)
!261 = !{!262}
!262 = !DISubrange(count: 17)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "huffval", scope: !256, file: !6, line: 96, baseType: !264, size: 2048, offset: 136)
!264 = !DICompositeType(tag: DW_TAG_array_type, baseType: !260, size: 2048, elements: !265)
!265 = !{!266}
!266 = !DISubrange(count: 256)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "sent_table", scope: !256, file: !6, line: 102, baseType: !117, size: 32, offset: 2208)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "ac_huff_tbl_ptrs", scope: !164, file: !6, line: 533, baseType: !253, size: 128, offset: 1536)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "data_precision", scope: !164, file: !6, line: 540, baseType: !51, size: 32, offset: 1664)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "comp_info", scope: !164, file: !6, line: 542, baseType: !271, size: 32, offset: 1696)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 32)
!272 = !DIDerivedType(tag: DW_TAG_typedef, name: "cjpeg_wrbmp_jpeg_component_info", file: !6, line: 172, baseType: !273)
!273 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 108, size: 672, elements: !274)
!274 = !{!275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295}
!275 = !DIDerivedType(tag: DW_TAG_member, name: "component_id", scope: !273, file: !6, line: 112, baseType: !51, size: 32)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "component_index", scope: !273, file: !6, line: 113, baseType: !51, size: 32, offset: 32)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "h_samp_factor", scope: !273, file: !6, line: 114, baseType: !51, size: 32, offset: 64)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "v_samp_factor", scope: !273, file: !6, line: 115, baseType: !51, size: 32, offset: 96)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "quant_tbl_no", scope: !273, file: !6, line: 116, baseType: !51, size: 32, offset: 128)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "dc_tbl_no", scope: !273, file: !6, line: 121, baseType: !51, size: 32, offset: 160)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tbl_no", scope: !273, file: !6, line: 122, baseType: !51, size: 32, offset: 192)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "width_in_blocks", scope: !273, file: !6, line: 131, baseType: !95, size: 32, offset: 224)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "height_in_blocks", scope: !273, file: !6, line: 132, baseType: !95, size: 32, offset: 256)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "DCT_scaled_size", scope: !273, file: !6, line: 139, baseType: !51, size: 32, offset: 288)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "downsampled_width", scope: !273, file: !6, line: 146, baseType: !95, size: 32, offset: 320)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "downsampled_height", scope: !273, file: !6, line: 147, baseType: !95, size: 32, offset: 352)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "component_needed", scope: !273, file: !6, line: 153, baseType: !117, size: 32, offset: 384)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_width", scope: !273, file: !6, line: 157, baseType: !51, size: 32, offset: 416)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_height", scope: !273, file: !6, line: 158, baseType: !51, size: 32, offset: 448)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_blocks", scope: !273, file: !6, line: 159, baseType: !51, size: 32, offset: 480)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_sample_width", scope: !273, file: !6, line: 160, baseType: !51, size: 32, offset: 512)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "last_col_width", scope: !273, file: !6, line: 161, baseType: !51, size: 32, offset: 544)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "last_row_height", scope: !273, file: !6, line: 162, baseType: !51, size: 32, offset: 576)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "quant_table", scope: !273, file: !6, line: 168, baseType: !241, size: 32, offset: 608)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "dct_table", scope: !273, file: !6, line: 171, baseType: !81, size: 32, offset: 640)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "progressive_mode", scope: !164, file: !6, line: 546, baseType: !117, size: 32, offset: 1728)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "arith_code", scope: !164, file: !6, line: 548, baseType: !117, size: 32, offset: 1760)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "arith_dc_L", scope: !164, file: !6, line: 551, baseType: !299, size: 128, offset: 1792)
!299 = !DICompositeType(tag: DW_TAG_array_type, baseType: !260, size: 128, elements: !300)
!300 = !{!301}
!301 = !DISubrange(count: 16)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "arith_dc_U", scope: !164, file: !6, line: 553, baseType: !299, size: 128, offset: 1920)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "arith_ac_K", scope: !164, file: !6, line: 555, baseType: !299, size: 128, offset: 2048)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "restart_interval", scope: !164, file: !6, line: 558, baseType: !7, size: 32, offset: 2176)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "saw_JFIF_marker", scope: !164, file: !6, line: 564, baseType: !117, size: 32, offset: 2208)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "JFIF_major_version", scope: !164, file: !6, line: 566, baseType: !260, size: 8, offset: 2240)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "JFIF_minor_version", scope: !164, file: !6, line: 567, baseType: !260, size: 8, offset: 2248)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "density_unit", scope: !164, file: !6, line: 568, baseType: !260, size: 8, offset: 2256)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "X_density", scope: !164, file: !6, line: 569, baseType: !247, size: 16, offset: 2272)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "Y_density", scope: !164, file: !6, line: 570, baseType: !247, size: 16, offset: 2288)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "saw_Adobe_marker", scope: !164, file: !6, line: 572, baseType: !117, size: 32, offset: 2304)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "Adobe_transform", scope: !164, file: !6, line: 574, baseType: !260, size: 8, offset: 2336)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "CCIR601_sampling", scope: !164, file: !6, line: 577, baseType: !117, size: 32, offset: 2368)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "marker_list", scope: !164, file: !6, line: 583, baseType: !315, size: 32, offset: 2400)
!315 = !DIDerivedType(tag: DW_TAG_typedef, name: "jpeg_saved_marker_ptr", file: !6, line: 187, baseType: !316)
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 32)
!317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cjpeg_wrbmp_jpeg_marker_struct", file: !6, line: 189, size: 160, elements: !318)
!318 = !{!319, !320, !321, !322, !323}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !317, file: !6, line: 190, baseType: !315, size: 32)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "marker", scope: !317, file: !6, line: 191, baseType: !260, size: 8, offset: 32)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "original_length", scope: !317, file: !6, line: 192, baseType: !7, size: 32, offset: 64)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "data_length", scope: !317, file: !6, line: 193, baseType: !7, size: 32, offset: 96)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !317, file: !6, line: 195, baseType: !324, size: 32, offset: 128)
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 32)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "max_h_samp_factor", scope: !164, file: !6, line: 592, baseType: !51, size: 32, offset: 2432)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "max_v_samp_factor", scope: !164, file: !6, line: 593, baseType: !51, size: 32, offset: 2464)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "min_DCT_scaled_size", scope: !164, file: !6, line: 595, baseType: !51, size: 32, offset: 2496)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "total_iMCU_rows", scope: !164, file: !6, line: 597, baseType: !95, size: 32, offset: 2528)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "sample_range_limit", scope: !164, file: !6, line: 607, baseType: !91, size: 32, offset: 2560)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "comps_in_scan", scope: !164, file: !6, line: 614, baseType: !51, size: 32, offset: 2592)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "cur_comp_info", scope: !164, file: !6, line: 615, baseType: !332, size: 128, offset: 2624)
!332 = !DICompositeType(tag: DW_TAG_array_type, baseType: !271, size: 128, elements: !250)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "MCUs_per_row", scope: !164, file: !6, line: 618, baseType: !95, size: 32, offset: 2752)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_rows_in_scan", scope: !164, file: !6, line: 620, baseType: !95, size: 32, offset: 2784)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "blocks_in_MCU", scope: !164, file: !6, line: 622, baseType: !51, size: 32, offset: 2816)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_membership", scope: !164, file: !6, line: 623, baseType: !337, size: 320, offset: 2848)
!337 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 320, elements: !338)
!338 = !{!339}
!339 = !DISubrange(count: 10)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "Ss", scope: !164, file: !6, line: 627, baseType: !51, size: 32, offset: 3168)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "Se", scope: !164, file: !6, line: 627, baseType: !51, size: 32, offset: 3200)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "Ah", scope: !164, file: !6, line: 627, baseType: !51, size: 32, offset: 3232)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "Al", scope: !164, file: !6, line: 627, baseType: !51, size: 32, offset: 3264)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "unread_marker", scope: !164, file: !6, line: 633, baseType: !51, size: 32, offset: 3296)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "master", scope: !164, file: !6, line: 638, baseType: !346, size: 32, offset: 3328)
!346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 32)
!347 = !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_decomp_master", file: !6, line: 638, flags: DIFlagFwdDecl)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "main", scope: !164, file: !6, line: 639, baseType: !349, size: 32, offset: 3360)
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 32)
!350 = !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_d_main_controller", file: !6, line: 639, flags: DIFlagFwdDecl)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "coef", scope: !164, file: !6, line: 640, baseType: !352, size: 32, offset: 3392)
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 32)
!353 = !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_d_coef_controller", file: !6, line: 640, flags: DIFlagFwdDecl)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "post", scope: !164, file: !6, line: 641, baseType: !355, size: 32, offset: 3424)
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 32)
!356 = !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_d_post_controller", file: !6, line: 641, flags: DIFlagFwdDecl)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "inputctl", scope: !164, file: !6, line: 642, baseType: !358, size: 32, offset: 3456)
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 32)
!359 = !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_input_controller", file: !6, line: 642, flags: DIFlagFwdDecl)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "marker", scope: !164, file: !6, line: 643, baseType: !361, size: 32, offset: 3488)
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 32)
!362 = !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_marker_reader", file: !6, line: 643, flags: DIFlagFwdDecl)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "entropy", scope: !164, file: !6, line: 644, baseType: !364, size: 32, offset: 3520)
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 32)
!365 = !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_entropy_decoder", file: !6, line: 644, flags: DIFlagFwdDecl)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "idct", scope: !164, file: !6, line: 645, baseType: !367, size: 32, offset: 3552)
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 32)
!368 = !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_inverse_dct", file: !6, line: 645, flags: DIFlagFwdDecl)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "upsample", scope: !164, file: !6, line: 646, baseType: !370, size: 32, offset: 3584)
!370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !371, size: 32)
!371 = !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_upsampler", file: !6, line: 646, flags: DIFlagFwdDecl)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "cconvert", scope: !164, file: !6, line: 647, baseType: !373, size: 32, offset: 3616)
!373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 32)
!374 = !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_color_deconverter", file: !6, line: 647, flags: DIFlagFwdDecl)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "cquantize", scope: !164, file: !6, line: 648, baseType: !376, size: 32, offset: 3648)
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 32)
!377 = !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_color_quantizer", file: !6, line: 648, flags: DIFlagFwdDecl)
!378 = !DIGlobalVariableExpression(var: !379, expr: !DIExpression())
!379 = distinct !DIGlobalVariable(name: "cjpeg_wrbmp_djpeg_dest", scope: !2, file: !153, line: 58, type: !380, isLocal: false, isDefinition: true)
!380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cjpeg_wrbmp_djpeg_dest_struct", file: !27, line: 57, size: 192, elements: !381)
!381 = !{!382, !388, !392, !393, !396, !397}
!382 = !DIDerivedType(tag: DW_TAG_member, name: "start_output", scope: !380, file: !27, line: 58, baseType: !383, size: 32)
!383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 32)
!384 = !DISubroutineType(types: !385)
!385 = !{null, !185, !386}
!386 = !DIDerivedType(tag: DW_TAG_typedef, name: "cjpeg_wrbmp_djpeg_dest_ptr", file: !27, line: 55, baseType: !387)
!387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 32)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "put_pixel_rows", scope: !380, file: !27, line: 62, baseType: !389, size: 32, offset: 32)
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 32)
!390 = !DISubroutineType(types: !391)
!391 = !{null, !185, !386, !95}
!392 = !DIDerivedType(tag: DW_TAG_member, name: "finish_output", scope: !380, file: !27, line: 67, baseType: !383, size: 32, offset: 64)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "output_file", scope: !380, file: !27, line: 72, baseType: !394, size: 32, offset: 96)
!394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 32)
!395 = !DIDerivedType(tag: DW_TAG_typedef, name: "CJPEG_WRBMP_FILE", file: !6, line: 28, baseType: !51)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !380, file: !27, line: 78, baseType: !88, size: 32, offset: 128)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_height", scope: !380, file: !27, line: 79, baseType: !95, size: 32, offset: 160)
!398 = !DIGlobalVariableExpression(var: !399, expr: !DIExpression())
!399 = distinct !DIGlobalVariable(name: "cjpeg_wrbmp_bmp_dest", scope: !2, file: !153, line: 59, type: !400, isLocal: false, isDefinition: true)
!400 = !DIDerivedType(tag: DW_TAG_typedef, name: "cjpeg_wrbmp_bmp_dest_struct", file: !153, line: 45, baseType: !401)
!401 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !153, line: 34, size: 384, elements: !402)
!402 = !{!403, !404, !405, !406, !407, !408, !409}
!403 = !DIDerivedType(tag: DW_TAG_member, name: "pub", scope: !401, file: !153, line: 35, baseType: !380, size: 192)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "is_os2", scope: !401, file: !153, line: 36, baseType: !117, size: 32, offset: 192)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "whole_image", scope: !401, file: !153, line: 38, baseType: !114, size: 32, offset: 224)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "data_width", scope: !401, file: !153, line: 39, baseType: !95, size: 32, offset: 256)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "row_width", scope: !401, file: !153, line: 41, baseType: !95, size: 32, offset: 288)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "pad_bytes", scope: !401, file: !153, line: 42, baseType: !51, size: 32, offset: 320)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "cur_output_row", scope: !401, file: !153, line: 44, baseType: !95, size: 32, offset: 352)
!410 = !DIGlobalVariableExpression(var: !411, expr: !DIExpression())
!411 = distinct !DIGlobalVariable(name: "cjpeg_wrbmp_colormap", scope: !412, file: !415, line: 20, type: !416, isLocal: false, isDefinition: true)
!412 = distinct !DICompileUnit(language: DW_LANG_C99, file: !413, producer: "clang version 14.0.6 (git@github.com:RTS-SYSU/LLVM-TA.git b7f9c4ccdebc6c37532ddd772889e5f0ff989c79)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !414, splitDebugInlining: false, nameTableKind: None)
!413 = !DIFile(filename: "/workspaces/llvmta/testcases/singletest/cjpeg_wrbmp/input.c", directory: "/workspaces/llvmta/testcases/singletest/bsort")
!414 = !{!410}
!415 = !DIFile(filename: "cjpeg_wrbmp/input.c", directory: "/workspaces/llvmta/testcases/singletest")
!416 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 6144, elements: !417)
!417 = !{!418, !266}
!418 = !DISubrange(count: 3)
!419 = distinct !DICompileUnit(language: DW_LANG_C99, file: !420, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!420 = !DIFile(filename: "../absvdi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "f0fa545ed84eab29322431dd903e1bd2")
!421 = distinct !DICompileUnit(language: DW_LANG_C99, file: !422, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!422 = !DIFile(filename: "../absvsi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "4c623fefc2c7ed3929c6e73514b667d1")
!423 = distinct !DICompileUnit(language: DW_LANG_C99, file: !424, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!424 = !DIFile(filename: "../absvti2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "37a4bc629baa89b5b7c1570be0d03e1f")
!425 = distinct !DICompileUnit(language: DW_LANG_C99, file: !426, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!426 = !DIFile(filename: "../addvdi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "aa240ee8ce7c28b2c3bcec10a7603d3f")
!427 = distinct !DICompileUnit(language: DW_LANG_C99, file: !428, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!428 = !DIFile(filename: "../addvsi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "6cd4d40cc00928f1aaf6f29e299078cd")
!429 = distinct !DICompileUnit(language: DW_LANG_C99, file: !430, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!430 = !DIFile(filename: "../addvti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "0db25cee24f6026e13fc556e48cb2a4f")
!431 = distinct !DICompileUnit(language: DW_LANG_C99, file: !432, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!432 = !DIFile(filename: "../ashldi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "ae5236ddcefaf3e5efc4feba69d334b1")
!433 = distinct !DICompileUnit(language: DW_LANG_C99, file: !434, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!434 = !DIFile(filename: "../ashlti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "040402442e4641b723a41224f90bb33c")
!435 = distinct !DICompileUnit(language: DW_LANG_C99, file: !436, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!436 = !DIFile(filename: "../ashrdi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "df60b7a82095e7d7b5c11e1095a5679a")
!437 = distinct !DICompileUnit(language: DW_LANG_C99, file: !438, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!438 = !DIFile(filename: "../ashrti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "d09af17b4c5b806431a14ef018da30a2")
!439 = distinct !DICompileUnit(language: DW_LANG_C99, file: !440, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!440 = !DIFile(filename: "../clzdi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "901c40e0319a50689080965b20695c3e")
!441 = distinct !DICompileUnit(language: DW_LANG_C99, file: !442, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!442 = !DIFile(filename: "../clzsi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "9b0156c55102d3143e17bdf85bafbc30")
!443 = distinct !DICompileUnit(language: DW_LANG_C99, file: !444, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!444 = !DIFile(filename: "../clzti2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "6289c95e51f48974308ae457c947fa76")
!445 = distinct !DICompileUnit(language: DW_LANG_C99, file: !446, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!446 = !DIFile(filename: "../cmpdi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "79ec8a4b383c8374d228cd0869637319")
!447 = distinct !DICompileUnit(language: DW_LANG_C99, file: !448, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!448 = !DIFile(filename: "../cmpti2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "8b9214d8b14681920bdf2cff2acab581")
!449 = distinct !DICompileUnit(language: DW_LANG_C99, file: !450, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!450 = !DIFile(filename: "../ctzdi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "0415a3f61808ca646548bc24b48a844a")
!451 = distinct !DICompileUnit(language: DW_LANG_C99, file: !452, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!452 = !DIFile(filename: "../ctzsi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "0372a2c6647eddaa73c0b61d8d03c3b1")
!453 = distinct !DICompileUnit(language: DW_LANG_C99, file: !454, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!454 = !DIFile(filename: "../ctzti2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "13fd6233b75667ee3310f19e92769490")
!455 = distinct !DICompileUnit(language: DW_LANG_C99, file: !456, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!456 = !DIFile(filename: "../divdi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "281227589e0794a81d7211e4ee4a402c")
!457 = distinct !DICompileUnit(language: DW_LANG_C99, file: !458, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!458 = !DIFile(filename: "../divmoddi4.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "bd72633dccf26f3dd8ee74bf04f7fdac")
!459 = distinct !DICompileUnit(language: DW_LANG_C99, file: !460, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!460 = !DIFile(filename: "../divmodsi4.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "0cf7caca427f8ea020b675e27b5985b5")
!461 = distinct !DICompileUnit(language: DW_LANG_C99, file: !462, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!462 = !DIFile(filename: "../divsi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "7845e3e46788425cf69d463f3cfe00e5")
!463 = distinct !DICompileUnit(language: DW_LANG_C99, file: !464, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!464 = !DIFile(filename: "../divti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "6f197084470906a806c88d3dd279e870")
!465 = distinct !DICompileUnit(language: DW_LANG_C99, file: !466, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!466 = !DIFile(filename: "../ffsdi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "4b800e1cad35a0bc99971441032171a3")
!467 = distinct !DICompileUnit(language: DW_LANG_C99, file: !468, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!468 = !DIFile(filename: "../ffssi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "182169d6765bddc2bf1b03cc7a4f47cb")
!469 = distinct !DICompileUnit(language: DW_LANG_C99, file: !470, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!470 = !DIFile(filename: "../ffsti2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "828ab085c50c22a6e163e289ad75e357")
!471 = distinct !DICompileUnit(language: DW_LANG_C99, file: !472, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!472 = !DIFile(filename: "../int_util.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "7ceb1d4e85bede509d8e6a0974078bc9")
!473 = distinct !DICompileUnit(language: DW_LANG_C99, file: !474, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!474 = !DIFile(filename: "../lshrdi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "c456e45323b3205c3b32d82b51570771")
!475 = distinct !DICompileUnit(language: DW_LANG_C99, file: !476, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!476 = !DIFile(filename: "../lshrti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "a0deefe7ea6369a844ff00cfd3adca3e")
!477 = distinct !DICompileUnit(language: DW_LANG_C99, file: !478, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!478 = !DIFile(filename: "../moddi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "76733914157a978303cbe3d6f6d1c647")
!479 = distinct !DICompileUnit(language: DW_LANG_C99, file: !480, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!480 = !DIFile(filename: "../modsi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "ada583aff17540d2228ce14dc879fdc8")
!481 = distinct !DICompileUnit(language: DW_LANG_C99, file: !482, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!482 = !DIFile(filename: "../modti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "7d8393bf5eb9f0ba6dd3cb5fd0d18b1c")
!483 = distinct !DICompileUnit(language: DW_LANG_C99, file: !484, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!484 = !DIFile(filename: "../mulvdi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "bb6aa1440e4e37fe94db90279d27db10")
!485 = distinct !DICompileUnit(language: DW_LANG_C99, file: !486, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!486 = !DIFile(filename: "../mulvsi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "32cd947949fac3c039bd0839cd5d7c78")
!487 = distinct !DICompileUnit(language: DW_LANG_C99, file: !488, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!488 = !DIFile(filename: "../mulvti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "600972d5762784972446ff2942320803")
!489 = distinct !DICompileUnit(language: DW_LANG_C99, file: !490, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!490 = !DIFile(filename: "../paritydi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "bd9549e31bcebf1c2265048ea6f18a77")
!491 = distinct !DICompileUnit(language: DW_LANG_C99, file: !492, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!492 = !DIFile(filename: "../paritysi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "235e89e1ac3c55fb43879550247ea25b")
!493 = distinct !DICompileUnit(language: DW_LANG_C99, file: !494, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!494 = !DIFile(filename: "../parityti2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "731d722977e9d8c0cd1987cb790d412a")
!495 = distinct !DICompileUnit(language: DW_LANG_C99, file: !496, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!496 = !DIFile(filename: "../popcountdi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "05f001da7fc478c773612fd707769c2a")
!497 = distinct !DICompileUnit(language: DW_LANG_C99, file: !498, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!498 = !DIFile(filename: "../popcountsi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "f9ebedb2d8810ee5a54fff38e1b09d64")
!499 = distinct !DICompileUnit(language: DW_LANG_C99, file: !500, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!500 = !DIFile(filename: "../popcountti2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "cc3baf5a1f58193aeafb2e81bae65208")
!501 = distinct !DICompileUnit(language: DW_LANG_C99, file: !502, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!502 = !DIFile(filename: "../subvdi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "5774ab7a3a8e168deb55531047d6a873")
!503 = distinct !DICompileUnit(language: DW_LANG_C99, file: !504, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!504 = !DIFile(filename: "../subvsi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "c9558a85e8fabce36f42a29933bd87e9")
!505 = distinct !DICompileUnit(language: DW_LANG_C99, file: !506, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!506 = !DIFile(filename: "../subvti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "ae43c388730e95c5ad9b20d37f73fd82")
!507 = distinct !DICompileUnit(language: DW_LANG_C99, file: !508, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!508 = !DIFile(filename: "../ucmpdi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "79f778ef54939446d175079e19d07756")
!509 = distinct !DICompileUnit(language: DW_LANG_C99, file: !510, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!510 = !DIFile(filename: "../ucmpti2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "d30b659e82f7851c826242cd1de6f293")
!511 = distinct !DICompileUnit(language: DW_LANG_C99, file: !512, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!512 = !DIFile(filename: "../udivdi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "580a28989090b62fc3d261faa6e31a6b")
!513 = distinct !DICompileUnit(language: DW_LANG_C99, file: !514, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!514 = !DIFile(filename: "../udivmoddi4.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "eca4b147be989cda91330ba5b56ed879")
!515 = distinct !DICompileUnit(language: DW_LANG_C99, file: !516, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!516 = !DIFile(filename: "../udivmodsi4.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "c0341684574a20dbcfbe4df0ab9f8538")
!517 = distinct !DICompileUnit(language: DW_LANG_C99, file: !518, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!518 = !DIFile(filename: "../udivmodti4.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "876858111b283249167fa6a71cc4682f")
!519 = distinct !DICompileUnit(language: DW_LANG_C99, file: !520, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!520 = !DIFile(filename: "../udivsi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "b74987a973aededf95faab34db33f58a")
!521 = distinct !DICompileUnit(language: DW_LANG_C99, file: !522, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!522 = !DIFile(filename: "../udivti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "c9304f2e77edc1023290a4f40073f6f7")
!523 = distinct !DICompileUnit(language: DW_LANG_C99, file: !524, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!524 = !DIFile(filename: "../umoddi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "1a99e635325595a81040fb97dab88295")
!525 = distinct !DICompileUnit(language: DW_LANG_C99, file: !526, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!526 = !DIFile(filename: "../umodsi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "ce74ac33cd2bd170a84f43824cae8961")
!527 = distinct !DICompileUnit(language: DW_LANG_C99, file: !528, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!528 = !DIFile(filename: "../umodti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "f900660feeec718da080f01b23c74384")
!529 = distinct !DICompileUnit(language: DW_LANG_C99, file: !530, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!530 = !DIFile(filename: "../memory.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsstd/buildarmv4", checksumkind: CSK_MD5, checksum: "fa9c872a007b30a353222cd13b38538d")
!531 = !{!"clang version 14.0.6 (git@github.com:RTS-SYSU/LLVM-TA.git b7f9c4ccdebc6c37532ddd772889e5f0ff989c79)"}
!532 = !{!"clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)"}
!533 = !{i32 7, !"Dwarf Version", i32 5}
!534 = !{i32 2, !"Debug Info Version", i32 3}
!535 = !{i32 1, !"wchar_size", i32 4}
!536 = !{i32 1, !"min_enum_size", i32 4}
!537 = !{i32 1, !"branch-target-enforcement", i32 0}
!538 = !{i32 1, !"sign-return-address", i32 0}
!539 = !{i32 1, !"sign-return-address-all", i32 0}
!540 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!541 = !{i32 7, !"frame-pointer", i32 2}
!542 = distinct !DISubprogram(name: "cjpeg_wrbmp_init", scope: !153, file: !153, line: 79, type: !543, scopeLine: 80, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !545)
!543 = !DISubroutineType(types: !544)
!544 = !{null}
!545 = !{}
!546 = !DILocation(line: 81, column: 3, scope: !542)
!547 = !DILocation(line: 83, column: 50, scope: !542)
!548 = !DILocation(line: 84, column: 50, scope: !542)
!549 = !DILocation(line: 85, column: 50, scope: !542)
!550 = !DILocation(line: 86, column: 50, scope: !542)
!551 = !DILocation(line: 88, column: 50, scope: !542)
!552 = !DILocation(line: 89, column: 50, scope: !542)
!553 = !DILocation(line: 90, column: 50, scope: !542)
!554 = !DILocation(line: 91, column: 50, scope: !542)
!555 = !DILocation(line: 93, column: 27, scope: !542)
!556 = !DILocation(line: 95, column: 24, scope: !542)
!557 = !DILocation(line: 96, column: 1, scope: !542)
!558 = distinct !DISubprogram(name: "cjpeg_wrbmp_putc_modified", scope: !153, file: !153, line: 101, type: !559, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !545)
!559 = !DISubroutineType(types: !560)
!560 = !{!51, !51}
!561 = !DILocalVariable(name: "character", arg: 1, scope: !558, file: !153, line: 101, type: !51)
!562 = !DILocation(line: 0, scope: !558)
!563 = !DILocation(line: 103, column: 34, scope: !558)
!564 = !DILocation(line: 103, column: 6, scope: !558)
!565 = !DILocation(line: 103, column: 32, scope: !558)
!566 = !DILocation(line: 105, column: 3, scope: !558)
!567 = !DILocation(line: 107, column: 24, scope: !558)
!568 = !DILocation(line: 109, column: 3, scope: !558)
!569 = distinct !DISubprogram(name: "cjpeg_wrbmp_finish_output_bmp", scope: !153, file: !153, line: 112, type: !183, scopeLine: 113, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !545)
!570 = !DILocalVariable(name: "cinfo", arg: 1, scope: !569, file: !153, line: 112, type: !185)
!571 = !DILocation(line: 0, scope: !569)
!572 = !DILocation(line: 116, column: 44, scope: !569)
!573 = !DILocalVariable(name: "progress", scope: !569, file: !153, line: 115, type: !26)
!574 = !DILocation(line: 120, column: 22, scope: !575)
!575 = distinct !DILexicalBlock(scope: !569, file: !153, line: 120, column: 3)
!576 = !DILocalVariable(name: "row", scope: !569, file: !153, line: 114, type: !95)
!577 = !DILocation(line: 120, column: 9, scope: !575)
!578 = !DILocation(line: 0, scope: !575)
!579 = !DILocation(line: 120, column: 41, scope: !580)
!580 = distinct !DILexicalBlock(scope: !575, file: !153, line: 120, column: 3)
!581 = !DILocation(line: 120, column: 3, scope: !575)
!582 = !DILocation(line: 121, column: 19, scope: !583)
!583 = distinct !DILexicalBlock(scope: !584, file: !153, line: 121, column: 10)
!584 = distinct !DILexicalBlock(scope: !580, file: !153, line: 120, column: 54)
!585 = !DILocation(line: 121, column: 10, scope: !584)
!586 = !DILocation(line: 122, column: 53, scope: !587)
!587 = distinct !DILexicalBlock(scope: !583, file: !153, line: 121, column: 26)
!588 = !DILocation(line: 122, column: 67, scope: !587)
!589 = !DILocation(line: 122, column: 21, scope: !587)
!590 = !DILocation(line: 122, column: 34, scope: !587)
!591 = !DILocation(line: 123, column: 50, scope: !587)
!592 = !DILocation(line: 123, column: 21, scope: !587)
!593 = !DILocation(line: 123, column: 32, scope: !587)
!594 = !DILocation(line: 124, column: 5, scope: !587)
!595 = !DILocation(line: 125, column: 3, scope: !584)
!596 = !DILocation(line: 120, column: 46, scope: !580)
!597 = !DILocation(line: 120, column: 3, scope: !580)
!598 = distinct !{!598, !581, !599, !600}
!599 = !DILocation(line: 125, column: 3, scope: !575)
!600 = !{!"llvm.loop.mustprogress"}
!601 = !DILocation(line: 127, column: 17, scope: !602)
!602 = distinct !DILexicalBlock(scope: !569, file: !153, line: 127, column: 8)
!603 = !DILocation(line: 127, column: 8, scope: !569)
!604 = !DILocation(line: 128, column: 15, scope: !602)
!605 = !DILocation(line: 128, column: 37, scope: !602)
!606 = !DILocation(line: 128, column: 5, scope: !602)
!607 = !DILocation(line: 129, column: 1, scope: !569)
!608 = distinct !DISubprogram(name: "cjpeg_wrbmp_write_colormap", scope: !153, file: !153, line: 131, type: !609, scopeLine: 134, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !545)
!609 = !DISubroutineType(types: !610)
!610 = !{null, !185, !51, !51, !51}
!611 = !DILocalVariable(name: "cinfo", arg: 1, scope: !608, file: !153, line: 132, type: !185)
!612 = !DILocation(line: 0, scope: !608)
!613 = !DILocalVariable(name: "map_colors", arg: 2, scope: !608, file: !153, line: 133, type: !51)
!614 = !DILocalVariable(name: "map_entry_size", arg: 3, scope: !608, file: !153, line: 133, type: !51)
!615 = !DILocalVariable(name: "cMap", arg: 4, scope: !608, file: !153, line: 133, type: !51)
!616 = !DILocation(line: 136, column: 27, scope: !608)
!617 = !DILocalVariable(name: "num_colors", scope: !608, file: !153, line: 136, type: !51)
!618 = !DILocation(line: 139, column: 13, scope: !619)
!619 = distinct !DILexicalBlock(scope: !608, file: !153, line: 139, column: 8)
!620 = !DILocation(line: 139, column: 8, scope: !608)
!621 = !DILocation(line: 141, column: 17, scope: !622)
!622 = distinct !DILexicalBlock(scope: !623, file: !153, line: 141, column: 10)
!623 = distinct !DILexicalBlock(scope: !619, file: !153, line: 139, column: 20)
!624 = !DILocation(line: 141, column: 38, scope: !622)
!625 = !DILocation(line: 141, column: 10, scope: !623)
!626 = !DILocalVariable(name: "i", scope: !608, file: !153, line: 137, type: !51)
!627 = !DILocation(line: 144, column: 13, scope: !628)
!628 = distinct !DILexicalBlock(scope: !629, file: !153, line: 144, column: 7)
!629 = distinct !DILexicalBlock(scope: !622, file: !153, line: 141, column: 45)
!630 = !DILocation(line: 0, scope: !628)
!631 = !DILocation(line: 144, column: 22, scope: !632)
!632 = distinct !DILexicalBlock(scope: !628, file: !153, line: 144, column: 7)
!633 = !DILocation(line: 144, column: 7, scope: !628)
!634 = !DILocation(line: 145, column: 36, scope: !635)
!635 = distinct !DILexicalBlock(scope: !632, file: !153, line: 144, column: 42)
!636 = !DILocation(line: 145, column: 9, scope: !635)
!637 = !DILocation(line: 147, column: 36, scope: !635)
!638 = !DILocation(line: 147, column: 9, scope: !635)
!639 = !DILocation(line: 149, column: 36, scope: !635)
!640 = !DILocation(line: 149, column: 9, scope: !635)
!641 = !DILocation(line: 152, column: 29, scope: !642)
!642 = distinct !DILexicalBlock(scope: !635, file: !153, line: 152, column: 14)
!643 = !DILocation(line: 152, column: 14, scope: !635)
!644 = !DILocation(line: 153, column: 11, scope: !642)
!645 = !DILocation(line: 154, column: 7, scope: !635)
!646 = !DILocation(line: 144, column: 37, scope: !632)
!647 = !DILocation(line: 144, column: 7, scope: !632)
!648 = distinct !{!648, !633, !649, !600}
!649 = !DILocation(line: 154, column: 7, scope: !628)
!650 = !DILocation(line: 155, column: 5, scope: !629)
!651 = !DILocation(line: 158, column: 13, scope: !652)
!652 = distinct !DILexicalBlock(scope: !653, file: !153, line: 158, column: 7)
!653 = distinct !DILexicalBlock(scope: !622, file: !153, line: 155, column: 12)
!654 = !DILocation(line: 0, scope: !652)
!655 = !DILocation(line: 158, column: 22, scope: !656)
!656 = distinct !DILexicalBlock(scope: !652, file: !153, line: 158, column: 7)
!657 = !DILocation(line: 158, column: 7, scope: !652)
!658 = !DILocation(line: 160, column: 36, scope: !659)
!659 = distinct !DILexicalBlock(scope: !656, file: !153, line: 158, column: 42)
!660 = !DILocation(line: 160, column: 9, scope: !659)
!661 = !DILocation(line: 162, column: 36, scope: !659)
!662 = !DILocation(line: 162, column: 9, scope: !659)
!663 = !DILocation(line: 164, column: 36, scope: !659)
!664 = !DILocation(line: 164, column: 9, scope: !659)
!665 = !DILocation(line: 167, column: 29, scope: !666)
!666 = distinct !DILexicalBlock(scope: !659, file: !153, line: 167, column: 14)
!667 = !DILocation(line: 167, column: 14, scope: !659)
!668 = !DILocation(line: 168, column: 11, scope: !666)
!669 = !DILocation(line: 169, column: 7, scope: !659)
!670 = !DILocation(line: 158, column: 37, scope: !656)
!671 = !DILocation(line: 158, column: 7, scope: !656)
!672 = distinct !{!672, !657, !673, !600}
!673 = !DILocation(line: 169, column: 7, scope: !652)
!674 = !DILocation(line: 0, scope: !622)
!675 = !DILocation(line: 171, column: 3, scope: !623)
!676 = !DILocation(line: 174, column: 11, scope: !677)
!677 = distinct !DILexicalBlock(scope: !678, file: !153, line: 174, column: 5)
!678 = distinct !DILexicalBlock(scope: !619, file: !153, line: 171, column: 10)
!679 = !DILocation(line: 0, scope: !677)
!680 = !DILocation(line: 174, column: 20, scope: !681)
!681 = distinct !DILexicalBlock(scope: !677, file: !153, line: 174, column: 5)
!682 = !DILocation(line: 174, column: 5, scope: !677)
!683 = !DILocation(line: 175, column: 7, scope: !684)
!684 = distinct !DILexicalBlock(scope: !681, file: !153, line: 174, column: 33)
!685 = !DILocation(line: 176, column: 7, scope: !684)
!686 = !DILocation(line: 177, column: 7, scope: !684)
!687 = !DILocation(line: 179, column: 27, scope: !688)
!688 = distinct !DILexicalBlock(scope: !684, file: !153, line: 179, column: 12)
!689 = !DILocation(line: 179, column: 12, scope: !684)
!690 = !DILocation(line: 180, column: 9, scope: !688)
!691 = !DILocation(line: 181, column: 5, scope: !684)
!692 = !DILocation(line: 174, column: 28, scope: !681)
!693 = !DILocation(line: 174, column: 5, scope: !681)
!694 = distinct !{!694, !682, !695, !600}
!695 = !DILocation(line: 181, column: 5, scope: !677)
!696 = !DILocation(line: 0, scope: !619)
!697 = !DILocation(line: 186, column: 3, scope: !608)
!698 = !DILocation(line: 186, column: 13, scope: !699)
!699 = distinct !DILexicalBlock(scope: !700, file: !153, line: 186, column: 3)
!700 = distinct !DILexicalBlock(scope: !608, file: !153, line: 186, column: 3)
!701 = !DILocation(line: 186, column: 3, scope: !700)
!702 = !DILocation(line: 187, column: 5, scope: !703)
!703 = distinct !DILexicalBlock(scope: !699, file: !153, line: 186, column: 33)
!704 = !DILocation(line: 188, column: 5, scope: !703)
!705 = !DILocation(line: 189, column: 5, scope: !703)
!706 = !DILocation(line: 191, column: 25, scope: !707)
!707 = distinct !DILexicalBlock(scope: !703, file: !153, line: 191, column: 10)
!708 = !DILocation(line: 191, column: 10, scope: !703)
!709 = !DILocation(line: 192, column: 7, scope: !707)
!710 = !DILocation(line: 193, column: 3, scope: !703)
!711 = !DILocation(line: 186, column: 28, scope: !699)
!712 = !DILocation(line: 186, column: 3, scope: !699)
!713 = distinct !{!713, !701, !714, !600}
!714 = !DILocation(line: 193, column: 3, scope: !700)
!715 = !DILocation(line: 194, column: 1, scope: !608)
!716 = distinct !DISubprogram(name: "cjpeg_wrbmp_main", scope: !153, file: !153, line: 196, type: !543, scopeLine: 197, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !545)
!717 = !DILocation(line: 198, column: 3, scope: !716)
!718 = !DILocation(line: 199, column: 3, scope: !716)
!719 = !DILocation(line: 201, column: 3, scope: !716)
!720 = !DILocation(line: 202, column: 3, scope: !716)
!721 = !DILocation(line: 203, column: 1, scope: !716)
!722 = distinct !DISubprogram(name: "cjpeg_wrbmp_return", scope: !153, file: !153, line: 205, type: !723, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !545)
!723 = !DISubroutineType(types: !724)
!724 = !{!51}
!725 = !DILocation(line: 207, column: 12, scope: !722)
!726 = !DILocation(line: 207, column: 50, scope: !722)
!727 = !DILocation(line: 207, column: 3, scope: !722)
!728 = distinct !DISubprogram(name: "main", scope: !153, file: !153, line: 210, type: !723, scopeLine: 211, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !545)
!729 = !DILocation(line: 212, column: 3, scope: !728)
!730 = !DILocation(line: 213, column: 3, scope: !728)
!731 = !DILocation(line: 215, column: 12, scope: !728)
!732 = !DILocation(line: 215, column: 3, scope: !728)
!733 = distinct !DISubprogram(name: "cjpeg_wrbmp_initInput", scope: !415, file: !415, line: 22, type: !543, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !412, retainedNodes: !545)
!734 = !DILocalVariable(name: "tmp", scope: !733, file: !415, line: 25, type: !735)
!735 = !DICompositeType(tag: DW_TAG_array_type, baseType: !736, size: 6144, elements: !417)
!736 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !94)
!737 = !DILocation(line: 25, column: 26, scope: !733)
!738 = !DILocalVariable(name: "i", scope: !733, file: !415, line: 24, type: !51)
!739 = !DILocation(line: 0, scope: !733)
!740 = !DILocation(line: 81, column: 9, scope: !741)
!741 = distinct !DILexicalBlock(scope: !733, file: !415, line: 81, column: 3)
!742 = !DILocation(line: 0, scope: !741)
!743 = !DILocation(line: 81, column: 18, scope: !744)
!744 = distinct !DILexicalBlock(scope: !741, file: !415, line: 81, column: 3)
!745 = !DILocation(line: 81, column: 3, scope: !741)
!746 = !DILocalVariable(name: "j", scope: !733, file: !415, line: 24, type: !51)
!747 = !DILocation(line: 83, column: 11, scope: !748)
!748 = distinct !DILexicalBlock(scope: !749, file: !415, line: 83, column: 5)
!749 = distinct !DILexicalBlock(scope: !744, file: !415, line: 81, column: 29)
!750 = !DILocation(line: 0, scope: !748)
!751 = !DILocation(line: 83, column: 20, scope: !752)
!752 = distinct !DILexicalBlock(scope: !748, file: !415, line: 83, column: 5)
!753 = !DILocation(line: 83, column: 5, scope: !748)
!754 = !DILocation(line: 84, column: 40, scope: !752)
!755 = !DILocation(line: 84, column: 7, scope: !752)
!756 = !DILocation(line: 84, column: 38, scope: !752)
!757 = !DILocation(line: 83, column: 28, scope: !752)
!758 = !DILocation(line: 83, column: 5, scope: !752)
!759 = distinct !{!759, !753, !760, !600}
!760 = !DILocation(line: 84, column: 52, scope: !748)
!761 = !DILocation(line: 85, column: 3, scope: !749)
!762 = !DILocation(line: 81, column: 24, scope: !744)
!763 = !DILocation(line: 81, column: 3, scope: !744)
!764 = distinct !{!764, !745, !765, !600}
!765 = !DILocation(line: 85, column: 3, scope: !741)
!766 = !DILocation(line: 86, column: 1, scope: !733)
!767 = distinct !DISubprogram(name: "__absvdi2", scope: !420, file: !420, line: 22, type: !768, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !419, retainedNodes: !545)
!768 = !DISubroutineType(types: !545)
!769 = !DILocation(line: 25, column: 11, scope: !767)
!770 = !DILocation(line: 25, column: 9, scope: !767)
!771 = !DILocation(line: 26, column: 9, scope: !767)
!772 = !DILocation(line: 28, column: 20, scope: !767)
!773 = !DILocation(line: 28, column: 5, scope: !767)
!774 = distinct !DISubprogram(name: "compilerrt_abort_impl", scope: !472, file: !472, line: 57, type: !768, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !471, retainedNodes: !545)
!775 = !DILocation(line: 59, column: 1, scope: !774)
!776 = distinct !DISubprogram(name: "__absvsi2", scope: !422, file: !422, line: 22, type: !768, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !421, retainedNodes: !545)
!777 = !DILocation(line: 25, column: 11, scope: !776)
!778 = !DILocation(line: 25, column: 9, scope: !776)
!779 = !DILocation(line: 26, column: 9, scope: !776)
!780 = !DILocation(line: 28, column: 20, scope: !776)
!781 = !DILocation(line: 28, column: 5, scope: !776)
!782 = distinct !DISubprogram(name: "__addvdi3", scope: !426, file: !426, line: 22, type: !768, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !425, retainedNodes: !545)
!783 = !DILocation(line: 24, column: 27, scope: !782)
!784 = !DILocation(line: 25, column: 11, scope: !782)
!785 = !DILocation(line: 25, column: 9, scope: !782)
!786 = !DILocation(line: 27, column: 15, scope: !782)
!787 = !DILocation(line: 27, column: 13, scope: !782)
!788 = !DILocation(line: 28, column: 13, scope: !782)
!789 = !DILocation(line: 29, column: 5, scope: !782)
!790 = !DILocation(line: 32, column: 15, scope: !782)
!791 = !DILocation(line: 32, column: 13, scope: !782)
!792 = !DILocation(line: 33, column: 13, scope: !782)
!793 = !DILocation(line: 35, column: 5, scope: !782)
!794 = distinct !DISubprogram(name: "__addvsi3", scope: !428, file: !428, line: 22, type: !768, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !427, retainedNodes: !545)
!795 = !DILocation(line: 24, column: 27, scope: !794)
!796 = !DILocation(line: 25, column: 11, scope: !794)
!797 = !DILocation(line: 25, column: 9, scope: !794)
!798 = !DILocation(line: 27, column: 15, scope: !794)
!799 = !DILocation(line: 27, column: 13, scope: !794)
!800 = !DILocation(line: 28, column: 13, scope: !794)
!801 = !DILocation(line: 29, column: 5, scope: !794)
!802 = !DILocation(line: 32, column: 15, scope: !794)
!803 = !DILocation(line: 32, column: 13, scope: !794)
!804 = !DILocation(line: 33, column: 13, scope: !794)
!805 = !DILocation(line: 35, column: 5, scope: !794)
!806 = distinct !DISubprogram(name: "__ashldi3", scope: !432, file: !432, line: 24, type: !768, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !431, retainedNodes: !545)
!807 = !DILocation(line: 29, column: 11, scope: !806)
!808 = !DILocation(line: 29, column: 15, scope: !806)
!809 = !DILocation(line: 30, column: 11, scope: !806)
!810 = !DILocation(line: 30, column: 9, scope: !806)
!811 = !DILocation(line: 32, column: 18, scope: !806)
!812 = !DILocation(line: 32, column: 22, scope: !806)
!813 = !DILocation(line: 33, column: 33, scope: !806)
!814 = !DILocation(line: 33, column: 43, scope: !806)
!815 = !DILocation(line: 33, column: 37, scope: !806)
!816 = !DILocation(line: 33, column: 16, scope: !806)
!817 = !DILocation(line: 33, column: 18, scope: !806)
!818 = !DILocation(line: 33, column: 23, scope: !806)
!819 = !DILocation(line: 34, column: 5, scope: !806)
!820 = !DILocation(line: 37, column: 15, scope: !806)
!821 = !DILocation(line: 37, column: 13, scope: !806)
!822 = !DILocation(line: 38, column: 13, scope: !806)
!823 = !DILocation(line: 39, column: 33, scope: !806)
!824 = !DILocation(line: 39, column: 37, scope: !806)
!825 = !DILocation(line: 39, column: 18, scope: !806)
!826 = !DILocation(line: 39, column: 23, scope: !806)
!827 = !DILocation(line: 40, column: 32, scope: !806)
!828 = !DILocation(line: 40, column: 34, scope: !806)
!829 = !DILocation(line: 40, column: 39, scope: !806)
!830 = !DILocation(line: 40, column: 56, scope: !806)
!831 = !DILocation(line: 40, column: 77, scope: !806)
!832 = !DILocation(line: 40, column: 60, scope: !806)
!833 = !DILocation(line: 40, column: 45, scope: !806)
!834 = !DILocation(line: 40, column: 16, scope: !806)
!835 = !DILocation(line: 40, column: 18, scope: !806)
!836 = !DILocation(line: 40, column: 23, scope: !806)
!837 = !DILocation(line: 42, column: 19, scope: !806)
!838 = !DILocation(line: 42, column: 5, scope: !806)
!839 = !DILocation(line: 0, scope: !806)
!840 = !DILocation(line: 43, column: 1, scope: !806)
!841 = distinct !DISubprogram(name: "__ashrdi3", scope: !436, file: !436, line: 24, type: !768, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !435, retainedNodes: !545)
!842 = !DILocation(line: 29, column: 11, scope: !841)
!843 = !DILocation(line: 29, column: 15, scope: !841)
!844 = !DILocation(line: 30, column: 11, scope: !841)
!845 = !DILocation(line: 30, column: 9, scope: !841)
!846 = !DILocation(line: 33, column: 31, scope: !841)
!847 = !DILocation(line: 33, column: 33, scope: !841)
!848 = !DILocation(line: 33, column: 38, scope: !841)
!849 = !DILocation(line: 33, column: 16, scope: !841)
!850 = !DILocation(line: 33, column: 18, scope: !841)
!851 = !DILocation(line: 33, column: 23, scope: !841)
!852 = !DILocation(line: 34, column: 30, scope: !841)
!853 = !DILocation(line: 34, column: 32, scope: !841)
!854 = !DILocation(line: 34, column: 43, scope: !841)
!855 = !DILocation(line: 34, column: 37, scope: !841)
!856 = !DILocation(line: 34, column: 18, scope: !841)
!857 = !DILocation(line: 34, column: 22, scope: !841)
!858 = !DILocation(line: 35, column: 5, scope: !841)
!859 = !DILocation(line: 38, column: 15, scope: !841)
!860 = !DILocation(line: 38, column: 13, scope: !841)
!861 = !DILocation(line: 39, column: 13, scope: !841)
!862 = !DILocation(line: 40, column: 32, scope: !841)
!863 = !DILocation(line: 40, column: 34, scope: !841)
!864 = !DILocation(line: 40, column: 39, scope: !841)
!865 = !DILocation(line: 40, column: 16, scope: !841)
!866 = !DILocation(line: 40, column: 18, scope: !841)
!867 = !DILocation(line: 40, column: 24, scope: !841)
!868 = !DILocation(line: 41, column: 31, scope: !841)
!869 = !DILocation(line: 41, column: 33, scope: !841)
!870 = !DILocation(line: 41, column: 55, scope: !841)
!871 = !DILocation(line: 41, column: 38, scope: !841)
!872 = !DILocation(line: 41, column: 72, scope: !841)
!873 = !DILocation(line: 41, column: 76, scope: !841)
!874 = !DILocation(line: 41, column: 61, scope: !841)
!875 = !DILocation(line: 41, column: 18, scope: !841)
!876 = !DILocation(line: 41, column: 22, scope: !841)
!877 = !DILocation(line: 43, column: 19, scope: !841)
!878 = !DILocation(line: 43, column: 5, scope: !841)
!879 = !DILocation(line: 0, scope: !841)
!880 = !DILocation(line: 44, column: 1, scope: !841)
!881 = distinct !DISubprogram(name: "__clzdi2", scope: !440, file: !440, line: 22, type: !768, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !439, retainedNodes: !545)
!882 = !DILocation(line: 25, column: 7, scope: !881)
!883 = !DILocation(line: 25, column: 11, scope: !881)
!884 = !DILocation(line: 26, column: 26, scope: !881)
!885 = !DILocation(line: 26, column: 28, scope: !881)
!886 = !DILocation(line: 26, column: 33, scope: !881)
!887 = !DILocation(line: 27, column: 29, scope: !881)
!888 = !DILocation(line: 27, column: 31, scope: !881)
!889 = !DILocation(line: 27, column: 49, scope: !881)
!890 = !DILocation(line: 27, column: 42, scope: !881)
!891 = !DILocation(line: 27, column: 12, scope: !881)
!892 = !{i32 0, i32 33}
!893 = !DILocation(line: 28, column: 15, scope: !881)
!894 = !DILocation(line: 27, column: 59, scope: !881)
!895 = !DILocation(line: 27, column: 5, scope: !881)
!896 = distinct !DISubprogram(name: "__clzsi2", scope: !442, file: !442, line: 22, type: !768, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !441, retainedNodes: !545)
!897 = !DILocation(line: 25, column: 34, scope: !896)
!898 = !DILocation(line: 25, column: 40, scope: !896)
!899 = !DILocation(line: 26, column: 14, scope: !896)
!900 = !DILocation(line: 26, column: 7, scope: !896)
!901 = !DILocation(line: 29, column: 13, scope: !896)
!902 = !DILocation(line: 29, column: 23, scope: !896)
!903 = !DILocation(line: 29, column: 29, scope: !896)
!904 = !DILocation(line: 30, column: 13, scope: !896)
!905 = !DILocation(line: 30, column: 7, scope: !896)
!906 = !DILocation(line: 31, column: 7, scope: !896)
!907 = !DILocation(line: 33, column: 13, scope: !896)
!908 = !DILocation(line: 33, column: 21, scope: !896)
!909 = !DILocation(line: 33, column: 27, scope: !896)
!910 = !DILocation(line: 34, column: 13, scope: !896)
!911 = !DILocation(line: 34, column: 7, scope: !896)
!912 = !DILocation(line: 35, column: 7, scope: !896)
!913 = !DILocation(line: 37, column: 13, scope: !896)
!914 = !DILocation(line: 37, column: 20, scope: !896)
!915 = !DILocation(line: 37, column: 26, scope: !896)
!916 = !DILocation(line: 38, column: 13, scope: !896)
!917 = !DILocation(line: 38, column: 7, scope: !896)
!918 = !DILocation(line: 39, column: 7, scope: !896)
!919 = !DILocation(line: 52, column: 20, scope: !896)
!920 = !DILocation(line: 52, column: 37, scope: !896)
!921 = !DILocation(line: 52, column: 25, scope: !896)
!922 = !DILocation(line: 52, column: 14, scope: !896)
!923 = !DILocation(line: 52, column: 5, scope: !896)
!924 = distinct !DISubprogram(name: "__cmpdi2", scope: !446, file: !446, line: 23, type: !768, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !445, retainedNodes: !545)
!925 = !DILocation(line: 26, column: 7, scope: !924)
!926 = !DILocation(line: 26, column: 11, scope: !924)
!927 = !DILocation(line: 28, column: 7, scope: !924)
!928 = !DILocation(line: 28, column: 11, scope: !924)
!929 = !DILocation(line: 29, column: 11, scope: !924)
!930 = !DILocation(line: 29, column: 13, scope: !924)
!931 = !DILocation(line: 29, column: 22, scope: !924)
!932 = !DILocation(line: 29, column: 24, scope: !924)
!933 = !DILocation(line: 29, column: 18, scope: !924)
!934 = !DILocation(line: 29, column: 9, scope: !924)
!935 = !DILocation(line: 30, column: 9, scope: !924)
!936 = !DILocation(line: 31, column: 11, scope: !924)
!937 = !DILocation(line: 31, column: 13, scope: !924)
!938 = !DILocation(line: 31, column: 22, scope: !924)
!939 = !DILocation(line: 31, column: 24, scope: !924)
!940 = !DILocation(line: 31, column: 18, scope: !924)
!941 = !DILocation(line: 31, column: 9, scope: !924)
!942 = !DILocation(line: 32, column: 9, scope: !924)
!943 = !DILocation(line: 33, column: 13, scope: !924)
!944 = !DILocation(line: 33, column: 23, scope: !924)
!945 = !DILocation(line: 33, column: 17, scope: !924)
!946 = !DILocation(line: 33, column: 9, scope: !924)
!947 = !DILocation(line: 34, column: 9, scope: !924)
!948 = !DILocation(line: 35, column: 13, scope: !924)
!949 = !DILocation(line: 35, column: 23, scope: !924)
!950 = !DILocation(line: 35, column: 17, scope: !924)
!951 = !DILocation(line: 35, column: 9, scope: !924)
!952 = !DILocation(line: 36, column: 9, scope: !924)
!953 = !DILocation(line: 37, column: 5, scope: !924)
!954 = !DILocation(line: 0, scope: !924)
!955 = !DILocation(line: 38, column: 1, scope: !924)
!956 = distinct !DISubprogram(name: "__aeabi_lcmp", scope: !446, file: !446, line: 46, type: !768, scopeLine: 47, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !445, retainedNodes: !545)
!957 = !DILocation(line: 48, column: 9, scope: !956)
!958 = !DILocation(line: 48, column: 24, scope: !956)
!959 = !DILocation(line: 48, column: 2, scope: !956)
!960 = distinct !DISubprogram(name: "__ctzdi2", scope: !450, file: !450, line: 22, type: !768, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !449, retainedNodes: !545)
!961 = !DILocation(line: 25, column: 7, scope: !960)
!962 = !DILocation(line: 25, column: 11, scope: !960)
!963 = !DILocation(line: 26, column: 28, scope: !960)
!964 = !DILocation(line: 26, column: 32, scope: !960)
!965 = !DILocation(line: 27, column: 29, scope: !960)
!966 = !DILocation(line: 27, column: 31, scope: !960)
!967 = !DILocation(line: 27, column: 41, scope: !960)
!968 = !DILocation(line: 27, column: 12, scope: !960)
!969 = !DILocation(line: 28, column: 18, scope: !960)
!970 = !DILocation(line: 27, column: 59, scope: !960)
!971 = !DILocation(line: 27, column: 5, scope: !960)
!972 = distinct !DISubprogram(name: "__ctzsi2", scope: !452, file: !452, line: 22, type: !768, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !451, retainedNodes: !545)
!973 = !DILocation(line: 25, column: 20, scope: !972)
!974 = !DILocation(line: 25, column: 34, scope: !972)
!975 = !DILocation(line: 25, column: 40, scope: !972)
!976 = !DILocation(line: 26, column: 7, scope: !972)
!977 = !DILocation(line: 29, column: 13, scope: !972)
!978 = !DILocation(line: 29, column: 23, scope: !972)
!979 = !DILocation(line: 29, column: 29, scope: !972)
!980 = !DILocation(line: 30, column: 7, scope: !972)
!981 = !DILocation(line: 31, column: 7, scope: !972)
!982 = !DILocation(line: 33, column: 13, scope: !972)
!983 = !DILocation(line: 33, column: 21, scope: !972)
!984 = !DILocation(line: 33, column: 27, scope: !972)
!985 = !DILocation(line: 34, column: 7, scope: !972)
!986 = !DILocation(line: 35, column: 7, scope: !972)
!987 = !DILocation(line: 37, column: 13, scope: !972)
!988 = !DILocation(line: 37, column: 20, scope: !972)
!989 = !DILocation(line: 37, column: 26, scope: !972)
!990 = !DILocation(line: 38, column: 7, scope: !972)
!991 = !DILocation(line: 40, column: 7, scope: !972)
!992 = !DILocation(line: 56, column: 25, scope: !972)
!993 = !DILocation(line: 56, column: 20, scope: !972)
!994 = !DILocation(line: 56, column: 44, scope: !972)
!995 = !DILocation(line: 56, column: 32, scope: !972)
!996 = !DILocation(line: 56, column: 14, scope: !972)
!997 = !DILocation(line: 56, column: 5, scope: !972)
!998 = distinct !DISubprogram(name: "__divdi3", scope: !456, file: !456, line: 20, type: !768, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !455, retainedNodes: !545)
!999 = !DILocation(line: 23, column: 20, scope: !998)
!1000 = !DILocation(line: 24, column: 20, scope: !998)
!1001 = !DILocation(line: 25, column: 12, scope: !998)
!1002 = !DILocation(line: 25, column: 19, scope: !998)
!1003 = !DILocation(line: 26, column: 12, scope: !998)
!1004 = !DILocation(line: 26, column: 19, scope: !998)
!1005 = !DILocation(line: 27, column: 9, scope: !998)
!1006 = !DILocation(line: 28, column: 13, scope: !998)
!1007 = !DILocation(line: 28, column: 44, scope: !998)
!1008 = !DILocation(line: 28, column: 51, scope: !998)
!1009 = !DILocation(line: 28, column: 5, scope: !998)
!1010 = distinct !DISubprogram(name: "__udivmoddi4", scope: !514, file: !514, line: 24, type: !768, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !513, retainedNodes: !545)
!1011 = !DILocation(line: 29, column: 7, scope: !1010)
!1012 = !DILocation(line: 29, column: 11, scope: !1010)
!1013 = !DILocation(line: 31, column: 7, scope: !1010)
!1014 = !DILocation(line: 31, column: 11, scope: !1010)
!1015 = !DILocation(line: 36, column: 11, scope: !1010)
!1016 = !DILocation(line: 36, column: 13, scope: !1010)
!1017 = !DILocation(line: 36, column: 18, scope: !1010)
!1018 = !DILocation(line: 36, column: 9, scope: !1010)
!1019 = !DILocation(line: 38, column: 15, scope: !1010)
!1020 = !DILocation(line: 38, column: 17, scope: !1010)
!1021 = !DILocation(line: 38, column: 22, scope: !1010)
!1022 = !DILocation(line: 38, column: 13, scope: !1010)
!1023 = !DILocation(line: 44, column: 17, scope: !1010)
!1024 = !DILocation(line: 45, column: 28, scope: !1010)
!1025 = !DILocation(line: 45, column: 38, scope: !1010)
!1026 = !DILocation(line: 45, column: 32, scope: !1010)
!1027 = !DILocation(line: 45, column: 24, scope: !1010)
!1028 = !DILocation(line: 45, column: 22, scope: !1010)
!1029 = !DILocation(line: 45, column: 17, scope: !1010)
!1030 = !DILocation(line: 46, column: 24, scope: !1010)
!1031 = !DILocation(line: 46, column: 34, scope: !1010)
!1032 = !DILocation(line: 46, column: 28, scope: !1010)
!1033 = !DILocation(line: 46, column: 20, scope: !1010)
!1034 = !DILocation(line: 46, column: 13, scope: !1010)
!1035 = !DILocation(line: 52, column: 13, scope: !1010)
!1036 = !DILocation(line: 53, column: 24, scope: !1010)
!1037 = !DILocation(line: 53, column: 20, scope: !1010)
!1038 = !DILocation(line: 53, column: 18, scope: !1010)
!1039 = !DILocation(line: 53, column: 13, scope: !1010)
!1040 = !DILocation(line: 54, column: 9, scope: !1010)
!1041 = !DILocation(line: 57, column: 13, scope: !1010)
!1042 = !DILocation(line: 57, column: 17, scope: !1010)
!1043 = !DILocation(line: 57, column: 9, scope: !1010)
!1044 = !DILocation(line: 59, column: 15, scope: !1010)
!1045 = !DILocation(line: 59, column: 17, scope: !1010)
!1046 = !DILocation(line: 59, column: 22, scope: !1010)
!1047 = !DILocation(line: 59, column: 13, scope: !1010)
!1048 = !DILocation(line: 65, column: 17, scope: !1010)
!1049 = !DILocation(line: 66, column: 26, scope: !1010)
!1050 = !DILocation(line: 66, column: 28, scope: !1010)
!1051 = !DILocation(line: 66, column: 39, scope: !1010)
!1052 = !DILocation(line: 66, column: 33, scope: !1010)
!1053 = !DILocation(line: 66, column: 24, scope: !1010)
!1054 = !DILocation(line: 66, column: 22, scope: !1010)
!1055 = !DILocation(line: 66, column: 17, scope: !1010)
!1056 = !DILocation(line: 67, column: 22, scope: !1010)
!1057 = !DILocation(line: 67, column: 24, scope: !1010)
!1058 = !DILocation(line: 67, column: 35, scope: !1010)
!1059 = !DILocation(line: 67, column: 29, scope: !1010)
!1060 = !DILocation(line: 67, column: 20, scope: !1010)
!1061 = !DILocation(line: 67, column: 13, scope: !1010)
!1062 = !DILocation(line: 70, column: 17, scope: !1010)
!1063 = !DILocation(line: 70, column: 21, scope: !1010)
!1064 = !DILocation(line: 70, column: 13, scope: !1010)
!1065 = !DILocation(line: 76, column: 17, scope: !1010)
!1066 = !DILocation(line: 78, column: 30, scope: !1010)
!1067 = !DILocation(line: 78, column: 32, scope: !1010)
!1068 = !DILocation(line: 78, column: 41, scope: !1010)
!1069 = !DILocation(line: 78, column: 43, scope: !1010)
!1070 = !DILocation(line: 78, column: 37, scope: !1010)
!1071 = !DILocation(line: 78, column: 19, scope: !1010)
!1072 = !DILocation(line: 78, column: 21, scope: !1010)
!1073 = !DILocation(line: 78, column: 26, scope: !1010)
!1074 = !DILocation(line: 79, column: 21, scope: !1010)
!1075 = !DILocation(line: 79, column: 25, scope: !1010)
!1076 = !DILocation(line: 80, column: 26, scope: !1010)
!1077 = !DILocation(line: 80, column: 22, scope: !1010)
!1078 = !DILocation(line: 81, column: 13, scope: !1010)
!1079 = !DILocation(line: 82, column: 22, scope: !1010)
!1080 = !DILocation(line: 82, column: 24, scope: !1010)
!1081 = !DILocation(line: 82, column: 33, scope: !1010)
!1082 = !DILocation(line: 82, column: 35, scope: !1010)
!1083 = !DILocation(line: 82, column: 29, scope: !1010)
!1084 = !DILocation(line: 82, column: 20, scope: !1010)
!1085 = !DILocation(line: 82, column: 13, scope: !1010)
!1086 = !DILocation(line: 88, column: 16, scope: !1010)
!1087 = !DILocation(line: 88, column: 18, scope: !1010)
!1088 = !DILocation(line: 88, column: 28, scope: !1010)
!1089 = !DILocation(line: 88, column: 30, scope: !1010)
!1090 = !DILocation(line: 88, column: 35, scope: !1010)
!1091 = !DILocation(line: 88, column: 23, scope: !1010)
!1092 = !DILocation(line: 88, column: 41, scope: !1010)
!1093 = !DILocation(line: 88, column: 13, scope: !1010)
!1094 = !DILocation(line: 90, column: 17, scope: !1010)
!1095 = !DILocation(line: 92, column: 31, scope: !1010)
!1096 = !DILocation(line: 92, column: 21, scope: !1010)
!1097 = !DILocation(line: 92, column: 25, scope: !1010)
!1098 = !DILocation(line: 93, column: 30, scope: !1010)
!1099 = !DILocation(line: 93, column: 32, scope: !1010)
!1100 = !DILocation(line: 93, column: 42, scope: !1010)
!1101 = !DILocation(line: 93, column: 44, scope: !1010)
!1102 = !DILocation(line: 93, column: 49, scope: !1010)
!1103 = !DILocation(line: 93, column: 37, scope: !1010)
!1104 = !DILocation(line: 93, column: 19, scope: !1010)
!1105 = !DILocation(line: 93, column: 21, scope: !1010)
!1106 = !DILocation(line: 93, column: 26, scope: !1010)
!1107 = !DILocation(line: 94, column: 26, scope: !1010)
!1108 = !DILocation(line: 94, column: 22, scope: !1010)
!1109 = !DILocation(line: 95, column: 13, scope: !1010)
!1110 = !DILocation(line: 96, column: 22, scope: !1010)
!1111 = !DILocation(line: 96, column: 24, scope: !1010)
!1112 = !DILocation(line: 96, column: 48, scope: !1010)
!1113 = !DILocation(line: 96, column: 50, scope: !1010)
!1114 = !DILocation(line: 96, column: 32, scope: !1010)
!1115 = !DILocation(line: 96, column: 29, scope: !1010)
!1116 = !DILocation(line: 96, column: 20, scope: !1010)
!1117 = !DILocation(line: 96, column: 13, scope: !1010)
!1118 = !DILocation(line: 102, column: 30, scope: !1010)
!1119 = !DILocation(line: 102, column: 32, scope: !1010)
!1120 = !DILocation(line: 102, column: 14, scope: !1010)
!1121 = !DILocation(line: 102, column: 56, scope: !1010)
!1122 = !DILocation(line: 102, column: 58, scope: !1010)
!1123 = !DILocation(line: 102, column: 40, scope: !1010)
!1124 = !DILocation(line: 102, column: 38, scope: !1010)
!1125 = !DILocation(line: 104, column: 16, scope: !1010)
!1126 = !DILocation(line: 104, column: 13, scope: !1010)
!1127 = !DILocation(line: 106, column: 16, scope: !1010)
!1128 = !DILocation(line: 107, column: 26, scope: !1010)
!1129 = !DILocation(line: 107, column: 22, scope: !1010)
!1130 = !DILocation(line: 107, column: 17, scope: !1010)
!1131 = !DILocation(line: 108, column: 13, scope: !1010)
!1132 = !DILocation(line: 110, column: 9, scope: !1010)
!1133 = !DILocation(line: 113, column: 13, scope: !1010)
!1134 = !DILocation(line: 113, column: 17, scope: !1010)
!1135 = !DILocation(line: 114, column: 24, scope: !1010)
!1136 = !DILocation(line: 114, column: 45, scope: !1010)
!1137 = !DILocation(line: 114, column: 28, scope: !1010)
!1138 = !DILocation(line: 114, column: 11, scope: !1010)
!1139 = !DILocation(line: 114, column: 13, scope: !1010)
!1140 = !DILocation(line: 114, column: 18, scope: !1010)
!1141 = !DILocation(line: 116, column: 22, scope: !1010)
!1142 = !DILocation(line: 116, column: 24, scope: !1010)
!1143 = !DILocation(line: 116, column: 29, scope: !1010)
!1144 = !DILocation(line: 116, column: 11, scope: !1010)
!1145 = !DILocation(line: 116, column: 13, scope: !1010)
!1146 = !DILocation(line: 116, column: 18, scope: !1010)
!1147 = !DILocation(line: 117, column: 22, scope: !1010)
!1148 = !DILocation(line: 117, column: 24, scope: !1010)
!1149 = !DILocation(line: 117, column: 46, scope: !1010)
!1150 = !DILocation(line: 117, column: 29, scope: !1010)
!1151 = !DILocation(line: 117, column: 60, scope: !1010)
!1152 = !DILocation(line: 117, column: 64, scope: !1010)
!1153 = !DILocation(line: 117, column: 53, scope: !1010)
!1154 = !DILocation(line: 117, column: 13, scope: !1010)
!1155 = !DILocation(line: 117, column: 17, scope: !1010)
!1156 = !DILocation(line: 118, column: 5, scope: !1010)
!1157 = !DILocation(line: 121, column: 15, scope: !1010)
!1158 = !DILocation(line: 121, column: 17, scope: !1010)
!1159 = !DILocation(line: 121, column: 22, scope: !1010)
!1160 = !DILocation(line: 121, column: 13, scope: !1010)
!1161 = !DILocation(line: 127, column: 22, scope: !1010)
!1162 = !DILocation(line: 127, column: 43, scope: !1010)
!1163 = !DILocation(line: 127, column: 17, scope: !1010)
!1164 = !DILocation(line: 129, column: 21, scope: !1010)
!1165 = !DILocation(line: 130, column: 32, scope: !1010)
!1166 = !DILocation(line: 130, column: 43, scope: !1010)
!1167 = !DILocation(line: 130, column: 47, scope: !1010)
!1168 = !DILocation(line: 130, column: 36, scope: !1010)
!1169 = !DILocation(line: 130, column: 28, scope: !1010)
!1170 = !DILocation(line: 130, column: 26, scope: !1010)
!1171 = !DILocation(line: 130, column: 21, scope: !1010)
!1172 = !DILocation(line: 131, column: 25, scope: !1010)
!1173 = !DILocation(line: 131, column: 29, scope: !1010)
!1174 = !DILocation(line: 131, column: 21, scope: !1010)
!1175 = !DILocation(line: 132, column: 30, scope: !1010)
!1176 = !DILocation(line: 132, column: 21, scope: !1010)
!1177 = !DILocation(line: 133, column: 40, scope: !1010)
!1178 = !DILocation(line: 133, column: 22, scope: !1010)
!1179 = !DILocation(line: 134, column: 30, scope: !1010)
!1180 = !DILocation(line: 134, column: 32, scope: !1010)
!1181 = !DILocation(line: 134, column: 37, scope: !1010)
!1182 = !DILocation(line: 134, column: 19, scope: !1010)
!1183 = !DILocation(line: 134, column: 21, scope: !1010)
!1184 = !DILocation(line: 134, column: 26, scope: !1010)
!1185 = !DILocation(line: 135, column: 30, scope: !1010)
!1186 = !DILocation(line: 135, column: 32, scope: !1010)
!1187 = !DILocation(line: 135, column: 54, scope: !1010)
!1188 = !DILocation(line: 135, column: 37, scope: !1010)
!1189 = !DILocation(line: 135, column: 68, scope: !1010)
!1190 = !DILocation(line: 135, column: 72, scope: !1010)
!1191 = !DILocation(line: 135, column: 61, scope: !1010)
!1192 = !DILocation(line: 135, column: 21, scope: !1010)
!1193 = !DILocation(line: 135, column: 25, scope: !1010)
!1194 = !DILocation(line: 136, column: 26, scope: !1010)
!1195 = !DILocation(line: 136, column: 17, scope: !1010)
!1196 = !DILocation(line: 142, column: 55, scope: !1010)
!1197 = !DILocation(line: 142, column: 37, scope: !1010)
!1198 = !DILocation(line: 142, column: 35, scope: !1010)
!1199 = !DILocation(line: 142, column: 78, scope: !1010)
!1200 = !DILocation(line: 142, column: 80, scope: !1010)
!1201 = !DILocation(line: 142, column: 62, scope: !1010)
!1202 = !DILocation(line: 142, column: 60, scope: !1010)
!1203 = !DILocation(line: 147, column: 20, scope: !1010)
!1204 = !DILocation(line: 147, column: 17, scope: !1010)
!1205 = !DILocation(line: 149, column: 21, scope: !1010)
!1206 = !DILocation(line: 149, column: 25, scope: !1010)
!1207 = !DILocation(line: 150, column: 32, scope: !1010)
!1208 = !DILocation(line: 150, column: 19, scope: !1010)
!1209 = !DILocation(line: 150, column: 21, scope: !1010)
!1210 = !DILocation(line: 150, column: 26, scope: !1010)
!1211 = !DILocation(line: 151, column: 19, scope: !1010)
!1212 = !DILocation(line: 151, column: 21, scope: !1010)
!1213 = !DILocation(line: 151, column: 26, scope: !1010)
!1214 = !DILocation(line: 152, column: 29, scope: !1010)
!1215 = !DILocation(line: 152, column: 31, scope: !1010)
!1216 = !DILocation(line: 152, column: 21, scope: !1010)
!1217 = !DILocation(line: 152, column: 25, scope: !1010)
!1218 = !DILocation(line: 153, column: 13, scope: !1010)
!1219 = !DILocation(line: 154, column: 25, scope: !1010)
!1220 = !DILocation(line: 154, column: 22, scope: !1010)
!1221 = !DILocation(line: 156, column: 21, scope: !1010)
!1222 = !DILocation(line: 156, column: 25, scope: !1010)
!1223 = !DILocation(line: 157, column: 32, scope: !1010)
!1224 = !DILocation(line: 157, column: 53, scope: !1010)
!1225 = !DILocation(line: 157, column: 36, scope: !1010)
!1226 = !DILocation(line: 157, column: 19, scope: !1010)
!1227 = !DILocation(line: 157, column: 21, scope: !1010)
!1228 = !DILocation(line: 157, column: 26, scope: !1010)
!1229 = !DILocation(line: 158, column: 30, scope: !1010)
!1230 = !DILocation(line: 158, column: 32, scope: !1010)
!1231 = !DILocation(line: 158, column: 37, scope: !1010)
!1232 = !DILocation(line: 158, column: 19, scope: !1010)
!1233 = !DILocation(line: 158, column: 21, scope: !1010)
!1234 = !DILocation(line: 158, column: 26, scope: !1010)
!1235 = !DILocation(line: 159, column: 30, scope: !1010)
!1236 = !DILocation(line: 159, column: 32, scope: !1010)
!1237 = !DILocation(line: 159, column: 54, scope: !1010)
!1238 = !DILocation(line: 159, column: 37, scope: !1010)
!1239 = !DILocation(line: 159, column: 68, scope: !1010)
!1240 = !DILocation(line: 159, column: 72, scope: !1010)
!1241 = !DILocation(line: 159, column: 61, scope: !1010)
!1242 = !DILocation(line: 159, column: 21, scope: !1010)
!1243 = !DILocation(line: 159, column: 25, scope: !1010)
!1244 = !DILocation(line: 160, column: 13, scope: !1010)
!1245 = !DILocation(line: 163, column: 31, scope: !1010)
!1246 = !DILocation(line: 163, column: 53, scope: !1010)
!1247 = !DILocation(line: 163, column: 35, scope: !1010)
!1248 = !DILocation(line: 163, column: 21, scope: !1010)
!1249 = !DILocation(line: 163, column: 25, scope: !1010)
!1250 = !DILocation(line: 164, column: 31, scope: !1010)
!1251 = !DILocation(line: 164, column: 33, scope: !1010)
!1252 = !DILocation(line: 164, column: 56, scope: !1010)
!1253 = !DILocation(line: 164, column: 38, scope: !1010)
!1254 = !DILocation(line: 165, column: 33, scope: !1010)
!1255 = !DILocation(line: 165, column: 44, scope: !1010)
!1256 = !DILocation(line: 165, column: 37, scope: !1010)
!1257 = !DILocation(line: 164, column: 63, scope: !1010)
!1258 = !DILocation(line: 164, column: 19, scope: !1010)
!1259 = !DILocation(line: 164, column: 21, scope: !1010)
!1260 = !DILocation(line: 164, column: 26, scope: !1010)
!1261 = !DILocation(line: 166, column: 19, scope: !1010)
!1262 = !DILocation(line: 166, column: 21, scope: !1010)
!1263 = !DILocation(line: 166, column: 26, scope: !1010)
!1264 = !DILocation(line: 167, column: 29, scope: !1010)
!1265 = !DILocation(line: 167, column: 31, scope: !1010)
!1266 = !DILocation(line: 167, column: 43, scope: !1010)
!1267 = !DILocation(line: 167, column: 36, scope: !1010)
!1268 = !DILocation(line: 167, column: 21, scope: !1010)
!1269 = !DILocation(line: 167, column: 25, scope: !1010)
!1270 = !DILocation(line: 169, column: 9, scope: !1010)
!1271 = !DILocation(line: 176, column: 34, scope: !1010)
!1272 = !DILocation(line: 176, column: 36, scope: !1010)
!1273 = !DILocation(line: 176, column: 18, scope: !1010)
!1274 = !DILocation(line: 176, column: 60, scope: !1010)
!1275 = !DILocation(line: 176, column: 62, scope: !1010)
!1276 = !DILocation(line: 176, column: 44, scope: !1010)
!1277 = !DILocation(line: 176, column: 42, scope: !1010)
!1278 = !DILocation(line: 178, column: 20, scope: !1010)
!1279 = !DILocation(line: 178, column: 17, scope: !1010)
!1280 = !DILocation(line: 180, column: 21, scope: !1010)
!1281 = !DILocation(line: 181, column: 30, scope: !1010)
!1282 = !DILocation(line: 181, column: 26, scope: !1010)
!1283 = !DILocation(line: 181, column: 21, scope: !1010)
!1284 = !DILocation(line: 182, column: 17, scope: !1010)
!1285 = !DILocation(line: 184, column: 13, scope: !1010)
!1286 = !DILocation(line: 187, column: 17, scope: !1010)
!1287 = !DILocation(line: 187, column: 21, scope: !1010)
!1288 = !DILocation(line: 188, column: 20, scope: !1010)
!1289 = !DILocation(line: 188, column: 17, scope: !1010)
!1290 = !DILocation(line: 190, column: 32, scope: !1010)
!1291 = !DILocation(line: 190, column: 19, scope: !1010)
!1292 = !DILocation(line: 190, column: 21, scope: !1010)
!1293 = !DILocation(line: 190, column: 26, scope: !1010)
!1294 = !DILocation(line: 191, column: 19, scope: !1010)
!1295 = !DILocation(line: 191, column: 21, scope: !1010)
!1296 = !DILocation(line: 191, column: 26, scope: !1010)
!1297 = !DILocation(line: 192, column: 29, scope: !1010)
!1298 = !DILocation(line: 192, column: 31, scope: !1010)
!1299 = !DILocation(line: 192, column: 21, scope: !1010)
!1300 = !DILocation(line: 192, column: 25, scope: !1010)
!1301 = !DILocation(line: 193, column: 13, scope: !1010)
!1302 = !DILocation(line: 196, column: 32, scope: !1010)
!1303 = !DILocation(line: 196, column: 53, scope: !1010)
!1304 = !DILocation(line: 196, column: 36, scope: !1010)
!1305 = !DILocation(line: 196, column: 19, scope: !1010)
!1306 = !DILocation(line: 196, column: 21, scope: !1010)
!1307 = !DILocation(line: 196, column: 26, scope: !1010)
!1308 = !DILocation(line: 197, column: 30, scope: !1010)
!1309 = !DILocation(line: 197, column: 32, scope: !1010)
!1310 = !DILocation(line: 197, column: 37, scope: !1010)
!1311 = !DILocation(line: 197, column: 19, scope: !1010)
!1312 = !DILocation(line: 197, column: 21, scope: !1010)
!1313 = !DILocation(line: 197, column: 26, scope: !1010)
!1314 = !DILocation(line: 198, column: 30, scope: !1010)
!1315 = !DILocation(line: 198, column: 32, scope: !1010)
!1316 = !DILocation(line: 198, column: 54, scope: !1010)
!1317 = !DILocation(line: 198, column: 37, scope: !1010)
!1318 = !DILocation(line: 198, column: 68, scope: !1010)
!1319 = !DILocation(line: 198, column: 72, scope: !1010)
!1320 = !DILocation(line: 198, column: 61, scope: !1010)
!1321 = !DILocation(line: 198, column: 21, scope: !1010)
!1322 = !DILocation(line: 198, column: 25, scope: !1010)
!1323 = !DILocation(line: 0, scope: !1010)
!1324 = !DILocation(line: 209, column: 5, scope: !1010)
!1325 = !DILocation(line: 209, column: 15, scope: !1010)
!1326 = !DILocation(line: 212, column: 23, scope: !1010)
!1327 = !DILocation(line: 212, column: 25, scope: !1010)
!1328 = !DILocation(line: 212, column: 43, scope: !1010)
!1329 = !DILocation(line: 212, column: 36, scope: !1010)
!1330 = !DILocation(line: 212, column: 11, scope: !1010)
!1331 = !DILocation(line: 212, column: 13, scope: !1010)
!1332 = !DILocation(line: 212, column: 18, scope: !1010)
!1333 = !DILocation(line: 213, column: 41, scope: !1010)
!1334 = !DILocation(line: 213, column: 43, scope: !1010)
!1335 = !DILocation(line: 213, column: 36, scope: !1010)
!1336 = !DILocation(line: 213, column: 13, scope: !1010)
!1337 = !DILocation(line: 213, column: 18, scope: !1010)
!1338 = !DILocation(line: 214, column: 23, scope: !1010)
!1339 = !DILocation(line: 214, column: 25, scope: !1010)
!1340 = !DILocation(line: 214, column: 43, scope: !1010)
!1341 = !DILocation(line: 214, column: 36, scope: !1010)
!1342 = !DILocation(line: 214, column: 11, scope: !1010)
!1343 = !DILocation(line: 214, column: 13, scope: !1010)
!1344 = !DILocation(line: 214, column: 18, scope: !1010)
!1345 = !DILocation(line: 215, column: 30, scope: !1010)
!1346 = !DILocation(line: 215, column: 36, scope: !1010)
!1347 = !DILocation(line: 215, column: 13, scope: !1010)
!1348 = !DILocation(line: 215, column: 18, scope: !1010)
!1349 = !DILocation(line: 223, column: 37, scope: !1010)
!1350 = !DILocation(line: 223, column: 45, scope: !1010)
!1351 = !DILocation(line: 223, column: 49, scope: !1010)
!1352 = !DILocation(line: 225, column: 24, scope: !1010)
!1353 = !DILocation(line: 225, column: 11, scope: !1010)
!1354 = !DILocation(line: 225, column: 15, scope: !1010)
!1355 = !DILocation(line: 226, column: 5, scope: !1010)
!1356 = !DILocation(line: 224, column: 19, scope: !1010)
!1357 = !DILocation(line: 224, column: 17, scope: !1010)
!1358 = !DILocation(line: 209, column: 20, scope: !1010)
!1359 = distinct !{!1359, !1324, !1355, !600}
!1360 = !DILocation(line: 227, column: 16, scope: !1010)
!1361 = !DILocation(line: 227, column: 20, scope: !1010)
!1362 = !DILocation(line: 227, column: 28, scope: !1010)
!1363 = !DILocation(line: 227, column: 26, scope: !1010)
!1364 = !DILocation(line: 227, column: 7, scope: !1010)
!1365 = !DILocation(line: 227, column: 11, scope: !1010)
!1366 = !DILocation(line: 228, column: 9, scope: !1010)
!1367 = !DILocation(line: 229, column: 18, scope: !1010)
!1368 = !DILocation(line: 229, column: 14, scope: !1010)
!1369 = !DILocation(line: 229, column: 9, scope: !1010)
!1370 = !DILocation(line: 230, column: 14, scope: !1010)
!1371 = !DILocation(line: 230, column: 5, scope: !1010)
!1372 = !DILocation(line: 231, column: 1, scope: !1010)
!1373 = distinct !DISubprogram(name: "__divmoddi4", scope: !458, file: !458, line: 20, type: !768, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !457, retainedNodes: !545)
!1374 = !DILocation(line: 22, column: 14, scope: !1373)
!1375 = !DILocation(line: 23, column: 16, scope: !1373)
!1376 = !DILocation(line: 23, column: 12, scope: !1373)
!1377 = !DILocation(line: 23, column: 8, scope: !1373)
!1378 = !DILocation(line: 24, column: 3, scope: !1373)
!1379 = distinct !DISubprogram(name: "__divmodsi4", scope: !460, file: !460, line: 20, type: !768, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !459, retainedNodes: !545)
!1380 = !DILocation(line: 22, column: 14, scope: !1379)
!1381 = !DILocation(line: 23, column: 16, scope: !1379)
!1382 = !DILocation(line: 23, column: 12, scope: !1379)
!1383 = !DILocation(line: 23, column: 8, scope: !1379)
!1384 = !DILocation(line: 24, column: 3, scope: !1379)
!1385 = distinct !DISubprogram(name: "__divsi3", scope: !462, file: !462, line: 22, type: !768, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !461, retainedNodes: !545)
!1386 = !DILocation(line: 25, column: 20, scope: !1385)
!1387 = !DILocation(line: 26, column: 20, scope: !1385)
!1388 = !DILocation(line: 27, column: 12, scope: !1385)
!1389 = !DILocation(line: 27, column: 19, scope: !1385)
!1390 = !DILocation(line: 28, column: 12, scope: !1385)
!1391 = !DILocation(line: 28, column: 19, scope: !1385)
!1392 = !DILocation(line: 29, column: 9, scope: !1385)
!1393 = !DILocation(line: 36, column: 22, scope: !1385)
!1394 = !DILocation(line: 36, column: 33, scope: !1385)
!1395 = !DILocation(line: 36, column: 40, scope: !1385)
!1396 = !DILocation(line: 36, column: 5, scope: !1385)
!1397 = distinct !DISubprogram(name: "__ffsdi2", scope: !466, file: !466, line: 22, type: !768, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !465, retainedNodes: !545)
!1398 = !DILocation(line: 25, column: 7, scope: !1397)
!1399 = !DILocation(line: 25, column: 11, scope: !1397)
!1400 = !DILocation(line: 26, column: 13, scope: !1397)
!1401 = !DILocation(line: 26, column: 17, scope: !1397)
!1402 = !DILocation(line: 26, column: 9, scope: !1397)
!1403 = !DILocation(line: 28, column: 15, scope: !1397)
!1404 = !DILocation(line: 28, column: 17, scope: !1397)
!1405 = !DILocation(line: 28, column: 22, scope: !1397)
!1406 = !DILocation(line: 28, column: 13, scope: !1397)
!1407 = !DILocation(line: 29, column: 13, scope: !1397)
!1408 = !DILocation(line: 30, column: 32, scope: !1397)
!1409 = !DILocation(line: 30, column: 34, scope: !1397)
!1410 = !DILocation(line: 30, column: 16, scope: !1397)
!1411 = !DILocation(line: 30, column: 40, scope: !1397)
!1412 = !DILocation(line: 30, column: 9, scope: !1397)
!1413 = !DILocation(line: 32, column: 30, scope: !1397)
!1414 = !DILocation(line: 32, column: 12, scope: !1397)
!1415 = !DILocation(line: 32, column: 35, scope: !1397)
!1416 = !DILocation(line: 32, column: 5, scope: !1397)
!1417 = !DILocation(line: 0, scope: !1397)
!1418 = !DILocation(line: 33, column: 1, scope: !1397)
!1419 = distinct !DISubprogram(name: "__ffssi2", scope: !468, file: !468, line: 22, type: !768, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !467, retainedNodes: !545)
!1420 = !DILocation(line: 24, column: 11, scope: !1419)
!1421 = !DILocation(line: 24, column: 9, scope: !1419)
!1422 = !DILocation(line: 26, column: 9, scope: !1419)
!1423 = !DILocation(line: 28, column: 12, scope: !1419)
!1424 = !DILocation(line: 28, column: 29, scope: !1419)
!1425 = !DILocation(line: 28, column: 5, scope: !1419)
!1426 = !DILocation(line: 0, scope: !1419)
!1427 = !DILocation(line: 29, column: 1, scope: !1419)
!1428 = distinct !DISubprogram(name: "__lshrdi3", scope: !474, file: !474, line: 24, type: !768, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !473, retainedNodes: !545)
!1429 = !DILocation(line: 29, column: 11, scope: !1428)
!1430 = !DILocation(line: 29, column: 15, scope: !1428)
!1431 = !DILocation(line: 30, column: 11, scope: !1428)
!1432 = !DILocation(line: 30, column: 9, scope: !1428)
!1433 = !DILocation(line: 32, column: 16, scope: !1428)
!1434 = !DILocation(line: 32, column: 18, scope: !1428)
!1435 = !DILocation(line: 32, column: 23, scope: !1428)
!1436 = !DILocation(line: 33, column: 30, scope: !1428)
!1437 = !DILocation(line: 33, column: 32, scope: !1428)
!1438 = !DILocation(line: 33, column: 43, scope: !1428)
!1439 = !DILocation(line: 33, column: 37, scope: !1428)
!1440 = !DILocation(line: 33, column: 18, scope: !1428)
!1441 = !DILocation(line: 33, column: 22, scope: !1428)
!1442 = !DILocation(line: 34, column: 5, scope: !1428)
!1443 = !DILocation(line: 37, column: 15, scope: !1428)
!1444 = !DILocation(line: 37, column: 13, scope: !1428)
!1445 = !DILocation(line: 38, column: 13, scope: !1428)
!1446 = !DILocation(line: 39, column: 32, scope: !1428)
!1447 = !DILocation(line: 39, column: 34, scope: !1428)
!1448 = !DILocation(line: 39, column: 39, scope: !1428)
!1449 = !DILocation(line: 39, column: 16, scope: !1428)
!1450 = !DILocation(line: 39, column: 18, scope: !1428)
!1451 = !DILocation(line: 39, column: 24, scope: !1428)
!1452 = !DILocation(line: 40, column: 31, scope: !1428)
!1453 = !DILocation(line: 40, column: 33, scope: !1428)
!1454 = !DILocation(line: 40, column: 55, scope: !1428)
!1455 = !DILocation(line: 40, column: 38, scope: !1428)
!1456 = !DILocation(line: 40, column: 72, scope: !1428)
!1457 = !DILocation(line: 40, column: 76, scope: !1428)
!1458 = !DILocation(line: 40, column: 61, scope: !1428)
!1459 = !DILocation(line: 40, column: 18, scope: !1428)
!1460 = !DILocation(line: 40, column: 22, scope: !1428)
!1461 = !DILocation(line: 42, column: 19, scope: !1428)
!1462 = !DILocation(line: 42, column: 5, scope: !1428)
!1463 = !DILocation(line: 0, scope: !1428)
!1464 = !DILocation(line: 43, column: 1, scope: !1428)
!1465 = distinct !DISubprogram(name: "__moddi3", scope: !478, file: !478, line: 20, type: !768, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !477, retainedNodes: !545)
!1466 = !DILocation(line: 24, column: 17, scope: !1465)
!1467 = !DILocation(line: 25, column: 11, scope: !1465)
!1468 = !DILocation(line: 26, column: 12, scope: !1465)
!1469 = !DILocation(line: 26, column: 17, scope: !1465)
!1470 = !DILocation(line: 28, column: 5, scope: !1465)
!1471 = !DILocation(line: 29, column: 21, scope: !1465)
!1472 = !DILocation(line: 29, column: 23, scope: !1465)
!1473 = !DILocation(line: 29, column: 28, scope: !1465)
!1474 = !DILocation(line: 29, column: 5, scope: !1465)
!1475 = distinct !DISubprogram(name: "__modsi3", scope: !480, file: !480, line: 20, type: !768, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !479, retainedNodes: !545)
!1476 = !DILocation(line: 22, column: 16, scope: !1475)
!1477 = !DILocation(line: 22, column: 31, scope: !1475)
!1478 = !DILocation(line: 22, column: 14, scope: !1475)
!1479 = !DILocation(line: 22, column: 5, scope: !1475)
!1480 = distinct !DISubprogram(name: "__mulvdi3", scope: !484, file: !484, line: 22, type: !768, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !483, retainedNodes: !545)
!1481 = !DILocation(line: 27, column: 11, scope: !1480)
!1482 = !DILocation(line: 27, column: 9, scope: !1480)
!1483 = !DILocation(line: 29, column: 15, scope: !1480)
!1484 = !DILocation(line: 29, column: 20, scope: !1480)
!1485 = !DILocation(line: 29, column: 25, scope: !1480)
!1486 = !DILocation(line: 29, column: 13, scope: !1480)
!1487 = !DILocation(line: 30, column: 13, scope: !1480)
!1488 = !DILocation(line: 31, column: 9, scope: !1480)
!1489 = !DILocation(line: 33, column: 11, scope: !1480)
!1490 = !DILocation(line: 33, column: 9, scope: !1480)
!1491 = !DILocation(line: 35, column: 15, scope: !1480)
!1492 = !DILocation(line: 35, column: 20, scope: !1480)
!1493 = !DILocation(line: 35, column: 25, scope: !1480)
!1494 = !DILocation(line: 35, column: 13, scope: !1480)
!1495 = !DILocation(line: 36, column: 13, scope: !1480)
!1496 = !DILocation(line: 37, column: 9, scope: !1480)
!1497 = !DILocation(line: 39, column: 19, scope: !1480)
!1498 = !DILocation(line: 40, column: 23, scope: !1480)
!1499 = !DILocation(line: 40, column: 29, scope: !1480)
!1500 = !DILocation(line: 41, column: 19, scope: !1480)
!1501 = !DILocation(line: 42, column: 23, scope: !1480)
!1502 = !DILocation(line: 42, column: 29, scope: !1480)
!1503 = !DILocation(line: 43, column: 15, scope: !1480)
!1504 = !DILocation(line: 43, column: 19, scope: !1480)
!1505 = !DILocation(line: 43, column: 28, scope: !1480)
!1506 = !DILocation(line: 43, column: 9, scope: !1480)
!1507 = !DILocation(line: 44, column: 9, scope: !1480)
!1508 = !DILocation(line: 45, column: 12, scope: !1480)
!1509 = !DILocation(line: 45, column: 9, scope: !1480)
!1510 = !DILocation(line: 47, column: 25, scope: !1480)
!1511 = !DILocation(line: 47, column: 19, scope: !1480)
!1512 = !DILocation(line: 47, column: 13, scope: !1480)
!1513 = !DILocation(line: 48, column: 13, scope: !1480)
!1514 = !DILocation(line: 49, column: 5, scope: !1480)
!1515 = !DILocation(line: 52, column: 27, scope: !1480)
!1516 = !DILocation(line: 52, column: 25, scope: !1480)
!1517 = !DILocation(line: 52, column: 19, scope: !1480)
!1518 = !DILocation(line: 52, column: 13, scope: !1480)
!1519 = !DILocation(line: 53, column: 13, scope: !1480)
!1520 = !DILocation(line: 55, column: 5, scope: !1480)
!1521 = !DILocation(line: 0, scope: !1480)
!1522 = !DILocation(line: 56, column: 1, scope: !1480)
!1523 = distinct !DISubprogram(name: "__mulvsi3", scope: !486, file: !486, line: 22, type: !768, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !485, retainedNodes: !545)
!1524 = !DILocation(line: 27, column: 11, scope: !1523)
!1525 = !DILocation(line: 27, column: 9, scope: !1523)
!1526 = !DILocation(line: 29, column: 15, scope: !1523)
!1527 = !DILocation(line: 29, column: 20, scope: !1523)
!1528 = !DILocation(line: 29, column: 25, scope: !1523)
!1529 = !DILocation(line: 29, column: 13, scope: !1523)
!1530 = !DILocation(line: 30, column: 13, scope: !1523)
!1531 = !DILocation(line: 31, column: 9, scope: !1523)
!1532 = !DILocation(line: 33, column: 11, scope: !1523)
!1533 = !DILocation(line: 33, column: 9, scope: !1523)
!1534 = !DILocation(line: 35, column: 15, scope: !1523)
!1535 = !DILocation(line: 35, column: 20, scope: !1523)
!1536 = !DILocation(line: 35, column: 25, scope: !1523)
!1537 = !DILocation(line: 35, column: 13, scope: !1523)
!1538 = !DILocation(line: 36, column: 13, scope: !1523)
!1539 = !DILocation(line: 37, column: 9, scope: !1523)
!1540 = !DILocation(line: 39, column: 19, scope: !1523)
!1541 = !DILocation(line: 40, column: 23, scope: !1523)
!1542 = !DILocation(line: 40, column: 29, scope: !1523)
!1543 = !DILocation(line: 41, column: 19, scope: !1523)
!1544 = !DILocation(line: 42, column: 23, scope: !1523)
!1545 = !DILocation(line: 42, column: 29, scope: !1523)
!1546 = !DILocation(line: 43, column: 15, scope: !1523)
!1547 = !DILocation(line: 43, column: 19, scope: !1523)
!1548 = !DILocation(line: 43, column: 28, scope: !1523)
!1549 = !DILocation(line: 43, column: 9, scope: !1523)
!1550 = !DILocation(line: 44, column: 9, scope: !1523)
!1551 = !DILocation(line: 45, column: 12, scope: !1523)
!1552 = !DILocation(line: 45, column: 9, scope: !1523)
!1553 = !DILocation(line: 47, column: 25, scope: !1523)
!1554 = !DILocation(line: 47, column: 19, scope: !1523)
!1555 = !DILocation(line: 47, column: 13, scope: !1523)
!1556 = !DILocation(line: 48, column: 13, scope: !1523)
!1557 = !DILocation(line: 49, column: 5, scope: !1523)
!1558 = !DILocation(line: 52, column: 27, scope: !1523)
!1559 = !DILocation(line: 52, column: 25, scope: !1523)
!1560 = !DILocation(line: 52, column: 19, scope: !1523)
!1561 = !DILocation(line: 52, column: 13, scope: !1523)
!1562 = !DILocation(line: 53, column: 13, scope: !1523)
!1563 = !DILocation(line: 55, column: 5, scope: !1523)
!1564 = !DILocation(line: 0, scope: !1523)
!1565 = !DILocation(line: 56, column: 1, scope: !1523)
!1566 = distinct !DISubprogram(name: "__paritydi2", scope: !490, file: !490, line: 20, type: !768, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !489, retainedNodes: !545)
!1567 = !DILocation(line: 23, column: 7, scope: !1566)
!1568 = !DILocation(line: 23, column: 11, scope: !1566)
!1569 = !DILocation(line: 24, column: 26, scope: !1566)
!1570 = !DILocation(line: 24, column: 28, scope: !1566)
!1571 = !DILocation(line: 24, column: 39, scope: !1566)
!1572 = !DILocation(line: 24, column: 33, scope: !1566)
!1573 = !DILocation(line: 24, column: 12, scope: !1566)
!1574 = !DILocation(line: 24, column: 5, scope: !1566)
!1575 = distinct !DISubprogram(name: "__paritysi2", scope: !492, file: !492, line: 20, type: !768, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !491, retainedNodes: !545)
!1576 = !DILocation(line: 23, column: 12, scope: !1575)
!1577 = !DILocation(line: 23, column: 7, scope: !1575)
!1578 = !DILocation(line: 24, column: 12, scope: !1575)
!1579 = !DILocation(line: 24, column: 7, scope: !1575)
!1580 = !DILocation(line: 25, column: 12, scope: !1575)
!1581 = !DILocation(line: 25, column: 7, scope: !1575)
!1582 = !DILocation(line: 26, column: 26, scope: !1575)
!1583 = !DILocation(line: 26, column: 20, scope: !1575)
!1584 = !DILocation(line: 26, column: 34, scope: !1575)
!1585 = !DILocation(line: 26, column: 5, scope: !1575)
!1586 = distinct !DISubprogram(name: "__popcountdi2", scope: !496, file: !496, line: 20, type: !768, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !495, retainedNodes: !545)
!1587 = !DILocation(line: 23, column: 20, scope: !1586)
!1588 = !DILocation(line: 23, column: 26, scope: !1586)
!1589 = !DILocation(line: 23, column: 13, scope: !1586)
!1590 = !DILocation(line: 25, column: 15, scope: !1586)
!1591 = !DILocation(line: 25, column: 21, scope: !1586)
!1592 = !DILocation(line: 25, column: 52, scope: !1586)
!1593 = !DILocation(line: 25, column: 46, scope: !1586)
!1594 = !DILocation(line: 27, column: 20, scope: !1586)
!1595 = !DILocation(line: 27, column: 14, scope: !1586)
!1596 = !DILocation(line: 27, column: 27, scope: !1586)
!1597 = !DILocation(line: 29, column: 34, scope: !1586)
!1598 = !DILocation(line: 29, column: 28, scope: !1586)
!1599 = !DILocation(line: 29, column: 16, scope: !1586)
!1600 = !DILocation(line: 32, column: 16, scope: !1586)
!1601 = !DILocation(line: 32, column: 11, scope: !1586)
!1602 = !DILocation(line: 35, column: 20, scope: !1586)
!1603 = !DILocation(line: 35, column: 15, scope: !1586)
!1604 = !DILocation(line: 35, column: 27, scope: !1586)
!1605 = !DILocation(line: 35, column: 5, scope: !1586)
!1606 = distinct !DISubprogram(name: "__popcountsi2", scope: !498, file: !498, line: 20, type: !768, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !497, retainedNodes: !545)
!1607 = !DILocation(line: 23, column: 17, scope: !1606)
!1608 = !DILocation(line: 23, column: 23, scope: !1606)
!1609 = !DILocation(line: 23, column: 11, scope: !1606)
!1610 = !DILocation(line: 25, column: 13, scope: !1606)
!1611 = !DILocation(line: 25, column: 19, scope: !1606)
!1612 = !DILocation(line: 25, column: 38, scope: !1606)
!1613 = !DILocation(line: 25, column: 33, scope: !1606)
!1614 = !DILocation(line: 27, column: 17, scope: !1606)
!1615 = !DILocation(line: 27, column: 12, scope: !1606)
!1616 = !DILocation(line: 27, column: 24, scope: !1606)
!1617 = !DILocation(line: 29, column: 17, scope: !1606)
!1618 = !DILocation(line: 29, column: 12, scope: !1606)
!1619 = !DILocation(line: 32, column: 20, scope: !1606)
!1620 = !DILocation(line: 32, column: 15, scope: !1606)
!1621 = !DILocation(line: 32, column: 27, scope: !1606)
!1622 = !DILocation(line: 32, column: 5, scope: !1606)
!1623 = distinct !DISubprogram(name: "__subvdi3", scope: !502, file: !502, line: 22, type: !768, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !501, retainedNodes: !545)
!1624 = !DILocation(line: 24, column: 27, scope: !1623)
!1625 = !DILocation(line: 25, column: 11, scope: !1623)
!1626 = !DILocation(line: 25, column: 9, scope: !1623)
!1627 = !DILocation(line: 27, column: 15, scope: !1623)
!1628 = !DILocation(line: 27, column: 13, scope: !1623)
!1629 = !DILocation(line: 28, column: 13, scope: !1623)
!1630 = !DILocation(line: 29, column: 5, scope: !1623)
!1631 = !DILocation(line: 32, column: 15, scope: !1623)
!1632 = !DILocation(line: 32, column: 13, scope: !1623)
!1633 = !DILocation(line: 33, column: 13, scope: !1623)
!1634 = !DILocation(line: 35, column: 5, scope: !1623)
!1635 = distinct !DISubprogram(name: "__subvsi3", scope: !504, file: !504, line: 22, type: !768, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !503, retainedNodes: !545)
!1636 = !DILocation(line: 24, column: 27, scope: !1635)
!1637 = !DILocation(line: 25, column: 11, scope: !1635)
!1638 = !DILocation(line: 25, column: 9, scope: !1635)
!1639 = !DILocation(line: 27, column: 15, scope: !1635)
!1640 = !DILocation(line: 27, column: 13, scope: !1635)
!1641 = !DILocation(line: 28, column: 13, scope: !1635)
!1642 = !DILocation(line: 29, column: 5, scope: !1635)
!1643 = !DILocation(line: 32, column: 15, scope: !1635)
!1644 = !DILocation(line: 32, column: 13, scope: !1635)
!1645 = !DILocation(line: 33, column: 13, scope: !1635)
!1646 = !DILocation(line: 35, column: 5, scope: !1635)
!1647 = distinct !DISubprogram(name: "__ucmpdi2", scope: !508, file: !508, line: 23, type: !768, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !507, retainedNodes: !545)
!1648 = !DILocation(line: 26, column: 7, scope: !1647)
!1649 = !DILocation(line: 26, column: 11, scope: !1647)
!1650 = !DILocation(line: 28, column: 7, scope: !1647)
!1651 = !DILocation(line: 28, column: 11, scope: !1647)
!1652 = !DILocation(line: 29, column: 11, scope: !1647)
!1653 = !DILocation(line: 29, column: 13, scope: !1647)
!1654 = !DILocation(line: 29, column: 22, scope: !1647)
!1655 = !DILocation(line: 29, column: 24, scope: !1647)
!1656 = !DILocation(line: 29, column: 18, scope: !1647)
!1657 = !DILocation(line: 29, column: 9, scope: !1647)
!1658 = !DILocation(line: 30, column: 9, scope: !1647)
!1659 = !DILocation(line: 31, column: 11, scope: !1647)
!1660 = !DILocation(line: 31, column: 13, scope: !1647)
!1661 = !DILocation(line: 31, column: 22, scope: !1647)
!1662 = !DILocation(line: 31, column: 24, scope: !1647)
!1663 = !DILocation(line: 31, column: 18, scope: !1647)
!1664 = !DILocation(line: 31, column: 9, scope: !1647)
!1665 = !DILocation(line: 32, column: 9, scope: !1647)
!1666 = !DILocation(line: 33, column: 13, scope: !1647)
!1667 = !DILocation(line: 33, column: 23, scope: !1647)
!1668 = !DILocation(line: 33, column: 17, scope: !1647)
!1669 = !DILocation(line: 33, column: 9, scope: !1647)
!1670 = !DILocation(line: 34, column: 9, scope: !1647)
!1671 = !DILocation(line: 35, column: 13, scope: !1647)
!1672 = !DILocation(line: 35, column: 23, scope: !1647)
!1673 = !DILocation(line: 35, column: 17, scope: !1647)
!1674 = !DILocation(line: 35, column: 9, scope: !1647)
!1675 = !DILocation(line: 36, column: 9, scope: !1647)
!1676 = !DILocation(line: 37, column: 5, scope: !1647)
!1677 = !DILocation(line: 0, scope: !1647)
!1678 = !DILocation(line: 38, column: 1, scope: !1647)
!1679 = distinct !DISubprogram(name: "__aeabi_ulcmp", scope: !508, file: !508, line: 46, type: !768, scopeLine: 47, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !507, retainedNodes: !545)
!1680 = !DILocation(line: 48, column: 9, scope: !1679)
!1681 = !DILocation(line: 48, column: 25, scope: !1679)
!1682 = !DILocation(line: 48, column: 2, scope: !1679)
!1683 = distinct !DISubprogram(name: "__udivdi3", scope: !512, file: !512, line: 20, type: !768, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !511, retainedNodes: !545)
!1684 = !DILocation(line: 22, column: 12, scope: !1683)
!1685 = !DILocation(line: 22, column: 5, scope: !1683)
!1686 = distinct !DISubprogram(name: "__udivmodsi4", scope: !516, file: !516, line: 20, type: !768, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !515, retainedNodes: !545)
!1687 = !DILocation(line: 22, column: 14, scope: !1686)
!1688 = !DILocation(line: 23, column: 16, scope: !1686)
!1689 = !DILocation(line: 23, column: 12, scope: !1686)
!1690 = !DILocation(line: 23, column: 8, scope: !1686)
!1691 = !DILocation(line: 24, column: 3, scope: !1686)
!1692 = distinct !DISubprogram(name: "__udivsi3", scope: !520, file: !520, line: 25, type: !768, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !519, retainedNodes: !545)
!1693 = !DILocation(line: 32, column: 11, scope: !1692)
!1694 = !DILocation(line: 32, column: 9, scope: !1692)
!1695 = !DILocation(line: 33, column: 9, scope: !1692)
!1696 = !DILocation(line: 34, column: 11, scope: !1692)
!1697 = !DILocation(line: 34, column: 9, scope: !1692)
!1698 = !DILocation(line: 35, column: 9, scope: !1692)
!1699 = !DILocation(line: 36, column: 10, scope: !1692)
!1700 = !DILocation(line: 36, column: 29, scope: !1692)
!1701 = !DILocation(line: 36, column: 27, scope: !1692)
!1702 = !DILocation(line: 38, column: 12, scope: !1692)
!1703 = !DILocation(line: 38, column: 9, scope: !1692)
!1704 = !DILocation(line: 39, column: 9, scope: !1692)
!1705 = !DILocation(line: 40, column: 12, scope: !1692)
!1706 = !DILocation(line: 40, column: 9, scope: !1692)
!1707 = !DILocation(line: 41, column: 9, scope: !1692)
!1708 = !DILocation(line: 42, column: 5, scope: !1692)
!1709 = !DILocation(line: 45, column: 28, scope: !1692)
!1710 = !DILocation(line: 45, column: 11, scope: !1692)
!1711 = !DILocation(line: 46, column: 11, scope: !1692)
!1712 = !DILocation(line: 48, column: 5, scope: !1692)
!1713 = !DILocation(line: 0, scope: !1692)
!1714 = !DILocation(line: 48, column: 15, scope: !1692)
!1715 = !DILocation(line: 51, column: 22, scope: !1692)
!1716 = !DILocation(line: 60, column: 41, scope: !1692)
!1717 = !DILocation(line: 63, column: 5, scope: !1692)
!1718 = !DILocation(line: 62, column: 16, scope: !1692)
!1719 = !DILocation(line: 62, column: 11, scope: !1692)
!1720 = !DILocation(line: 61, column: 19, scope: !1692)
!1721 = !DILocation(line: 52, column: 16, scope: !1692)
!1722 = !DILocation(line: 52, column: 22, scope: !1692)
!1723 = !DILocation(line: 48, column: 20, scope: !1692)
!1724 = distinct !{!1724, !1712, !1717, !600}
!1725 = !DILocation(line: 64, column: 12, scope: !1692)
!1726 = !DILocation(line: 64, column: 18, scope: !1692)
!1727 = !DILocation(line: 65, column: 5, scope: !1692)
!1728 = !DILocation(line: 66, column: 1, scope: !1692)
!1729 = distinct !DISubprogram(name: "__umoddi3", scope: !524, file: !524, line: 20, type: !768, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !523, retainedNodes: !545)
!1730 = !DILocation(line: 23, column: 5, scope: !1729)
!1731 = !DILocation(line: 24, column: 12, scope: !1729)
!1732 = !DILocation(line: 24, column: 5, scope: !1729)
!1733 = distinct !DISubprogram(name: "__umodsi3", scope: !526, file: !526, line: 20, type: !768, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !525, retainedNodes: !545)
!1734 = !DILocation(line: 22, column: 16, scope: !1733)
!1735 = !DILocation(line: 22, column: 32, scope: !1733)
!1736 = !DILocation(line: 22, column: 14, scope: !1733)
!1737 = !DILocation(line: 22, column: 5, scope: !1733)
!1738 = distinct !DISubprogram(name: "memcpy", scope: !530, file: !530, line: 3, type: !768, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !529, retainedNodes: !545)
!1739 = !DILocation(line: 8, column: 6, scope: !1738)
!1740 = !DILocation(line: 0, scope: !1738)
!1741 = !DILocation(line: 8, column: 19, scope: !1738)
!1742 = !DILocation(line: 8, column: 2, scope: !1738)
!1743 = !DILocation(line: 9, column: 21, scope: !1738)
!1744 = !DILocation(line: 9, column: 3, scope: !1738)
!1745 = !DILocation(line: 9, column: 19, scope: !1738)
!1746 = !DILocation(line: 10, column: 2, scope: !1738)
!1747 = !DILocation(line: 8, column: 26, scope: !1738)
!1748 = distinct !{!1748, !1742, !1746, !600}
!1749 = !DILocation(line: 11, column: 1, scope: !1738)
!1750 = distinct !DISubprogram(name: "memset", scope: !530, file: !530, line: 13, type: !768, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !529, retainedNodes: !545)
!1751 = !DILocation(line: 17, column: 6, scope: !1750)
!1752 = !DILocation(line: 0, scope: !1750)
!1753 = !DILocation(line: 17, column: 19, scope: !1750)
!1754 = !DILocation(line: 17, column: 2, scope: !1750)
!1755 = !DILocation(line: 18, column: 13, scope: !1750)
!1756 = !DILocation(line: 18, column: 3, scope: !1750)
!1757 = !DILocation(line: 18, column: 11, scope: !1750)
!1758 = !DILocation(line: 19, column: 2, scope: !1750)
!1759 = !DILocation(line: 17, column: 26, scope: !1750)
!1760 = distinct !{!1760, !1754, !1758, !600}
!1761 = !DILocation(line: 20, column: 2, scope: !1750)
