; ModuleID = '/workspaces/llvmta/testcases/wcet_bench/crc.c'
source_filename = "/workspaces/llvmta/testcases/wcet_bench/crc.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv4t-unknown-unknown"

@lin = dso_local global [256 x i8] c"asdffeagewaHAFEFaeDsFEawFdsFaefaeerdjgp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 1
@icrc.icrctb = internal global [256 x i16] zeroinitializer, align 2
@icrc.init = internal global i16 0, align 2
@icrc.rchr = internal global [256 x i8] zeroinitializer, align 1
@icrc.it = internal global [16 x i8] c"\00\08\04\0C\02\0A\06\0E\01\09\05\0D\03\0B\07\0F", align 1

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc zeroext i16 @icrc1(i16 noundef zeroext %crc, i8 noundef zeroext %onech) #0 !dbg !12 {
entry:
  %crc.addr = alloca i16, align 2
  %onech.addr = alloca i8, align 1
  %i = alloca i32, align 4
  %ans = alloca i16, align 2
  store i16 %crc, i16* %crc.addr, align 2
  store i8 %onech, i8* %onech.addr, align 1
  %0 = load i16, i16* %crc.addr, align 2, !dbg !16
  %conv = zext i16 %0 to i32, !dbg !16
  %1 = load i8, i8* %onech.addr, align 1, !dbg !17
  %conv1 = zext i8 %1 to i32, !dbg !17
  %shl = shl i32 %conv1, 8, !dbg !18
  %xor = xor i32 %conv, %shl, !dbg !19
  %conv2 = trunc i32 %xor to i16, !dbg !20
  store i16 %conv2, i16* %ans, align 2, !dbg !21
  store i32 0, i32* %i, align 4, !dbg !22
  br label %for.cond, !dbg !23

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4, !dbg !24
  %cmp = icmp slt i32 %2, 8, !dbg !25
  br i1 %cmp, label %for.body, label %for.end, !dbg !26

for.body:                                         ; preds = %for.cond
  %3 = load i16, i16* %ans, align 2, !dbg !27
  %conv4 = zext i16 %3 to i32, !dbg !27
  %and = and i32 %conv4, 32768, !dbg !28
  %tobool = icmp ne i32 %and, 0, !dbg !28
  br i1 %tobool, label %if.then, label %if.else, !dbg !27

if.then:                                          ; preds = %for.body
  %4 = load i16, i16* %ans, align 2, !dbg !29
  %conv5 = zext i16 %4 to i32, !dbg !29
  %shl6 = shl i32 %conv5, 1, !dbg !29
  %conv7 = trunc i32 %shl6 to i16, !dbg !29
  store i16 %conv7, i16* %ans, align 2, !dbg !29
  %conv8 = zext i16 %conv7 to i32, !dbg !30
  %xor9 = xor i32 %conv8, 4129, !dbg !31
  %conv10 = trunc i32 %xor9 to i16, !dbg !30
  store i16 %conv10, i16* %ans, align 2, !dbg !32
  br label %if.end, !dbg !33

if.else:                                          ; preds = %for.body
  %5 = load i16, i16* %ans, align 2, !dbg !34
  %conv11 = zext i16 %5 to i32, !dbg !34
  %shl12 = shl i32 %conv11, 1, !dbg !34
  %conv13 = trunc i32 %shl12 to i16, !dbg !34
  store i16 %conv13, i16* %ans, align 2, !dbg !34
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc, !dbg !35

for.inc:                                          ; preds = %if.end
  %6 = load i32, i32* %i, align 4, !dbg !36
  %inc = add nsw i32 %6, 1, !dbg !36
  store i32 %inc, i32* %i, align 4, !dbg !36
  br label %for.cond, !dbg !26, !llvm.loop !37

