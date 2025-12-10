; ModuleID = '/workspaces/llvmta/testcases/wcet_bench/compress.c'
source_filename = "/workspaces/llvmta/testcases/wcet_bench/compress.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv4t-unknown-unknown"

@maxbits = dso_local global i32 16, align 4
@maxmaxcode = dso_local global i32 65536, align 4
@hsize = dso_local global i32 257, align 4
@free_ent = dso_local global i32 0, align 4
@exit_stat = dso_local global i32 0, align 4
@nomagic = dso_local global i32 1, align 4
@zcat_flg = dso_local global i32 0, align 4
@quiet = dso_local global i32 1, align 4
@block_compress = dso_local global i32 128, align 4
@clear_flg = dso_local global i32 0, align 4
@ratio = dso_local global i32 0, align 4
@checkpoint = dso_local global i32 10000, align 4
@force = dso_local global i32 0, align 4
@InCnt = dso_local global i32 0, align 4
@apsim_InCnt = dso_local global i32 0, align 4
@orig_text_buffer = dso_local global [50 x i8] zeroinitializer, align 1
@InBuff = dso_local global i8* null, align 4
@comp_text_buffer = dso_local global [55 x i8] zeroinitializer, align 1
@OutBuff = dso_local global i8* null, align 4
@in_count = dso_local global i32 1, align 4
@out_count = dso_local global i32 0, align 4
@offset = internal global i32 0, align 4
@bytes_out = dso_local global i32 0, align 4
@n_bits = dso_local global i32 0, align 4
@maxcode = dso_local global i32 0, align 4
@htab = dso_local global [257 x i32] zeroinitializer, align 4
@codetab = dso_local global [257 x i16] zeroinitializer, align 2
@lmask = dso_local global [9 x i8] c"\FF\FE\FC\F8\F0\E0\C0\80\00", align 1
@rmask = dso_local global [9 x i8] c"\00\01\03\07\0F\1F?\7F\FF", align 1
@buf = dso_local global [16 x i8] zeroinitializer, align 1
@fsize = dso_local global i32 0, align 4
@ofname = dso_local global [100 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @cover_cover() #0 !dbg !12 {
entry:
  %count = alloca i32, align 4
  store i32 50, i32* %count, align 4, !dbg !16
  call arm_aapcs_vfpcc void @initbuffer() #1, !dbg !17
  store i32 16, i32* @maxbits, align 4, !dbg !18
  %0 = load i32, i32* @maxbits, align 4, !dbg !19
  %shl = shl i32 1, %0, !dbg !20
  store i32 %shl, i32* @maxmaxcode, align 4, !dbg !21
  %1 = load i32, i32* %count, align 4, !dbg !22
  store i32 %1, i32* @InCnt, align 4, !dbg !23
  store i32 53, i32* @apsim_InCnt, align 4, !dbg !24
  store i8* getelementptr inbounds ([50 x i8], [50 x i8]* @orig_text_buffer, i32 0, i32 0), i8** @InBuff, align 4, !dbg !25
  store i8* getelementptr inbounds ([55 x i8], [55 x i8]* @comp_text_buffer, i32 0, i32 0), i8** @OutBuff, align 4, !dbg !26
  call arm_aapcs_vfpcc void @compress_compress() #1, !dbg !27
  ret i32 0, !dbg !28
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @initbuffer() #0 !dbg !29 {
entry:
  %seed = alloca i32, align 4
  %i = alloca i32, align 4
  %tabort = alloca i32, align 4
  store i32 1, i32* %seed, align 4, !dbg !30
  store i32 0, i32* %i, align 4, !dbg !31
  br label %for.cond, !dbg !32

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !33
  %cmp = icmp slt i32 %0, 50, !dbg !34
  br i1 %cmp, label %for.body, label %for.end, !dbg !35

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4, !dbg !36
  store i32 %1, i32* %tabort, align 4, !dbg !37
  %2 = load i32, i32* %seed, align 4, !dbg !38
  %mul = mul nsw i32 %2, 133, !dbg !39
  %add = add nsw i32 %mul, 81, !dbg !40
  %rem = srem i32 %add, 8095, !dbg !41
  store i32 %rem, i32* %seed, align 4, !dbg !42
  %3 = load i32, i32* %seed, align 4, !dbg !43
  %rem1 = srem i32 %3, 256, !dbg !44
  %conv = trunc i32 %rem1 to i8, !dbg !43
  %4 = load i32, i32* %i, align 4, !dbg !45
  %arrayidx = getelementptr inbounds [50 x i8], [50 x i8]* @orig_text_buffer, i32 0, i32 %4, !dbg !46
  store i8 %conv, i8* %arrayidx, align 1, !dbg !47
  br label %for.inc, !dbg !48

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4, !dbg !49
  %inc = add nsw i32 %5, 1, !dbg !49
  store i32 %inc, i32* %i, align 4, !dbg !49
  br label %for.cond, !dbg !35, !llvm.loop !50

for.end:                                          ; preds = %for.cond
  ret void, !dbg !52
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @compress_compress() #0 !dbg !53 {
entry:
  %fcode = alloca i32, align 4
  %i = alloca i32, align 4
  %c = alloca i32, align 4
  %ent = alloca i32, align 4
  %disp = alloca i32, align 4
  %hsize_reg = alloca i32, align 4
  %hshift = alloca i32, align 4
  %apsim_bound111 = alloca i32, align 4
  store i32 0, i32* %i, align 4, !dbg !54
  store i32 0, i32* @offset, align 4, !dbg !55
  store i32 3, i32* @bytes_out, align 4, !dbg !56
  store i32 0, i32* @out_count, align 4, !dbg !57
  store i32 0, i32* @clear_flg, align 4, !dbg !58
  store i32 0, i32* @ratio, align 4, !dbg !59
  store i32 1, i32* @in_count, align 4, !dbg !60
  store i32 10000, i32* @checkpoint, align 4, !dbg !61
  store i32 9, i32* @n_bits, align 4, !dbg !62
  store i32 511, i32* @maxcode, align 4, !dbg !63
  %0 = load i32, i32* @block_compress, align 4, !dbg !64
  %tobool = icmp ne i32 %0, 0, !dbg !65
  %1 = zext i1 %tobool to i64, !dbg !65
  %cond = select i1 %tobool, i32 257, i32 256, !dbg !65
  store i32 %cond, i32* @free_ent, align 4, !dbg !66
  %call = call arm_aapcs_vfpcc i32 @getbyte() #1, !dbg !67
  store i32 %call, i32* %ent, align 4, !dbg !68
  store i32 0, i32* %hshift, align 4, !dbg !69
  %2 = load i32, i32* @hsize, align 4, !dbg !70
  store i32 %2, i32* %fcode, align 4, !dbg !71
  br label %for.cond, !dbg !72

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %fcode, align 4, !dbg !73
  %cmp = icmp slt i32 %3, 65536, !dbg !74
  br i1 %cmp, label %for.body, label %for.end, !dbg !75

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %hshift, align 4, !dbg !76
  %inc = add nsw i32 %4, 1, !dbg !76
  store i32 %inc, i32* %hshift, align 4, !dbg !76
  br label %for.inc, !dbg !77

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %fcode, align 4, !dbg !78
  %mul = mul nsw i32 %5, 2, !dbg !78
  store i32 %mul, i32* %fcode, align 4, !dbg !78
  br label %for.cond, !dbg !75, !llvm.loop !79

for.end:                                          ; preds = %for.cond
  %6 = load i32, i32* %hshift, align 4, !dbg !80
  %sub = sub nsw i32 8, %6, !dbg !81
  store i32 %sub, i32* %hshift, align 4, !dbg !82
  %7 = load i32, i32* @hsize, align 4, !dbg !83
  store i32 %7, i32* %hsize_reg, align 4, !dbg !84
  %8 = load i32, i32* %hsize_reg, align 4, !dbg !85
  call arm_aapcs_vfpcc void @cl_hash(i32 noundef %8) #1, !dbg !86
  br label %while.cond, !dbg !87

while.cond:                                       ; preds = %if.end53, %if.then26, %if.then, %for.end
  %9 = load i32, i32* @InCnt, align 4, !dbg !88
  %cmp1 = icmp sgt i32 %9, 0, !dbg !89
  br i1 %cmp1, label %while.body, label %while.end, !dbg !87

while.body:                                       ; preds = %while.cond
  store i32 0, i32* %apsim_bound111, align 4, !dbg !90
  %call2 = call arm_aapcs_vfpcc i32 @getbyte() #1, !dbg !91
  store i32 %call2, i32* %c, align 4, !dbg !92
  %10 = load i32, i32* @in_count, align 4, !dbg !93
  %inc3 = add nsw i32 %10, 1, !dbg !93
  store i32 %inc3, i32* @in_count, align 4, !dbg !93
  %11 = load i32, i32* %c, align 4, !dbg !94
  %12 = load i32, i32* @maxbits, align 4, !dbg !95
  %shl = shl i32 %11, %12, !dbg !96
  %13 = load i32, i32* %ent, align 4, !dbg !97
  %add = add nsw i32 %shl, %13, !dbg !98
  store i32 %add, i32* %fcode, align 4, !dbg !99
  %14 = load i32, i32* %c, align 4, !dbg !100
  %15 = load i32, i32* %hshift, align 4, !dbg !101
  %shl4 = shl i32 %14, %15, !dbg !102
  %16 = load i32, i32* %ent, align 4, !dbg !103
  %xor = xor i32 %shl4, %16, !dbg !104
  store i32 %xor, i32* %i, align 4, !dbg !105
  %17 = load i32, i32* %i, align 4, !dbg !106
  %arrayidx = getelementptr inbounds [257 x i32], [257 x i32]* @htab, i32 0, i32 %17, !dbg !106
  %18 = load i32, i32* %arrayidx, align 4, !dbg !106
  %19 = load i32, i32* %fcode, align 4, !dbg !107
  %cmp5 = icmp eq i32 %18, %19, !dbg !108
  br i1 %cmp5, label %if.then, label %if.else, !dbg !106

if.then:                                          ; preds = %while.body
  %20 = load i32, i32* %i, align 4, !dbg !109
  %arrayidx6 = getelementptr inbounds [257 x i16], [257 x i16]* @codetab, i32 0, i32 %20, !dbg !109
  %21 = load i16, i16* %arrayidx6, align 2, !dbg !109
  %conv = zext i16 %21 to i32, !dbg !109
  store i32 %conv, i32* %ent, align 4, !dbg !110
  br label %while.cond, !dbg !111, !llvm.loop !112

if.else:                                          ; preds = %while.body
  %22 = load i32, i32* %i, align 4, !dbg !114
  %arrayidx7 = getelementptr inbounds [257 x i32], [257 x i32]* @htab, i32 0, i32 %22, !dbg !114
  %23 = load i32, i32* %arrayidx7, align 4, !dbg !114
  %cmp8 = icmp slt i32 %23, 0, !dbg !115
  br i1 %cmp8, label %if.then10, label %if.end, !dbg !116

if.then10:                                        ; preds = %if.else
  br label %nomatch, !dbg !117

if.end:                                           ; preds = %if.else
  br label %if.end11

if.end11:                                         ; preds = %if.end
  %24 = load i32, i32* %hsize_reg, align 4, !dbg !118
  %25 = load i32, i32* %i, align 4, !dbg !119
  %sub12 = sub nsw i32 %24, %25, !dbg !120
  store i32 %sub12, i32* %disp, align 4, !dbg !121
  %26 = load i32, i32* %i, align 4, !dbg !122
  %cmp13 = icmp eq i32 %26, 0, !dbg !123
  br i1 %cmp13, label %if.then15, label %if.end16, !dbg !122

if.then15:                                        ; preds = %if.end11
  store i32 1, i32* %disp, align 4, !dbg !124
  br label %if.end16, !dbg !125

if.end16:                                         ; preds = %if.then15, %if.end11
  br label %probe, !dbg !126

probe:                                            ; preds = %if.then36, %if.end16
  %27 = load i32, i32* %disp, align 4, !dbg !127
  %28 = load i32, i32* %i, align 4, !dbg !128
  %sub17 = sub nsw i32 %28, %27, !dbg !128
  store i32 %sub17, i32* %i, align 4, !dbg !128
  %cmp18 = icmp slt i32 %sub17, 0, !dbg !129
  br i1 %cmp18, label %if.then20, label %if.end22, !dbg !130

if.then20:                                        ; preds = %probe
  %29 = load i32, i32* %hsize_reg, align 4, !dbg !131
  %30 = load i32, i32* %i, align 4, !dbg !132
  %add21 = add nsw i32 %30, %29, !dbg !132
  store i32 %add21, i32* %i, align 4, !dbg !132
  br label %if.end22, !dbg !133

if.end22:                                         ; preds = %if.then20, %probe
  %31 = load i32, i32* %i, align 4, !dbg !134
  %arrayidx23 = getelementptr inbounds [257 x i32], [257 x i32]* @htab, i32 0, i32 %31, !dbg !134
  %32 = load i32, i32* %arrayidx23, align 4, !dbg !134
  %33 = load i32, i32* %fcode, align 4, !dbg !135
  %cmp24 = icmp eq i32 %32, %33, !dbg !136
  br i1 %cmp24, label %if.then26, label %if.end29, !dbg !134

if.then26:                                        ; preds = %if.end22
  %34 = load i32, i32* %i, align 4, !dbg !137
  %arrayidx27 = getelementptr inbounds [257 x i16], [257 x i16]* @codetab, i32 0, i32 %34, !dbg !137
  %35 = load i16, i16* %arrayidx27, align 2, !dbg !137
  %conv28 = zext i16 %35 to i32, !dbg !137
  store i32 %conv28, i32* %ent, align 4, !dbg !138
  br label %while.cond, !dbg !139, !llvm.loop !112

if.end29:                                         ; preds = %if.end22
  %36 = load i32, i32* %i, align 4, !dbg !140
  %arrayidx30 = getelementptr inbounds [257 x i32], [257 x i32]* @htab, i32 0, i32 %36, !dbg !140
  %37 = load i32, i32* %arrayidx30, align 4, !dbg !140
  %cmp31 = icmp sgt i32 %37, 0, !dbg !141
  br i1 %cmp31, label %land.lhs.true, label %if.end37, !dbg !142

land.lhs.true:                                    ; preds = %if.end29
  %38 = load i32, i32* %apsim_bound111, align 4, !dbg !143
  %inc33 = add nsw i32 %38, 1, !dbg !143
  store i32 %inc33, i32* %apsim_bound111, align 4, !dbg !143
  %39 = load i32, i32* @in_count, align 4, !dbg !144
  %cmp34 = icmp slt i32 %inc33, %39, !dbg !145
  br i1 %cmp34, label %if.then36, label %if.end37, !dbg !146

if.then36:                                        ; preds = %land.lhs.true
  br label %probe, !dbg !147

if.end37:                                         ; preds = %land.lhs.true, %if.end29
  br label %nomatch, !dbg !148

nomatch:                                          ; preds = %if.end37, %if.then10
  %40 = load i32, i32* @out_count, align 4, !dbg !149
  %inc38 = add nsw i32 %40, 1, !dbg !149
  store i32 %inc38, i32* @out_count, align 4, !dbg !149
  %41 = load i32, i32* %c, align 4, !dbg !150
  store i32 %41, i32* %ent, align 4, !dbg !151
  %42 = load i32, i32* @free_ent, align 4, !dbg !152
  %43 = load i32, i32* @maxmaxcode, align 4, !dbg !153
  %cmp39 = icmp slt i32 %42, %43, !dbg !154
  br i1 %cmp39, label %if.then41, label %if.else46, !dbg !152

if.then41:                                        ; preds = %nomatch
  %44 = load i32, i32* @free_ent, align 4, !dbg !155
  %inc42 = add nsw i32 %44, 1, !dbg !155
  store i32 %inc42, i32* @free_ent, align 4, !dbg !155
  %conv43 = trunc i32 %44 to i16, !dbg !156
  %45 = load i32, i32* %i, align 4, !dbg !157
  %arrayidx44 = getelementptr inbounds [257 x i16], [257 x i16]* @codetab, i32 0, i32 %45, !dbg !157
  store i16 %conv43, i16* %arrayidx44, align 2, !dbg !158
  %46 = load i32, i32* %fcode, align 4, !dbg !159
  %47 = load i32, i32* %i, align 4, !dbg !160
  %arrayidx45 = getelementptr inbounds [257 x i32], [257 x i32]* @htab, i32 0, i32 %47, !dbg !160
  store i32 %46, i32* %arrayidx45, align 4, !dbg !161
  br label %if.end53, !dbg !162

if.else46:                                        ; preds = %nomatch
  %48 = load i32, i32* @in_count, align 4, !dbg !163
  %49 = load i32, i32* @checkpoint, align 4, !dbg !164
  %cmp47 = icmp sge i32 %48, %49, !dbg !165
  br i1 %cmp47, label %land.lhs.true49, label %if.end52, !dbg !166

land.lhs.true49:                                  ; preds = %if.else46
  %50 = load i32, i32* @block_compress, align 4, !dbg !167
  %tobool50 = icmp ne i32 %50, 0, !dbg !168
  br i1 %tobool50, label %if.then51, label %if.end52, !dbg !169

if.then51:                                        ; preds = %land.lhs.true49
  call arm_aapcs_vfpcc void @cl_block() #1, !dbg !170
  br label %if.end52, !dbg !171

if.end52:                                         ; preds = %if.then51, %land.lhs.true49, %if.else46
  br label %if.end53

if.end53:                                         ; preds = %if.end52, %if.then41
  br label %while.cond, !dbg !87, !llvm.loop !112

while.end:                                        ; preds = %while.cond
  %51 = load i32, i32* @bytes_out, align 4, !dbg !172
  %52 = load i32, i32* @in_count, align 4, !dbg !173
  %cmp54 = icmp sgt i32 %51, %52, !dbg !174
  br i1 %cmp54, label %if.then56, label %if.end57, !dbg !172

if.then56:                                        ; preds = %while.end
  store i32 2, i32* @exit_stat, align 4, !dbg !175
  br label %if.end57, !dbg !176

if.end57:                                         ; preds = %if.then56, %while.end
  ret void, !dbg !177
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @getbyte() #0 !dbg !178 {
entry:
  %retval = alloca i32, align 4
  %0 = load i32, i32* @InCnt, align 4, !dbg !179
  %cmp = icmp sgt i32 %0, 0, !dbg !180
  br i1 %cmp, label %land.lhs.true, label %if.else, !dbg !181

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* @apsim_InCnt, align 4, !dbg !182
  %dec = add nsw i32 %1, -1, !dbg !182
  store i32 %dec, i32* @apsim_InCnt, align 4, !dbg !182
  %cmp1 = icmp sgt i32 %1, 0, !dbg !183
  br i1 %cmp1, label %if.then, label %if.else, !dbg !179

if.then:                                          ; preds = %land.lhs.true
  %2 = load i32, i32* @InCnt, align 4, !dbg !184
  %dec2 = add nsw i32 %2, -1, !dbg !184
  store i32 %dec2, i32* @InCnt, align 4, !dbg !184
  %3 = load i8*, i8** @InBuff, align 4, !dbg !185
  %incdec.ptr = getelementptr inbounds i8, i8* %3, i32 1, !dbg !185
  store i8* %incdec.ptr, i8** @InBuff, align 4, !dbg !185
  %4 = load i8, i8* %3, align 1, !dbg !186
  %conv = zext i8 %4 to i32, !dbg !187
  store i32 %conv, i32* %retval, align 4, !dbg !188
  br label %return, !dbg !188

if.else:                                          ; preds = %land.lhs.true, %entry
  store i32 -1, i32* %retval, align 4, !dbg !189
  br label %return, !dbg !189

return:                                           ; preds = %if.else, %if.then
  %5 = load i32, i32* %retval, align 4, !dbg !190
  ret i32 %5, !dbg !190
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @cl_hash(i32 noundef %hsize) #0 !dbg !191 {
entry:
  %hsize.addr = alloca i32, align 4
  %htab_p = alloca i32*, align 4
  %i = alloca i32, align 4
  %m1 = alloca i32, align 4
  store i32 %hsize, i32* %hsize.addr, align 4
  %0 = load i32, i32* %hsize.addr, align 4, !dbg !192
  %add.ptr = getelementptr inbounds i32, i32* getelementptr inbounds ([257 x i32], [257 x i32]* @htab, i32 0, i32 0), i32 %0, !dbg !193
  store i32* %add.ptr, i32** %htab_p, align 4, !dbg !194
  store i32 -1, i32* %m1, align 4, !dbg !195
  %1 = load i32, i32* %hsize.addr, align 4, !dbg !196
  %sub = sub nsw i32 %1, 16, !dbg !197
  store i32 %sub, i32* %i, align 4, !dbg !198
  br label %do.body, !dbg !199

do.body:                                          ; preds = %do.cond, %entry
  %2 = load i32, i32* %m1, align 4, !dbg !200
  %3 = load i32*, i32** %htab_p, align 4, !dbg !201
  %add.ptr1 = getelementptr inbounds i32, i32* %3, i32 -16, !dbg !202
  store i32 %2, i32* %add.ptr1, align 4, !dbg !203
  %4 = load i32, i32* %m1, align 4, !dbg !204
  %5 = load i32*, i32** %htab_p, align 4, !dbg !205
  %add.ptr2 = getelementptr inbounds i32, i32* %5, i32 -15, !dbg !206
  store i32 %4, i32* %add.ptr2, align 4, !dbg !207
  %6 = load i32, i32* %m1, align 4, !dbg !208
  %7 = load i32*, i32** %htab_p, align 4, !dbg !209
  %add.ptr3 = getelementptr inbounds i32, i32* %7, i32 -14, !dbg !210
  store i32 %6, i32* %add.ptr3, align 4, !dbg !211
  %8 = load i32, i32* %m1, align 4, !dbg !212
  %9 = load i32*, i32** %htab_p, align 4, !dbg !213
  %add.ptr4 = getelementptr inbounds i32, i32* %9, i32 -13, !dbg !214
  store i32 %8, i32* %add.ptr4, align 4, !dbg !215
  %10 = load i32, i32* %m1, align 4, !dbg !216
  %11 = load i32*, i32** %htab_p, align 4, !dbg !217
  %add.ptr5 = getelementptr inbounds i32, i32* %11, i32 -12, !dbg !218
  store i32 %10, i32* %add.ptr5, align 4, !dbg !219
  %12 = load i32, i32* %m1, align 4, !dbg !220
  %13 = load i32*, i32** %htab_p, align 4, !dbg !221
  %add.ptr6 = getelementptr inbounds i32, i32* %13, i32 -11, !dbg !222
  store i32 %12, i32* %add.ptr6, align 4, !dbg !223
  %14 = load i32, i32* %m1, align 4, !dbg !224
  %15 = load i32*, i32** %htab_p, align 4, !dbg !225
  %add.ptr7 = getelementptr inbounds i32, i32* %15, i32 -10, !dbg !226
  store i32 %14, i32* %add.ptr7, align 4, !dbg !227
  %16 = load i32, i32* %m1, align 4, !dbg !228
  %17 = load i32*, i32** %htab_p, align 4, !dbg !229
  %add.ptr8 = getelementptr inbounds i32, i32* %17, i32 -9, !dbg !230
  store i32 %16, i32* %add.ptr8, align 4, !dbg !231
  %18 = load i32, i32* %m1, align 4, !dbg !232
  %19 = load i32*, i32** %htab_p, align 4, !dbg !233
  %add.ptr9 = getelementptr inbounds i32, i32* %19, i32 -8, !dbg !234
  store i32 %18, i32* %add.ptr9, align 4, !dbg !235
  %20 = load i32, i32* %m1, align 4, !dbg !236
  %21 = load i32*, i32** %htab_p, align 4, !dbg !237
  %add.ptr10 = getelementptr inbounds i32, i32* %21, i32 -7, !dbg !238
  store i32 %20, i32* %add.ptr10, align 4, !dbg !239
  %22 = load i32, i32* %m1, align 4, !dbg !240
  %23 = load i32*, i32** %htab_p, align 4, !dbg !241
  %add.ptr11 = getelementptr inbounds i32, i32* %23, i32 -6, !dbg !242
  store i32 %22, i32* %add.ptr11, align 4, !dbg !243
  %24 = load i32, i32* %m1, align 4, !dbg !244
  %25 = load i32*, i32** %htab_p, align 4, !dbg !245
  %add.ptr12 = getelementptr inbounds i32, i32* %25, i32 -5, !dbg !246
  store i32 %24, i32* %add.ptr12, align 4, !dbg !247
  %26 = load i32, i32* %m1, align 4, !dbg !248
  %27 = load i32*, i32** %htab_p, align 4, !dbg !249
  %add.ptr13 = getelementptr inbounds i32, i32* %27, i32 -4, !dbg !250
  store i32 %26, i32* %add.ptr13, align 4, !dbg !251
  %28 = load i32, i32* %m1, align 4, !dbg !252
  %29 = load i32*, i32** %htab_p, align 4, !dbg !253
  %add.ptr14 = getelementptr inbounds i32, i32* %29, i32 -3, !dbg !254
  store i32 %28, i32* %add.ptr14, align 4, !dbg !255
  %30 = load i32, i32* %m1, align 4, !dbg !256
  %31 = load i32*, i32** %htab_p, align 4, !dbg !257
  %add.ptr15 = getelementptr inbounds i32, i32* %31, i32 -2, !dbg !258
  store i32 %30, i32* %add.ptr15, align 4, !dbg !259
  %32 = load i32, i32* %m1, align 4, !dbg !260
  %33 = load i32*, i32** %htab_p, align 4, !dbg !261
  %add.ptr16 = getelementptr inbounds i32, i32* %33, i32 -1, !dbg !262
  store i32 %32, i32* %add.ptr16, align 4, !dbg !263
  %34 = load i32*, i32** %htab_p, align 4, !dbg !264
  %add.ptr17 = getelementptr inbounds i32, i32* %34, i32 -16, !dbg !264
  store i32* %add.ptr17, i32** %htab_p, align 4, !dbg !264
  br label %do.cond, !dbg !265

do.cond:                                          ; preds = %do.body
  %35 = load i32, i32* %i, align 4, !dbg !266
  %sub18 = sub nsw i32 %35, 16, !dbg !266
  store i32 %sub18, i32* %i, align 4, !dbg !266
  %cmp = icmp sge i32 %sub18, 0, !dbg !267
  br i1 %cmp, label %do.body, label %do.end, !dbg !265, !llvm.loop !268

do.end:                                           ; preds = %do.cond
  %36 = load i32, i32* %i, align 4, !dbg !270
  %add = add nsw i32 %36, 16, !dbg !270
  store i32 %add, i32* %i, align 4, !dbg !270
  br label %for.cond, !dbg !271

for.cond:                                         ; preds = %for.inc, %do.end
  %37 = load i32, i32* %i, align 4, !dbg !272
  %cmp19 = icmp sgt i32 %37, 0, !dbg !273
  br i1 %cmp19, label %for.body, label %for.end, !dbg !274

for.body:                                         ; preds = %for.cond
  %38 = load i32, i32* %m1, align 4, !dbg !275
  %39 = load i32*, i32** %htab_p, align 4, !dbg !276
  %incdec.ptr = getelementptr inbounds i32, i32* %39, i32 -1, !dbg !276
  store i32* %incdec.ptr, i32** %htab_p, align 4, !dbg !276
  store i32 %38, i32* %incdec.ptr, align 4, !dbg !277
  br label %for.inc, !dbg !278

for.inc:                                          ; preds = %for.body
  %40 = load i32, i32* %i, align 4, !dbg !279
  %dec = add nsw i32 %40, -1, !dbg !279
  store i32 %dec, i32* %i, align 4, !dbg !279
  br label %for.cond, !dbg !274, !llvm.loop !280

for.end:                                          ; preds = %for.cond
  ret void, !dbg !281
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @cl_block() #0 !dbg !282 {
entry:
  %rat = alloca i32, align 4
  %0 = load i32, i32* @in_count, align 4, !dbg !283
  %add = add nsw i32 %0, 10000, !dbg !284
  store i32 %add, i32* @checkpoint, align 4, !dbg !285
  %1 = load i32, i32* @in_count, align 4, !dbg !286
  %cmp = icmp sgt i32 %1, 8388607, !dbg !287
  br i1 %cmp, label %if.then, label %if.else3, !dbg !286

if.then:                                          ; preds = %entry
  %2 = load i32, i32* @bytes_out, align 4, !dbg !288
  %shr = ashr i32 %2, 8, !dbg !289
  store i32 %shr, i32* %rat, align 4, !dbg !290
  %3 = load i32, i32* %rat, align 4, !dbg !291
  %cmp1 = icmp eq i32 %3, 0, !dbg !292
  br i1 %cmp1, label %if.then2, label %if.else, !dbg !291

if.then2:                                         ; preds = %if.then
  store i32 2147483647, i32* %rat, align 4, !dbg !293
  br label %if.end, !dbg !294

if.else:                                          ; preds = %if.then
  %4 = load i32, i32* @in_count, align 4, !dbg !295
  %5 = load i32, i32* %rat, align 4, !dbg !296
  %div = sdiv i32 %4, %5, !dbg !297
  store i32 %div, i32* %rat, align 4, !dbg !298
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then2
  br label %if.end5, !dbg !299

if.else3:                                         ; preds = %entry
  %6 = load i32, i32* @in_count, align 4, !dbg !300
  %shl = shl i32 %6, 8, !dbg !301
  %7 = load i32, i32* @bytes_out, align 4, !dbg !302
  %div4 = sdiv i32 %shl, %7, !dbg !303
  store i32 %div4, i32* %rat, align 4, !dbg !304
  br label %if.end5

if.end5:                                          ; preds = %if.else3, %if.end
  %8 = load i32, i32* %rat, align 4, !dbg !305
  %9 = load i32, i32* @ratio, align 4, !dbg !306
  %cmp6 = icmp sgt i32 %8, %9, !dbg !307
  br i1 %cmp6, label %if.then7, label %if.else8, !dbg !305

if.then7:                                         ; preds = %if.end5
  %10 = load i32, i32* %rat, align 4, !dbg !308
  store i32 %10, i32* @ratio, align 4, !dbg !309
  br label %if.end9, !dbg !310

if.else8:                                         ; preds = %if.end5
  store i32 0, i32* @ratio, align 4, !dbg !311
  %11 = load i32, i32* @hsize, align 4, !dbg !312
  call arm_aapcs_vfpcc void @cl_hash(i32 noundef %11) #1, !dbg !313
  store i32 257, i32* @free_ent, align 4, !dbg !314
  store i32 1, i32* @clear_flg, align 4, !dbg !315
  call arm_aapcs_vfpcc void @output(i32 noundef 256) #1, !dbg !316
  br label %if.end9

if.end9:                                          ; preds = %if.else8, %if.then7
  ret void, !dbg !317
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @output(i32 noundef %code) #0 !dbg !318 {
entry:
  %code.addr = alloca i32, align 4
  %r_off = alloca i32, align 4
  %bits = alloca i32, align 4
  %bp = alloca i8*, align 4
  store i32 %code, i32* %code.addr, align 4
  %0 = load i32, i32* @offset, align 4, !dbg !319
  store i32 %0, i32* %r_off, align 4, !dbg !320
  %1 = load i32, i32* @n_bits, align 4, !dbg !321
  store i32 %1, i32* %bits, align 4, !dbg !322
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @buf, i32 0, i32 0), i8** %bp, align 4, !dbg !323
  %2 = load i32, i32* %code.addr, align 4, !dbg !324
  %cmp = icmp sge i32 %2, 0, !dbg !325
  br i1 %cmp, label %if.then, label %if.else51, !dbg !324

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %r_off, align 4, !dbg !326
  %shr = ashr i32 %3, 3, !dbg !327
  %4 = load i8*, i8** %bp, align 4, !dbg !328
  %add.ptr = getelementptr inbounds i8, i8* %4, i32 %shr, !dbg !328
  store i8* %add.ptr, i8** %bp, align 4, !dbg !328
  %5 = load i32, i32* %r_off, align 4, !dbg !329
  %and = and i32 %5, 7, !dbg !329
  store i32 %and, i32* %r_off, align 4, !dbg !329
  %6 = load i8*, i8** %bp, align 4, !dbg !330
  %7 = load i8, i8* %6, align 1, !dbg !331
  %conv = zext i8 %7 to i32, !dbg !331
  %8 = load i32, i32* %r_off, align 4, !dbg !332
  %arrayidx = getelementptr inbounds [9 x i8], [9 x i8]* @rmask, i32 0, i32 %8, !dbg !333
  %9 = load i8, i8* %arrayidx, align 1, !dbg !333
  %conv1 = zext i8 %9 to i32, !dbg !333
  %and2 = and i32 %conv, %conv1, !dbg !334
  %10 = load i32, i32* %code.addr, align 4, !dbg !335
  %11 = load i32, i32* %r_off, align 4, !dbg !336
  %shl = shl i32 %10, %11, !dbg !337
  %or = or i32 %and2, %shl, !dbg !338
  %12 = load i32, i32* %r_off, align 4, !dbg !339
  %arrayidx3 = getelementptr inbounds [9 x i8], [9 x i8]* @lmask, i32 0, i32 %12, !dbg !340
  %13 = load i8, i8* %arrayidx3, align 1, !dbg !340
  %conv4 = zext i8 %13 to i32, !dbg !340
  %and5 = and i32 %or, %conv4, !dbg !341
  %conv6 = trunc i32 %and5 to i8, !dbg !342
  %14 = load i8*, i8** %bp, align 4, !dbg !343
  store i8 %conv6, i8* %14, align 1, !dbg !344
  %15 = load i8*, i8** %bp, align 4, !dbg !345
  %incdec.ptr = getelementptr inbounds i8, i8* %15, i32 1, !dbg !345
  store i8* %incdec.ptr, i8** %bp, align 4, !dbg !345
  %16 = load i32, i32* %r_off, align 4, !dbg !346
  %sub = sub nsw i32 8, %16, !dbg !347
  %17 = load i32, i32* %bits, align 4, !dbg !348
  %sub7 = sub nsw i32 %17, %sub, !dbg !348
  store i32 %sub7, i32* %bits, align 4, !dbg !348
  %18 = load i32, i32* %r_off, align 4, !dbg !349
  %sub8 = sub nsw i32 8, %18, !dbg !350
  %19 = load i32, i32* %code.addr, align 4, !dbg !351
  %shr9 = ashr i32 %19, %sub8, !dbg !351
  store i32 %shr9, i32* %code.addr, align 4, !dbg !351
  %20 = load i32, i32* %bits, align 4, !dbg !352
  %cmp10 = icmp sge i32 %20, 8, !dbg !353
  br i1 %cmp10, label %if.then12, label %if.end, !dbg !352

