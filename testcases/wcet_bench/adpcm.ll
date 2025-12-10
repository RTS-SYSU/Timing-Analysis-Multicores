; ModuleID = '/workspaces/llvmta/testcases/wcet_bench/adpcm.c'
source_filename = "/workspaces/llvmta/testcases/wcet_bench/adpcm.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv4t-unknown-unknown"

@h = dso_local global [24 x i32] [i32 12, i32 -44, i32 -44, i32 212, i32 48, i32 -624, i32 128, i32 1448, i32 -840, i32 -3220, i32 3804, i32 15504, i32 15504, i32 3804, i32 -3220, i32 -840, i32 1448, i32 128, i32 -624, i32 48, i32 212, i32 -44, i32 -44, i32 12], align 4
@qq4_code4_table = dso_local global [16 x i32] [i32 0, i32 -20456, i32 -12896, i32 -8968, i32 -6288, i32 -4240, i32 -2584, i32 -1200, i32 20456, i32 12896, i32 8968, i32 6288, i32 4240, i32 2584, i32 1200, i32 0], align 4
@qq5_code5_table = dso_local global [32 x i32] [i32 -280, i32 -280, i32 -23352, i32 -17560, i32 -14120, i32 -11664, i32 -9752, i32 -8184, i32 -6864, i32 -5712, i32 -4696, i32 -3784, i32 -2960, i32 -2208, i32 -1520, i32 -880, i32 23352, i32 17560, i32 14120, i32 11664, i32 9752, i32 8184, i32 6864, i32 5712, i32 4696, i32 3784, i32 2960, i32 2208, i32 1520, i32 880, i32 280, i32 -280], align 4
@qq6_code6_table = dso_local global [64 x i32] [i32 -136, i32 -136, i32 -136, i32 -136, i32 -24808, i32 -21904, i32 -19008, i32 -16704, i32 -14984, i32 -13512, i32 -12280, i32 -11192, i32 -10232, i32 -9360, i32 -8576, i32 -7856, i32 -7192, i32 -6576, i32 -6000, i32 -5456, i32 -4944, i32 -4464, i32 -4008, i32 -3576, i32 -3168, i32 -2776, i32 -2400, i32 -2032, i32 -1688, i32 -1360, i32 -1040, i32 -728, i32 24808, i32 21904, i32 19008, i32 16704, i32 14984, i32 13512, i32 12280, i32 11192, i32 10232, i32 9360, i32 8576, i32 7856, i32 7192, i32 6576, i32 6000, i32 5456, i32 4944, i32 4464, i32 4008, i32 3576, i32 3168, i32 2776, i32 2400, i32 2032, i32 1688, i32 1360, i32 1040, i32 728, i32 432, i32 136, i32 -432, i32 -136], align 4
@wl_code_table = dso_local global [16 x i32] [i32 -60, i32 3042, i32 1198, i32 538, i32 334, i32 172, i32 58, i32 -30, i32 3042, i32 1198, i32 538, i32 334, i32 172, i32 58, i32 -30, i32 -60], align 4
@wl_table = dso_local global [8 x i32] [i32 -60, i32 -30, i32 58, i32 172, i32 334, i32 538, i32 1198, i32 3042], align 4
@ilb_table = dso_local global [32 x i32] [i32 2048, i32 2093, i32 2139, i32 2186, i32 2233, i32 2282, i32 2332, i32 2383, i32 2435, i32 2489, i32 2543, i32 2599, i32 2656, i32 2714, i32 2774, i32 2834, i32 2896, i32 2960, i32 3025, i32 3091, i32 3158, i32 3228, i32 3298, i32 3371, i32 3444, i32 3520, i32 3597, i32 3676, i32 3756, i32 3838, i32 3922, i32 4008], align 4
@decis_levl = dso_local global [30 x i32] [i32 280, i32 576, i32 880, i32 1200, i32 1520, i32 1864, i32 2208, i32 2584, i32 2960, i32 3376, i32 3784, i32 4240, i32 4696, i32 5200, i32 5712, i32 6288, i32 6864, i32 7520, i32 8184, i32 8968, i32 9752, i32 10712, i32 11664, i32 12896, i32 14120, i32 15840, i32 17560, i32 20456, i32 23352, i32 32767], align 4
@quant26bt_pos = dso_local global [31 x i32] [i32 61, i32 60, i32 59, i32 58, i32 57, i32 56, i32 55, i32 54, i32 53, i32 52, i32 51, i32 50, i32 49, i32 48, i32 47, i32 46, i32 45, i32 44, i32 43, i32 42, i32 41, i32 40, i32 39, i32 38, i32 37, i32 36, i32 35, i32 34, i32 33, i32 32, i32 32], align 4
@quant26bt_neg = dso_local global [31 x i32] [i32 63, i32 62, i32 31, i32 30, i32 29, i32 28, i32 27, i32 26, i32 25, i32 24, i32 23, i32 22, i32 21, i32 20, i32 19, i32 18, i32 17, i32 16, i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 4], align 4
@qq2_code2_table = dso_local global [4 x i32] [i32 -7408, i32 -1616, i32 7408, i32 1616], align 4
@wh_code_table = dso_local global [4 x i32] [i32 798, i32 -214, i32 798, i32 -214], align 4
@tqmf = dso_local global [24 x i32] zeroinitializer, align 4
@xl = dso_local global i32 0, align 4
@xh = dso_local global i32 0, align 4
@delay_bpl = dso_local global [6 x i32] zeroinitializer, align 4
@delay_dltx = dso_local global [6 x i32] zeroinitializer, align 4
@szl = dso_local global i32 0, align 4
@rlt1 = dso_local global i32 0, align 4
@al1 = dso_local global i32 0, align 4
@rlt2 = dso_local global i32 0, align 4
@al2 = dso_local global i32 0, align 4
@spl = dso_local global i32 0, align 4
@sl = dso_local global i32 0, align 4
@el = dso_local global i32 0, align 4
@detl = dso_local global i32 0, align 4
@il = dso_local global i32 0, align 4
@dlt = dso_local global i32 0, align 4
@nbl = dso_local global i32 0, align 4
@plt = dso_local global i32 0, align 4
@plt1 = dso_local global i32 0, align 4
@plt2 = dso_local global i32 0, align 4
@rlt = dso_local global i32 0, align 4
@delay_bph = dso_local global [6 x i32] zeroinitializer, align 4
@delay_dhx = dso_local global [6 x i32] zeroinitializer, align 4
@szh = dso_local global i32 0, align 4
@rh1 = dso_local global i32 0, align 4
@ah1 = dso_local global i32 0, align 4
@rh2 = dso_local global i32 0, align 4
@ah2 = dso_local global i32 0, align 4
@sph = dso_local global i32 0, align 4
@sh = dso_local global i32 0, align 4
@eh = dso_local global i32 0, align 4
@ih = dso_local global i32 0, align 4
@deth = dso_local global i32 0, align 4
@dh = dso_local global i32 0, align 4
@nbh = dso_local global i32 0, align 4
@ph = dso_local global i32 0, align 4
@ph1 = dso_local global i32 0, align 4
@ph2 = dso_local global i32 0, align 4
@yh = dso_local global i32 0, align 4
@ilr = dso_local global i32 0, align 4
@dec_del_bpl = dso_local global [6 x i32] zeroinitializer, align 4
@dec_del_dltx = dso_local global [6 x i32] zeroinitializer, align 4
@dec_szl = dso_local global i32 0, align 4
@dec_rlt1 = dso_local global i32 0, align 4
@dec_al1 = dso_local global i32 0, align 4
@dec_rlt2 = dso_local global i32 0, align 4
@dec_al2 = dso_local global i32 0, align 4
@dec_spl = dso_local global i32 0, align 4
@dec_sl = dso_local global i32 0, align 4
@dec_detl = dso_local global i32 0, align 4
@dec_dlt = dso_local global i32 0, align 4
@dl = dso_local global i32 0, align 4
@rl = dso_local global i32 0, align 4
@dec_nbl = dso_local global i32 0, align 4
@dec_plt = dso_local global i32 0, align 4
@dec_plt1 = dso_local global i32 0, align 4
@dec_plt2 = dso_local global i32 0, align 4
@dec_rlt = dso_local global i32 0, align 4
@dec_del_bph = dso_local global [6 x i32] zeroinitializer, align 4
@dec_del_dhx = dso_local global [6 x i32] zeroinitializer, align 4
@dec_szh = dso_local global i32 0, align 4
@dec_rh1 = dso_local global i32 0, align 4
@dec_ah1 = dso_local global i32 0, align 4
@dec_rh2 = dso_local global i32 0, align 4
@dec_ah2 = dso_local global i32 0, align 4
@dec_sph = dso_local global i32 0, align 4
@dec_sh = dso_local global i32 0, align 4
@dec_deth = dso_local global i32 0, align 4
@dec_dh = dso_local global i32 0, align 4
@dec_nbh = dso_local global i32 0, align 4
@dec_ph = dso_local global i32 0, align 4
@dec_ph1 = dso_local global i32 0, align 4
@dec_ph2 = dso_local global i32 0, align 4
@rh = dso_local global i32 0, align 4
@xd = dso_local global i32 0, align 4
@xs = dso_local global i32 0, align 4
@accumc = dso_local global [11 x i32] zeroinitializer, align 4
@accumd = dso_local global [11 x i32] zeroinitializer, align 4
@xout1 = dso_local global i32 0, align 4
@xout2 = dso_local global i32 0, align 4
@adpcm.test_data = internal global [6 x i32] zeroinitializer, align 4
@adpcm.compressed = internal global [3 x i32] zeroinitializer, align 4
@adpcm.result = internal global [6 x i32] zeroinitializer, align 4
@rs = dso_local global i32 0, align 4
@yl = dso_local global i32 0, align 4
@dec_yh = dso_local global i32 0, align 4
@dec_rh = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @my_abs(i32 noundef %n) #0 !dbg !12 {
entry:
  %n.addr = alloca i32, align 4
  %m = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  %0 = load i32, i32* %n.addr, align 4, !dbg !16
  %cmp = icmp sge i32 %0, 0, !dbg !17
  br i1 %cmp, label %if.then, label %if.else, !dbg !16

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %n.addr, align 4, !dbg !18
  store i32 %1, i32* %m, align 4, !dbg !19
  br label %if.end, !dbg !20

if.else:                                          ; preds = %entry
  %2 = load i32, i32* %n.addr, align 4, !dbg !21
  %sub = sub nsw i32 0, %2, !dbg !22
  store i32 %sub, i32* %m, align 4, !dbg !23
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load i32, i32* %m, align 4, !dbg !24
  ret i32 %3, !dbg !25
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @my_fabs(i32 noundef %n) #0 !dbg !26 {
entry:
  %n.addr = alloca i32, align 4
  %f = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  %0 = load i32, i32* %n.addr, align 4, !dbg !27
  %cmp = icmp sge i32 %0, 0, !dbg !28
  br i1 %cmp, label %if.then, label %if.else, !dbg !27

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %n.addr, align 4, !dbg !29
  store i32 %1, i32* %f, align 4, !dbg !30
  br label %if.end, !dbg !31

if.else:                                          ; preds = %entry
  %2 = load i32, i32* %n.addr, align 4, !dbg !32
  %sub = sub nsw i32 0, %2, !dbg !33
  store i32 %sub, i32* %f, align 4, !dbg !34
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load i32, i32* %f, align 4, !dbg !35
  ret i32 %3, !dbg !36
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @my_sin(i32 noundef %rad) #0 !dbg !37 {
entry:
  %rad.addr = alloca i32, align 4
  %diff = alloca i32, align 4
  %app = alloca i32, align 4
  %inc = alloca i32, align 4
  store i32 %rad, i32* %rad.addr, align 4
  store i32 0, i32* %app, align 4, !dbg !38
  store i32 1, i32* %inc, align 4, !dbg !39
  br label %while.cond, !dbg !40

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, i32* %rad.addr, align 4, !dbg !41
  %cmp = icmp sgt i32 %0, 6282, !dbg !42
  br i1 %cmp, label %while.body, label %while.end, !dbg !40

while.body:                                       ; preds = %while.cond
  %1 = load i32, i32* %rad.addr, align 4, !dbg !43
  %sub = sub nsw i32 %1, 6282, !dbg !43
  store i32 %sub, i32* %rad.addr, align 4, !dbg !43
  br label %while.cond, !dbg !40, !llvm.loop !44

while.end:                                        ; preds = %while.cond
  br label %while.cond1, !dbg !47

while.cond1:                                      ; preds = %while.body3, %while.end
  %2 = load i32, i32* %rad.addr, align 4, !dbg !48
  %cmp2 = icmp slt i32 %2, -6282, !dbg !49
  br i1 %cmp2, label %while.body3, label %while.end4, !dbg !47

while.body3:                                      ; preds = %while.cond1
  %3 = load i32, i32* %rad.addr, align 4, !dbg !50
  %add = add nsw i32 %3, 6282, !dbg !50
  store i32 %add, i32* %rad.addr, align 4, !dbg !50
  br label %while.cond1, !dbg !47, !llvm.loop !51

while.end4:                                       ; preds = %while.cond1
  %4 = load i32, i32* %rad.addr, align 4, !dbg !53
  store i32 %4, i32* %diff, align 4, !dbg !54
  %5 = load i32, i32* %diff, align 4, !dbg !55
  store i32 %5, i32* %app, align 4, !dbg !56
  %6 = load i32, i32* %diff, align 4, !dbg !57
  %7 = load i32, i32* %rad.addr, align 4, !dbg !58
  %8 = load i32, i32* %rad.addr, align 4, !dbg !59
  %mul = mul nsw i32 %7, %8, !dbg !60
  %sub5 = sub nsw i32 0, %mul, !dbg !61
  %mul6 = mul nsw i32 %6, %sub5, !dbg !62
  %9 = load i32, i32* %inc, align 4, !dbg !63
  %mul7 = mul nsw i32 2, %9, !dbg !64
  %10 = load i32, i32* %inc, align 4, !dbg !65
  %mul8 = mul nsw i32 2, %10, !dbg !66
  %add9 = add nsw i32 %mul8, 1, !dbg !67
  %mul10 = mul nsw i32 %mul7, %add9, !dbg !68
  %div = sdiv i32 %mul6, %mul10, !dbg !69
  store i32 %div, i32* %diff, align 4, !dbg !70
  %11 = load i32, i32* %app, align 4, !dbg !71
  %12 = load i32, i32* %diff, align 4, !dbg !72
  %add11 = add nsw i32 %11, %12, !dbg !73
  store i32 %add11, i32* %app, align 4, !dbg !74
  %13 = load i32, i32* %inc, align 4, !dbg !75
  %inc12 = add nsw i32 %13, 1, !dbg !75
  store i32 %inc12, i32* %inc, align 4, !dbg !75
  br label %while.cond13, !dbg !76

while.cond13:                                     ; preds = %while.body15, %while.end4
  %14 = load i32, i32* %diff, align 4, !dbg !77
  %call = call arm_aapcs_vfpcc i32 @my_fabs(i32 noundef %14) #1, !dbg !78
  %cmp14 = icmp sge i32 %call, 1, !dbg !79
  br i1 %cmp14, label %while.body15, label %while.end26, !dbg !76

while.body15:                                     ; preds = %while.cond13
  %15 = load i32, i32* %diff, align 4, !dbg !80
  %16 = load i32, i32* %rad.addr, align 4, !dbg !81
  %17 = load i32, i32* %rad.addr, align 4, !dbg !82
  %mul16 = mul nsw i32 %16, %17, !dbg !83
  %sub17 = sub nsw i32 0, %mul16, !dbg !84
  %mul18 = mul nsw i32 %15, %sub17, !dbg !85
  %18 = load i32, i32* %inc, align 4, !dbg !86
  %mul19 = mul nsw i32 2, %18, !dbg !87
  %19 = load i32, i32* %inc, align 4, !dbg !88
  %mul20 = mul nsw i32 2, %19, !dbg !89
  %add21 = add nsw i32 %mul20, 1, !dbg !90
  %mul22 = mul nsw i32 %mul19, %add21, !dbg !91
  %div23 = sdiv i32 %mul18, %mul22, !dbg !92
  store i32 %div23, i32* %diff, align 4, !dbg !93
  %20 = load i32, i32* %app, align 4, !dbg !94
  %21 = load i32, i32* %diff, align 4, !dbg !95
  %add24 = add nsw i32 %20, %21, !dbg !96
  store i32 %add24, i32* %app, align 4, !dbg !97
  %22 = load i32, i32* %inc, align 4, !dbg !98
  %inc25 = add nsw i32 %22, 1, !dbg !98
  store i32 %inc25, i32* %inc, align 4, !dbg !98
  br label %while.cond13, !dbg !76, !llvm.loop !99

while.end26:                                      ; preds = %while.cond13
  %23 = load i32, i32* %app, align 4, !dbg !101
  ret i32 %23, !dbg !102
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @my_cos(i32 noundef %rad) #0 !dbg !103 {
entry:
  %rad.addr = alloca i32, align 4
  store i32 %rad, i32* %rad.addr, align 4
  %0 = load i32, i32* %rad.addr, align 4, !dbg !104
  %sub = sub nsw i32 1570, %0, !dbg !105
  %call = call arm_aapcs_vfpcc i32 @my_sin(i32 noundef %sub) #1, !dbg !106
  ret i32 %call, !dbg !107
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @encode(i32 noundef %xin1, i32 noundef %xin2) #0 !dbg !108 {
entry:
  %xin1.addr = alloca i32, align 4
  %xin2.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %h_ptr = alloca i32*, align 4
  %tqmf_ptr = alloca i32*, align 4
  %tqmf_ptr1 = alloca i32*, align 4
  %xa = alloca i32, align 4
  %xb = alloca i32, align 4
  %decis = alloca i32, align 4
  store i32 %xin1, i32* %xin1.addr, align 4
  store i32 %xin2, i32* %xin2.addr, align 4
  store i32* getelementptr inbounds ([24 x i32], [24 x i32]* @h, i32 0, i32 0), i32** %h_ptr, align 4, !dbg !109
  store i32* getelementptr inbounds ([24 x i32], [24 x i32]* @tqmf, i32 0, i32 0), i32** %tqmf_ptr, align 4, !dbg !110
  %0 = load i32*, i32** %tqmf_ptr, align 4, !dbg !111
  %incdec.ptr = getelementptr inbounds i32, i32* %0, i32 1, !dbg !111
  store i32* %incdec.ptr, i32** %tqmf_ptr, align 4, !dbg !111
  %1 = load i32, i32* %0, align 4, !dbg !112
  %2 = load i32*, i32** %h_ptr, align 4, !dbg !113
  %incdec.ptr1 = getelementptr inbounds i32, i32* %2, i32 1, !dbg !113
  store i32* %incdec.ptr1, i32** %h_ptr, align 4, !dbg !113
  %3 = load i32, i32* %2, align 4, !dbg !114
  %mul = mul nsw i32 %1, %3, !dbg !115
  store i32 %mul, i32* %xa, align 4, !dbg !116
  %4 = load i32*, i32** %tqmf_ptr, align 4, !dbg !117
  %incdec.ptr2 = getelementptr inbounds i32, i32* %4, i32 1, !dbg !117
  store i32* %incdec.ptr2, i32** %tqmf_ptr, align 4, !dbg !117
  %5 = load i32, i32* %4, align 4, !dbg !118
  %6 = load i32*, i32** %h_ptr, align 4, !dbg !119
  %incdec.ptr3 = getelementptr inbounds i32, i32* %6, i32 1, !dbg !119
  store i32* %incdec.ptr3, i32** %h_ptr, align 4, !dbg !119
  %7 = load i32, i32* %6, align 4, !dbg !120
  %mul4 = mul nsw i32 %5, %7, !dbg !121
  store i32 %mul4, i32* %xb, align 4, !dbg !122
  store i32 0, i32* %i, align 4, !dbg !123
  br label %for.cond, !dbg !124

for.cond:                                         ; preds = %for.inc, %entry
  %8 = load i32, i32* %i, align 4, !dbg !125
  %cmp = icmp slt i32 %8, 10, !dbg !126
  br i1 %cmp, label %for.body, label %for.end, !dbg !127

for.body:                                         ; preds = %for.cond
  %9 = load i32*, i32** %tqmf_ptr, align 4, !dbg !128
  %incdec.ptr5 = getelementptr inbounds i32, i32* %9, i32 1, !dbg !128
  store i32* %incdec.ptr5, i32** %tqmf_ptr, align 4, !dbg !128
  %10 = load i32, i32* %9, align 4, !dbg !129
  %11 = load i32*, i32** %h_ptr, align 4, !dbg !130
  %incdec.ptr6 = getelementptr inbounds i32, i32* %11, i32 1, !dbg !130
  store i32* %incdec.ptr6, i32** %h_ptr, align 4, !dbg !130
  %12 = load i32, i32* %11, align 4, !dbg !131
  %mul7 = mul nsw i32 %10, %12, !dbg !132
  %13 = load i32, i32* %xa, align 4, !dbg !133
  %add = add nsw i32 %13, %mul7, !dbg !133
  store i32 %add, i32* %xa, align 4, !dbg !133
  %14 = load i32*, i32** %tqmf_ptr, align 4, !dbg !134
  %incdec.ptr8 = getelementptr inbounds i32, i32* %14, i32 1, !dbg !134
  store i32* %incdec.ptr8, i32** %tqmf_ptr, align 4, !dbg !134
  %15 = load i32, i32* %14, align 4, !dbg !135
  %16 = load i32*, i32** %h_ptr, align 4, !dbg !136
  %incdec.ptr9 = getelementptr inbounds i32, i32* %16, i32 1, !dbg !136
  store i32* %incdec.ptr9, i32** %h_ptr, align 4, !dbg !136
  %17 = load i32, i32* %16, align 4, !dbg !137
  %mul10 = mul nsw i32 %15, %17, !dbg !138
  %18 = load i32, i32* %xb, align 4, !dbg !139
  %add11 = add nsw i32 %18, %mul10, !dbg !139
  store i32 %add11, i32* %xb, align 4, !dbg !139
  br label %for.inc, !dbg !140