for.end:                                          ; preds = %for.cond
  %7 = load i16, i16* %ans, align 2, !dbg !39
  ret i16 %7, !dbg !40
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc zeroext i16 @icrc(i16 noundef zeroext %crc, i32 noundef %len, i16 noundef signext %jinit, i32 noundef %jrev) #0 !dbg !41 {
entry:
  %crc.addr = alloca i16, align 2
  %len.addr = alloca i32, align 4
  %jinit.addr = alloca i16, align 2
  %jrev.addr = alloca i32, align 4
  %tmp1 = alloca i16, align 2
  %tmp2 = alloca i16, align 2
  %j = alloca i16, align 2
  %cword = alloca i16, align 2
  store i16 %crc, i16* %crc.addr, align 2
  store i32 %len, i32* %len.addr, align 4
  store i16 %jinit, i16* %jinit.addr, align 2
  store i32 %jrev, i32* %jrev.addr, align 4
  %0 = load i16, i16* %crc.addr, align 2, !dbg !42
  store i16 %0, i16* %cword, align 2, !dbg !43
  %1 = load i16, i16* @icrc.init, align 2, !dbg !44
  %tobool = icmp ne i16 %1, 0, !dbg !44
  br i1 %tobool, label %if.end, label %if.then, !dbg !45

if.then:                                          ; preds = %entry
  store i16 1, i16* @icrc.init, align 2, !dbg !46
  store i16 0, i16* %j, align 2, !dbg !47
  br label %for.cond, !dbg !48

for.cond:                                         ; preds = %for.inc, %if.then
  %2 = load i16, i16* %j, align 2, !dbg !49
  %conv = zext i16 %2 to i32, !dbg !49
  %cmp = icmp sle i32 %conv, 255, !dbg !50
  br i1 %cmp, label %for.body, label %for.end, !dbg !51

for.body:                                         ; preds = %for.cond
  %3 = load i16, i16* %j, align 2, !dbg !52
  %conv2 = zext i16 %3 to i32, !dbg !52
  %shl = shl i32 %conv2, 8, !dbg !53
  %conv3 = trunc i32 %shl to i16, !dbg !52
  %call = call arm_aapcs_vfpcc zeroext i16 @icrc1(i16 noundef zeroext %conv3, i8 noundef zeroext 0) #1, !dbg !54
  %4 = load i16, i16* %j, align 2, !dbg !55
  %idxprom = zext i16 %4 to i32, !dbg !56
  %arrayidx = getelementptr inbounds [256 x i16], [256 x i16]* @icrc.icrctb, i32 0, i32 %idxprom, !dbg !56
  store i16 %call, i16* %arrayidx, align 2, !dbg !57
  %5 = load i16, i16* %j, align 2, !dbg !58
  %conv4 = zext i16 %5 to i32, !dbg !58
  %and = and i32 %conv4, 15, !dbg !59
  %arrayidx5 = getelementptr inbounds [16 x i8], [16 x i8]* @icrc.it, i32 0, i32 %and, !dbg !60
  %6 = load i8, i8* %arrayidx5, align 1, !dbg !60
  %conv6 = zext i8 %6 to i32, !dbg !60
  %shl7 = shl i32 %conv6, 4, !dbg !61
  %7 = load i16, i16* %j, align 2, !dbg !62
  %conv8 = zext i16 %7 to i32, !dbg !62
  %shr = ashr i32 %conv8, 4, !dbg !63
  %arrayidx9 = getelementptr inbounds [16 x i8], [16 x i8]* @icrc.it, i32 0, i32 %shr, !dbg !64
  %8 = load i8, i8* %arrayidx9, align 1, !dbg !64
  %conv10 = zext i8 %8 to i32, !dbg !64
  %or = or i32 %shl7, %conv10, !dbg !65
  %conv11 = trunc i32 %or to i8, !dbg !66
  %9 = load i16, i16* %j, align 2, !dbg !67
  %idxprom12 = zext i16 %9 to i32, !dbg !68
  %arrayidx13 = getelementptr inbounds [256 x i8], [256 x i8]* @icrc.rchr, i32 0, i32 %idxprom12, !dbg !68
  store i8 %conv11, i8* %arrayidx13, align 1, !dbg !69
  br label %for.inc, !dbg !70

