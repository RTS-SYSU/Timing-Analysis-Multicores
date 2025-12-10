; ModuleID = '/workspaces/llvmta/testcases/wcet_bench/cover.c'
source_filename = "/workspaces/llvmta/testcases/wcet_bench/cover.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv4t-unknown-unknown"

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @swi120(i32 noundef %c) #0 !dbg !12 {
entry:
  %c.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  store i32 0, i32* %i, align 4, !dbg !16
  br label %for.cond, !dbg !17

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !18
  %cmp = icmp slt i32 %0, 120, !dbg !19
  br i1 %cmp, label %for.body, label %for.end, !dbg !20

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4, !dbg !21
  switch i32 %1, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb3
    i32 3, label %sw.bb5
    i32 4, label %sw.bb7
    i32 5, label %sw.bb9
    i32 6, label %sw.bb11
    i32 7, label %sw.bb13
    i32 8, label %sw.bb15
    i32 9, label %sw.bb17
    i32 10, label %sw.bb19
    i32 11, label %sw.bb21
    i32 12, label %sw.bb23
    i32 13, label %sw.bb25
    i32 14, label %sw.bb27
    i32 15, label %sw.bb29
    i32 16, label %sw.bb31
    i32 17, label %sw.bb33
    i32 18, label %sw.bb35
    i32 19, label %sw.bb37
    i32 20, label %sw.bb39
    i32 21, label %sw.bb41
    i32 22, label %sw.bb43
    i32 23, label %sw.bb45
    i32 24, label %sw.bb47
    i32 25, label %sw.bb49
    i32 26, label %sw.bb51
    i32 27, label %sw.bb53
    i32 28, label %sw.bb55
    i32 29, label %sw.bb57
    i32 30, label %sw.bb59
    i32 31, label %sw.bb61
    i32 32, label %sw.bb63
    i32 33, label %sw.bb65
    i32 34, label %sw.bb67
    i32 35, label %sw.bb69
    i32 36, label %sw.bb71
    i32 37, label %sw.bb73
    i32 38, label %sw.bb75
    i32 39, label %sw.bb77
    i32 40, label %sw.bb79
    i32 41, label %sw.bb81
    i32 42, label %sw.bb83
    i32 43, label %sw.bb85
    i32 44, label %sw.bb87
    i32 45, label %sw.bb89
    i32 46, label %sw.bb91
    i32 47, label %sw.bb93
    i32 48, label %sw.bb95
    i32 49, label %sw.bb97
    i32 50, label %sw.bb99
    i32 51, label %sw.bb101
    i32 52, label %sw.bb103
    i32 53, label %sw.bb105
    i32 54, label %sw.bb107
    i32 55, label %sw.bb109
    i32 56, label %sw.bb111
    i32 57, label %sw.bb113
    i32 58, label %sw.bb115
    i32 59, label %sw.bb117
    i32 60, label %sw.bb119
    i32 61, label %sw.bb121
    i32 62, label %sw.bb123
    i32 63, label %sw.bb125
    i32 64, label %sw.bb127
    i32 65, label %sw.bb129
    i32 66, label %sw.bb131
    i32 67, label %sw.bb133
    i32 68, label %sw.bb135
    i32 69, label %sw.bb137
    i32 70, label %sw.bb139
    i32 71, label %sw.bb141
    i32 72, label %sw.bb143
    i32 73, label %sw.bb145
    i32 74, label %sw.bb147
    i32 75, label %sw.bb149
    i32 76, label %sw.bb151
    i32 77, label %sw.bb153
    i32 78, label %sw.bb155
    i32 79, label %sw.bb157
    i32 80, label %sw.bb159
    i32 81, label %sw.bb161
    i32 82, label %sw.bb163
    i32 83, label %sw.bb165
    i32 84, label %sw.bb167
    i32 85, label %sw.bb169
    i32 86, label %sw.bb171
    i32 87, label %sw.bb173
    i32 88, label %sw.bb175
    i32 89, label %sw.bb177
    i32 90, label %sw.bb179
    i32 91, label %sw.bb181
    i32 92, label %sw.bb183
    i32 93, label %sw.bb185
    i32 94, label %sw.bb187
    i32 95, label %sw.bb189
    i32 96, label %sw.bb191
    i32 97, label %sw.bb193
    i32 98, label %sw.bb195
    i32 99, label %sw.bb197
    i32 100, label %sw.bb199
    i32 101, label %sw.bb201
    i32 102, label %sw.bb203
    i32 103, label %sw.bb205
    i32 104, label %sw.bb207
    i32 105, label %sw.bb209
    i32 106, label %sw.bb211
    i32 107, label %sw.bb213
    i32 108, label %sw.bb215
    i32 109, label %sw.bb217
    i32 110, label %sw.bb219
    i32 111, label %sw.bb221
    i32 112, label %sw.bb223
    i32 113, label %sw.bb225
    i32 114, label %sw.bb227
    i32 115, label %sw.bb229
    i32 116, label %sw.bb231
    i32 117, label %sw.bb233
    i32 118, label %sw.bb235
    i32 119, label %sw.bb237
  ], !dbg !22

sw.bb:                                            ; preds = %for.body
  %2 = load i32, i32* %c.addr, align 4, !dbg !23
  %inc = add nsw i32 %2, 1, !dbg !23
  store i32 %inc, i32* %c.addr, align 4, !dbg !23
  br label %sw.epilog, !dbg !24

sw.bb1:                                           ; preds = %for.body
  %3 = load i32, i32* %c.addr, align 4, !dbg !25
  %inc2 = add nsw i32 %3, 1, !dbg !25
  store i32 %inc2, i32* %c.addr, align 4, !dbg !25
  br label %sw.epilog, !dbg !26

sw.bb3:                                           ; preds = %for.body
  %4 = load i32, i32* %c.addr, align 4, !dbg !27
  %inc4 = add nsw i32 %4, 1, !dbg !27
  store i32 %inc4, i32* %c.addr, align 4, !dbg !27
  br label %sw.epilog, !dbg !28

sw.bb5:                                           ; preds = %for.body
  %5 = load i32, i32* %c.addr, align 4, !dbg !29
  %inc6 = add nsw i32 %5, 1, !dbg !29
  store i32 %inc6, i32* %c.addr, align 4, !dbg !29
  br label %sw.epilog, !dbg !30

sw.bb7:                                           ; preds = %for.body
  %6 = load i32, i32* %c.addr, align 4, !dbg !31
  %inc8 = add nsw i32 %6, 1, !dbg !31
  store i32 %inc8, i32* %c.addr, align 4, !dbg !31
  br label %sw.epilog, !dbg !32

sw.bb9:                                           ; preds = %for.body
  %7 = load i32, i32* %c.addr, align 4, !dbg !33
  %inc10 = add nsw i32 %7, 1, !dbg !33
  store i32 %inc10, i32* %c.addr, align 4, !dbg !33
  br label %sw.epilog, !dbg !34

sw.bb11:                                          ; preds = %for.body
  %8 = load i32, i32* %c.addr, align 4, !dbg !35
  %inc12 = add nsw i32 %8, 1, !dbg !35
  store i32 %inc12, i32* %c.addr, align 4, !dbg !35
  br label %sw.epilog, !dbg !36

sw.bb13:                                          ; preds = %for.body
  %9 = load i32, i32* %c.addr, align 4, !dbg !37
  %inc14 = add nsw i32 %9, 1, !dbg !37
  store i32 %inc14, i32* %c.addr, align 4, !dbg !37
  br label %sw.epilog, !dbg !38

sw.bb15:                                          ; preds = %for.body
  %10 = load i32, i32* %c.addr, align 4, !dbg !39
  %inc16 = add nsw i32 %10, 1, !dbg !39
  store i32 %inc16, i32* %c.addr, align 4, !dbg !39
  br label %sw.epilog, !dbg !40

sw.bb17:                                          ; preds = %for.body
  %11 = load i32, i32* %c.addr, align 4, !dbg !41
  %inc18 = add nsw i32 %11, 1, !dbg !41
  store i32 %inc18, i32* %c.addr, align 4, !dbg !41
  br label %sw.epilog, !dbg !42

sw.bb19:                                          ; preds = %for.body
  %12 = load i32, i32* %c.addr, align 4, !dbg !43
  %inc20 = add nsw i32 %12, 1, !dbg !43
  store i32 %inc20, i32* %c.addr, align 4, !dbg !43
  br label %sw.epilog, !dbg !44

sw.bb21:                                          ; preds = %for.body
  %13 = load i32, i32* %c.addr, align 4, !dbg !45
  %inc22 = add nsw i32 %13, 1, !dbg !45
  store i32 %inc22, i32* %c.addr, align 4, !dbg !45
  br label %sw.epilog, !dbg !46

sw.bb23:                                          ; preds = %for.body
  %14 = load i32, i32* %c.addr, align 4, !dbg !47
  %inc24 = add nsw i32 %14, 1, !dbg !47
  store i32 %inc24, i32* %c.addr, align 4, !dbg !47
  br label %sw.epilog, !dbg !48

sw.bb25:                                          ; preds = %for.body
  %15 = load i32, i32* %c.addr, align 4, !dbg !49
  %inc26 = add nsw i32 %15, 1, !dbg !49
  store i32 %inc26, i32* %c.addr, align 4, !dbg !49
  br label %sw.epilog, !dbg !50

sw.bb27:                                          ; preds = %for.body
  %16 = load i32, i32* %c.addr, align 4, !dbg !51
  %inc28 = add nsw i32 %16, 1, !dbg !51
  store i32 %inc28, i32* %c.addr, align 4, !dbg !51
  br label %sw.epilog, !dbg !52

sw.bb29:                                          ; preds = %for.body
  %17 = load i32, i32* %c.addr, align 4, !dbg !53
  %inc30 = add nsw i32 %17, 1, !dbg !53
  store i32 %inc30, i32* %c.addr, align 4, !dbg !53
  br label %sw.epilog, !dbg !54

sw.bb31:                                          ; preds = %for.body
  %18 = load i32, i32* %c.addr, align 4, !dbg !55
  %inc32 = add nsw i32 %18, 1, !dbg !55
  store i32 %inc32, i32* %c.addr, align 4, !dbg !55
  br label %sw.epilog, !dbg !56

sw.bb33:                                          ; preds = %for.body
  %19 = load i32, i32* %c.addr, align 4, !dbg !57
  %inc34 = add nsw i32 %19, 1, !dbg !57
  store i32 %inc34, i32* %c.addr, align 4, !dbg !57
  br label %sw.epilog, !dbg !58

sw.bb35:                                          ; preds = %for.body
  %20 = load i32, i32* %c.addr, align 4, !dbg !59
  %inc36 = add nsw i32 %20, 1, !dbg !59
  store i32 %inc36, i32* %c.addr, align 4, !dbg !59
  br label %sw.epilog, !dbg !60

sw.bb37:                                          ; preds = %for.body
  %21 = load i32, i32* %c.addr, align 4, !dbg !61
  %inc38 = add nsw i32 %21, 1, !dbg !61
  store i32 %inc38, i32* %c.addr, align 4, !dbg !61
  br label %sw.epilog, !dbg !62

sw.bb39:                                          ; preds = %for.body
  %22 = load i32, i32* %c.addr, align 4, !dbg !63
  %inc40 = add nsw i32 %22, 1, !dbg !63
  store i32 %inc40, i32* %c.addr, align 4, !dbg !63
  br label %sw.epilog, !dbg !64

sw.bb41:                                          ; preds = %for.body
  %23 = load i32, i32* %c.addr, align 4, !dbg !65
  %inc42 = add nsw i32 %23, 1, !dbg !65
  store i32 %inc42, i32* %c.addr, align 4, !dbg !65
  br label %sw.epilog, !dbg !66

sw.bb43:                                          ; preds = %for.body
  %24 = load i32, i32* %c.addr, align 4, !dbg !67
  %inc44 = add nsw i32 %24, 1, !dbg !67
  store i32 %inc44, i32* %c.addr, align 4, !dbg !67
  br label %sw.epilog, !dbg !68

sw.bb45:                                          ; preds = %for.body
  %25 = load i32, i32* %c.addr, align 4, !dbg !69
  %inc46 = add nsw i32 %25, 1, !dbg !69
  store i32 %inc46, i32* %c.addr, align 4, !dbg !69
  br label %sw.epilog, !dbg !70

sw.bb47:                                          ; preds = %for.body
  %26 = load i32, i32* %c.addr, align 4, !dbg !71
  %inc48 = add nsw i32 %26, 1, !dbg !71
  store i32 %inc48, i32* %c.addr, align 4, !dbg !71
  br label %sw.epilog, !dbg !72

sw.bb49:                                          ; preds = %for.body
  %27 = load i32, i32* %c.addr, align 4, !dbg !73
  %inc50 = add nsw i32 %27, 1, !dbg !73
  store i32 %inc50, i32* %c.addr, align 4, !dbg !73
  br label %sw.epilog, !dbg !74