for.inc:                                          ; preds = %for.body
  %19 = load i32, i32* %i, align 4, !dbg !141
  %inc = add nsw i32 %19, 1, !dbg !141
  store i32 %inc, i32* %i, align 4, !dbg !141
  br label %for.cond, !dbg !127, !llvm.loop !142

for.end:                                          ; preds = %for.cond
  %20 = load i32*, i32** %tqmf_ptr, align 4, !dbg !143
  %incdec.ptr12 = getelementptr inbounds i32, i32* %20, i32 1, !dbg !143
  store i32* %incdec.ptr12, i32** %tqmf_ptr, align 4, !dbg !143
  %21 = load i32, i32* %20, align 4, !dbg !144
  %22 = load i32*, i32** %h_ptr, align 4, !dbg !145
  %incdec.ptr13 = getelementptr inbounds i32, i32* %22, i32 1, !dbg !145
  store i32* %incdec.ptr13, i32** %h_ptr, align 4, !dbg !145
  %23 = load i32, i32* %22, align 4, !dbg !146
  %mul14 = mul nsw i32 %21, %23, !dbg !147
  %24 = load i32, i32* %xa, align 4, !dbg !148
  %add15 = add nsw i32 %24, %mul14, !dbg !148
  store i32 %add15, i32* %xa, align 4, !dbg !148
  %25 = load i32*, i32** %tqmf_ptr, align 4, !dbg !149
  %26 = load i32, i32* %25, align 4, !dbg !150
  %27 = load i32*, i32** %h_ptr, align 4, !dbg !151
  %incdec.ptr16 = getelementptr inbounds i32, i32* %27, i32 1, !dbg !151
  store i32* %incdec.ptr16, i32** %h_ptr, align 4, !dbg !151
  %28 = load i32, i32* %27, align 4, !dbg !152
  %mul17 = mul nsw i32 %26, %28, !dbg !153
  %29 = load i32, i32* %xb, align 4, !dbg !154
  %add18 = add nsw i32 %29, %mul17, !dbg !154
  store i32 %add18, i32* %xb, align 4, !dbg !154
  %30 = load i32*, i32** %tqmf_ptr, align 4, !dbg !155
  %add.ptr = getelementptr inbounds i32, i32* %30, i32 -2, !dbg !156
  store i32* %add.ptr, i32** %tqmf_ptr1, align 4, !dbg !157
  store i32 0, i32* %i, align 4, !dbg !158
  br label %for.cond19, !dbg !159

for.cond19:                                       ; preds = %for.inc24, %for.end
  %31 = load i32, i32* %i, align 4, !dbg !160
  %cmp20 = icmp slt i32 %31, 22, !dbg !161
  br i1 %cmp20, label %for.body21, label %for.end26, !dbg !162

for.body21:                                       ; preds = %for.cond19
  %32 = load i32*, i32** %tqmf_ptr1, align 4, !dbg !163
  %incdec.ptr22 = getelementptr inbounds i32, i32* %32, i32 -1, !dbg !163
  store i32* %incdec.ptr22, i32** %tqmf_ptr1, align 4, !dbg !163
  %33 = load i32, i32* %32, align 4, !dbg !164
  %34 = load i32*, i32** %tqmf_ptr, align 4, !dbg !165
  %incdec.ptr23 = getelementptr inbounds i32, i32* %34, i32 -1, !dbg !165
  store i32* %incdec.ptr23, i32** %tqmf_ptr, align 4, !dbg !165
  store i32 %33, i32* %34, align 4, !dbg !166
  br label %for.inc24, !dbg !167

for.inc24:                                        ; preds = %for.body21
  %35 = load i32, i32* %i, align 4, !dbg !168
  %inc25 = add nsw i32 %35, 1, !dbg !168
  store i32 %inc25, i32* %i, align 4, !dbg !168
  br label %for.cond19, !dbg !162, !llvm.loop !169

for.end26:                                        ; preds = %for.cond19
  %36 = load i32, i32* %xin1.addr, align 4, !dbg !170
  %37 = load i32*, i32** %tqmf_ptr, align 4, !dbg !171
  %incdec.ptr27 = getelementptr inbounds i32, i32* %37, i32 -1, !dbg !171
  store i32* %incdec.ptr27, i32** %tqmf_ptr, align 4, !dbg !171
  store i32 %36, i32* %37, align 4, !dbg !172
  %38 = load i32, i32* %xin2.addr, align 4, !dbg !173
  %39 = load i32*, i32** %tqmf_ptr, align 4, !dbg !174
  store i32 %38, i32* %39, align 4, !dbg !175
  %40 = load i32, i32* %xa, align 4, !dbg !176
  %41 = load i32, i32* %xb, align 4, !dbg !177
  %add28 = add nsw i32 %40, %41, !dbg !178
  %shr = ashr i32 %add28, 15, !dbg !179
  store i32 %shr, i32* @xl, align 4, !dbg !180
  %42 = load i32, i32* %xa, align 4, !dbg !181
  %43 = load i32, i32* %xb, align 4, !dbg !182
  %sub = sub nsw i32 %42, %43, !dbg !183
  %shr29 = ashr i32 %sub, 15, !dbg !184
  store i32 %shr29, i32* @xh, align 4, !dbg !185
  %call = call arm_aapcs_vfpcc i32 @filtez(i32* noundef getelementptr inbounds ([6 x i32], [6 x i32]* @delay_bpl, i32 0, i32 0), i32* noundef getelementptr inbounds ([6 x i32], [6 x i32]* @delay_dltx, i32 0, i32 0)) #1, !dbg !186
  store i32 %call, i32* @szl, align 4, !dbg !187
  %44 = load i32, i32* @rlt1, align 4, !dbg !188
  %45 = load i32, i32* @al1, align 4, !dbg !189
  %46 = load i32, i32* @rlt2, align 4, !dbg !190
  %47 = load i32, i32* @al2, align 4, !dbg !191
  %call30 = call arm_aapcs_vfpcc i32 @filtep(i32 noundef %44, i32 noundef %45, i32 noundef %46, i32 noundef %47) #1, !dbg !192
  store i32 %call30, i32* @spl, align 4, !dbg !193
  %48 = load i32, i32* @szl, align 4, !dbg !194
  %49 = load i32, i32* @spl, align 4, !dbg !195
  %add31 = add nsw i32 %48, %49, !dbg !196
  store i32 %add31, i32* @sl, align 4, !dbg !197
  %50 = load i32, i32* @xl, align 4, !dbg !198
  %51 = load i32, i32* @sl, align 4, !dbg !199
  %sub32 = sub nsw i32 %50, %51, !dbg !200
  store i32 %sub32, i32* @el, align 4, !dbg !201
  %52 = load i32, i32* @el, align 4, !dbg !202
  %53 = load i32, i32* @detl, align 4, !dbg !203
  %call33 = call arm_aapcs_vfpcc i32 @quantl(i32 noundef %52, i32 noundef %53) #1, !dbg !204
  store i32 %call33, i32* @il, align 4, !dbg !205
  %54 = load i32, i32* @detl, align 4, !dbg !206
  %55 = load i32, i32* @il, align 4, !dbg !207
  %shr34 = ashr i32 %55, 2, !dbg !208
  %arrayidx = getelementptr inbounds [16 x i32], [16 x i32]* @qq4_code4_table, i32 0, i32 %shr34, !dbg !209
  %56 = load i32, i32* %arrayidx, align 4, !dbg !209
  %mul35 = mul nsw i32 %54, %56, !dbg !210
  %shr36 = ashr i32 %mul35, 15, !dbg !211
  store i32 %shr36, i32* @dlt, align 4, !dbg !212
  %57 = load i32, i32* @il, align 4, !dbg !213
  %58 = load i32, i32* @nbl, align 4, !dbg !214
  %call37 = call arm_aapcs_vfpcc i32 @logscl(i32 noundef %57, i32 noundef %58) #1, !dbg !215
  store i32 %call37, i32* @nbl, align 4, !dbg !216
  %59 = load i32, i32* @nbl, align 4, !dbg !217
  %call38 = call arm_aapcs_vfpcc i32 @scalel(i32 noundef %59, i32 noundef 8) #1, !dbg !218
  store i32 %call38, i32* @detl, align 4, !dbg !219
  %60 = load i32, i32* @dlt, align 4, !dbg !220
  %61 = load i32, i32* @szl, align 4, !dbg !221
  %add39 = add nsw i32 %60, %61, !dbg !222
  store i32 %add39, i32* @plt, align 4, !dbg !223
  %62 = load i32, i32* @dlt, align 4, !dbg !224
  call arm_aapcs_vfpcc void @upzero(i32 noundef %62, i32* noundef getelementptr inbounds ([6 x i32], [6 x i32]* @delay_dltx, i32 0, i32 0), i32* noundef getelementptr inbounds ([6 x i32], [6 x i32]* @delay_bpl, i32 0, i32 0)) #1, !dbg !225
  %63 = load i32, i32* @al1, align 4, !dbg !226
  %64 = load i32, i32* @al2, align 4, !dbg !227
  %65 = load i32, i32* @plt, align 4, !dbg !228
  %66 = load i32, i32* @plt1, align 4, !dbg !229
  %67 = load i32, i32* @plt2, align 4, !dbg !230
  %call40 = call arm_aapcs_vfpcc i32 @uppol2(i32 noundef %63, i32 noundef %64, i32 noundef %65, i32 noundef %66, i32 noundef %67) #1, !dbg !231
  store i32 %call40, i32* @al2, align 4, !dbg !232
  %68 = load i32, i32* @al1, align 4, !dbg !233
  %69 = load i32, i32* @al2, align 4, !dbg !234
  %70 = load i32, i32* @plt, align 4, !dbg !235
  %71 = load i32, i32* @plt1, align 4, !dbg !236
  %call41 = call arm_aapcs_vfpcc i32 @uppol1(i32 noundef %68, i32 noundef %69, i32 noundef %70, i32 noundef %71) #1, !dbg !237
  store i32 %call41, i32* @al1, align 4, !dbg !238
  %72 = load i32, i32* @sl, align 4, !dbg !239
  %73 = load i32, i32* @dlt, align 4, !dbg !240
  %add42 = add nsw i32 %72, %73, !dbg !241
  store i32 %add42, i32* @rlt, align 4, !dbg !242
  %74 = load i32, i32* @rlt1, align 4, !dbg !243
  store i32 %74, i32* @rlt2, align 4, !dbg !244
  %75 = load i32, i32* @rlt, align 4, !dbg !245
  store i32 %75, i32* @rlt1, align 4, !dbg !246
  %76 = load i32, i32* @plt1, align 4, !dbg !247
  store i32 %76, i32* @plt2, align 4, !dbg !248
  %77 = load i32, i32* @plt, align 4, !dbg !249
  store i32 %77, i32* @plt1, align 4, !dbg !250
  %call43 = call arm_aapcs_vfpcc i32 @filtez(i32* noundef getelementptr inbounds ([6 x i32], [6 x i32]* @delay_bph, i32 0, i32 0), i32* noundef getelementptr inbounds ([6 x i32], [6 x i32]* @delay_dhx, i32 0, i32 0)) #1, !dbg !251
  store i32 %call43, i32* @szh, align 4, !dbg !252
  %78 = load i32, i32* @rh1, align 4, !dbg !253
  %79 = load i32, i32* @ah1, align 4, !dbg !254
  %80 = load i32, i32* @rh2, align 4, !dbg !255
  %81 = load i32, i32* @ah2, align 4, !dbg !256
  %call44 = call arm_aapcs_vfpcc i32 @filtep(i32 noundef %78, i32 noundef %79, i32 noundef %80, i32 noundef %81) #1, !dbg !257
  store i32 %call44, i32* @sph, align 4, !dbg !258
  %82 = load i32, i32* @sph, align 4, !dbg !259
  %83 = load i32, i32* @szh, align 4, !dbg !260
  %add45 = add nsw i32 %82, %83, !dbg !261
  store i32 %add45, i32* @sh, align 4, !dbg !262
  %84 = load i32, i32* @xh, align 4, !dbg !263
  %85 = load i32, i32* @sh, align 4, !dbg !264
  %sub46 = sub nsw i32 %84, %85, !dbg !265
  store i32 %sub46, i32* @eh, align 4, !dbg !266
  %86 = load i32, i32* @eh, align 4, !dbg !267
  %cmp47 = icmp sge i32 %86, 0, !dbg !268
  br i1 %cmp47, label %if.then, label %if.else, !dbg !267

if.then:                                          ; preds = %for.end26
  store i32 3, i32* @ih, align 4, !dbg !269
  br label %if.end, !dbg !270

if.else:                                          ; preds = %for.end26
  store i32 1, i32* @ih, align 4, !dbg !271
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %87 = load i32, i32* @deth, align 4, !dbg !272
  %mul48 = mul nsw i32 564, %87, !dbg !273
  %shr49 = ashr i32 %mul48, 12, !dbg !274
  store i32 %shr49, i32* %decis, align 4, !dbg !275
  %88 = load i32, i32* @eh, align 4, !dbg !276
  %call50 = call arm_aapcs_vfpcc i32 @my_abs(i32 noundef %88) #1, !dbg !277
  %89 = load i32, i32* %decis, align 4, !dbg !278
  %cmp51 = icmp sgt i32 %call50, %89, !dbg !279
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !277

if.then52:                                        ; preds = %if.end
  %90 = load i32, i32* @ih, align 4, !dbg !280
  %dec = add nsw i32 %90, -1, !dbg !280
  store i32 %dec, i32* @ih, align 4, !dbg !280
  br label %if.end53, !dbg !281

if.end53:                                         ; preds = %if.then52, %if.end
  %91 = load i32, i32* @deth, align 4, !dbg !282
  %92 = load i32, i32* @ih, align 4, !dbg !283
  %arrayidx54 = getelementptr inbounds [4 x i32], [4 x i32]* @qq2_code2_table, i32 0, i32 %92, !dbg !284
  %93 = load i32, i32* %arrayidx54, align 4, !dbg !284
  %mul55 = mul nsw i32 %91, %93, !dbg !285
  %shr56 = ashr i32 %mul55, 15, !dbg !286
  store i32 %shr56, i32* @dh, align 4, !dbg !287
  %94 = load i32, i32* @ih, align 4, !dbg !288
  %95 = load i32, i32* @nbh, align 4, !dbg !289
  %call57 = call arm_aapcs_vfpcc i32 @logsch(i32 noundef %94, i32 noundef %95) #1, !dbg !290
  store i32 %call57, i32* @nbh, align 4, !dbg !291
  %96 = load i32, i32* @nbh, align 4, !dbg !292
  %call58 = call arm_aapcs_vfpcc i32 @scalel(i32 noundef %96, i32 noundef 10) #1, !dbg !293
  store i32 %call58, i32* @deth, align 4, !dbg !294
  %97 = load i32, i32* @dh, align 4, !dbg !295
  %98 = load i32, i32* @szh, align 4, !dbg !296
  %add59 = add nsw i32 %97, %98, !dbg !297
  store i32 %add59, i32* @ph, align 4, !dbg !298
  %99 = load i32, i32* @dh, align 4, !dbg !299
  call arm_aapcs_vfpcc void @upzero(i32 noundef %99, i32* noundef getelementptr inbounds ([6 x i32], [6 x i32]* @delay_dhx, i32 0, i32 0), i32* noundef getelementptr inbounds ([6 x i32], [6 x i32]* @delay_bph, i32 0, i32 0)) #1, !dbg !300
  %100 = load i32, i32* @ah1, align 4, !dbg !301
  %101 = load i32, i32* @ah2, align 4, !dbg !302
  %102 = load i32, i32* @ph, align 4, !dbg !303
  %103 = load i32, i32* @ph1, align 4, !dbg !304
  %104 = load i32, i32* @ph2, align 4, !dbg !305
  %call60 = call arm_aapcs_vfpcc i32 @uppol2(i32 noundef %100, i32 noundef %101, i32 noundef %102, i32 noundef %103, i32 noundef %104) #1, !dbg !306
  store i32 %call60, i32* @ah2, align 4, !dbg !307
  %105 = load i32, i32* @ah1, align 4, !dbg !308
  %106 = load i32, i32* @ah2, align 4, !dbg !309
  %107 = load i32, i32* @ph, align 4, !dbg !310
  %108 = load i32, i32* @ph1, align 4, !dbg !311
  %call61 = call arm_aapcs_vfpcc i32 @uppol1(i32 noundef %105, i32 noundef %106, i32 noundef %107, i32 noundef %108) #1, !dbg !312
  store i32 %call61, i32* @ah1, align 4, !dbg !313
  %109 = load i32, i32* @sh, align 4, !dbg !314
  %110 = load i32, i32* @dh, align 4, !dbg !315
  %add62 = add nsw i32 %109, %110, !dbg !316
  store i32 %add62, i32* @yh, align 4, !dbg !317
  %111 = load i32, i32* @rh1, align 4, !dbg !318
  store i32 %111, i32* @rh2, align 4, !dbg !319
  %112 = load i32, i32* @yh, align 4, !dbg !320
  store i32 %112, i32* @rh1, align 4, !dbg !321
  %113 = load i32, i32* @ph1, align 4, !dbg !322
  store i32 %113, i32* @ph2, align 4, !dbg !323
  %114 = load i32, i32* @ph, align 4, !dbg !324
  store i32 %114, i32* @ph1, align 4, !dbg !325
  %115 = load i32, i32* @il, align 4, !dbg !326
  %116 = load i32, i32* @ih, align 4, !dbg !327
  %shl = shl i32 %116, 6, !dbg !328
  %or = or i32 %115, %shl, !dbg !329
  ret i32 %or, !dbg !330
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @filtez(i32* noundef %bpl, i32* noundef %dlt) #0 !dbg !331 {
entry:
  %bpl.addr = alloca i32*, align 4
  %dlt.addr = alloca i32*, align 4
  %i = alloca i32, align 4
  %zl = alloca i32, align 4
  store i32* %bpl, i32** %bpl.addr, align 4
  store i32* %dlt, i32** %dlt.addr, align 4
  %0 = load i32*, i32** %bpl.addr, align 4, !dbg !332
  %incdec.ptr = getelementptr inbounds i32, i32* %0, i32 1, !dbg !332
  store i32* %incdec.ptr, i32** %bpl.addr, align 4, !dbg !332
  %1 = load i32, i32* %0, align 4, !dbg !333
  %2 = load i32*, i32** %dlt.addr, align 4, !dbg !334
  %incdec.ptr1 = getelementptr inbounds i32, i32* %2, i32 1, !dbg !334
  store i32* %incdec.ptr1, i32** %dlt.addr, align 4, !dbg !334
  %3 = load i32, i32* %2, align 4, !dbg !335
  %mul = mul nsw i32 %1, %3, !dbg !336
  store i32 %mul, i32* %zl, align 4, !dbg !337
  store i32 1, i32* %i, align 4, !dbg !338
  br label %for.cond, !dbg !339

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4, !dbg !340
  %cmp = icmp slt i32 %4, 6, !dbg !341
  br i1 %cmp, label %for.body, label %for.end, !dbg !342

for.body:                                         ; preds = %for.cond
  %5 = load i32*, i32** %bpl.addr, align 4, !dbg !343
  %incdec.ptr2 = getelementptr inbounds i32, i32* %5, i32 1, !dbg !343
  store i32* %incdec.ptr2, i32** %bpl.addr, align 4, !dbg !343
  %6 = load i32, i32* %5, align 4, !dbg !344
  %7 = load i32*, i32** %dlt.addr, align 4, !dbg !345
  %incdec.ptr3 = getelementptr inbounds i32, i32* %7, i32 1, !dbg !345
  store i32* %incdec.ptr3, i32** %dlt.addr, align 4, !dbg !345
  %8 = load i32, i32* %7, align 4, !dbg !346
  %mul4 = mul nsw i32 %6, %8, !dbg !347
  %9 = load i32, i32* %zl, align 4, !dbg !348
  %add = add nsw i32 %9, %mul4, !dbg !348
  store i32 %add, i32* %zl, align 4, !dbg !348
  br label %for.inc, !dbg !349

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4, !dbg !350
  %inc = add nsw i32 %10, 1, !dbg !350
  store i32 %inc, i32* %i, align 4, !dbg !350
  br label %for.cond, !dbg !342, !llvm.loop !351