for.inc:                                          ; preds = %for.body
  %10 = load i16, i16* %j, align 2, !dbg !71
  %inc = add i16 %10, 1, !dbg !71
  store i16 %inc, i16* %j, align 2, !dbg !71
  br label %for.cond, !dbg !51, !llvm.loop !72

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !73

if.end:                                           ; preds = %for.end, %entry
  %11 = load i16, i16* %jinit.addr, align 2, !dbg !74
  %conv14 = sext i16 %11 to i32, !dbg !74
  %cmp15 = icmp sge i32 %conv14, 0, !dbg !75
  br i1 %cmp15, label %if.then17, label %if.else, !dbg !74

if.then17:                                        ; preds = %if.end
  %12 = load i16, i16* %jinit.addr, align 2, !dbg !76
  %conv18 = trunc i16 %12 to i8, !dbg !77
  %conv19 = zext i8 %conv18 to i32, !dbg !78
  %13 = load i16, i16* %jinit.addr, align 2, !dbg !79
  %conv20 = trunc i16 %13 to i8, !dbg !80
  %conv21 = zext i8 %conv20 to i32, !dbg !81
  %shl22 = shl i32 %conv21, 8, !dbg !82
  %or23 = or i32 %conv19, %shl22, !dbg !83
  %conv24 = trunc i32 %or23 to i16, !dbg !78
  store i16 %conv24, i16* %cword, align 2, !dbg !84
  br label %if.end44, !dbg !85

if.else:                                          ; preds = %if.end
  %14 = load i32, i32* %jrev.addr, align 4, !dbg !86
  %cmp25 = icmp slt i32 %14, 0, !dbg !87
  br i1 %cmp25, label %if.then27, label %if.end43, !dbg !86

if.then27:                                        ; preds = %if.else
  %15 = load i16, i16* %cword, align 2, !dbg !88
  %conv28 = zext i16 %15 to i32, !dbg !88
  %shr29 = ashr i32 %conv28, 8, !dbg !88
  %conv30 = trunc i32 %shr29 to i8, !dbg !88
  %idxprom31 = zext i8 %conv30 to i32, !dbg !89
  %arrayidx32 = getelementptr inbounds [256 x i8], [256 x i8]* @icrc.rchr, i32 0, i32 %idxprom31, !dbg !89
  %16 = load i8, i8* %arrayidx32, align 1, !dbg !89
  %conv33 = zext i8 %16 to i32, !dbg !89
  %17 = load i16, i16* %cword, align 2, !dbg !90
  %conv34 = zext i16 %17 to i32, !dbg !90
  %and35 = and i32 %conv34, 255, !dbg !90
  %conv36 = trunc i32 %and35 to i8, !dbg !90
  %idxprom37 = zext i8 %conv36 to i32, !dbg !91
  %arrayidx38 = getelementptr inbounds [256 x i8], [256 x i8]* @icrc.rchr, i32 0, i32 %idxprom37, !dbg !91
  %18 = load i8, i8* %arrayidx38, align 1, !dbg !91
  %conv39 = zext i8 %18 to i32, !dbg !91
  %shl40 = shl i32 %conv39, 8, !dbg !92
  %or41 = or i32 %conv33, %shl40, !dbg !93
  %conv42 = trunc i32 %or41 to i16, !dbg !89
  store i16 %conv42, i16* %cword, align 2, !dbg !94
  br label %if.end43, !dbg !95

if.end43:                                         ; preds = %if.then27, %if.else
  br label %if.end44

if.end44:                                         ; preds = %if.end43, %if.then17
  store i16 1, i16* %j, align 2, !dbg !96
  br label %for.cond45, !dbg !97

for.cond45:                                       ; preds = %for.inc84, %if.end44
  %19 = load i16, i16* %j, align 2, !dbg !98
  %conv46 = zext i16 %19 to i32, !dbg !98
  %20 = load i32, i32* %len.addr, align 4, !dbg !99
  %cmp47 = icmp ule i32 %conv46, %20, !dbg !100
  br i1 %cmp47, label %for.body49, label %for.end86, !dbg !101