if.then12:                                        ; preds = %if.then
  %21 = load i32, i32* %code.addr, align 4, !dbg !354
  %conv13 = trunc i32 %21 to i8, !dbg !354
  %22 = load i8*, i8** %bp, align 4, !dbg !355
  %incdec.ptr14 = getelementptr inbounds i8, i8* %22, i32 1, !dbg !355
  store i8* %incdec.ptr14, i8** %bp, align 4, !dbg !355
  store i8 %conv13, i8* %22, align 1, !dbg !356
  %23 = load i32, i32* %code.addr, align 4, !dbg !357
  %shr15 = ashr i32 %23, 8, !dbg !357
  store i32 %shr15, i32* %code.addr, align 4, !dbg !357
  %24 = load i32, i32* %bits, align 4, !dbg !358
  %sub16 = sub nsw i32 %24, 8, !dbg !358
  store i32 %sub16, i32* %bits, align 4, !dbg !358
  br label %if.end, !dbg !359

if.end:                                           ; preds = %if.then12, %if.then
  %25 = load i32, i32* %bits, align 4, !dbg !360
  %tobool = icmp ne i32 %25, 0, !dbg !360
  br i1 %tobool, label %if.then17, label %if.end19, !dbg !360

if.then17:                                        ; preds = %if.end
  %26 = load i32, i32* %code.addr, align 4, !dbg !361
  %conv18 = trunc i32 %26 to i8, !dbg !361
  %27 = load i8*, i8** %bp, align 4, !dbg !362
  store i8 %conv18, i8* %27, align 1, !dbg !363
  br label %if.end19, !dbg !364