for.end:                                          ; preds = %for.cond
  %11 = load i32, i32* %zl, align 4, !dbg !353
  %shr = ashr i32 %11, 14, !dbg !354
  ret i32 %shr, !dbg !355
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @filtep(i32 noundef %rlt1, i32 noundef %al1, i32 noundef %rlt2, i32 noundef %al2) #0 !dbg !356 {
entry:
  %rlt1.addr = alloca i32, align 4
  %al1.addr = alloca i32, align 4
  %rlt2.addr = alloca i32, align 4
  %al2.addr = alloca i32, align 4
  %pl = alloca i32, align 4
  %pl2 = alloca i32, align 4
  store i32 %rlt1, i32* %rlt1.addr, align 4
  store i32 %al1, i32* %al1.addr, align 4
  store i32 %rlt2, i32* %rlt2.addr, align 4
  store i32 %al2, i32* %al2.addr, align 4
  %0 = load i32, i32* %rlt1.addr, align 4, !dbg !357
  %mul = mul nsw i32 2, %0, !dbg !358
  store i32 %mul, i32* %pl, align 4, !dbg !359
  %1 = load i32, i32* %al1.addr, align 4, !dbg !360
  %2 = load i32, i32* %pl, align 4, !dbg !361
  %mul1 = mul nsw i32 %1, %2, !dbg !362
  store i32 %mul1, i32* %pl, align 4, !dbg !363
  %3 = load i32, i32* %rlt2.addr, align 4, !dbg !364
  %mul2 = mul nsw i32 2, %3, !dbg !365
  store i32 %mul2, i32* %pl2, align 4, !dbg !366
  %4 = load i32, i32* %al2.addr, align 4, !dbg !367
  %5 = load i32, i32* %pl2, align 4, !dbg !368
  %mul3 = mul nsw i32 %4, %5, !dbg !369
  %6 = load i32, i32* %pl, align 4, !dbg !370
  %add = add nsw i32 %6, %mul3, !dbg !370
  store i32 %add, i32* %pl, align 4, !dbg !370
  %7 = load i32, i32* %pl, align 4, !dbg !371
  %shr = ashr i32 %7, 15, !dbg !372
  ret i32 %shr, !dbg !373
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @quantl(i32 noundef %el, i32 noundef %detl) #0 !dbg !374 {
entry:
  %el.addr = alloca i32, align 4
  %detl.addr = alloca i32, align 4
  %ril = alloca i32, align 4
  %mil = alloca i32, align 4
  %wd = alloca i32, align 4
  %decis = alloca i32, align 4
  store i32 %el, i32* %el.addr, align 4
  store i32 %detl, i32* %detl.addr, align 4
  %0 = load i32, i32* %el.addr, align 4, !dbg !375
  %call = call arm_aapcs_vfpcc i32 @my_abs(i32 noundef %0) #1, !dbg !376
  store i32 %call, i32* %wd, align 4, !dbg !377
  store i32 0, i32* %mil, align 4, !dbg !378
  br label %for.cond, !dbg !379

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %mil, align 4, !dbg !380
  %cmp = icmp slt i32 %1, 30, !dbg !381
  br i1 %cmp, label %for.body, label %for.end, !dbg !382

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %mil, align 4, !dbg !383
  %arrayidx = getelementptr inbounds [30 x i32], [30 x i32]* @decis_levl, i32 0, i32 %2, !dbg !384
  %3 = load i32, i32* %arrayidx, align 4, !dbg !384
  %4 = load i32, i32* %detl.addr, align 4, !dbg !385
  %mul = mul nsw i32 %3, %4, !dbg !386
  %shr = ashr i32 %mul, 15, !dbg !387
  store i32 %shr, i32* %decis, align 4, !dbg !388
  %5 = load i32, i32* %wd, align 4, !dbg !389
  %6 = load i32, i32* %decis, align 4, !dbg !390
  %cmp1 = icmp sle i32 %5, %6, !dbg !391
  br i1 %cmp1, label %if.then, label %if.end, !dbg !389

if.then:                                          ; preds = %for.body
  br label %for.end, !dbg !392

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !393

for.inc:                                          ; preds = %if.end
  %7 = load i32, i32* %mil, align 4, !dbg !394
  %inc = add nsw i32 %7, 1, !dbg !394
  store i32 %inc, i32* %mil, align 4, !dbg !394
  br label %for.cond, !dbg !382, !llvm.loop !395

for.end:                                          ; preds = %if.then, %for.cond
  %8 = load i32, i32* %el.addr, align 4, !dbg !396
  %cmp2 = icmp sge i32 %8, 0, !dbg !397
  br i1 %cmp2, label %if.then3, label %if.else, !dbg !396

if.then3:                                         ; preds = %for.end
  %9 = load i32, i32* %mil, align 4, !dbg !398
  %arrayidx4 = getelementptr inbounds [31 x i32], [31 x i32]* @quant26bt_pos, i32 0, i32 %9, !dbg !399
  %10 = load i32, i32* %arrayidx4, align 4, !dbg !399
  store i32 %10, i32* %ril, align 4, !dbg !400
  br label %if.end6, !dbg !401

if.else:                                          ; preds = %for.end
  %11 = load i32, i32* %mil, align 4, !dbg !402
  %arrayidx5 = getelementptr inbounds [31 x i32], [31 x i32]* @quant26bt_neg, i32 0, i32 %11, !dbg !403
  %12 = load i32, i32* %arrayidx5, align 4, !dbg !403
  store i32 %12, i32* %ril, align 4, !dbg !404
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then3
  %13 = load i32, i32* %ril, align 4, !dbg !405
  ret i32 %13, !dbg !406
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @logscl(i32 noundef %il, i32 noundef %nbl) #0 !dbg !407 {
entry:
  %il.addr = alloca i32, align 4
  %nbl.addr = alloca i32, align 4
  %wd = alloca i32, align 4
  store i32 %il, i32* %il.addr, align 4
  store i32 %nbl, i32* %nbl.addr, align 4
  %0 = load i32, i32* %nbl.addr, align 4, !dbg !408
  %mul = mul nsw i32 %0, 127, !dbg !409
  %shr = ashr i32 %mul, 7, !dbg !410
  store i32 %shr, i32* %wd, align 4, !dbg !411
  %1 = load i32, i32* %wd, align 4, !dbg !412
  %2 = load i32, i32* %il.addr, align 4, !dbg !413
  %shr1 = ashr i32 %2, 2, !dbg !414
  %arrayidx = getelementptr inbounds [16 x i32], [16 x i32]* @wl_code_table, i32 0, i32 %shr1, !dbg !415
  %3 = load i32, i32* %arrayidx, align 4, !dbg !415
  %add = add nsw i32 %1, %3, !dbg !416
  store i32 %add, i32* %nbl.addr, align 4, !dbg !417
  %4 = load i32, i32* %nbl.addr, align 4, !dbg !418
  %cmp = icmp slt i32 %4, 0, !dbg !419
  br i1 %cmp, label %if.then, label %if.end, !dbg !418

if.then:                                          ; preds = %entry
  store i32 0, i32* %nbl.addr, align 4, !dbg !420
  br label %if.end, !dbg !421

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, i32* %nbl.addr, align 4, !dbg !422
  %cmp2 = icmp sgt i32 %5, 18432, !dbg !423
  br i1 %cmp2, label %if.then3, label %if.end4, !dbg !422

if.then3:                                         ; preds = %if.end
  store i32 18432, i32* %nbl.addr, align 4, !dbg !424
  br label %if.end4, !dbg !425

if.end4:                                          ; preds = %if.then3, %if.end
  %6 = load i32, i32* %nbl.addr, align 4, !dbg !426
  ret i32 %6, !dbg !427
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @scalel(i32 noundef %nbl, i32 noundef %shift_constant) #0 !dbg !428 {
entry:
  %nbl.addr = alloca i32, align 4
  %shift_constant.addr = alloca i32, align 4
  %wd1 = alloca i32, align 4
  %wd2 = alloca i32, align 4
  %wd3 = alloca i32, align 4
  store i32 %nbl, i32* %nbl.addr, align 4
  store i32 %shift_constant, i32* %shift_constant.addr, align 4
  %0 = load i32, i32* %nbl.addr, align 4, !dbg !429
  %shr = ashr i32 %0, 6, !dbg !430
  %and = and i32 %shr, 31, !dbg !431
  store i32 %and, i32* %wd1, align 4, !dbg !432
  %1 = load i32, i32* %nbl.addr, align 4, !dbg !433
  %shr1 = ashr i32 %1, 11, !dbg !434
  store i32 %shr1, i32* %wd2, align 4, !dbg !435
  %2 = load i32, i32* %wd1, align 4, !dbg !436
  %arrayidx = getelementptr inbounds [32 x i32], [32 x i32]* @ilb_table, i32 0, i32 %2, !dbg !437
  %3 = load i32, i32* %arrayidx, align 4, !dbg !437
  %4 = load i32, i32* %shift_constant.addr, align 4, !dbg !438
  %add = add nsw i32 %4, 1, !dbg !439
  %5 = load i32, i32* %wd2, align 4, !dbg !440
  %sub = sub nsw i32 %add, %5, !dbg !441
  %shr2 = ashr i32 %3, %sub, !dbg !442
  store i32 %shr2, i32* %wd3, align 4, !dbg !443
  %6 = load i32, i32* %wd3, align 4, !dbg !444
  %shl = shl i32 %6, 3, !dbg !445
  ret i32 %shl, !dbg !446
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @upzero(i32 noundef %dlt, i32* noundef %dlti, i32* noundef %bli) #0 !dbg !447 {
entry:
  %dlt.addr = alloca i32, align 4
  %dlti.addr = alloca i32*, align 4
  %bli.addr = alloca i32*, align 4
  %i = alloca i32, align 4
  %wd2 = alloca i32, align 4
  %wd3 = alloca i32, align 4
  store i32 %dlt, i32* %dlt.addr, align 4
  store i32* %dlti, i32** %dlti.addr, align 4
  store i32* %bli, i32** %bli.addr, align 4
  %0 = load i32, i32* %dlt.addr, align 4, !dbg !448
  %cmp = icmp eq i32 %0, 0, !dbg !449
  br i1 %cmp, label %if.then, label %if.else, !dbg !448

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4, !dbg !450
  br label %for.cond, !dbg !451

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %i, align 4, !dbg !452
  %cmp1 = icmp slt i32 %1, 6, !dbg !453
  br i1 %cmp1, label %for.body, label %for.end, !dbg !454

for.body:                                         ; preds = %for.cond
  %2 = load i32*, i32** %bli.addr, align 4, !dbg !455
  %3 = load i32, i32* %i, align 4, !dbg !456
  %arrayidx = getelementptr inbounds i32, i32* %2, i32 %3, !dbg !455
  %4 = load i32, i32* %arrayidx, align 4, !dbg !455
  %mul = mul nsw i32 255, %4, !dbg !457
  %shr = ashr i32 %mul, 8, !dbg !458
  %5 = load i32*, i32** %bli.addr, align 4, !dbg !459
  %6 = load i32, i32* %i, align 4, !dbg !460
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i32 %6, !dbg !459
  store i32 %shr, i32* %arrayidx2, align 4, !dbg !461
  br label %for.inc, !dbg !462

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4, !dbg !463
  %inc = add nsw i32 %7, 1, !dbg !463
  store i32 %inc, i32* %i, align 4, !dbg !463
  br label %for.cond, !dbg !454, !llvm.loop !464

for.end:                                          ; preds = %for.cond
  br label %if.end18, !dbg !465

if.else:                                          ; preds = %entry
  store i32 0, i32* %i, align 4, !dbg !466
  br label %for.cond3, !dbg !467

for.cond3:                                        ; preds = %for.inc15, %if.else
  %8 = load i32, i32* %i, align 4, !dbg !468
  %cmp4 = icmp slt i32 %8, 6, !dbg !469
  br i1 %cmp4, label %for.body5, label %for.end17, !dbg !470

for.body5:                                        ; preds = %for.cond3
  %9 = load i32, i32* %dlt.addr, align 4, !dbg !471
  %10 = load i32*, i32** %dlti.addr, align 4, !dbg !472
  %11 = load i32, i32* %i, align 4, !dbg !473
  %arrayidx6 = getelementptr inbounds i32, i32* %10, i32 %11, !dbg !472
  %12 = load i32, i32* %arrayidx6, align 4, !dbg !472
  %mul7 = mul nsw i32 %9, %12, !dbg !474
  %cmp8 = icmp sge i32 %mul7, 0, !dbg !475
  br i1 %cmp8, label %if.then9, label %if.else10, !dbg !476

if.then9:                                         ; preds = %for.body5
  store i32 128, i32* %wd2, align 4, !dbg !477
  br label %if.end, !dbg !478

if.else10:                                        ; preds = %for.body5
  store i32 -128, i32* %wd2, align 4, !dbg !479
  br label %if.end

if.end:                                           ; preds = %if.else10, %if.then9
  %13 = load i32*, i32** %bli.addr, align 4, !dbg !480
  %14 = load i32, i32* %i, align 4, !dbg !481
  %arrayidx11 = getelementptr inbounds i32, i32* %13, i32 %14, !dbg !480
  %15 = load i32, i32* %arrayidx11, align 4, !dbg !480
  %mul12 = mul nsw i32 255, %15, !dbg !482
  %shr13 = ashr i32 %mul12, 8, !dbg !483
  store i32 %shr13, i32* %wd3, align 4, !dbg !484
  %16 = load i32, i32* %wd2, align 4, !dbg !485
  %17 = load i32, i32* %wd3, align 4, !dbg !486
  %add = add nsw i32 %16, %17, !dbg !487
  %18 = load i32*, i32** %bli.addr, align 4, !dbg !488
  %19 = load i32, i32* %i, align 4, !dbg !489
  %arrayidx14 = getelementptr inbounds i32, i32* %18, i32 %19, !dbg !488
  store i32 %add, i32* %arrayidx14, align 4, !dbg !490
  br label %for.inc15, !dbg !491

for.inc15:                                        ; preds = %if.end
  %20 = load i32, i32* %i, align 4, !dbg !492
  %inc16 = add nsw i32 %20, 1, !dbg !492
  store i32 %inc16, i32* %i, align 4, !dbg !492
  br label %for.cond3, !dbg !470, !llvm.loop !493

for.end17:                                        ; preds = %for.cond3
  br label %if.end18

if.end18:                                         ; preds = %for.end17, %for.end
  %21 = load i32*, i32** %dlti.addr, align 4, !dbg !494
  %arrayidx19 = getelementptr inbounds i32, i32* %21, i32 4, !dbg !494
  %22 = load i32, i32* %arrayidx19, align 4, !dbg !494
  %23 = load i32*, i32** %dlti.addr, align 4, !dbg !495
  %arrayidx20 = getelementptr inbounds i32, i32* %23, i32 5, !dbg !495
  store i32 %22, i32* %arrayidx20, align 4, !dbg !496
  %24 = load i32*, i32** %dlti.addr, align 4, !dbg !497
  %arrayidx21 = getelementptr inbounds i32, i32* %24, i32 3, !dbg !497
  %25 = load i32, i32* %arrayidx21, align 4, !dbg !497
  %26 = load i32*, i32** %dlti.addr, align 4, !dbg !498
  %arrayidx22 = getelementptr inbounds i32, i32* %26, i32 4, !dbg !498
  store i32 %25, i32* %arrayidx22, align 4, !dbg !499
  %27 = load i32*, i32** %dlti.addr, align 4, !dbg !500
  %arrayidx23 = getelementptr inbounds i32, i32* %27, i32 2, !dbg !500
  %28 = load i32, i32* %arrayidx23, align 4, !dbg !500
  %29 = load i32*, i32** %dlti.addr, align 4, !dbg !501
  %arrayidx24 = getelementptr inbounds i32, i32* %29, i32 3, !dbg !501
  store i32 %28, i32* %arrayidx24, align 4, !dbg !502
  %30 = load i32*, i32** %dlti.addr, align 4, !dbg !503
  %arrayidx25 = getelementptr inbounds i32, i32* %30, i32 0, !dbg !503
  %31 = load i32, i32* %arrayidx25, align 4, !dbg !503
  %32 = load i32*, i32** %dlti.addr, align 4, !dbg !504
  %arrayidx26 = getelementptr inbounds i32, i32* %32, i32 1, !dbg !504
  store i32 %31, i32* %arrayidx26, align 4, !dbg !505
  %33 = load i32, i32* %dlt.addr, align 4, !dbg !506
  %34 = load i32*, i32** %dlti.addr, align 4, !dbg !507
  %arrayidx27 = getelementptr inbounds i32, i32* %34, i32 0, !dbg !507
  store i32 %33, i32* %arrayidx27, align 4, !dbg !508
  ret void, !dbg !509
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @uppol2(i32 noundef %al1, i32 noundef %al2, i32 noundef %plt, i32 noundef %plt1, i32 noundef %plt2) #0 !dbg !510 {
entry:
  %al1.addr = alloca i32, align 4
  %al2.addr = alloca i32, align 4
  %plt.addr = alloca i32, align 4
  %plt1.addr = alloca i32, align 4
  %plt2.addr = alloca i32, align 4
  %wd2 = alloca i32, align 4
  %wd4 = alloca i32, align 4
  %apl2 = alloca i32, align 4
  store i32 %al1, i32* %al1.addr, align 4
  store i32 %al2, i32* %al2.addr, align 4
  store i32 %plt, i32* %plt.addr, align 4
  store i32 %plt1, i32* %plt1.addr, align 4
  store i32 %plt2, i32* %plt2.addr, align 4
  %0 = load i32, i32* %al1.addr, align 4, !dbg !511
  %mul = mul nsw i32 4, %0, !dbg !512
  store i32 %mul, i32* %wd2, align 4, !dbg !513
  %1 = load i32, i32* %plt.addr, align 4, !dbg !514
  %2 = load i32, i32* %plt1.addr, align 4, !dbg !515
  %mul1 = mul nsw i32 %1, %2, !dbg !516
  %cmp = icmp sge i32 %mul1, 0, !dbg !517
  br i1 %cmp, label %if.then, label %if.end, !dbg !518

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %wd2, align 4, !dbg !519
  %sub = sub nsw i32 0, %3, !dbg !520
  store i32 %sub, i32* %wd2, align 4, !dbg !521
  br label %if.end, !dbg !522

if.end:                                           ; preds = %if.then, %entry
  %4 = load i32, i32* %wd2, align 4, !dbg !523
  %shr = ashr i32 %4, 7, !dbg !524
  store i32 %shr, i32* %wd2, align 4, !dbg !525
  %5 = load i32, i32* %plt.addr, align 4, !dbg !526
  %6 = load i32, i32* %plt2.addr, align 4, !dbg !527
  %mul2 = mul nsw i32 %5, %6, !dbg !528
  %cmp3 = icmp sge i32 %mul2, 0, !dbg !529
  br i1 %cmp3, label %if.then4, label %if.else, !dbg !530

if.then4:                                         ; preds = %if.end
  %7 = load i32, i32* %wd2, align 4, !dbg !531
  %add = add nsw i32 %7, 128, !dbg !532
  store i32 %add, i32* %wd4, align 4, !dbg !533
  br label %if.end6, !dbg !534

if.else:                                          ; preds = %if.end
  %8 = load i32, i32* %wd2, align 4, !dbg !535
  %sub5 = sub nsw i32 %8, 128, !dbg !536
  store i32 %sub5, i32* %wd4, align 4, !dbg !537
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then4
  %9 = load i32, i32* %wd4, align 4, !dbg !538
  %10 = load i32, i32* %al2.addr, align 4, !dbg !539
  %mul7 = mul nsw i32 127, %10, !dbg !540
  %shr8 = ashr i32 %mul7, 7, !dbg !541
  %add9 = add nsw i32 %9, %shr8, !dbg !542
  store i32 %add9, i32* %apl2, align 4, !dbg !543
  %11 = load i32, i32* %apl2, align 4, !dbg !544
  %cmp10 = icmp sgt i32 %11, 12288, !dbg !545
  br i1 %cmp10, label %if.then11, label %if.end12, !dbg !544

if.then11:                                        ; preds = %if.end6
  store i32 12288, i32* %apl2, align 4, !dbg !546
  br label %if.end12, !dbg !547

if.end12:                                         ; preds = %if.then11, %if.end6
  %12 = load i32, i32* %apl2, align 4, !dbg !548
  %cmp13 = icmp slt i32 %12, -12288, !dbg !549
  br i1 %cmp13, label %if.then14, label %if.end15, !dbg !548

if.then14:                                        ; preds = %if.end12
  store i32 -12288, i32* %apl2, align 4, !dbg !550
  br label %if.end15, !dbg !551

if.end15:                                         ; preds = %if.then14, %if.end12
  %13 = load i32, i32* %apl2, align 4, !dbg !552
  ret i32 %13, !dbg !553
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @uppol1(i32 noundef %al1, i32 noundef %apl2, i32 noundef %plt, i32 noundef %plt1) #0 !dbg !554 {
entry:
  %al1.addr = alloca i32, align 4
  %apl2.addr = alloca i32, align 4
  %plt.addr = alloca i32, align 4
  %plt1.addr = alloca i32, align 4
  %wd2 = alloca i32, align 4
  %wd3 = alloca i32, align 4
  %apl1 = alloca i32, align 4
  store i32 %al1, i32* %al1.addr, align 4
  store i32 %apl2, i32* %apl2.addr, align 4
  store i32 %plt, i32* %plt.addr, align 4
  store i32 %plt1, i32* %plt1.addr, align 4
  %0 = load i32, i32* %al1.addr, align 4, !dbg !555
  %mul = mul nsw i32 %0, 255, !dbg !556
  %shr = ashr i32 %mul, 8, !dbg !557
  store i32 %shr, i32* %wd2, align 4, !dbg !558
  %1 = load i32, i32* %plt.addr, align 4, !dbg !559
  %2 = load i32, i32* %plt1.addr, align 4, !dbg !560
  %mul1 = mul nsw i32 %1, %2, !dbg !561
  %cmp = icmp sge i32 %mul1, 0, !dbg !562
  br i1 %cmp, label %if.then, label %if.else, !dbg !563

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %wd2, align 4, !dbg !564
  %add = add nsw i32 %3, 192, !dbg !565
  store i32 %add, i32* %apl1, align 4, !dbg !566
  br label %if.end, !dbg !567