for.body49:                                       ; preds = %for.cond45
  %21 = load i32, i32* %jrev.addr, align 4, !dbg !102
  %cmp50 = icmp slt i32 %21, 0, !dbg !103
  br i1 %cmp50, label %if.then52, label %if.else63, !dbg !102

if.then52:                                        ; preds = %for.body49
  %22 = load i16, i16* %j, align 2, !dbg !104
  %idxprom53 = zext i16 %22 to i32, !dbg !105
  %arrayidx54 = getelementptr inbounds [256 x i8], [256 x i8]* @lin, i32 0, i32 %idxprom53, !dbg !105
  %23 = load i8, i8* %arrayidx54, align 1, !dbg !105
  %idxprom55 = zext i8 %23 to i32, !dbg !106
  %arrayidx56 = getelementptr inbounds [256 x i8], [256 x i8]* @icrc.rchr, i32 0, i32 %idxprom55, !dbg !106
  %24 = load i8, i8* %arrayidx56, align 1, !dbg !106
  %conv57 = zext i8 %24 to i32, !dbg !106
  %25 = load i16, i16* %cword, align 2, !dbg !107
  %conv58 = zext i16 %25 to i32, !dbg !107
  %shr59 = ashr i32 %conv58, 8, !dbg !107
  %conv60 = trunc i32 %shr59 to i8, !dbg !107
  %conv61 = zext i8 %conv60 to i32, !dbg !107
  %xor = xor i32 %conv57, %conv61, !dbg !108
  %conv62 = trunc i32 %xor to i16, !dbg !106
  store i16 %conv62, i16* %tmp1, align 2, !dbg !109
  br label %if.end73, !dbg !110

if.else63:                                        ; preds = %for.body49
  %26 = load i16, i16* %j, align 2, !dbg !111
  %idxprom64 = zext i16 %26 to i32, !dbg !112
  %arrayidx65 = getelementptr inbounds [256 x i8], [256 x i8]* @lin, i32 0, i32 %idxprom64, !dbg !112
  %27 = load i8, i8* %arrayidx65, align 1, !dbg !112
  %conv66 = zext i8 %27 to i32, !dbg !112
  %28 = load i16, i16* %cword, align 2, !dbg !113
  %conv67 = zext i16 %28 to i32, !dbg !113
  %shr68 = ashr i32 %conv67, 8, !dbg !113
  %conv69 = trunc i32 %shr68 to i8, !dbg !113
  %conv70 = zext i8 %conv69 to i32, !dbg !113
  %xor71 = xor i32 %conv66, %conv70, !dbg !114
  %conv72 = trunc i32 %xor71 to i16, !dbg !112
  store i16 %conv72, i16* %tmp1, align 2, !dbg !115
  br label %if.end73

if.end73:                                         ; preds = %if.else63, %if.then52
  %29 = load i16, i16* %tmp1, align 2, !dbg !116
  %idxprom74 = zext i16 %29 to i32, !dbg !117
  %arrayidx75 = getelementptr inbounds [256 x i16], [256 x i16]* @icrc.icrctb, i32 0, i32 %idxprom74, !dbg !117
  %30 = load i16, i16* %arrayidx75, align 2, !dbg !117
  %conv76 = zext i16 %30 to i32, !dbg !117
  %31 = load i16, i16* %cword, align 2, !dbg !118
  %conv77 = zext i16 %31 to i32, !dbg !118
  %and78 = and i32 %conv77, 255, !dbg !118
  %conv79 = trunc i32 %and78 to i8, !dbg !118
  %conv80 = zext i8 %conv79 to i32, !dbg !118
  %shl81 = shl i32 %conv80, 8, !dbg !119
  %xor82 = xor i32 %conv76, %shl81, !dbg !120
  %conv83 = trunc i32 %xor82 to i16, !dbg !117
  store i16 %conv83, i16* %cword, align 2, !dbg !121
  br label %for.inc84, !dbg !122