if.end19:                                         ; preds = %if.then17, %if.end
  %28 = load i32, i32* @n_bits, align 4, !dbg !365
  %29 = load i32, i32* @offset, align 4, !dbg !366
  %add = add nsw i32 %29, %28, !dbg !366
  store i32 %add, i32* @offset, align 4, !dbg !366
  %30 = load i32, i32* @offset, align 4, !dbg !367
  %31 = load i32, i32* @n_bits, align 4, !dbg !368
  %shl20 = shl i32 %31, 3, !dbg !369
  %cmp21 = icmp eq i32 %30, %shl20, !dbg !370
  br i1 %cmp21, label %if.then23, label %if.end29, !dbg !367

if.then23:                                        ; preds = %if.end19
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @buf, i32 0, i32 0), i8** %bp, align 4, !dbg !371
  %32 = load i32, i32* @n_bits, align 4, !dbg !372
  store i32 %32, i32* %bits, align 4, !dbg !373
  %33 = load i32, i32* %bits, align 4, !dbg !374
  %34 = load i32, i32* @bytes_out, align 4, !dbg !375
  %add24 = add nsw i32 %34, %33, !dbg !375
  store i32 %add24, i32* @bytes_out, align 4, !dbg !375
  br label %do.body, !dbg !376

do.body:                                          ; preds = %land.end, %if.then23
  %35 = load i8*, i8** %bp, align 4, !dbg !377
  %incdec.ptr25 = getelementptr inbounds i8, i8* %35, i32 1, !dbg !377
  store i8* %incdec.ptr25, i8** %bp, align 4, !dbg !377
  %36 = load i8, i8* %35, align 1, !dbg !378
  call arm_aapcs_vfpcc void @putbyte(i8 noundef zeroext %36) #1, !dbg !379
  br label %do.cond, !dbg !380