if.else:                                          ; preds = %entry
  %4 = load i32, i32* %wd2, align 4, !dbg !568
  %sub = sub nsw i32 %4, 192, !dbg !569
  store i32 %sub, i32* %apl1, align 4, !dbg !570
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load i32, i32* %apl2.addr, align 4, !dbg !571
  %sub2 = sub nsw i32 15360, %5, !dbg !572
  store i32 %sub2, i32* %wd3, align 4, !dbg !573
  %6 = load i32, i32* %apl1, align 4, !dbg !574
  %7 = load i32, i32* %wd3, align 4, !dbg !575
  %cmp3 = icmp sgt i32 %6, %7, !dbg !576
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !574

if.then4:                                         ; preds = %if.end
  %8 = load i32, i32* %wd3, align 4, !dbg !577
  store i32 %8, i32* %apl1, align 4, !dbg !578
  br label %if.end5, !dbg !579

if.end5:                                          ; preds = %if.then4, %if.end
  %9 = load i32, i32* %apl1, align 4, !dbg !580
  %10 = load i32, i32* %wd3, align 4, !dbg !581
  %sub6 = sub nsw i32 0, %10, !dbg !582
  %cmp7 = icmp slt i32 %9, %sub6, !dbg !583
  br i1 %cmp7, label %if.then8, label %if.end10, !dbg !580

if.then8:                                         ; preds = %if.end5
  %11 = load i32, i32* %wd3, align 4, !dbg !584
  %sub9 = sub nsw i32 0, %11, !dbg !585
  store i32 %sub9, i32* %apl1, align 4, !dbg !586
  br label %if.end10, !dbg !587

if.end10:                                         ; preds = %if.then8, %if.end5
  %12 = load i32, i32* %apl1, align 4, !dbg !588
  ret i32 %12, !dbg !589
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @logsch(i32 noundef %ih, i32 noundef %nbh) #0 !dbg !590 {
entry:
  %ih.addr = alloca i32, align 4
  %nbh.addr = alloca i32, align 4
  %wd = alloca i32, align 4
  store i32 %ih, i32* %ih.addr, align 4
  store i32 %nbh, i32* %nbh.addr, align 4
  %0 = load i32, i32* %nbh.addr, align 4, !dbg !591
  %mul = mul nsw i32 %0, 127, !dbg !592
  %shr = ashr i32 %mul, 7, !dbg !593
  store i32 %shr, i32* %wd, align 4, !dbg !594
  %1 = load i32, i32* %wd, align 4, !dbg !595
  %2 = load i32, i32* %ih.addr, align 4, !dbg !596
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* @wh_code_table, i32 0, i32 %2, !dbg !597
  %3 = load i32, i32* %arrayidx, align 4, !dbg !597
  %add = add nsw i32 %1, %3, !dbg !598
  store i32 %add, i32* %nbh.addr, align 4, !dbg !599
  %4 = load i32, i32* %nbh.addr, align 4, !dbg !600
  %cmp = icmp slt i32 %4, 0, !dbg !601
  br i1 %cmp, label %if.then, label %if.end, !dbg !600

if.then:                                          ; preds = %entry
  store i32 0, i32* %nbh.addr, align 4, !dbg !602
  br label %if.end, !dbg !603

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, i32* %nbh.addr, align 4, !dbg !604
  %cmp1 = icmp sgt i32 %5, 22528, !dbg !605
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !604

if.then2:                                         ; preds = %if.end
  store i32 22528, i32* %nbh.addr, align 4, !dbg !606
  br label %if.end3, !dbg !607