sw.bb51:                                          ; preds = %for.body
  %28 = load i32, i32* %c.addr, align 4, !dbg !75
  %inc52 = add nsw i32 %28, 1, !dbg !75
  store i32 %inc52, i32* %c.addr, align 4, !dbg !75
  br label %sw.epilog, !dbg !76

sw.bb53:                                          ; preds = %for.body
  %29 = load i32, i32* %c.addr, align 4, !dbg !77
  %inc54 = add nsw i32 %29, 1, !dbg !77
  store i32 %inc54, i32* %c.addr, align 4, !dbg !77
  br label %sw.epilog, !dbg !78

sw.bb55:                                          ; preds = %for.body
  %30 = load i32, i32* %c.addr, align 4, !dbg !79
  %inc56 = add nsw i32 %30, 1, !dbg !79
  store i32 %inc56, i32* %c.addr, align 4, !dbg !79
  br label %sw.epilog, !dbg !80

sw.bb57:                                          ; preds = %for.body
  %31 = load i32, i32* %c.addr, align 4, !dbg !81
  %inc58 = add nsw i32 %31, 1, !dbg !81
  store i32 %inc58, i32* %c.addr, align 4, !dbg !81
  br label %sw.epilog, !dbg !82

sw.bb59:                                          ; preds = %for.body
  %32 = load i32, i32* %c.addr, align 4, !dbg !83
  %inc60 = add nsw i32 %32, 1, !dbg !83
  store i32 %inc60, i32* %c.addr, align 4, !dbg !83
  br label %sw.epilog, !dbg !84

sw.bb61:                                          ; preds = %for.body
  %33 = load i32, i32* %c.addr, align 4, !dbg !85
  %inc62 = add nsw i32 %33, 1, !dbg !85
  store i32 %inc62, i32* %c.addr, align 4, !dbg !85
  br label %sw.epilog, !dbg !86

sw.bb63:                                          ; preds = %for.body
  %34 = load i32, i32* %c.addr, align 4, !dbg !87
  %inc64 = add nsw i32 %34, 1, !dbg !87
  store i32 %inc64, i32* %c.addr, align 4, !dbg !87
  br label %sw.epilog, !dbg !88

sw.bb65:                                          ; preds = %for.body
  %35 = load i32, i32* %c.addr, align 4, !dbg !89
  %inc66 = add nsw i32 %35, 1, !dbg !89
  store i32 %inc66, i32* %c.addr, align 4, !dbg !89
  br label %sw.epilog, !dbg !90

sw.bb67:                                          ; preds = %for.body
  %36 = load i32, i32* %c.addr, align 4, !dbg !91
  %inc68 = add nsw i32 %36, 1, !dbg !91
  store i32 %inc68, i32* %c.addr, align 4, !dbg !91
  br label %sw.epilog, !dbg !92

sw.bb69:                                          ; preds = %for.body
  %37 = load i32, i32* %c.addr, align 4, !dbg !93
  %inc70 = add nsw i32 %37, 1, !dbg !93
  store i32 %inc70, i32* %c.addr, align 4, !dbg !93
  br label %sw.epilog, !dbg !94

sw.bb71:                                          ; preds = %for.body
  %38 = load i32, i32* %c.addr, align 4, !dbg !95
  %inc72 = add nsw i32 %38, 1, !dbg !95
  store i32 %inc72, i32* %c.addr, align 4, !dbg !95
  br label %sw.epilog, !dbg !96

sw.bb73:                                          ; preds = %for.body
  %39 = load i32, i32* %c.addr, align 4, !dbg !97
  %inc74 = add nsw i32 %39, 1, !dbg !97
  store i32 %inc74, i32* %c.addr, align 4, !dbg !97
  br label %sw.epilog, !dbg !98

sw.bb75:                                          ; preds = %for.body
  %40 = load i32, i32* %c.addr, align 4, !dbg !99
  %inc76 = add nsw i32 %40, 1, !dbg !99
  store i32 %inc76, i32* %c.addr, align 4, !dbg !99
  br label %sw.epilog, !dbg !100

sw.bb77:                                          ; preds = %for.body
  %41 = load i32, i32* %c.addr, align 4, !dbg !101
  %inc78 = add nsw i32 %41, 1, !dbg !101
  store i32 %inc78, i32* %c.addr, align 4, !dbg !101
  br label %sw.epilog, !dbg !102

sw.bb79:                                          ; preds = %for.body
  %42 = load i32, i32* %c.addr, align 4, !dbg !103
  %inc80 = add nsw i32 %42, 1, !dbg !103
  store i32 %inc80, i32* %c.addr, align 4, !dbg !103
  br label %sw.epilog, !dbg !104

sw.bb81:                                          ; preds = %for.body
  %43 = load i32, i32* %c.addr, align 4, !dbg !105
  %inc82 = add nsw i32 %43, 1, !dbg !105
  store i32 %inc82, i32* %c.addr, align 4, !dbg !105
  br label %sw.epilog, !dbg !106

sw.bb83:                                          ; preds = %for.body
  %44 = load i32, i32* %c.addr, align 4, !dbg !107
  %inc84 = add nsw i32 %44, 1, !dbg !107
  store i32 %inc84, i32* %c.addr, align 4, !dbg !107
  br label %sw.epilog, !dbg !108

sw.bb85:                                          ; preds = %for.body
  %45 = load i32, i32* %c.addr, align 4, !dbg !109
  %inc86 = add nsw i32 %45, 1, !dbg !109
  store i32 %inc86, i32* %c.addr, align 4, !dbg !109
  br label %sw.epilog, !dbg !110

sw.bb87:                                          ; preds = %for.body
  %46 = load i32, i32* %c.addr, align 4, !dbg !111
  %inc88 = add nsw i32 %46, 1, !dbg !111
  store i32 %inc88, i32* %c.addr, align 4, !dbg !111
  br label %sw.epilog, !dbg !112

sw.bb89:                                          ; preds = %for.body
  %47 = load i32, i32* %c.addr, align 4, !dbg !113
  %inc90 = add nsw i32 %47, 1, !dbg !113
  store i32 %inc90, i32* %c.addr, align 4, !dbg !113
  br label %sw.epilog, !dbg !114

sw.bb91:                                          ; preds = %for.body
  %48 = load i32, i32* %c.addr, align 4, !dbg !115
  %inc92 = add nsw i32 %48, 1, !dbg !115
  store i32 %inc92, i32* %c.addr, align 4, !dbg !115
  br label %sw.epilog, !dbg !116

sw.bb93:                                          ; preds = %for.body
  %49 = load i32, i32* %c.addr, align 4, !dbg !117
  %inc94 = add nsw i32 %49, 1, !dbg !117
  store i32 %inc94, i32* %c.addr, align 4, !dbg !117
  br label %sw.epilog, !dbg !118

sw.bb95:                                          ; preds = %for.body
  %50 = load i32, i32* %c.addr, align 4, !dbg !119
  %inc96 = add nsw i32 %50, 1, !dbg !119
  store i32 %inc96, i32* %c.addr, align 4, !dbg !119
  br label %sw.epilog, !dbg !120

sw.bb97:                                          ; preds = %for.body
  %51 = load i32, i32* %c.addr, align 4, !dbg !121
  %inc98 = add nsw i32 %51, 1, !dbg !121
  store i32 %inc98, i32* %c.addr, align 4, !dbg !121
  br label %sw.epilog, !dbg !122

sw.bb99:                                          ; preds = %for.body
  %52 = load i32, i32* %c.addr, align 4, !dbg !123
  %inc100 = add nsw i32 %52, 1, !dbg !123
  store i32 %inc100, i32* %c.addr, align 4, !dbg !123
  br label %sw.epilog, !dbg !124

sw.bb101:                                         ; preds = %for.body
  %53 = load i32, i32* %c.addr, align 4, !dbg !125
  %inc102 = add nsw i32 %53, 1, !dbg !125
  store i32 %inc102, i32* %c.addr, align 4, !dbg !125
  br label %sw.epilog, !dbg !126

sw.bb103:                                         ; preds = %for.body
  %54 = load i32, i32* %c.addr, align 4, !dbg !127
  %inc104 = add nsw i32 %54, 1, !dbg !127
  store i32 %inc104, i32* %c.addr, align 4, !dbg !127
  br label %sw.epilog, !dbg !128

sw.bb105:                                         ; preds = %for.body
  %55 = load i32, i32* %c.addr, align 4, !dbg !129
  %inc106 = add nsw i32 %55, 1, !dbg !129
  store i32 %inc106, i32* %c.addr, align 4, !dbg !129
  br label %sw.epilog, !dbg !130

sw.bb107:                                         ; preds = %for.body
  %56 = load i32, i32* %c.addr, align 4, !dbg !131
  %inc108 = add nsw i32 %56, 1, !dbg !131
  store i32 %inc108, i32* %c.addr, align 4, !dbg !131
  br label %sw.epilog, !dbg !132

sw.bb109:                                         ; preds = %for.body
  %57 = load i32, i32* %c.addr, align 4, !dbg !133
  %inc110 = add nsw i32 %57, 1, !dbg !133
  store i32 %inc110, i32* %c.addr, align 4, !dbg !133
  br label %sw.epilog, !dbg !134

sw.bb111:                                         ; preds = %for.body
  %58 = load i32, i32* %c.addr, align 4, !dbg !135
  %inc112 = add nsw i32 %58, 1, !dbg !135
  store i32 %inc112, i32* %c.addr, align 4, !dbg !135
  br label %sw.epilog, !dbg !136

sw.bb113:                                         ; preds = %for.body
  %59 = load i32, i32* %c.addr, align 4, !dbg !137
  %inc114 = add nsw i32 %59, 1, !dbg !137
  store i32 %inc114, i32* %c.addr, align 4, !dbg !137
  br label %sw.epilog, !dbg !138

sw.bb115:                                         ; preds = %for.body
  %60 = load i32, i32* %c.addr, align 4, !dbg !139
  %inc116 = add nsw i32 %60, 1, !dbg !139
  store i32 %inc116, i32* %c.addr, align 4, !dbg !139
  br label %sw.epilog, !dbg !140

sw.bb117:                                         ; preds = %for.body
  %61 = load i32, i32* %c.addr, align 4, !dbg !141
  %inc118 = add nsw i32 %61, 1, !dbg !141
  store i32 %inc118, i32* %c.addr, align 4, !dbg !141
  br label %sw.epilog, !dbg !142

sw.bb119:                                         ; preds = %for.body
  %62 = load i32, i32* %c.addr, align 4, !dbg !143
  %inc120 = add nsw i32 %62, 1, !dbg !143
  store i32 %inc120, i32* %c.addr, align 4, !dbg !143
  br label %sw.epilog, !dbg !144

sw.bb121:                                         ; preds = %for.body
  %63 = load i32, i32* %c.addr, align 4, !dbg !145
  %inc122 = add nsw i32 %63, 1, !dbg !145
  store i32 %inc122, i32* %c.addr, align 4, !dbg !145
  br label %sw.epilog, !dbg !146

sw.bb123:                                         ; preds = %for.body
  %64 = load i32, i32* %c.addr, align 4, !dbg !147
  %inc124 = add nsw i32 %64, 1, !dbg !147
  store i32 %inc124, i32* %c.addr, align 4, !dbg !147
  br label %sw.epilog, !dbg !148

sw.bb125:                                         ; preds = %for.body
  %65 = load i32, i32* %c.addr, align 4, !dbg !149
  %inc126 = add nsw i32 %65, 1, !dbg !149
  store i32 %inc126, i32* %c.addr, align 4, !dbg !149
  br label %sw.epilog, !dbg !150

sw.bb127:                                         ; preds = %for.body
  %66 = load i32, i32* %c.addr, align 4, !dbg !151
  %inc128 = add nsw i32 %66, 1, !dbg !151
  store i32 %inc128, i32* %c.addr, align 4, !dbg !151
  br label %sw.epilog, !dbg !152

sw.bb129:                                         ; preds = %for.body
  %67 = load i32, i32* %c.addr, align 4, !dbg !153
  %inc130 = add nsw i32 %67, 1, !dbg !153
  store i32 %inc130, i32* %c.addr, align 4, !dbg !153
  br label %sw.epilog, !dbg !154

sw.bb131:                                         ; preds = %for.body
  %68 = load i32, i32* %c.addr, align 4, !dbg !155
  %inc132 = add nsw i32 %68, 1, !dbg !155
  store i32 %inc132, i32* %c.addr, align 4, !dbg !155
  br label %sw.epilog, !dbg !156

sw.bb133:                                         ; preds = %for.body
  %69 = load i32, i32* %c.addr, align 4, !dbg !157
  %inc134 = add nsw i32 %69, 1, !dbg !157
  store i32 %inc134, i32* %c.addr, align 4, !dbg !157
  br label %sw.epilog, !dbg !158

sw.bb135:                                         ; preds = %for.body
  %70 = load i32, i32* %c.addr, align 4, !dbg !159
  %inc136 = add nsw i32 %70, 1, !dbg !159
  store i32 %inc136, i32* %c.addr, align 4, !dbg !159
  br label %sw.epilog, !dbg !160