do.cond:                                          ; preds = %do.body
  %37 = load i32, i32* %bits, align 4, !dbg !381
  %dec = add nsw i32 %37, -1, !dbg !381
  store i32 %dec, i32* %bits, align 4, !dbg !381
  %tobool26 = icmp ne i32 %dec, 0, !dbg !381
  br i1 %tobool26, label %land.rhs, label %land.end, !dbg !382

land.rhs:                                         ; preds = %do.cond
  %38 = load i8*, i8** %bp, align 4, !dbg !383
  %sub.ptr.lhs.cast = ptrtoint i8* %38 to i32, !dbg !384
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, ptrtoint ([16 x i8]* @buf to i32), !dbg !384
  %cmp27 = icmp slt i32 %sub.ptr.sub, 16, !dbg !385
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %39 = phi i1 [ false, %do.cond ], [ %cmp27, %land.rhs ], !dbg !386
  br i1 %39, label %do.body, label %do.end, !dbg !380, !llvm.loop !387

do.end:                                           ; preds = %land.end
  store i32 0, i32* @offset, align 4, !dbg !389
  br label %if.end29, !dbg !390

if.end29:                                         ; preds = %do.end, %if.end19
  %40 = load i32, i32* @free_ent, align 4, !dbg !391
  %41 = load i32, i32* @maxcode, align 4, !dbg !392
  %cmp30 = icmp sgt i32 %40, %41, !dbg !393
  br i1 %cmp30, label %if.then34, label %lor.lhs.false, !dbg !394