if.end3:                                          ; preds = %if.then2, %if.end
  %6 = load i32, i32* %nbh.addr, align 4, !dbg !608
  ret i32 %6, !dbg !609
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @decode(i32 noundef %input) #0 !dbg !610 {
entry:
  %input.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %xa1 = alloca i32, align 4
  %xa2 = alloca i32, align 4
  %h_ptr = alloca i32*, align 4
  %ac_ptr = alloca i32*, align 4
  %ac_ptr1 = alloca i32*, align 4
  %ad_ptr = alloca i32*, align 4
  %ad_ptr1 = alloca i32*, align 4
  store i32 %input, i32* %input.addr, align 4
  %0 = load i32, i32* %input.addr, align 4, !dbg !611
  %and = and i32 %0, 63, !dbg !612
  store i32 %and, i32* @ilr, align 4, !dbg !613
  %1 = load i32, i32* %input.addr, align 4, !dbg !614
  %shr = ashr i32 %1, 6, !dbg !615
  store i32 %shr, i32* @ih, align 4, !dbg !616
  %call = call arm_aapcs_vfpcc i32 @filtez(i32* noundef getelementptr inbounds ([6 x i32], [6 x i32]* @dec_del_bpl, i32 0, i32 0), i32* noundef getelementptr inbounds ([6 x i32], [6 x i32]* @dec_del_dltx, i32 0, i32 0)) #1, !dbg !617
  store i32 %call, i32* @dec_szl, align 4, !dbg !618
  %2 = load i32, i32* @dec_rlt1, align 4, !dbg !619
  %3 = load i32, i32* @dec_al1, align 4, !dbg !620
  %4 = load i32, i32* @dec_rlt2, align 4, !dbg !621
  %5 = load i32, i32* @dec_al2, align 4, !dbg !622
  %call1 = call arm_aapcs_vfpcc i32 @filtep(i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #1, !dbg !623
  store i32 %call1, i32* @dec_spl, align 4, !dbg !624
  %6 = load i32, i32* @dec_spl, align 4, !dbg !625
  %7 = load i32, i32* @dec_szl, align 4, !dbg !626
  %add = add nsw i32 %6, %7, !dbg !627
  store i32 %add, i32* @dec_sl, align 4, !dbg !628
  %8 = load i32, i32* @dec_detl, align 4, !dbg !629
  %9 = load i32, i32* @ilr, align 4, !dbg !630
  %shr2 = ashr i32 %9, 2, !dbg !631
  %arrayidx = getelementptr inbounds [16 x i32], [16 x i32]* @qq4_code4_table, i32 0, i32 %shr2, !dbg !632
  %10 = load i32, i32* %arrayidx, align 4, !dbg !632
  %mul = mul nsw i32 %8, %10, !dbg !633
  %shr3 = ashr i32 %mul, 15, !dbg !634
  store i32 %shr3, i32* @dec_dlt, align 4, !dbg !635
  %11 = load i32, i32* @dec_detl, align 4, !dbg !636
  %12 = load i32, i32* @il, align 4, !dbg !637
  %arrayidx4 = getelementptr inbounds [64 x i32], [64 x i32]* @qq6_code6_table, i32 0, i32 %12, !dbg !638
  %13 = load i32, i32* %arrayidx4, align 4, !dbg !638
  %mul5 = mul nsw i32 %11, %13, !dbg !639
  %shr6 = ashr i32 %mul5, 15, !dbg !640
  store i32 %shr6, i32* @dl, align 4, !dbg !641
  %14 = load i32, i32* @dl, align 4, !dbg !642
  %15 = load i32, i32* @dec_sl, align 4, !dbg !643
  %add7 = add nsw i32 %14, %15, !dbg !644
  store i32 %add7, i32* @rl, align 4, !dbg !645
  %16 = load i32, i32* @ilr, align 4, !dbg !646
  %17 = load i32, i32* @dec_nbl, align 4, !dbg !647
  %call8 = call arm_aapcs_vfpcc i32 @logscl(i32 noundef %16, i32 noundef %17) #1, !dbg !648
  store i32 %call8, i32* @dec_nbl, align 4, !dbg !649
  %18 = load i32, i32* @dec_nbl, align 4, !dbg !650
  %call9 = call arm_aapcs_vfpcc i32 @scalel(i32 noundef %18, i32 noundef 8) #1, !dbg !651
  store i32 %call9, i32* @dec_detl, align 4, !dbg !652
  %19 = load i32, i32* @dec_dlt, align 4, !dbg !653
  %20 = load i32, i32* @dec_szl, align 4, !dbg !654
  %add10 = add nsw i32 %19, %20, !dbg !655
  store i32 %add10, i32* @dec_plt, align 4, !dbg !656
  %21 = load i32, i32* @dec_dlt, align 4, !dbg !657
  call arm_aapcs_vfpcc void @upzero(i32 noundef %21, i32* noundef getelementptr inbounds ([6 x i32], [6 x i32]* @dec_del_dltx, i32 0, i32 0), i32* noundef getelementptr inbounds ([6 x i32], [6 x i32]* @dec_del_bpl, i32 0, i32 0)) #1, !dbg !658
  %22 = load i32, i32* @dec_al1, align 4, !dbg !659
  %23 = load i32, i32* @dec_al2, align 4, !dbg !660
  %24 = load i32, i32* @dec_plt, align 4, !dbg !661
  %25 = load i32, i32* @dec_plt1, align 4, !dbg !662
  %26 = load i32, i32* @dec_plt2, align 4, !dbg !663
  %call11 = call arm_aapcs_vfpcc i32 @uppol2(i32 noundef %22, i32 noundef %23, i32 noundef %24, i32 noundef %25, i32 noundef %26) #1, !dbg !664
  store i32 %call11, i32* @dec_al2, align 4, !dbg !665
  %27 = load i32, i32* @dec_al1, align 4, !dbg !666
  %28 = load i32, i32* @dec_al2, align 4, !dbg !667
  %29 = load i32, i32* @dec_plt, align 4, !dbg !668
  %30 = load i32, i32* @dec_plt1, align 4, !dbg !669
  %call12 = call arm_aapcs_vfpcc i32 @uppol1(i32 noundef %27, i32 noundef %28, i32 noundef %29, i32 noundef %30) #1, !dbg !670
  store i32 %call12, i32* @dec_al1, align 4, !dbg !671
  %31 = load i32, i32* @dec_sl, align 4, !dbg !672
  %32 = load i32, i32* @dec_dlt, align 4, !dbg !673
  %add13 = add nsw i32 %31, %32, !dbg !674
  store i32 %add13, i32* @dec_rlt, align 4, !dbg !675
  %33 = load i32, i32* @dec_rlt1, align 4, !dbg !676
  store i32 %33, i32* @dec_rlt2, align 4, !dbg !677
  %34 = load i32, i32* @dec_rlt, align 4, !dbg !678
  store i32 %34, i32* @dec_rlt1, align 4, !dbg !679
  %35 = load i32, i32* @dec_plt1, align 4, !dbg !680
  store i32 %35, i32* @dec_plt2, align 4, !dbg !681
  %36 = load i32, i32* @dec_plt, align 4, !dbg !682
  store i32 %36, i32* @dec_plt1, align 4, !dbg !683
  %call14 = call arm_aapcs_vfpcc i32 @filtez(i32* noundef getelementptr inbounds ([6 x i32], [6 x i32]* @dec_del_bph, i32 0, i32 0), i32* noundef getelementptr inbounds ([6 x i32], [6 x i32]* @dec_del_dhx, i32 0, i32 0)) #1, !dbg !684
  store i32 %call14, i32* @dec_szh, align 4, !dbg !685
  %37 = load i32, i32* @dec_rh1, align 4, !dbg !686
  %38 = load i32, i32* @dec_ah1, align 4, !dbg !687
  %39 = load i32, i32* @dec_rh2, align 4, !dbg !688
  %40 = load i32, i32* @dec_ah2, align 4, !dbg !689
  %call15 = call arm_aapcs_vfpcc i32 @filtep(i32 noundef %37, i32 noundef %38, i32 noundef %39, i32 noundef %40) #1, !dbg !690
  store i32 %call15, i32* @dec_sph, align 4, !dbg !691
  %41 = load i32, i32* @dec_sph, align 4, !dbg !692
  %42 = load i32, i32* @dec_szh, align 4, !dbg !693
  %add16 = add nsw i32 %41, %42, !dbg !694
  store i32 %add16, i32* @dec_sh, align 4, !dbg !695
  %43 = load i32, i32* @dec_deth, align 4, !dbg !696
  %44 = load i32, i32* @ih, align 4, !dbg !697
  %arrayidx17 = getelementptr inbounds [4 x i32], [4 x i32]* @qq2_code2_table, i32 0, i32 %44, !dbg !698
  %45 = load i32, i32* %arrayidx17, align 4, !dbg !698
  %mul18 = mul nsw i32 %43, %45, !dbg !699
  %shr19 = ashr i32 %mul18, 15, !dbg !700
  store i32 %shr19, i32* @dec_dh, align 4, !dbg !701
  %46 = load i32, i32* @ih, align 4, !dbg !702
  %47 = load i32, i32* @dec_nbh, align 4, !dbg !703
  %call20 = call arm_aapcs_vfpcc i32 @logsch(i32 noundef %46, i32 noundef %47) #1, !dbg !704
  store i32 %call20, i32* @dec_nbh, align 4, !dbg !705
  %48 = load i32, i32* @dec_nbh, align 4, !dbg !706
  %call21 = call arm_aapcs_vfpcc i32 @scalel(i32 noundef %48, i32 noundef 10) #1, !dbg !707
  store i32 %call21, i32* @dec_deth, align 4, !dbg !708
  %49 = load i32, i32* @dec_dh, align 4, !dbg !709
  %50 = load i32, i32* @dec_szh, align 4, !dbg !710
  %add22 = add nsw i32 %49, %50, !dbg !711
  store i32 %add22, i32* @dec_ph, align 4, !dbg !712
  %51 = load i32, i32* @dec_dh, align 4, !dbg !713
  call arm_aapcs_vfpcc void @upzero(i32 noundef %51, i32* noundef getelementptr inbounds ([6 x i32], [6 x i32]* @dec_del_dhx, i32 0, i32 0), i32* noundef getelementptr inbounds ([6 x i32], [6 x i32]* @dec_del_bph, i32 0, i32 0)) #1, !dbg !714
  %52 = load i32, i32* @dec_ah1, align 4, !dbg !715
  %53 = load i32, i32* @dec_ah2, align 4, !dbg !716
  %54 = load i32, i32* @dec_ph, align 4, !dbg !717
  %55 = load i32, i32* @dec_ph1, align 4, !dbg !718
  %56 = load i32, i32* @dec_ph2, align 4, !dbg !719
  %call23 = call arm_aapcs_vfpcc i32 @uppol2(i32 noundef %52, i32 noundef %53, i32 noundef %54, i32 noundef %55, i32 noundef %56) #1, !dbg !720
  store i32 %call23, i32* @dec_ah2, align 4, !dbg !721
  %57 = load i32, i32* @dec_ah1, align 4, !dbg !722
  %58 = load i32, i32* @dec_ah2, align 4, !dbg !723
  %59 = load i32, i32* @dec_ph, align 4, !dbg !724
  %60 = load i32, i32* @dec_ph1, align 4, !dbg !725
  %call24 = call arm_aapcs_vfpcc i32 @uppol1(i32 noundef %57, i32 noundef %58, i32 noundef %59, i32 noundef %60) #1, !dbg !726
  store i32 %call24, i32* @dec_ah1, align 4, !dbg !727
  %61 = load i32, i32* @dec_sh, align 4, !dbg !728
  %62 = load i32, i32* @dec_dh, align 4, !dbg !729
  %add25 = add nsw i32 %61, %62, !dbg !730
  store i32 %add25, i32* @rh, align 4, !dbg !731
  %63 = load i32, i32* @dec_rh1, align 4, !dbg !732
  store i32 %63, i32* @dec_rh2, align 4, !dbg !733
  %64 = load i32, i32* @rh, align 4, !dbg !734
  store i32 %64, i32* @dec_rh1, align 4, !dbg !735
  %65 = load i32, i32* @dec_ph1, align 4, !dbg !736
  store i32 %65, i32* @dec_ph2, align 4, !dbg !737
  %66 = load i32, i32* @dec_ph, align 4, !dbg !738
  store i32 %66, i32* @dec_ph1, align 4, !dbg !739
  %67 = load i32, i32* @rl, align 4, !dbg !740
  %68 = load i32, i32* @rh, align 4, !dbg !741
  %sub = sub nsw i32 %67, %68, !dbg !742
  store i32 %sub, i32* @xd, align 4, !dbg !743
  %69 = load i32, i32* @rl, align 4, !dbg !744
  %70 = load i32, i32* @rh, align 4, !dbg !745
  %add26 = add nsw i32 %69, %70, !dbg !746
  store i32 %add26, i32* @xs, align 4, !dbg !747
  store i32* getelementptr inbounds ([24 x i32], [24 x i32]* @h, i32 0, i32 0), i32** %h_ptr, align 4, !dbg !748
  store i32* getelementptr inbounds ([11 x i32], [11 x i32]* @accumc, i32 0, i32 0), i32** %ac_ptr, align 4, !dbg !749
  store i32* getelementptr inbounds ([11 x i32], [11 x i32]* @accumd, i32 0, i32 0), i32** %ad_ptr, align 4, !dbg !750
  %71 = load i32, i32* @xd, align 4, !dbg !751
  %72 = load i32*, i32** %h_ptr, align 4, !dbg !752
  %incdec.ptr = getelementptr inbounds i32, i32* %72, i32 1, !dbg !752
  store i32* %incdec.ptr, i32** %h_ptr, align 4, !dbg !752
  %73 = load i32, i32* %72, align 4, !dbg !753
  %mul27 = mul nsw i32 %71, %73, !dbg !754
  store i32 %mul27, i32* %xa1, align 4, !dbg !755
  %74 = load i32, i32* @xs, align 4, !dbg !756
  %75 = load i32*, i32** %h_ptr, align 4, !dbg !757
  %incdec.ptr28 = getelementptr inbounds i32, i32* %75, i32 1, !dbg !757
  store i32* %incdec.ptr28, i32** %h_ptr, align 4, !dbg !757
  %76 = load i32, i32* %75, align 4, !dbg !758
  %mul29 = mul nsw i32 %74, %76, !dbg !759
  store i32 %mul29, i32* %xa2, align 4, !dbg !760
  store i32 0, i32* %i, align 4, !dbg !761
  br label %for.cond, !dbg !762

for.cond:                                         ; preds = %for.inc, %entry
  %77 = load i32, i32* %i, align 4, !dbg !763
  %cmp = icmp slt i32 %77, 10, !dbg !764
  br i1 %cmp, label %for.body, label %for.end, !dbg !765

for.body:                                         ; preds = %for.cond
  %78 = load i32*, i32** %ac_ptr, align 4, !dbg !766
  %incdec.ptr30 = getelementptr inbounds i32, i32* %78, i32 1, !dbg !766
  store i32* %incdec.ptr30, i32** %ac_ptr, align 4, !dbg !766
  %79 = load i32, i32* %78, align 4, !dbg !767
  %80 = load i32*, i32** %h_ptr, align 4, !dbg !768
  %incdec.ptr31 = getelementptr inbounds i32, i32* %80, i32 1, !dbg !768
  store i32* %incdec.ptr31, i32** %h_ptr, align 4, !dbg !768
  %81 = load i32, i32* %80, align 4, !dbg !769
  %mul32 = mul nsw i32 %79, %81, !dbg !770
  %82 = load i32, i32* %xa1, align 4, !dbg !771
  %add33 = add nsw i32 %82, %mul32, !dbg !771
  store i32 %add33, i32* %xa1, align 4, !dbg !771
  %83 = load i32*, i32** %ad_ptr, align 4, !dbg !772
  %incdec.ptr34 = getelementptr inbounds i32, i32* %83, i32 1, !dbg !772
  store i32* %incdec.ptr34, i32** %ad_ptr, align 4, !dbg !772
  %84 = load i32, i32* %83, align 4, !dbg !773
  %85 = load i32*, i32** %h_ptr, align 4, !dbg !774
  %incdec.ptr35 = getelementptr inbounds i32, i32* %85, i32 1, !dbg !774
  store i32* %incdec.ptr35, i32** %h_ptr, align 4, !dbg !774
  %86 = load i32, i32* %85, align 4, !dbg !775
  %mul36 = mul nsw i32 %84, %86, !dbg !776
  %87 = load i32, i32* %xa2, align 4, !dbg !777
  %add37 = add nsw i32 %87, %mul36, !dbg !777
  store i32 %add37, i32* %xa2, align 4, !dbg !777
  br label %for.inc, !dbg !778

for.inc:                                          ; preds = %for.body
  %88 = load i32, i32* %i, align 4, !dbg !779
  %inc = add nsw i32 %88, 1, !dbg !779
  store i32 %inc, i32* %i, align 4, !dbg !779
  br label %for.cond, !dbg !765, !llvm.loop !780

for.end:                                          ; preds = %for.cond
  %89 = load i32*, i32** %ac_ptr, align 4, !dbg !781
  %90 = load i32, i32* %89, align 4, !dbg !782
  %91 = load i32*, i32** %h_ptr, align 4, !dbg !783
  %incdec.ptr38 = getelementptr inbounds i32, i32* %91, i32 1, !dbg !783
  store i32* %incdec.ptr38, i32** %h_ptr, align 4, !dbg !783
  %92 = load i32, i32* %91, align 4, !dbg !784
  %mul39 = mul nsw i32 %90, %92, !dbg !785
  %93 = load i32, i32* %xa1, align 4, !dbg !786
  %add40 = add nsw i32 %93, %mul39, !dbg !786
  store i32 %add40, i32* %xa1, align 4, !dbg !786
  %94 = load i32*, i32** %ad_ptr, align 4, !dbg !787
  %95 = load i32, i32* %94, align 4, !dbg !788
  %96 = load i32*, i32** %h_ptr, align 4, !dbg !789
  %incdec.ptr41 = getelementptr inbounds i32, i32* %96, i32 1, !dbg !789
  store i32* %incdec.ptr41, i32** %h_ptr, align 4, !dbg !789
  %97 = load i32, i32* %96, align 4, !dbg !790
  %mul42 = mul nsw i32 %95, %97, !dbg !791
  %98 = load i32, i32* %xa2, align 4, !dbg !792
  %add43 = add nsw i32 %98, %mul42, !dbg !792
  store i32 %add43, i32* %xa2, align 4, !dbg !792
  %99 = load i32, i32* %xa1, align 4, !dbg !793
  %shr44 = ashr i32 %99, 14, !dbg !794
  store i32 %shr44, i32* @xout1, align 4, !dbg !795
  %100 = load i32, i32* %xa2, align 4, !dbg !796
  %shr45 = ashr i32 %100, 14, !dbg !797
  store i32 %shr45, i32* @xout2, align 4, !dbg !798
  %101 = load i32*, i32** %ac_ptr, align 4, !dbg !799
  %add.ptr = getelementptr inbounds i32, i32* %101, i32 -1, !dbg !800
  store i32* %add.ptr, i32** %ac_ptr1, align 4, !dbg !801
  %102 = load i32*, i32** %ad_ptr, align 4, !dbg !802
  %add.ptr46 = getelementptr inbounds i32, i32* %102, i32 -1, !dbg !803
  store i32* %add.ptr46, i32** %ad_ptr1, align 4, !dbg !804
  store i32 0, i32* %i, align 4, !dbg !805
  br label %for.cond47, !dbg !806

for.cond47:                                       ; preds = %for.inc54, %for.end
  %103 = load i32, i32* %i, align 4, !dbg !807
  %cmp48 = icmp slt i32 %103, 10, !dbg !808
  br i1 %cmp48, label %for.body49, label %for.end56, !dbg !809

for.body49:                                       ; preds = %for.cond47
  %104 = load i32*, i32** %ac_ptr1, align 4, !dbg !810
  %incdec.ptr50 = getelementptr inbounds i32, i32* %104, i32 -1, !dbg !810
  store i32* %incdec.ptr50, i32** %ac_ptr1, align 4, !dbg !810
  %105 = load i32, i32* %104, align 4, !dbg !811
  %106 = load i32*, i32** %ac_ptr, align 4, !dbg !812
  %incdec.ptr51 = getelementptr inbounds i32, i32* %106, i32 -1, !dbg !812
  store i32* %incdec.ptr51, i32** %ac_ptr, align 4, !dbg !812
  store i32 %105, i32* %106, align 4, !dbg !813
  %107 = load i32*, i32** %ad_ptr1, align 4, !dbg !814
  %incdec.ptr52 = getelementptr inbounds i32, i32* %107, i32 -1, !dbg !814
  store i32* %incdec.ptr52, i32** %ad_ptr1, align 4, !dbg !814
  %108 = load i32, i32* %107, align 4, !dbg !815
  %109 = load i32*, i32** %ad_ptr, align 4, !dbg !816
  %incdec.ptr53 = getelementptr inbounds i32, i32* %109, i32 -1, !dbg !816
  store i32* %incdec.ptr53, i32** %ad_ptr, align 4, !dbg !816
  store i32 %108, i32* %109, align 4, !dbg !817
  br label %for.inc54, !dbg !818

for.inc54:                                        ; preds = %for.body49
  %110 = load i32, i32* %i, align 4, !dbg !819
  %inc55 = add nsw i32 %110, 1, !dbg !819
  store i32 %inc55, i32* %i, align 4, !dbg !819
  br label %for.cond47, !dbg !809, !llvm.loop !820

for.end56:                                        ; preds = %for.cond47
  %111 = load i32, i32* @xd, align 4, !dbg !821
  %112 = load i32*, i32** %ac_ptr, align 4, !dbg !822
  store i32 %111, i32* %112, align 4, !dbg !823
  %113 = load i32, i32* @xs, align 4, !dbg !824
  %114 = load i32*, i32** %ad_ptr, align 4, !dbg !825
  store i32 %113, i32* %114, align 4, !dbg !826
  ret void, !dbg !827
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @reset() #0 !dbg !828 {
entry:
  %i = alloca i32, align 4
  store i32 32, i32* @dec_detl, align 4, !dbg !829
  store i32 32, i32* @detl, align 4, !dbg !830
  store i32 8, i32* @dec_deth, align 4, !dbg !831
  store i32 8, i32* @deth, align 4, !dbg !832
  store i32 0, i32* @rlt2, align 4, !dbg !833
  store i32 0, i32* @rlt1, align 4, !dbg !834
  store i32 0, i32* @plt2, align 4, !dbg !835
  store i32 0, i32* @plt1, align 4, !dbg !836
  store i32 0, i32* @al2, align 4, !dbg !837
  store i32 0, i32* @al1, align 4, !dbg !838
  store i32 0, i32* @nbl, align 4, !dbg !839
  store i32 0, i32* @rh2, align 4, !dbg !840
  store i32 0, i32* @rh1, align 4, !dbg !841
  store i32 0, i32* @ph2, align 4, !dbg !842
  store i32 0, i32* @ph1, align 4, !dbg !843
  store i32 0, i32* @ah2, align 4, !dbg !844
  store i32 0, i32* @ah1, align 4, !dbg !845
  store i32 0, i32* @nbh, align 4, !dbg !846
  store i32 0, i32* @dec_rlt2, align 4, !dbg !847
  store i32 0, i32* @dec_rlt1, align 4, !dbg !848
  store i32 0, i32* @dec_plt2, align 4, !dbg !849
  store i32 0, i32* @dec_plt1, align 4, !dbg !850
  store i32 0, i32* @dec_al2, align 4, !dbg !851
  store i32 0, i32* @dec_al1, align 4, !dbg !852
  store i32 0, i32* @dec_nbl, align 4, !dbg !853
  store i32 0, i32* @dec_rh2, align 4, !dbg !854
  store i32 0, i32* @dec_rh1, align 4, !dbg !855
  store i32 0, i32* @dec_ph2, align 4, !dbg !856
  store i32 0, i32* @dec_ph1, align 4, !dbg !857
  store i32 0, i32* @dec_ah2, align 4, !dbg !858
  store i32 0, i32* @dec_ah1, align 4, !dbg !859
  store i32 0, i32* @dec_nbh, align 4, !dbg !860
  store i32 0, i32* %i, align 4, !dbg !861
  br label %for.cond, !dbg !862

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !863
  %cmp = icmp slt i32 %0, 6, !dbg !864
  br i1 %cmp, label %for.body, label %for.end, !dbg !865

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4, !dbg !866
  %arrayidx = getelementptr inbounds [6 x i32], [6 x i32]* @delay_dltx, i32 0, i32 %1, !dbg !867
  store i32 0, i32* %arrayidx, align 4, !dbg !868
  %2 = load i32, i32* %i, align 4, !dbg !869
  %arrayidx1 = getelementptr inbounds [6 x i32], [6 x i32]* @delay_dhx, i32 0, i32 %2, !dbg !870
  store i32 0, i32* %arrayidx1, align 4, !dbg !871
  %3 = load i32, i32* %i, align 4, !dbg !872
  %arrayidx2 = getelementptr inbounds [6 x i32], [6 x i32]* @dec_del_dltx, i32 0, i32 %3, !dbg !873
  store i32 0, i32* %arrayidx2, align 4, !dbg !874
  %4 = load i32, i32* %i, align 4, !dbg !875
  %arrayidx3 = getelementptr inbounds [6 x i32], [6 x i32]* @dec_del_dhx, i32 0, i32 %4, !dbg !876
  store i32 0, i32* %arrayidx3, align 4, !dbg !877
  br label %for.inc, !dbg !878

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4, !dbg !879
  %inc = add nsw i32 %5, 1, !dbg !879
  store i32 %inc, i32* %i, align 4, !dbg !879
  br label %for.cond, !dbg !865, !llvm.loop !880

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4, !dbg !881
  br label %for.cond4, !dbg !882

for.cond4:                                        ; preds = %for.inc11, %for.end
  %6 = load i32, i32* %i, align 4, !dbg !883
  %cmp5 = icmp slt i32 %6, 6, !dbg !884
  br i1 %cmp5, label %for.body6, label %for.end13, !dbg !885

for.body6:                                        ; preds = %for.cond4
  %7 = load i32, i32* %i, align 4, !dbg !886
  %arrayidx7 = getelementptr inbounds [6 x i32], [6 x i32]* @delay_bpl, i32 0, i32 %7, !dbg !887
  store i32 0, i32* %arrayidx7, align 4, !dbg !888
  %8 = load i32, i32* %i, align 4, !dbg !889
  %arrayidx8 = getelementptr inbounds [6 x i32], [6 x i32]* @delay_bph, i32 0, i32 %8, !dbg !890
  store i32 0, i32* %arrayidx8, align 4, !dbg !891
  %9 = load i32, i32* %i, align 4, !dbg !892
  %arrayidx9 = getelementptr inbounds [6 x i32], [6 x i32]* @dec_del_bpl, i32 0, i32 %9, !dbg !893
  store i32 0, i32* %arrayidx9, align 4, !dbg !894
  %10 = load i32, i32* %i, align 4, !dbg !895
  %arrayidx10 = getelementptr inbounds [6 x i32], [6 x i32]* @dec_del_bph, i32 0, i32 %10, !dbg !896
  store i32 0, i32* %arrayidx10, align 4, !dbg !897
  br label %for.inc11, !dbg !898

for.inc11:                                        ; preds = %for.body6
  %11 = load i32, i32* %i, align 4, !dbg !899
  %inc12 = add nsw i32 %11, 1, !dbg !899
  store i32 %inc12, i32* %i, align 4, !dbg !899
  br label %for.cond4, !dbg !885, !llvm.loop !900

for.end13:                                        ; preds = %for.cond4
  store i32 0, i32* %i, align 4, !dbg !901
  br label %for.cond14, !dbg !902

for.cond14:                                       ; preds = %for.inc18, %for.end13
  %12 = load i32, i32* %i, align 4, !dbg !903
  %cmp15 = icmp slt i32 %12, 23, !dbg !904
  br i1 %cmp15, label %for.body16, label %for.end20, !dbg !905

for.body16:                                       ; preds = %for.cond14
  %13 = load i32, i32* %i, align 4, !dbg !906
  %arrayidx17 = getelementptr inbounds [24 x i32], [24 x i32]* @tqmf, i32 0, i32 %13, !dbg !907
  store i32 0, i32* %arrayidx17, align 4, !dbg !908
  br label %for.inc18, !dbg !907

for.inc18:                                        ; preds = %for.body16
  %14 = load i32, i32* %i, align 4, !dbg !909
  %inc19 = add nsw i32 %14, 1, !dbg !909
  store i32 %inc19, i32* %i, align 4, !dbg !909
  br label %for.cond14, !dbg !905, !llvm.loop !910

for.end20:                                        ; preds = %for.cond14
  store i32 0, i32* %i, align 4, !dbg !912
  br label %for.cond21, !dbg !913

for.cond21:                                       ; preds = %for.inc26, %for.end20
  %15 = load i32, i32* %i, align 4, !dbg !914
  %cmp22 = icmp slt i32 %15, 11, !dbg !915
  br i1 %cmp22, label %for.body23, label %for.end28, !dbg !916

for.body23:                                       ; preds = %for.cond21
  %16 = load i32, i32* %i, align 4, !dbg !917
  %arrayidx24 = getelementptr inbounds [11 x i32], [11 x i32]* @accumc, i32 0, i32 %16, !dbg !918
  store i32 0, i32* %arrayidx24, align 4, !dbg !919
  %17 = load i32, i32* %i, align 4, !dbg !920
  %arrayidx25 = getelementptr inbounds [11 x i32], [11 x i32]* @accumd, i32 0, i32 %17, !dbg !921
  store i32 0, i32* %arrayidx25, align 4, !dbg !922
  br label %for.inc26, !dbg !923

for.inc26:                                        ; preds = %for.body23
  %18 = load i32, i32* %i, align 4, !dbg !924
  %inc27 = add nsw i32 %18, 1, !dbg !924
  store i32 %inc27, i32* %i, align 4, !dbg !924
  br label %for.cond21, !dbg !916, !llvm.loop !925

for.end28:                                        ; preds = %for.cond21
  ret void, !dbg !926
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @adpcm() #0 !dbg !927 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %f = alloca i32, align 4
  call arm_aapcs_vfpcc void @reset() #1, !dbg !928
  store i32 10, i32* %j, align 4, !dbg !929
  store i32 2000, i32* %f, align 4, !dbg !930
  store i32 0, i32* %i, align 4, !dbg !931
  br label %for.cond, !dbg !932

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !933
  %cmp = icmp slt i32 %0, 3, !dbg !934
  br i1 %cmp, label %for.body, label %for.end, !dbg !935

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %j, align 4, !dbg !936
  %2 = load i32, i32* %f, align 4, !dbg !937
  %mul = mul nsw i32 %2, 3141, !dbg !938
  %3 = load i32, i32* %i, align 4, !dbg !939
  %mul1 = mul nsw i32 %mul, %3, !dbg !940
  %call = call arm_aapcs_vfpcc i32 @my_cos(i32 noundef %mul1) #1, !dbg !941
  %mul2 = mul nsw i32 %1, %call, !dbg !942
  %4 = load i32, i32* %i, align 4, !dbg !943
  %arrayidx = getelementptr inbounds [6 x i32], [6 x i32]* @adpcm.test_data, i32 0, i32 %4, !dbg !944
  store i32 %mul2, i32* %arrayidx, align 4, !dbg !945
  br label %for.inc, !dbg !946

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4, !dbg !947
  %inc = add nsw i32 %5, 1, !dbg !947
  store i32 %inc, i32* %i, align 4, !dbg !947
  br label %for.cond, !dbg !935, !llvm.loop !948

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4, !dbg !949
  br label %for.cond3, !dbg !950

for.cond3:                                        ; preds = %for.inc10, %for.end
  %6 = load i32, i32* %i, align 4, !dbg !951
  %cmp4 = icmp slt i32 %6, 4, !dbg !952
  br i1 %cmp4, label %for.body5, label %for.end12, !dbg !953

for.body5:                                        ; preds = %for.cond3
  %7 = load i32, i32* %i, align 4, !dbg !954
  %arrayidx6 = getelementptr inbounds [6 x i32], [6 x i32]* @adpcm.test_data, i32 0, i32 %7, !dbg !955
  %8 = load i32, i32* %arrayidx6, align 4, !dbg !955
  %9 = load i32, i32* %i, align 4, !dbg !956
  %add = add nsw i32 %9, 1, !dbg !957
  %arrayidx7 = getelementptr inbounds [6 x i32], [6 x i32]* @adpcm.test_data, i32 0, i32 %add, !dbg !958
  %10 = load i32, i32* %arrayidx7, align 4, !dbg !958
  %call8 = call arm_aapcs_vfpcc i32 @encode(i32 noundef %8, i32 noundef %10) #1, !dbg !959
  %11 = load i32, i32* %i, align 4, !dbg !960
  %div = sdiv i32 %11, 2, !dbg !961
  %arrayidx9 = getelementptr inbounds [3 x i32], [3 x i32]* @adpcm.compressed, i32 0, i32 %div, !dbg !962
  store i32 %call8, i32* %arrayidx9, align 4, !dbg !963
  br label %for.inc10, !dbg !962

for.inc10:                                        ; preds = %for.body5
  %12 = load i32, i32* %i, align 4, !dbg !964
  %add11 = add nsw i32 %12, 2, !dbg !964
  store i32 %add11, i32* %i, align 4, !dbg !964
  br label %for.cond3, !dbg !953, !llvm.loop !965

for.end12:                                        ; preds = %for.cond3
  store i32 0, i32* %i, align 4, !dbg !967
  br label %for.cond13, !dbg !968

for.cond13:                                       ; preds = %for.inc21, %for.end12
  %13 = load i32, i32* %i, align 4, !dbg !969
  %cmp14 = icmp slt i32 %13, 4, !dbg !970
  br i1 %cmp14, label %for.body15, label %for.end23, !dbg !971

for.body15:                                       ; preds = %for.cond13
  %14 = load i32, i32* %i, align 4, !dbg !972
  %div16 = sdiv i32 %14, 2, !dbg !973
  %arrayidx17 = getelementptr inbounds [3 x i32], [3 x i32]* @adpcm.compressed, i32 0, i32 %div16, !dbg !974
  %15 = load i32, i32* %arrayidx17, align 4, !dbg !974
  call arm_aapcs_vfpcc void @decode(i32 noundef %15) #1, !dbg !975
  %16 = load i32, i32* @xout1, align 4, !dbg !976
  %17 = load i32, i32* %i, align 4, !dbg !977
  %arrayidx18 = getelementptr inbounds [6 x i32], [6 x i32]* @adpcm.result, i32 0, i32 %17, !dbg !978
  store i32 %16, i32* %arrayidx18, align 4, !dbg !979
  %18 = load i32, i32* @xout2, align 4, !dbg !980
  %19 = load i32, i32* %i, align 4, !dbg !981
  %add19 = add nsw i32 %19, 1, !dbg !982
  %arrayidx20 = getelementptr inbounds [6 x i32], [6 x i32]* @adpcm.result, i32 0, i32 %add19, !dbg !983
  store i32 %18, i32* %arrayidx20, align 4, !dbg !984
  br label %for.inc21, !dbg !985

for.inc21:                                        ; preds = %for.body15
  %20 = load i32, i32* %i, align 4, !dbg !986
  %add22 = add nsw i32 %20, 2, !dbg !986
  store i32 %add22, i32* %i, align 4, !dbg !986
  br label %for.cond13, !dbg !971, !llvm.loop !987

for.end23:                                        ; preds = %for.cond13
  %21 = load i32, i32* %i, align 4, !dbg !988
  %arrayidx24 = getelementptr inbounds [6 x i32], [6 x i32]* @adpcm.result, i32 0, i32 %21, !dbg !989
  %22 = load i32, i32* %arrayidx24, align 4, !dbg !989
  %23 = load i32, i32* %i, align 4, !dbg !990
  %add25 = add nsw i32 %23, 1, !dbg !991
  %arrayidx26 = getelementptr inbounds [6 x i32], [6 x i32]* @adpcm.result, i32 0, i32 %add25, !dbg !992
  %24 = load i32, i32* %arrayidx26, align 4, !dbg !992
  %add27 = add nsw i32 %22, %24, !dbg !993
  ret i32 %add27, !dbg !994
}