sw.bb137:                                         ; preds = %for.body
  %71 = load i32, i32* %c.addr, align 4, !dbg !161
  %inc138 = add nsw i32 %71, 1, !dbg !161
  store i32 %inc138, i32* %c.addr, align 4, !dbg !161
  br label %sw.epilog, !dbg !162

sw.bb139:                                         ; preds = %for.body
  %72 = load i32, i32* %c.addr, align 4, !dbg !163
  %inc140 = add nsw i32 %72, 1, !dbg !163
  store i32 %inc140, i32* %c.addr, align 4, !dbg !163
  br label %sw.epilog, !dbg !164

sw.bb141:                                         ; preds = %for.body
  %73 = load i32, i32* %c.addr, align 4, !dbg !165
  %inc142 = add nsw i32 %73, 1, !dbg !165
  store i32 %inc142, i32* %c.addr, align 4, !dbg !165
  br label %sw.epilog, !dbg !166

sw.bb143:                                         ; preds = %for.body
  %74 = load i32, i32* %c.addr, align 4, !dbg !167
  %inc144 = add nsw i32 %74, 1, !dbg !167
  store i32 %inc144, i32* %c.addr, align 4, !dbg !167
  br label %sw.epilog, !dbg !168

sw.bb145:                                         ; preds = %for.body
  %75 = load i32, i32* %c.addr, align 4, !dbg !169
  %inc146 = add nsw i32 %75, 1, !dbg !169
  store i32 %inc146, i32* %c.addr, align 4, !dbg !169
  br label %sw.epilog, !dbg !170

sw.bb147:                                         ; preds = %for.body
  %76 = load i32, i32* %c.addr, align 4, !dbg !171
  %inc148 = add nsw i32 %76, 1, !dbg !171
  store i32 %inc148, i32* %c.addr, align 4, !dbg !171
  br label %sw.epilog, !dbg !172

sw.bb149:                                         ; preds = %for.body
  %77 = load i32, i32* %c.addr, align 4, !dbg !173
  %inc150 = add nsw i32 %77, 1, !dbg !173
  store i32 %inc150, i32* %c.addr, align 4, !dbg !173
  br label %sw.epilog, !dbg !174

sw.bb151:                                         ; preds = %for.body
  %78 = load i32, i32* %c.addr, align 4, !dbg !175
  %inc152 = add nsw i32 %78, 1, !dbg !175
  store i32 %inc152, i32* %c.addr, align 4, !dbg !175
  br label %sw.epilog, !dbg !176

sw.bb153:                                         ; preds = %for.body
  %79 = load i32, i32* %c.addr, align 4, !dbg !177
  %inc154 = add nsw i32 %79, 1, !dbg !177
  store i32 %inc154, i32* %c.addr, align 4, !dbg !177
  br label %sw.epilog, !dbg !178

sw.bb155:                                         ; preds = %for.body
  %80 = load i32, i32* %c.addr, align 4, !dbg !179
  %inc156 = add nsw i32 %80, 1, !dbg !179
  store i32 %inc156, i32* %c.addr, align 4, !dbg !179
  br label %sw.epilog, !dbg !180

sw.bb157:                                         ; preds = %for.body
  %81 = load i32, i32* %c.addr, align 4, !dbg !181
  %inc158 = add nsw i32 %81, 1, !dbg !181
  store i32 %inc158, i32* %c.addr, align 4, !dbg !181
  br label %sw.epilog, !dbg !182

sw.bb159:                                         ; preds = %for.body
  %82 = load i32, i32* %c.addr, align 4, !dbg !183
  %inc160 = add nsw i32 %82, 1, !dbg !183
  store i32 %inc160, i32* %c.addr, align 4, !dbg !183
  br label %sw.epilog, !dbg !184

sw.bb161:                                         ; preds = %for.body
  %83 = load i32, i32* %c.addr, align 4, !dbg !185
  %inc162 = add nsw i32 %83, 1, !dbg !185
  store i32 %inc162, i32* %c.addr, align 4, !dbg !185
  br label %sw.epilog, !dbg !186

sw.bb163:                                         ; preds = %for.body
  %84 = load i32, i32* %c.addr, align 4, !dbg !187
  %inc164 = add nsw i32 %84, 1, !dbg !187
  store i32 %inc164, i32* %c.addr, align 4, !dbg !187
  br label %sw.epilog, !dbg !188

sw.bb165:                                         ; preds = %for.body
  %85 = load i32, i32* %c.addr, align 4, !dbg !189
  %inc166 = add nsw i32 %85, 1, !dbg !189
  store i32 %inc166, i32* %c.addr, align 4, !dbg !189
  br label %sw.epilog, !dbg !190

sw.bb167:                                         ; preds = %for.body
  %86 = load i32, i32* %c.addr, align 4, !dbg !191
  %inc168 = add nsw i32 %86, 1, !dbg !191
  store i32 %inc168, i32* %c.addr, align 4, !dbg !191
  br label %sw.epilog, !dbg !192

sw.bb169:                                         ; preds = %for.body
  %87 = load i32, i32* %c.addr, align 4, !dbg !193
  %inc170 = add nsw i32 %87, 1, !dbg !193
  store i32 %inc170, i32* %c.addr, align 4, !dbg !193
  br label %sw.epilog, !dbg !194

sw.bb171:                                         ; preds = %for.body
  %88 = load i32, i32* %c.addr, align 4, !dbg !195
  %inc172 = add nsw i32 %88, 1, !dbg !195
  store i32 %inc172, i32* %c.addr, align 4, !dbg !195
  br label %sw.epilog, !dbg !196

sw.bb173:                                         ; preds = %for.body
  %89 = load i32, i32* %c.addr, align 4, !dbg !197
  %inc174 = add nsw i32 %89, 1, !dbg !197
  store i32 %inc174, i32* %c.addr, align 4, !dbg !197
  br label %sw.epilog, !dbg !198

sw.bb175:                                         ; preds = %for.body
  %90 = load i32, i32* %c.addr, align 4, !dbg !199
  %inc176 = add nsw i32 %90, 1, !dbg !199
  store i32 %inc176, i32* %c.addr, align 4, !dbg !199
  br label %sw.epilog, !dbg !200

sw.bb177:                                         ; preds = %for.body
  %91 = load i32, i32* %c.addr, align 4, !dbg !201
  %inc178 = add nsw i32 %91, 1, !dbg !201
  store i32 %inc178, i32* %c.addr, align 4, !dbg !201
  br label %sw.epilog, !dbg !202

sw.bb179:                                         ; preds = %for.body
  %92 = load i32, i32* %c.addr, align 4, !dbg !203
  %inc180 = add nsw i32 %92, 1, !dbg !203
  store i32 %inc180, i32* %c.addr, align 4, !dbg !203
  br label %sw.epilog, !dbg !204

sw.bb181:                                         ; preds = %for.body
  %93 = load i32, i32* %c.addr, align 4, !dbg !205
  %inc182 = add nsw i32 %93, 1, !dbg !205
  store i32 %inc182, i32* %c.addr, align 4, !dbg !205
  br label %sw.epilog, !dbg !206

sw.bb183:                                         ; preds = %for.body
  %94 = load i32, i32* %c.addr, align 4, !dbg !207
  %inc184 = add nsw i32 %94, 1, !dbg !207
  store i32 %inc184, i32* %c.addr, align 4, !dbg !207
  br label %sw.epilog, !dbg !208

sw.bb185:                                         ; preds = %for.body
  %95 = load i32, i32* %c.addr, align 4, !dbg !209
  %inc186 = add nsw i32 %95, 1, !dbg !209
  store i32 %inc186, i32* %c.addr, align 4, !dbg !209
  br label %sw.epilog, !dbg !210

sw.bb187:                                         ; preds = %for.body
  %96 = load i32, i32* %c.addr, align 4, !dbg !211
  %inc188 = add nsw i32 %96, 1, !dbg !211
  store i32 %inc188, i32* %c.addr, align 4, !dbg !211
  br label %sw.epilog, !dbg !212

sw.bb189:                                         ; preds = %for.body
  %97 = load i32, i32* %c.addr, align 4, !dbg !213
  %inc190 = add nsw i32 %97, 1, !dbg !213
  store i32 %inc190, i32* %c.addr, align 4, !dbg !213
  br label %sw.epilog, !dbg !214

sw.bb191:                                         ; preds = %for.body
  %98 = load i32, i32* %c.addr, align 4, !dbg !215
  %inc192 = add nsw i32 %98, 1, !dbg !215
  store i32 %inc192, i32* %c.addr, align 4, !dbg !215
  br label %sw.epilog, !dbg !216

sw.bb193:                                         ; preds = %for.body
  %99 = load i32, i32* %c.addr, align 4, !dbg !217
  %inc194 = add nsw i32 %99, 1, !dbg !217
  store i32 %inc194, i32* %c.addr, align 4, !dbg !217
  br label %sw.epilog, !dbg !218

sw.bb195:                                         ; preds = %for.body
  %100 = load i32, i32* %c.addr, align 4, !dbg !219
  %inc196 = add nsw i32 %100, 1, !dbg !219
  store i32 %inc196, i32* %c.addr, align 4, !dbg !219
  br label %sw.epilog, !dbg !220

sw.bb197:                                         ; preds = %for.body
  %101 = load i32, i32* %c.addr, align 4, !dbg !221
  %inc198 = add nsw i32 %101, 1, !dbg !221
  store i32 %inc198, i32* %c.addr, align 4, !dbg !221
  br label %sw.epilog, !dbg !222

sw.bb199:                                         ; preds = %for.body
  %102 = load i32, i32* %c.addr, align 4, !dbg !223
  %inc200 = add nsw i32 %102, 1, !dbg !223
  store i32 %inc200, i32* %c.addr, align 4, !dbg !223
  br label %sw.epilog, !dbg !224

sw.bb201:                                         ; preds = %for.body
  %103 = load i32, i32* %c.addr, align 4, !dbg !225
  %inc202 = add nsw i32 %103, 1, !dbg !225
  store i32 %inc202, i32* %c.addr, align 4, !dbg !225
  br label %sw.epilog, !dbg !226

sw.bb203:                                         ; preds = %for.body
  %104 = load i32, i32* %c.addr, align 4, !dbg !227
  %inc204 = add nsw i32 %104, 1, !dbg !227
  store i32 %inc204, i32* %c.addr, align 4, !dbg !227
  br label %sw.epilog, !dbg !228

sw.bb205:                                         ; preds = %for.body
  %105 = load i32, i32* %c.addr, align 4, !dbg !229
  %inc206 = add nsw i32 %105, 1, !dbg !229
  store i32 %inc206, i32* %c.addr, align 4, !dbg !229
  br label %sw.epilog, !dbg !230

sw.bb207:                                         ; preds = %for.body
  %106 = load i32, i32* %c.addr, align 4, !dbg !231
  %inc208 = add nsw i32 %106, 1, !dbg !231
  store i32 %inc208, i32* %c.addr, align 4, !dbg !231
  br label %sw.epilog, !dbg !232

sw.bb209:                                         ; preds = %for.body
  %107 = load i32, i32* %c.addr, align 4, !dbg !233
  %inc210 = add nsw i32 %107, 1, !dbg !233
  store i32 %inc210, i32* %c.addr, align 4, !dbg !233
  br label %sw.epilog, !dbg !234

sw.bb211:                                         ; preds = %for.body
  %108 = load i32, i32* %c.addr, align 4, !dbg !235
  %inc212 = add nsw i32 %108, 1, !dbg !235
  store i32 %inc212, i32* %c.addr, align 4, !dbg !235
  br label %sw.epilog, !dbg !236

sw.bb213:                                         ; preds = %for.body
  %109 = load i32, i32* %c.addr, align 4, !dbg !237
  %inc214 = add nsw i32 %109, 1, !dbg !237
  store i32 %inc214, i32* %c.addr, align 4, !dbg !237
  br label %sw.epilog, !dbg !238

sw.bb215:                                         ; preds = %for.body
  %110 = load i32, i32* %c.addr, align 4, !dbg !239
  %inc216 = add nsw i32 %110, 1, !dbg !239
  store i32 %inc216, i32* %c.addr, align 4, !dbg !239
  br label %sw.epilog, !dbg !240

sw.bb217:                                         ; preds = %for.body
  %111 = load i32, i32* %c.addr, align 4, !dbg !241
  %inc218 = add nsw i32 %111, 1, !dbg !241
  store i32 %inc218, i32* %c.addr, align 4, !dbg !241
  br label %sw.epilog, !dbg !242

sw.bb219:                                         ; preds = %for.body
  %112 = load i32, i32* %c.addr, align 4, !dbg !243
  %inc220 = add nsw i32 %112, 1, !dbg !243
  store i32 %inc220, i32* %c.addr, align 4, !dbg !243
  br label %sw.epilog, !dbg !244