lor.lhs.false:                                    ; preds = %if.end29
  %42 = load i32, i32* @clear_flg, align 4, !dbg !395
  %cmp32 = icmp sgt i32 %42, 0, !dbg !396
  br i1 %cmp32, label %if.then34, label %if.end50, !dbg !391

if.then34:                                        ; preds = %lor.lhs.false, %if.end29
  %43 = load i32, i32* @offset, align 4, !dbg !397
  %cmp35 = icmp sgt i32 %43, 0, !dbg !398
  br i1 %cmp35, label %if.then37, label %if.end39, !dbg !397

if.then37:                                        ; preds = %if.then34
  %44 = load i32, i32* @n_bits, align 4, !dbg !399
  call arm_aapcs_vfpcc void @writebytes(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @buf, i32 0, i32 0), i32 noundef %44) #1, !dbg !400
  %45 = load i32, i32* @n_bits, align 4, !dbg !401
  %46 = load i32, i32* @bytes_out, align 4, !dbg !402
  %add38 = add nsw i32 %46, %45, !dbg !402
  store i32 %add38, i32* @bytes_out, align 4, !dbg !402
  br label %if.end39, !dbg !403

if.end39:                                         ; preds = %if.then37, %if.then34
  store i32 0, i32* @offset, align 4, !dbg !404
  %47 = load i32, i32* @clear_flg, align 4, !dbg !405
  %tobool40 = icmp ne i32 %47, 0, !dbg !405
  br i1 %tobool40, label %if.then41, label %if.else, !dbg !405

if.then41:                                        ; preds = %if.end39
  store i32 9, i32* @n_bits, align 4, !dbg !406
  store i32 511, i32* @maxcode, align 4, !dbg !407
  store i32 0, i32* @clear_flg, align 4, !dbg !408
  br label %if.end49, !dbg !409

if.else:                                          ; preds = %if.end39
  %48 = load i32, i32* @n_bits, align 4, !dbg !410
  %inc = add nsw i32 %48, 1, !dbg !410
  store i32 %inc, i32* @n_bits, align 4, !dbg !410
  %49 = load i32, i32* @n_bits, align 4, !dbg !411
  %50 = load i32, i32* @maxbits, align 4, !dbg !412
  %cmp42 = icmp eq i32 %49, %50, !dbg !413
  br i1 %cmp42, label %if.then44, label %if.else45, !dbg !411

if.then44:                                        ; preds = %if.else
  %51 = load i32, i32* @maxmaxcode, align 4, !dbg !414
  store i32 %51, i32* @maxcode, align 4, !dbg !415
  br label %if.end48, !dbg !416

if.else45:                                        ; preds = %if.else
  %52 = load i32, i32* @n_bits, align 4, !dbg !417
  %shl46 = shl i32 1, %52, !dbg !417
  %sub47 = sub nsw i32 %shl46, 1, !dbg !417
  store i32 %sub47, i32* @maxcode, align 4, !dbg !418
  br label %if.end48

if.end48:                                         ; preds = %if.else45, %if.then44
  br label %if.end49

if.end49:                                         ; preds = %if.end48, %if.then41
  br label %if.end50, !dbg !419

if.end50:                                         ; preds = %if.end49, %lor.lhs.false
  br label %if.end60, !dbg !420

if.else51:                                        ; preds = %entry
  %53 = load i32, i32* @offset, align 4, !dbg !421
  %cmp52 = icmp sgt i32 %53, 0, !dbg !422
  br i1 %cmp52, label %if.then54, label %if.end56, !dbg !421

if.then54:                                        ; preds = %if.else51
  %54 = load i32, i32* @offset, align 4, !dbg !423
  %add55 = add nsw i32 %54, 7, !dbg !424
  %div = sdiv i32 %add55, 8, !dbg !425
  call arm_aapcs_vfpcc void @writebytes(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @buf, i32 0, i32 0), i32 noundef %div) #1, !dbg !426
  br label %if.end56, !dbg !427

if.end56:                                         ; preds = %if.then54, %if.else51
  %55 = load i32, i32* @offset, align 4, !dbg !428
  %add57 = add nsw i32 %55, 7, !dbg !429
  %div58 = sdiv i32 %add57, 8, !dbg !430
  %56 = load i32, i32* @bytes_out, align 4, !dbg !431
  %add59 = add nsw i32 %56, %div58, !dbg !431
  store i32 %add59, i32* @bytes_out, align 4, !dbg !431
  store i32 0, i32* @offset, align 4, !dbg !432
  br label %if.end60

if.end60:                                         ; preds = %if.end56, %if.end50
  ret void, !dbg !433
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @putbyte(i8 noundef zeroext %c) #0 !dbg !434 {
entry:
  %c.addr = alloca i8, align 1
  store i8 %c, i8* %c.addr, align 1
  %0 = load i8, i8* %c.addr, align 1, !dbg !435
  %1 = load i8*, i8** @OutBuff, align 4, !dbg !436
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i32 1, !dbg !436
  store i8* %incdec.ptr, i8** @OutBuff, align 4, !dbg !436
  store i8 %0, i8* %1, align 1, !dbg !437
  ret void, !dbg !438
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @writebytes(i8* noundef %buf, i32 noundef %n) #0 !dbg !439 {
entry:
  %buf.addr = alloca i8*, align 4
  %n.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i8* %buf, i8** %buf.addr, align 4
  store i32 %n, i32* %n.addr, align 4
  store i32 0, i32* %i, align 4, !dbg !440
  br label %for.cond, !dbg !441

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !442
  %1 = load i32, i32* %n.addr, align 4, !dbg !443
  %cmp = icmp slt i32 %0, %1, !dbg !444
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !445

land.rhs:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4, !dbg !446
  %cmp1 = icmp slt i32 %2, 16, !dbg !447
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %3 = phi i1 [ false, %for.cond ], [ %cmp1, %land.rhs ], !dbg !448
  br i1 %3, label %for.body, label %for.end, !dbg !449

for.body:                                         ; preds = %land.end
  %4 = load i8*, i8** %buf.addr, align 4, !dbg !450
  %5 = load i32, i32* %i, align 4, !dbg !451
  %arrayidx = getelementptr inbounds i8, i8* %4, i32 %5, !dbg !450
  %6 = load i8, i8* %arrayidx, align 1, !dbg !450
  %7 = load i8*, i8** @OutBuff, align 4, !dbg !452
  %incdec.ptr = getelementptr inbounds i8, i8* %7, i32 1, !dbg !452
  store i8* %incdec.ptr, i8** @OutBuff, align 4, !dbg !452
  store i8 %6, i8* %7, align 1, !dbg !453
  br label %for.inc, !dbg !454

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !455
  %inc = add nsw i32 %8, 1, !dbg !455
  store i32 %inc, i32* %i, align 4, !dbg !455
  br label %for.cond, !dbg !449, !llvm.loop !456

for.end:                                          ; preds = %land.end
  ret void, !dbg !457
}