for.inc84:                                        ; preds = %if.end73
  %32 = load i16, i16* %j, align 2, !dbg !123
  %inc85 = add i16 %32, 1, !dbg !123
  store i16 %inc85, i16* %j, align 2, !dbg !123
  br label %for.cond45, !dbg !101, !llvm.loop !124

for.end86:                                        ; preds = %for.cond45
  %33 = load i32, i32* %jrev.addr, align 4, !dbg !125
  %cmp87 = icmp sge i32 %33, 0, !dbg !126
  br i1 %cmp87, label %if.then89, label %if.else90, !dbg !125

if.then89:                                        ; preds = %for.end86
  %34 = load i16, i16* %cword, align 2, !dbg !127
  store i16 %34, i16* %tmp2, align 2, !dbg !128
  br label %if.end106, !dbg !129

if.else90:                                        ; preds = %for.end86
  %35 = load i16, i16* %cword, align 2, !dbg !130
  %conv91 = zext i16 %35 to i32, !dbg !130
  %shr92 = ashr i32 %conv91, 8, !dbg !130
  %conv93 = trunc i32 %shr92 to i8, !dbg !130
  %idxprom94 = zext i8 %conv93 to i32, !dbg !131
  %arrayidx95 = getelementptr inbounds [256 x i8], [256 x i8]* @icrc.rchr, i32 0, i32 %idxprom94, !dbg !131
  %36 = load i8, i8* %arrayidx95, align 1, !dbg !131
  %conv96 = zext i8 %36 to i32, !dbg !131
  %37 = load i16, i16* %cword, align 2, !dbg !132
  %conv97 = zext i16 %37 to i32, !dbg !132
  %and98 = and i32 %conv97, 255, !dbg !132
  %conv99 = trunc i32 %and98 to i8, !dbg !132
  %idxprom100 = zext i8 %conv99 to i32, !dbg !133
  %arrayidx101 = getelementptr inbounds [256 x i8], [256 x i8]* @icrc.rchr, i32 0, i32 %idxprom100, !dbg !133
  %38 = load i8, i8* %arrayidx101, align 1, !dbg !133
  %conv102 = zext i8 %38 to i32, !dbg !133
  %shl103 = shl i32 %conv102, 8, !dbg !134
  %or104 = or i32 %conv96, %shl103, !dbg !135
  %conv105 = trunc i32 %or104 to i16, !dbg !131
  store i16 %conv105, i16* %tmp2, align 2, !dbg !136
  br label %if.end106

if.end106:                                        ; preds = %if.else90, %if.then89
  %39 = load i16, i16* %tmp2, align 2, !dbg !137
  ret i16 %39, !dbg !138
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @crc() #0 !dbg !139 {
entry:
  %i1 = alloca i16, align 2
  %i2 = alloca i16, align 2
  %n = alloca i32, align 4
  store i32 40, i32* %n, align 4, !dbg !140
  %0 = load i32, i32* %n, align 4, !dbg !141
  %add = add i32 %0, 1, !dbg !142
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* @lin, i32 0, i32 %add, !dbg !143
  store i8 0, i8* %arrayidx, align 1, !dbg !144
  %1 = load i32, i32* %n, align 4, !dbg !145
  %call = call arm_aapcs_vfpcc zeroext i16 @icrc(i16 noundef zeroext 0, i32 noundef %1, i16 noundef signext 0, i32 noundef 1) #1, !dbg !146
  store i16 %call, i16* %i1, align 2, !dbg !147
  %2 = load i16, i16* %i1, align 2, !dbg !148
  %conv = zext i16 %2 to i32, !dbg !148
  %shr = ashr i32 %conv, 8, !dbg !148
  %conv1 = trunc i32 %shr to i8, !dbg !148
  %3 = load i32, i32* %n, align 4, !dbg !149
  %add2 = add i32 %3, 1, !dbg !150
  %arrayidx3 = getelementptr inbounds [256 x i8], [256 x i8]* @lin, i32 0, i32 %add2, !dbg !151
  store i8 %conv1, i8* %arrayidx3, align 1, !dbg !152
  %4 = load i16, i16* %i1, align 2, !dbg !153
  %conv4 = zext i16 %4 to i32, !dbg !153
  %and = and i32 %conv4, 255, !dbg !153
  %conv5 = trunc i32 %and to i8, !dbg !153
  %5 = load i32, i32* %n, align 4, !dbg !154
  %add6 = add i32 %5, 2, !dbg !155
  %arrayidx7 = getelementptr inbounds [256 x i8], [256 x i8]* @lin, i32 0, i32 %add6, !dbg !156
  store i8 %conv5, i8* %arrayidx7, align 1, !dbg !157
  %6 = load i16, i16* %i1, align 2, !dbg !158
  %7 = load i32, i32* %n, align 4, !dbg !159
  %add8 = add i32 %7, 2, !dbg !160
  %call9 = call arm_aapcs_vfpcc zeroext i16 @icrc(i16 noundef zeroext %6, i32 noundef %add8, i16 noundef signext 0, i32 noundef 1) #1, !dbg !161
  store i16 %call9, i16* %i2, align 2, !dbg !162
  ret i32 0, !dbg !163
}