sw.bb221:                                         ; preds = %for.body
  %113 = load i32, i32* %c.addr, align 4, !dbg !245
  %inc222 = add nsw i32 %113, 1, !dbg !245
  store i32 %inc222, i32* %c.addr, align 4, !dbg !245
  br label %sw.epilog, !dbg !246

sw.bb223:                                         ; preds = %for.body
  %114 = load i32, i32* %c.addr, align 4, !dbg !247
  %inc224 = add nsw i32 %114, 1, !dbg !247
  store i32 %inc224, i32* %c.addr, align 4, !dbg !247
  br label %sw.epilog, !dbg !248

sw.bb225:                                         ; preds = %for.body
  %115 = load i32, i32* %c.addr, align 4, !dbg !249
  %inc226 = add nsw i32 %115, 1, !dbg !249
  store i32 %inc226, i32* %c.addr, align 4, !dbg !249
  br label %sw.epilog, !dbg !250

sw.bb227:                                         ; preds = %for.body
  %116 = load i32, i32* %c.addr, align 4, !dbg !251
  %inc228 = add nsw i32 %116, 1, !dbg !251
  store i32 %inc228, i32* %c.addr, align 4, !dbg !251
  br label %sw.epilog, !dbg !252

sw.bb229:                                         ; preds = %for.body
  %117 = load i32, i32* %c.addr, align 4, !dbg !253
  %inc230 = add nsw i32 %117, 1, !dbg !253
  store i32 %inc230, i32* %c.addr, align 4, !dbg !253
  br label %sw.epilog, !dbg !254

sw.bb231:                                         ; preds = %for.body
  %118 = load i32, i32* %c.addr, align 4, !dbg !255
  %inc232 = add nsw i32 %118, 1, !dbg !255
  store i32 %inc232, i32* %c.addr, align 4, !dbg !255
  br label %sw.epilog, !dbg !256

sw.bb233:                                         ; preds = %for.body
  %119 = load i32, i32* %c.addr, align 4, !dbg !257
  %inc234 = add nsw i32 %119, 1, !dbg !257
  store i32 %inc234, i32* %c.addr, align 4, !dbg !257
  br label %sw.epilog, !dbg !258

sw.bb235:                                         ; preds = %for.body
  %120 = load i32, i32* %c.addr, align 4, !dbg !259
  %inc236 = add nsw i32 %120, 1, !dbg !259
  store i32 %inc236, i32* %c.addr, align 4, !dbg !259
  br label %sw.epilog, !dbg !260

sw.bb237:                                         ; preds = %for.body
  %121 = load i32, i32* %c.addr, align 4, !dbg !261
  %inc238 = add nsw i32 %121, 1, !dbg !261
  store i32 %inc238, i32* %c.addr, align 4, !dbg !261
  br label %sw.epilog, !dbg !262

sw.default:                                       ; preds = %for.body
  %122 = load i32, i32* %c.addr, align 4, !dbg !263
  %dec = add nsw i32 %122, -1, !dbg !263
  store i32 %dec, i32* %c.addr, align 4, !dbg !263
  br label %sw.epilog, !dbg !264

sw.epilog:                                        ; preds = %sw.default, %sw.bb237, %sw.bb235, %sw.bb233, %sw.bb231, %sw.bb229, %sw.bb227, %sw.bb225, %sw.bb223, %sw.bb221, %sw.bb219, %sw.bb217, %sw.bb215, %sw.bb213, %sw.bb211, %sw.bb209, %sw.bb207, %sw.bb205, %sw.bb203, %sw.bb201, %sw.bb199, %sw.bb197, %sw.bb195, %sw.bb193, %sw.bb191, %sw.bb189, %sw.bb187, %sw.bb185, %sw.bb183, %sw.bb181, %sw.bb179, %sw.bb177, %sw.bb175, %sw.bb173, %sw.bb171, %sw.bb169, %sw.bb167, %sw.bb165, %sw.bb163, %sw.bb161, %sw.bb159, %sw.bb157, %sw.bb155, %sw.bb153, %sw.bb151, %sw.bb149, %sw.bb147, %sw.bb145, %sw.bb143, %sw.bb141, %sw.bb139, %sw.bb137, %sw.bb135, %sw.bb133, %sw.bb131, %sw.bb129, %sw.bb127, %sw.bb125, %sw.bb123, %sw.bb121, %sw.bb119, %sw.bb117, %sw.bb115, %sw.bb113, %sw.bb111, %sw.bb109, %sw.bb107, %sw.bb105, %sw.bb103, %sw.bb101, %sw.bb99, %sw.bb97, %sw.bb95, %sw.bb93, %sw.bb91, %sw.bb89, %sw.bb87, %sw.bb85, %sw.bb83, %sw.bb81, %sw.bb79, %sw.bb77, %sw.bb75, %sw.bb73, %sw.bb71, %sw.bb69, %sw.bb67, %sw.bb65, %sw.bb63, %sw.bb61, %sw.bb59, %sw.bb57, %sw.bb55, %sw.bb53, %sw.bb51, %sw.bb49, %sw.bb47, %sw.bb45, %sw.bb43, %sw.bb41, %sw.bb39, %sw.bb37, %sw.bb35, %sw.bb33, %sw.bb31, %sw.bb29, %sw.bb27, %sw.bb25, %sw.bb23, %sw.bb21, %sw.bb19, %sw.bb17, %sw.bb15, %sw.bb13, %sw.bb11, %sw.bb9, %sw.bb7, %sw.bb5, %sw.bb3, %sw.bb1, %sw.bb
  br label %for.inc, !dbg !265

for.inc:                                          ; preds = %sw.epilog
  %123 = load i32, i32* %i, align 4, !dbg !266
  %inc239 = add nsw i32 %123, 1, !dbg !266
  store i32 %inc239, i32* %i, align 4, !dbg !266
  br label %for.cond, !dbg !20, !llvm.loop !267

for.end:                                          ; preds = %for.cond
  %124 = load i32, i32* %c.addr, align 4, !dbg !269
  ret i32 %124, !dbg !270
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @swi50(i32 noundef %c) #0 !dbg !271 {
entry:
  %c.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  store i32 0, i32* %i, align 4, !dbg !272
  br label %for.cond, !dbg !273

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !274
  %cmp = icmp slt i32 %0, 50, !dbg !275
  br i1 %cmp, label %for.body, label %for.end, !dbg !276

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4, !dbg !277
  switch i32 %1, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb3
    i32 3, label %sw.bb5
    i32 4, label %sw.bb7
    i32 5, label %sw.bb9
    i32 6, label %sw.bb11
    i32 7, label %sw.bb13
    i32 8, label %sw.bb15
    i32 9, label %sw.bb17
    i32 10, label %sw.bb19
    i32 11, label %sw.bb21
    i32 12, label %sw.bb23
    i32 13, label %sw.bb25
    i32 14, label %sw.bb27
    i32 15, label %sw.bb29
    i32 16, label %sw.bb31
    i32 17, label %sw.bb33
    i32 18, label %sw.bb35
    i32 19, label %sw.bb37
    i32 20, label %sw.bb39
    i32 21, label %sw.bb41
    i32 22, label %sw.bb43
    i32 23, label %sw.bb45
    i32 24, label %sw.bb47
    i32 25, label %sw.bb49
    i32 26, label %sw.bb51
    i32 27, label %sw.bb53
    i32 28, label %sw.bb55
    i32 29, label %sw.bb57
    i32 30, label %sw.bb59
    i32 31, label %sw.bb61
    i32 32, label %sw.bb63
    i32 33, label %sw.bb65
    i32 34, label %sw.bb67
    i32 35, label %sw.bb69
    i32 36, label %sw.bb71
    i32 37, label %sw.bb73
    i32 38, label %sw.bb75
    i32 39, label %sw.bb77
    i32 40, label %sw.bb79
    i32 41, label %sw.bb81
    i32 42, label %sw.bb83
    i32 43, label %sw.bb85
    i32 44, label %sw.bb87
    i32 45, label %sw.bb89
    i32 46, label %sw.bb91
    i32 47, label %sw.bb93
    i32 48, label %sw.bb95
    i32 49, label %sw.bb97
    i32 50, label %sw.bb99
    i32 51, label %sw.bb101
    i32 52, label %sw.bb103
    i32 53, label %sw.bb105
    i32 54, label %sw.bb107
    i32 55, label %sw.bb109
    i32 56, label %sw.bb111
    i32 57, label %sw.bb113
    i32 58, label %sw.bb115
    i32 59, label %sw.bb117
  ], !dbg !278

sw.bb:                                            ; preds = %for.body
  %2 = load i32, i32* %c.addr, align 4, !dbg !279
  %inc = add nsw i32 %2, 1, !dbg !279
  store i32 %inc, i32* %c.addr, align 4, !dbg !279
  br label %sw.epilog, !dbg !280

sw.bb1:                                           ; preds = %for.body
  %3 = load i32, i32* %c.addr, align 4, !dbg !281
  %inc2 = add nsw i32 %3, 1, !dbg !281
  store i32 %inc2, i32* %c.addr, align 4, !dbg !281
  br label %sw.epilog, !dbg !282

sw.bb3:                                           ; preds = %for.body
  %4 = load i32, i32* %c.addr, align 4, !dbg !283
  %inc4 = add nsw i32 %4, 1, !dbg !283
  store i32 %inc4, i32* %c.addr, align 4, !dbg !283
  br label %sw.epilog, !dbg !284

sw.bb5:                                           ; preds = %for.body
  %5 = load i32, i32* %c.addr, align 4, !dbg !285
  %inc6 = add nsw i32 %5, 1, !dbg !285
  store i32 %inc6, i32* %c.addr, align 4, !dbg !285
  br label %sw.epilog, !dbg !286

sw.bb7:                                           ; preds = %for.body
  %6 = load i32, i32* %c.addr, align 4, !dbg !287
  %inc8 = add nsw i32 %6, 1, !dbg !287
  store i32 %inc8, i32* %c.addr, align 4, !dbg !287
  br label %sw.epilog, !dbg !288

sw.bb9:                                           ; preds = %for.body
  %7 = load i32, i32* %c.addr, align 4, !dbg !289
  %inc10 = add nsw i32 %7, 1, !dbg !289
  store i32 %inc10, i32* %c.addr, align 4, !dbg !289
  br label %sw.epilog, !dbg !290

sw.bb11:                                          ; preds = %for.body
  %8 = load i32, i32* %c.addr, align 4, !dbg !291
  %inc12 = add nsw i32 %8, 1, !dbg !291
  store i32 %inc12, i32* %c.addr, align 4, !dbg !291
  br label %sw.epilog, !dbg !292

sw.bb13:                                          ; preds = %for.body
  %9 = load i32, i32* %c.addr, align 4, !dbg !293
  %inc14 = add nsw i32 %9, 1, !dbg !293
  store i32 %inc14, i32* %c.addr, align 4, !dbg !293
  br label %sw.epilog, !dbg !294

sw.bb15:                                          ; preds = %for.body
  %10 = load i32, i32* %c.addr, align 4, !dbg !295
  %inc16 = add nsw i32 %10, 1, !dbg !295
  store i32 %inc16, i32* %c.addr, align 4, !dbg !295
  br label %sw.epilog, !dbg !296

sw.bb17:                                          ; preds = %for.body
  %11 = load i32, i32* %c.addr, align 4, !dbg !297
  %inc18 = add nsw i32 %11, 1, !dbg !297
  store i32 %inc18, i32* %c.addr, align 4, !dbg !297
  br label %sw.epilog, !dbg !298

sw.bb19:                                          ; preds = %for.body
  %12 = load i32, i32* %c.addr, align 4, !dbg !299
  %inc20 = add nsw i32 %12, 1, !dbg !299
  store i32 %inc20, i32* %c.addr, align 4, !dbg !299
  br label %sw.epilog, !dbg !300

sw.bb21:                                          ; preds = %for.body
  %13 = load i32, i32* %c.addr, align 4, !dbg !301
  %inc22 = add nsw i32 %13, 1, !dbg !301
  store i32 %inc22, i32* %c.addr, align 4, !dbg !301
  br label %sw.epilog, !dbg !302

sw.bb23:                                          ; preds = %for.body
  %14 = load i32, i32* %c.addr, align 4, !dbg !303
  %inc24 = add nsw i32 %14, 1, !dbg !303
  store i32 %inc24, i32* %c.addr, align 4, !dbg !303
  br label %sw.epilog, !dbg !304

sw.bb25:                                          ; preds = %for.body
  %15 = load i32, i32* %c.addr, align 4, !dbg !305
  %inc26 = add nsw i32 %15, 1, !dbg !305
  store i32 %inc26, i32* %c.addr, align 4, !dbg !305
  br label %sw.epilog, !dbg !306

sw.bb27:                                          ; preds = %for.body
  %16 = load i32, i32* %c.addr, align 4, !dbg !307
  %inc28 = add nsw i32 %16, 1, !dbg !307
  store i32 %inc28, i32* %c.addr, align 4, !dbg !307
  br label %sw.epilog, !dbg !308