attributes #0 = { noinline nounwind "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #1 = { nobuiltin "no-builtins" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 14.0.6 (git@github.com:RTS-SYSU/LLVM-TA.git b7f9c4ccdebc6c37532ddd772889e5f0ff989c79)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/workspaces/llvmta/testcases/wcet_bench/compress.c", directory: "/workspaces/llvmta/testcases/util_scripts", checksumkind: CSK_MD5, checksum: "b38c0c57e13b74218abe76672d5e73a6")
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
!12 = distinct !DISubprogram(name: "cover_cover", scope: !13, file: !13, line: 193, type: !14, scopeLine: 193, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!13 = !DIFile(filename: "wcet_bench/compress.c", directory: "/workspaces/llvmta/testcases", checksumkind: CSK_MD5, checksum: "b38c0c57e13b74218abe76672d5e73a6")
!14 = !DISubroutineType(types: !15)
!15 = !{}
!16 = !DILocation(line: 194, column: 7, scope: !12)
!17 = !DILocation(line: 196, column: 3, scope: !12)
!18 = !DILocation(line: 202, column: 11, scope: !12)
!19 = !DILocation(line: 203, column: 21, scope: !12)
!20 = !DILocation(line: 203, column: 18, scope: !12)
!21 = !DILocation(line: 203, column: 14, scope: !12)
!22 = !DILocation(line: 205, column: 11, scope: !12)
!23 = !DILocation(line: 205, column: 9, scope: !12)
!24 = !DILocation(line: 206, column: 15, scope: !12)
!25 = !DILocation(line: 207, column: 10, scope: !12)
!26 = !DILocation(line: 208, column: 11, scope: !12)
!27 = !DILocation(line: 210, column: 3, scope: !12)
!28 = !DILocation(line: 212, column: 3, scope: !12)
!29 = distinct !DISubprogram(name: "initbuffer", scope: !13, file: !13, line: 215, type: !14, scopeLine: 215, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!30 = !DILocation(line: 216, column: 7, scope: !29)
!31 = !DILocation(line: 220, column: 10, scope: !29)
!32 = !DILocation(line: 220, column: 8, scope: !29)
!33 = !DILocation(line: 220, column: 15, scope: !29)
!34 = !DILocation(line: 220, column: 17, scope: !29)
!35 = !DILocation(line: 220, column: 3, scope: !29)
!36 = !DILocation(line: 222, column: 14, scope: !29)
!37 = !DILocation(line: 222, column: 12, scope: !29)
!38 = !DILocation(line: 223, column: 14, scope: !29)
!39 = !DILocation(line: 223, column: 19, scope: !29)
!40 = !DILocation(line: 223, column: 26, scope: !29)
!41 = !DILocation(line: 223, column: 32, scope: !29)
!42 = !DILocation(line: 223, column: 10, scope: !29)
!43 = !DILocation(line: 225, column: 27, scope: !29)
!44 = !DILocation(line: 225, column: 32, scope: !29)
!45 = !DILocation(line: 225, column: 22, scope: !29)
!46 = !DILocation(line: 225, column: 5, scope: !29)
!47 = !DILocation(line: 225, column: 25, scope: !29)
!48 = !DILocation(line: 226, column: 3, scope: !29)
!49 = !DILocation(line: 220, column: 32, scope: !29)
!50 = distinct !{!50, !35, !48, !51}
!51 = !{!"llvm.loop.mustprogress"}
!52 = !DILocation(line: 227, column: 1, scope: !29)
!53 = distinct !DISubprogram(name: "compress_compress", scope: !13, file: !13, line: 234, type: !14, scopeLine: 234, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!54 = !DILocation(line: 236, column: 21, scope: !53)
!55 = !DILocation(line: 243, column: 10, scope: !53)
!56 = !DILocation(line: 244, column: 13, scope: !53)
!57 = !DILocation(line: 245, column: 13, scope: !53)
!58 = !DILocation(line: 246, column: 13, scope: !53)
!59 = !DILocation(line: 247, column: 9, scope: !53)
!60 = !DILocation(line: 248, column: 12, scope: !53)
!61 = !DILocation(line: 249, column: 14, scope: !53)
!62 = !DILocation(line: 250, column: 13, scope: !53)
!63 = !DILocation(line: 250, column: 11, scope: !53)
!64 = !DILocation(line: 251, column: 16, scope: !53)
!65 = !DILocation(line: 251, column: 15, scope: !53)
!66 = !DILocation(line: 251, column: 12, scope: !53)
!67 = !DILocation(line: 253, column: 9, scope: !53)
!68 = !DILocation(line: 253, column: 7, scope: !53)
!69 = !DILocation(line: 255, column: 10, scope: !53)
!70 = !DILocation(line: 256, column: 22, scope: !53)
!71 = !DILocation(line: 256, column: 14, scope: !53)
!72 = !DILocation(line: 256, column: 8, scope: !53)
!73 = !DILocation(line: 256, column: 29, scope: !53)
!74 = !DILocation(line: 256, column: 35, scope: !53)
!75 = !DILocation(line: 256, column: 3, scope: !53)
!76 = !DILocation(line: 257, column: 11, scope: !53)
!77 = !DILocation(line: 258, column: 3, scope: !53)
!78 = !DILocation(line: 256, column: 51, scope: !53)
!79 = distinct !{!79, !75, !77, !51}
!80 = !DILocation(line: 260, column: 16, scope: !53)
!81 = !DILocation(line: 260, column: 14, scope: !53)
!82 = !DILocation(line: 260, column: 10, scope: !53)
!83 = !DILocation(line: 262, column: 15, scope: !53)
!84 = !DILocation(line: 262, column: 13, scope: !53)
!85 = !DILocation(line: 263, column: 22, scope: !53)
!86 = !DILocation(line: 263, column: 3, scope: !53)
!87 = !DILocation(line: 265, column: 3, scope: !53)
!88 = !DILocation(line: 265, column: 10, scope: !53)
!89 = !DILocation(line: 265, column: 16, scope: !53)
!90 = !DILocation(line: 267, column: 9, scope: !53)
!91 = !DILocation(line: 269, column: 9, scope: !53)
!92 = !DILocation(line: 269, column: 7, scope: !53)
!93 = !DILocation(line: 271, column: 13, scope: !53)
!94 = !DILocation(line: 272, column: 27, scope: !53)
!95 = !DILocation(line: 272, column: 32, scope: !53)
!96 = !DILocation(line: 272, column: 29, scope: !53)
!97 = !DILocation(line: 272, column: 43, scope: !53)
!98 = !DILocation(line: 272, column: 41, scope: !53)
!99 = !DILocation(line: 272, column: 11, scope: !53)
!100 = !DILocation(line: 273, column: 11, scope: !53)
!101 = !DILocation(line: 273, column: 16, scope: !53)
!102 = !DILocation(line: 273, column: 13, scope: !53)
!103 = !DILocation(line: 273, column: 26, scope: !53)
!104 = !DILocation(line: 273, column: 24, scope: !53)
!105 = !DILocation(line: 273, column: 7, scope: !53)
!106 = !DILocation(line: 275, column: 9, scope: !53)
!107 = !DILocation(line: 275, column: 22, scope: !53)
!108 = !DILocation(line: 275, column: 19, scope: !53)
!109 = !DILocation(line: 276, column: 13, scope: !53)
!110 = !DILocation(line: 276, column: 11, scope: !53)
!111 = !DILocation(line: 277, column: 7, scope: !53)
!112 = distinct !{!112, !87, !113, !51}
!113 = !DILocation(line: 310, column: 3, scope: !53)
!114 = !DILocation(line: 278, column: 22, scope: !53)
!115 = !DILocation(line: 278, column: 32, scope: !53)
!116 = !DILocation(line: 278, column: 16, scope: !53)
!117 = !DILocation(line: 279, column: 7, scope: !53)
!118 = !DILocation(line: 282, column: 12, scope: !53)
!119 = !DILocation(line: 282, column: 24, scope: !53)
!120 = !DILocation(line: 282, column: 22, scope: !53)
!121 = !DILocation(line: 282, column: 10, scope: !53)
!122 = !DILocation(line: 283, column: 9, scope: !53)
!123 = !DILocation(line: 283, column: 11, scope: !53)
!124 = !DILocation(line: 284, column: 12, scope: !53)
!125 = !DILocation(line: 285, column: 5, scope: !53)
!126 = !DILocation(line: 283, column: 14, scope: !53)
!127 = !DILocation(line: 289, column: 15, scope: !53)
!128 = !DILocation(line: 289, column: 12, scope: !53)
!129 = !DILocation(line: 289, column: 21, scope: !53)
!130 = !DILocation(line: 289, column: 9, scope: !53)
!131 = !DILocation(line: 290, column: 12, scope: !53)
!132 = !DILocation(line: 290, column: 9, scope: !53)
!133 = !DILocation(line: 291, column: 5, scope: !53)
!134 = !DILocation(line: 293, column: 9, scope: !53)
!135 = !DILocation(line: 293, column: 22, scope: !53)
!136 = !DILocation(line: 293, column: 19, scope: !53)
!137 = !DILocation(line: 294, column: 13, scope: !53)
!138 = !DILocation(line: 294, column: 11, scope: !53)
!139 = !DILocation(line: 295, column: 7, scope: !53)
!140 = !DILocation(line: 298, column: 15, scope: !53)
!141 = !DILocation(line: 298, column: 25, scope: !53)
!142 = !DILocation(line: 298, column: 29, scope: !53)
!143 = !DILocation(line: 298, column: 33, scope: !53)
!144 = !DILocation(line: 298, column: 52, scope: !53)
!145 = !DILocation(line: 298, column: 50, scope: !53)
!146 = !DILocation(line: 298, column: 9, scope: !53)
!147 = !DILocation(line: 299, column: 7, scope: !53)
!148 = !DILocation(line: 298, column: 60, scope: !53)
!149 = !DILocation(line: 302, column: 14, scope: !53)
!150 = !DILocation(line: 303, column: 11, scope: !53)
!151 = !DILocation(line: 303, column: 9, scope: !53)
!152 = !DILocation(line: 304, column: 9, scope: !53)
!153 = !DILocation(line: 304, column: 20, scope: !53)
!154 = !DILocation(line: 304, column: 18, scope: !53)
!155 = !DILocation(line: 305, column: 30, scope: !53)
!156 = !DILocation(line: 305, column: 22, scope: !53)
!157 = !DILocation(line: 305, column: 7, scope: !53)
!158 = !DILocation(line: 305, column: 20, scope: !53)
!159 = !DILocation(line: 306, column: 19, scope: !53)
!160 = !DILocation(line: 306, column: 7, scope: !53)
!161 = !DILocation(line: 306, column: 17, scope: !53)
!162 = !DILocation(line: 307, column: 5, scope: !53)
!163 = !DILocation(line: 307, column: 28, scope: !53)
!164 = !DILocation(line: 307, column: 40, scope: !53)
!165 = !DILocation(line: 307, column: 37, scope: !53)
!166 = !DILocation(line: 307, column: 52, scope: !53)
!167 = !DILocation(line: 307, column: 56, scope: !53)
!168 = !DILocation(line: 307, column: 55, scope: !53)
!169 = !DILocation(line: 307, column: 16, scope: !53)
!170 = !DILocation(line: 308, column: 7, scope: !53)
!171 = !DILocation(line: 309, column: 5, scope: !53)
!172 = !DILocation(line: 311, column: 7, scope: !53)
!173 = !DILocation(line: 311, column: 19, scope: !53)
!174 = !DILocation(line: 311, column: 17, scope: !53)
!175 = !DILocation(line: 312, column: 15, scope: !53)
!176 = !DILocation(line: 313, column: 3, scope: !53)
!177 = !DILocation(line: 314, column: 3, scope: !53)
!178 = distinct !DISubprogram(name: "getbyte", scope: !13, file: !13, line: 378, type: !14, scopeLine: 378, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!179 = !DILocation(line: 379, column: 7, scope: !178)
!180 = !DILocation(line: 379, column: 13, scope: !178)
!181 = !DILocation(line: 379, column: 17, scope: !178)
!182 = !DILocation(line: 379, column: 32, scope: !178)
!183 = !DILocation(line: 379, column: 35, scope: !178)
!184 = !DILocation(line: 380, column: 10, scope: !178)
!185 = !DILocation(line: 381, column: 34, scope: !178)
!186 = !DILocation(line: 381, column: 27, scope: !178)
!187 = !DILocation(line: 381, column: 13, scope: !178)
!188 = !DILocation(line: 381, column: 5, scope: !178)
!189 = !DILocation(line: 383, column: 5, scope: !178)
!190 = !DILocation(line: 385, column: 1, scope: !178)
!191 = distinct !DISubprogram(name: "cl_hash", scope: !13, file: !13, line: 346, type: !14, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!192 = !DILocation(line: 348, column: 39, scope: !191)
!193 = !DILocation(line: 348, column: 37, scope: !191)
!194 = !DILocation(line: 348, column: 23, scope: !191)
!195 = !DILocation(line: 350, column: 17, scope: !191)
!196 = !DILocation(line: 352, column: 7, scope: !191)
!197 = !DILocation(line: 352, column: 13, scope: !191)
!198 = !DILocation(line: 352, column: 5, scope: !191)
!199 = !DILocation(line: 353, column: 3, scope: !191)
!200 = !DILocation(line: 355, column: 22, scope: !191)
!201 = !DILocation(line: 355, column: 7, scope: !191)
!202 = !DILocation(line: 355, column: 14, scope: !191)
!203 = !DILocation(line: 355, column: 20, scope: !191)
!204 = !DILocation(line: 356, column: 22, scope: !191)
!205 = !DILocation(line: 356, column: 7, scope: !191)
!206 = !DILocation(line: 356, column: 14, scope: !191)
!207 = !DILocation(line: 356, column: 20, scope: !191)
!208 = !DILocation(line: 357, column: 22, scope: !191)
!209 = !DILocation(line: 357, column: 7, scope: !191)
!210 = !DILocation(line: 357, column: 14, scope: !191)
!211 = !DILocation(line: 357, column: 20, scope: !191)
!212 = !DILocation(line: 358, column: 22, scope: !191)
!213 = !DILocation(line: 358, column: 7, scope: !191)
!214 = !DILocation(line: 358, column: 14, scope: !191)
!215 = !DILocation(line: 358, column: 20, scope: !191)
!216 = !DILocation(line: 359, column: 22, scope: !191)
!217 = !DILocation(line: 359, column: 7, scope: !191)
!218 = !DILocation(line: 359, column: 14, scope: !191)
!219 = !DILocation(line: 359, column: 20, scope: !191)
!220 = !DILocation(line: 360, column: 22, scope: !191)
!221 = !DILocation(line: 360, column: 7, scope: !191)
!222 = !DILocation(line: 360, column: 14, scope: !191)
!223 = !DILocation(line: 360, column: 20, scope: !191)
!224 = !DILocation(line: 361, column: 22, scope: !191)
!225 = !DILocation(line: 361, column: 7, scope: !191)
!226 = !DILocation(line: 361, column: 14, scope: !191)
!227 = !DILocation(line: 361, column: 20, scope: !191)
!228 = !DILocation(line: 362, column: 21, scope: !191)
!229 = !DILocation(line: 362, column: 7, scope: !191)
!230 = !DILocation(line: 362, column: 14, scope: !191)
!231 = !DILocation(line: 362, column: 19, scope: !191)
!232 = !DILocation(line: 363, column: 21, scope: !191)
!233 = !DILocation(line: 363, column: 7, scope: !191)
!234 = !DILocation(line: 363, column: 14, scope: !191)
!235 = !DILocation(line: 363, column: 19, scope: !191)
!236 = !DILocation(line: 364, column: 21, scope: !191)
!237 = !DILocation(line: 364, column: 7, scope: !191)
!238 = !DILocation(line: 364, column: 14, scope: !191)
!239 = !DILocation(line: 364, column: 19, scope: !191)
!240 = !DILocation(line: 365, column: 21, scope: !191)
!241 = !DILocation(line: 365, column: 7, scope: !191)
!242 = !DILocation(line: 365, column: 14, scope: !191)
!243 = !DILocation(line: 365, column: 19, scope: !191)
!244 = !DILocation(line: 366, column: 21, scope: !191)
!245 = !DILocation(line: 366, column: 7, scope: !191)
!246 = !DILocation(line: 366, column: 14, scope: !191)
!247 = !DILocation(line: 366, column: 19, scope: !191)
!248 = !DILocation(line: 367, column: 21, scope: !191)
!249 = !DILocation(line: 367, column: 7, scope: !191)
!250 = !DILocation(line: 367, column: 14, scope: !191)
!251 = !DILocation(line: 367, column: 19, scope: !191)
!252 = !DILocation(line: 368, column: 21, scope: !191)
!253 = !DILocation(line: 368, column: 7, scope: !191)
!254 = !DILocation(line: 368, column: 14, scope: !191)
!255 = !DILocation(line: 368, column: 19, scope: !191)
!256 = !DILocation(line: 369, column: 21, scope: !191)
!257 = !DILocation(line: 369, column: 7, scope: !191)
!258 = !DILocation(line: 369, column: 14, scope: !191)
!259 = !DILocation(line: 369, column: 19, scope: !191)
!260 = !DILocation(line: 370, column: 21, scope: !191)
!261 = !DILocation(line: 370, column: 7, scope: !191)
!262 = !DILocation(line: 370, column: 14, scope: !191)
!263 = !DILocation(line: 370, column: 19, scope: !191)
!264 = !DILocation(line: 371, column: 12, scope: !191)
!265 = !DILocation(line: 372, column: 3, scope: !191)
!266 = !DILocation(line: 372, column: 15, scope: !191)
!267 = !DILocation(line: 372, column: 22, scope: !191)
!268 = distinct !{!268, !199, !269, !51}
!269 = !DILocation(line: 372, column: 26, scope: !191)
!270 = !DILocation(line: 373, column: 10, scope: !191)
!271 = !DILocation(line: 373, column: 8, scope: !191)
!272 = !DILocation(line: 373, column: 17, scope: !191)
!273 = !DILocation(line: 373, column: 19, scope: !191)
!274 = !DILocation(line: 373, column: 3, scope: !191)
!275 = !DILocation(line: 374, column: 17, scope: !191)
!276 = !DILocation(line: 374, column: 6, scope: !191)
!277 = !DILocation(line: 374, column: 15, scope: !191)
!278 = !DILocation(line: 375, column: 3, scope: !191)
!279 = !DILocation(line: 373, column: 25, scope: !191)
!280 = distinct !{!280, !274, !278, !51}
!281 = !DILocation(line: 376, column: 1, scope: !191)
!282 = distinct !DISubprogram(name: "cl_block", scope: !13, file: !13, line: 317, type: !14, scopeLine: 318, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!283 = !DILocation(line: 321, column: 16, scope: !282)
!284 = !DILocation(line: 321, column: 25, scope: !282)
!285 = !DILocation(line: 321, column: 14, scope: !282)
!286 = !DILocation(line: 323, column: 7, scope: !282)
!287 = !DILocation(line: 323, column: 16, scope: !282)
!288 = !DILocation(line: 325, column: 11, scope: !282)
!289 = !DILocation(line: 325, column: 21, scope: !282)
!290 = !DILocation(line: 325, column: 9, scope: !282)
!291 = !DILocation(line: 326, column: 9, scope: !282)
!292 = !DILocation(line: 326, column: 13, scope: !282)
!293 = !DILocation(line: 327, column: 11, scope: !282)
!294 = !DILocation(line: 328, column: 5, scope: !282)
!295 = !DILocation(line: 329, column: 13, scope: !282)
!296 = !DILocation(line: 329, column: 24, scope: !282)
!297 = !DILocation(line: 329, column: 22, scope: !282)
!298 = !DILocation(line: 329, column: 11, scope: !282)
!299 = !DILocation(line: 331, column: 3, scope: !282)
!300 = !DILocation(line: 332, column: 12, scope: !282)
!301 = !DILocation(line: 332, column: 21, scope: !282)
!302 = !DILocation(line: 332, column: 29, scope: !282)
!303 = !DILocation(line: 332, column: 27, scope: !282)
!304 = !DILocation(line: 332, column: 9, scope: !282)
!305 = !DILocation(line: 334, column: 7, scope: !282)
!306 = !DILocation(line: 334, column: 13, scope: !282)
!307 = !DILocation(line: 334, column: 11, scope: !282)
!308 = !DILocation(line: 335, column: 13, scope: !282)
!309 = !DILocation(line: 335, column: 11, scope: !282)
!310 = !DILocation(line: 336, column: 3, scope: !282)
!311 = !DILocation(line: 337, column: 11, scope: !282)
!312 = !DILocation(line: 338, column: 24, scope: !282)
!313 = !DILocation(line: 338, column: 5, scope: !282)
!314 = !DILocation(line: 340, column: 14, scope: !282)
!315 = !DILocation(line: 341, column: 15, scope: !282)
!316 = !DILocation(line: 342, column: 5, scope: !282)
!317 = !DILocation(line: 344, column: 1, scope: !282)
!318 = distinct !DISubprogram(name: "output", scope: !13, file: !13, line: 401, type: !14, scopeLine: 401, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!319 = !DILocation(line: 406, column: 24, scope: !318)
!320 = !DILocation(line: 406, column: 16, scope: !318)
!321 = !DILocation(line: 406, column: 39, scope: !318)
!322 = !DILocation(line: 406, column: 32, scope: !318)
!323 = !DILocation(line: 407, column: 18, scope: !318)
!324 = !DILocation(line: 409, column: 7, scope: !318)
!325 = !DILocation(line: 409, column: 12, scope: !318)
!326 = !DILocation(line: 416, column: 12, scope: !318)
!327 = !DILocation(line: 416, column: 18, scope: !318)
!328 = !DILocation(line: 416, column: 8, scope: !318)
!329 = !DILocation(line: 417, column: 11, scope: !318)
!330 = !DILocation(line: 422, column: 14, scope: !318)
!331 = !DILocation(line: 422, column: 13, scope: !318)
!332 = !DILocation(line: 422, column: 25, scope: !318)
!333 = !DILocation(line: 422, column: 19, scope: !318)
!334 = !DILocation(line: 422, column: 17, scope: !318)
!335 = !DILocation(line: 422, column: 36, scope: !318)
!336 = !DILocation(line: 422, column: 44, scope: !318)
!337 = !DILocation(line: 422, column: 41, scope: !318)
!338 = !DILocation(line: 422, column: 33, scope: !318)
!339 = !DILocation(line: 423, column: 17, scope: !318)
!340 = !DILocation(line: 423, column: 11, scope: !318)
!341 = !DILocation(line: 422, column: 52, scope: !318)
!342 = !DILocation(line: 422, column: 11, scope: !318)
!343 = !DILocation(line: 422, column: 6, scope: !318)
!344 = !DILocation(line: 422, column: 9, scope: !318)
!345 = !DILocation(line: 424, column: 7, scope: !318)
!346 = !DILocation(line: 425, column: 18, scope: !318)
!347 = !DILocation(line: 425, column: 16, scope: !318)
!348 = !DILocation(line: 425, column: 10, scope: !318)
!349 = !DILocation(line: 426, column: 18, scope: !318)
!350 = !DILocation(line: 426, column: 16, scope: !318)
!351 = !DILocation(line: 426, column: 10, scope: !318)
!352 = !DILocation(line: 428, column: 9, scope: !318)
!353 = !DILocation(line: 428, column: 14, scope: !318)
!354 = !DILocation(line: 430, column: 15, scope: !318)
!355 = !DILocation(line: 430, column: 10, scope: !318)
!356 = !DILocation(line: 430, column: 13, scope: !318)
!357 = !DILocation(line: 431, column: 12, scope: !318)
!358 = !DILocation(line: 432, column: 12, scope: !318)
!359 = !DILocation(line: 433, column: 5, scope: !318)
!360 = !DILocation(line: 436, column: 9, scope: !318)
!361 = !DILocation(line: 437, column: 13, scope: !318)
!362 = !DILocation(line: 437, column: 8, scope: !318)
!363 = !DILocation(line: 437, column: 11, scope: !318)
!364 = !DILocation(line: 438, column: 5, scope: !318)
!365 = !DILocation(line: 440, column: 15, scope: !318)
!366 = !DILocation(line: 440, column: 12, scope: !318)
!367 = !DILocation(line: 441, column: 9, scope: !318)
!368 = !DILocation(line: 441, column: 20, scope: !318)
!369 = !DILocation(line: 441, column: 27, scope: !318)
!370 = !DILocation(line: 441, column: 16, scope: !318)
!371 = !DILocation(line: 442, column: 10, scope: !318)
!372 = !DILocation(line: 443, column: 14, scope: !318)
!373 = !DILocation(line: 443, column: 12, scope: !318)
!374 = !DILocation(line: 444, column: 20, scope: !318)
!375 = !DILocation(line: 444, column: 17, scope: !318)
!376 = !DILocation(line: 445, column: 7, scope: !318)
!377 = !DILocation(line: 446, column: 20, scope: !318)
!378 = !DILocation(line: 446, column: 17, scope: !318)
!379 = !DILocation(line: 446, column: 9, scope: !318)
!380 = !DILocation(line: 447, column: 7, scope: !318)
!381 = !DILocation(line: 447, column: 17, scope: !318)
!382 = !DILocation(line: 447, column: 25, scope: !318)
!383 = !DILocation(line: 447, column: 30, scope: !318)
!384 = !DILocation(line: 447, column: 33, scope: !318)
!385 = !DILocation(line: 447, column: 39, scope: !318)
!386 = !DILocation(line: 0, scope: !318)
!387 = distinct !{!387, !376, !388, !51}
!388 = !DILocation(line: 447, column: 47, scope: !318)
!389 = !DILocation(line: 448, column: 14, scope: !318)
!390 = !DILocation(line: 449, column: 5, scope: !318)
!391 = !DILocation(line: 454, column: 9, scope: !318)
!392 = !DILocation(line: 454, column: 20, scope: !318)
!393 = !DILocation(line: 454, column: 18, scope: !318)
!394 = !DILocation(line: 454, column: 28, scope: !318)
!395 = !DILocation(line: 454, column: 33, scope: !318)
!396 = !DILocation(line: 454, column: 43, scope: !318)
!397 = !DILocation(line: 459, column: 11, scope: !318)
!398 = !DILocation(line: 459, column: 18, scope: !318)
!399 = !DILocation(line: 460, column: 25, scope: !318)
!400 = !DILocation(line: 460, column: 9, scope: !318)
!401 = !DILocation(line: 461, column: 22, scope: !318)
!402 = !DILocation(line: 461, column: 19, scope: !318)
!403 = !DILocation(line: 462, column: 7, scope: !318)
!404 = !DILocation(line: 463, column: 14, scope: !318)
!405 = !DILocation(line: 464, column: 11, scope: !318)
!406 = !DILocation(line: 465, column: 19, scope: !318)
!407 = !DILocation(line: 465, column: 17, scope: !318)
!408 = !DILocation(line: 466, column: 19, scope: !318)
!409 = !DILocation(line: 467, column: 7, scope: !318)
!410 = !DILocation(line: 468, column: 15, scope: !318)
!411 = !DILocation(line: 469, column: 13, scope: !318)
!412 = !DILocation(line: 469, column: 23, scope: !318)
!413 = !DILocation(line: 469, column: 20, scope: !318)
!414 = !DILocation(line: 470, column: 21, scope: !318)
!415 = !DILocation(line: 470, column: 19, scope: !318)
!416 = !DILocation(line: 471, column: 9, scope: !318)
!417 = !DILocation(line: 472, column: 21, scope: !318)
!418 = !DILocation(line: 472, column: 19, scope: !318)
!419 = !DILocation(line: 475, column: 5, scope: !318)
!420 = !DILocation(line: 476, column: 3, scope: !318)
!421 = !DILocation(line: 480, column: 9, scope: !318)
!422 = !DILocation(line: 480, column: 16, scope: !318)
!423 = !DILocation(line: 481, column: 25, scope: !318)
!424 = !DILocation(line: 481, column: 32, scope: !318)
!425 = !DILocation(line: 481, column: 37, scope: !318)
!426 = !DILocation(line: 481, column: 7, scope: !318)
!427 = !DILocation(line: 482, column: 5, scope: !318)
!428 = !DILocation(line: 483, column: 19, scope: !318)
!429 = !DILocation(line: 483, column: 26, scope: !318)
!430 = !DILocation(line: 483, column: 31, scope: !318)
!431 = !DILocation(line: 483, column: 15, scope: !318)
!432 = !DILocation(line: 484, column: 12, scope: !318)
!433 = !DILocation(line: 486, column: 1, scope: !318)
!434 = distinct !DISubprogram(name: "putbyte", scope: !13, file: !13, line: 387, type: !14, scopeLine: 387, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!435 = !DILocation(line: 387, column: 37, scope: !434)
!436 = !DILocation(line: 387, column: 32, scope: !434)
!437 = !DILocation(line: 387, column: 35, scope: !434)
!438 = !DILocation(line: 387, column: 77, scope: !434)
!439 = distinct !DISubprogram(name: "writebytes", scope: !13, file: !13, line: 389, type: !14, scopeLine: 389, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!440 = !DILocation(line: 391, column: 10, scope: !439)
!441 = !DILocation(line: 391, column: 8, scope: !439)
!442 = !DILocation(line: 391, column: 16, scope: !439)
!443 = !DILocation(line: 391, column: 20, scope: !439)
!444 = !DILocation(line: 391, column: 18, scope: !439)
!445 = !DILocation(line: 391, column: 23, scope: !439)
!446 = !DILocation(line: 391, column: 37, scope: !439)
!447 = !DILocation(line: 391, column: 39, scope: !439)
!448 = !DILocation(line: 0, scope: !439)
!449 = !DILocation(line: 391, column: 3, scope: !439)
!450 = !DILocation(line: 392, column: 18, scope: !439)
!451 = !DILocation(line: 392, column: 22, scope: !439)
!452 = !DILocation(line: 392, column: 13, scope: !439)
!453 = !DILocation(line: 392, column: 16, scope: !439)
!454 = !DILocation(line: 393, column: 3, scope: !439)
!455 = !DILocation(line: 391, column: 49, scope: !439)
!456 = distinct !{!456, !449, !454, !51}
!457 = !DILocation(line: 394, column: 1, scope: !439)