attributes #0 = { noinline nounwind "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #1 = { nobuiltin "no-builtins" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 14.0.6 (git@github.com:RTS-SYSU/LLVM-TA.git b7f9c4ccdebc6c37532ddd772889e5f0ff989c79)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/workspaces/llvmta/testcases/wcet_bench/crc.c", directory: "/workspaces/llvmta/testcases/util_scripts", checksumkind: CSK_MD5, checksum: "81914fd9a6e58bd16dffffd8d82cb702")
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
!12 = distinct !DISubprogram(name: "icrc1", scope: !13, file: !13, line: 57, type: !14, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!13 = !DIFile(filename: "wcet_bench/crc.c", directory: "/workspaces/llvmta/testcases", checksumkind: CSK_MD5, checksum: "81914fd9a6e58bd16dffffd8d82cb702")
!14 = !DISubroutineType(types: !15)
!15 = !{}
!16 = !DILocation(line: 60, column: 22, scope: !12)
!17 = !DILocation(line: 60, column: 26, scope: !12)
!18 = !DILocation(line: 60, column: 32, scope: !12)
!19 = !DILocation(line: 60, column: 25, scope: !12)
!20 = !DILocation(line: 60, column: 21, scope: !12)
!21 = !DILocation(line: 60, column: 17, scope: !12)
!22 = !DILocation(line: 62, column: 8, scope: !12)
!23 = !DILocation(line: 62, column: 7, scope: !12)
!24 = !DILocation(line: 62, column: 11, scope: !12)
!25 = !DILocation(line: 62, column: 12, scope: !12)
!26 = !DILocation(line: 62, column: 2, scope: !12)
!27 = !DILocation(line: 63, column: 7, scope: !12)
!28 = !DILocation(line: 63, column: 11, scope: !12)
!29 = !DILocation(line: 64, column: 15, scope: !12)
!30 = !DILocation(line: 64, column: 10, scope: !12)
!31 = !DILocation(line: 64, column: 22, scope: !12)
!32 = !DILocation(line: 64, column: 8, scope: !12)
!33 = !DILocation(line: 64, column: 4, scope: !12)
!34 = !DILocation(line: 66, column: 8, scope: !12)
!35 = !DILocation(line: 67, column: 2, scope: !12)
!36 = !DILocation(line: 62, column: 16, scope: !12)
!37 = distinct !{!37, !26, !35, !38}
!38 = !{!"llvm.loop.mustprogress"}
!39 = !DILocation(line: 68, column: 9, scope: !12)
!40 = !DILocation(line: 68, column: 2, scope: !12)
!41 = distinct !DISubprogram(name: "icrc", scope: !13, file: !13, line: 71, type: !14, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!42 = !DILocation(line: 77, column: 38, scope: !41)
!43 = !DILocation(line: 77, column: 32, scope: !41)
!44 = !DILocation(line: 80, column: 8, scope: !41)
!45 = !DILocation(line: 80, column: 7, scope: !41)
!46 = !DILocation(line: 81, column: 9, scope: !41)
!47 = !DILocation(line: 82, column: 11, scope: !41)
!48 = !DILocation(line: 82, column: 10, scope: !41)
!49 = !DILocation(line: 82, column: 14, scope: !41)
!50 = !DILocation(line: 82, column: 15, scope: !41)
!51 = !DILocation(line: 82, column: 5, scope: !41)
!52 = !DILocation(line: 83, column: 23, scope: !41)
!53 = !DILocation(line: 83, column: 25, scope: !41)
!54 = !DILocation(line: 83, column: 17, scope: !41)
!55 = !DILocation(line: 83, column: 14, scope: !41)
!56 = !DILocation(line: 83, column: 7, scope: !41)
!57 = !DILocation(line: 83, column: 16, scope: !41)
!58 = !DILocation(line: 84, column: 26, scope: !41)
!59 = !DILocation(line: 84, column: 28, scope: !41)
!60 = !DILocation(line: 84, column: 23, scope: !41)
!61 = !DILocation(line: 84, column: 35, scope: !41)
!62 = !DILocation(line: 84, column: 45, scope: !41)
!63 = !DILocation(line: 84, column: 47, scope: !41)
!64 = !DILocation(line: 84, column: 42, scope: !41)
!65 = !DILocation(line: 84, column: 40, scope: !41)
!66 = !DILocation(line: 84, column: 15, scope: !41)
!67 = !DILocation(line: 84, column: 12, scope: !41)
!68 = !DILocation(line: 84, column: 7, scope: !41)
!69 = !DILocation(line: 84, column: 14, scope: !41)
!70 = !DILocation(line: 85, column: 5, scope: !41)
!71 = !DILocation(line: 82, column: 22, scope: !41)
!72 = distinct !{!72, !51, !70, !38}
!73 = !DILocation(line: 86, column: 3, scope: !41)
!74 = !DILocation(line: 87, column: 7, scope: !41)
!75 = !DILocation(line: 87, column: 13, scope: !41)
!76 = !DILocation(line: 87, column: 34, scope: !41)
!77 = !DILocation(line: 87, column: 26, scope: !41)
!78 = !DILocation(line: 87, column: 25, scope: !41)
!79 = !DILocation(line: 87, column: 53, scope: !41)
!80 = !DILocation(line: 87, column: 45, scope: !41)
!81 = !DILocation(line: 87, column: 44, scope: !41)
!82 = !DILocation(line: 87, column: 60, scope: !41)
!83 = !DILocation(line: 87, column: 41, scope: !41)
!84 = !DILocation(line: 87, column: 24, scope: !41)
!85 = !DILocation(line: 87, column: 19, scope: !41)
!86 = !DILocation(line: 88, column: 12, scope: !41)
!87 = !DILocation(line: 88, column: 17, scope: !41)
!88 = !DILocation(line: 89, column: 16, scope: !41)
!89 = !DILocation(line: 89, column: 11, scope: !41)
!90 = !DILocation(line: 89, column: 38, scope: !41)
!91 = !DILocation(line: 89, column: 33, scope: !41)
!92 = !DILocation(line: 89, column: 53, scope: !41)
!93 = !DILocation(line: 89, column: 31, scope: !41)
!94 = !DILocation(line: 89, column: 10, scope: !41)
!95 = !DILocation(line: 89, column: 5, scope: !41)
!96 = !DILocation(line: 93, column: 9, scope: !41)
!97 = !DILocation(line: 93, column: 8, scope: !41)
!98 = !DILocation(line: 93, column: 12, scope: !41)
!99 = !DILocation(line: 93, column: 15, scope: !41)
!100 = !DILocation(line: 93, column: 13, scope: !41)
!101 = !DILocation(line: 93, column: 3, scope: !41)
!102 = !DILocation(line: 94, column: 9, scope: !41)
!103 = !DILocation(line: 94, column: 14, scope: !41)
!104 = !DILocation(line: 95, column: 23, scope: !41)
!105 = !DILocation(line: 95, column: 19, scope: !41)
!106 = !DILocation(line: 95, column: 14, scope: !41)
!107 = !DILocation(line: 95, column: 28, scope: !41)
!108 = !DILocation(line: 95, column: 26, scope: !41)
!109 = !DILocation(line: 95, column: 12, scope: !41)
!110 = !DILocation(line: 96, column: 5, scope: !41)
!111 = !DILocation(line: 98, column: 18, scope: !41)
!112 = !DILocation(line: 98, column: 14, scope: !41)
!113 = !DILocation(line: 98, column: 22, scope: !41)
!114 = !DILocation(line: 98, column: 20, scope: !41)
!115 = !DILocation(line: 98, column: 12, scope: !41)
!116 = !DILocation(line: 100, column: 20, scope: !41)
!117 = !DILocation(line: 100, column: 13, scope: !41)
!118 = !DILocation(line: 100, column: 28, scope: !41)
!119 = !DILocation(line: 100, column: 42, scope: !41)
!120 = !DILocation(line: 100, column: 26, scope: !41)
!121 = !DILocation(line: 100, column: 11, scope: !41)
!122 = !DILocation(line: 101, column: 3, scope: !41)
!123 = !DILocation(line: 93, column: 20, scope: !41)
!124 = distinct !{!124, !101, !122, !38}
!125 = !DILocation(line: 102, column: 7, scope: !41)
!126 = !DILocation(line: 102, column: 12, scope: !41)
!127 = !DILocation(line: 103, column: 12, scope: !41)
!128 = !DILocation(line: 103, column: 10, scope: !41)
!129 = !DILocation(line: 104, column: 3, scope: !41)
!130 = !DILocation(line: 106, column: 17, scope: !41)
!131 = !DILocation(line: 106, column: 12, scope: !41)
!132 = !DILocation(line: 106, column: 39, scope: !41)
!133 = !DILocation(line: 106, column: 34, scope: !41)
!134 = !DILocation(line: 106, column: 54, scope: !41)
!135 = !DILocation(line: 106, column: 32, scope: !41)
!136 = !DILocation(line: 106, column: 10, scope: !41)
!137 = !DILocation(line: 108, column: 11, scope: !41)
!138 = !DILocation(line: 108, column: 3, scope: !41)
!139 = distinct !DISubprogram(name: "crc", scope: !13, file: !13, line: 112, type: !14, scopeLine: 113, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!140 = !DILocation(line: 118, column: 4, scope: !139)
!141 = !DILocation(line: 119, column: 7, scope: !139)
!142 = !DILocation(line: 119, column: 8, scope: !139)
!143 = !DILocation(line: 119, column: 3, scope: !139)
!144 = !DILocation(line: 119, column: 11, scope: !139)
!145 = !DILocation(line: 120, column: 13, scope: !139)
!146 = !DILocation(line: 120, column: 6, scope: !139)
!147 = !DILocation(line: 120, column: 5, scope: !139)
!148 = !DILocation(line: 121, column: 12, scope: !139)
!149 = !DILocation(line: 121, column: 7, scope: !139)
!150 = !DILocation(line: 121, column: 8, scope: !139)
!151 = !DILocation(line: 121, column: 3, scope: !139)
!152 = !DILocation(line: 121, column: 11, scope: !139)
!153 = !DILocation(line: 122, column: 12, scope: !139)
!154 = !DILocation(line: 122, column: 7, scope: !139)
!155 = !DILocation(line: 122, column: 8, scope: !139)
!156 = !DILocation(line: 122, column: 3, scope: !139)
!157 = !DILocation(line: 122, column: 11, scope: !139)
!158 = !DILocation(line: 123, column: 11, scope: !139)
!159 = !DILocation(line: 123, column: 14, scope: !139)
!160 = !DILocation(line: 123, column: 15, scope: !139)
!161 = !DILocation(line: 123, column: 6, scope: !139)
!162 = !DILocation(line: 123, column: 5, scope: !139)
!163 = !DILocation(line: 124, column: 3, scope: !139)