sw.bb29:                                          ; preds = %for.body
  %17 = load i32, i32* %c.addr, align 4, !dbg !309
  %inc30 = add nsw i32 %17, 1, !dbg !309
  store i32 %inc30, i32* %c.addr, align 4, !dbg !309
  br label %sw.epilog, !dbg !310

sw.bb31:                                          ; preds = %for.body
  %18 = load i32, i32* %c.addr, align 4, !dbg !311
  %inc32 = add nsw i32 %18, 1, !dbg !311
  store i32 %inc32, i32* %c.addr, align 4, !dbg !311
  br label %sw.epilog, !dbg !312

sw.bb33:                                          ; preds = %for.body
  %19 = load i32, i32* %c.addr, align 4, !dbg !313
  %inc34 = add nsw i32 %19, 1, !dbg !313
  store i32 %inc34, i32* %c.addr, align 4, !dbg !313
  br label %sw.epilog, !dbg !314

sw.bb35:                                          ; preds = %for.body
  %20 = load i32, i32* %c.addr, align 4, !dbg !315
  %inc36 = add nsw i32 %20, 1, !dbg !315
  store i32 %inc36, i32* %c.addr, align 4, !dbg !315
  br label %sw.epilog, !dbg !316

sw.bb37:                                          ; preds = %for.body
  %21 = load i32, i32* %c.addr, align 4, !dbg !317
  %inc38 = add nsw i32 %21, 1, !dbg !317
  store i32 %inc38, i32* %c.addr, align 4, !dbg !317
  br label %sw.epilog, !dbg !318

sw.bb39:                                          ; preds = %for.body
  %22 = load i32, i32* %c.addr, align 4, !dbg !319
  %inc40 = add nsw i32 %22, 1, !dbg !319
  store i32 %inc40, i32* %c.addr, align 4, !dbg !319
  br label %sw.epilog, !dbg !320

sw.bb41:                                          ; preds = %for.body
  %23 = load i32, i32* %c.addr, align 4, !dbg !321
  %inc42 = add nsw i32 %23, 1, !dbg !321
  store i32 %inc42, i32* %c.addr, align 4, !dbg !321
  br label %sw.epilog, !dbg !322

sw.bb43:                                          ; preds = %for.body
  %24 = load i32, i32* %c.addr, align 4, !dbg !323
  %inc44 = add nsw i32 %24, 1, !dbg !323
  store i32 %inc44, i32* %c.addr, align 4, !dbg !323
  br label %sw.epilog, !dbg !324

sw.bb45:                                          ; preds = %for.body
  %25 = load i32, i32* %c.addr, align 4, !dbg !325
  %inc46 = add nsw i32 %25, 1, !dbg !325
  store i32 %inc46, i32* %c.addr, align 4, !dbg !325
  br label %sw.epilog, !dbg !326

sw.bb47:                                          ; preds = %for.body
  %26 = load i32, i32* %c.addr, align 4, !dbg !327
  %inc48 = add nsw i32 %26, 1, !dbg !327
  store i32 %inc48, i32* %c.addr, align 4, !dbg !327
  br label %sw.epilog, !dbg !328

sw.bb49:                                          ; preds = %for.body
  %27 = load i32, i32* %c.addr, align 4, !dbg !329
  %inc50 = add nsw i32 %27, 1, !dbg !329
  store i32 %inc50, i32* %c.addr, align 4, !dbg !329
  br label %sw.epilog, !dbg !330

sw.bb51:                                          ; preds = %for.body
  %28 = load i32, i32* %c.addr, align 4, !dbg !331
  %inc52 = add nsw i32 %28, 1, !dbg !331
  store i32 %inc52, i32* %c.addr, align 4, !dbg !331
  br label %sw.epilog, !dbg !332

sw.bb53:                                          ; preds = %for.body
  %29 = load i32, i32* %c.addr, align 4, !dbg !333
  %inc54 = add nsw i32 %29, 1, !dbg !333
  store i32 %inc54, i32* %c.addr, align 4, !dbg !333
  br label %sw.epilog, !dbg !334

sw.bb55:                                          ; preds = %for.body
  %30 = load i32, i32* %c.addr, align 4, !dbg !335
  %inc56 = add nsw i32 %30, 1, !dbg !335
  store i32 %inc56, i32* %c.addr, align 4, !dbg !335
  br label %sw.epilog, !dbg !336

sw.bb57:                                          ; preds = %for.body
  %31 = load i32, i32* %c.addr, align 4, !dbg !337
  %inc58 = add nsw i32 %31, 1, !dbg !337
  store i32 %inc58, i32* %c.addr, align 4, !dbg !337
  br label %sw.epilog, !dbg !338

sw.bb59:                                          ; preds = %for.body
  %32 = load i32, i32* %c.addr, align 4, !dbg !339
  %inc60 = add nsw i32 %32, 1, !dbg !339
  store i32 %inc60, i32* %c.addr, align 4, !dbg !339
  br label %sw.epilog, !dbg !340

sw.bb61:                                          ; preds = %for.body
  %33 = load i32, i32* %c.addr, align 4, !dbg !341
  %inc62 = add nsw i32 %33, 1, !dbg !341
  store i32 %inc62, i32* %c.addr, align 4, !dbg !341
  br label %sw.epilog, !dbg !342

sw.bb63:                                          ; preds = %for.body
  %34 = load i32, i32* %c.addr, align 4, !dbg !343
  %inc64 = add nsw i32 %34, 1, !dbg !343
  store i32 %inc64, i32* %c.addr, align 4, !dbg !343
  br label %sw.epilog, !dbg !344

sw.bb65:                                          ; preds = %for.body
  %35 = load i32, i32* %c.addr, align 4, !dbg !345
  %inc66 = add nsw i32 %35, 1, !dbg !345
  store i32 %inc66, i32* %c.addr, align 4, !dbg !345
  br label %sw.epilog, !dbg !346

sw.bb67:                                          ; preds = %for.body
  %36 = load i32, i32* %c.addr, align 4, !dbg !347
  %inc68 = add nsw i32 %36, 1, !dbg !347
  store i32 %inc68, i32* %c.addr, align 4, !dbg !347
  br label %sw.epilog, !dbg !348

sw.bb69:                                          ; preds = %for.body
  %37 = load i32, i32* %c.addr, align 4, !dbg !349
  %inc70 = add nsw i32 %37, 1, !dbg !349
  store i32 %inc70, i32* %c.addr, align 4, !dbg !349
  br label %sw.epilog, !dbg !350

sw.bb71:                                          ; preds = %for.body
  %38 = load i32, i32* %c.addr, align 4, !dbg !351
  %inc72 = add nsw i32 %38, 1, !dbg !351
  store i32 %inc72, i32* %c.addr, align 4, !dbg !351
  br label %sw.epilog, !dbg !352

sw.bb73:                                          ; preds = %for.body
  %39 = load i32, i32* %c.addr, align 4, !dbg !353
  %inc74 = add nsw i32 %39, 1, !dbg !353
  store i32 %inc74, i32* %c.addr, align 4, !dbg !353
  br label %sw.epilog, !dbg !354

sw.bb75:                                          ; preds = %for.body
  %40 = load i32, i32* %c.addr, align 4, !dbg !355
  %inc76 = add nsw i32 %40, 1, !dbg !355
  store i32 %inc76, i32* %c.addr, align 4, !dbg !355
  br label %sw.epilog, !dbg !356

sw.bb77:                                          ; preds = %for.body
  %41 = load i32, i32* %c.addr, align 4, !dbg !357
  %inc78 = add nsw i32 %41, 1, !dbg !357
  store i32 %inc78, i32* %c.addr, align 4, !dbg !357
  br label %sw.epilog, !dbg !358

sw.bb79:                                          ; preds = %for.body
  %42 = load i32, i32* %c.addr, align 4, !dbg !359
  %inc80 = add nsw i32 %42, 1, !dbg !359
  store i32 %inc80, i32* %c.addr, align 4, !dbg !359
  br label %sw.epilog, !dbg !360

sw.bb81:                                          ; preds = %for.body
  %43 = load i32, i32* %c.addr, align 4, !dbg !361
  %inc82 = add nsw i32 %43, 1, !dbg !361
  store i32 %inc82, i32* %c.addr, align 4, !dbg !361
  br label %sw.epilog, !dbg !362

sw.bb83:                                          ; preds = %for.body
  %44 = load i32, i32* %c.addr, align 4, !dbg !363
  %inc84 = add nsw i32 %44, 1, !dbg !363
  store i32 %inc84, i32* %c.addr, align 4, !dbg !363
  br label %sw.epilog, !dbg !364

sw.bb85:                                          ; preds = %for.body
  %45 = load i32, i32* %c.addr, align 4, !dbg !365
  %inc86 = add nsw i32 %45, 1, !dbg !365
  store i32 %inc86, i32* %c.addr, align 4, !dbg !365
  br label %sw.epilog, !dbg !366

sw.bb87:                                          ; preds = %for.body
  %46 = load i32, i32* %c.addr, align 4, !dbg !367
  %inc88 = add nsw i32 %46, 1, !dbg !367
  store i32 %inc88, i32* %c.addr, align 4, !dbg !367
  br label %sw.epilog, !dbg !368

sw.bb89:                                          ; preds = %for.body
  %47 = load i32, i32* %c.addr, align 4, !dbg !369
  %inc90 = add nsw i32 %47, 1, !dbg !369
  store i32 %inc90, i32* %c.addr, align 4, !dbg !369
  br label %sw.epilog, !dbg !370

sw.bb91:                                          ; preds = %for.body
  %48 = load i32, i32* %c.addr, align 4, !dbg !371
  %inc92 = add nsw i32 %48, 1, !dbg !371
  store i32 %inc92, i32* %c.addr, align 4, !dbg !371
  br label %sw.epilog, !dbg !372

sw.bb93:                                          ; preds = %for.body
  %49 = load i32, i32* %c.addr, align 4, !dbg !373
  %inc94 = add nsw i32 %49, 1, !dbg !373
  store i32 %inc94, i32* %c.addr, align 4, !dbg !373
  br label %sw.epilog, !dbg !374

sw.bb95:                                          ; preds = %for.body
  %50 = load i32, i32* %c.addr, align 4, !dbg !375
  %inc96 = add nsw i32 %50, 1, !dbg !375
  store i32 %inc96, i32* %c.addr, align 4, !dbg !375
  br label %sw.epilog, !dbg !376

sw.bb97:                                          ; preds = %for.body
  %51 = load i32, i32* %c.addr, align 4, !dbg !377
  %inc98 = add nsw i32 %51, 1, !dbg !377
  store i32 %inc98, i32* %c.addr, align 4, !dbg !377
  br label %sw.epilog, !dbg !378

sw.bb99:                                          ; preds = %for.body
  %52 = load i32, i32* %c.addr, align 4, !dbg !379
  %inc100 = add nsw i32 %52, 1, !dbg !379
  store i32 %inc100, i32* %c.addr, align 4, !dbg !379
  br label %sw.epilog, !dbg !380

sw.bb101:                                         ; preds = %for.body
  %53 = load i32, i32* %c.addr, align 4, !dbg !381
  %inc102 = add nsw i32 %53, 1, !dbg !381
  store i32 %inc102, i32* %c.addr, align 4, !dbg !381
  br label %sw.epilog, !dbg !382

sw.bb103:                                         ; preds = %for.body
  %54 = load i32, i32* %c.addr, align 4, !dbg !383
  %inc104 = add nsw i32 %54, 1, !dbg !383
  store i32 %inc104, i32* %c.addr, align 4, !dbg !383
  br label %sw.epilog, !dbg !384

sw.bb105:                                         ; preds = %for.body
  %55 = load i32, i32* %c.addr, align 4, !dbg !385
  %inc106 = add nsw i32 %55, 1, !dbg !385
  store i32 %inc106, i32* %c.addr, align 4, !dbg !385
  br label %sw.epilog, !dbg !386

sw.bb107:                                         ; preds = %for.body
  %56 = load i32, i32* %c.addr, align 4, !dbg !387
  %inc108 = add nsw i32 %56, 1, !dbg !387
  store i32 %inc108, i32* %c.addr, align 4, !dbg !387
  br label %sw.epilog, !dbg !388

sw.bb109:                                         ; preds = %for.body
  %57 = load i32, i32* %c.addr, align 4, !dbg !389
  %inc110 = add nsw i32 %57, 1, !dbg !389
  store i32 %inc110, i32* %c.addr, align 4, !dbg !389
  br label %sw.epilog, !dbg !390

sw.bb111:                                         ; preds = %for.body
  %58 = load i32, i32* %c.addr, align 4, !dbg !391
  %inc112 = add nsw i32 %58, 1, !dbg !391
  store i32 %inc112, i32* %c.addr, align 4, !dbg !391
  br label %sw.epilog, !dbg !392