attributes #0 = { noinline nounwind "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #1 = { nobuiltin "no-builtins" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 14.0.6 (git@github.com:RTS-SYSU/LLVM-TA.git b7f9c4ccdebc6c37532ddd772889e5f0ff989c79)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/workspaces/llvmta/testcases/wcet_bench/adpcm.c", directory: "/workspaces/llvmta/testcases/util_scripts", checksumkind: CSK_MD5, checksum: "7b37186db517272045e59fe9f4476342")
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
!12 = distinct !DISubprogram(name: "my_abs", scope: !13, file: !13, line: 265, type: !14, scopeLine: 266, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!13 = !DIFile(filename: "wcet_bench/adpcm.c", directory: "/workspaces/llvmta/testcases", checksumkind: CSK_MD5, checksum: "7b37186db517272045e59fe9f4476342")
!14 = !DISubroutineType(types: !15)
!15 = !{}
!16 = !DILocation(line: 269, column: 7, scope: !12)
!17 = !DILocation(line: 269, column: 9, scope: !12)
!18 = !DILocation(line: 269, column: 19, scope: !12)
!19 = !DILocation(line: 269, column: 17, scope: !12)
!20 = !DILocation(line: 269, column: 15, scope: !12)
!21 = !DILocation(line: 270, column: 13, scope: !12)
!22 = !DILocation(line: 270, column: 12, scope: !12)
!23 = !DILocation(line: 270, column: 10, scope: !12)
!24 = !DILocation(line: 271, column: 10, scope: !12)
!25 = !DILocation(line: 271, column: 3, scope: !12)
!26 = distinct !DISubprogram(name: "my_fabs", scope: !13, file: !13, line: 275, type: !14, scopeLine: 276, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!27 = !DILocation(line: 279, column: 7, scope: !26)
!28 = !DILocation(line: 279, column: 9, scope: !26)
!29 = !DILocation(line: 279, column: 19, scope: !26)
!30 = !DILocation(line: 279, column: 17, scope: !26)
!31 = !DILocation(line: 279, column: 15, scope: !26)
!32 = !DILocation(line: 280, column: 13, scope: !26)
!33 = !DILocation(line: 280, column: 12, scope: !26)
!34 = !DILocation(line: 280, column: 10, scope: !26)
!35 = !DILocation(line: 281, column: 10, scope: !26)
!36 = !DILocation(line: 281, column: 3, scope: !26)
!37 = distinct !DISubprogram(name: "my_sin", scope: !13, file: !13, line: 284, type: !14, scopeLine: 285, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!38 = !DILocation(line: 287, column: 7, scope: !37)
!39 = !DILocation(line: 289, column: 7, scope: !37)
!40 = !DILocation(line: 292, column: 3, scope: !37)
!41 = !DILocation(line: 292, column: 10, scope: !37)
!42 = !DILocation(line: 292, column: 14, scope: !37)
!43 = !DILocation(line: 293, column: 11, scope: !37)
!44 = distinct !{!44, !40, !45, !46}
!45 = !DILocation(line: 293, column: 16, scope: !37)
!46 = !{!"llvm.loop.mustprogress"}
!47 = !DILocation(line: 295, column: 3, scope: !37)
!48 = !DILocation(line: 295, column: 10, scope: !37)
!49 = !DILocation(line: 295, column: 14, scope: !37)
!50 = !DILocation(line: 296, column: 11, scope: !37)
!51 = distinct !{!51, !47, !52, !46}
!52 = !DILocation(line: 296, column: 16, scope: !37)
!53 = !DILocation(line: 297, column: 11, scope: !37)
!54 = !DILocation(line: 297, column: 9, scope: !37)
!55 = !DILocation(line: 298, column: 10, scope: !37)
!56 = !DILocation(line: 298, column: 8, scope: !37)
!57 = !DILocation(line: 299, column: 11, scope: !37)
!58 = !DILocation(line: 299, column: 21, scope: !37)
!59 = !DILocation(line: 299, column: 25, scope: !37)
!60 = !DILocation(line: 299, column: 24, scope: !37)
!61 = !DILocation(line: 299, column: 19, scope: !37)
!62 = !DILocation(line: 299, column: 16, scope: !37)
!63 = !DILocation(line: 300, column: 12, scope: !37)
!64 = !DILocation(line: 300, column: 10, scope: !37)
!65 = !DILocation(line: 300, column: 24, scope: !37)
!66 = !DILocation(line: 300, column: 22, scope: !37)
!67 = !DILocation(line: 300, column: 28, scope: !37)
!68 = !DILocation(line: 300, column: 17, scope: !37)
!69 = !DILocation(line: 299, column: 32, scope: !37)
!70 = !DILocation(line: 299, column: 8, scope: !37)
!71 = !DILocation(line: 301, column: 9, scope: !37)
!72 = !DILocation(line: 301, column: 15, scope: !37)
!73 = !DILocation(line: 301, column: 13, scope: !37)
!74 = !DILocation(line: 301, column: 7, scope: !37)
!75 = !DILocation(line: 302, column: 6, scope: !37)
!76 = !DILocation(line: 305, column: 3, scope: !37)
!77 = !DILocation(line: 305, column: 17, scope: !37)
!78 = !DILocation(line: 305, column: 9, scope: !37)
!79 = !DILocation(line: 305, column: 23, scope: !37)
!80 = !DILocation(line: 306, column: 13, scope: !37)
!81 = !DILocation(line: 306, column: 23, scope: !37)
!82 = !DILocation(line: 306, column: 27, scope: !37)
!83 = !DILocation(line: 306, column: 26, scope: !37)
!84 = !DILocation(line: 306, column: 21, scope: !37)
!85 = !DILocation(line: 306, column: 18, scope: !37)
!86 = !DILocation(line: 307, column: 8, scope: !37)
!87 = !DILocation(line: 307, column: 6, scope: !37)
!88 = !DILocation(line: 307, column: 20, scope: !37)
!89 = !DILocation(line: 307, column: 18, scope: !37)
!90 = !DILocation(line: 307, column: 24, scope: !37)
!91 = !DILocation(line: 307, column: 13, scope: !37)
!92 = !DILocation(line: 306, column: 34, scope: !37)
!93 = !DILocation(line: 306, column: 10, scope: !37)
!94 = !DILocation(line: 308, column: 11, scope: !37)
!95 = !DILocation(line: 308, column: 17, scope: !37)
!96 = !DILocation(line: 308, column: 15, scope: !37)
!97 = !DILocation(line: 308, column: 9, scope: !37)
!98 = !DILocation(line: 309, column: 8, scope: !37)
!99 = distinct !{!99, !76, !100, !46}
!100 = !DILocation(line: 310, column: 3, scope: !37)
!101 = !DILocation(line: 312, column: 10, scope: !37)
!102 = !DILocation(line: 312, column: 3, scope: !37)
!103 = distinct !DISubprogram(name: "my_cos", scope: !13, file: !13, line: 316, type: !14, scopeLine: 317, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!104 = !DILocation(line: 318, column: 28, scope: !103)
!105 = !DILocation(line: 318, column: 26, scope: !103)
!106 = !DILocation(line: 318, column: 11, scope: !103)
!107 = !DILocation(line: 318, column: 3, scope: !103)
!108 = distinct !DISubprogram(name: "encode", scope: !13, file: !13, line: 323, type: !14, scopeLine: 324, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!109 = !DILocation(line: 331, column: 11, scope: !108)
!110 = !DILocation(line: 332, column: 14, scope: !108)
!111 = !DILocation(line: 333, column: 26, scope: !108)
!112 = !DILocation(line: 333, column: 17, scope: !108)
!113 = !DILocation(line: 333, column: 39, scope: !108)
!114 = !DILocation(line: 333, column: 33, scope: !108)
!115 = !DILocation(line: 333, column: 30, scope: !108)
!116 = !DILocation(line: 333, column: 8, scope: !108)
!117 = !DILocation(line: 334, column: 26, scope: !108)
!118 = !DILocation(line: 334, column: 17, scope: !108)
!119 = !DILocation(line: 334, column: 39, scope: !108)
!120 = !DILocation(line: 334, column: 33, scope: !108)
!121 = !DILocation(line: 334, column: 30, scope: !108)
!122 = !DILocation(line: 334, column: 8, scope: !108)
!123 = !DILocation(line: 337, column: 11, scope: !108)
!124 = !DILocation(line: 337, column: 9, scope: !108)
!125 = !DILocation(line: 337, column: 17, scope: !108)
!126 = !DILocation(line: 337, column: 19, scope: !108)
!127 = !DILocation(line: 337, column: 5, scope: !108)
!128 = !DILocation(line: 338, column: 31, scope: !108)
!129 = !DILocation(line: 338, column: 22, scope: !108)
!130 = !DILocation(line: 338, column: 44, scope: !108)
!131 = !DILocation(line: 338, column: 38, scope: !108)
!132 = !DILocation(line: 338, column: 35, scope: !108)
!133 = !DILocation(line: 338, column: 12, scope: !108)
!134 = !DILocation(line: 339, column: 31, scope: !108)
!135 = !DILocation(line: 339, column: 22, scope: !108)
!136 = !DILocation(line: 339, column: 44, scope: !108)
!137 = !DILocation(line: 339, column: 38, scope: !108)
!138 = !DILocation(line: 339, column: 35, scope: !108)
!139 = !DILocation(line: 339, column: 12, scope: !108)
!140 = !DILocation(line: 340, column: 5, scope: !108)
!141 = !DILocation(line: 337, column: 27, scope: !108)
!142 = distinct !{!142, !127, !140, !46}
!143 = !DILocation(line: 342, column: 27, scope: !108)
!144 = !DILocation(line: 342, column: 18, scope: !108)
!145 = !DILocation(line: 342, column: 40, scope: !108)
!146 = !DILocation(line: 342, column: 34, scope: !108)
!147 = !DILocation(line: 342, column: 31, scope: !108)
!148 = !DILocation(line: 342, column: 8, scope: !108)
!149 = !DILocation(line: 343, column: 19, scope: !108)
!150 = !DILocation(line: 343, column: 18, scope: !108)
!151 = !DILocation(line: 343, column: 38, scope: !108)
!152 = !DILocation(line: 343, column: 32, scope: !108)
!153 = !DILocation(line: 343, column: 29, scope: !108)
!154 = !DILocation(line: 343, column: 8, scope: !108)
!155 = !DILocation(line: 346, column: 17, scope: !108)
!156 = !DILocation(line: 346, column: 26, scope: !108)
!157 = !DILocation(line: 346, column: 15, scope: !108)
!158 = !DILocation(line: 348, column: 11, scope: !108)
!159 = !DILocation(line: 348, column: 9, scope: !108)
!160 = !DILocation(line: 348, column: 17, scope: !108)
!161 = !DILocation(line: 348, column: 19, scope: !108)
!162 = !DILocation(line: 348, column: 5, scope: !108)
!163 = !DILocation(line: 348, column: 55, scope: !108)
!164 = !DILocation(line: 348, column: 45, scope: !108)
!165 = !DILocation(line: 348, column: 40, scope: !108)
!166 = !DILocation(line: 348, column: 43, scope: !108)
!167 = !DILocation(line: 348, column: 31, scope: !108)
!168 = !DILocation(line: 348, column: 27, scope: !108)
!169 = distinct !{!169, !162, !163, !46}
!170 = !DILocation(line: 349, column: 19, scope: !108)
!171 = !DILocation(line: 349, column: 14, scope: !108)
!172 = !DILocation(line: 349, column: 17, scope: !108)
!173 = !DILocation(line: 350, column: 17, scope: !108)
!174 = !DILocation(line: 350, column: 6, scope: !108)
!175 = !DILocation(line: 350, column: 15, scope: !108)
!176 = !DILocation(line: 353, column: 11, scope: !108)
!177 = !DILocation(line: 353, column: 16, scope: !108)
!178 = !DILocation(line: 353, column: 14, scope: !108)
!179 = !DILocation(line: 353, column: 20, scope: !108)
!180 = !DILocation(line: 353, column: 8, scope: !108)
!181 = !DILocation(line: 354, column: 11, scope: !108)
!182 = !DILocation(line: 354, column: 16, scope: !108)
!183 = !DILocation(line: 354, column: 14, scope: !108)
!184 = !DILocation(line: 354, column: 20, scope: !108)
!185 = !DILocation(line: 354, column: 8, scope: !108)
!186 = !DILocation(line: 361, column: 11, scope: !108)
!187 = !DILocation(line: 361, column: 9, scope: !108)
!188 = !DILocation(line: 364, column: 18, scope: !108)
!189 = !DILocation(line: 364, column: 23, scope: !108)
!190 = !DILocation(line: 364, column: 27, scope: !108)
!191 = !DILocation(line: 364, column: 32, scope: !108)
!192 = !DILocation(line: 364, column: 11, scope: !108)
!193 = !DILocation(line: 364, column: 9, scope: !108)
!194 = !DILocation(line: 367, column: 10, scope: !108)
!195 = !DILocation(line: 367, column: 16, scope: !108)
!196 = !DILocation(line: 367, column: 14, scope: !108)
!197 = !DILocation(line: 367, column: 8, scope: !108)
!198 = !DILocation(line: 368, column: 10, scope: !108)
!199 = !DILocation(line: 368, column: 15, scope: !108)
!200 = !DILocation(line: 368, column: 13, scope: !108)
!201 = !DILocation(line: 368, column: 8, scope: !108)
!202 = !DILocation(line: 371, column: 17, scope: !108)
!203 = !DILocation(line: 371, column: 20, scope: !108)
!204 = !DILocation(line: 371, column: 10, scope: !108)
!205 = !DILocation(line: 371, column: 8, scope: !108)
!206 = !DILocation(line: 375, column: 18, scope: !108)
!207 = !DILocation(line: 375, column: 39, scope: !108)
!208 = !DILocation(line: 375, column: 42, scope: !108)
!209 = !DILocation(line: 375, column: 23, scope: !108)
!210 = !DILocation(line: 375, column: 22, scope: !108)
!211 = !DILocation(line: 375, column: 49, scope: !108)
!212 = !DILocation(line: 375, column: 9, scope: !108)
!213 = !DILocation(line: 378, column: 18, scope: !108)
!214 = !DILocation(line: 378, column: 21, scope: !108)
!215 = !DILocation(line: 378, column: 11, scope: !108)
!216 = !DILocation(line: 378, column: 9, scope: !108)
!217 = !DILocation(line: 382, column: 19, scope: !108)
!218 = !DILocation(line: 382, column: 12, scope: !108)
!219 = !DILocation(line: 382, column: 10, scope: !108)
!220 = !DILocation(line: 385, column: 11, scope: !108)
!221 = !DILocation(line: 385, column: 17, scope: !108)
!222 = !DILocation(line: 385, column: 15, scope: !108)
!223 = !DILocation(line: 385, column: 9, scope: !108)
!224 = !DILocation(line: 391, column: 12, scope: !108)
!225 = !DILocation(line: 391, column: 5, scope: !108)
!226 = !DILocation(line: 395, column: 18, scope: !108)
!227 = !DILocation(line: 395, column: 22, scope: !108)
!228 = !DILocation(line: 395, column: 26, scope: !108)
!229 = !DILocation(line: 395, column: 30, scope: !108)
!230 = !DILocation(line: 395, column: 35, scope: !108)
!231 = !DILocation(line: 395, column: 11, scope: !108)
!232 = !DILocation(line: 395, column: 9, scope: !108)
!233 = !DILocation(line: 399, column: 18, scope: !108)
!234 = !DILocation(line: 399, column: 22, scope: !108)
!235 = !DILocation(line: 399, column: 26, scope: !108)
!236 = !DILocation(line: 399, column: 30, scope: !108)
!237 = !DILocation(line: 399, column: 11, scope: !108)
!238 = !DILocation(line: 399, column: 9, scope: !108)
!239 = !DILocation(line: 402, column: 11, scope: !108)
!240 = !DILocation(line: 402, column: 16, scope: !108)
!241 = !DILocation(line: 402, column: 14, scope: !108)
!242 = !DILocation(line: 402, column: 9, scope: !108)
!243 = !DILocation(line: 405, column: 12, scope: !108)
!244 = !DILocation(line: 405, column: 10, scope: !108)
!245 = !DILocation(line: 406, column: 12, scope: !108)
!246 = !DILocation(line: 406, column: 10, scope: !108)
!247 = !DILocation(line: 407, column: 12, scope: !108)
!248 = !DILocation(line: 407, column: 10, scope: !108)
!249 = !DILocation(line: 408, column: 12, scope: !108)
!250 = !DILocation(line: 408, column: 10, scope: !108)
!251 = !DILocation(line: 412, column: 11, scope: !108)
!252 = !DILocation(line: 412, column: 9, scope: !108)
!253 = !DILocation(line: 414, column: 18, scope: !108)
!254 = !DILocation(line: 414, column: 22, scope: !108)
!255 = !DILocation(line: 414, column: 26, scope: !108)
!256 = !DILocation(line: 414, column: 30, scope: !108)
!257 = !DILocation(line: 414, column: 11, scope: !108)
!258 = !DILocation(line: 414, column: 9, scope: !108)
!259 = !DILocation(line: 417, column: 10, scope: !108)
!260 = !DILocation(line: 417, column: 16, scope: !108)
!261 = !DILocation(line: 417, column: 14, scope: !108)
!262 = !DILocation(line: 417, column: 8, scope: !108)
!263 = !DILocation(line: 419, column: 10, scope: !108)
!264 = !DILocation(line: 419, column: 15, scope: !108)
!265 = !DILocation(line: 419, column: 13, scope: !108)
!266 = !DILocation(line: 419, column: 8, scope: !108)
!267 = !DILocation(line: 423, column: 8, scope: !108)
!268 = !DILocation(line: 423, column: 11, scope: !108)
!269 = !DILocation(line: 424, column: 12, scope: !108)
!270 = !DILocation(line: 425, column: 5, scope: !108)
!271 = !DILocation(line: 427, column: 12, scope: !108)
!272 = !DILocation(line: 429, column: 25, scope: !108)
!273 = !DILocation(line: 429, column: 18, scope: !108)
!274 = !DILocation(line: 429, column: 31, scope: !108)
!275 = !DILocation(line: 429, column: 11, scope: !108)
!276 = !DILocation(line: 430, column: 15, scope: !108)
!277 = !DILocation(line: 430, column: 8, scope: !108)
!278 = !DILocation(line: 430, column: 21, scope: !108)
!279 = !DILocation(line: 430, column: 19, scope: !108)
!280 = !DILocation(line: 430, column: 30, scope: !108)
!281 = !DILocation(line: 430, column: 28, scope: !108)
!282 = !DILocation(line: 433, column: 17, scope: !108)
!283 = !DILocation(line: 433, column: 38, scope: !108)
!284 = !DILocation(line: 433, column: 22, scope: !108)
!285 = !DILocation(line: 433, column: 21, scope: !108)
!286 = !DILocation(line: 433, column: 43, scope: !108)
!287 = !DILocation(line: 433, column: 8, scope: !108)
!288 = !DILocation(line: 436, column: 18, scope: !108)
!289 = !DILocation(line: 436, column: 21, scope: !108)
!290 = !DILocation(line: 436, column: 11, scope: !108)
!291 = !DILocation(line: 436, column: 9, scope: !108)
!292 = !DILocation(line: 439, column: 19, scope: !108)
!293 = !DILocation(line: 439, column: 12, scope: !108)
!294 = !DILocation(line: 439, column: 10, scope: !108)
!295 = !DILocation(line: 442, column: 10, scope: !108)
!296 = !DILocation(line: 442, column: 15, scope: !108)
!297 = !DILocation(line: 442, column: 13, scope: !108)
!298 = !DILocation(line: 442, column: 8, scope: !108)
!299 = !DILocation(line: 447, column: 12, scope: !108)
!300 = !DILocation(line: 447, column: 5, scope: !108)
!301 = !DILocation(line: 451, column: 18, scope: !108)
!302 = !DILocation(line: 451, column: 22, scope: !108)
!303 = !DILocation(line: 451, column: 26, scope: !108)
!304 = !DILocation(line: 451, column: 29, scope: !108)
!305 = !DILocation(line: 451, column: 33, scope: !108)
!306 = !DILocation(line: 451, column: 11, scope: !108)
!307 = !DILocation(line: 451, column: 9, scope: !108)
!308 = !DILocation(line: 454, column: 18, scope: !108)
!309 = !DILocation(line: 454, column: 22, scope: !108)
!310 = !DILocation(line: 454, column: 26, scope: !108)
!311 = !DILocation(line: 454, column: 29, scope: !108)
!312 = !DILocation(line: 454, column: 11, scope: !108)
!313 = !DILocation(line: 454, column: 9, scope: !108)
!314 = !DILocation(line: 457, column: 10, scope: !108)
!315 = !DILocation(line: 457, column: 15, scope: !108)
!316 = !DILocation(line: 457, column: 13, scope: !108)
!317 = !DILocation(line: 457, column: 8, scope: !108)
!318 = !DILocation(line: 460, column: 11, scope: !108)
!319 = !DILocation(line: 460, column: 9, scope: !108)
!320 = !DILocation(line: 461, column: 11, scope: !108)
!321 = !DILocation(line: 461, column: 9, scope: !108)
!322 = !DILocation(line: 462, column: 11, scope: !108)
!323 = !DILocation(line: 462, column: 9, scope: !108)
!324 = !DILocation(line: 463, column: 11, scope: !108)
!325 = !DILocation(line: 463, column: 9, scope: !108)
!326 = !DILocation(line: 466, column: 12, scope: !108)
!327 = !DILocation(line: 466, column: 18, scope: !108)
!328 = !DILocation(line: 466, column: 21, scope: !108)
!329 = !DILocation(line: 466, column: 15, scope: !108)
!330 = !DILocation(line: 466, column: 5, scope: !108)
!331 = distinct !DISubprogram(name: "filtez", scope: !13, file: !13, line: 645, type: !14, scopeLine: 646, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!332 = !DILocation(line: 649, column: 21, scope: !331)
!333 = !DILocation(line: 649, column: 17, scope: !331)
!334 = !DILocation(line: 649, column: 32, scope: !331)
!335 = !DILocation(line: 649, column: 28, scope: !331)
!336 = !DILocation(line: 649, column: 25, scope: !331)
!337 = !DILocation(line: 649, column: 8, scope: !331)
!338 = !DILocation(line: 651, column: 11, scope: !331)
!339 = !DILocation(line: 651, column: 9, scope: !331)
!340 = !DILocation(line: 651, column: 17, scope: !331)
!341 = !DILocation(line: 651, column: 19, scope: !331)
!342 = !DILocation(line: 651, column: 5, scope: !331)
!343 = !DILocation(line: 652, column: 26, scope: !331)
!344 = !DILocation(line: 652, column: 22, scope: !331)
!345 = !DILocation(line: 652, column: 37, scope: !331)
!346 = !DILocation(line: 652, column: 33, scope: !331)
!347 = !DILocation(line: 652, column: 30, scope: !331)
!348 = !DILocation(line: 652, column: 12, scope: !331)
!349 = !DILocation(line: 652, column: 9, scope: !331)
!350 = !DILocation(line: 651, column: 26, scope: !331)
!351 = distinct !{!351, !342, !352, !46}
!352 = !DILocation(line: 652, column: 39, scope: !331)
!353 = !DILocation(line: 654, column: 18, scope: !331)
!354 = !DILocation(line: 654, column: 21, scope: !331)
!355 = !DILocation(line: 654, column: 5, scope: !331)
!356 = distinct !DISubprogram(name: "filtep", scope: !13, file: !13, line: 660, type: !14, scopeLine: 661, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!357 = !DILocation(line: 663, column: 12, scope: !356)
!358 = !DILocation(line: 663, column: 11, scope: !356)
!359 = !DILocation(line: 663, column: 8, scope: !356)
!360 = !DILocation(line: 664, column: 16, scope: !356)
!361 = !DILocation(line: 664, column: 20, scope: !356)
!362 = !DILocation(line: 664, column: 19, scope: !356)
!363 = !DILocation(line: 664, column: 8, scope: !356)
!364 = !DILocation(line: 665, column: 13, scope: !356)
!365 = !DILocation(line: 665, column: 12, scope: !356)
!366 = !DILocation(line: 665, column: 9, scope: !356)
!367 = !DILocation(line: 666, column: 17, scope: !356)
!368 = !DILocation(line: 666, column: 21, scope: !356)
!369 = !DILocation(line: 666, column: 20, scope: !356)
!370 = !DILocation(line: 666, column: 8, scope: !356)
!371 = !DILocation(line: 667, column: 18, scope: !356)
!372 = !DILocation(line: 667, column: 21, scope: !356)
!373 = !DILocation(line: 667, column: 5, scope: !356)
!374 = distinct !DISubprogram(name: "quantl", scope: !13, file: !13, line: 671, type: !14, scopeLine: 672, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!375 = !DILocation(line: 677, column: 17, scope: !374)
!376 = !DILocation(line: 677, column: 10, scope: !374)
!377 = !DILocation(line: 677, column: 8, scope: !374)
!378 = !DILocation(line: 680, column: 13, scope: !374)
!379 = !DILocation(line: 680, column: 9, scope: !374)
!380 = !DILocation(line: 680, column: 19, scope: !374)
!381 = !DILocation(line: 680, column: 23, scope: !374)
!382 = !DILocation(line: 680, column: 5, scope: !374)
!383 = !DILocation(line: 681, column: 29, scope: !374)
!384 = !DILocation(line: 681, column: 18, scope: !374)
!385 = !DILocation(line: 681, column: 40, scope: !374)
!386 = !DILocation(line: 681, column: 33, scope: !374)
!387 = !DILocation(line: 681, column: 46, scope: !374)
!388 = !DILocation(line: 681, column: 15, scope: !374)
!389 = !DILocation(line: 682, column: 12, scope: !374)
!390 = !DILocation(line: 682, column: 18, scope: !374)
!391 = !DILocation(line: 682, column: 15, scope: !374)
!392 = !DILocation(line: 682, column: 25, scope: !374)
!393 = !DILocation(line: 683, column: 5, scope: !374)
!394 = !DILocation(line: 680, column: 33, scope: !374)
!395 = distinct !{!395, !382, !393, !46}
!396 = !DILocation(line: 685, column: 8, scope: !374)
!397 = !DILocation(line: 685, column: 11, scope: !374)
!398 = !DILocation(line: 685, column: 37, scope: !374)
!399 = !DILocation(line: 685, column: 23, scope: !374)
!400 = !DILocation(line: 685, column: 21, scope: !374)
!401 = !DILocation(line: 685, column: 17, scope: !374)
!402 = !DILocation(line: 686, column: 30, scope: !374)
!403 = !DILocation(line: 686, column: 16, scope: !374)
!404 = !DILocation(line: 686, column: 14, scope: !374)
!405 = !DILocation(line: 687, column: 12, scope: !374)
!406 = !DILocation(line: 687, column: 5, scope: !374)
!407 = distinct !DISubprogram(name: "logscl", scope: !13, file: !13, line: 703, type: !14, scopeLine: 704, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!408 = !DILocation(line: 706, column: 17, scope: !407)
!409 = !DILocation(line: 706, column: 21, scope: !407)
!410 = !DILocation(line: 706, column: 29, scope: !407)
!411 = !DILocation(line: 706, column: 8, scope: !407)
!412 = !DILocation(line: 707, column: 16, scope: !407)
!413 = !DILocation(line: 707, column: 35, scope: !407)
!414 = !DILocation(line: 707, column: 38, scope: !407)
!415 = !DILocation(line: 707, column: 21, scope: !407)
!416 = !DILocation(line: 707, column: 19, scope: !407)
!417 = !DILocation(line: 707, column: 9, scope: !407)
!418 = !DILocation(line: 708, column: 8, scope: !407)
!419 = !DILocation(line: 708, column: 12, scope: !407)
!420 = !DILocation(line: 708, column: 21, scope: !407)
!421 = !DILocation(line: 708, column: 17, scope: !407)
!422 = !DILocation(line: 709, column: 8, scope: !407)
!423 = !DILocation(line: 709, column: 12, scope: !407)
!424 = !DILocation(line: 709, column: 25, scope: !407)
!425 = !DILocation(line: 709, column: 21, scope: !407)
!426 = !DILocation(line: 710, column: 12, scope: !407)
!427 = !DILocation(line: 710, column: 5, scope: !407)
!428 = distinct !DISubprogram(name: "scalel", scope: !13, file: !13, line: 715, type: !14, scopeLine: 716, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!429 = !DILocation(line: 718, column: 12, scope: !428)
!430 = !DILocation(line: 718, column: 16, scope: !428)
!431 = !DILocation(line: 718, column: 22, scope: !428)
!432 = !DILocation(line: 718, column: 9, scope: !428)
!433 = !DILocation(line: 719, column: 11, scope: !428)
!434 = !DILocation(line: 719, column: 15, scope: !428)
!435 = !DILocation(line: 719, column: 9, scope: !428)
!436 = !DILocation(line: 720, column: 21, scope: !428)
!437 = !DILocation(line: 720, column: 11, scope: !428)
!438 = !DILocation(line: 720, column: 30, scope: !428)
!439 = !DILocation(line: 720, column: 45, scope: !428)
!440 = !DILocation(line: 720, column: 51, scope: !428)
!441 = !DILocation(line: 720, column: 49, scope: !428)
!442 = !DILocation(line: 720, column: 26, scope: !428)
!443 = !DILocation(line: 720, column: 9, scope: !428)
!444 = !DILocation(line: 721, column: 12, scope: !428)
!445 = !DILocation(line: 721, column: 16, scope: !428)
!446 = !DILocation(line: 721, column: 5, scope: !428)
!447 = distinct !DISubprogram(name: "upzero", scope: !13, file: !13, line: 727, type: !14, scopeLine: 728, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!448 = !DILocation(line: 731, column: 8, scope: !447)
!449 = !DILocation(line: 731, column: 12, scope: !447)
!450 = !DILocation(line: 732, column: 13, scope: !447)
!451 = !DILocation(line: 732, column: 11, scope: !447)
!452 = !DILocation(line: 732, column: 19, scope: !447)
!453 = !DILocation(line: 732, column: 21, scope: !447)
!454 = !DILocation(line: 732, column: 7, scope: !447)
!455 = !DILocation(line: 733, column: 30, scope: !447)
!456 = !DILocation(line: 733, column: 34, scope: !447)
!457 = !DILocation(line: 733, column: 29, scope: !447)
!458 = !DILocation(line: 733, column: 38, scope: !447)
!459 = !DILocation(line: 733, column: 9, scope: !447)
!460 = !DILocation(line: 733, column: 13, scope: !447)
!461 = !DILocation(line: 733, column: 16, scope: !447)
!462 = !DILocation(line: 734, column: 7, scope: !447)
!463 = !DILocation(line: 732, column: 28, scope: !447)
!464 = distinct !{!464, !454, !462, !46}
!465 = !DILocation(line: 735, column: 5, scope: !447)
!466 = !DILocation(line: 737, column: 13, scope: !447)
!467 = !DILocation(line: 737, column: 11, scope: !447)
!468 = !DILocation(line: 737, column: 19, scope: !447)
!469 = !DILocation(line: 737, column: 21, scope: !447)
!470 = !DILocation(line: 737, column: 7, scope: !447)
!471 = !DILocation(line: 738, column: 18, scope: !447)
!472 = !DILocation(line: 738, column: 22, scope: !447)
!473 = !DILocation(line: 738, column: 27, scope: !447)
!474 = !DILocation(line: 738, column: 21, scope: !447)
!475 = !DILocation(line: 738, column: 30, scope: !447)
!476 = !DILocation(line: 738, column: 12, scope: !447)
!477 = !DILocation(line: 738, column: 40, scope: !447)
!478 = !DILocation(line: 738, column: 36, scope: !447)
!479 = !DILocation(line: 738, column: 56, scope: !447)
!480 = !DILocation(line: 739, column: 27, scope: !447)
!481 = !DILocation(line: 739, column: 31, scope: !447)
!482 = !DILocation(line: 739, column: 26, scope: !447)
!483 = !DILocation(line: 739, column: 35, scope: !447)
!484 = !DILocation(line: 739, column: 13, scope: !447)
!485 = !DILocation(line: 740, column: 18, scope: !447)
!486 = !DILocation(line: 740, column: 24, scope: !447)
!487 = !DILocation(line: 740, column: 22, scope: !447)
!488 = !DILocation(line: 740, column: 9, scope: !447)
!489 = !DILocation(line: 740, column: 13, scope: !447)
!490 = !DILocation(line: 740, column: 16, scope: !447)
!491 = !DILocation(line: 741, column: 7, scope: !447)
!492 = !DILocation(line: 737, column: 28, scope: !447)
!493 = distinct !{!493, !470, !491, !46}
!494 = !DILocation(line: 744, column: 15, scope: !447)
!495 = !DILocation(line: 744, column: 5, scope: !447)
!496 = !DILocation(line: 744, column: 13, scope: !447)
!497 = !DILocation(line: 745, column: 15, scope: !447)
!498 = !DILocation(line: 745, column: 5, scope: !447)
!499 = !DILocation(line: 745, column: 13, scope: !447)
!500 = !DILocation(line: 746, column: 15, scope: !447)
!501 = !DILocation(line: 746, column: 5, scope: !447)
!502 = !DILocation(line: 746, column: 13, scope: !447)
!503 = !DILocation(line: 747, column: 15, scope: !447)
!504 = !DILocation(line: 747, column: 5, scope: !447)
!505 = !DILocation(line: 747, column: 13, scope: !447)
!506 = !DILocation(line: 748, column: 15, scope: !447)
!507 = !DILocation(line: 748, column: 5, scope: !447)
!508 = !DILocation(line: 748, column: 13, scope: !447)
!509 = !DILocation(line: 749, column: 5, scope: !447)
!510 = distinct !DISubprogram(name: "uppol2", scope: !13, file: !13, line: 755, type: !14, scopeLine: 756, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!511 = !DILocation(line: 759, column: 20, scope: !510)
!512 = !DILocation(line: 759, column: 13, scope: !510)
!513 = !DILocation(line: 759, column: 9, scope: !510)
!514 = !DILocation(line: 760, column: 14, scope: !510)
!515 = !DILocation(line: 760, column: 18, scope: !510)
!516 = !DILocation(line: 760, column: 17, scope: !510)
!517 = !DILocation(line: 760, column: 23, scope: !510)
!518 = !DILocation(line: 760, column: 8, scope: !510)
!519 = !DILocation(line: 760, column: 37, scope: !510)
!520 = !DILocation(line: 760, column: 36, scope: !510)
!521 = !DILocation(line: 760, column: 34, scope: !510)
!522 = !DILocation(line: 760, column: 30, scope: !510)
!523 = !DILocation(line: 761, column: 11, scope: !510)
!524 = !DILocation(line: 761, column: 15, scope: !510)
!525 = !DILocation(line: 761, column: 9, scope: !510)
!526 = !DILocation(line: 762, column: 14, scope: !510)
!527 = !DILocation(line: 762, column: 18, scope: !510)
!528 = !DILocation(line: 762, column: 17, scope: !510)
!529 = !DILocation(line: 762, column: 23, scope: !510)
!530 = !DILocation(line: 762, column: 8, scope: !510)
!531 = !DILocation(line: 763, column: 15, scope: !510)
!532 = !DILocation(line: 763, column: 19, scope: !510)
!533 = !DILocation(line: 763, column: 13, scope: !510)
!534 = !DILocation(line: 764, column: 5, scope: !510)
!535 = !DILocation(line: 766, column: 15, scope: !510)
!536 = !DILocation(line: 766, column: 19, scope: !510)
!537 = !DILocation(line: 766, column: 13, scope: !510)
!538 = !DILocation(line: 768, column: 12, scope: !510)
!539 = !DILocation(line: 768, column: 30, scope: !510)
!540 = !DILocation(line: 768, column: 23, scope: !510)
!541 = !DILocation(line: 768, column: 34, scope: !510)
!542 = !DILocation(line: 768, column: 16, scope: !510)
!543 = !DILocation(line: 768, column: 10, scope: !510)
!544 = !DILocation(line: 771, column: 8, scope: !510)
!545 = !DILocation(line: 771, column: 13, scope: !510)
!546 = !DILocation(line: 771, column: 27, scope: !510)
!547 = !DILocation(line: 771, column: 22, scope: !510)
!548 = !DILocation(line: 772, column: 8, scope: !510)
!549 = !DILocation(line: 772, column: 13, scope: !510)
!550 = !DILocation(line: 772, column: 28, scope: !510)
!551 = !DILocation(line: 772, column: 23, scope: !510)
!552 = !DILocation(line: 773, column: 12, scope: !510)
!553 = !DILocation(line: 773, column: 5, scope: !510)
!554 = distinct !DISubprogram(name: "uppol1", scope: !13, file: !13, line: 779, type: !14, scopeLine: 780, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!555 = !DILocation(line: 783, column: 18, scope: !554)
!556 = !DILocation(line: 783, column: 21, scope: !554)
!557 = !DILocation(line: 783, column: 28, scope: !554)
!558 = !DILocation(line: 783, column: 9, scope: !554)
!559 = !DILocation(line: 784, column: 14, scope: !554)
!560 = !DILocation(line: 784, column: 18, scope: !554)
!561 = !DILocation(line: 784, column: 17, scope: !554)
!562 = !DILocation(line: 784, column: 23, scope: !554)
!563 = !DILocation(line: 784, column: 8, scope: !554)
!564 = !DILocation(line: 785, column: 21, scope: !554)
!565 = !DILocation(line: 785, column: 25, scope: !554)
!566 = !DILocation(line: 785, column: 14, scope: !554)
!567 = !DILocation(line: 786, column: 5, scope: !554)
!568 = !DILocation(line: 788, column: 21, scope: !554)
!569 = !DILocation(line: 788, column: 25, scope: !554)
!570 = !DILocation(line: 788, column: 14, scope: !554)
!571 = !DILocation(line: 791, column: 19, scope: !554)
!572 = !DILocation(line: 791, column: 17, scope: !554)
!573 = !DILocation(line: 791, column: 9, scope: !554)
!574 = !DILocation(line: 792, column: 8, scope: !554)
!575 = !DILocation(line: 792, column: 15, scope: !554)
!576 = !DILocation(line: 792, column: 13, scope: !554)
!577 = !DILocation(line: 792, column: 27, scope: !554)
!578 = !DILocation(line: 792, column: 25, scope: !554)
!579 = !DILocation(line: 792, column: 20, scope: !554)
!580 = !DILocation(line: 793, column: 8, scope: !554)
!581 = !DILocation(line: 793, column: 16, scope: !554)
!582 = !DILocation(line: 793, column: 15, scope: !554)
!583 = !DILocation(line: 793, column: 13, scope: !554)
!584 = !DILocation(line: 793, column: 29, scope: !554)
!585 = !DILocation(line: 793, column: 28, scope: !554)
!586 = !DILocation(line: 793, column: 26, scope: !554)
!587 = !DILocation(line: 793, column: 21, scope: !554)
!588 = !DILocation(line: 794, column: 12, scope: !554)
!589 = !DILocation(line: 794, column: 5, scope: !554)
!590 = distinct !DISubprogram(name: "logsch", scope: !13, file: !13, line: 810, type: !14, scopeLine: 811, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!591 = !DILocation(line: 813, column: 17, scope: !590)
!592 = !DILocation(line: 813, column: 21, scope: !590)
!593 = !DILocation(line: 813, column: 29, scope: !590)
!594 = !DILocation(line: 813, column: 8, scope: !590)
!595 = !DILocation(line: 814, column: 11, scope: !590)
!596 = !DILocation(line: 814, column: 30, scope: !590)
!597 = !DILocation(line: 814, column: 16, scope: !590)
!598 = !DILocation(line: 814, column: 14, scope: !590)
!599 = !DILocation(line: 814, column: 9, scope: !590)
!600 = !DILocation(line: 815, column: 8, scope: !590)
!601 = !DILocation(line: 815, column: 12, scope: !590)
!602 = !DILocation(line: 815, column: 21, scope: !590)
!603 = !DILocation(line: 815, column: 17, scope: !590)
!604 = !DILocation(line: 816, column: 8, scope: !590)
!605 = !DILocation(line: 816, column: 12, scope: !590)
!606 = !DILocation(line: 816, column: 25, scope: !590)
!607 = !DILocation(line: 816, column: 21, scope: !590)
!608 = !DILocation(line: 817, column: 12, scope: !590)
!609 = !DILocation(line: 817, column: 5, scope: !590)
!610 = distinct !DISubprogram(name: "decode", scope: !13, file: !13, line: 471, type: !14, scopeLine: 472, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!611 = !DILocation(line: 478, column: 11, scope: !610)
!612 = !DILocation(line: 478, column: 17, scope: !610)
!613 = !DILocation(line: 478, column: 9, scope: !610)
!614 = !DILocation(line: 479, column: 10, scope: !610)
!615 = !DILocation(line: 479, column: 16, scope: !610)
!616 = !DILocation(line: 479, column: 8, scope: !610)
!617 = !DILocation(line: 484, column: 15, scope: !610)
!618 = !DILocation(line: 484, column: 13, scope: !610)
!619 = !DILocation(line: 487, column: 22, scope: !610)
!620 = !DILocation(line: 487, column: 31, scope: !610)
!621 = !DILocation(line: 487, column: 39, scope: !610)
!622 = !DILocation(line: 487, column: 48, scope: !610)
!623 = !DILocation(line: 487, column: 15, scope: !610)
!624 = !DILocation(line: 487, column: 13, scope: !610)
!625 = !DILocation(line: 489, column: 14, scope: !610)
!626 = !DILocation(line: 489, column: 24, scope: !610)
!627 = !DILocation(line: 489, column: 22, scope: !610)
!628 = !DILocation(line: 489, column: 12, scope: !610)
!629 = !DILocation(line: 492, column: 22, scope: !610)
!630 = !DILocation(line: 492, column: 47, scope: !610)
!631 = !DILocation(line: 492, column: 51, scope: !610)
!632 = !DILocation(line: 492, column: 31, scope: !610)
!633 = !DILocation(line: 492, column: 30, scope: !610)
!634 = !DILocation(line: 492, column: 58, scope: !610)
!635 = !DILocation(line: 492, column: 13, scope: !610)
!636 = !DILocation(line: 495, column: 17, scope: !610)
!637 = !DILocation(line: 495, column: 42, scope: !610)
!638 = !DILocation(line: 495, column: 26, scope: !610)
!639 = !DILocation(line: 495, column: 25, scope: !610)
!640 = !DILocation(line: 495, column: 47, scope: !610)
!641 = !DILocation(line: 495, column: 8, scope: !610)
!642 = !DILocation(line: 497, column: 10, scope: !610)
!643 = !DILocation(line: 497, column: 15, scope: !610)
!644 = !DILocation(line: 497, column: 13, scope: !610)
!645 = !DILocation(line: 497, column: 8, scope: !610)
!646 = !DILocation(line: 500, column: 22, scope: !610)
!647 = !DILocation(line: 500, column: 26, scope: !610)
!648 = !DILocation(line: 500, column: 15, scope: !610)
!649 = !DILocation(line: 500, column: 13, scope: !610)
!650 = !DILocation(line: 503, column: 23, scope: !610)
!651 = !DILocation(line: 503, column: 16, scope: !610)
!652 = !DILocation(line: 503, column: 14, scope: !610)
!653 = !DILocation(line: 507, column: 15, scope: !610)
!654 = !DILocation(line: 507, column: 25, scope: !610)
!655 = !DILocation(line: 507, column: 23, scope: !610)
!656 = !DILocation(line: 507, column: 13, scope: !610)
!657 = !DILocation(line: 510, column: 12, scope: !610)
!658 = !DILocation(line: 510, column: 5, scope: !610)
!659 = !DILocation(line: 513, column: 22, scope: !610)
!660 = !DILocation(line: 513, column: 30, scope: !610)
!661 = !DILocation(line: 513, column: 38, scope: !610)
!662 = !DILocation(line: 513, column: 46, scope: !610)
!663 = !DILocation(line: 513, column: 55, scope: !610)
!664 = !DILocation(line: 513, column: 15, scope: !610)
!665 = !DILocation(line: 513, column: 13, scope: !610)
!666 = !DILocation(line: 516, column: 22, scope: !610)
!667 = !DILocation(line: 516, column: 30, scope: !610)
!668 = !DILocation(line: 516, column: 38, scope: !610)
!669 = !DILocation(line: 516, column: 46, scope: !610)
!670 = !DILocation(line: 516, column: 15, scope: !610)
!671 = !DILocation(line: 516, column: 13, scope: !610)
!672 = !DILocation(line: 519, column: 15, scope: !610)
!673 = !DILocation(line: 519, column: 24, scope: !610)
!674 = !DILocation(line: 519, column: 22, scope: !610)
!675 = !DILocation(line: 519, column: 13, scope: !610)
!676 = !DILocation(line: 522, column: 16, scope: !610)
!677 = !DILocation(line: 522, column: 14, scope: !610)
!678 = !DILocation(line: 523, column: 16, scope: !610)
!679 = !DILocation(line: 523, column: 14, scope: !610)
!680 = !DILocation(line: 524, column: 16, scope: !610)
!681 = !DILocation(line: 524, column: 14, scope: !610)
!682 = !DILocation(line: 525, column: 16, scope: !610)
!683 = !DILocation(line: 525, column: 14, scope: !610)
!684 = !DILocation(line: 530, column: 15, scope: !610)
!685 = !DILocation(line: 530, column: 13, scope: !610)
!686 = !DILocation(line: 533, column: 22, scope: !610)
!687 = !DILocation(line: 533, column: 30, scope: !610)
!688 = !DILocation(line: 533, column: 38, scope: !610)
!689 = !DILocation(line: 533, column: 46, scope: !610)
!690 = !DILocation(line: 533, column: 15, scope: !610)
!691 = !DILocation(line: 533, column: 13, scope: !610)
!692 = !DILocation(line: 536, column: 14, scope: !610)
!693 = !DILocation(line: 536, column: 24, scope: !610)
!694 = !DILocation(line: 536, column: 22, scope: !610)
!695 = !DILocation(line: 536, column: 12, scope: !610)
!696 = !DILocation(line: 539, column: 21, scope: !610)
!697 = !DILocation(line: 539, column: 46, scope: !610)
!698 = !DILocation(line: 539, column: 30, scope: !610)
!699 = !DILocation(line: 539, column: 29, scope: !610)
!700 = !DILocation(line: 539, column: 51, scope: !610)
!701 = !DILocation(line: 539, column: 12, scope: !610)
!702 = !DILocation(line: 542, column: 22, scope: !610)
!703 = !DILocation(line: 542, column: 25, scope: !610)
!704 = !DILocation(line: 542, column: 15, scope: !610)
!705 = !DILocation(line: 542, column: 13, scope: !610)
!706 = !DILocation(line: 545, column: 23, scope: !610)
!707 = !DILocation(line: 545, column: 16, scope: !610)
!708 = !DILocation(line: 545, column: 14, scope: !610)
!709 = !DILocation(line: 548, column: 14, scope: !610)
!710 = !DILocation(line: 548, column: 23, scope: !610)
!711 = !DILocation(line: 548, column: 21, scope: !610)
!712 = !DILocation(line: 548, column: 12, scope: !610)
!713 = !DILocation(line: 551, column: 12, scope: !610)
!714 = !DILocation(line: 551, column: 5, scope: !610)
!715 = !DILocation(line: 554, column: 22, scope: !610)
!716 = !DILocation(line: 554, column: 30, scope: !610)
!717 = !DILocation(line: 554, column: 38, scope: !610)
!718 = !DILocation(line: 554, column: 45, scope: !610)
!719 = !DILocation(line: 554, column: 53, scope: !610)
!720 = !DILocation(line: 554, column: 15, scope: !610)
!721 = !DILocation(line: 554, column: 13, scope: !610)
!722 = !DILocation(line: 557, column: 22, scope: !610)
!723 = !DILocation(line: 557, column: 30, scope: !610)
!724 = !DILocation(line: 557, column: 38, scope: !610)
!725 = !DILocation(line: 557, column: 45, scope: !610)
!726 = !DILocation(line: 557, column: 15, scope: !610)
!727 = !DILocation(line: 557, column: 13, scope: !610)
!728 = !DILocation(line: 560, column: 10, scope: !610)
!729 = !DILocation(line: 560, column: 19, scope: !610)
!730 = !DILocation(line: 560, column: 17, scope: !610)
!731 = !DILocation(line: 560, column: 8, scope: !610)
!732 = !DILocation(line: 563, column: 15, scope: !610)
!733 = !DILocation(line: 563, column: 13, scope: !610)
!734 = !DILocation(line: 564, column: 15, scope: !610)
!735 = !DILocation(line: 564, column: 13, scope: !610)
!736 = !DILocation(line: 565, column: 15, scope: !610)
!737 = !DILocation(line: 565, column: 13, scope: !610)
!738 = !DILocation(line: 566, column: 15, scope: !610)
!739 = !DILocation(line: 566, column: 13, scope: !610)
!740 = !DILocation(line: 571, column: 10, scope: !610)
!741 = !DILocation(line: 571, column: 15, scope: !610)
!742 = !DILocation(line: 571, column: 13, scope: !610)
!743 = !DILocation(line: 571, column: 8, scope: !610)
!744 = !DILocation(line: 572, column: 10, scope: !610)
!745 = !DILocation(line: 572, column: 15, scope: !610)
!746 = !DILocation(line: 572, column: 13, scope: !610)
!747 = !DILocation(line: 572, column: 8, scope: !610)
!748 = !DILocation(line: 575, column: 11, scope: !610)
!749 = !DILocation(line: 576, column: 12, scope: !610)
!750 = !DILocation(line: 577, column: 12, scope: !610)
!751 = !DILocation(line: 578, column: 17, scope: !610)
!752 = !DILocation(line: 578, column: 29, scope: !610)
!753 = !DILocation(line: 578, column: 23, scope: !610)
!754 = !DILocation(line: 578, column: 20, scope: !610)
!755 = !DILocation(line: 578, column: 9, scope: !610)
!756 = !DILocation(line: 579, column: 17, scope: !610)
!757 = !DILocation(line: 579, column: 29, scope: !610)
!758 = !DILocation(line: 579, column: 23, scope: !610)
!759 = !DILocation(line: 579, column: 20, scope: !610)
!760 = !DILocation(line: 579, column: 9, scope: !610)
!761 = !DILocation(line: 581, column: 11, scope: !610)
!762 = !DILocation(line: 581, column: 9, scope: !610)
!763 = !DILocation(line: 581, column: 17, scope: !610)
!764 = !DILocation(line: 581, column: 19, scope: !610)
!765 = !DILocation(line: 581, column: 5, scope: !610)
!766 = !DILocation(line: 582, column: 30, scope: !610)
!767 = !DILocation(line: 582, column: 23, scope: !610)
!768 = !DILocation(line: 582, column: 43, scope: !610)
!769 = !DILocation(line: 582, column: 37, scope: !610)
!770 = !DILocation(line: 582, column: 34, scope: !610)
!771 = !DILocation(line: 582, column: 13, scope: !610)
!772 = !DILocation(line: 583, column: 30, scope: !610)
!773 = !DILocation(line: 583, column: 23, scope: !610)
!774 = !DILocation(line: 583, column: 43, scope: !610)
!775 = !DILocation(line: 583, column: 37, scope: !610)
!776 = !DILocation(line: 583, column: 34, scope: !610)
!777 = !DILocation(line: 583, column: 13, scope: !610)
!778 = !DILocation(line: 584, column: 5, scope: !610)
!779 = !DILocation(line: 581, column: 27, scope: !610)
!780 = distinct !{!780, !765, !778, !46}
!781 = !DILocation(line: 586, column: 20, scope: !610)
!782 = !DILocation(line: 586, column: 19, scope: !610)
!783 = !DILocation(line: 586, column: 37, scope: !610)
!784 = !DILocation(line: 586, column: 31, scope: !610)
!785 = !DILocation(line: 586, column: 28, scope: !610)
!786 = !DILocation(line: 586, column: 9, scope: !610)
!787 = !DILocation(line: 587, column: 20, scope: !610)
!788 = !DILocation(line: 587, column: 19, scope: !610)
!789 = !DILocation(line: 587, column: 37, scope: !610)
!790 = !DILocation(line: 587, column: 31, scope: !610)
!791 = !DILocation(line: 587, column: 28, scope: !610)
!792 = !DILocation(line: 587, column: 9, scope: !610)
!793 = !DILocation(line: 590, column: 13, scope: !610)
!794 = !DILocation(line: 590, column: 17, scope: !610)
!795 = !DILocation(line: 590, column: 11, scope: !610)
!796 = !DILocation(line: 591, column: 13, scope: !610)
!797 = !DILocation(line: 591, column: 17, scope: !610)
!798 = !DILocation(line: 591, column: 11, scope: !610)
!799 = !DILocation(line: 594, column: 15, scope: !610)
!800 = !DILocation(line: 594, column: 22, scope: !610)
!801 = !DILocation(line: 594, column: 13, scope: !610)
!802 = !DILocation(line: 595, column: 15, scope: !610)
!803 = !DILocation(line: 595, column: 22, scope: !610)
!804 = !DILocation(line: 595, column: 13, scope: !610)
!805 = !DILocation(line: 596, column: 11, scope: !610)
!806 = !DILocation(line: 596, column: 9, scope: !610)
!807 = !DILocation(line: 596, column: 17, scope: !610)
!808 = !DILocation(line: 596, column: 19, scope: !610)
!809 = !DILocation(line: 596, column: 5, scope: !610)
!810 = !DILocation(line: 597, column: 29, scope: !610)
!811 = !DILocation(line: 597, column: 21, scope: !610)
!812 = !DILocation(line: 597, column: 16, scope: !610)
!813 = !DILocation(line: 597, column: 19, scope: !610)
!814 = !DILocation(line: 598, column: 29, scope: !610)
!815 = !DILocation(line: 598, column: 21, scope: !610)
!816 = !DILocation(line: 598, column: 16, scope: !610)
!817 = !DILocation(line: 598, column: 19, scope: !610)
!818 = !DILocation(line: 599, column: 5, scope: !610)
!819 = !DILocation(line: 596, column: 27, scope: !610)
!820 = distinct !{!820, !809, !818, !46}
!821 = !DILocation(line: 600, column: 15, scope: !610)
!822 = !DILocation(line: 600, column: 6, scope: !610)
!823 = !DILocation(line: 600, column: 13, scope: !610)
!824 = !DILocation(line: 601, column: 15, scope: !610)
!825 = !DILocation(line: 601, column: 6, scope: !610)
!826 = !DILocation(line: 601, column: 13, scope: !610)
!827 = !DILocation(line: 603, column: 5, scope: !610)
!828 = distinct !DISubprogram(name: "reset", scope: !13, file: !13, line: 608, type: !14, scopeLine: 609, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!829 = !DILocation(line: 612, column: 21, scope: !828)
!830 = !DILocation(line: 612, column: 10, scope: !828)
!831 = !DILocation(line: 613, column: 21, scope: !828)
!832 = !DILocation(line: 613, column: 10, scope: !828)
!833 = !DILocation(line: 614, column: 49, scope: !828)
!834 = !DILocation(line: 614, column: 42, scope: !828)
!835 = !DILocation(line: 614, column: 35, scope: !828)
!836 = !DILocation(line: 614, column: 28, scope: !828)
!837 = !DILocation(line: 614, column: 21, scope: !828)
!838 = !DILocation(line: 614, column: 15, scope: !828)
!839 = !DILocation(line: 614, column: 9, scope: !828)
!840 = !DILocation(line: 615, column: 45, scope: !828)
!841 = !DILocation(line: 615, column: 39, scope: !828)
!842 = !DILocation(line: 615, column: 33, scope: !828)
!843 = !DILocation(line: 615, column: 27, scope: !828)
!844 = !DILocation(line: 615, column: 21, scope: !828)
!845 = !DILocation(line: 615, column: 15, scope: !828)
!846 = !DILocation(line: 615, column: 9, scope: !828)
!847 = !DILocation(line: 616, column: 77, scope: !828)
!848 = !DILocation(line: 616, column: 66, scope: !828)
!849 = !DILocation(line: 616, column: 55, scope: !828)
!850 = !DILocation(line: 616, column: 44, scope: !828)
!851 = !DILocation(line: 616, column: 33, scope: !828)
!852 = !DILocation(line: 616, column: 23, scope: !828)
!853 = !DILocation(line: 616, column: 13, scope: !828)
!854 = !DILocation(line: 617, column: 73, scope: !828)
!855 = !DILocation(line: 617, column: 63, scope: !828)
!856 = !DILocation(line: 617, column: 53, scope: !828)
!857 = !DILocation(line: 617, column: 43, scope: !828)
!858 = !DILocation(line: 617, column: 33, scope: !828)
!859 = !DILocation(line: 617, column: 23, scope: !828)
!860 = !DILocation(line: 617, column: 13, scope: !828)
!861 = !DILocation(line: 619, column: 11, scope: !828)
!862 = !DILocation(line: 619, column: 9, scope: !828)
!863 = !DILocation(line: 619, column: 17, scope: !828)
!864 = !DILocation(line: 619, column: 19, scope: !828)
!865 = !DILocation(line: 619, column: 5, scope: !828)
!866 = !DILocation(line: 620, column: 20, scope: !828)
!867 = !DILocation(line: 620, column: 9, scope: !828)
!868 = !DILocation(line: 620, column: 23, scope: !828)
!869 = !DILocation(line: 621, column: 19, scope: !828)
!870 = !DILocation(line: 621, column: 9, scope: !828)
!871 = !DILocation(line: 621, column: 22, scope: !828)
!872 = !DILocation(line: 622, column: 22, scope: !828)
!873 = !DILocation(line: 622, column: 9, scope: !828)
!874 = !DILocation(line: 622, column: 25, scope: !828)
!875 = !DILocation(line: 623, column: 21, scope: !828)
!876 = !DILocation(line: 623, column: 9, scope: !828)
!877 = !DILocation(line: 623, column: 24, scope: !828)
!878 = !DILocation(line: 624, column: 5, scope: !828)
!879 = !DILocation(line: 619, column: 26, scope: !828)
!880 = distinct !{!880, !865, !878, !46}
!881 = !DILocation(line: 626, column: 11, scope: !828)
!882 = !DILocation(line: 626, column: 9, scope: !828)
!883 = !DILocation(line: 626, column: 17, scope: !828)
!884 = !DILocation(line: 626, column: 19, scope: !828)
!885 = !DILocation(line: 626, column: 5, scope: !828)
!886 = !DILocation(line: 627, column: 19, scope: !828)
!887 = !DILocation(line: 627, column: 9, scope: !828)
!888 = !DILocation(line: 627, column: 22, scope: !828)
!889 = !DILocation(line: 628, column: 19, scope: !828)
!890 = !DILocation(line: 628, column: 9, scope: !828)
!891 = !DILocation(line: 628, column: 22, scope: !828)
!892 = !DILocation(line: 629, column: 21, scope: !828)
!893 = !DILocation(line: 629, column: 9, scope: !828)
!894 = !DILocation(line: 629, column: 24, scope: !828)
!895 = !DILocation(line: 630, column: 21, scope: !828)
!896 = !DILocation(line: 630, column: 9, scope: !828)
!897 = !DILocation(line: 630, column: 24, scope: !828)
!898 = !DILocation(line: 631, column: 5, scope: !828)
!899 = !DILocation(line: 626, column: 26, scope: !828)
!900 = distinct !{!900, !885, !898, !46}
!901 = !DILocation(line: 633, column: 11, scope: !828)
!902 = !DILocation(line: 633, column: 9, scope: !828)
!903 = !DILocation(line: 633, column: 17, scope: !828)
!904 = !DILocation(line: 633, column: 19, scope: !828)
!905 = !DILocation(line: 633, column: 5, scope: !828)
!906 = !DILocation(line: 633, column: 36, scope: !828)
!907 = !DILocation(line: 633, column: 31, scope: !828)
!908 = !DILocation(line: 633, column: 39, scope: !828)
!909 = !DILocation(line: 633, column: 27, scope: !828)
!910 = distinct !{!910, !905, !911, !46}
!911 = !DILocation(line: 633, column: 41, scope: !828)
!912 = !DILocation(line: 635, column: 11, scope: !828)
!913 = !DILocation(line: 635, column: 9, scope: !828)
!914 = !DILocation(line: 635, column: 17, scope: !828)
!915 = !DILocation(line: 635, column: 19, scope: !828)
!916 = !DILocation(line: 635, column: 5, scope: !828)
!917 = !DILocation(line: 636, column: 16, scope: !828)
!918 = !DILocation(line: 636, column: 9, scope: !828)
!919 = !DILocation(line: 636, column: 19, scope: !828)
!920 = !DILocation(line: 637, column: 16, scope: !828)
!921 = !DILocation(line: 637, column: 9, scope: !828)
!922 = !DILocation(line: 637, column: 19, scope: !828)
!923 = !DILocation(line: 638, column: 5, scope: !828)
!924 = !DILocation(line: 635, column: 27, scope: !828)
!925 = distinct !{!925, !916, !923, !46}
!926 = !DILocation(line: 639, column: 5, scope: !828)
!927 = distinct !DISubprogram(name: "adpcm", scope: !13, file: !13, line: 822, type: !14, scopeLine: 823, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!928 = !DILocation(line: 828, column: 6, scope: !927)
!929 = !DILocation(line: 833, column: 8, scope: !927)
!930 = !DILocation(line: 833, column: 16, scope: !927)
!931 = !DILocation(line: 839, column: 11, scope: !927)
!932 = !DILocation(line: 839, column: 9, scope: !927)
!933 = !DILocation(line: 839, column: 17, scope: !927)
!934 = !DILocation(line: 839, column: 19, scope: !927)
!935 = !DILocation(line: 839, column: 5, scope: !927)
!936 = !DILocation(line: 840, column: 35, scope: !927)
!937 = !DILocation(line: 840, column: 44, scope: !927)
!938 = !DILocation(line: 840, column: 45, scope: !927)
!939 = !DILocation(line: 840, column: 49, scope: !927)
!940 = !DILocation(line: 840, column: 48, scope: !927)
!941 = !DILocation(line: 840, column: 37, scope: !927)
!942 = !DILocation(line: 840, column: 36, scope: !927)
!943 = !DILocation(line: 840, column: 25, scope: !927)
!944 = !DILocation(line: 840, column: 15, scope: !927)
!945 = !DILocation(line: 840, column: 28, scope: !927)
!946 = !DILocation(line: 841, column: 5, scope: !927)
!947 = !DILocation(line: 839, column: 29, scope: !927)
!948 = distinct !{!948, !935, !946, !46}
!949 = !DILocation(line: 853, column: 10, scope: !927)
!950 = !DILocation(line: 853, column: 8, scope: !927)
!951 = !DILocation(line: 853, column: 16, scope: !927)
!952 = !DILocation(line: 853, column: 18, scope: !927)
!953 = !DILocation(line: 853, column: 4, scope: !927)
!954 = !DILocation(line: 854, column: 42, scope: !927)
!955 = !DILocation(line: 854, column: 32, scope: !927)
!956 = !DILocation(line: 854, column: 55, scope: !927)
!957 = !DILocation(line: 854, column: 56, scope: !927)
!958 = !DILocation(line: 854, column: 45, scope: !927)
!959 = !DILocation(line: 854, column: 25, scope: !927)
!960 = !DILocation(line: 854, column: 18, scope: !927)
!961 = !DILocation(line: 854, column: 19, scope: !927)
!962 = !DILocation(line: 854, column: 7, scope: !927)
!963 = !DILocation(line: 854, column: 23, scope: !927)
!964 = !DILocation(line: 853, column: 31, scope: !927)
!965 = distinct !{!965, !953, !966, !46}
!966 = !DILocation(line: 854, column: 59, scope: !927)
!967 = !DILocation(line: 856, column: 11, scope: !927)
!968 = !DILocation(line: 856, column: 9, scope: !927)
!969 = !DILocation(line: 856, column: 17, scope: !927)
!970 = !DILocation(line: 856, column: 19, scope: !927)
!971 = !DILocation(line: 856, column: 5, scope: !927)
!972 = !DILocation(line: 857, column: 25, scope: !927)
!973 = !DILocation(line: 857, column: 26, scope: !927)
!974 = !DILocation(line: 857, column: 14, scope: !927)
!975 = !DILocation(line: 857, column: 7, scope: !927)
!976 = !DILocation(line: 858, column: 19, scope: !927)
!977 = !DILocation(line: 858, column: 14, scope: !927)
!978 = !DILocation(line: 858, column: 7, scope: !927)
!979 = !DILocation(line: 858, column: 17, scope: !927)
!980 = !DILocation(line: 859, column: 21, scope: !927)
!981 = !DILocation(line: 859, column: 14, scope: !927)
!982 = !DILocation(line: 859, column: 15, scope: !927)
!983 = !DILocation(line: 859, column: 7, scope: !927)
!984 = !DILocation(line: 859, column: 19, scope: !927)
!985 = !DILocation(line: 860, column: 5, scope: !927)
!986 = !DILocation(line: 856, column: 32, scope: !927)
!987 = distinct !{!987, !971, !985, !46}
!988 = !DILocation(line: 873, column: 19, scope: !927)
!989 = !DILocation(line: 873, column: 12, scope: !927)
!990 = !DILocation(line: 873, column: 29, scope: !927)
!991 = !DILocation(line: 873, column: 30, scope: !927)
!992 = !DILocation(line: 873, column: 22, scope: !927)
!993 = !DILocation(line: 873, column: 21, scope: !927)
!994 = !DILocation(line: 873, column: 5, scope: !927)