sw.bb113:                                         ; preds = %for.body
  %59 = load i32, i32* %c.addr, align 4, !dbg !393
  %inc114 = add nsw i32 %59, 1, !dbg !393
  store i32 %inc114, i32* %c.addr, align 4, !dbg !393
  br label %sw.epilog, !dbg !394

sw.bb115:                                         ; preds = %for.body
  %60 = load i32, i32* %c.addr, align 4, !dbg !395
  %inc116 = add nsw i32 %60, 1, !dbg !395
  store i32 %inc116, i32* %c.addr, align 4, !dbg !395
  br label %sw.epilog, !dbg !396

sw.bb117:                                         ; preds = %for.body
  %61 = load i32, i32* %c.addr, align 4, !dbg !397
  %inc118 = add nsw i32 %61, 1, !dbg !397
  store i32 %inc118, i32* %c.addr, align 4, !dbg !397
  br label %sw.epilog, !dbg !398

sw.default:                                       ; preds = %for.body
  %62 = load i32, i32* %c.addr, align 4, !dbg !399
  %dec = add nsw i32 %62, -1, !dbg !399
  store i32 %dec, i32* %c.addr, align 4, !dbg !399
  br label %sw.epilog, !dbg !400

sw.epilog:                                        ; preds = %sw.default, %sw.bb117, %sw.bb115, %sw.bb113, %sw.bb111, %sw.bb109, %sw.bb107, %sw.bb105, %sw.bb103, %sw.bb101, %sw.bb99, %sw.bb97, %sw.bb95, %sw.bb93, %sw.bb91, %sw.bb89, %sw.bb87, %sw.bb85, %sw.bb83, %sw.bb81, %sw.bb79, %sw.bb77, %sw.bb75, %sw.bb73, %sw.bb71, %sw.bb69, %sw.bb67, %sw.bb65, %sw.bb63, %sw.bb61, %sw.bb59, %sw.bb57, %sw.bb55, %sw.bb53, %sw.bb51, %sw.bb49, %sw.bb47, %sw.bb45, %sw.bb43, %sw.bb41, %sw.bb39, %sw.bb37, %sw.bb35, %sw.bb33, %sw.bb31, %sw.bb29, %sw.bb27, %sw.bb25, %sw.bb23, %sw.bb21, %sw.bb19, %sw.bb17, %sw.bb15, %sw.bb13, %sw.bb11, %sw.bb9, %sw.bb7, %sw.bb5, %sw.bb3, %sw.bb1, %sw.bb
  br label %for.inc, !dbg !401

for.inc:                                          ; preds = %sw.epilog
  %63 = load i32, i32* %i, align 4, !dbg !402
  %inc119 = add nsw i32 %63, 1, !dbg !402
  store i32 %inc119, i32* %i, align 4, !dbg !402
  br label %for.cond, !dbg !276, !llvm.loop !403

for.end:                                          ; preds = %for.cond
  %64 = load i32, i32* %c.addr, align 4, !dbg !404
  ret i32 %64, !dbg !405
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @swi10(i32 noundef %c) #0 !dbg !406 {
entry:
  %c.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  store i32 0, i32* %i, align 4, !dbg !407
  br label %for.cond, !dbg !408

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !409
  %cmp = icmp slt i32 %0, 10, !dbg !410
  br i1 %cmp, label %for.body, label %for.end, !dbg !411

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4, !dbg !412
  switch i32 %1, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb3
    i32 3, label %sw.bb5
    i32 4, label %sw.bb7
    i32 5, label %sw.bb9
    i32 6, label %sw.bb11
    i32 7, label %sw.bb13
    i32 8, label %sw.bb15
    i32 9, label %sw.bb17
  ], !dbg !413

sw.bb:                                            ; preds = %for.body
  %2 = load i32, i32* %c.addr, align 4, !dbg !414
  %inc = add nsw i32 %2, 1, !dbg !414
  store i32 %inc, i32* %c.addr, align 4, !dbg !414
  br label %sw.epilog, !dbg !415

sw.bb1:                                           ; preds = %for.body
  %3 = load i32, i32* %c.addr, align 4, !dbg !416
  %inc2 = add nsw i32 %3, 1, !dbg !416
  store i32 %inc2, i32* %c.addr, align 4, !dbg !416
  br label %sw.epilog, !dbg !417

sw.bb3:                                           ; preds = %for.body
  %4 = load i32, i32* %c.addr, align 4, !dbg !418
  %inc4 = add nsw i32 %4, 1, !dbg !418
  store i32 %inc4, i32* %c.addr, align 4, !dbg !418
  br label %sw.epilog, !dbg !419

sw.bb5:                                           ; preds = %for.body
  %5 = load i32, i32* %c.addr, align 4, !dbg !420
  %inc6 = add nsw i32 %5, 1, !dbg !420
  store i32 %inc6, i32* %c.addr, align 4, !dbg !420
  br label %sw.epilog, !dbg !421

sw.bb7:                                           ; preds = %for.body
  %6 = load i32, i32* %c.addr, align 4, !dbg !422
  %inc8 = add nsw i32 %6, 1, !dbg !422
  store i32 %inc8, i32* %c.addr, align 4, !dbg !422
  br label %sw.epilog, !dbg !423

sw.bb9:                                           ; preds = %for.body
  %7 = load i32, i32* %c.addr, align 4, !dbg !424
  %inc10 = add nsw i32 %7, 1, !dbg !424
  store i32 %inc10, i32* %c.addr, align 4, !dbg !424
  br label %sw.epilog, !dbg !425

sw.bb11:                                          ; preds = %for.body
  %8 = load i32, i32* %c.addr, align 4, !dbg !426
  %inc12 = add nsw i32 %8, 1, !dbg !426
  store i32 %inc12, i32* %c.addr, align 4, !dbg !426
  br label %sw.epilog, !dbg !427

sw.bb13:                                          ; preds = %for.body
  %9 = load i32, i32* %c.addr, align 4, !dbg !428
  %inc14 = add nsw i32 %9, 1, !dbg !428
  store i32 %inc14, i32* %c.addr, align 4, !dbg !428
  br label %sw.epilog, !dbg !429

sw.bb15:                                          ; preds = %for.body
  %10 = load i32, i32* %c.addr, align 4, !dbg !430
  %inc16 = add nsw i32 %10, 1, !dbg !430
  store i32 %inc16, i32* %c.addr, align 4, !dbg !430
  br label %sw.epilog, !dbg !431

sw.bb17:                                          ; preds = %for.body
  %11 = load i32, i32* %c.addr, align 4, !dbg !432
  %inc18 = add nsw i32 %11, 1, !dbg !432
  store i32 %inc18, i32* %c.addr, align 4, !dbg !432
  br label %sw.epilog, !dbg !433

sw.default:                                       ; preds = %for.body
  %12 = load i32, i32* %c.addr, align 4, !dbg !434
  %dec = add nsw i32 %12, -1, !dbg !434
  store i32 %dec, i32* %c.addr, align 4, !dbg !434
  br label %sw.epilog, !dbg !435

sw.epilog:                                        ; preds = %sw.default, %sw.bb17, %sw.bb15, %sw.bb13, %sw.bb11, %sw.bb9, %sw.bb7, %sw.bb5, %sw.bb3, %sw.bb1, %sw.bb
  br label %for.inc, !dbg !436

for.inc:                                          ; preds = %sw.epilog
  %13 = load i32, i32* %i, align 4, !dbg !437
  %inc19 = add nsw i32 %13, 1, !dbg !437
  store i32 %inc19, i32* %i, align 4, !dbg !437
  br label %for.cond, !dbg !411, !llvm.loop !438

for.end:                                          ; preds = %for.cond
  %14 = load i32, i32* %c.addr, align 4, !dbg !439
  ret i32 %14, !dbg !440
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @main() #0 !dbg !441 {
entry:
  %retval = alloca i32, align 4
  %cnt = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store volatile i32 0, i32* %cnt, align 4, !dbg !442
  %0 = load volatile i32, i32* %cnt, align 4, !dbg !443
  %call = call arm_aapcs_vfpcc i32 @swi10(i32 noundef %0) #1, !dbg !444
  store volatile i32 %call, i32* %cnt, align 4, !dbg !445
  %1 = load volatile i32, i32* %cnt, align 4, !dbg !446
  %call1 = call arm_aapcs_vfpcc i32 @swi50(i32 noundef %1) #1, !dbg !447
  store volatile i32 %call1, i32* %cnt, align 4, !dbg !448
  %2 = load volatile i32, i32* %cnt, align 4, !dbg !449
  %call2 = call arm_aapcs_vfpcc i32 @swi120(i32 noundef %2) #1, !dbg !450
  store volatile i32 %call2, i32* %cnt, align 4, !dbg !451
  %3 = load volatile i32, i32* %cnt, align 4, !dbg !452
  ret i32 %3, !dbg !453
}

attributes #0 = { noinline nounwind "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #1 = { nobuiltin "no-builtins" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 14.0.6 (git@github.com:RTS-SYSU/LLVM-TA.git b7f9c4ccdebc6c37532ddd772889e5f0ff989c79)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/workspaces/llvmta/testcases/wcet_bench/cover.c", directory: "/workspaces/llvmta/testcases/util_scripts", checksumkind: CSK_MD5, checksum: "5ea1a04da466168ff02b7a814f2be6a1")
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
!12 = distinct !DISubprogram(name: "swi120", scope: !13, file: !13, line: 1, type: !14, scopeLine: 2, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!13 = !DIFile(filename: "wcet_bench/cover.c", directory: "/workspaces/llvmta/testcases", checksumkind: CSK_MD5, checksum: "5ea1a04da466168ff02b7a814f2be6a1")
!14 = !DISubroutineType(types: !15)
!15 = !{}
!16 = !DILocation(line: 4, column: 8, scope: !12)
!17 = !DILocation(line: 4, column: 7, scope: !12)
!18 = !DILocation(line: 4, column: 12, scope: !12)
!19 = !DILocation(line: 4, column: 13, scope: !12)
!20 = !DILocation(line: 4, column: 2, scope: !12)
!21 = !DILocation(line: 5, column: 11, scope: !12)
!22 = !DILocation(line: 5, column: 3, scope: !12)
!23 = !DILocation(line: 6, column: 13, scope: !12)
!24 = !DILocation(line: 6, column: 17, scope: !12)
!25 = !DILocation(line: 7, column: 13, scope: !12)
!26 = !DILocation(line: 7, column: 17, scope: !12)
!27 = !DILocation(line: 8, column: 13, scope: !12)
!28 = !DILocation(line: 8, column: 17, scope: !12)
!29 = !DILocation(line: 9, column: 13, scope: !12)
!30 = !DILocation(line: 9, column: 17, scope: !12)
!31 = !DILocation(line: 10, column: 13, scope: !12)
!32 = !DILocation(line: 10, column: 17, scope: !12)
!33 = !DILocation(line: 11, column: 13, scope: !12)
!34 = !DILocation(line: 11, column: 17, scope: !12)
!35 = !DILocation(line: 12, column: 13, scope: !12)
!36 = !DILocation(line: 12, column: 17, scope: !12)
!37 = !DILocation(line: 13, column: 13, scope: !12)
!38 = !DILocation(line: 13, column: 17, scope: !12)
!39 = !DILocation(line: 14, column: 13, scope: !12)
!40 = !DILocation(line: 14, column: 17, scope: !12)
!41 = !DILocation(line: 15, column: 13, scope: !12)
!42 = !DILocation(line: 15, column: 17, scope: !12)
!43 = !DILocation(line: 16, column: 14, scope: !12)
!44 = !DILocation(line: 16, column: 18, scope: !12)
!45 = !DILocation(line: 17, column: 14, scope: !12)
!46 = !DILocation(line: 17, column: 18, scope: !12)
!47 = !DILocation(line: 18, column: 14, scope: !12)
!48 = !DILocation(line: 18, column: 18, scope: !12)
!49 = !DILocation(line: 19, column: 14, scope: !12)
!50 = !DILocation(line: 19, column: 18, scope: !12)
!51 = !DILocation(line: 20, column: 14, scope: !12)
!52 = !DILocation(line: 20, column: 18, scope: !12)
!53 = !DILocation(line: 21, column: 14, scope: !12)
!54 = !DILocation(line: 21, column: 18, scope: !12)
!55 = !DILocation(line: 22, column: 14, scope: !12)
!56 = !DILocation(line: 22, column: 18, scope: !12)
!57 = !DILocation(line: 23, column: 14, scope: !12)
!58 = !DILocation(line: 23, column: 18, scope: !12)
!59 = !DILocation(line: 24, column: 14, scope: !12)
!60 = !DILocation(line: 24, column: 18, scope: !12)
!61 = !DILocation(line: 25, column: 14, scope: !12)
!62 = !DILocation(line: 25, column: 18, scope: !12)
!63 = !DILocation(line: 26, column: 14, scope: !12)
!64 = !DILocation(line: 26, column: 18, scope: !12)
!65 = !DILocation(line: 27, column: 14, scope: !12)
!66 = !DILocation(line: 27, column: 18, scope: !12)
!67 = !DILocation(line: 28, column: 14, scope: !12)
!68 = !DILocation(line: 28, column: 18, scope: !12)
!69 = !DILocation(line: 29, column: 14, scope: !12)
!70 = !DILocation(line: 29, column: 18, scope: !12)
!71 = !DILocation(line: 30, column: 14, scope: !12)
!72 = !DILocation(line: 30, column: 18, scope: !12)
!73 = !DILocation(line: 31, column: 14, scope: !12)
!74 = !DILocation(line: 31, column: 18, scope: !12)
!75 = !DILocation(line: 32, column: 14, scope: !12)
!76 = !DILocation(line: 32, column: 18, scope: !12)
!77 = !DILocation(line: 33, column: 14, scope: !12)
!78 = !DILocation(line: 33, column: 18, scope: !12)
!79 = !DILocation(line: 34, column: 14, scope: !12)
!80 = !DILocation(line: 34, column: 18, scope: !12)
!81 = !DILocation(line: 35, column: 14, scope: !12)
!82 = !DILocation(line: 35, column: 18, scope: !12)
!83 = !DILocation(line: 36, column: 14, scope: !12)
!84 = !DILocation(line: 36, column: 18, scope: !12)
!85 = !DILocation(line: 37, column: 14, scope: !12)
!86 = !DILocation(line: 37, column: 18, scope: !12)
!87 = !DILocation(line: 38, column: 14, scope: !12)
!88 = !DILocation(line: 38, column: 18, scope: !12)
!89 = !DILocation(line: 39, column: 14, scope: !12)
!90 = !DILocation(line: 39, column: 18, scope: !12)
!91 = !DILocation(line: 40, column: 14, scope: !12)
!92 = !DILocation(line: 40, column: 18, scope: !12)
!93 = !DILocation(line: 41, column: 14, scope: !12)
!94 = !DILocation(line: 41, column: 18, scope: !12)
!95 = !DILocation(line: 42, column: 14, scope: !12)
!96 = !DILocation(line: 42, column: 18, scope: !12)
!97 = !DILocation(line: 43, column: 14, scope: !12)
!98 = !DILocation(line: 43, column: 18, scope: !12)
!99 = !DILocation(line: 44, column: 14, scope: !12)
!100 = !DILocation(line: 44, column: 18, scope: !12)
!101 = !DILocation(line: 45, column: 14, scope: !12)
!102 = !DILocation(line: 45, column: 18, scope: !12)
!103 = !DILocation(line: 46, column: 14, scope: !12)
!104 = !DILocation(line: 46, column: 18, scope: !12)
!105 = !DILocation(line: 47, column: 14, scope: !12)
!106 = !DILocation(line: 47, column: 18, scope: !12)
!107 = !DILocation(line: 48, column: 14, scope: !12)
!108 = !DILocation(line: 48, column: 18, scope: !12)
!109 = !DILocation(line: 49, column: 14, scope: !12)
!110 = !DILocation(line: 49, column: 18, scope: !12)
!111 = !DILocation(line: 50, column: 14, scope: !12)
!112 = !DILocation(line: 50, column: 18, scope: !12)
!113 = !DILocation(line: 51, column: 14, scope: !12)
!114 = !DILocation(line: 51, column: 18, scope: !12)
!115 = !DILocation(line: 52, column: 14, scope: !12)
!116 = !DILocation(line: 52, column: 18, scope: !12)
!117 = !DILocation(line: 53, column: 14, scope: !12)
!118 = !DILocation(line: 53, column: 18, scope: !12)
!119 = !DILocation(line: 54, column: 14, scope: !12)
!120 = !DILocation(line: 54, column: 18, scope: !12)
!121 = !DILocation(line: 55, column: 14, scope: !12)
!122 = !DILocation(line: 55, column: 18, scope: !12)
!123 = !DILocation(line: 56, column: 14, scope: !12)
!124 = !DILocation(line: 56, column: 18, scope: !12)
!125 = !DILocation(line: 57, column: 14, scope: !12)
!126 = !DILocation(line: 57, column: 18, scope: !12)
!127 = !DILocation(line: 58, column: 14, scope: !12)
!128 = !DILocation(line: 58, column: 18, scope: !12)
!129 = !DILocation(line: 59, column: 14, scope: !12)
!130 = !DILocation(line: 59, column: 18, scope: !12)
!131 = !DILocation(line: 60, column: 14, scope: !12)
!132 = !DILocation(line: 60, column: 18, scope: !12)
!133 = !DILocation(line: 61, column: 14, scope: !12)
!134 = !DILocation(line: 61, column: 18, scope: !12)
!135 = !DILocation(line: 62, column: 14, scope: !12)
!136 = !DILocation(line: 62, column: 18, scope: !12)
!137 = !DILocation(line: 63, column: 14, scope: !12)
!138 = !DILocation(line: 63, column: 18, scope: !12)
!139 = !DILocation(line: 64, column: 14, scope: !12)
!140 = !DILocation(line: 64, column: 18, scope: !12)
!141 = !DILocation(line: 65, column: 14, scope: !12)
!142 = !DILocation(line: 65, column: 18, scope: !12)
!143 = !DILocation(line: 66, column: 14, scope: !12)
!144 = !DILocation(line: 66, column: 18, scope: !12)
!145 = !DILocation(line: 67, column: 14, scope: !12)
!146 = !DILocation(line: 67, column: 18, scope: !12)
!147 = !DILocation(line: 68, column: 14, scope: !12)
!148 = !DILocation(line: 68, column: 18, scope: !12)
!149 = !DILocation(line: 69, column: 14, scope: !12)
!150 = !DILocation(line: 69, column: 18, scope: !12)
!151 = !DILocation(line: 70, column: 14, scope: !12)
!152 = !DILocation(line: 70, column: 18, scope: !12)
!153 = !DILocation(line: 71, column: 14, scope: !12)
!154 = !DILocation(line: 71, column: 18, scope: !12)
!155 = !DILocation(line: 72, column: 14, scope: !12)
!156 = !DILocation(line: 72, column: 18, scope: !12)
!157 = !DILocation(line: 73, column: 14, scope: !12)
!158 = !DILocation(line: 73, column: 18, scope: !12)
!159 = !DILocation(line: 74, column: 14, scope: !12)
!160 = !DILocation(line: 74, column: 18, scope: !12)
!161 = !DILocation(line: 75, column: 14, scope: !12)
!162 = !DILocation(line: 75, column: 18, scope: !12)
!163 = !DILocation(line: 76, column: 14, scope: !12)
!164 = !DILocation(line: 76, column: 18, scope: !12)
!165 = !DILocation(line: 77, column: 14, scope: !12)
!166 = !DILocation(line: 77, column: 18, scope: !12)
!167 = !DILocation(line: 78, column: 14, scope: !12)
!168 = !DILocation(line: 78, column: 18, scope: !12)
!169 = !DILocation(line: 79, column: 14, scope: !12)
!170 = !DILocation(line: 79, column: 18, scope: !12)
!171 = !DILocation(line: 80, column: 14, scope: !12)
!172 = !DILocation(line: 80, column: 18, scope: !12)
!173 = !DILocation(line: 81, column: 14, scope: !12)
!174 = !DILocation(line: 81, column: 18, scope: !12)
!175 = !DILocation(line: 82, column: 14, scope: !12)
!176 = !DILocation(line: 82, column: 18, scope: !12)
!177 = !DILocation(line: 83, column: 14, scope: !12)
!178 = !DILocation(line: 83, column: 18, scope: !12)
!179 = !DILocation(line: 84, column: 14, scope: !12)
!180 = !DILocation(line: 84, column: 18, scope: !12)
!181 = !DILocation(line: 85, column: 14, scope: !12)
!182 = !DILocation(line: 85, column: 18, scope: !12)
!183 = !DILocation(line: 86, column: 14, scope: !12)
!184 = !DILocation(line: 86, column: 18, scope: !12)
!185 = !DILocation(line: 87, column: 14, scope: !12)
!186 = !DILocation(line: 87, column: 18, scope: !12)
!187 = !DILocation(line: 88, column: 14, scope: !12)
!188 = !DILocation(line: 88, column: 18, scope: !12)
!189 = !DILocation(line: 89, column: 14, scope: !12)
!190 = !DILocation(line: 89, column: 18, scope: !12)
!191 = !DILocation(line: 90, column: 14, scope: !12)
!192 = !DILocation(line: 90, column: 18, scope: !12)
!193 = !DILocation(line: 91, column: 14, scope: !12)
!194 = !DILocation(line: 91, column: 18, scope: !12)
!195 = !DILocation(line: 92, column: 14, scope: !12)
!196 = !DILocation(line: 92, column: 18, scope: !12)
!197 = !DILocation(line: 93, column: 14, scope: !12)
!198 = !DILocation(line: 93, column: 18, scope: !12)
!199 = !DILocation(line: 94, column: 14, scope: !12)
!200 = !DILocation(line: 94, column: 18, scope: !12)
!201 = !DILocation(line: 95, column: 14, scope: !12)
!202 = !DILocation(line: 95, column: 18, scope: !12)
!203 = !DILocation(line: 96, column: 14, scope: !12)
!204 = !DILocation(line: 96, column: 18, scope: !12)
!205 = !DILocation(line: 97, column: 14, scope: !12)
!206 = !DILocation(line: 97, column: 18, scope: !12)
!207 = !DILocation(line: 98, column: 14, scope: !12)
!208 = !DILocation(line: 98, column: 18, scope: !12)
!209 = !DILocation(line: 99, column: 14, scope: !12)
!210 = !DILocation(line: 99, column: 18, scope: !12)
!211 = !DILocation(line: 100, column: 14, scope: !12)
!212 = !DILocation(line: 100, column: 18, scope: !12)
!213 = !DILocation(line: 101, column: 14, scope: !12)
!214 = !DILocation(line: 101, column: 18, scope: !12)
!215 = !DILocation(line: 102, column: 14, scope: !12)
!216 = !DILocation(line: 102, column: 18, scope: !12)
!217 = !DILocation(line: 103, column: 14, scope: !12)
!218 = !DILocation(line: 103, column: 18, scope: !12)
!219 = !DILocation(line: 104, column: 14, scope: !12)
!220 = !DILocation(line: 104, column: 18, scope: !12)
!221 = !DILocation(line: 105, column: 14, scope: !12)
!222 = !DILocation(line: 105, column: 18, scope: !12)
!223 = !DILocation(line: 106, column: 15, scope: !12)
!224 = !DILocation(line: 106, column: 19, scope: !12)
!225 = !DILocation(line: 107, column: 15, scope: !12)
!226 = !DILocation(line: 107, column: 19, scope: !12)
!227 = !DILocation(line: 108, column: 15, scope: !12)
!228 = !DILocation(line: 108, column: 19, scope: !12)
!229 = !DILocation(line: 109, column: 15, scope: !12)
!230 = !DILocation(line: 109, column: 19, scope: !12)
!231 = !DILocation(line: 110, column: 15, scope: !12)
!232 = !DILocation(line: 110, column: 19, scope: !12)
!233 = !DILocation(line: 111, column: 15, scope: !12)
!234 = !DILocation(line: 111, column: 19, scope: !12)
!235 = !DILocation(line: 112, column: 15, scope: !12)
!236 = !DILocation(line: 112, column: 19, scope: !12)
!237 = !DILocation(line: 113, column: 15, scope: !12)
!238 = !DILocation(line: 113, column: 19, scope: !12)
!239 = !DILocation(line: 114, column: 15, scope: !12)
!240 = !DILocation(line: 114, column: 19, scope: !12)
!241 = !DILocation(line: 115, column: 15, scope: !12)
!242 = !DILocation(line: 115, column: 19, scope: !12)
!243 = !DILocation(line: 116, column: 15, scope: !12)
!244 = !DILocation(line: 116, column: 19, scope: !12)
!245 = !DILocation(line: 117, column: 15, scope: !12)
!246 = !DILocation(line: 117, column: 19, scope: !12)
!247 = !DILocation(line: 118, column: 15, scope: !12)
!248 = !DILocation(line: 118, column: 19, scope: !12)
!249 = !DILocation(line: 119, column: 15, scope: !12)
!250 = !DILocation(line: 119, column: 19, scope: !12)
!251 = !DILocation(line: 120, column: 15, scope: !12)
!252 = !DILocation(line: 120, column: 19, scope: !12)
!253 = !DILocation(line: 121, column: 15, scope: !12)
!254 = !DILocation(line: 121, column: 19, scope: !12)
!255 = !DILocation(line: 122, column: 15, scope: !12)
!256 = !DILocation(line: 122, column: 19, scope: !12)
!257 = !DILocation(line: 123, column: 15, scope: !12)
!258 = !DILocation(line: 123, column: 19, scope: !12)
!259 = !DILocation(line: 124, column: 15, scope: !12)
!260 = !DILocation(line: 124, column: 19, scope: !12)
!261 = !DILocation(line: 125, column: 15, scope: !12)
!262 = !DILocation(line: 125, column: 19, scope: !12)
!263 = !DILocation(line: 126, column: 14, scope: !12)
!264 = !DILocation(line: 126, column: 18, scope: !12)
!265 = !DILocation(line: 128, column: 2, scope: !12)
!266 = !DILocation(line: 4, column: 20, scope: !12)
!267 = distinct !{!267, !20, !265, !268}
!268 = !{!"llvm.loop.mustprogress"}
!269 = !DILocation(line: 129, column: 9, scope: !12)
!270 = !DILocation(line: 129, column: 2, scope: !12)
!271 = distinct !DISubprogram(name: "swi50", scope: !13, file: !13, line: 133, type: !14, scopeLine: 134, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!272 = !DILocation(line: 136, column: 8, scope: !271)
!273 = !DILocation(line: 136, column: 7, scope: !271)
!274 = !DILocation(line: 136, column: 12, scope: !271)
!275 = !DILocation(line: 136, column: 13, scope: !271)
!276 = !DILocation(line: 136, column: 2, scope: !271)
!277 = !DILocation(line: 137, column: 11, scope: !271)
!278 = !DILocation(line: 137, column: 3, scope: !271)
!279 = !DILocation(line: 138, column: 13, scope: !271)
!280 = !DILocation(line: 138, column: 17, scope: !271)
!281 = !DILocation(line: 139, column: 13, scope: !271)
!282 = !DILocation(line: 139, column: 17, scope: !271)
!283 = !DILocation(line: 140, column: 13, scope: !271)
!284 = !DILocation(line: 140, column: 17, scope: !271)
!285 = !DILocation(line: 141, column: 13, scope: !271)
!286 = !DILocation(line: 141, column: 17, scope: !271)
!287 = !DILocation(line: 142, column: 13, scope: !271)
!288 = !DILocation(line: 142, column: 17, scope: !271)
!289 = !DILocation(line: 143, column: 13, scope: !271)
!290 = !DILocation(line: 143, column: 17, scope: !271)
!291 = !DILocation(line: 144, column: 13, scope: !271)
!292 = !DILocation(line: 144, column: 17, scope: !271)
!293 = !DILocation(line: 145, column: 13, scope: !271)
!294 = !DILocation(line: 145, column: 17, scope: !271)
!295 = !DILocation(line: 146, column: 13, scope: !271)
!296 = !DILocation(line: 146, column: 17, scope: !271)
!297 = !DILocation(line: 147, column: 13, scope: !271)
!298 = !DILocation(line: 147, column: 17, scope: !271)
!299 = !DILocation(line: 148, column: 14, scope: !271)
!300 = !DILocation(line: 148, column: 18, scope: !271)
!301 = !DILocation(line: 149, column: 14, scope: !271)
!302 = !DILocation(line: 149, column: 18, scope: !271)
!303 = !DILocation(line: 150, column: 14, scope: !271)
!304 = !DILocation(line: 150, column: 18, scope: !271)
!305 = !DILocation(line: 151, column: 14, scope: !271)
!306 = !DILocation(line: 151, column: 18, scope: !271)
!307 = !DILocation(line: 152, column: 14, scope: !271)
!308 = !DILocation(line: 152, column: 18, scope: !271)
!309 = !DILocation(line: 153, column: 14, scope: !271)
!310 = !DILocation(line: 153, column: 18, scope: !271)
!311 = !DILocation(line: 154, column: 14, scope: !271)
!312 = !DILocation(line: 154, column: 18, scope: !271)
!313 = !DILocation(line: 155, column: 14, scope: !271)
!314 = !DILocation(line: 155, column: 18, scope: !271)
!315 = !DILocation(line: 156, column: 14, scope: !271)
!316 = !DILocation(line: 156, column: 18, scope: !271)
!317 = !DILocation(line: 157, column: 14, scope: !271)
!318 = !DILocation(line: 157, column: 18, scope: !271)
!319 = !DILocation(line: 158, column: 14, scope: !271)
!320 = !DILocation(line: 158, column: 18, scope: !271)
!321 = !DILocation(line: 159, column: 14, scope: !271)
!322 = !DILocation(line: 159, column: 18, scope: !271)
!323 = !DILocation(line: 160, column: 14, scope: !271)
!324 = !DILocation(line: 160, column: 18, scope: !271)
!325 = !DILocation(line: 161, column: 14, scope: !271)
!326 = !DILocation(line: 161, column: 18, scope: !271)
!327 = !DILocation(line: 162, column: 14, scope: !271)
!328 = !DILocation(line: 162, column: 18, scope: !271)
!329 = !DILocation(line: 163, column: 14, scope: !271)
!330 = !DILocation(line: 163, column: 18, scope: !271)
!331 = !DILocation(line: 164, column: 14, scope: !271)
!332 = !DILocation(line: 164, column: 18, scope: !271)
!333 = !DILocation(line: 165, column: 14, scope: !271)
!334 = !DILocation(line: 165, column: 18, scope: !271)
!335 = !DILocation(line: 166, column: 14, scope: !271)
!336 = !DILocation(line: 166, column: 18, scope: !271)
!337 = !DILocation(line: 167, column: 14, scope: !271)
!338 = !DILocation(line: 167, column: 18, scope: !271)
!339 = !DILocation(line: 168, column: 14, scope: !271)
!340 = !DILocation(line: 168, column: 18, scope: !271)
!341 = !DILocation(line: 169, column: 14, scope: !271)
!342 = !DILocation(line: 169, column: 18, scope: !271)
!343 = !DILocation(line: 170, column: 14, scope: !271)
!344 = !DILocation(line: 170, column: 18, scope: !271)
!345 = !DILocation(line: 171, column: 14, scope: !271)
!346 = !DILocation(line: 171, column: 18, scope: !271)
!347 = !DILocation(line: 172, column: 14, scope: !271)
!348 = !DILocation(line: 172, column: 18, scope: !271)
!349 = !DILocation(line: 173, column: 14, scope: !271)
!350 = !DILocation(line: 173, column: 18, scope: !271)
!351 = !DILocation(line: 174, column: 14, scope: !271)
!352 = !DILocation(line: 174, column: 18, scope: !271)
!353 = !DILocation(line: 175, column: 14, scope: !271)
!354 = !DILocation(line: 175, column: 18, scope: !271)
!355 = !DILocation(line: 176, column: 14, scope: !271)
!356 = !DILocation(line: 176, column: 18, scope: !271)
!357 = !DILocation(line: 177, column: 14, scope: !271)
!358 = !DILocation(line: 177, column: 18, scope: !271)
!359 = !DILocation(line: 178, column: 14, scope: !271)
!360 = !DILocation(line: 178, column: 18, scope: !271)
!361 = !DILocation(line: 179, column: 14, scope: !271)
!362 = !DILocation(line: 179, column: 18, scope: !271)
!363 = !DILocation(line: 180, column: 14, scope: !271)
!364 = !DILocation(line: 180, column: 18, scope: !271)
!365 = !DILocation(line: 181, column: 14, scope: !271)
!366 = !DILocation(line: 181, column: 18, scope: !271)
!367 = !DILocation(line: 182, column: 14, scope: !271)
!368 = !DILocation(line: 182, column: 18, scope: !271)
!369 = !DILocation(line: 183, column: 14, scope: !271)
!370 = !DILocation(line: 183, column: 18, scope: !271)
!371 = !DILocation(line: 184, column: 14, scope: !271)
!372 = !DILocation(line: 184, column: 18, scope: !271)
!373 = !DILocation(line: 185, column: 14, scope: !271)
!374 = !DILocation(line: 185, column: 18, scope: !271)
!375 = !DILocation(line: 186, column: 14, scope: !271)
!376 = !DILocation(line: 186, column: 18, scope: !271)
!377 = !DILocation(line: 187, column: 14, scope: !271)
!378 = !DILocation(line: 187, column: 18, scope: !271)
!379 = !DILocation(line: 188, column: 14, scope: !271)
!380 = !DILocation(line: 188, column: 18, scope: !271)
!381 = !DILocation(line: 189, column: 14, scope: !271)
!382 = !DILocation(line: 189, column: 18, scope: !271)
!383 = !DILocation(line: 190, column: 14, scope: !271)
!384 = !DILocation(line: 190, column: 18, scope: !271)
!385 = !DILocation(line: 191, column: 14, scope: !271)
!386 = !DILocation(line: 191, column: 18, scope: !271)
!387 = !DILocation(line: 192, column: 14, scope: !271)
!388 = !DILocation(line: 192, column: 18, scope: !271)
!389 = !DILocation(line: 193, column: 14, scope: !271)
!390 = !DILocation(line: 193, column: 18, scope: !271)
!391 = !DILocation(line: 194, column: 14, scope: !271)
!392 = !DILocation(line: 194, column: 18, scope: !271)
!393 = !DILocation(line: 195, column: 14, scope: !271)
!394 = !DILocation(line: 195, column: 18, scope: !271)
!395 = !DILocation(line: 196, column: 14, scope: !271)
!396 = !DILocation(line: 196, column: 18, scope: !271)
!397 = !DILocation(line: 197, column: 14, scope: !271)
!398 = !DILocation(line: 197, column: 18, scope: !271)
!399 = !DILocation(line: 198, column: 14, scope: !271)
!400 = !DILocation(line: 198, column: 18, scope: !271)
!401 = !DILocation(line: 200, column: 2, scope: !271)
!402 = !DILocation(line: 136, column: 19, scope: !271)
!403 = distinct !{!403, !276, !401, !268}
!404 = !DILocation(line: 201, column: 9, scope: !271)
!405 = !DILocation(line: 201, column: 2, scope: !271)
!406 = distinct !DISubprogram(name: "swi10", scope: !13, file: !13, line: 205, type: !14, scopeLine: 206, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!407 = !DILocation(line: 208, column: 8, scope: !406)
!408 = !DILocation(line: 208, column: 7, scope: !406)
!409 = !DILocation(line: 208, column: 12, scope: !406)
!410 = !DILocation(line: 208, column: 13, scope: !406)
!411 = !DILocation(line: 208, column: 2, scope: !406)
!412 = !DILocation(line: 209, column: 11, scope: !406)
!413 = !DILocation(line: 209, column: 3, scope: !406)
!414 = !DILocation(line: 210, column: 13, scope: !406)
!415 = !DILocation(line: 210, column: 17, scope: !406)
!416 = !DILocation(line: 211, column: 13, scope: !406)
!417 = !DILocation(line: 211, column: 17, scope: !406)
!418 = !DILocation(line: 212, column: 13, scope: !406)
!419 = !DILocation(line: 212, column: 17, scope: !406)
!420 = !DILocation(line: 213, column: 13, scope: !406)
!421 = !DILocation(line: 213, column: 17, scope: !406)
!422 = !DILocation(line: 214, column: 13, scope: !406)
!423 = !DILocation(line: 214, column: 17, scope: !406)
!424 = !DILocation(line: 215, column: 13, scope: !406)
!425 = !DILocation(line: 215, column: 17, scope: !406)
!426 = !DILocation(line: 216, column: 13, scope: !406)
!427 = !DILocation(line: 216, column: 17, scope: !406)
!428 = !DILocation(line: 217, column: 13, scope: !406)
!429 = !DILocation(line: 217, column: 17, scope: !406)
!430 = !DILocation(line: 218, column: 13, scope: !406)
!431 = !DILocation(line: 218, column: 17, scope: !406)
!432 = !DILocation(line: 219, column: 13, scope: !406)
!433 = !DILocation(line: 219, column: 17, scope: !406)
!434 = !DILocation(line: 220, column: 14, scope: !406)
!435 = !DILocation(line: 220, column: 18, scope: !406)
!436 = !DILocation(line: 222, column: 2, scope: !406)
!437 = !DILocation(line: 208, column: 19, scope: !406)
!438 = distinct !{!438, !411, !436, !268}
!439 = !DILocation(line: 223, column: 9, scope: !406)
!440 = !DILocation(line: 223, column: 2, scope: !406)
!441 = distinct !DISubprogram(name: "main", scope: !13, file: !13, line: 226, type: !14, scopeLine: 227, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!442 = !DILocation(line: 228, column: 15, scope: !441)
!443 = !DILocation(line: 230, column: 12, scope: !441)
!444 = !DILocation(line: 230, column: 6, scope: !441)
!445 = !DILocation(line: 230, column: 5, scope: !441)
!446 = !DILocation(line: 231, column: 12, scope: !441)
!447 = !DILocation(line: 231, column: 6, scope: !441)
!448 = !DILocation(line: 231, column: 5, scope: !441)
!449 = !DILocation(line: 232, column: 13, scope: !441)
!450 = !DILocation(line: 232, column: 6, scope: !441)
!451 = !DILocation(line: 232, column: 5, scope: !441)
!452 = !DILocation(line: 236, column: 9, scope: !441)
!453 = !DILocation(line: 236, column: 2, scope: !441)
