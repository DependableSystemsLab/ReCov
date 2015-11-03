; ModuleID = '../mcf-llfi_index.ll'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-f128:128:128-n8:16:32:64"
target triple = "x86_64-unknown-linux-gnu"

%struct.BASKET = type { %struct.arc*, i64, i64 }
%struct.FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct.FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct.FILE*, i32 }
%struct.arc = type { i64, %struct.node*, %struct.node*, i32, %struct.arc*, %struct.arc*, i64, i64 }
%struct.network_t = type { [200 x i8], [200 x i8], i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, double, i64, %struct.node*, %struct.node*, %struct.arc*, %struct.arc*, %struct.arc*, %struct.arc*, i64, i64, i64 }
%struct.node = type { i64, i32, %struct.node*, %struct.node*, %struct.node*, %struct.node*, %struct.arc*, %struct.arc*, %struct.arc*, %struct.arc*, i64, i64, i32, i32 }

@.str = private unnamed_addr constant [20 x i8] c"net->max_new_m >= 3\00", align 1
@.str1 = private unnamed_addr constant [11 x i8] c"implicit.c\00", align 1
@__PRETTY_FUNCTION__.4371 = internal unnamed_addr constant [12 x i8] c"resize_prob\00"
@.str2 = private unnamed_addr constant [31 x i8] c"network %s: not enough memory\0A\00", align 8
@stdout = external unnamed_addr global %struct.FILE*
@net = common global %struct.network_t zeroinitializer, align 32
@.str3 = private constant [34 x i8] c"active arcs                : %ld\0A\00", align 8
@.str14 = private constant [34 x i8] c"simplex iterations         : %ld\0A\00", align 8
@.str25 = private constant [36 x i8] c"objective value            : %0.0f\0A\00", align 8
@.str36 = private constant [34 x i8] c"erased arcs                : %ld\0A\00", align 8
@.str4 = private constant [34 x i8] c"new implicit arcs          : %ld\0A\00", align 8
@.str5 = private constant [28 x i8] c"not enough memory, exit(-1)\00", align 1
@.str6 = private constant [34 x i8] c"checksum                   : %ld\0A\00", align 8
@.str7 = private constant [31 x i8] c"\0AMCF SPEC CPU2006 version 1.10\00", align 8
@.str8 = private constant [51 x i8] c"Copyright (c) 1998-2000 Zuse Institut Berlin (ZIB)\00", align 8
@.str9 = private constant [45 x i8] c"Copyright (c) 2000-2002 Andreas Loebel & ZIB\00", align 8
@.str10 = private constant [39 x i8] c"Copyright (c) 2003-2005 Andreas Loebel\00", align 8
@.str11 = private constant [17 x i8] c"read error, exit\00", align 1
@.str12 = private constant [34 x i8] c"nodes                      : %ld\0A\00", align 8
@.str13 = private constant [5 x i8] c"done\00", align 1
@.str147 = private constant [8 x i8] c"mcf.out\00", align 1
@.str15 = private constant [25 x i8] c"PRIMAL NETWORK SIMPLEX: \00", align 1
@.str116 = private constant [49 x i8] c"artificial arc with nonzero flow, node %d (%ld)\0A\00", align 8
@.str217 = private constant [31 x i8] c"basis primal infeasible (%ld)\0A\00", align 8
@stderr = external global %struct.FILE*
@.str318 = private constant [23 x i8] c"DUAL NETWORK SIMPLEX: \00", align 1
@.str419 = private constant [23 x i8] c"basis dual infeasible\0A\00", align 1
@.str23 = private constant [2 x i8] c"w\00", align 1
@.str124 = private constant [4 x i8] c"()\0A\00", align 1
@.str225 = private constant [5 x i8] c"***\0A\00", align 1
@.str326 = private constant [4 x i8] c"%d\0A\00", align 1
@perm = internal unnamed_addr global [351 x %struct.BASKET*] zeroinitializer, align 32
@initialize.b = internal unnamed_addr global i1 false
@basket = internal global [351 x %struct.BASKET] zeroinitializer, align 32
@nr_group = internal unnamed_addr global i64 0
@group_pos = internal unnamed_addr global i64 0
@basket_size = internal unnamed_addr global i64 0
@.str30 = private constant [2 x i8] c"r\00", align 1
@.str131 = private constant [8 x i8] c"%ld %ld\00", align 1
@.str434 = private constant [30 x i8] c"read_min(): not enough memory\00", align 1
@.str535 = private constant [12 x i8] c"%ld %ld %ld\00", align 1

define i64 @resize_prob(%struct.network_t* %net) nounwind {
entry:
  %0 = getelementptr inbounds %struct.network_t* %net, i64 0, i32 9, !llfi_index !0
  call void @latencyCount(i64 1)
  %1 = load i64* %0, align 8, !llfi_index !1
  call void @latencyCount(i64 2)
  %2 = icmp slt i64 %1, 3, !llfi_index !2
  br i1 %2, label %bb, label %bb1, !llfi_index !3

bb:                                               ; preds = %entry
  call void @latencyCount(i64 4)
  tail call void @__assert_fail(i8* getelementptr inbounds ([20 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str1, i64 0, i64 0), i32 39, i8* getelementptr inbounds ([12 x i8]* @__PRETTY_FUNCTION__.4371, i64 0, i64 0)) noreturn nounwind, !llfi_index !4
  call void @latencyCount(i64 5)
  unreachable, !llfi_index !5

bb1:                                              ; preds = %entry
  call void @latencyCount(i64 6)
  %3 = getelementptr inbounds %struct.network_t* %net, i64 0, i32 4, !llfi_index !6
  call void @latencyCount(i64 7)
  %4 = load i64* %3, align 8, !llfi_index !7
  call void @latencyCount(i64 8)
  %5 = add nsw i64 %4, %1, !llfi_index !8
  store i64 %5, i64* %3, align 8, !llfi_index !9
  call void @latencyCount(i64 10)
  %6 = getelementptr inbounds %struct.network_t* %net, i64 0, i32 8, !llfi_index !10
  call void @latencyCount(i64 11)
  %7 = load i64* %6, align 8, !llfi_index !11
  call void @latencyCount(i64 12)
  %8 = add nsw i64 %1, %7, !llfi_index !12
  store i64 %8, i64* %6, align 8, !llfi_index !13
  call void @latencyCount(i64 14)
  %9 = shl i64 %5, 6, !llfi_index !14
  call void @latencyCount(i64 15)
  %10 = getelementptr inbounds %struct.network_t* %net, i64 0, i32 23, !llfi_index !15
  call void @latencyCount(i64 16)
  %11 = load %struct.arc** %10, align 8, !llfi_index !16
  call void @latencyCount(i64 17)
  %12 = bitcast %struct.arc* %11 to i8*, !llfi_index !17
  call void @latencyCount(i64 18)
  %13 = tail call i8* @realloc(i8* %12, i64 %9) nounwind, !llfi_index !18
  call void @latencyCount(i64 19)
  %14 = bitcast i8* %13 to %struct.arc*, !llfi_index !19
  call void @latencyCount(i64 20)
  %15 = icmp eq i8* %13, null, !llfi_index !20
  br i1 %15, label %bb2, label %bb3, !llfi_index !21

bb2:                                              ; preds = %bb1
  call void @latencyCount(i64 22)
  %16 = getelementptr inbounds %struct.network_t* %net, i64 0, i32 0, i64 0, !llfi_index !22
  call void @latencyCount(i64 23)
  %17 = tail call i32 (i8*, ...)* @printf(i8* noalias getelementptr inbounds ([31 x i8]* @.str2, i64 0, i64 0), i8* %16) nounwind, !llfi_index !23
  call void @latencyCount(i64 24)
  %18 = load %struct.FILE** @stdout, align 8, !llfi_index !24
  call void @latencyCount(i64 25)
  %19 = tail call i32 @fflush(%struct.FILE* %18) nounwind, !llfi_index !25
  br label %bb9, !llfi_index !26

bb3:                                              ; preds = %bb1
  call void @latencyCount(i64 27)
  %20 = load %struct.arc** %10, align 8, !llfi_index !27
  store %struct.arc* %14, %struct.arc** %10, align 8, !llfi_index !28
  call void @latencyCount(i64 29)
  %21 = getelementptr inbounds %struct.network_t* %net, i64 0, i32 5, !llfi_index !29
  call void @latencyCount(i64 30)
  %22 = load i64* %21, align 8, !llfi_index !30
  call void @latencyCount(i64 31)
  %23 = getelementptr inbounds %struct.arc* %14, i64 %22, !llfi_index !31
  call void @latencyCount(i64 32)
  %24 = getelementptr inbounds %struct.network_t* %net, i64 0, i32 24, !llfi_index !32
  store %struct.arc* %23, %struct.arc** %24, align 8, !llfi_index !33
  call void @latencyCount(i64 34)
  %25 = getelementptr inbounds %struct.network_t* %net, i64 0, i32 21, !llfi_index !34
  call void @latencyCount(i64 35)
  %26 = load %struct.node** %25, align 8, !llfi_index !35
  call void @latencyCount(i64 36)
  %27 = getelementptr inbounds %struct.network_t* %net, i64 0, i32 22, !llfi_index !36
  call void @latencyCount(i64 37)
  %28 = load %struct.node** %27, align 8, !llfi_index !37
  call void @latencyCount(i64 38)
  %node.01 = getelementptr inbounds %struct.node* %26, i64 1, !llfi_index !38
  call void @latencyCount(i64 39)
  %29 = icmp ult %struct.node* %node.01, %28, !llfi_index !39
  br i1 %29, label %bb4.lr.ph, label %bb9, !llfi_index !40

bb4.lr.ph:                                        ; preds = %bb3
  call void @latencyCount(i64 41)
  %30 = ptrtoint %struct.arc* %20 to i64, !llfi_index !41
  call void @latencyCount(i64 42)
  %31 = ptrtoint i8* %13 to i64, !llfi_index !42
  call void @latencyCount(i64 43)
  %32 = sub i64 %31, %30, !llfi_index !43
  br label %bb4, !llfi_index !44

bb4:                                              ; preds = %bb7.backedge, %bb4.lr.ph
  %indvar = phi i64 [ 0, %bb4.lr.ph ], [ %tmp4, %bb7.backedge ], !llfi_index !45
  call void @latencyCount(i64 46)
  %tmp = add i64 %indvar, 2, !llfi_index !46
  call void @latencyCount(i64 47)
  %node.0 = getelementptr %struct.node* %26, i64 %tmp, !llfi_index !47
  call void @latencyCount(i64 48)
  %tmp4 = add i64 %indvar, 1, !llfi_index !48
  call void @latencyCount(i64 49)
  %scevgep = getelementptr %struct.node* %26, i64 %tmp4, i32 3, !llfi_index !49
  call void @latencyCount(i64 50)
  %scevgep5 = getelementptr %struct.node* %26, i64 %tmp4, i32 6, !llfi_index !50
  call void @latencyCount(i64 51)
  %33 = load %struct.node** %scevgep, align 8, !llfi_index !51
  call void @latencyCount(i64 52)
  %34 = icmp eq %struct.node* %33, %26, !llfi_index !52
  br i1 %34, label %bb7.backedge, label %bb5, !llfi_index !53

bb7.backedge:                                     ; preds = %bb5, %bb4
  call void @latencyCount(i64 54)
  %35 = icmp ult %struct.node* %node.0, %28, !llfi_index !54
  call void @qsPlace(i64 55)
  br i1 %35, label %bb4, label %bb9, !llfi_index !55

bb5:                                              ; preds = %bb4
  call void @latencyCount(i64 56)
  %36 = load %struct.arc** %scevgep5, align 8, !llfi_index !56
  call void @latencyCount(i64 57)
  %37 = ptrtoint %struct.arc* %36 to i64, !llfi_index !57
  call void @latencyCount(i64 58)
  %38 = add i64 %32, %37, !llfi_index !58
  call void @latencyCount(i64 59)
  %39 = inttoptr i64 %38 to %struct.arc*, !llfi_index !59
  store %struct.arc* %39, %struct.arc** %scevgep5, align 8, !llfi_index !60
  br label %bb7.backedge, !llfi_index !61

bb9:                                              ; preds = %bb7.backedge, %bb3, %bb2
  %.0 = phi i64 [ -1, %bb2 ], [ 0, %bb7.backedge ], [ 0, %bb3 ], !llfi_index !62
  ret i64 %.0, !llfi_index !63
}

declare void @__assert_fail(i8*, i8*, i32, i8*) noreturn nounwind

declare noalias i8* @realloc(i8* nocapture, i64) nounwind

declare i32 @printf(i8* noalias nocapture, ...) nounwind

declare i32 @fflush(%struct.FILE* nocapture) nounwind

define void @insert_new_arc(%struct.arc* nocapture %new, i64 %newpos, %struct.node* %tail, %struct.node* %head, i64 %cost, i64 %red_cost) nounwind {
entry:
  call void @latencyCount(i64 64)
  %0 = getelementptr inbounds %struct.arc* %new, i64 %newpos, i32 1, !llfi_index !64
  store %struct.node* %tail, %struct.node** %0, align 8, !llfi_index !65
  call void @latencyCount(i64 66)
  %1 = getelementptr inbounds %struct.arc* %new, i64 %newpos, i32 2, !llfi_index !66
  store %struct.node* %head, %struct.node** %1, align 8, !llfi_index !67
  call void @latencyCount(i64 68)
  %2 = getelementptr inbounds %struct.arc* %new, i64 %newpos, i32 7, !llfi_index !68
  store i64 %cost, i64* %2, align 8, !llfi_index !69
  call void @latencyCount(i64 70)
  %3 = getelementptr inbounds %struct.arc* %new, i64 %newpos, i32 0, !llfi_index !70
  store i64 %cost, i64* %3, align 8, !llfi_index !71
  call void @latencyCount(i64 72)
  %4 = getelementptr inbounds %struct.arc* %new, i64 %newpos, i32 6, !llfi_index !72
  store i64 %red_cost, i64* %4, align 8, !llfi_index !73
  call void @latencyCount(i64 74)
  %5 = add nsw i64 %newpos, 1, !llfi_index !74
  br label %bb1, !llfi_index !75

bb:                                               ; preds = %bb2
  call void @latencyCount(i64 76)
  %6 = add nsw i64 %pos.0, -1, !llfi_index !76
  call void @latencyCount(i64 77)
  %7 = getelementptr inbounds %struct.arc* %new, i64 %22, i32 1, !llfi_index !77
  call void @latencyCount(i64 78)
  %8 = load %struct.node** %7, align 8, !llfi_index !78
  call void @latencyCount(i64 79)
  %9 = getelementptr inbounds %struct.arc* %new, i64 %6, i32 1, !llfi_index !79
  store %struct.node* %8, %struct.node** %9, align 8, !llfi_index !80
  call void @latencyCount(i64 81)
  %10 = getelementptr inbounds %struct.arc* %new, i64 %22, i32 2, !llfi_index !81
  call void @latencyCount(i64 82)
  %11 = load %struct.node** %10, align 8, !llfi_index !82
  call void @latencyCount(i64 83)
  %12 = getelementptr inbounds %struct.arc* %new, i64 %6, i32 2, !llfi_index !83
  store %struct.node* %11, %struct.node** %12, align 8, !llfi_index !84
  call void @latencyCount(i64 85)
  %13 = getelementptr inbounds %struct.arc* %new, i64 %22, i32 0, !llfi_index !85
  call void @latencyCount(i64 86)
  %14 = load i64* %13, align 8, !llfi_index !86
  call void @latencyCount(i64 87)
  %15 = getelementptr inbounds %struct.arc* %new, i64 %6, i32 0, !llfi_index !87
  store i64 %14, i64* %15, align 8, !llfi_index !88
  call void @latencyCount(i64 89)
  %16 = load i64* %13, align 8, !llfi_index !89
  call void @latencyCount(i64 90)
  %17 = getelementptr inbounds %struct.arc* %new, i64 %6, i32 7, !llfi_index !90
  store i64 %16, i64* %17, align 8, !llfi_index !91
  call void @latencyCount(i64 92)
  %18 = getelementptr inbounds %struct.arc* %new, i64 %6, i32 6, !llfi_index !92
  store i64 %24, i64* %18, align 8, !llfi_index !93
  store %struct.node* %tail, %struct.node** %7, align 8, !llfi_index !94
  store %struct.node* %head, %struct.node** %10, align 8, !llfi_index !95
  store i64 %cost, i64* %13, align 8, !llfi_index !96
  call void @latencyCount(i64 97)
  %19 = getelementptr inbounds %struct.arc* %new, i64 %22, i32 7, !llfi_index !97
  store i64 %cost, i64* %19, align 8, !llfi_index !98
  store i64 %red_cost, i64* %23, align 8, !llfi_index !99
  br label %bb1, !llfi_index !100

bb1:                                              ; preds = %bb, %entry
  %pos.0 = phi i64 [ %5, %entry ], [ %21, %bb ], !llfi_index !101
  call void @latencyCount(i64 102)
  %20 = icmp eq i64 %pos.0, 1, !llfi_index !102
  call void @qsPlace(i64 103)
  br i1 %20, label %return, label %bb2, !llfi_index !103

bb2:                                              ; preds = %bb1
  call void @latencyCount(i64 104)
  %21 = sdiv i64 %pos.0, 2, !llfi_index !104
  call void @latencyCount(i64 105)
  %22 = add nsw i64 %21, -1, !llfi_index !105
  call void @latencyCount(i64 106)
  %23 = getelementptr inbounds %struct.arc* %new, i64 %22, i32 6, !llfi_index !106
  call void @latencyCount(i64 107)
  %24 = load i64* %23, align 8, !llfi_index !107
  call void @latencyCount(i64 108)
  %25 = icmp slt i64 %24, %red_cost, !llfi_index !108
  call void @qsPlace(i64 109)
  br i1 %25, label %bb, label %return, !llfi_index !109

return:                                           ; preds = %bb2, %bb1
  ret void, !llfi_index !110
}

define void @replace_weaker_arc(%struct.network_t* nocapture %net, %struct.arc* nocapture %new, %struct.node* %tail, %struct.node* %head, i64 %cost, i64 %red_cost) nounwind {
entry:
  call void @latencyCount(i64 111)
  %0 = getelementptr inbounds %struct.arc* %new, i64 0, i32 1, !llfi_index !111
  store %struct.node* %tail, %struct.node** %0, align 8, !llfi_index !112
  call void @latencyCount(i64 113)
  %1 = getelementptr inbounds %struct.arc* %new, i64 0, i32 2, !llfi_index !113
  store %struct.node* %head, %struct.node** %1, align 8, !llfi_index !114
  call void @latencyCount(i64 115)
  %2 = getelementptr inbounds %struct.arc* %new, i64 0, i32 7, !llfi_index !115
  store i64 %cost, i64* %2, align 8, !llfi_index !116
  call void @latencyCount(i64 117)
  %3 = getelementptr inbounds %struct.arc* %new, i64 0, i32 0, !llfi_index !117
  store i64 %cost, i64* %3, align 8, !llfi_index !118
  call void @latencyCount(i64 119)
  %4 = getelementptr inbounds %struct.arc* %new, i64 0, i32 6, !llfi_index !119
  store i64 %red_cost, i64* %4, align 8, !llfi_index !120
  call void @latencyCount(i64 121)
  %5 = getelementptr inbounds %struct.arc* %new, i64 1, i32 6, !llfi_index !121
  call void @latencyCount(i64 122)
  %6 = load i64* %5, align 8, !llfi_index !122
  call void @latencyCount(i64 123)
  %7 = getelementptr inbounds %struct.arc* %new, i64 2, i32 6, !llfi_index !123
  call void @latencyCount(i64 124)
  %8 = load i64* %7, align 8, !llfi_index !124
  call void @latencyCount(i64 125)
  %9 = icmp sgt i64 %6, %8, !llfi_index !125
  call void @latencyCount(i64 126)
  %. = select i1 %9, i64 2, i64 3, !llfi_index !126
  call void @latencyCount(i64 127)
  %10 = getelementptr inbounds %struct.network_t* %net, i64 0, i32 8, !llfi_index !127
  call void @latencyCount(i64 128)
  %.pre = load i64* %10, align 8, !llfi_index !128
  br label %bb6, !llfi_index !129

bb3:                                              ; preds = %bb7
  call void @latencyCount(i64 130)
  %11 = add nsw i64 %pos.0, -1, !llfi_index !130
  call void @latencyCount(i64 131)
  %12 = getelementptr inbounds %struct.arc* %new, i64 %37, i32 1, !llfi_index !131
  call void @latencyCount(i64 132)
  %13 = load %struct.node** %12, align 8, !llfi_index !132
  call void @latencyCount(i64 133)
  %14 = getelementptr inbounds %struct.arc* %new, i64 %11, i32 1, !llfi_index !133
  store %struct.node* %13, %struct.node** %14, align 8, !llfi_index !134
  call void @latencyCount(i64 135)
  %15 = getelementptr inbounds %struct.arc* %new, i64 %37, i32 2, !llfi_index !135
  call void @latencyCount(i64 136)
  %16 = load %struct.node** %15, align 8, !llfi_index !136
  call void @latencyCount(i64 137)
  %17 = getelementptr inbounds %struct.arc* %new, i64 %11, i32 2, !llfi_index !137
  store %struct.node* %16, %struct.node** %17, align 8, !llfi_index !138
  call void @latencyCount(i64 139)
  %18 = getelementptr inbounds %struct.arc* %new, i64 %37, i32 0, !llfi_index !139
  call void @latencyCount(i64 140)
  %19 = load i64* %18, align 8, !llfi_index !140
  call void @latencyCount(i64 141)
  %20 = getelementptr inbounds %struct.arc* %new, i64 %11, i32 0, !llfi_index !141
  store i64 %19, i64* %20, align 8, !llfi_index !142
  call void @latencyCount(i64 143)
  %21 = load i64* %18, align 8, !llfi_index !143
  call void @latencyCount(i64 144)
  %22 = getelementptr inbounds %struct.arc* %new, i64 %11, i32 7, !llfi_index !144
  store i64 %21, i64* %22, align 8, !llfi_index !145
  call void @latencyCount(i64 146)
  %23 = getelementptr inbounds %struct.arc* %new, i64 %11, i32 6, !llfi_index !146
  store i64 %39, i64* %23, align 8, !llfi_index !147
  store %struct.node* %tail, %struct.node** %12, align 8, !llfi_index !148
  store %struct.node* %head, %struct.node** %15, align 8, !llfi_index !149
  store i64 %cost, i64* %18, align 8, !llfi_index !150
  call void @latencyCount(i64 151)
  %24 = getelementptr inbounds %struct.arc* %new, i64 %37, i32 7, !llfi_index !151
  store i64 %cost, i64* %24, align 8, !llfi_index !152
  store i64 %red_cost, i64* %38, align 8, !llfi_index !153
  call void @latencyCount(i64 154)
  %25 = shl nsw i64 %cmp.0, 1, !llfi_index !154
  call void @latencyCount(i64 155)
  %26 = or i64 %25, 1, !llfi_index !155
  call void @latencyCount(i64 156)
  %27 = load i64* %10, align 8, !llfi_index !156
  call void @latencyCount(i64 157)
  %28 = icmp sgt i64 %26, %27, !llfi_index !157
  br i1 %28, label %bb6, label %bb4, !llfi_index !158

bb4:                                              ; preds = %bb3
  call void @latencyCount(i64 159)
  %29 = add nsw i64 %25, -1, !llfi_index !159
  call void @latencyCount(i64 160)
  %30 = getelementptr inbounds %struct.arc* %new, i64 %29, i32 6, !llfi_index !160
  call void @latencyCount(i64 161)
  %31 = load i64* %30, align 8, !llfi_index !161
  call void @latencyCount(i64 162)
  %32 = getelementptr inbounds %struct.arc* %new, i64 %25, i32 6, !llfi_index !162
  call void @latencyCount(i64 163)
  %33 = load i64* %32, align 8, !llfi_index !163
  call void @latencyCount(i64 164)
  %34 = icmp slt i64 %31, %33, !llfi_index !164
  br i1 %34, label %bb5, label %bb6, !llfi_index !165

bb5:                                              ; preds = %bb4
  br label %bb6, !llfi_index !166

bb6:                                              ; preds = %bb5, %bb4, %bb3, %entry
  %35 = phi i64 [ %.pre, %entry ], [ %27, %bb5 ], [ %27, %bb4 ], [ %27, %bb3 ], !llfi_index !167
  %pos.0 = phi i64 [ 1, %entry ], [ %cmp.0, %bb5 ], [ %cmp.0, %bb4 ], [ %cmp.0, %bb3 ], !llfi_index !168
  %cmp.0 = phi i64 [ %., %entry ], [ %26, %bb5 ], [ %25, %bb4 ], [ %25, %bb3 ], !llfi_index !169
  call void @latencyCount(i64 170)
  %36 = icmp slt i64 %35, %cmp.0, !llfi_index !170
  call void @qsPlace(i64 171)
  br i1 %36, label %return, label %bb7, !llfi_index !171

bb7:                                              ; preds = %bb6
  call void @latencyCount(i64 172)
  %37 = add nsw i64 %cmp.0, -1, !llfi_index !172
  call void @latencyCount(i64 173)
  %38 = getelementptr inbounds %struct.arc* %new, i64 %37, i32 6, !llfi_index !173
  call void @latencyCount(i64 174)
  %39 = load i64* %38, align 8, !llfi_index !174
  call void @latencyCount(i64 175)
  %40 = icmp sgt i64 %39, %red_cost, !llfi_index !175
  call void @qsPlace(i64 176)
  br i1 %40, label %bb3, label %return, !llfi_index !176

return:                                           ; preds = %bb7, %bb6
  ret void, !llfi_index !177
}

define i64 @price_out_impl(%struct.network_t* %net) nounwind {
entry:
  call void @latencyCount(i64 178)
  %0 = getelementptr inbounds %struct.network_t* %net, i64 0, i32 18, !llfi_index !178
  call void @latencyCount(i64 179)
  %1 = load i64* %0, align 8, !llfi_index !179
  call void @latencyCount(i64 180)
  %2 = getelementptr inbounds %struct.network_t* %net, i64 0, i32 3, !llfi_index !180
  call void @latencyCount(i64 181)
  %3 = load i64* %2, align 8, !llfi_index !181
  call void @latencyCount(i64 182)
  %4 = icmp slt i64 %3, 15001, !llfi_index !182
  br i1 %4, label %bb, label %bb5, !llfi_index !183

bb:                                               ; preds = %entry
  call void @latencyCount(i64 184)
  %5 = getelementptr inbounds %struct.network_t* %net, i64 0, i32 5, !llfi_index !184
  call void @latencyCount(i64 185)
  %6 = load i64* %5, align 8, !llfi_index !185
  call void @latencyCount(i64 186)
  %7 = getelementptr inbounds %struct.network_t* %net, i64 0, i32 9, !llfi_index !186
  call void @latencyCount(i64 187)
  %8 = load i64* %7, align 8, !llfi_index !187
  call void @latencyCount(i64 188)
  %9 = add nsw i64 %8, %6, !llfi_index !188
  call void @latencyCount(i64 189)
  %10 = getelementptr inbounds %struct.network_t* %net, i64 0, i32 4, !llfi_index !189
  call void @latencyCount(i64 190)
  %11 = load i64* %10, align 8, !llfi_index !190
  call void @latencyCount(i64 191)
  %12 = icmp sgt i64 %9, %11, !llfi_index !191
  br i1 %12, label %bb1, label %bb5, !llfi_index !192

bb1:                                              ; preds = %bb
  call void @latencyCount(i64 193)
  %13 = mul nsw i64 %3, %3, !llfi_index !193
  call void @latencyCount(i64 194)
  %14 = sdiv i64 %13, 2, !llfi_index !194
  call void @latencyCount(i64 195)
  %15 = add nsw i64 %14, %6, !llfi_index !195
  call void @latencyCount(i64 196)
  %16 = icmp sgt i64 %15, %11, !llfi_index !196
  br i1 %16, label %bb2, label %bb5, !llfi_index !197

bb2:                                              ; preds = %bb1
  call void @latencyCount(i64 198)
  %17 = tail call i64 @resize_prob(%struct.network_t* %net) nounwind, !llfi_index !198
  call void @latencyCount(i64 199)
  %18 = icmp eq i64 %17, 0, !llfi_index !199
  br i1 %18, label %bb4, label %bb36, !llfi_index !200

bb4:                                              ; preds = %bb2
  call void @latencyCount(i64 201)
  %19 = getelementptr inbounds %struct.network_t* %net, i64 0, i32 21, !llfi_index !201
  call void @latencyCount(i64 202)
  %20 = load %struct.node** %19, align 8, !llfi_index !202
  call void @latencyCount(i64 203)
  %21 = getelementptr inbounds %struct.network_t* %net, i64 0, i32 22, !llfi_index !203
  call void @latencyCount(i64 204)
  %22 = load %struct.node** %21, align 8, !llfi_index !204
  call void @latencyCount(i64 205)
  %23 = icmp ult %struct.node* %20, %22, !llfi_index !205
  br i1 %23, label %bb.i, label %bb2.i, !llfi_index !206

bb.i:                                             ; preds = %bb.i, %bb4
  %indvar8.i = phi i64 [ %tmp48, %bb.i ], [ 0, %bb4 ], !llfi_index !207
  call void @latencyCount(i64 208)
  %tmp48 = add i64 %indvar8.i, 1, !llfi_index !208
  call void @latencyCount(i64 209)
  %scevgep13.i = getelementptr %struct.node* %20, i64 %tmp48, !llfi_index !209
  call void @latencyCount(i64 210)
  %scevgep11.i = getelementptr %struct.node* %20, i64 %indvar8.i, i32 7, !llfi_index !210
  call void @latencyCount(i64 211)
  %scevgep10.i = getelementptr %struct.node* %20, i64 %indvar8.i, i32 8, !llfi_index !211
  store %struct.arc* null, %struct.arc** %scevgep10.i, align 8, !llfi_index !212
  store %struct.arc* null, %struct.arc** %scevgep11.i, align 8, !llfi_index !213
  call void @latencyCount(i64 214)
  %24 = icmp ult %struct.node* %scevgep13.i, %22, !llfi_index !214
  call void @qsPlace(i64 215)
  br i1 %24, label %bb.i, label %bb2.i, !llfi_index !215

bb2.i:                                            ; preds = %bb.i, %bb4
  call void @latencyCount(i64 216)
  %25 = getelementptr inbounds %struct.network_t* %net, i64 0, i32 23, !llfi_index !216
  call void @latencyCount(i64 217)
  %26 = load %struct.arc** %25, align 8, !llfi_index !217
  call void @latencyCount(i64 218)
  %27 = getelementptr inbounds %struct.network_t* %net, i64 0, i32 24, !llfi_index !218
  call void @latencyCount(i64 219)
  %28 = load %struct.arc** %27, align 8, !llfi_index !219
  call void @latencyCount(i64 220)
  %29 = icmp ult %struct.arc* %26, %28, !llfi_index !220
  br i1 %29, label %bb3.i, label %bb5, !llfi_index !221

bb3.i:                                            ; preds = %bb3.i, %bb2.i
  %indvar.i = phi i64 [ %tmp41, %bb3.i ], [ 0, %bb2.i ], !llfi_index !222
  call void @latencyCount(i64 223)
  %tmp41 = add i64 %indvar.i, 1, !llfi_index !223
  call void @latencyCount(i64 224)
  %scevgep7.i = getelementptr %struct.arc* %26, i64 %tmp41, !llfi_index !224
  call void @latencyCount(i64 225)
  %scevgep6.i = getelementptr %struct.arc* %26, i64 %indvar.i, i32 5, !llfi_index !225
  call void @latencyCount(i64 226)
  %scevgep5.i = getelementptr %struct.arc* %26, i64 %indvar.i, i32 2, !llfi_index !226
  call void @latencyCount(i64 227)
  %arc.01.i = getelementptr %struct.arc* %26, i64 %indvar.i, !llfi_index !227
  call void @latencyCount(i64 228)
  %scevgep3.i = getelementptr %struct.arc* %26, i64 %indvar.i, i32 4, !llfi_index !228
  call void @latencyCount(i64 229)
  %scevgep.i = getelementptr %struct.arc* %26, i64 %indvar.i, i32 1, !llfi_index !229
  call void @latencyCount(i64 230)
  %30 = load %struct.node** %scevgep.i, align 8, !llfi_index !230
  call void @latencyCount(i64 231)
  %31 = getelementptr inbounds %struct.node* %30, i64 0, i32 7, !llfi_index !231
  call void @latencyCount(i64 232)
  %32 = load %struct.arc** %31, align 8, !llfi_index !232
  store %struct.arc* %32, %struct.arc** %scevgep3.i, align 8, !llfi_index !233
  store %struct.arc* %arc.01.i, %struct.arc** %31, align 8, !llfi_index !234
  call void @latencyCount(i64 235)
  %33 = load %struct.node** %scevgep5.i, align 8, !llfi_index !235
  call void @latencyCount(i64 236)
  %34 = getelementptr inbounds %struct.node* %33, i64 0, i32 8, !llfi_index !236
  call void @latencyCount(i64 237)
  %35 = load %struct.arc** %34, align 8, !llfi_index !237
  store %struct.arc* %35, %struct.arc** %scevgep6.i, align 8, !llfi_index !238
  store %struct.arc* %arc.01.i, %struct.arc** %34, align 8, !llfi_index !239
  call void @latencyCount(i64 240)
  %36 = icmp ult %struct.arc* %scevgep7.i, %28, !llfi_index !240
  call void @qsPlace(i64 241)
  br i1 %36, label %bb3.i, label %bb5, !llfi_index !241

bb5:                                              ; preds = %bb3.i, %bb2.i, %bb1, %bb, %entry
  %resized.0 = phi i64 [ 0, %entry ], [ 0, %bb ], [ 0, %bb1 ], [ 1, %bb2.i ], [ 1, %bb3.i ], !llfi_index !242
  call void @latencyCount(i64 243)
  %37 = getelementptr inbounds %struct.network_t* %net, i64 0, i32 24, !llfi_index !243
  call void @latencyCount(i64 244)
  %38 = load %struct.arc** %37, align 8, !llfi_index !244
  call void @latencyCount(i64 245)
  %39 = load i64* %2, align 8, !llfi_index !245
  call void @latencyCount(i64 246)
  %40 = getelementptr inbounds %struct.network_t* %net, i64 0, i32 23, !llfi_index !246
  call void @latencyCount(i64 247)
  %41 = load %struct.arc** %40, align 8, !llfi_index !247
  br label %bb7, !llfi_index !248

bb6:                                              ; preds = %bb8
  call void @latencyCount(i64 249)
  %42 = add nsw i64 %43, 1, !llfi_index !249
  br label %bb7, !llfi_index !250

bb7:                                              ; preds = %bb6, %bb5
  %43 = phi i64 [ 0, %bb5 ], [ %42, %bb6 ], !llfi_index !251
  call void @latencyCount(i64 252)
  %44 = icmp slt i64 %43, %39, !llfi_index !252
  call void @qsPlace(i64 253)
  br i1 %44, label %bb8, label %bb36, !llfi_index !253

bb8:                                              ; preds = %bb7
  call void @latencyCount(i64 254)
  %tmp38 = mul i64 %43, 3, !llfi_index !254
  call void @latencyCount(i64 255)
  %tmp39 = add i64 %tmp38, 1, !llfi_index !255
  call void @latencyCount(i64 256)
  %scevgep40 = getelementptr %struct.arc* %41, i64 %tmp39, i32 3, !llfi_index !256
  call void @latencyCount(i64 257)
  %45 = load i32* %scevgep40, align 8, !llfi_index !257
  call void @latencyCount(i64 258)
  %46 = icmp eq i32 %45, -1, !llfi_index !258
  call void @qsPlace(i64 259)
  br i1 %46, label %bb6, label %bb10.lr.ph, !llfi_index !259

bb10.lr.ph:                                       ; preds = %bb8
  call void @latencyCount(i64 260)
  %47 = add i64 %1, -15, !llfi_index !260
  call void @latencyCount(i64 261)
  %48 = getelementptr inbounds %struct.network_t* %net, i64 0, i32 8, !llfi_index !261
  call void @latencyCount(i64 262)
  %49 = getelementptr inbounds %struct.arc* %38, i64 0, i32 6, !llfi_index !262
  call void @latencyCount(i64 263)
  %tmp27 = sub i64 %39, %43, !llfi_index !263
  call void @latencyCount(i64 264)
  %tmp29 = mul i64 %43, 3, !llfi_index !264
  call void @latencyCount(i64 265)
  %tmp30 = add i64 %tmp29, 1, !llfi_index !265
  br label %bb10, !llfi_index !266

bb10:                                             ; preds = %bb23, %bb10.lr.ph
  %indvar24 = phi i64 [ 0, %bb10.lr.ph ], [ %indvar.next25, %bb23 ], !llfi_index !267
  %first_of_sparse_list.19 = phi %struct.arc* [ null, %bb10.lr.ph ], [ %first_of_sparse_list.0, %bb23 ], !llfi_index !268
  %new_arcs.37 = phi i64 [ 0, %bb10.lr.ph ], [ %new_arcs.2, %bb23 ], !llfi_index !269
  call void @latencyCount(i64 270)
  %tmp28 = mul i64 %indvar24, 3, !llfi_index !270
  call void @latencyCount(i64 271)
  %tmp31 = add i64 %tmp30, %tmp28, !llfi_index !271
  call void @latencyCount(i64 272)
  %tmp2952 = add i64 %43, %indvar24, !llfi_index !272
  call void @latencyCount(i64 273)
  %tmp33 = mul i64 %tmp2952, 3, !llfi_index !273
  call void @latencyCount(i64 274)
  %scevgep34 = getelementptr %struct.arc* %41, i64 %tmp33, i32 2, !llfi_index !274
  call void @latencyCount(i64 275)
  %scevgep35 = getelementptr %struct.arc* %41, i64 %tmp33, i32 3, !llfi_index !275
  call void @latencyCount(i64 276)
  %scevgep36 = getelementptr %struct.arc* %41, i64 %tmp33, i32 7, !llfi_index !276
  call void @latencyCount(i64 277)
  %scevgep37 = getelementptr %struct.arc* %41, i64 %tmp31, i32 3, !llfi_index !277
  call void @latencyCount(i64 278)
  %50 = load i32* %scevgep37, align 8, !llfi_index !278
  call void @latencyCount(i64 279)
  %51 = icmp eq i32 %50, -1, !llfi_index !279
  br i1 %51, label %bb12, label %bb11, !llfi_index !280

bb11:                                             ; preds = %bb10
  call void @latencyCount(i64 281)
  %scevgep32 = getelementptr %struct.arc* %41, i64 %tmp31, !llfi_index !281
  call void @latencyCount(i64 282)
  %52 = load %struct.node** %scevgep34, align 8, !llfi_index !282
  call void @latencyCount(i64 283)
  %53 = getelementptr inbounds %struct.node* %52, i64 0, i32 7, !llfi_index !283
  call void @latencyCount(i64 284)
  %54 = load %struct.arc** %53, align 8, !llfi_index !284
  call void @latencyCount(i64 285)
  %55 = getelementptr inbounds %struct.arc* %54, i64 0, i32 2, !llfi_index !285
  call void @latencyCount(i64 286)
  %56 = load %struct.node** %55, align 8, !llfi_index !286
  call void @latencyCount(i64 287)
  %57 = getelementptr inbounds %struct.node* %56, i64 0, i32 9, !llfi_index !287
  store %struct.arc* %first_of_sparse_list.19, %struct.arc** %57, align 8, !llfi_index !288
  br label %bb12, !llfi_index !289

bb12:                                             ; preds = %bb11, %bb10
  %first_of_sparse_list.0 = phi %struct.arc* [ %scevgep32, %bb11 ], [ %first_of_sparse_list.19, %bb10 ], !llfi_index !290
  call void @latencyCount(i64 291)
  %58 = load i32* %scevgep35, align 8, !llfi_index !291
  call void @latencyCount(i64 292)
  %59 = icmp eq i32 %58, -1, !llfi_index !292
  br i1 %59, label %bb23, label %bb13, !llfi_index !293

bb13:                                             ; preds = %bb12
  call void @latencyCount(i64 294)
  %60 = load %struct.node** %scevgep34, align 8, !llfi_index !294
  call void @latencyCount(i64 295)
  %61 = getelementptr inbounds %struct.node* %60, i64 0, i32 13, !llfi_index !295
  call void @latencyCount(i64 296)
  %62 = load i32* %61, align 4, !llfi_index !296
  call void @latencyCount(i64 297)
  %63 = sext i32 %62 to i64, !llfi_index !297
  call void @latencyCount(i64 298)
  %64 = load i64* %scevgep36, align 8, !llfi_index !298
  call void @latencyCount(i64 299)
  %65 = sub i64 %47, %64, !llfi_index !299
  call void @latencyCount(i64 300)
  %66 = add i64 %65, %63, !llfi_index !300
  call void @latencyCount(i64 301)
  %67 = getelementptr inbounds %struct.node* %60, i64 0, i32 0, !llfi_index !301
  call void @latencyCount(i64 302)
  %68 = getelementptr inbounds %struct.arc* %first_of_sparse_list.0, i64 0, i32 1, !llfi_index !302
  call void @latencyCount(i64 303)
  %69 = load %struct.node** %68, align 8, !llfi_index !303
  br label %bb22.outer, !llfi_index !304

bb14:                                             ; preds = %bb22
  call void @latencyCount(i64 305)
  %70 = getelementptr inbounds %struct.arc* %arcin.0, i64 0, i32 1, !llfi_index !305
  call void @latencyCount(i64 306)
  %71 = load %struct.node** %70, align 8, !llfi_index !306
  call void @latencyCount(i64 307)
  %72 = getelementptr inbounds %struct.node* %71, i64 0, i32 13, !llfi_index !307
  call void @latencyCount(i64 308)
  %73 = load i32* %72, align 4, !llfi_index !308
  call void @latencyCount(i64 309)
  %74 = sext i32 %73 to i64, !llfi_index !309
  call void @latencyCount(i64 310)
  %75 = getelementptr inbounds %struct.arc* %arcin.0, i64 0, i32 7, !llfi_index !310
  call void @latencyCount(i64 311)
  %76 = load i64* %75, align 8, !llfi_index !311
  call void @latencyCount(i64 312)
  %77 = add nsw i64 %74, %76, !llfi_index !312
  call void @latencyCount(i64 313)
  %78 = icmp sgt i64 %77, %66, !llfi_index !313
  call void @qsPlace(i64 314)
  br i1 %78, label %bb22, label %bb16, !llfi_index !314

bb16:                                             ; preds = %bb14
  call void @latencyCount(i64 315)
  %79 = getelementptr inbounds %struct.node* %71, i64 0, i32 0, !llfi_index !315
  call void @latencyCount(i64 316)
  %80 = load i64* %79, align 8, !llfi_index !316
  call void @latencyCount(i64 317)
  %81 = sub nsw i64 30, %80, !llfi_index !317
  call void @latencyCount(i64 318)
  %82 = load i64* %67, align 8, !llfi_index !318
  call void @latencyCount(i64 319)
  %83 = add nsw i64 %81, %82, !llfi_index !319
  call void @latencyCount(i64 320)
  %84 = icmp slt i64 %83, 0, !llfi_index !320
  br i1 %84, label %bb17, label %bb22.outer, !llfi_index !321

bb17:                                             ; preds = %bb16
  call void @latencyCount(i64 322)
  %85 = load i64* %48, align 8, !llfi_index !322
  call void @latencyCount(i64 323)
  %86 = icmp sgt i64 %85, %new_arcs.1.ph, !llfi_index !323
  br i1 %86, label %bb18, label %bb19, !llfi_index !324

bb18:                                             ; preds = %bb17
  call void @latencyCount(i64 325)
  %87 = getelementptr inbounds %struct.arc* %38, i64 %new_arcs.1.ph, i32 1, !llfi_index !325
  store %struct.node* %71, %struct.node** %87, align 8, !llfi_index !326
  call void @latencyCount(i64 327)
  %88 = getelementptr inbounds %struct.arc* %38, i64 %new_arcs.1.ph, i32 2, !llfi_index !327
  store %struct.node* %60, %struct.node** %88, align 8, !llfi_index !328
  call void @latencyCount(i64 329)
  %89 = getelementptr inbounds %struct.arc* %38, i64 %new_arcs.1.ph, i32 7, !llfi_index !329
  store i64 30, i64* %89, align 8, !llfi_index !330
  call void @latencyCount(i64 331)
  %90 = getelementptr inbounds %struct.arc* %38, i64 %new_arcs.1.ph, i32 0, !llfi_index !331
  store i64 30, i64* %90, align 8, !llfi_index !332
  call void @latencyCount(i64 333)
  %91 = getelementptr inbounds %struct.arc* %38, i64 %new_arcs.1.ph, i32 6, !llfi_index !333
  store i64 %83, i64* %91, align 8, !llfi_index !334
  call void @latencyCount(i64 335)
  %92 = add nsw i64 %new_arcs.1.ph, 1, !llfi_index !335
  br label %bb1.i, !llfi_index !336

bb.i1:                                            ; preds = %bb2.i2
  call void @latencyCount(i64 337)
  %93 = add nsw i64 %pos.0.i, -1, !llfi_index !337
  call void @latencyCount(i64 338)
  %94 = getelementptr inbounds %struct.arc* %38, i64 %109, i32 1, !llfi_index !338
  call void @latencyCount(i64 339)
  %95 = load %struct.node** %94, align 8, !llfi_index !339
  call void @latencyCount(i64 340)
  %96 = getelementptr inbounds %struct.arc* %38, i64 %93, i32 1, !llfi_index !340
  store %struct.node* %95, %struct.node** %96, align 8, !llfi_index !341
  call void @latencyCount(i64 342)
  %97 = getelementptr inbounds %struct.arc* %38, i64 %109, i32 2, !llfi_index !342
  call void @latencyCount(i64 343)
  %98 = load %struct.node** %97, align 8, !llfi_index !343
  call void @latencyCount(i64 344)
  %99 = getelementptr inbounds %struct.arc* %38, i64 %93, i32 2, !llfi_index !344
  store %struct.node* %98, %struct.node** %99, align 8, !llfi_index !345
  call void @latencyCount(i64 346)
  %100 = getelementptr inbounds %struct.arc* %38, i64 %109, i32 0, !llfi_index !346
  call void @latencyCount(i64 347)
  %101 = load i64* %100, align 8, !llfi_index !347
  call void @latencyCount(i64 348)
  %102 = getelementptr inbounds %struct.arc* %38, i64 %93, i32 0, !llfi_index !348
  store i64 %101, i64* %102, align 8, !llfi_index !349
  call void @latencyCount(i64 350)
  %103 = load i64* %100, align 8, !llfi_index !350
  call void @latencyCount(i64 351)
  %104 = getelementptr inbounds %struct.arc* %38, i64 %93, i32 7, !llfi_index !351
  store i64 %103, i64* %104, align 8, !llfi_index !352
  call void @latencyCount(i64 353)
  %105 = getelementptr inbounds %struct.arc* %38, i64 %93, i32 6, !llfi_index !353
  store i64 %111, i64* %105, align 8, !llfi_index !354
  store %struct.node* %71, %struct.node** %94, align 8, !llfi_index !355
  store %struct.node* %60, %struct.node** %97, align 8, !llfi_index !356
  store i64 30, i64* %100, align 8, !llfi_index !357
  call void @latencyCount(i64 358)
  %106 = getelementptr inbounds %struct.arc* %38, i64 %109, i32 7, !llfi_index !358
  store i64 30, i64* %106, align 8, !llfi_index !359
  store i64 %83, i64* %110, align 8, !llfi_index !360
  br label %bb1.i, !llfi_index !361

bb1.i:                                            ; preds = %bb.i1, %bb18
  %pos.0.i = phi i64 [ %92, %bb18 ], [ %108, %bb.i1 ], !llfi_index !362
  call void @latencyCount(i64 363)
  %107 = icmp eq i64 %pos.0.i, 1, !llfi_index !363
  call void @qsPlace(i64 364)
  br i1 %107, label %bb22.outer, label %bb2.i2, !llfi_index !364

bb2.i2:                                           ; preds = %bb1.i
  call void @latencyCount(i64 365)
  %108 = sdiv i64 %pos.0.i, 2, !llfi_index !365
  call void @latencyCount(i64 366)
  %109 = add nsw i64 %108, -1, !llfi_index !366
  call void @latencyCount(i64 367)
  %110 = getelementptr inbounds %struct.arc* %38, i64 %109, i32 6, !llfi_index !367
  call void @latencyCount(i64 368)
  %111 = load i64* %110, align 8, !llfi_index !368
  call void @latencyCount(i64 369)
  %112 = icmp slt i64 %111, %83, !llfi_index !369
  call void @qsPlace(i64 370)
  br i1 %112, label %bb.i1, label %bb22.outer, !llfi_index !370

bb19:                                             ; preds = %bb17
  call void @latencyCount(i64 371)
  %113 = load i64* %49, align 8, !llfi_index !371
  call void @latencyCount(i64 372)
  %114 = icmp sgt i64 %113, %83, !llfi_index !372
  br i1 %114, label %bb20, label %bb22.outer, !llfi_index !373

bb20:                                             ; preds = %bb19
  call void @latencyCount(i64 374)
  tail call void @replace_weaker_arc(%struct.network_t* %net, %struct.arc* %38, %struct.node* %71, %struct.node* %60, i64 30, i64 %83) nounwind, !llfi_index !374
  br label %bb22.outer, !llfi_index !375

bb22.outer:                                       ; preds = %bb20, %bb19, %bb2.i2, %bb1.i, %bb16, %bb13
  %new_arcs.1.ph = phi i64 [ %new_arcs.37, %bb13 ], [ %new_arcs.1.ph, %bb20 ], [ %new_arcs.1.ph, %bb19 ], [ %new_arcs.1.ph, %bb16 ], [ %92, %bb1.i ], [ %92, %bb2.i2 ], !llfi_index !376
  %.pn = phi %struct.node* [ %69, %bb13 ], [ %71, %bb2.i2 ], [ %71, %bb1.i ], [ %71, %bb20 ], [ %71, %bb19 ], [ %71, %bb16 ], !llfi_index !377
  br label %bb22, !llfi_index !378

bb22:                                             ; preds = %bb22.outer, %bb14
  %.pn10 = phi %struct.node* [ %.pn, %bb22.outer ], [ %71, %bb14 ], !llfi_index !379
  call void @latencyCount(i64 380)
  %arcin.0.in = getelementptr inbounds %struct.node* %.pn10, i64 0, i32 9, !llfi_index !380
  call void @latencyCount(i64 381)
  %arcin.0 = load %struct.arc** %arcin.0.in, align 8, !llfi_index !381
  call void @latencyCount(i64 382)
  %115 = icmp eq %struct.arc* %arcin.0, null, !llfi_index !382
  call void @qsPlace(i64 383)
  br i1 %115, label %bb23, label %bb14, !llfi_index !383

bb23:                                             ; preds = %bb22, %bb12
  %new_arcs.2 = phi i64 [ %new_arcs.37, %bb12 ], [ %new_arcs.1.ph, %bb22 ], !llfi_index !384
  call void @latencyCount(i64 385)
  %indvar.next25 = add i64 %indvar24, 1, !llfi_index !385
  call void @latencyCount(i64 386)
  %exitcond = icmp eq i64 %indvar.next25, %tmp27, !llfi_index !386
  call void @qsPlace(i64 387)
  br i1 %exitcond, label %bb25, label %bb10, !llfi_index !387

bb25:                                             ; preds = %bb23
  call void @latencyCount(i64 388)
  %116 = icmp eq i64 %new_arcs.2, 0, !llfi_index !388
  br i1 %116, label %bb36, label %bb26, !llfi_index !389

bb26:                                             ; preds = %bb25
  call void @latencyCount(i64 390)
  %117 = load %struct.arc** %37, align 8, !llfi_index !390
  call void @latencyCount(i64 391)
  %118 = getelementptr inbounds %struct.arc* %117, i64 %new_arcs.2, !llfi_index !391
  store %struct.arc* %118, %struct.arc** %37, align 8, !llfi_index !392
  call void @latencyCount(i64 393)
  %119 = icmp eq i64 %resized.0, 0, !llfi_index !393
  br i1 %119, label %bb32, label %bb28, !llfi_index !394

bb28:                                             ; preds = %bb28, %bb26
  %indvar = phi i64 [ %tmp, %bb28 ], [ 0, %bb26 ], !llfi_index !395
  call void @latencyCount(i64 396)
  %scevgep = getelementptr %struct.arc* %117, i64 %indvar, i32 6, !llfi_index !396
  call void @latencyCount(i64 397)
  %scevgep11 = getelementptr %struct.arc* %117, i64 %indvar, i32 3, !llfi_index !397
  call void @latencyCount(i64 398)
  %tmp = add i64 %indvar, 1, !llfi_index !398
  store i64 0, i64* %scevgep, align 8, !llfi_index !399
  store i32 1, i32* %scevgep11, align 8, !llfi_index !400
  call void @latencyCount(i64 401)
  %120 = icmp eq i64 %tmp, %new_arcs.2, !llfi_index !401
  call void @qsPlace(i64 402)
  br i1 %120, label %bb34, label %bb28, !llfi_index !402

bb32:                                             ; preds = %bb32, %bb26
  %indvar13 = phi i64 [ %tmp22, %bb32 ], [ 0, %bb26 ], !llfi_index !403
  call void @latencyCount(i64 404)
  %scevgep15 = getelementptr %struct.arc* %117, i64 %indvar13, i32 6, !llfi_index !404
  call void @latencyCount(i64 405)
  %scevgep16 = getelementptr %struct.arc* %117, i64 %indvar13, i32 3, !llfi_index !405
  call void @latencyCount(i64 406)
  %scevgep17 = getelementptr %struct.arc* %117, i64 %indvar13, i32 1, !llfi_index !406
  call void @latencyCount(i64 407)
  %scevgep18 = getelementptr %struct.arc* %117, i64 %indvar13, i32 4, !llfi_index !407
  call void @latencyCount(i64 408)
  %arcnew.15 = getelementptr %struct.arc* %117, i64 %indvar13, !llfi_index !408
  call void @latencyCount(i64 409)
  %scevgep20 = getelementptr %struct.arc* %117, i64 %indvar13, i32 2, !llfi_index !409
  call void @latencyCount(i64 410)
  %scevgep21 = getelementptr %struct.arc* %117, i64 %indvar13, i32 5, !llfi_index !410
  call void @latencyCount(i64 411)
  %tmp22 = add i64 %indvar13, 1, !llfi_index !411
  store i64 0, i64* %scevgep15, align 8, !llfi_index !412
  store i32 1, i32* %scevgep16, align 8, !llfi_index !413
  call void @latencyCount(i64 414)
  %121 = load %struct.node** %scevgep17, align 8, !llfi_index !414
  call void @latencyCount(i64 415)
  %122 = getelementptr inbounds %struct.node* %121, i64 0, i32 7, !llfi_index !415
  call void @latencyCount(i64 416)
  %123 = load %struct.arc** %122, align 8, !llfi_index !416
  store %struct.arc* %123, %struct.arc** %scevgep18, align 8, !llfi_index !417
  store %struct.arc* %arcnew.15, %struct.arc** %122, align 8, !llfi_index !418
  call void @latencyCount(i64 419)
  %124 = load %struct.node** %scevgep20, align 8, !llfi_index !419
  call void @latencyCount(i64 420)
  %125 = getelementptr inbounds %struct.node* %124, i64 0, i32 8, !llfi_index !420
  call void @latencyCount(i64 421)
  %126 = load %struct.arc** %125, align 8, !llfi_index !421
  store %struct.arc* %126, %struct.arc** %scevgep21, align 8, !llfi_index !422
  store %struct.arc* %arcnew.15, %struct.arc** %125, align 8, !llfi_index !423
  call void @latencyCount(i64 424)
  %127 = icmp eq i64 %tmp22, %new_arcs.2, !llfi_index !424
  call void @qsPlace(i64 425)
  br i1 %127, label %bb34, label %bb32, !llfi_index !425

bb34:                                             ; preds = %bb32, %bb28
  call void @latencyCount(i64 426)
  %128 = getelementptr inbounds %struct.network_t* %net, i64 0, i32 5, !llfi_index !426
  call void @latencyCount(i64 427)
  %129 = load i64* %128, align 8, !llfi_index !427
  call void @latencyCount(i64 428)
  %130 = add nsw i64 %129, %new_arcs.2, !llfi_index !428
  store i64 %130, i64* %128, align 8, !llfi_index !429
  call void @latencyCount(i64 430)
  %131 = getelementptr inbounds %struct.network_t* %net, i64 0, i32 7, !llfi_index !430
  call void @latencyCount(i64 431)
  %132 = load i64* %131, align 8, !llfi_index !431
  call void @latencyCount(i64 432)
  %133 = add nsw i64 %132, %new_arcs.2, !llfi_index !432
  store i64 %133, i64* %131, align 8, !llfi_index !433
  call void @latencyCount(i64 434)
  %134 = getelementptr inbounds %struct.network_t* %net, i64 0, i32 8, !llfi_index !434
  call void @latencyCount(i64 435)
  %135 = load i64* %134, align 8, !llfi_index !435
  call void @latencyCount(i64 436)
  %136 = sub nsw i64 %135, %new_arcs.2, !llfi_index !436
  store i64 %136, i64* %134, align 8, !llfi_index !437
  br label %bb36, !llfi_index !438

bb36:                                             ; preds = %bb34, %bb25, %bb7, %bb2
  %.0 = phi i64 [ -1, %bb2 ], [ 0, %bb25 ], [ %new_arcs.2, %bb34 ], [ 0, %bb7 ], !llfi_index !439
  ret i64 %.0, !llfi_index !440
}

define i64 @suspend_impl(%struct.network_t* nocapture %net, i64 %threshold, i64 %all) nounwind {
entry:
  call void @latencyCount(i64 441)
  %0 = icmp eq i64 %all, 0, !llfi_index !441
  br i1 %0, label %bb1, label %bb, !llfi_index !442

bb:                                               ; preds = %entry
  call void @latencyCount(i64 443)
  %1 = getelementptr inbounds %struct.network_t* %net, i64 0, i32 7, !llfi_index !443
  call void @latencyCount(i64 444)
  %2 = load i64* %1, align 8, !llfi_index !444
  br label %bb13, !llfi_index !445

bb1:                                              ; preds = %entry
  call void @latencyCount(i64 446)
  %3 = getelementptr inbounds %struct.network_t* %net, i64 0, i32 24, !llfi_index !446
  call void @latencyCount(i64 447)
  %4 = load %struct.arc** %3, align 8, !llfi_index !447
  call void @latencyCount(i64 448)
  %5 = getelementptr inbounds %struct.network_t* %net, i64 0, i32 23, !llfi_index !448
  call void @latencyCount(i64 449)
  %6 = load %struct.arc** %5, align 8, !llfi_index !449
  call void @latencyCount(i64 450)
  %7 = getelementptr inbounds %struct.network_t* %net, i64 0, i32 5, !llfi_index !450
  call void @latencyCount(i64 451)
  %8 = load i64* %7, align 8, !llfi_index !451
  call void @latencyCount(i64 452)
  %9 = getelementptr inbounds %struct.network_t* %net, i64 0, i32 7, !llfi_index !452
  call void @latencyCount(i64 453)
  %10 = load i64* %9, align 8, !llfi_index !453
  call void @latencyCount(i64 454)
  %11 = sub nsw i64 %8, %10, !llfi_index !454
  call void @latencyCount(i64 455)
  %12 = getelementptr inbounds %struct.arc* %6, i64 %11, !llfi_index !455
  call void @latencyCount(i64 456)
  %13 = icmp ult %struct.arc* %12, %4, !llfi_index !456
  br i1 %13, label %bb2.lr.ph, label %bb15, !llfi_index !457

bb2.lr.ph:                                        ; preds = %bb1
  call void @latencyCount(i64 458)
  %tmp11 = add i64 %8, 1, !llfi_index !458
  call void @latencyCount(i64 459)
  %tmp12 = sub i64 %tmp11, %10, !llfi_index !459
  br label %bb2, !llfi_index !460

bb2:                                              ; preds = %bb11, %bb2.lr.ph
  %indvar = phi i64 [ 0, %bb2.lr.ph ], [ %indvar.next, %bb11 ], !llfi_index !461
  %new_arc.12 = phi %struct.arc* [ %12, %bb2.lr.ph ], [ %new_arc.0, %bb11 ], !llfi_index !462
  %susp.11 = phi i64 [ 0, %bb2.lr.ph ], [ %susp.0, %bb11 ], !llfi_index !463
  call void @latencyCount(i64 464)
  %tmp6 = add i64 %11, %indvar, !llfi_index !464
  call void @latencyCount(i64 465)
  %scevgep = getelementptr %struct.arc* %6, i64 %tmp6, i32 3, !llfi_index !465
  call void @latencyCount(i64 466)
  %arc.03 = getelementptr %struct.arc* %6, i64 %tmp6, !llfi_index !466
  call void @latencyCount(i64 467)
  %scevgep715 = bitcast %struct.arc* %arc.03 to i8*, !llfi_index !467
  call void @latencyCount(i64 468)
  %scevgep9 = getelementptr %struct.arc* %6, i64 %tmp6, i32 1, !llfi_index !468
  call void @latencyCount(i64 469)
  %scevgep10 = getelementptr %struct.arc* %6, i64 %tmp6, i32 2, !llfi_index !469
  call void @latencyCount(i64 470)
  %tmp13 = add i64 %tmp12, %indvar, !llfi_index !470
  call void @latencyCount(i64 471)
  %scevgep14 = getelementptr %struct.arc* %6, i64 %tmp13, !llfi_index !471
  call void @latencyCount(i64 472)
  %14 = load i32* %scevgep, align 8, !llfi_index !472
  call void @latencyCount(i64 473)
  switch i32 %14, label %bb8 [
    i32 1, label %bb3
    i32 0, label %bb5
  ], !llfi_index !473

bb3:                                              ; preds = %bb2
  call void @latencyCount(i64 474)
  %scevgep78 = getelementptr inbounds %struct.arc* %6, i64 %tmp6, i32 0, !llfi_index !474
  call void @latencyCount(i64 475)
  %15 = load i64* %scevgep78, align 8, !llfi_index !475
  call void @latencyCount(i64 476)
  %16 = load %struct.node** %scevgep9, align 8, !llfi_index !476
  call void @latencyCount(i64 477)
  %17 = getelementptr inbounds %struct.node* %16, i64 0, i32 0, !llfi_index !477
  call void @latencyCount(i64 478)
  %18 = load i64* %17, align 8, !llfi_index !478
  call void @latencyCount(i64 479)
  %19 = load %struct.node** %scevgep10, align 8, !llfi_index !479
  call void @latencyCount(i64 480)
  %20 = getelementptr inbounds %struct.node* %19, i64 0, i32 0, !llfi_index !480
  call void @latencyCount(i64 481)
  %21 = load i64* %20, align 8, !llfi_index !481
  call void @latencyCount(i64 482)
  %22 = sub i64 %15, %18, !llfi_index !482
  call void @latencyCount(i64 483)
  %23 = add i64 %22, %21, !llfi_index !483
  br label %bb8, !llfi_index !484

bb5:                                              ; preds = %bb2
  call void @latencyCount(i64 485)
  %24 = load %struct.node** %scevgep9, align 8, !llfi_index !485
  call void @latencyCount(i64 486)
  %25 = getelementptr inbounds %struct.node* %24, i64 0, i32 6, !llfi_index !486
  call void @latencyCount(i64 487)
  %26 = load %struct.arc** %25, align 8, !llfi_index !487
  call void @latencyCount(i64 488)
  %27 = icmp eq %struct.arc* %26, %arc.03, !llfi_index !488
  br i1 %27, label %bb6, label %bb7, !llfi_index !489

bb6:                                              ; preds = %bb5
  store %struct.arc* %new_arc.12, %struct.arc** %25, align 8, !llfi_index !490
  br label %bb8, !llfi_index !491

bb7:                                              ; preds = %bb5
  call void @latencyCount(i64 492)
  %28 = load %struct.node** %scevgep10, align 8, !llfi_index !492
  call void @latencyCount(i64 493)
  %29 = getelementptr inbounds %struct.node* %28, i64 0, i32 6, !llfi_index !493
  store %struct.arc* %new_arc.12, %struct.arc** %29, align 8, !llfi_index !494
  br label %bb8, !llfi_index !495

bb8:                                              ; preds = %bb7, %bb6, %bb3, %bb2
  %red_cost.0 = phi i64 [ %23, %bb3 ], [ -2, %bb6 ], [ -2, %bb7 ], [ -2, %bb2 ], !llfi_index !496
  call void @latencyCount(i64 497)
  %30 = icmp sgt i64 %red_cost.0, %threshold, !llfi_index !497
  br i1 %30, label %bb9, label %bb10, !llfi_index !498

bb9:                                              ; preds = %bb8
  call void @latencyCount(i64 499)
  %31 = add nsw i64 %susp.11, 1, !llfi_index !499
  br label %bb11, !llfi_index !500

bb10:                                             ; preds = %bb8
  call void @latencyCount(i64 501)
  %32 = bitcast %struct.arc* %new_arc.12 to i8*, !llfi_index !501
  call void @latencyCount(i64 502)
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %32, i8* %scevgep715, i64 64, i32 8, i1 false), !llfi_index !502
  call void @latencyCount(i64 503)
  %33 = getelementptr inbounds %struct.arc* %new_arc.12, i64 1, !llfi_index !503
  br label %bb11, !llfi_index !504

bb11:                                             ; preds = %bb10, %bb9
  %susp.0 = phi i64 [ %31, %bb9 ], [ %susp.11, %bb10 ], !llfi_index !505
  %new_arc.0 = phi %struct.arc* [ %new_arc.12, %bb9 ], [ %33, %bb10 ], !llfi_index !506
  call void @latencyCount(i64 507)
  %34 = icmp ult %struct.arc* %scevgep14, %4, !llfi_index !507
  call void @latencyCount(i64 508)
  %indvar.next = add i64 %indvar, 1, !llfi_index !508
  call void @qsPlace(i64 509)
  br i1 %34, label %bb2, label %bb13, !llfi_index !509

bb13:                                             ; preds = %bb11, %bb
  %susp.2 = phi i64 [ %2, %bb ], [ %susp.0, %bb11 ], !llfi_index !510
  call void @latencyCount(i64 511)
  %35 = icmp eq i64 %susp.2, 0, !llfi_index !511
  br i1 %35, label %bb15, label %bb14, !llfi_index !512

bb14:                                             ; preds = %bb13
  call void @latencyCount(i64 513)
  %36 = getelementptr inbounds %struct.network_t* %net, i64 0, i32 5, !llfi_index !513
  call void @latencyCount(i64 514)
  %37 = load i64* %36, align 8, !llfi_index !514
  call void @latencyCount(i64 515)
  %38 = sub nsw i64 %37, %susp.2, !llfi_index !515
  store i64 %38, i64* %36, align 8, !llfi_index !516
  call void @latencyCount(i64 517)
  %39 = getelementptr inbounds %struct.network_t* %net, i64 0, i32 7, !llfi_index !517
  call void @latencyCount(i64 518)
  %40 = load i64* %39, align 8, !llfi_index !518
  call void @latencyCount(i64 519)
  %41 = sub nsw i64 %40, %susp.2, !llfi_index !519
  store i64 %41, i64* %39, align 8, !llfi_index !520
  call void @latencyCount(i64 521)
  %42 = getelementptr inbounds %struct.network_t* %net, i64 0, i32 24, !llfi_index !521
  call void @latencyCount(i64 522)
  %43 = load %struct.arc** %42, align 8, !llfi_index !522
  call void @latencyCount(i64 523)
  %44 = sub nsw i64 0, %susp.2, !llfi_index !523
  call void @latencyCount(i64 524)
  %45 = getelementptr inbounds %struct.arc* %43, i64 %44, !llfi_index !524
  store %struct.arc* %45, %struct.arc** %42, align 8, !llfi_index !525
  call void @latencyCount(i64 526)
  %46 = getelementptr inbounds %struct.network_t* %net, i64 0, i32 8, !llfi_index !526
  call void @latencyCount(i64 527)
  %47 = load i64* %46, align 8, !llfi_index !527
  call void @latencyCount(i64 528)
  %48 = add nsw i64 %47, %susp.2, !llfi_index !528
  store i64 %48, i64* %46, align 8, !llfi_index !529
  call void @latencyCount(i64 530)
  %49 = getelementptr inbounds %struct.network_t* %net, i64 0, i32 21, !llfi_index !530
  call void @latencyCount(i64 531)
  %50 = load %struct.node** %49, align 8, !llfi_index !531
  call void @latencyCount(i64 532)
  %51 = getelementptr inbounds %struct.network_t* %net, i64 0, i32 22, !llfi_index !532
  call void @latencyCount(i64 533)
  %52 = load %struct.node** %51, align 8, !llfi_index !533
  call void @latencyCount(i64 534)
  %53 = icmp ult %struct.node* %50, %52, !llfi_index !534
  br i1 %53, label %bb.i, label %bb2.i, !llfi_index !535

bb.i:                                             ; preds = %bb.i, %bb14
  %indvar8.i = phi i64 [ %tmp4, %bb.i ], [ 0, %bb14 ], !llfi_index !536
  call void @latencyCount(i64 537)
  %tmp4 = add i64 %indvar8.i, 1, !llfi_index !537
  call void @latencyCount(i64 538)
  %scevgep13.i = getelementptr %struct.node* %50, i64 %tmp4, !llfi_index !538
  call void @latencyCount(i64 539)
  %scevgep11.i = getelementptr %struct.node* %50, i64 %indvar8.i, i32 7, !llfi_index !539
  call void @latencyCount(i64 540)
  %scevgep10.i = getelementptr %struct.node* %50, i64 %indvar8.i, i32 8, !llfi_index !540
  store %struct.arc* null, %struct.arc** %scevgep10.i, align 8, !llfi_index !541
  store %struct.arc* null, %struct.arc** %scevgep11.i, align 8, !llfi_index !542
  call void @latencyCount(i64 543)
  %54 = icmp ult %struct.node* %scevgep13.i, %52, !llfi_index !543
  call void @qsPlace(i64 544)
  br i1 %54, label %bb.i, label %bb2.i.loopexit, !llfi_index !544

bb2.i.loopexit:                                   ; preds = %bb.i
  call void @latencyCount(i64 545)
  %.pre = load %struct.arc** %42, align 8, !llfi_index !545
  br label %bb2.i, !llfi_index !546

bb2.i:                                            ; preds = %bb2.i.loopexit, %bb14
  %55 = phi %struct.arc* [ %.pre, %bb2.i.loopexit ], [ %45, %bb14 ], !llfi_index !547
  call void @latencyCount(i64 548)
  %56 = getelementptr inbounds %struct.network_t* %net, i64 0, i32 23, !llfi_index !548
  call void @latencyCount(i64 549)
  %57 = load %struct.arc** %56, align 8, !llfi_index !549
  call void @latencyCount(i64 550)
  %58 = icmp ult %struct.arc* %57, %55, !llfi_index !550
  br i1 %58, label %bb3.i, label %bb15, !llfi_index !551

bb3.i:                                            ; preds = %bb3.i, %bb2.i
  %indvar.i = phi i64 [ %tmp, %bb3.i ], [ 0, %bb2.i ], !llfi_index !552
  call void @latencyCount(i64 553)
  %tmp = add i64 %indvar.i, 1, !llfi_index !553
  call void @latencyCount(i64 554)
  %scevgep7.i = getelementptr %struct.arc* %57, i64 %tmp, !llfi_index !554
  call void @latencyCount(i64 555)
  %scevgep6.i = getelementptr %struct.arc* %57, i64 %indvar.i, i32 5, !llfi_index !555
  call void @latencyCount(i64 556)
  %scevgep5.i = getelementptr %struct.arc* %57, i64 %indvar.i, i32 2, !llfi_index !556
  call void @latencyCount(i64 557)
  %arc.01.i = getelementptr %struct.arc* %57, i64 %indvar.i, !llfi_index !557
  call void @latencyCount(i64 558)
  %scevgep3.i = getelementptr %struct.arc* %57, i64 %indvar.i, i32 4, !llfi_index !558
  call void @latencyCount(i64 559)
  %scevgep.i = getelementptr %struct.arc* %57, i64 %indvar.i, i32 1, !llfi_index !559
  call void @latencyCount(i64 560)
  %59 = load %struct.node** %scevgep.i, align 8, !llfi_index !560
  call void @latencyCount(i64 561)
  %60 = getelementptr inbounds %struct.node* %59, i64 0, i32 7, !llfi_index !561
  call void @latencyCount(i64 562)
  %61 = load %struct.arc** %60, align 8, !llfi_index !562
  store %struct.arc* %61, %struct.arc** %scevgep3.i, align 8, !llfi_index !563
  store %struct.arc* %arc.01.i, %struct.arc** %60, align 8, !llfi_index !564
  call void @latencyCount(i64 565)
  %62 = load %struct.node** %scevgep5.i, align 8, !llfi_index !565
  call void @latencyCount(i64 566)
  %63 = getelementptr inbounds %struct.node* %62, i64 0, i32 8, !llfi_index !566
  call void @latencyCount(i64 567)
  %64 = load %struct.arc** %63, align 8, !llfi_index !567
  store %struct.arc* %64, %struct.arc** %scevgep6.i, align 8, !llfi_index !568
  store %struct.arc* %arc.01.i, %struct.arc** %63, align 8, !llfi_index !569
  call void @latencyCount(i64 570)
  %65 = icmp ult %struct.arc* %scevgep7.i, %55, !llfi_index !570
  call void @qsPlace(i64 571)
  br i1 %65, label %bb3.i, label %bb15, !llfi_index !571

bb15:                                             ; preds = %bb3.i, %bb2.i, %bb13, %bb1
  %susp.216 = phi i64 [ %susp.2, %bb2.i ], [ 0, %bb13 ], [ %susp.2, %bb3.i ], [ 0, %bb1 ], !llfi_index !572
  ret i64 %susp.216, !llfi_index !573
}

declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) nounwind

define i64 @global_opt() nounwind {
entry:
  br label %bb9, !llfi_index !574

bb:                                               ; preds = %bb9
  call void @latencyCount(i64 575)
  %0 = load i64* getelementptr inbounds (%struct.network_t* @net, i64 0, i32 5), align 8, !llfi_index !575
  call void @latencyCount(i64 576)
  %1 = tail call i32 (i8*, ...)* @printf(i8* noalias getelementptr inbounds ([34 x i8]* @.str3, i64 0, i64 0), i64 %0) nounwind, !llfi_index !576
  call void @latencyCount(i64 577)
  %2 = tail call i64 @primal_net_simplex(%struct.network_t* @net) nounwind, !llfi_index !577
  call void @latencyCount(i64 578)
  %3 = load i64* getelementptr inbounds (%struct.network_t* @net, i64 0, i32 27), align 8, !llfi_index !578
  call void @latencyCount(i64 579)
  %4 = tail call i32 (i8*, ...)* @printf(i8* noalias getelementptr inbounds ([34 x i8]* @.str14, i64 0, i64 0), i64 %3) nounwind, !llfi_index !579
  call void @latencyCount(i64 580)
  %5 = tail call double @flow_cost(%struct.network_t* @net) nounwind, !llfi_index !580
  call void @latencyCount(i64 581)
  %6 = tail call i32 (i8*, ...)* @printf(i8* noalias getelementptr inbounds ([36 x i8]* @.str25, i64 0, i64 0), double %5) nounwind, !llfi_index !581
  call void @latencyCount(i64 582)
  %7 = icmp eq i64 %indvar, 5, !llfi_index !582
  call void @qsPlace(i64 583)
  br i1 %7, label %bb10, label %bb1, !llfi_index !583

bb1:                                              ; preds = %bb
  call void @latencyCount(i64 584)
  %8 = load i64* getelementptr inbounds (%struct.network_t* @net, i64 0, i32 7), align 8, !llfi_index !584
  call void @latencyCount(i64 585)
  %9 = icmp eq i64 %8, 0, !llfi_index !585
  br i1 %9, label %bb4, label %bb2, !llfi_index !586

bb2:                                              ; preds = %bb1
  call void @latencyCount(i64 587)
  %10 = tail call i64 @suspend_impl(%struct.network_t* @net, i64 -1, i64 0) nounwind, !llfi_index !587
  call void @latencyCount(i64 588)
  %11 = icmp eq i64 %10, 0, !llfi_index !588
  br i1 %11, label %bb4, label %bb3, !llfi_index !589

bb3:                                              ; preds = %bb2
  call void @latencyCount(i64 590)
  %12 = tail call i32 (i8*, ...)* @printf(i8* noalias getelementptr inbounds ([34 x i8]* @.str36, i64 0, i64 0), i64 %10) nounwind, !llfi_index !590
  br label %bb4, !llfi_index !591

bb4:                                              ; preds = %bb3, %bb2, %bb1
  call void @latencyCount(i64 592)
  %13 = tail call i64 @price_out_impl(%struct.network_t* @net) nounwind, !llfi_index !592
  call void @latencyCount(i64 593)
  %14 = icmp eq i64 %13, 0, !llfi_index !593
  br i1 %14, label %bb8, label %bb6, !llfi_index !594

bb6:                                              ; preds = %bb4
  call void @latencyCount(i64 595)
  %15 = tail call i32 (i8*, ...)* @printf(i8* noalias getelementptr inbounds ([34 x i8]* @.str4, i64 0, i64 0), i64 %13) nounwind, !llfi_index !595
  call void @latencyCount(i64 596)
  %16 = icmp slt i64 %13, 0, !llfi_index !596
  call void @qsPlace(i64 597)
  br i1 %16, label %bb7, label %bb8, !llfi_index !597

bb7:                                              ; preds = %bb6
  call void @latencyCount(i64 598)
  %17 = tail call i32 @puts(i8* getelementptr inbounds ([28 x i8]* @.str5, i64 0, i64 0)) nounwind, !llfi_index !598
  call void @latencyCount(i64 599)
  tail call void @exit(i32 -1) noreturn nounwind, !llfi_index !599
  call void @latencyCount(i64 600)
  unreachable, !llfi_index !600

bb8:                                              ; preds = %bb6, %bb4
  call void @latencyCount(i64 601)
  %phitmp = icmp ne i64 %13, 0, !llfi_index !601
  call void @latencyCount(i64 602)
  %indvar.next = add i64 %indvar, 1, !llfi_index !602
  br label %bb9, !llfi_index !603

bb9:                                              ; preds = %bb8, %entry
  %indvar = phi i64 [ %indvar.next, %bb8 ], [ 0, %entry ], !llfi_index !604
  %new_arcs.0 = phi i1 [ %phitmp, %bb8 ], [ true, %entry ], !llfi_index !605
  call void @qsPlace(i64 606)
  br i1 %new_arcs.0, label %bb, label %bb10, !llfi_index !606

bb10:                                             ; preds = %bb9, %bb
  call void @latencyCount(i64 607)
  %18 = load i64* getelementptr inbounds (%struct.network_t* @net, i64 0, i32 29), align 8, !llfi_index !607
  call void @latencyCount(i64 608)
  %19 = tail call i32 (i8*, ...)* @printf(i8* noalias getelementptr inbounds ([34 x i8]* @.str6, i64 0, i64 0), i64 %18) nounwind, !llfi_index !608
  ret i64 0, !llfi_index !609
}

declare i32 @puts(i8* nocapture) nounwind

declare void @exit(i32) noreturn nounwind

define i32 @main(i32 %argc, i8** nocapture %argv) nounwind {
entry:
  call void @latencyCount(i64 610)
  %0 = icmp slt i32 %argc, 2, !llfi_index !610
  br i1 %0, label %bb6, label %bb1, !llfi_index !611

bb1:                                              ; preds = %entry
  call void @latencyCount(i64 612)
  %1 = tail call i32 @puts(i8* getelementptr inbounds ([31 x i8]* @.str7, i64 0, i64 0)) nounwind, !llfi_index !612
  call void @latencyCount(i64 613)
  %2 = tail call i32 @puts(i8* getelementptr inbounds ([51 x i8]* @.str8, i64 0, i64 0)) nounwind, !llfi_index !613
  call void @latencyCount(i64 614)
  %3 = tail call i32 @puts(i8* getelementptr inbounds ([45 x i8]* @.str9, i64 0, i64 0)) nounwind, !llfi_index !614
  call void @latencyCount(i64 615)
  %4 = tail call i32 @puts(i8* getelementptr inbounds ([39 x i8]* @.str10, i64 0, i64 0)) nounwind, !llfi_index !615
  call void @latencyCount(i64 616)
  %5 = tail call i32 @putchar(i32 10) nounwind, !llfi_index !616
  call void @latencyCount(i64 617)
  tail call void @llvm.memset.p0i8.i64(i8* getelementptr inbounds (%struct.network_t* @net, i64 0, i32 0, i64 0), i8 0, i64 624, i32 32, i1 false), !llfi_index !617
  store i64 10000000, i64* getelementptr inbounds (%struct.network_t* @net, i64 0, i32 18), align 16, !llfi_index !618
  call void @latencyCount(i64 619)
  %6 = getelementptr inbounds i8** %argv, i64 1, !llfi_index !619
  call void @latencyCount(i64 620)
  %7 = load i8** %6, align 1, !llfi_index !620
  call void @latencyCount(i64 621)
  %8 = tail call i8* @strcpy(i8* noalias getelementptr inbounds (%struct.network_t* @net, i64 0, i32 0, i64 0), i8* noalias %7) nounwind, !llfi_index !621
  call void @latencyCount(i64 622)
  %9 = tail call i64 @read_min(%struct.network_t* @net) nounwind, !llfi_index !622
  call void @latencyCount(i64 623)
  %10 = icmp eq i64 %9, 0, !llfi_index !623
  br i1 %10, label %bb3, label %bb2, !llfi_index !624

bb2:                                              ; preds = %bb1
  call void @latencyCount(i64 625)
  %11 = tail call i32 @puts(i8* getelementptr inbounds ([17 x i8]* @.str11, i64 0, i64 0)) nounwind, !llfi_index !625
  call void @latencyCount(i64 626)
  %12 = load %struct.node** getelementptr inbounds (%struct.network_t* @net, i64 0, i32 21), align 8, !llfi_index !626
  call void @latencyCount(i64 627)
  %13 = icmp eq %struct.node* %12, null, !llfi_index !627
  br i1 %13, label %bb1.i, label %bb.i, !llfi_index !628

bb.i:                                             ; preds = %bb2
  call void @latencyCount(i64 629)
  %14 = bitcast %struct.node* %12 to i8*, !llfi_index !629
  call void @latencyCount(i64 630)
  tail call void @free(i8* %14) nounwind, !llfi_index !630
  br label %bb1.i, !llfi_index !631

bb1.i:                                            ; preds = %bb.i, %bb2
  call void @latencyCount(i64 632)
  %15 = load %struct.arc** getelementptr inbounds (%struct.network_t* @net, i64 0, i32 23), align 8, !llfi_index !632
  call void @latencyCount(i64 633)
  %16 = icmp eq %struct.arc* %15, null, !llfi_index !633
  br i1 %16, label %bb3.i, label %bb2.i, !llfi_index !634

bb2.i:                                            ; preds = %bb1.i
  call void @latencyCount(i64 635)
  %17 = bitcast %struct.arc* %15 to i8*, !llfi_index !635
  call void @latencyCount(i64 636)
  tail call void @free(i8* %17) nounwind, !llfi_index !636
  br label %bb3.i, !llfi_index !637

bb3.i:                                            ; preds = %bb2.i, %bb1.i
  call void @latencyCount(i64 638)
  %18 = load %struct.arc** getelementptr inbounds (%struct.network_t* @net, i64 0, i32 25), align 8, !llfi_index !638
  call void @latencyCount(i64 639)
  %19 = icmp eq %struct.arc* %18, null, !llfi_index !639
  br i1 %19, label %getfree.exit, label %bb4.i, !llfi_index !640

bb4.i:                                            ; preds = %bb3.i
  call void @latencyCount(i64 641)
  %20 = bitcast %struct.arc* %18 to i8*, !llfi_index !641
  call void @latencyCount(i64 642)
  tail call void @free(i8* %20) nounwind, !llfi_index !642
  br label %getfree.exit, !llfi_index !643

getfree.exit:                                     ; preds = %bb4.i, %bb3.i
  store %struct.node* null, %struct.node** getelementptr inbounds (%struct.network_t* @net, i64 0, i32 22), align 16, !llfi_index !644
  store %struct.node* null, %struct.node** getelementptr inbounds (%struct.network_t* @net, i64 0, i32 21), align 8, !llfi_index !645
  store %struct.arc* null, %struct.arc** getelementptr inbounds (%struct.network_t* @net, i64 0, i32 24), align 32, !llfi_index !646
  store %struct.arc* null, %struct.arc** getelementptr inbounds (%struct.network_t* @net, i64 0, i32 23), align 8, !llfi_index !647
  store %struct.arc* null, %struct.arc** getelementptr inbounds (%struct.network_t* @net, i64 0, i32 26), align 16, !llfi_index !648
  store %struct.arc* null, %struct.arc** getelementptr inbounds (%struct.network_t* @net, i64 0, i32 25), align 8, !llfi_index !649
  br label %bb6, !llfi_index !650

bb3:                                              ; preds = %bb1
  call void @latencyCount(i64 651)
  %21 = load i64* getelementptr inbounds (%struct.network_t* @net, i64 0, i32 3), align 8, !llfi_index !651
  call void @latencyCount(i64 652)
  %22 = tail call i32 (i8*, ...)* @printf(i8* noalias getelementptr inbounds ([34 x i8]* @.str12, i64 0, i64 0), i64 %21) nounwind, !llfi_index !652
  call void @latencyCount(i64 653)
  %23 = tail call i64 @primal_start_artificial(%struct.network_t* @net) nounwind, !llfi_index !653
  call void @latencyCount(i64 654)
  %24 = tail call i64 @global_opt() nounwind, !llfi_index !654
  call void @latencyCount(i64 655)
  %25 = tail call i32 @puts(i8* getelementptr inbounds ([5 x i8]* @.str13, i64 0, i64 0)) nounwind, !llfi_index !655
  call void @latencyCount(i64 656)
  %26 = tail call i64 @write_circulations(i8* getelementptr inbounds ([8 x i8]* @.str147, i64 0, i64 0), %struct.network_t* @net) nounwind, !llfi_index !656
  call void @latencyCount(i64 657)
  %27 = load %struct.node** getelementptr inbounds (%struct.network_t* @net, i64 0, i32 21), align 8, !llfi_index !657
  call void @latencyCount(i64 658)
  %28 = icmp eq %struct.node* %27, null, !llfi_index !658
  br i1 %28, label %bb1.i2, label %bb.i1, !llfi_index !659

bb.i1:                                            ; preds = %bb3
  call void @latencyCount(i64 660)
  %29 = bitcast %struct.node* %27 to i8*, !llfi_index !660
  call void @latencyCount(i64 661)
  tail call void @free(i8* %29) nounwind, !llfi_index !661
  br label %bb1.i2, !llfi_index !662

bb1.i2:                                           ; preds = %bb.i1, %bb3
  call void @latencyCount(i64 663)
  %30 = load %struct.arc** getelementptr inbounds (%struct.network_t* @net, i64 0, i32 23), align 8, !llfi_index !663
  call void @latencyCount(i64 664)
  %31 = icmp eq %struct.arc* %30, null, !llfi_index !664
  br i1 %31, label %bb3.i4, label %bb2.i3, !llfi_index !665

bb2.i3:                                           ; preds = %bb1.i2
  call void @latencyCount(i64 666)
  %32 = bitcast %struct.arc* %30 to i8*, !llfi_index !666
  call void @latencyCount(i64 667)
  tail call void @free(i8* %32) nounwind, !llfi_index !667
  br label %bb3.i4, !llfi_index !668

bb3.i4:                                           ; preds = %bb2.i3, %bb1.i2
  call void @latencyCount(i64 669)
  %33 = load %struct.arc** getelementptr inbounds (%struct.network_t* @net, i64 0, i32 25), align 8, !llfi_index !669
  call void @latencyCount(i64 670)
  %34 = icmp eq %struct.arc* %33, null, !llfi_index !670
  br i1 %34, label %getfree.exit6, label %bb4.i5, !llfi_index !671

bb4.i5:                                           ; preds = %bb3.i4
  call void @latencyCount(i64 672)
  %35 = bitcast %struct.arc* %33 to i8*, !llfi_index !672
  call void @latencyCount(i64 673)
  tail call void @free(i8* %35) nounwind, !llfi_index !673
  br label %getfree.exit6, !llfi_index !674

getfree.exit6:                                    ; preds = %bb4.i5, %bb3.i4
  store %struct.node* null, %struct.node** getelementptr inbounds (%struct.network_t* @net, i64 0, i32 22), align 16, !llfi_index !675
  store %struct.node* null, %struct.node** getelementptr inbounds (%struct.network_t* @net, i64 0, i32 21), align 8, !llfi_index !676
  store %struct.arc* null, %struct.arc** getelementptr inbounds (%struct.network_t* @net, i64 0, i32 24), align 32, !llfi_index !677
  store %struct.arc* null, %struct.arc** getelementptr inbounds (%struct.network_t* @net, i64 0, i32 23), align 8, !llfi_index !678
  store %struct.arc* null, %struct.arc** getelementptr inbounds (%struct.network_t* @net, i64 0, i32 26), align 16, !llfi_index !679
  store %struct.arc* null, %struct.arc** getelementptr inbounds (%struct.network_t* @net, i64 0, i32 25), align 8, !llfi_index !680
  call void @latencyCount(i64 681)
  %not. = icmp ne i64 %26, 0, !llfi_index !681
  call void @latencyCount(i64 682)
  %. = sext i1 %not. to i32, !llfi_index !682
  br label %bb6, !llfi_index !683

bb6:                                              ; preds = %getfree.exit6, %getfree.exit, %entry
  %.0 = phi i32 [ -1, %getfree.exit ], [ -1, %entry ], [ %., %getfree.exit6 ], !llfi_index !684
  ret i32 %.0, !llfi_index !685
}

declare i32 @putchar(i32) nounwind

declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) nounwind

declare i8* @strcpy(i8* noalias, i8* noalias nocapture) nounwind

define void @refresh_neighbour_lists(%struct.network_t* nocapture %net) nounwind {
entry:
  call void @latencyCount(i64 686)
  %0 = getelementptr inbounds %struct.network_t* %net, i64 0, i32 21, !llfi_index !686
  call void @latencyCount(i64 687)
  %1 = load %struct.node** %0, align 8, !llfi_index !687
  call void @latencyCount(i64 688)
  %2 = getelementptr inbounds %struct.network_t* %net, i64 0, i32 22, !llfi_index !688
  call void @latencyCount(i64 689)
  %3 = load %struct.node** %2, align 8, !llfi_index !689
  call void @latencyCount(i64 690)
  %4 = icmp ult %struct.node* %1, %3, !llfi_index !690
  br i1 %4, label %bb, label %bb2, !llfi_index !691

bb:                                               ; preds = %bb, %entry
  %indvar8 = phi i64 [ %tmp12, %bb ], [ 0, %entry ], !llfi_index !692
  call void @latencyCount(i64 693)
  %scevgep10 = getelementptr %struct.node* %1, i64 %indvar8, i32 8, !llfi_index !693
  call void @latencyCount(i64 694)
  %scevgep11 = getelementptr %struct.node* %1, i64 %indvar8, i32 7, !llfi_index !694
  call void @latencyCount(i64 695)
  %tmp12 = add i64 %indvar8, 1, !llfi_index !695
  call void @latencyCount(i64 696)
  %scevgep13 = getelementptr %struct.node* %1, i64 %tmp12, !llfi_index !696
  store %struct.arc* null, %struct.arc** %scevgep10, align 8, !llfi_index !697
  store %struct.arc* null, %struct.arc** %scevgep11, align 8, !llfi_index !698
  call void @latencyCount(i64 699)
  %5 = icmp ult %struct.node* %scevgep13, %3, !llfi_index !699
  call void @qsPlace(i64 700)
  br i1 %5, label %bb, label %bb2, !llfi_index !700

bb2:                                              ; preds = %bb, %entry
  call void @latencyCount(i64 701)
  %6 = getelementptr inbounds %struct.network_t* %net, i64 0, i32 23, !llfi_index !701
  call void @latencyCount(i64 702)
  %7 = load %struct.arc** %6, align 8, !llfi_index !702
  call void @latencyCount(i64 703)
  %8 = getelementptr inbounds %struct.network_t* %net, i64 0, i32 24, !llfi_index !703
  call void @latencyCount(i64 704)
  %9 = load %struct.arc** %8, align 8, !llfi_index !704
  call void @latencyCount(i64 705)
  %10 = icmp ult %struct.arc* %7, %9, !llfi_index !705
  br i1 %10, label %bb3, label %return, !llfi_index !706

bb3:                                              ; preds = %bb3, %bb2
  %indvar = phi i64 [ %tmp, %bb3 ], [ 0, %bb2 ], !llfi_index !707
  call void @latencyCount(i64 708)
  %scevgep = getelementptr %struct.arc* %7, i64 %indvar, i32 1, !llfi_index !708
  call void @latencyCount(i64 709)
  %scevgep3 = getelementptr %struct.arc* %7, i64 %indvar, i32 4, !llfi_index !709
  call void @latencyCount(i64 710)
  %arc.01 = getelementptr %struct.arc* %7, i64 %indvar, !llfi_index !710
  call void @latencyCount(i64 711)
  %scevgep5 = getelementptr %struct.arc* %7, i64 %indvar, i32 2, !llfi_index !711
  call void @latencyCount(i64 712)
  %scevgep6 = getelementptr %struct.arc* %7, i64 %indvar, i32 5, !llfi_index !712
  call void @latencyCount(i64 713)
  %tmp = add i64 %indvar, 1, !llfi_index !713
  call void @latencyCount(i64 714)
  %scevgep7 = getelementptr %struct.arc* %7, i64 %tmp, !llfi_index !714
  call void @latencyCount(i64 715)
  %11 = load %struct.node** %scevgep, align 8, !llfi_index !715
  call void @latencyCount(i64 716)
  %12 = getelementptr inbounds %struct.node* %11, i64 0, i32 7, !llfi_index !716
  call void @latencyCount(i64 717)
  %13 = load %struct.arc** %12, align 8, !llfi_index !717
  store %struct.arc* %13, %struct.arc** %scevgep3, align 8, !llfi_index !718
  store %struct.arc* %arc.01, %struct.arc** %12, align 8, !llfi_index !719
  call void @latencyCount(i64 720)
  %14 = load %struct.node** %scevgep5, align 8, !llfi_index !720
  call void @latencyCount(i64 721)
  %15 = getelementptr inbounds %struct.node* %14, i64 0, i32 8, !llfi_index !721
  call void @latencyCount(i64 722)
  %16 = load %struct.arc** %15, align 8, !llfi_index !722
  store %struct.arc* %16, %struct.arc** %scevgep6, align 8, !llfi_index !723
  store %struct.arc* %arc.01, %struct.arc** %15, align 8, !llfi_index !724
  call void @latencyCount(i64 725)
  %17 = icmp ult %struct.arc* %scevgep7, %9, !llfi_index !725
  call void @qsPlace(i64 726)
  br i1 %17, label %bb3, label %return, !llfi_index !726

return:                                           ; preds = %bb3, %bb2
  ret void, !llfi_index !727
}

define i64 @refresh_potential(%struct.network_t* nocapture %net) nounwind {
entry:
  call void @latencyCount(i64 728)
  %0 = getelementptr inbounds %struct.network_t* %net, i64 0, i32 21, !llfi_index !728
  call void @latencyCount(i64 729)
  %1 = load %struct.node** %0, align 8, !llfi_index !729
  call void @latencyCount(i64 730)
  %2 = getelementptr inbounds %struct.node* %1, i64 0, i32 0, !llfi_index !730
  store i64 -100000000, i64* %2, align 8, !llfi_index !731
  call void @latencyCount(i64 732)
  %3 = getelementptr inbounds %struct.node* %1, i64 0, i32 2, !llfi_index !732
  call void @latencyCount(i64 733)
  %4 = load %struct.node** %3, align 8, !llfi_index !733
  call void @latencyCount(i64 734)
  %5 = icmp eq %struct.node* %4, %1, !llfi_index !734
  br i1 %5, label %bb12, label %bb5.preheader, !llfi_index !735

bb1:                                              ; preds = %bb5.preheader, %bb4
  %checksum.12 = phi i64 [ %checksum.0, %bb4 ], [ %checksum.26, %bb5.preheader ], !llfi_index !736
  %node.01 = phi %struct.node* [ %31, %bb4 ], [ %node.24, %bb5.preheader ], !llfi_index !737
  call void @latencyCount(i64 738)
  %6 = getelementptr inbounds %struct.node* %node.01, i64 0, i32 1, !llfi_index !738
  call void @latencyCount(i64 739)
  %7 = load i32* %6, align 8, !llfi_index !739
  call void @latencyCount(i64 740)
  %8 = icmp eq i32 %7, 1, !llfi_index !740
  br i1 %8, label %bb2, label %bb3, !llfi_index !741

bb2:                                              ; preds = %bb1
  call void @latencyCount(i64 742)
  %9 = getelementptr inbounds %struct.node* %node.01, i64 0, i32 6, !llfi_index !742
  call void @latencyCount(i64 743)
  %10 = load %struct.arc** %9, align 8, !llfi_index !743
  call void @latencyCount(i64 744)
  %11 = getelementptr inbounds %struct.arc* %10, i64 0, i32 0, !llfi_index !744
  call void @latencyCount(i64 745)
  %12 = load i64* %11, align 8, !llfi_index !745
  call void @latencyCount(i64 746)
  %13 = getelementptr inbounds %struct.node* %node.01, i64 0, i32 3, !llfi_index !746
  call void @latencyCount(i64 747)
  %14 = load %struct.node** %13, align 8, !llfi_index !747
  call void @latencyCount(i64 748)
  %15 = getelementptr inbounds %struct.node* %14, i64 0, i32 0, !llfi_index !748
  call void @latencyCount(i64 749)
  %16 = load i64* %15, align 8, !llfi_index !749
  call void @latencyCount(i64 750)
  %17 = add nsw i64 %16, %12, !llfi_index !750
  call void @latencyCount(i64 751)
  %18 = getelementptr inbounds %struct.node* %node.01, i64 0, i32 0, !llfi_index !751
  store i64 %17, i64* %18, align 8, !llfi_index !752
  br label %bb4, !llfi_index !753

bb3:                                              ; preds = %bb1
  call void @latencyCount(i64 754)
  %19 = getelementptr inbounds %struct.node* %node.01, i64 0, i32 3, !llfi_index !754
  call void @latencyCount(i64 755)
  %20 = load %struct.node** %19, align 8, !llfi_index !755
  call void @latencyCount(i64 756)
  %21 = getelementptr inbounds %struct.node* %20, i64 0, i32 0, !llfi_index !756
  call void @latencyCount(i64 757)
  %22 = load i64* %21, align 8, !llfi_index !757
  call void @latencyCount(i64 758)
  %23 = getelementptr inbounds %struct.node* %node.01, i64 0, i32 6, !llfi_index !758
  call void @latencyCount(i64 759)
  %24 = load %struct.arc** %23, align 8, !llfi_index !759
  call void @latencyCount(i64 760)
  %25 = getelementptr inbounds %struct.arc* %24, i64 0, i32 0, !llfi_index !760
  call void @latencyCount(i64 761)
  %26 = load i64* %25, align 8, !llfi_index !761
  call void @latencyCount(i64 762)
  %27 = sub nsw i64 %22, %26, !llfi_index !762
  call void @latencyCount(i64 763)
  %28 = getelementptr inbounds %struct.node* %node.01, i64 0, i32 0, !llfi_index !763
  store i64 %27, i64* %28, align 8, !llfi_index !764
  call void @latencyCount(i64 765)
  %29 = add nsw i64 %checksum.12, 1, !llfi_index !765
  br label %bb4, !llfi_index !766

bb4:                                              ; preds = %bb3, %bb2
  %checksum.0 = phi i64 [ %checksum.12, %bb2 ], [ %29, %bb3 ], !llfi_index !767
  call void @latencyCount(i64 768)
  %30 = getelementptr inbounds %struct.node* %node.01, i64 0, i32 2, !llfi_index !768
  call void @latencyCount(i64 769)
  %31 = load %struct.node** %30, align 8, !llfi_index !769
  call void @latencyCount(i64 770)
  %32 = icmp eq %struct.node* %31, null, !llfi_index !770
  call void @qsPlace(i64 771)
  br i1 %32, label %bb10.loopexit, label %bb1, !llfi_index !771

bb7:                                              ; preds = %bb10
  call void @latencyCount(i64 772)
  %33 = getelementptr inbounds %struct.node* %node.1, i64 0, i32 4, !llfi_index !772
  call void @latencyCount(i64 773)
  %34 = load %struct.node** %33, align 8, !llfi_index !773
  call void @latencyCount(i64 774)
  %35 = icmp eq %struct.node* %34, null, !llfi_index !774
  call void @qsPlace(i64 775)
  br i1 %35, label %bb10, label %bb11.loopexit, !llfi_index !775

bb10.loopexit:                                    ; preds = %bb5.preheader, %bb4
  %checksum.1.lcssa = phi i64 [ %checksum.26, %bb5.preheader ], [ %checksum.0, %bb4 ], !llfi_index !776
  %tmp.0.lcssa = phi %struct.node* [ %tmp.25, %bb5.preheader ], [ %node.01, %bb4 ], !llfi_index !777
  br label %bb10, !llfi_index !778

bb10:                                             ; preds = %bb10.loopexit, %bb7
  %node.1 = phi %struct.node* [ %37, %bb7 ], [ %tmp.0.lcssa, %bb10.loopexit ], !llfi_index !779
  %tmp.1 = phi %struct.node* [ null, %bb7 ], [ %tmp.0.lcssa, %bb10.loopexit ], !llfi_index !780
  call void @latencyCount(i64 781)
  %36 = getelementptr inbounds %struct.node* %node.1, i64 0, i32 3, !llfi_index !781
  call void @latencyCount(i64 782)
  %37 = load %struct.node** %36, align 8, !llfi_index !782
  call void @latencyCount(i64 783)
  %38 = icmp eq %struct.node* %37, null, !llfi_index !783
  call void @qsPlace(i64 784)
  br i1 %38, label %bb11.loopexit, label %bb7, !llfi_index !784

bb11.loopexit:                                    ; preds = %bb10, %bb7
  %node.2.ph = phi %struct.node* [ %34, %bb7 ], [ %node.1, %bb10 ], !llfi_index !785
  %tmp.2.ph = phi %struct.node* [ %34, %bb7 ], [ %tmp.1, %bb10 ], !llfi_index !786
  call void @latencyCount(i64 787)
  %39 = icmp eq %struct.node* %node.2.ph, %1, !llfi_index !787
  call void @qsPlace(i64 788)
  br i1 %39, label %bb12, label %bb5.preheader, !llfi_index !788

bb5.preheader:                                    ; preds = %bb11.loopexit, %entry
  %checksum.26 = phi i64 [ %checksum.1.lcssa, %bb11.loopexit ], [ 0, %entry ], !llfi_index !789
  %tmp.25 = phi %struct.node* [ %tmp.2.ph, %bb11.loopexit ], [ %4, %entry ], !llfi_index !790
  %node.24 = phi %struct.node* [ %node.2.ph, %bb11.loopexit ], [ %4, %entry ], !llfi_index !791
  call void @latencyCount(i64 792)
  %40 = icmp eq %struct.node* %node.24, null, !llfi_index !792
  br i1 %40, label %bb10.loopexit, label %bb1, !llfi_index !793

bb12:                                             ; preds = %bb11.loopexit, %entry
  %checksum.2.lcssa = phi i64 [ 0, %entry ], [ %checksum.1.lcssa, %bb11.loopexit ], !llfi_index !794
  ret i64 %checksum.2.lcssa, !llfi_index !795
}

define double @flow_cost(%struct.network_t* nocapture %net) nounwind {
entry:
  call void @latencyCount(i64 796)
  %0 = getelementptr inbounds %struct.network_t* %net, i64 0, i32 24, !llfi_index !796
  call void @latencyCount(i64 797)
  %1 = load %struct.arc** %0, align 8, !llfi_index !797
  call void @latencyCount(i64 798)
  %2 = getelementptr inbounds %struct.network_t* %net, i64 0, i32 23, !llfi_index !798
  call void @latencyCount(i64 799)
  %3 = load %struct.arc** %2, align 8, !llfi_index !799
  call void @latencyCount(i64 800)
  %4 = icmp eq %struct.arc* %3, %1, !llfi_index !800
  br i1 %4, label %bb5, label %bb, !llfi_index !801

bb:                                               ; preds = %bb, %entry
  %indvar21 = phi i64 [ %tmp25, %bb ], [ 0, %entry ], !llfi_index !802
  call void @latencyCount(i64 803)
  %scevgep23 = getelementptr %struct.arc* %3, i64 %indvar21, i32 3, !llfi_index !803
  call void @latencyCount(i64 804)
  %scevgep24 = getelementptr %struct.arc* %3, i64 %indvar21, i32 6, !llfi_index !804
  call void @latencyCount(i64 805)
  %tmp25 = add i64 %indvar21, 1, !llfi_index !805
  call void @latencyCount(i64 806)
  %scevgep26 = getelementptr %struct.arc* %3, i64 %tmp25, !llfi_index !806
  call void @latencyCount(i64 807)
  %5 = load i32* %scevgep23, align 8, !llfi_index !807
  call void @latencyCount(i64 808)
  %6 = icmp eq i32 %5, 2, !llfi_index !808
  call void @latencyCount(i64 809)
  %. = zext i1 %6 to i64, !llfi_index !809
  store i64 %., i64* %scevgep24, align 8, !llfi_index !810
  call void @latencyCount(i64 811)
  %7 = icmp eq %struct.arc* %scevgep26, %1, !llfi_index !811
  call void @qsPlace(i64 812)
  br i1 %7, label %bb5, label %bb, !llfi_index !812

bb5:                                              ; preds = %bb, %entry
  call void @latencyCount(i64 813)
  %8 = getelementptr inbounds %struct.network_t* %net, i64 0, i32 22, !llfi_index !813
  call void @latencyCount(i64 814)
  %9 = load %struct.node** %8, align 8, !llfi_index !814
  call void @latencyCount(i64 815)
  %10 = getelementptr inbounds %struct.network_t* %net, i64 0, i32 21, !llfi_index !815
  call void @latencyCount(i64 816)
  %11 = load %struct.node** %10, align 8, !llfi_index !816
  call void @latencyCount(i64 817)
  %node.05 = getelementptr inbounds %struct.node* %11, i64 1, !llfi_index !817
  call void @latencyCount(i64 818)
  %12 = icmp eq %struct.node* %node.05, %9, !llfi_index !818
  br i1 %12, label %bb8, label %bb6, !llfi_index !819

bb6:                                              ; preds = %bb6, %bb5
  %indvar14 = phi i64 [ %tmp18, %bb6 ], [ 0, %bb5 ], !llfi_index !820
  call void @latencyCount(i64 821)
  %tmp16 = add i64 %indvar14, 2, !llfi_index !821
  call void @latencyCount(i64 822)
  %node.0 = getelementptr %struct.node* %11, i64 %tmp16, !llfi_index !822
  call void @latencyCount(i64 823)
  %tmp18 = add i64 %indvar14, 1, !llfi_index !823
  call void @latencyCount(i64 824)
  %scevgep19 = getelementptr %struct.node* %11, i64 %tmp18, i32 6, !llfi_index !824
  call void @latencyCount(i64 825)
  %scevgep20 = getelementptr %struct.node* %11, i64 %tmp18, i32 10, !llfi_index !825
  call void @latencyCount(i64 826)
  %13 = load %struct.arc** %scevgep19, align 8, !llfi_index !826
  call void @latencyCount(i64 827)
  %14 = load i64* %scevgep20, align 8, !llfi_index !827
  call void @latencyCount(i64 828)
  %15 = getelementptr inbounds %struct.arc* %13, i64 0, i32 6, !llfi_index !828
  store i64 %14, i64* %15, align 8, !llfi_index !829
  call void @latencyCount(i64 830)
  %16 = icmp eq %struct.node* %node.0, %9, !llfi_index !830
  call void @qsPlace(i64 831)
  br i1 %16, label %bb8, label %bb6, !llfi_index !831

bb8:                                              ; preds = %bb6, %bb5
  call void @latencyCount(i64 832)
  %17 = load %struct.arc** %0, align 8, !llfi_index !832
  call void @latencyCount(i64 833)
  %18 = load %struct.arc** %2, align 8, !llfi_index !833
  call void @latencyCount(i64 834)
  %19 = icmp eq %struct.arc* %18, %17, !llfi_index !834
  call void @latencyCount(i64 835)
  %.pre = getelementptr inbounds %struct.network_t* %net, i64 0, i32 18, !llfi_index !835
  br i1 %19, label %bb17, label %bb9, !llfi_index !836

bb9:                                              ; preds = %bb15, %bb8
  %indvar = phi i64 [ %tmp, %bb15 ], [ 0, %bb8 ], !llfi_index !837
  %operational_cost.13 = phi i64 [ %operational_cost.0, %bb15 ], [ 0, %bb8 ], !llfi_index !838
  %fleet.12 = phi i64 [ %fleet.0, %bb15 ], [ 0, %bb8 ], !llfi_index !839
  call void @latencyCount(i64 840)
  %scevgep = getelementptr %struct.arc* %18, i64 %indvar, i32 6, !llfi_index !840
  call void @latencyCount(i64 841)
  %scevgep1011 = getelementptr inbounds %struct.arc* %18, i64 %indvar, i32 0, !llfi_index !841
  call void @latencyCount(i64 842)
  %tmp = add i64 %indvar, 1, !llfi_index !842
  call void @latencyCount(i64 843)
  %scevgep12 = getelementptr %struct.arc* %18, i64 %tmp, !llfi_index !843
  call void @latencyCount(i64 844)
  %scevgep13 = getelementptr %struct.arc* %18, i64 %indvar, i32 2, !llfi_index !844
  call void @latencyCount(i64 845)
  %20 = load i64* %scevgep, align 8, !llfi_index !845
  call void @latencyCount(i64 846)
  %21 = icmp eq i64 %20, 0, !llfi_index !846
  br i1 %21, label %bb15, label %bb10, !llfi_index !847

bb10:                                             ; preds = %bb9
  call void @latencyCount(i64 848)
  %scevgep9 = getelementptr %struct.arc* %18, i64 %indvar, i32 1, !llfi_index !848
  call void @latencyCount(i64 849)
  %22 = load %struct.node** %scevgep9, align 8, !llfi_index !849
  call void @latencyCount(i64 850)
  %23 = getelementptr inbounds %struct.node* %22, i64 0, i32 12, !llfi_index !850
  call void @latencyCount(i64 851)
  %24 = load i32* %23, align 8, !llfi_index !851
  call void @latencyCount(i64 852)
  %25 = icmp sgt i32 %24, -1, !llfi_index !852
  br i1 %25, label %bb12, label %bb11, !llfi_index !853

bb11:                                             ; preds = %bb10
  call void @latencyCount(i64 854)
  %26 = load %struct.node** %scevgep13, align 8, !llfi_index !854
  call void @latencyCount(i64 855)
  %27 = getelementptr inbounds %struct.node* %26, i64 0, i32 12, !llfi_index !855
  call void @latencyCount(i64 856)
  %28 = load i32* %27, align 8, !llfi_index !856
  call void @latencyCount(i64 857)
  %29 = icmp slt i32 %28, 1, !llfi_index !857
  br i1 %29, label %bb12.thread, label %bb15, !llfi_index !858

bb12.thread:                                      ; preds = %bb11
  call void @latencyCount(i64 859)
  %30 = load i64* %scevgep1011, align 8, !llfi_index !859
  br label %bb14, !llfi_index !860

bb12:                                             ; preds = %bb10
  call void @latencyCount(i64 861)
  %31 = icmp eq i32 %24, 0, !llfi_index !861
  call void @latencyCount(i64 862)
  %32 = load i64* %scevgep1011, align 8, !llfi_index !862
  br i1 %31, label %bb13, label %bb14, !llfi_index !863

bb13:                                             ; preds = %bb12
  call void @latencyCount(i64 864)
  %33 = load i64* %.pre, align 8, !llfi_index !864
  call void @latencyCount(i64 865)
  %34 = add i64 %32, %operational_cost.13, !llfi_index !865
  call void @latencyCount(i64 866)
  %35 = sub i64 %34, %33, !llfi_index !866
  call void @latencyCount(i64 867)
  %36 = add nsw i64 %fleet.12, 1, !llfi_index !867
  br label %bb15, !llfi_index !868

bb14:                                             ; preds = %bb12, %bb12.thread
  %37 = phi i64 [ %30, %bb12.thread ], [ %32, %bb12 ], !llfi_index !869
  call void @latencyCount(i64 870)
  %38 = add nsw i64 %37, %operational_cost.13, !llfi_index !870
  br label %bb15, !llfi_index !871

bb15:                                             ; preds = %bb14, %bb13, %bb11, %bb9
  %fleet.0 = phi i64 [ %36, %bb13 ], [ %fleet.12, %bb14 ], [ %fleet.12, %bb11 ], [ %fleet.12, %bb9 ], !llfi_index !872
  %operational_cost.0 = phi i64 [ %35, %bb13 ], [ %38, %bb14 ], [ %operational_cost.13, %bb11 ], [ %operational_cost.13, %bb9 ], !llfi_index !873
  call void @latencyCount(i64 874)
  %39 = icmp eq %struct.arc* %scevgep12, %17, !llfi_index !874
  call void @qsPlace(i64 875)
  br i1 %39, label %bb17, label %bb9, !llfi_index !875

bb17:                                             ; preds = %bb15, %bb8
  %.pre-phi = phi i64* [ %.pre, %bb15 ], [ %.pre, %bb8 ], !llfi_index !876
  %operational_cost.1.lcssa = phi i64 [ %operational_cost.0, %bb15 ], [ 0, %bb8 ], !llfi_index !877
  %fleet.1.lcssa = phi i64 [ %fleet.0, %bb15 ], [ 0, %bb8 ], !llfi_index !878
  call void @latencyCount(i64 879)
  %40 = sitofp i64 %fleet.1.lcssa to double, !llfi_index !879
  call void @latencyCount(i64 880)
  %41 = load i64* %.pre-phi, align 8, !llfi_index !880
  call void @latencyCount(i64 881)
  %42 = sitofp i64 %41 to double, !llfi_index !881
  call void @latencyCount(i64 882)
  %43 = fmul double %40, %42, !llfi_index !882
  call void @latencyCount(i64 883)
  %44 = sitofp i64 %operational_cost.1.lcssa to double, !llfi_index !883
  call void @latencyCount(i64 884)
  %45 = fadd double %43, %44, !llfi_index !884
  ret double %45, !llfi_index !885
}

define double @flow_org_cost(%struct.network_t* nocapture %net) nounwind {
entry:
  call void @latencyCount(i64 886)
  %0 = getelementptr inbounds %struct.network_t* %net, i64 0, i32 24, !llfi_index !886
  call void @latencyCount(i64 887)
  %1 = load %struct.arc** %0, align 8, !llfi_index !887
  call void @latencyCount(i64 888)
  %2 = getelementptr inbounds %struct.network_t* %net, i64 0, i32 23, !llfi_index !888
  call void @latencyCount(i64 889)
  %3 = load %struct.arc** %2, align 8, !llfi_index !889
  call void @latencyCount(i64 890)
  %4 = icmp eq %struct.arc* %3, %1, !llfi_index !890
  br i1 %4, label %bb5, label %bb, !llfi_index !891

bb:                                               ; preds = %bb, %entry
  %indvar20 = phi i64 [ %tmp24, %bb ], [ 0, %entry ], !llfi_index !892
  call void @latencyCount(i64 893)
  %scevgep22 = getelementptr %struct.arc* %3, i64 %indvar20, i32 3, !llfi_index !893
  call void @latencyCount(i64 894)
  %scevgep23 = getelementptr %struct.arc* %3, i64 %indvar20, i32 6, !llfi_index !894
  call void @latencyCount(i64 895)
  %tmp24 = add i64 %indvar20, 1, !llfi_index !895
  call void @latencyCount(i64 896)
  %scevgep25 = getelementptr %struct.arc* %3, i64 %tmp24, !llfi_index !896
  call void @latencyCount(i64 897)
  %5 = load i32* %scevgep22, align 8, !llfi_index !897
  call void @latencyCount(i64 898)
  %6 = icmp eq i32 %5, 2, !llfi_index !898
  call void @latencyCount(i64 899)
  %. = zext i1 %6 to i64, !llfi_index !899
  store i64 %., i64* %scevgep23, align 8, !llfi_index !900
  call void @latencyCount(i64 901)
  %7 = icmp eq %struct.arc* %scevgep25, %1, !llfi_index !901
  call void @qsPlace(i64 902)
  br i1 %7, label %bb5, label %bb, !llfi_index !902

bb5:                                              ; preds = %bb, %entry
  call void @latencyCount(i64 903)
  %8 = getelementptr inbounds %struct.network_t* %net, i64 0, i32 22, !llfi_index !903
  call void @latencyCount(i64 904)
  %9 = load %struct.node** %8, align 8, !llfi_index !904
  call void @latencyCount(i64 905)
  %10 = getelementptr inbounds %struct.network_t* %net, i64 0, i32 21, !llfi_index !905
  call void @latencyCount(i64 906)
  %11 = load %struct.node** %10, align 8, !llfi_index !906
  call void @latencyCount(i64 907)
  %node.05 = getelementptr inbounds %struct.node* %11, i64 1, !llfi_index !907
  call void @latencyCount(i64 908)
  %12 = icmp eq %struct.node* %node.05, %9, !llfi_index !908
  br i1 %12, label %bb8, label %bb6, !llfi_index !909

bb6:                                              ; preds = %bb6, %bb5
  %indvar13 = phi i64 [ %tmp17, %bb6 ], [ 0, %bb5 ], !llfi_index !910
  call void @latencyCount(i64 911)
  %tmp15 = add i64 %indvar13, 2, !llfi_index !911
  call void @latencyCount(i64 912)
  %node.0 = getelementptr %struct.node* %11, i64 %tmp15, !llfi_index !912
  call void @latencyCount(i64 913)
  %tmp17 = add i64 %indvar13, 1, !llfi_index !913
  call void @latencyCount(i64 914)
  %scevgep18 = getelementptr %struct.node* %11, i64 %tmp17, i32 6, !llfi_index !914
  call void @latencyCount(i64 915)
  %scevgep19 = getelementptr %struct.node* %11, i64 %tmp17, i32 10, !llfi_index !915
  call void @latencyCount(i64 916)
  %13 = load %struct.arc** %scevgep18, align 8, !llfi_index !916
  call void @latencyCount(i64 917)
  %14 = load i64* %scevgep19, align 8, !llfi_index !917
  call void @latencyCount(i64 918)
  %15 = getelementptr inbounds %struct.arc* %13, i64 0, i32 6, !llfi_index !918
  store i64 %14, i64* %15, align 8, !llfi_index !919
  call void @latencyCount(i64 920)
  %16 = icmp eq %struct.node* %node.0, %9, !llfi_index !920
  call void @qsPlace(i64 921)
  br i1 %16, label %bb8, label %bb6, !llfi_index !921

bb8:                                              ; preds = %bb6, %bb5
  call void @latencyCount(i64 922)
  %17 = load %struct.arc** %0, align 8, !llfi_index !922
  call void @latencyCount(i64 923)
  %18 = load %struct.arc** %2, align 8, !llfi_index !923
  call void @latencyCount(i64 924)
  %19 = icmp eq %struct.arc* %18, %17, !llfi_index !924
  call void @latencyCount(i64 925)
  %.pre = getelementptr inbounds %struct.network_t* %net, i64 0, i32 18, !llfi_index !925
  br i1 %19, label %bb17, label %bb9, !llfi_index !926

bb9:                                              ; preds = %bb15, %bb8
  %indvar = phi i64 [ %tmp, %bb15 ], [ 0, %bb8 ], !llfi_index !927
  %operational_cost.13 = phi i64 [ %operational_cost.0, %bb15 ], [ 0, %bb8 ], !llfi_index !928
  %fleet.12 = phi i64 [ %fleet.0, %bb15 ], [ 0, %bb8 ], !llfi_index !929
  call void @latencyCount(i64 930)
  %scevgep = getelementptr %struct.arc* %18, i64 %indvar, i32 6, !llfi_index !930
  call void @latencyCount(i64 931)
  %scevgep10 = getelementptr %struct.arc* %18, i64 %indvar, i32 7, !llfi_index !931
  call void @latencyCount(i64 932)
  %tmp = add i64 %indvar, 1, !llfi_index !932
  call void @latencyCount(i64 933)
  %scevgep11 = getelementptr %struct.arc* %18, i64 %tmp, !llfi_index !933
  call void @latencyCount(i64 934)
  %scevgep12 = getelementptr %struct.arc* %18, i64 %indvar, i32 2, !llfi_index !934
  call void @latencyCount(i64 935)
  %20 = load i64* %scevgep, align 8, !llfi_index !935
  call void @latencyCount(i64 936)
  %21 = icmp eq i64 %20, 0, !llfi_index !936
  br i1 %21, label %bb15, label %bb10, !llfi_index !937

bb10:                                             ; preds = %bb9
  call void @latencyCount(i64 938)
  %scevgep9 = getelementptr %struct.arc* %18, i64 %indvar, i32 1, !llfi_index !938
  call void @latencyCount(i64 939)
  %22 = load %struct.node** %scevgep9, align 8, !llfi_index !939
  call void @latencyCount(i64 940)
  %23 = getelementptr inbounds %struct.node* %22, i64 0, i32 12, !llfi_index !940
  call void @latencyCount(i64 941)
  %24 = load i32* %23, align 8, !llfi_index !941
  call void @latencyCount(i64 942)
  %25 = icmp sgt i32 %24, -1, !llfi_index !942
  br i1 %25, label %bb12, label %bb11, !llfi_index !943

bb11:                                             ; preds = %bb10
  call void @latencyCount(i64 944)
  %26 = load %struct.node** %scevgep12, align 8, !llfi_index !944
  call void @latencyCount(i64 945)
  %27 = getelementptr inbounds %struct.node* %26, i64 0, i32 12, !llfi_index !945
  call void @latencyCount(i64 946)
  %28 = load i32* %27, align 8, !llfi_index !946
  call void @latencyCount(i64 947)
  %29 = icmp slt i32 %28, 1, !llfi_index !947
  br i1 %29, label %bb12.thread, label %bb15, !llfi_index !948

bb12.thread:                                      ; preds = %bb11
  call void @latencyCount(i64 949)
  %30 = load i64* %scevgep10, align 8, !llfi_index !949
  br label %bb14, !llfi_index !950

bb12:                                             ; preds = %bb10
  call void @latencyCount(i64 951)
  %31 = icmp eq i32 %24, 0, !llfi_index !951
  call void @latencyCount(i64 952)
  %32 = load i64* %scevgep10, align 8, !llfi_index !952
  br i1 %31, label %bb13, label %bb14, !llfi_index !953

bb13:                                             ; preds = %bb12
  call void @latencyCount(i64 954)
  %33 = load i64* %.pre, align 8, !llfi_index !954
  call void @latencyCount(i64 955)
  %34 = add i64 %32, %operational_cost.13, !llfi_index !955
  call void @latencyCount(i64 956)
  %35 = sub i64 %34, %33, !llfi_index !956
  call void @latencyCount(i64 957)
  %36 = add nsw i64 %fleet.12, 1, !llfi_index !957
  br label %bb15, !llfi_index !958

bb14:                                             ; preds = %bb12, %bb12.thread
  %37 = phi i64 [ %30, %bb12.thread ], [ %32, %bb12 ], !llfi_index !959
  call void @latencyCount(i64 960)
  %38 = add nsw i64 %37, %operational_cost.13, !llfi_index !960
  br label %bb15, !llfi_index !961

bb15:                                             ; preds = %bb14, %bb13, %bb11, %bb9
  %fleet.0 = phi i64 [ %36, %bb13 ], [ %fleet.12, %bb14 ], [ %fleet.12, %bb11 ], [ %fleet.12, %bb9 ], !llfi_index !962
  %operational_cost.0 = phi i64 [ %35, %bb13 ], [ %38, %bb14 ], [ %operational_cost.13, %bb11 ], [ %operational_cost.13, %bb9 ], !llfi_index !963
  call void @latencyCount(i64 964)
  %39 = icmp eq %struct.arc* %scevgep11, %17, !llfi_index !964
  call void @qsPlace(i64 965)
  br i1 %39, label %bb17, label %bb9, !llfi_index !965

bb17:                                             ; preds = %bb15, %bb8
  %.pre-phi = phi i64* [ %.pre, %bb15 ], [ %.pre, %bb8 ], !llfi_index !966
  %operational_cost.1.lcssa = phi i64 [ %operational_cost.0, %bb15 ], [ 0, %bb8 ], !llfi_index !967
  %fleet.1.lcssa = phi i64 [ %fleet.0, %bb15 ], [ 0, %bb8 ], !llfi_index !968
  call void @latencyCount(i64 969)
  %40 = sitofp i64 %fleet.1.lcssa to double, !llfi_index !969
  call void @latencyCount(i64 970)
  %41 = load i64* %.pre-phi, align 8, !llfi_index !970
  call void @latencyCount(i64 971)
  %42 = sitofp i64 %41 to double, !llfi_index !971
  call void @latencyCount(i64 972)
  %43 = fmul double %40, %42, !llfi_index !972
  call void @latencyCount(i64 973)
  %44 = sitofp i64 %operational_cost.1.lcssa to double, !llfi_index !973
  call void @latencyCount(i64 974)
  %45 = fadd double %43, %44, !llfi_index !974
  ret double %45, !llfi_index !975
}

define i64 @primal_feasible(%struct.network_t* nocapture %net) nounwind {
entry:
  call void @latencyCount(i64 976)
  %0 = getelementptr inbounds %struct.network_t* %net, i64 0, i32 25, !llfi_index !976
  call void @latencyCount(i64 977)
  %1 = load %struct.arc** %0, align 8, !llfi_index !977
  call void @latencyCount(i64 978)
  %2 = getelementptr inbounds %struct.network_t* %net, i64 0, i32 26, !llfi_index !978
  call void @latencyCount(i64 979)
  %3 = load %struct.arc** %2, align 8, !llfi_index !979
  call void @latencyCount(i64 980)
  %4 = getelementptr inbounds %struct.network_t* %net, i64 0, i32 21, !llfi_index !980
  call void @latencyCount(i64 981)
  %5 = load %struct.node** %4, align 8, !llfi_index !981
  call void @latencyCount(i64 982)
  %6 = getelementptr inbounds %struct.network_t* %net, i64 0, i32 22, !llfi_index !982
  call void @latencyCount(i64 983)
  %7 = load %struct.node** %6, align 8, !llfi_index !983
  call void @latencyCount(i64 984)
  %8 = getelementptr inbounds %struct.network_t* %net, i64 0, i32 16, !llfi_index !984
  br label %bb10, !llfi_index !985

bb:                                               ; preds = %bb10
  call void @latencyCount(i64 986)
  %scevgep4 = getelementptr %struct.node* %5, i64 %indvar, i32 6, !llfi_index !986
  call void @latencyCount(i64 987)
  %scevgep3 = getelementptr %struct.node* %5, i64 %indvar, i32 10, !llfi_index !987
  call void @latencyCount(i64 988)
  %9 = load %struct.arc** %scevgep4, align 8, !llfi_index !988
  call void @latencyCount(i64 989)
  %10 = load i64* %scevgep3, align 8, !llfi_index !989
  call void @latencyCount(i64 990)
  %11 = icmp uge %struct.arc* %9, %1, !llfi_index !990
  call void @latencyCount(i64 991)
  %12 = icmp ult %struct.arc* %9, %3, !llfi_index !991
  call void @latencyCount(i64 992)
  %or.cond = and i1 %11, %12, !llfi_index !992
  br i1 %or.cond, label %bb2, label %bb6, !llfi_index !993

bb2:                                              ; preds = %bb
  call void @latencyCount(i64 994)
  %neg = sub i64 0, %10, !llfi_index !994
  call void @latencyCount(i64 995)
  %abscond = icmp sgt i64 %10, -1, !llfi_index !995
  call void @latencyCount(i64 996)
  %abs = select i1 %abscond, i64 %10, i64 %neg, !llfi_index !996
  call void @latencyCount(i64 997)
  %13 = load i64* %8, align 8, !llfi_index !997
  call void @latencyCount(i64 998)
  %14 = icmp sgt i64 %abs, %13, !llfi_index !998
  br i1 %14, label %bb4, label %bb10.backedge, !llfi_index !999

bb4:                                              ; preds = %bb2
  call void @latencyCount(i64 1000)
  %15 = tail call i32 (i8*, ...)* @printf(i8* noalias getelementptr inbounds ([25 x i8]* @.str15, i64 0, i64 0)) nounwind, !llfi_index !1000
  call void @latencyCount(i64 1001)
  %16 = load i32* %scevgep, align 8, !llfi_index !1001
  call void @latencyCount(i64 1002)
  %17 = tail call i32 (i8*, ...)* @printf(i8* noalias getelementptr inbounds ([49 x i8]* @.str116, i64 0, i64 0), i32 %16, i64 %10) nounwind, !llfi_index !1002
  br label %bb10.backedge, !llfi_index !1003

bb6:                                              ; preds = %bb
  call void @latencyCount(i64 1004)
  %18 = load i64* %8, align 8, !llfi_index !1004
  call void @latencyCount(i64 1005)
  %19 = sub nsw i64 0, %18, !llfi_index !1005
  call void @latencyCount(i64 1006)
  %20 = icmp slt i64 %10, %19, !llfi_index !1006
  call void @latencyCount(i64 1007)
  %21 = add nsw i64 %10, -1, !llfi_index !1007
  call void @latencyCount(i64 1008)
  %22 = icmp sgt i64 %21, %18, !llfi_index !1008
  call void @latencyCount(i64 1009)
  %or.cond2 = or i1 %20, %22, !llfi_index !1009
  call void @qsPlace(i64 1010)
  br i1 %or.cond2, label %bb8, label %bb10.backedge, !llfi_index !1010

bb10.backedge:                                    ; preds = %bb6, %bb4, %bb2
  call void @latencyCount(i64 1011)
  %phitmp = add i64 %indvar, 1, !llfi_index !1011
  br label %bb10, !llfi_index !1012

bb8:                                              ; preds = %bb6
  call void @latencyCount(i64 1013)
  %23 = tail call i32 (i8*, ...)* @printf(i8* noalias getelementptr inbounds ([25 x i8]* @.str15, i64 0, i64 0)) nounwind, !llfi_index !1013
  call void @latencyCount(i64 1014)
  %24 = tail call i32 (i8*, ...)* @printf(i8* noalias getelementptr inbounds ([31 x i8]* @.str217, i64 0, i64 0), i64 %10) nounwind, !llfi_index !1014
  call void @latencyCount(i64 1015)
  %25 = getelementptr inbounds %struct.network_t* %net, i64 0, i32 13, !llfi_index !1015
  store i64 0, i64* %25, align 8, !llfi_index !1016
  br label %bb12, !llfi_index !1017

bb10:                                             ; preds = %bb10.backedge, %entry
  %indvar = phi i64 [ %phitmp, %bb10.backedge ], [ 1, %entry ], !llfi_index !1018
  call void @latencyCount(i64 1019)
  %scevgep = getelementptr %struct.node* %5, i64 %indvar, i32 12, !llfi_index !1019
  call void @latencyCount(i64 1020)
  %node.0 = getelementptr %struct.node* %5, i64 %indvar, !llfi_index !1020
  call void @latencyCount(i64 1021)
  %26 = icmp ult %struct.node* %node.0, %7, !llfi_index !1021
  call void @qsPlace(i64 1022)
  br i1 %26, label %bb, label %bb11, !llfi_index !1022

bb11:                                             ; preds = %bb10
  call void @latencyCount(i64 1023)
  %27 = getelementptr inbounds %struct.network_t* %net, i64 0, i32 13, !llfi_index !1023
  store i64 1, i64* %27, align 8, !llfi_index !1024
  br label %bb12, !llfi_index !1025

bb12:                                             ; preds = %bb11, %bb8
  %.0 = phi i64 [ 1, %bb8 ], [ 0, %bb11 ], !llfi_index !1026
  ret i64 %.0, !llfi_index !1027
}

define i64 @dual_feasible(%struct.network_t* nocapture %net) nounwind {
entry:
  call void @latencyCount(i64 1028)
  %0 = getelementptr inbounds %struct.network_t* %net, i64 0, i32 24, !llfi_index !1028
  call void @latencyCount(i64 1029)
  %1 = load %struct.arc** %0, align 8, !llfi_index !1029
  call void @latencyCount(i64 1030)
  %2 = getelementptr inbounds %struct.network_t* %net, i64 0, i32 23, !llfi_index !1030
  call void @latencyCount(i64 1031)
  %3 = load %struct.arc** %2, align 8, !llfi_index !1031
  call void @latencyCount(i64 1032)
  %4 = getelementptr inbounds %struct.network_t* %net, i64 0, i32 16, !llfi_index !1032
  br label %bb5, !llfi_index !1033

bb:                                               ; preds = %bb5
  call void @latencyCount(i64 1034)
  %scevgep34 = getelementptr inbounds %struct.arc* %3, i64 %indvar, i32 0, !llfi_index !1034
  call void @latencyCount(i64 1035)
  %scevgep2 = getelementptr %struct.arc* %3, i64 %indvar, i32 1, !llfi_index !1035
  call void @latencyCount(i64 1036)
  %scevgep1 = getelementptr %struct.arc* %3, i64 %indvar, i32 2, !llfi_index !1036
  call void @latencyCount(i64 1037)
  %scevgep = getelementptr %struct.arc* %3, i64 %indvar, i32 3, !llfi_index !1037
  call void @latencyCount(i64 1038)
  %5 = load i64* %scevgep34, align 8, !llfi_index !1038
  call void @latencyCount(i64 1039)
  %6 = load %struct.node** %scevgep2, align 8, !llfi_index !1039
  call void @latencyCount(i64 1040)
  %7 = getelementptr inbounds %struct.node* %6, i64 0, i32 0, !llfi_index !1040
  call void @latencyCount(i64 1041)
  %8 = load i64* %7, align 8, !llfi_index !1041
  call void @latencyCount(i64 1042)
  %9 = sub nsw i64 %5, %8, !llfi_index !1042
  call void @latencyCount(i64 1043)
  %10 = load %struct.node** %scevgep1, align 8, !llfi_index !1043
  call void @latencyCount(i64 1044)
  %11 = getelementptr inbounds %struct.node* %10, i64 0, i32 0, !llfi_index !1044
  call void @latencyCount(i64 1045)
  %12 = load i64* %11, align 8, !llfi_index !1045
  call void @latencyCount(i64 1046)
  %13 = add nsw i64 %12, %9, !llfi_index !1046
  call void @latencyCount(i64 1047)
  %14 = load i32* %scevgep, align 8, !llfi_index !1047
  call void @latencyCount(i64 1048)
  switch i32 %14, label %bb4 [
    i32 0, label %bb1
    i32 1, label %bb1
    i32 2, label %bb3
  ], !llfi_index !1048

bb1:                                              ; preds = %bb, %bb
  call void @latencyCount(i64 1049)
  %15 = load i64* %4, align 8, !llfi_index !1049
  call void @latencyCount(i64 1050)
  %16 = sub nsw i64 0, %15, !llfi_index !1050
  call void @latencyCount(i64 1051)
  %17 = icmp slt i64 %13, %16, !llfi_index !1051
  call void @qsPlace(i64 1052)
  br i1 %17, label %DUAL_INFEAS, label %bb4, !llfi_index !1052

bb3:                                              ; preds = %bb
  call void @latencyCount(i64 1053)
  %18 = load i64* %4, align 8, !llfi_index !1053
  call void @latencyCount(i64 1054)
  %19 = icmp slt i64 %18, %13, !llfi_index !1054
  call void @qsPlace(i64 1055)
  br i1 %19, label %DUAL_INFEAS, label %bb4, !llfi_index !1055

bb4:                                              ; preds = %bb3, %bb1, %bb
  call void @latencyCount(i64 1056)
  %indvar.next = add i64 %indvar, 1, !llfi_index !1056
  br label %bb5, !llfi_index !1057

bb5:                                              ; preds = %bb4, %entry
  %indvar = phi i64 [ %indvar.next, %bb4 ], [ 0, %entry ], !llfi_index !1058
  call void @latencyCount(i64 1059)
  %arc.0 = getelementptr %struct.arc* %3, i64 %indvar, !llfi_index !1059
  call void @latencyCount(i64 1060)
  %20 = icmp ult %struct.arc* %arc.0, %1, !llfi_index !1060
  call void @qsPlace(i64 1061)
  br i1 %20, label %bb, label %bb7, !llfi_index !1061

DUAL_INFEAS:                                      ; preds = %bb3, %bb1
  call void @latencyCount(i64 1062)
  %21 = load %struct.FILE** @stderr, align 8, !llfi_index !1062
  call void @latencyCount(i64 1063)
  %22 = bitcast %struct.FILE* %21 to i8*, !llfi_index !1063
  call void @latencyCount(i64 1064)
  %23 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8]* @.str318, i64 0, i64 0), i64 1, i64 22, i8* %22) nounwind, !llfi_index !1064
  call void @latencyCount(i64 1065)
  %24 = load %struct.FILE** @stderr, align 8, !llfi_index !1065
  call void @latencyCount(i64 1066)
  %25 = bitcast %struct.FILE* %24 to i8*, !llfi_index !1066
  call void @latencyCount(i64 1067)
  %26 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8]* @.str419, i64 0, i64 0), i64 1, i64 22, i8* %25) nounwind, !llfi_index !1067
  br label %bb7, !llfi_index !1068

bb7:                                              ; preds = %DUAL_INFEAS, %bb5
  %.0 = phi i64 [ 1, %DUAL_INFEAS ], [ 0, %bb5 ], !llfi_index !1069
  ret i64 %.0, !llfi_index !1070
}

declare i64 @fwrite(i8* nocapture, i64, i64, i8* nocapture) nounwind

define i64 @getfree(%struct.network_t* nocapture %net) nounwind {
entry:
  call void @latencyCount(i64 1071)
  %0 = getelementptr inbounds %struct.network_t* %net, i64 0, i32 21, !llfi_index !1071
  call void @latencyCount(i64 1072)
  %1 = load %struct.node** %0, align 8, !llfi_index !1072
  call void @latencyCount(i64 1073)
  %2 = icmp eq %struct.node* %1, null, !llfi_index !1073
  br i1 %2, label %bb1, label %bb, !llfi_index !1074

bb:                                               ; preds = %entry
  call void @latencyCount(i64 1075)
  %3 = bitcast %struct.node* %1 to i8*, !llfi_index !1075
  call void @latencyCount(i64 1076)
  tail call void @free(i8* %3) nounwind, !llfi_index !1076
  br label %bb1, !llfi_index !1077

bb1:                                              ; preds = %bb, %entry
  call void @latencyCount(i64 1078)
  %4 = getelementptr inbounds %struct.network_t* %net, i64 0, i32 23, !llfi_index !1078
  call void @latencyCount(i64 1079)
  %5 = load %struct.arc** %4, align 8, !llfi_index !1079
  call void @latencyCount(i64 1080)
  %6 = icmp eq %struct.arc* %5, null, !llfi_index !1080
  br i1 %6, label %bb3, label %bb2, !llfi_index !1081

bb2:                                              ; preds = %bb1
  call void @latencyCount(i64 1082)
  %7 = bitcast %struct.arc* %5 to i8*, !llfi_index !1082
  call void @latencyCount(i64 1083)
  tail call void @free(i8* %7) nounwind, !llfi_index !1083
  br label %bb3, !llfi_index !1084

bb3:                                              ; preds = %bb2, %bb1
  call void @latencyCount(i64 1085)
  %8 = getelementptr inbounds %struct.network_t* %net, i64 0, i32 25, !llfi_index !1085
  call void @latencyCount(i64 1086)
  %9 = load %struct.arc** %8, align 8, !llfi_index !1086
  call void @latencyCount(i64 1087)
  %10 = icmp eq %struct.arc* %9, null, !llfi_index !1087
  br i1 %10, label %bb5, label %bb4, !llfi_index !1088

bb4:                                              ; preds = %bb3
  call void @latencyCount(i64 1089)
  %11 = bitcast %struct.arc* %9 to i8*, !llfi_index !1089
  call void @latencyCount(i64 1090)
  tail call void @free(i8* %11) nounwind, !llfi_index !1090
  br label %bb5, !llfi_index !1091

bb5:                                              ; preds = %bb4, %bb3
  call void @latencyCount(i64 1092)
  %12 = getelementptr inbounds %struct.network_t* %net, i64 0, i32 22, !llfi_index !1092
  store %struct.node* null, %struct.node** %12, align 8, !llfi_index !1093
  store %struct.node* null, %struct.node** %0, align 8, !llfi_index !1094
  call void @latencyCount(i64 1095)
  %13 = getelementptr inbounds %struct.network_t* %net, i64 0, i32 24, !llfi_index !1095
  store %struct.arc* null, %struct.arc** %13, align 8, !llfi_index !1096
  store %struct.arc* null, %struct.arc** %4, align 8, !llfi_index !1097
  call void @latencyCount(i64 1098)
  %14 = getelementptr inbounds %struct.network_t* %net, i64 0, i32 26, !llfi_index !1098
  store %struct.arc* null, %struct.arc** %14, align 8, !llfi_index !1099
  store %struct.arc* null, %struct.arc** %8, align 8, !llfi_index !1100
  ret i64 0, !llfi_index !1101
}

declare void @free(i8* nocapture) nounwind

define i64 @write_circulations(i8* nocapture %outfile, %struct.network_t* nocapture %net) nounwind {
entry:
  call void @latencyCount(i64 1102)
  %0 = getelementptr inbounds %struct.network_t* %net, i64 0, i32 24, !llfi_index !1102
  call void @latencyCount(i64 1103)
  %1 = load %struct.arc** %0, align 8, !llfi_index !1103
  call void @latencyCount(i64 1104)
  %2 = getelementptr inbounds %struct.network_t* %net, i64 0, i32 7, !llfi_index !1104
  call void @latencyCount(i64 1105)
  %3 = load i64* %2, align 8, !llfi_index !1105
  call void @latencyCount(i64 1106)
  %4 = sub nsw i64 0, %3, !llfi_index !1106
  call void @latencyCount(i64 1107)
  %5 = getelementptr inbounds %struct.arc* %1, i64 %4, !llfi_index !1107
  call void @latencyCount(i64 1108)
  %6 = tail call %struct.FILE* @fopen(i8* noalias %outfile, i8* noalias getelementptr inbounds ([2 x i8]* @.str23, i64 0, i64 0)) nounwind, !llfi_index !1108
  call void @latencyCount(i64 1109)
  %7 = icmp eq %struct.FILE* %6, null, !llfi_index !1109
  br i1 %7, label %bb19, label %bb1, !llfi_index !1110

bb1:                                              ; preds = %entry
  call void @latencyCount(i64 1111)
  %8 = getelementptr inbounds %struct.network_t* %net, i64 0, i32 21, !llfi_index !1111
  call void @latencyCount(i64 1112)
  %9 = load %struct.node** %8, align 8, !llfi_index !1112
  call void @latencyCount(i64 1113)
  %10 = getelementptr inbounds %struct.network_t* %net, i64 0, i32 22, !llfi_index !1113
  call void @latencyCount(i64 1114)
  %11 = load %struct.node** %10, align 8, !llfi_index !1114
  call void @latencyCount(i64 1115)
  %12 = icmp ult %struct.node* %9, %11, !llfi_index !1115
  br i1 %12, label %bb.i, label %bb2.i, !llfi_index !1116

bb.i:                                             ; preds = %bb.i, %bb1
  %indvar8.i = phi i64 [ %tmp4, %bb.i ], [ 0, %bb1 ], !llfi_index !1117
  call void @latencyCount(i64 1118)
  %tmp4 = add i64 %indvar8.i, 1, !llfi_index !1118
  call void @latencyCount(i64 1119)
  %scevgep13.i = getelementptr %struct.node* %9, i64 %tmp4, !llfi_index !1119
  call void @latencyCount(i64 1120)
  %scevgep11.i = getelementptr %struct.node* %9, i64 %indvar8.i, i32 7, !llfi_index !1120
  call void @latencyCount(i64 1121)
  %scevgep10.i = getelementptr %struct.node* %9, i64 %indvar8.i, i32 8, !llfi_index !1121
  store %struct.arc* null, %struct.arc** %scevgep10.i, align 8, !llfi_index !1122
  store %struct.arc* null, %struct.arc** %scevgep11.i, align 8, !llfi_index !1123
  call void @latencyCount(i64 1124)
  %13 = icmp ult %struct.node* %scevgep13.i, %11, !llfi_index !1124
  call void @qsPlace(i64 1125)
  br i1 %13, label %bb.i, label %bb2.i, !llfi_index !1125

bb2.i:                                            ; preds = %bb.i, %bb1
  call void @latencyCount(i64 1126)
  %14 = getelementptr inbounds %struct.network_t* %net, i64 0, i32 23, !llfi_index !1126
  call void @latencyCount(i64 1127)
  %15 = load %struct.arc** %14, align 8, !llfi_index !1127
  call void @latencyCount(i64 1128)
  %16 = load %struct.arc** %0, align 8, !llfi_index !1128
  call void @latencyCount(i64 1129)
  %17 = icmp ult %struct.arc* %15, %16, !llfi_index !1129
  br i1 %17, label %bb3.i, label %refresh_neighbour_lists.exit, !llfi_index !1130

bb3.i:                                            ; preds = %bb3.i, %bb2.i
  %indvar.i = phi i64 [ %tmp, %bb3.i ], [ 0, %bb2.i ], !llfi_index !1131
  call void @latencyCount(i64 1132)
  %tmp = add i64 %indvar.i, 1, !llfi_index !1132
  call void @latencyCount(i64 1133)
  %scevgep7.i = getelementptr %struct.arc* %15, i64 %tmp, !llfi_index !1133
  call void @latencyCount(i64 1134)
  %scevgep6.i = getelementptr %struct.arc* %15, i64 %indvar.i, i32 5, !llfi_index !1134
  call void @latencyCount(i64 1135)
  %scevgep5.i = getelementptr %struct.arc* %15, i64 %indvar.i, i32 2, !llfi_index !1135
  call void @latencyCount(i64 1136)
  %arc.01.i = getelementptr %struct.arc* %15, i64 %indvar.i, !llfi_index !1136
  call void @latencyCount(i64 1137)
  %scevgep3.i = getelementptr %struct.arc* %15, i64 %indvar.i, i32 4, !llfi_index !1137
  call void @latencyCount(i64 1138)
  %scevgep.i = getelementptr %struct.arc* %15, i64 %indvar.i, i32 1, !llfi_index !1138
  call void @latencyCount(i64 1139)
  %18 = load %struct.node** %scevgep.i, align 8, !llfi_index !1139
  call void @latencyCount(i64 1140)
  %19 = getelementptr inbounds %struct.node* %18, i64 0, i32 7, !llfi_index !1140
  call void @latencyCount(i64 1141)
  %20 = load %struct.arc** %19, align 8, !llfi_index !1141
  store %struct.arc* %20, %struct.arc** %scevgep3.i, align 8, !llfi_index !1142
  store %struct.arc* %arc.01.i, %struct.arc** %19, align 8, !llfi_index !1143
  call void @latencyCount(i64 1144)
  %21 = load %struct.node** %scevgep5.i, align 8, !llfi_index !1144
  call void @latencyCount(i64 1145)
  %22 = getelementptr inbounds %struct.node* %21, i64 0, i32 8, !llfi_index !1145
  call void @latencyCount(i64 1146)
  %23 = load %struct.arc** %22, align 8, !llfi_index !1146
  store %struct.arc* %23, %struct.arc** %scevgep6.i, align 8, !llfi_index !1147
  store %struct.arc* %arc.01.i, %struct.arc** %22, align 8, !llfi_index !1148
  call void @latencyCount(i64 1149)
  %24 = icmp ult %struct.arc* %scevgep7.i, %16, !llfi_index !1149
  call void @qsPlace(i64 1150)
  br i1 %24, label %bb3.i, label %refresh_neighbour_lists.exit, !llfi_index !1150

refresh_neighbour_lists.exit:                     ; preds = %bb3.i, %bb2.i
  call void @latencyCount(i64 1151)
  %25 = load %struct.node** %8, align 8, !llfi_index !1151
  call void @latencyCount(i64 1152)
  %26 = getelementptr inbounds %struct.network_t* %net, i64 0, i32 2, !llfi_index !1152
  call void @latencyCount(i64 1153)
  %27 = load i64* %26, align 8, !llfi_index !1153
  call void @latencyCount(i64 1154)
  %28 = getelementptr inbounds %struct.node* %25, i64 %27, i32 7, !llfi_index !1154
  call void @latencyCount(i64 1155)
  %29 = bitcast %struct.FILE* %6 to i8*, !llfi_index !1155
  call void @latencyCount(i64 1156)
  %30 = getelementptr inbounds %struct.network_t* %net, i64 0, i32 3, !llfi_index !1156
  br label %bb17, !llfi_index !1157

bb2:                                              ; preds = %bb17
  call void @latencyCount(i64 1158)
  %31 = getelementptr inbounds %struct.arc* %block.0, i64 0, i32 6, !llfi_index !1158
  call void @latencyCount(i64 1159)
  %32 = load i64* %31, align 8, !llfi_index !1159
  call void @latencyCount(i64 1160)
  %33 = icmp eq i64 %32, 0, !llfi_index !1160
  br i1 %33, label %bb16, label %bb3, !llfi_index !1161

bb3:                                              ; preds = %bb2
  call void @latencyCount(i64 1162)
  %34 = tail call i64 @fwrite(i8* getelementptr inbounds ([4 x i8]* @.str124, i64 0, i64 0), i64 1, i64 3, i8* %29) nounwind, !llfi_index !1162
  br label %bb15, !llfi_index !1163

bb4:                                              ; preds = %bb15
  call void @latencyCount(i64 1164)
  %35 = icmp ult %struct.arc* %arc.0, %5, !llfi_index !1164
  br i1 %35, label %bb6, label %bb5, !llfi_index !1165

bb5:                                              ; preds = %bb4
  call void @latencyCount(i64 1166)
  %36 = tail call i64 @fwrite(i8* getelementptr inbounds ([5 x i8]* @.str225, i64 0, i64 0), i64 1, i64 4, i8* %29) nounwind, !llfi_index !1166
  br label %bb6, !llfi_index !1167

bb6:                                              ; preds = %bb5, %bb4
  call void @latencyCount(i64 1168)
  %37 = getelementptr inbounds %struct.arc* %arc.0, i64 0, i32 2, !llfi_index !1168
  call void @latencyCount(i64 1169)
  %38 = load %struct.node** %37, align 8, !llfi_index !1169
  call void @latencyCount(i64 1170)
  %39 = getelementptr inbounds %struct.node* %38, i64 0, i32 12, !llfi_index !1170
  call void @latencyCount(i64 1171)
  %40 = load i32* %39, align 8, !llfi_index !1171
  call void @latencyCount(i64 1172)
  %41 = sub nsw i32 0, %40, !llfi_index !1172
  call void @latencyCount(i64 1173)
  %42 = tail call i32 (%struct.FILE*, i8*, ...)* @fprintf(%struct.FILE* noalias %6, i8* noalias getelementptr inbounds ([4 x i8]* @.str326, i64 0, i64 0), i32 %41) nounwind, !llfi_index !1173
  call void @latencyCount(i64 1174)
  %43 = load %struct.node** %37, align 8, !llfi_index !1174
  call void @latencyCount(i64 1175)
  %44 = load i64* %30, align 8, !llfi_index !1175
  call void @latencyCount(i64 1176)
  %45 = getelementptr inbounds %struct.node* %43, i64 %44, i32 7, !llfi_index !1176
  br label %bb9, !llfi_index !1177

bb7:                                              ; preds = %bb9
  call void @latencyCount(i64 1178)
  %46 = getelementptr inbounds %struct.arc* %arc2.0, i64 0, i32 6, !llfi_index !1178
  call void @latencyCount(i64 1179)
  %47 = load i64* %46, align 8, !llfi_index !1179
  call void @latencyCount(i64 1180)
  %48 = icmp eq i64 %47, 0, !llfi_index !1180
  call void @qsPlace(i64 1181)
  br i1 %48, label %bb8, label %bb12, !llfi_index !1181

bb8:                                              ; preds = %bb7
  call void @latencyCount(i64 1182)
  %49 = getelementptr inbounds %struct.arc* %arc2.0, i64 0, i32 4, !llfi_index !1182
  br label %bb9, !llfi_index !1183

bb9:                                              ; preds = %bb8, %bb6
  %arc2.0.in = phi %struct.arc** [ %45, %bb6 ], [ %49, %bb8 ], !llfi_index !1184
  call void @latencyCount(i64 1185)
  %arc2.0 = load %struct.arc** %arc2.0.in, align 8, !llfi_index !1185
  call void @latencyCount(i64 1186)
  %cond = icmp eq %struct.arc* %arc2.0, null, !llfi_index !1186
  call void @qsPlace(i64 1187)
  br i1 %cond, label %bb11, label %bb7, !llfi_index !1187

bb11:                                             ; preds = %bb9
  call void @latencyCount(i64 1188)
  %50 = tail call i32 @fclose(%struct.FILE* %6) nounwind, !llfi_index !1188
  br label %bb19, !llfi_index !1189

bb12:                                             ; preds = %bb7
  call void @latencyCount(i64 1190)
  %51 = getelementptr inbounds %struct.arc* %arc2.0, i64 0, i32 2, !llfi_index !1190
  call void @latencyCount(i64 1191)
  %52 = load %struct.node** %51, align 8, !llfi_index !1191
  call void @latencyCount(i64 1192)
  %53 = getelementptr inbounds %struct.node* %52, i64 0, i32 12, !llfi_index !1192
  call void @latencyCount(i64 1193)
  %54 = load i32* %53, align 8, !llfi_index !1193
  call void @latencyCount(i64 1194)
  %55 = icmp eq i32 %54, 0, !llfi_index !1194
  call void @latencyCount(i64 1195)
  %.arc2.0 = select i1 %55, %struct.arc* null, %struct.arc* %arc2.0, !llfi_index !1195
  br label %bb15, !llfi_index !1196

bb15:                                             ; preds = %bb12, %bb3
  %arc.0 = phi %struct.arc* [ %block.0, %bb3 ], [ %.arc2.0, %bb12 ], !llfi_index !1197
  call void @latencyCount(i64 1198)
  %56 = icmp eq %struct.arc* %arc.0, null, !llfi_index !1198
  call void @qsPlace(i64 1199)
  br i1 %56, label %bb16, label %bb4, !llfi_index !1199

bb16:                                             ; preds = %bb15, %bb2
  call void @latencyCount(i64 1200)
  %57 = getelementptr inbounds %struct.arc* %block.0, i64 0, i32 4, !llfi_index !1200
  br label %bb17, !llfi_index !1201

bb17:                                             ; preds = %bb16, %refresh_neighbour_lists.exit
  %block.0.in = phi %struct.arc** [ %28, %refresh_neighbour_lists.exit ], [ %57, %bb16 ], !llfi_index !1202
  call void @latencyCount(i64 1203)
  %block.0 = load %struct.arc** %block.0.in, align 8, !llfi_index !1203
  call void @latencyCount(i64 1204)
  %58 = icmp eq %struct.arc* %block.0, null, !llfi_index !1204
  call void @qsPlace(i64 1205)
  br i1 %58, label %bb18, label %bb2, !llfi_index !1205

bb18:                                             ; preds = %bb17
  call void @latencyCount(i64 1206)
  %59 = tail call i32 @fclose(%struct.FILE* %6) nounwind, !llfi_index !1206
  br label %bb19, !llfi_index !1207

bb19:                                             ; preds = %bb18, %bb11, %entry
  %.0 = phi i64 [ -1, %bb11 ], [ 0, %bb18 ], [ -1, %entry ], !llfi_index !1208
  ret i64 %.0, !llfi_index !1209
}

declare noalias %struct.FILE* @fopen(i8* noalias nocapture, i8* noalias nocapture) nounwind

declare i32 @fprintf(%struct.FILE* noalias nocapture, i8* noalias nocapture, ...) nounwind

declare i32 @fclose(%struct.FILE* nocapture) nounwind

define i32 @bea_is_dual_infeasible(%struct.arc* nocapture %arc, i64 %red_cost) nounwind readonly {
entry:
  call void @latencyCount(i64 1210)
  %0 = icmp sgt i64 %red_cost, -1, !llfi_index !1210
  br i1 %0, label %bb1, label %bb, !llfi_index !1211

bb:                                               ; preds = %entry
  call void @latencyCount(i64 1212)
  %1 = getelementptr inbounds %struct.arc* %arc, i64 0, i32 3, !llfi_index !1212
  call void @latencyCount(i64 1213)
  %2 = load i32* %1, align 8, !llfi_index !1213
  call void @latencyCount(i64 1214)
  %3 = icmp eq i32 %2, 1, !llfi_index !1214
  br i1 %3, label %bb5, label %bb1, !llfi_index !1215

bb1:                                              ; preds = %bb, %entry
  call void @latencyCount(i64 1216)
  %4 = icmp slt i64 %red_cost, 1, !llfi_index !1216
  br i1 %4, label %bb4, label %bb2, !llfi_index !1217

bb2:                                              ; preds = %bb1
  call void @latencyCount(i64 1218)
  %5 = getelementptr inbounds %struct.arc* %arc, i64 0, i32 3, !llfi_index !1218
  call void @latencyCount(i64 1219)
  %6 = load i32* %5, align 8, !llfi_index !1219
  call void @latencyCount(i64 1220)
  %7 = icmp eq i32 %6, 2, !llfi_index !1220
  br i1 %7, label %bb5, label %bb4, !llfi_index !1221

bb4:                                              ; preds = %bb2, %bb1
  br label %bb5, !llfi_index !1222

bb5:                                              ; preds = %bb4, %bb2, %bb
  %iftmp.0.0 = phi i32 [ 0, %bb4 ], [ 1, %bb2 ], [ 1, %bb ], !llfi_index !1223
  ret i32 %iftmp.0.0, !llfi_index !1224
}

define void @sort_basket(i64 %min, i64 %max) nounwind {
entry:
  br label %tailrecurse, !llfi_index !1225

tailrecurse:                                      ; preds = %bb13, %entry
  %min.tr = phi i64 [ %min, %entry ], [ %l.1, %bb13 ], !llfi_index !1226
  call void @latencyCount(i64 1227)
  %0 = add nsw i64 %min.tr, %max, !llfi_index !1227
  call void @latencyCount(i64 1228)
  %1 = sdiv i64 %0, 2, !llfi_index !1228
  call void @latencyCount(i64 1229)
  %2 = getelementptr inbounds [351 x %struct.BASKET*]* @perm, i64 0, i64 %1, !llfi_index !1229
  call void @latencyCount(i64 1230)
  %3 = load %struct.BASKET** %2, align 8, !llfi_index !1230
  call void @latencyCount(i64 1231)
  %4 = getelementptr inbounds %struct.BASKET* %3, i64 0, i32 2, !llfi_index !1231
  call void @latencyCount(i64 1232)
  %5 = load i64* %4, align 8, !llfi_index !1232
  br label %bb2.outer, !llfi_index !1233

bb2.outer:                                        ; preds = %bb8, %tailrecurse
  %l.0.ph = phi i64 [ %min.tr, %tailrecurse ], [ %l.1, %bb8 ], !llfi_index !1234
  %r.0.ph = phi i64 [ %max, %tailrecurse ], [ %r.2, %bb8 ], !llfi_index !1235
  call void @latencyCount(i64 1236)
  %6 = getelementptr inbounds [351 x %struct.BASKET*]* @perm, i64 0, i64 %l.0.ph, !llfi_index !1236
  call void @latencyCount(i64 1237)
  %7 = load %struct.BASKET** %6, align 8, !llfi_index !1237
  call void @latencyCount(i64 1238)
  %8 = getelementptr inbounds %struct.BASKET* %7, i64 0, i32 2, !llfi_index !1238
  call void @latencyCount(i64 1239)
  %9 = load i64* %8, align 8, !llfi_index !1239
  call void @latencyCount(i64 1240)
  %10 = icmp sgt i64 %9, %5, !llfi_index !1240
  br i1 %10, label %bb1.lr.ph, label %bb5.preheader, !llfi_index !1241

bb1.lr.ph:                                        ; preds = %bb2.outer
  call void @latencyCount(i64 1242)
  %tmp19 = add i64 %l.0.ph, 1, !llfi_index !1242
  br label %bb1, !llfi_index !1243

bb1:                                              ; preds = %bb1, %bb1.lr.ph
  %indvar17 = phi i64 [ 0, %bb1.lr.ph ], [ %indvar.next18, %bb1 ], !llfi_index !1244
  call void @latencyCount(i64 1245)
  %tmp20 = add i64 %tmp19, %indvar17, !llfi_index !1245
  call void @latencyCount(i64 1246)
  %scevgep21 = getelementptr [351 x %struct.BASKET*]* @perm, i64 0, i64 %tmp20, !llfi_index !1246
  call void @latencyCount(i64 1247)
  %11 = load %struct.BASKET** %scevgep21, align 8, !llfi_index !1247
  call void @latencyCount(i64 1248)
  %12 = getelementptr inbounds %struct.BASKET* %11, i64 0, i32 2, !llfi_index !1248
  call void @latencyCount(i64 1249)
  %13 = load i64* %12, align 8, !llfi_index !1249
  call void @latencyCount(i64 1250)
  %14 = icmp sgt i64 %13, %5, !llfi_index !1250
  call void @latencyCount(i64 1251)
  %indvar.next18 = add i64 %indvar17, 1, !llfi_index !1251
  call void @qsPlace(i64 1252)
  br i1 %14, label %bb1, label %bb5.preheader, !llfi_index !1252

bb5.preheader:                                    ; preds = %bb1, %bb2.outer
  %15 = phi %struct.BASKET* [ %7, %bb2.outer ], [ %11, %bb1 ], !llfi_index !1253
  %.lcssa6 = phi %struct.BASKET** [ %6, %bb2.outer ], [ %scevgep21, %bb1 ], !llfi_index !1254
  %l.0.lcssa = phi i64 [ %l.0.ph, %bb2.outer ], [ %tmp20, %bb1 ], !llfi_index !1255
  call void @latencyCount(i64 1256)
  %16 = getelementptr inbounds [351 x %struct.BASKET*]* @perm, i64 0, i64 %r.0.ph, !llfi_index !1256
  call void @latencyCount(i64 1257)
  %17 = load %struct.BASKET** %16, align 8, !llfi_index !1257
  call void @latencyCount(i64 1258)
  %18 = getelementptr inbounds %struct.BASKET* %17, i64 0, i32 2, !llfi_index !1258
  call void @latencyCount(i64 1259)
  %19 = load i64* %18, align 8, !llfi_index !1259
  call void @latencyCount(i64 1260)
  %20 = icmp slt i64 %19, %5, !llfi_index !1260
  br i1 %20, label %bb4.lr.ph, label %bb6, !llfi_index !1261

bb4.lr.ph:                                        ; preds = %bb5.preheader
  call void @latencyCount(i64 1262)
  %tmp13 = add i64 %r.0.ph, -1, !llfi_index !1262
  br label %bb4, !llfi_index !1263

bb4:                                              ; preds = %bb4, %bb4.lr.ph
  %indvar = phi i64 [ 0, %bb4.lr.ph ], [ %indvar.next, %bb4 ], !llfi_index !1264
  call void @latencyCount(i64 1265)
  %tmp14 = sub i64 %tmp13, %indvar, !llfi_index !1265
  call void @latencyCount(i64 1266)
  %scevgep = getelementptr [351 x %struct.BASKET*]* @perm, i64 0, i64 %tmp14, !llfi_index !1266
  call void @latencyCount(i64 1267)
  %21 = load %struct.BASKET** %scevgep, align 8, !llfi_index !1267
  call void @latencyCount(i64 1268)
  %22 = getelementptr inbounds %struct.BASKET* %21, i64 0, i32 2, !llfi_index !1268
  call void @latencyCount(i64 1269)
  %23 = load i64* %22, align 8, !llfi_index !1269
  call void @latencyCount(i64 1270)
  %24 = icmp slt i64 %23, %5, !llfi_index !1270
  call void @latencyCount(i64 1271)
  %indvar.next = add i64 %indvar, 1, !llfi_index !1271
  call void @qsPlace(i64 1272)
  br i1 %24, label %bb4, label %bb6, !llfi_index !1272

bb6:                                              ; preds = %bb4, %bb5.preheader
  %.lcssa2 = phi %struct.BASKET* [ %17, %bb5.preheader ], [ %21, %bb4 ], !llfi_index !1273
  %.lcssa = phi %struct.BASKET** [ %16, %bb5.preheader ], [ %scevgep, %bb4 ], !llfi_index !1274
  %r.1.lcssa = phi i64 [ %r.0.ph, %bb5.preheader ], [ %tmp14, %bb4 ], !llfi_index !1275
  call void @latencyCount(i64 1276)
  %25 = icmp slt i64 %l.0.lcssa, %r.1.lcssa, !llfi_index !1276
  br i1 %25, label %bb7, label %bb8, !llfi_index !1277

bb7:                                              ; preds = %bb6
  store %struct.BASKET* %.lcssa2, %struct.BASKET** %.lcssa6, align 8, !llfi_index !1278
  store %struct.BASKET* %15, %struct.BASKET** %.lcssa, align 8, !llfi_index !1279
  br label %bb8, !llfi_index !1280

bb8:                                              ; preds = %bb7, %bb6
  call void @latencyCount(i64 1281)
  %26 = icmp sgt i64 %l.0.lcssa, %r.1.lcssa, !llfi_index !1281
  call void @latencyCount(i64 1282)
  %27 = zext i1 %26 to i64, !llfi_index !1282
  call void @latencyCount(i64 1283)
  %28 = xor i64 %27, 1, !llfi_index !1283
  call void @latencyCount(i64 1284)
  %l.1 = add i64 %28, %l.0.lcssa, !llfi_index !1284
  call void @latencyCount(i64 1285)
  %not. = xor i1 %26, true, !llfi_index !1285
  call void @latencyCount(i64 1286)
  %29 = sext i1 %not. to i64, !llfi_index !1286
  call void @latencyCount(i64 1287)
  %r.2 = add i64 %29, %r.1.lcssa, !llfi_index !1287
  call void @latencyCount(i64 1288)
  %30 = icmp sgt i64 %l.1, %r.2, !llfi_index !1288
  call void @qsPlace(i64 1289)
  br i1 %30, label %bb11, label %bb2.outer, !llfi_index !1289

bb11:                                             ; preds = %bb8
  call void @latencyCount(i64 1290)
  %31 = icmp sgt i64 %r.2, %min.tr, !llfi_index !1290
  br i1 %31, label %bb12, label %bb13, !llfi_index !1291

bb12:                                             ; preds = %bb11
  call void @latencyCount(i64 1292)
  tail call void @sort_basket(i64 %min.tr, i64 %r.2) nounwind, !llfi_index !1292
  br label %bb13, !llfi_index !1293

bb13:                                             ; preds = %bb12, %bb11
  call void @latencyCount(i64 1294)
  %32 = icmp slt i64 %l.1, %max, !llfi_index !1294
  call void @latencyCount(i64 1295)
  %33 = icmp slt i64 %l.1, 51, !llfi_index !1295
  call void @latencyCount(i64 1296)
  %or.cond = and i1 %32, %33, !llfi_index !1296
  call void @qsPlace(i64 1297)
  br i1 %or.cond, label %tailrecurse, label %return, !llfi_index !1297

return:                                           ; preds = %bb13
  ret void, !llfi_index !1298
}

define %struct.arc* @primal_bea_mpp(i64 %m, %struct.arc* %arcs, %struct.arc* %stop_arcs, i64* nocapture %red_cost_of_bea) nounwind {
entry:
  call void @latencyCount(i64 1299)
  %.b = load i1* @initialize.b, align 1, !llfi_index !1299
  br i1 %.b, label %bb12.preheader, label %bb1, !llfi_index !1300

bb12.preheader:                                   ; preds = %entry
  call void @latencyCount(i64 1301)
  %0 = load i64* @basket_size, align 8, !llfi_index !1301
  call void @latencyCount(i64 1302)
  %1 = icmp slt i64 %0, 2, !llfi_index !1302
  br i1 %1, label %bb14, label %bb5, !llfi_index !1303

bb1:                                              ; preds = %bb1, %entry
  %indvar = phi i64 [ %tmp, %bb1 ], [ 0, %entry ], !llfi_index !1304
  call void @latencyCount(i64 1305)
  %tmp = add i64 %indvar, 1, !llfi_index !1305
  call void @latencyCount(i64 1306)
  %scevgep = getelementptr [351 x %struct.BASKET*]* @perm, i64 0, i64 %tmp, !llfi_index !1306
  call void @latencyCount(i64 1307)
  %scevgep10 = getelementptr [351 x %struct.BASKET]* @basket, i64 0, i64 %tmp, !llfi_index !1307
  store %struct.BASKET* %scevgep10, %struct.BASKET** %scevgep, align 8, !llfi_index !1308
  call void @latencyCount(i64 1309)
  %exitcond = icmp eq i64 %tmp, 350, !llfi_index !1309
  call void @qsPlace(i64 1310)
  br i1 %exitcond, label %bb3, label %bb1, !llfi_index !1310

bb3:                                              ; preds = %bb1
  call void @latencyCount(i64 1311)
  %2 = add nsw i64 %m, -1, !llfi_index !1311
  call void @latencyCount(i64 1312)
  %3 = sdiv i64 %2, 300, !llfi_index !1312
  call void @latencyCount(i64 1313)
  %4 = add nsw i64 %3, 1, !llfi_index !1313
  store i64 %4, i64* @nr_group, align 8, !llfi_index !1314
  store i64 0, i64* @group_pos, align 8, !llfi_index !1315
  store i64 0, i64* @basket_size, align 8, !llfi_index !1316
  store i1 true, i1* @initialize.b, align 1, !llfi_index !1317
  br label %bb15, !llfi_index !1318

bb5:                                              ; preds = %bb11, %bb12.preheader
  %5 = phi i64 [ %37, %bb11 ], [ %0, %bb12.preheader ], !llfi_index !1319
  %indvar11 = phi i64 [ %indvar.next12, %bb11 ], [ 0, %bb12.preheader ], !llfi_index !1320
  %next.19 = phi i64 [ %next.0, %bb11 ], [ 0, %bb12.preheader ], !llfi_index !1321
  call void @latencyCount(i64 1322)
  %tmp13 = add i64 %indvar11, 2, !llfi_index !1322
  call void @latencyCount(i64 1323)
  %scevgep14 = getelementptr [351 x %struct.BASKET*]* @perm, i64 0, i64 %tmp13, !llfi_index !1323
  call void @latencyCount(i64 1324)
  %tmp15 = add i64 %indvar11, 3, !llfi_index !1324
  call void @latencyCount(i64 1325)
  %6 = load %struct.BASKET** %scevgep14, align 8, !llfi_index !1325
  call void @latencyCount(i64 1326)
  %7 = getelementptr inbounds %struct.BASKET* %6, i64 0, i32 0, !llfi_index !1326
  call void @latencyCount(i64 1327)
  %8 = load %struct.arc** %7, align 8, !llfi_index !1327
  call void @latencyCount(i64 1328)
  %9 = getelementptr inbounds %struct.arc* %8, i64 0, i32 0, !llfi_index !1328
  call void @latencyCount(i64 1329)
  %10 = load i64* %9, align 8, !llfi_index !1329
  call void @latencyCount(i64 1330)
  %11 = getelementptr inbounds %struct.arc* %8, i64 0, i32 1, !llfi_index !1330
  call void @latencyCount(i64 1331)
  %12 = load %struct.node** %11, align 8, !llfi_index !1331
  call void @latencyCount(i64 1332)
  %13 = getelementptr inbounds %struct.node* %12, i64 0, i32 0, !llfi_index !1332
  call void @latencyCount(i64 1333)
  %14 = load i64* %13, align 8, !llfi_index !1333
  call void @latencyCount(i64 1334)
  %15 = sub nsw i64 %10, %14, !llfi_index !1334
  call void @latencyCount(i64 1335)
  %16 = getelementptr inbounds %struct.arc* %8, i64 0, i32 2, !llfi_index !1335
  call void @latencyCount(i64 1336)
  %17 = load %struct.node** %16, align 8, !llfi_index !1336
  call void @latencyCount(i64 1337)
  %18 = getelementptr inbounds %struct.node* %17, i64 0, i32 0, !llfi_index !1337
  call void @latencyCount(i64 1338)
  %19 = load i64* %18, align 8, !llfi_index !1338
  call void @latencyCount(i64 1339)
  %20 = add nsw i64 %19, %15, !llfi_index !1339
  call void @latencyCount(i64 1340)
  %21 = icmp sgt i64 %20, -1, !llfi_index !1340
  br i1 %21, label %bb7, label %bb6, !llfi_index !1341

bb6:                                              ; preds = %bb5
  call void @latencyCount(i64 1342)
  %22 = getelementptr inbounds %struct.arc* %8, i64 0, i32 3, !llfi_index !1342
  call void @latencyCount(i64 1343)
  %23 = load i32* %22, align 8, !llfi_index !1343
  call void @latencyCount(i64 1344)
  %24 = icmp eq i32 %23, 1, !llfi_index !1344
  br i1 %24, label %bb9, label %bb7, !llfi_index !1345

bb7:                                              ; preds = %bb6, %bb5
  call void @latencyCount(i64 1346)
  %25 = icmp slt i64 %20, 1, !llfi_index !1346
  br i1 %25, label %bb11, label %bb8, !llfi_index !1347

bb8:                                              ; preds = %bb7
  call void @latencyCount(i64 1348)
  %26 = getelementptr inbounds %struct.arc* %8, i64 0, i32 3, !llfi_index !1348
  call void @latencyCount(i64 1349)
  %27 = load i32* %26, align 8, !llfi_index !1349
  call void @latencyCount(i64 1350)
  %28 = icmp eq i32 %27, 2, !llfi_index !1350
  br i1 %28, label %bb9, label %bb11, !llfi_index !1351

bb9:                                              ; preds = %bb8, %bb6
  call void @latencyCount(i64 1352)
  %29 = add nsw i64 %next.19, 1, !llfi_index !1352
  call void @latencyCount(i64 1353)
  %30 = getelementptr inbounds [351 x %struct.BASKET*]* @perm, i64 0, i64 %29, !llfi_index !1353
  call void @latencyCount(i64 1354)
  %31 = load %struct.BASKET** %30, align 8, !llfi_index !1354
  call void @latencyCount(i64 1355)
  %32 = getelementptr inbounds %struct.BASKET* %31, i64 0, i32 0, !llfi_index !1355
  store %struct.arc* %8, %struct.arc** %32, align 8, !llfi_index !1356
  call void @latencyCount(i64 1357)
  %33 = load %struct.BASKET** %30, align 8, !llfi_index !1357
  call void @latencyCount(i64 1358)
  %34 = getelementptr inbounds %struct.BASKET* %33, i64 0, i32 1, !llfi_index !1358
  store i64 %20, i64* %34, align 8, !llfi_index !1359
  call void @latencyCount(i64 1360)
  %35 = load %struct.BASKET** %30, align 8, !llfi_index !1360
  call void @latencyCount(i64 1361)
  %neg = sub i64 0, %20, !llfi_index !1361
  call void @latencyCount(i64 1362)
  %abs = select i1 %21, i64 %20, i64 %neg, !llfi_index !1362
  call void @latencyCount(i64 1363)
  %36 = getelementptr inbounds %struct.BASKET* %35, i64 0, i32 2, !llfi_index !1363
  store i64 %abs, i64* %36, align 8, !llfi_index !1364
  call void @latencyCount(i64 1365)
  %.pre17 = load i64* @basket_size, align 8, !llfi_index !1365
  br label %bb11, !llfi_index !1366

bb11:                                             ; preds = %bb9, %bb8, %bb7
  %37 = phi i64 [ %5, %bb7 ], [ %.pre17, %bb9 ], [ %5, %bb8 ], !llfi_index !1367
  %next.0 = phi i64 [ %next.19, %bb7 ], [ %29, %bb9 ], [ %next.19, %bb8 ], !llfi_index !1368
  call void @latencyCount(i64 1369)
  %38 = icmp sgt i64 %tmp15, 50, !llfi_index !1369
  call void @latencyCount(i64 1370)
  %39 = icmp sgt i64 %tmp15, %37, !llfi_index !1370
  call void @latencyCount(i64 1371)
  %or.cond = or i1 %38, %39, !llfi_index !1371
  call void @latencyCount(i64 1372)
  %indvar.next12 = add i64 %indvar11, 1, !llfi_index !1372
  call void @qsPlace(i64 1373)
  br i1 %or.cond, label %bb14, label %bb5, !llfi_index !1373

bb14:                                             ; preds = %bb11, %bb12.preheader
  %next.1.lcssa = phi i64 [ 0, %bb12.preheader ], [ %next.0, %bb11 ], !llfi_index !1374
  store i64 %next.1.lcssa, i64* @basket_size, align 8, !llfi_index !1375
  call void @latencyCount(i64 1376)
  %.pre = load i64* @group_pos, align 8, !llfi_index !1376
  br label %bb15, !llfi_index !1377

bb15:                                             ; preds = %bb14, %bb3
  %40 = phi i64 [ %.pre, %bb14 ], [ 0, %bb3 ], !llfi_index !1378
  br label %NEXT, !llfi_index !1379

NEXT:                                             ; preds = %bb27, %bb15
  %41 = phi i64 [ %83, %bb27 ], [ %40, %bb15 ], !llfi_index !1380
  call void @latencyCount(i64 1381)
  %42 = getelementptr inbounds %struct.arc* %arcs, i64 %41, !llfi_index !1381
  call void @latencyCount(i64 1382)
  %43 = icmp ult %struct.arc* %42, %stop_arcs, !llfi_index !1382
  br i1 %43, label %bb16, label %NEXT.bb25_crit_edge, !llfi_index !1383

NEXT.bb25_crit_edge:                              ; preds = %NEXT
  call void @latencyCount(i64 1384)
  %.pre18 = load i64* @nr_group, align 8, !llfi_index !1384
  br label %bb25, !llfi_index !1385

bb16:                                             ; preds = %bb23, %NEXT
  %arc.07 = phi %struct.arc* [ %77, %bb23 ], [ %42, %NEXT ], !llfi_index !1386
  call void @latencyCount(i64 1387)
  %44 = getelementptr inbounds %struct.arc* %arc.07, i64 0, i32 3, !llfi_index !1387
  call void @latencyCount(i64 1388)
  %45 = load i32* %44, align 8, !llfi_index !1388
  call void @latencyCount(i64 1389)
  %46 = icmp sgt i32 %45, 0, !llfi_index !1389
  br i1 %46, label %bb17, label %bb23, !llfi_index !1390

bb17:                                             ; preds = %bb16
  call void @latencyCount(i64 1391)
  %47 = getelementptr inbounds %struct.arc* %arc.07, i64 0, i32 0, !llfi_index !1391
  call void @latencyCount(i64 1392)
  %48 = load i64* %47, align 8, !llfi_index !1392
  call void @latencyCount(i64 1393)
  %49 = getelementptr inbounds %struct.arc* %arc.07, i64 0, i32 1, !llfi_index !1393
  call void @latencyCount(i64 1394)
  %50 = load %struct.node** %49, align 8, !llfi_index !1394
  call void @latencyCount(i64 1395)
  %51 = getelementptr inbounds %struct.node* %50, i64 0, i32 0, !llfi_index !1395
  call void @latencyCount(i64 1396)
  %52 = load i64* %51, align 8, !llfi_index !1396
  call void @latencyCount(i64 1397)
  %53 = sub nsw i64 %48, %52, !llfi_index !1397
  call void @latencyCount(i64 1398)
  %54 = getelementptr inbounds %struct.arc* %arc.07, i64 0, i32 2, !llfi_index !1398
  call void @latencyCount(i64 1399)
  %55 = load %struct.node** %54, align 8, !llfi_index !1399
  call void @latencyCount(i64 1400)
  %56 = getelementptr inbounds %struct.node* %55, i64 0, i32 0, !llfi_index !1400
  call void @latencyCount(i64 1401)
  %57 = load i64* %56, align 8, !llfi_index !1401
  call void @latencyCount(i64 1402)
  %58 = add nsw i64 %57, %53, !llfi_index !1402
  call void @latencyCount(i64 1403)
  %59 = icmp sgt i64 %58, -1, !llfi_index !1403
  call void @latencyCount(i64 1404)
  %.not = xor i1 %59, true, !llfi_index !1404
  call void @latencyCount(i64 1405)
  %60 = icmp eq i32 %45, 1, !llfi_index !1405
  call void @latencyCount(i64 1406)
  %or.cond2 = and i1 %60, %.not, !llfi_index !1406
  br i1 %or.cond2, label %bb18, label %bb1.i, !llfi_index !1407

bb1.i:                                            ; preds = %bb17
  call void @latencyCount(i64 1408)
  %61 = icmp sgt i64 %58, 0, !llfi_index !1408
  call void @latencyCount(i64 1409)
  %62 = icmp eq i32 %45, 2, !llfi_index !1409
  call void @latencyCount(i64 1410)
  %or.cond5 = and i1 %61, %62, !llfi_index !1410
  br i1 %or.cond5, label %bb18, label %bb23, !llfi_index !1411

bb18:                                             ; preds = %bb1.i, %bb17
  call void @latencyCount(i64 1412)
  %63 = load i64* @basket_size, align 8, !llfi_index !1412
  call void @latencyCount(i64 1413)
  %64 = add nsw i64 %63, 1, !llfi_index !1413
  store i64 %64, i64* @basket_size, align 8, !llfi_index !1414
  call void @latencyCount(i64 1415)
  %65 = getelementptr inbounds [351 x %struct.BASKET*]* @perm, i64 0, i64 %64, !llfi_index !1415
  call void @latencyCount(i64 1416)
  %66 = load %struct.BASKET** %65, align 8, !llfi_index !1416
  call void @latencyCount(i64 1417)
  %67 = getelementptr inbounds %struct.BASKET* %66, i64 0, i32 0, !llfi_index !1417
  store %struct.arc* %arc.07, %struct.arc** %67, align 8, !llfi_index !1418
  call void @latencyCount(i64 1419)
  %68 = load i64* @basket_size, align 8, !llfi_index !1419
  call void @latencyCount(i64 1420)
  %69 = getelementptr inbounds [351 x %struct.BASKET*]* @perm, i64 0, i64 %68, !llfi_index !1420
  call void @latencyCount(i64 1421)
  %70 = load %struct.BASKET** %69, align 8, !llfi_index !1421
  call void @latencyCount(i64 1422)
  %71 = getelementptr inbounds %struct.BASKET* %70, i64 0, i32 1, !llfi_index !1422
  store i64 %58, i64* %71, align 8, !llfi_index !1423
  call void @latencyCount(i64 1424)
  %72 = load i64* @basket_size, align 8, !llfi_index !1424
  call void @latencyCount(i64 1425)
  %73 = getelementptr inbounds [351 x %struct.BASKET*]* @perm, i64 0, i64 %72, !llfi_index !1425
  call void @latencyCount(i64 1426)
  %74 = load %struct.BASKET** %73, align 8, !llfi_index !1426
  call void @latencyCount(i64 1427)
  %neg19 = sub i64 0, %58, !llfi_index !1427
  call void @latencyCount(i64 1428)
  %abs21 = select i1 %59, i64 %58, i64 %neg19, !llfi_index !1428
  call void @latencyCount(i64 1429)
  %75 = getelementptr inbounds %struct.BASKET* %74, i64 0, i32 2, !llfi_index !1429
  store i64 %abs21, i64* %75, align 8, !llfi_index !1430
  br label %bb23, !llfi_index !1431

bb23:                                             ; preds = %bb18, %bb1.i, %bb16
  call void @latencyCount(i64 1432)
  %76 = load i64* @nr_group, align 8, !llfi_index !1432
  call void @latencyCount(i64 1433)
  %77 = getelementptr inbounds %struct.arc* %arc.07, i64 %76, !llfi_index !1433
  call void @latencyCount(i64 1434)
  %78 = icmp ult %struct.arc* %77, %stop_arcs, !llfi_index !1434
  call void @qsPlace(i64 1435)
  br i1 %78, label %bb16, label %bb24.bb25_crit_edge, !llfi_index !1435

bb24.bb25_crit_edge:                              ; preds = %bb23
  call void @latencyCount(i64 1436)
  %.pre16 = load i64* @group_pos, align 8, !llfi_index !1436
  br label %bb25, !llfi_index !1437

bb25:                                             ; preds = %bb24.bb25_crit_edge, %NEXT.bb25_crit_edge
  %79 = phi i64 [ %76, %bb24.bb25_crit_edge ], [ %.pre18, %NEXT.bb25_crit_edge ], !llfi_index !1438
  %80 = phi i64 [ %.pre16, %bb24.bb25_crit_edge ], [ %41, %NEXT.bb25_crit_edge ], !llfi_index !1439
  call void @latencyCount(i64 1440)
  %81 = add nsw i64 %80, 1, !llfi_index !1440
  store i64 %81, i64* @group_pos, align 8, !llfi_index !1441
  call void @latencyCount(i64 1442)
  %82 = icmp eq i64 %81, %79, !llfi_index !1442
  br i1 %82, label %bb26, label %bb27, !llfi_index !1443

bb26:                                             ; preds = %bb25
  store i64 0, i64* @group_pos, align 8, !llfi_index !1444
  br label %bb27, !llfi_index !1445

bb27:                                             ; preds = %bb26, %bb25
  %83 = phi i64 [ 0, %bb26 ], [ %81, %bb25 ], !llfi_index !1446
  call void @latencyCount(i64 1447)
  %84 = load i64* @basket_size, align 8, !llfi_index !1447
  call void @latencyCount(i64 1448)
  %85 = icmp sgt i64 %84, 49, !llfi_index !1448
  call void @latencyCount(i64 1449)
  %86 = icmp eq i64 %83, %40, !llfi_index !1449
  call void @latencyCount(i64 1450)
  %or.cond4 = or i1 %85, %86, !llfi_index !1450
  call void @qsPlace(i64 1451)
  br i1 %or.cond4, label %bb29, label %NEXT, !llfi_index !1451

bb29:                                             ; preds = %bb27
  call void @latencyCount(i64 1452)
  %87 = icmp eq i64 %84, 0, !llfi_index !1452
  br i1 %87, label %bb30, label %bb31, !llfi_index !1453

bb30:                                             ; preds = %bb29
  store i1 false, i1* @initialize.b, align 1, !llfi_index !1454
  store i64 0, i64* %red_cost_of_bea, align 8, !llfi_index !1455
  br label %bb32, !llfi_index !1456

bb31:                                             ; preds = %bb29
  call void @latencyCount(i64 1457)
  tail call void @sort_basket(i64 1, i64 %84) nounwind, !llfi_index !1457
  call void @latencyCount(i64 1458)
  %88 = load %struct.BASKET** getelementptr inbounds ([351 x %struct.BASKET*]* @perm, i64 0, i64 1), align 8, !llfi_index !1458
  call void @latencyCount(i64 1459)
  %89 = getelementptr inbounds %struct.BASKET* %88, i64 0, i32 1, !llfi_index !1459
  call void @latencyCount(i64 1460)
  %90 = load i64* %89, align 8, !llfi_index !1460
  store i64 %90, i64* %red_cost_of_bea, align 8, !llfi_index !1461
  call void @latencyCount(i64 1462)
  %91 = load %struct.BASKET** getelementptr inbounds ([351 x %struct.BASKET*]* @perm, i64 0, i64 1), align 8, !llfi_index !1462
  call void @latencyCount(i64 1463)
  %92 = getelementptr inbounds %struct.BASKET* %91, i64 0, i32 0, !llfi_index !1463
  call void @latencyCount(i64 1464)
  %93 = load %struct.arc** %92, align 8, !llfi_index !1464
  br label %bb32, !llfi_index !1465

bb32:                                             ; preds = %bb31, %bb30
  %.0 = phi %struct.arc* [ null, %bb30 ], [ %93, %bb31 ], !llfi_index !1466
  ret %struct.arc* %.0, !llfi_index !1467
}

define %struct.node* @primal_iminus(i64* nocapture %delta, i64* nocapture %xchange, %struct.node* %iplus, %struct.node* %jplus, %struct.node** nocapture %w) nounwind {
entry:
  br label %bb17.outer, !llfi_index !1468

bb17.outer:                                       ; preds = %bb8, %entry
  %iplus_addr.0.ph = phi %struct.node* [ %iplus, %entry ], [ %23, %bb8 ], !llfi_index !1469
  %jplus_addr.0.ph = phi %struct.node* [ %jplus, %entry ], [ %jplus_addr.0, %bb8 ], !llfi_index !1470
  %iminus.2.ph = phi %struct.node* [ null, %entry ], [ %iminus.0, %bb8 ], !llfi_index !1471
  call void @latencyCount(i64 1472)
  %0 = getelementptr inbounds %struct.node* %iplus_addr.0.ph, i64 0, i32 11, !llfi_index !1472
  br label %bb17, !llfi_index !1473

bb:                                               ; preds = %bb17
  call void @latencyCount(i64 1474)
  %1 = load i64* %0, align 8, !llfi_index !1474
  call void @latencyCount(i64 1475)
  %2 = getelementptr inbounds %struct.node* %jplus_addr.0, i64 0, i32 11, !llfi_index !1475
  call void @latencyCount(i64 1476)
  %3 = load i64* %2, align 8, !llfi_index !1476
  call void @latencyCount(i64 1477)
  %4 = icmp slt i64 %1, %3, !llfi_index !1477
  call void @qsPlace(i64 1478)
  br i1 %4, label %bb1, label %bb9, !llfi_index !1478

bb1:                                              ; preds = %bb
  call void @latencyCount(i64 1479)
  %5 = getelementptr inbounds %struct.node* %iplus_addr.0.ph, i64 0, i32 1, !llfi_index !1479
  call void @latencyCount(i64 1480)
  %6 = load i32* %5, align 8, !llfi_index !1480
  call void @latencyCount(i64 1481)
  %7 = icmp eq i32 %6, 0, !llfi_index !1481
  br i1 %7, label %bb5, label %bb2, !llfi_index !1482

bb2:                                              ; preds = %bb1
  call void @latencyCount(i64 1483)
  %8 = load i64* %delta, align 8, !llfi_index !1483
  call void @latencyCount(i64 1484)
  %9 = getelementptr inbounds %struct.node* %iplus_addr.0.ph, i64 0, i32 10, !llfi_index !1484
  call void @latencyCount(i64 1485)
  %10 = load i64* %9, align 8, !llfi_index !1485
  call void @latencyCount(i64 1486)
  %11 = icmp sgt i64 %8, %10, !llfi_index !1486
  br i1 %11, label %bb3, label %bb8, !llfi_index !1487

bb3:                                              ; preds = %bb2
  store i64 %10, i64* %delta, align 8, !llfi_index !1488
  store i64 0, i64* %xchange, align 8, !llfi_index !1489
  br label %bb8, !llfi_index !1490

bb5:                                              ; preds = %bb1
  call void @latencyCount(i64 1491)
  %12 = getelementptr inbounds %struct.node* %iplus_addr.0.ph, i64 0, i32 3, !llfi_index !1491
  call void @latencyCount(i64 1492)
  %13 = load %struct.node** %12, align 8, !llfi_index !1492
  call void @latencyCount(i64 1493)
  %14 = getelementptr inbounds %struct.node* %13, i64 0, i32 3, !llfi_index !1493
  call void @latencyCount(i64 1494)
  %15 = load %struct.node** %14, align 8, !llfi_index !1494
  call void @latencyCount(i64 1495)
  %16 = icmp eq %struct.node* %15, null, !llfi_index !1495
  br i1 %16, label %bb8, label %bb6, !llfi_index !1496

bb6:                                              ; preds = %bb5
  call void @latencyCount(i64 1497)
  %17 = load i64* %delta, align 8, !llfi_index !1497
  call void @latencyCount(i64 1498)
  %18 = getelementptr inbounds %struct.node* %iplus_addr.0.ph, i64 0, i32 10, !llfi_index !1498
  call void @latencyCount(i64 1499)
  %19 = load i64* %18, align 8, !llfi_index !1499
  call void @latencyCount(i64 1500)
  %20 = sub nsw i64 1, %19, !llfi_index !1500
  call void @latencyCount(i64 1501)
  %21 = icmp sgt i64 %17, %20, !llfi_index !1501
  br i1 %21, label %bb7, label %bb8, !llfi_index !1502

bb7:                                              ; preds = %bb6
  store i64 %20, i64* %delta, align 8, !llfi_index !1503
  store i64 0, i64* %xchange, align 8, !llfi_index !1504
  br label %bb8, !llfi_index !1505

bb8:                                              ; preds = %bb7, %bb6, %bb5, %bb3, %bb2
  %iminus.0 = phi %struct.node* [ %iplus_addr.0.ph, %bb3 ], [ %iplus_addr.0.ph, %bb7 ], [ %iminus.2, %bb6 ], [ %iminus.2, %bb5 ], [ %iminus.2, %bb2 ], !llfi_index !1506
  call void @latencyCount(i64 1507)
  %22 = getelementptr inbounds %struct.node* %iplus_addr.0.ph, i64 0, i32 3, !llfi_index !1507
  call void @latencyCount(i64 1508)
  %23 = load %struct.node** %22, align 8, !llfi_index !1508
  br label %bb17.outer, !llfi_index !1509

bb9:                                              ; preds = %bb
  call void @latencyCount(i64 1510)
  %24 = getelementptr inbounds %struct.node* %jplus_addr.0, i64 0, i32 1, !llfi_index !1510
  call void @latencyCount(i64 1511)
  %25 = load i32* %24, align 8, !llfi_index !1511
  call void @latencyCount(i64 1512)
  %26 = icmp eq i32 %25, 0, !llfi_index !1512
  br i1 %26, label %bb10, label %bb13, !llfi_index !1513

bb10:                                             ; preds = %bb9
  call void @latencyCount(i64 1514)
  %27 = load i64* %delta, align 8, !llfi_index !1514
  call void @latencyCount(i64 1515)
  %28 = getelementptr inbounds %struct.node* %jplus_addr.0, i64 0, i32 10, !llfi_index !1515
  call void @latencyCount(i64 1516)
  %29 = load i64* %28, align 8, !llfi_index !1516
  call void @latencyCount(i64 1517)
  %30 = icmp slt i64 %27, %29, !llfi_index !1517
  br i1 %30, label %bb16, label %bb11, !llfi_index !1518

bb11:                                             ; preds = %bb10
  store i64 %29, i64* %delta, align 8, !llfi_index !1519
  store i64 1, i64* %xchange, align 8, !llfi_index !1520
  br label %bb16, !llfi_index !1521

bb13:                                             ; preds = %bb9
  call void @latencyCount(i64 1522)
  %31 = getelementptr inbounds %struct.node* %jplus_addr.0, i64 0, i32 3, !llfi_index !1522
  call void @latencyCount(i64 1523)
  %32 = load %struct.node** %31, align 8, !llfi_index !1523
  call void @latencyCount(i64 1524)
  %33 = getelementptr inbounds %struct.node* %32, i64 0, i32 3, !llfi_index !1524
  call void @latencyCount(i64 1525)
  %34 = load %struct.node** %33, align 8, !llfi_index !1525
  call void @latencyCount(i64 1526)
  %35 = icmp eq %struct.node* %34, null, !llfi_index !1526
  br i1 %35, label %bb16, label %bb14, !llfi_index !1527

bb14:                                             ; preds = %bb13
  call void @latencyCount(i64 1528)
  %36 = load i64* %delta, align 8, !llfi_index !1528
  call void @latencyCount(i64 1529)
  %37 = getelementptr inbounds %struct.node* %jplus_addr.0, i64 0, i32 10, !llfi_index !1529
  call void @latencyCount(i64 1530)
  %38 = load i64* %37, align 8, !llfi_index !1530
  call void @latencyCount(i64 1531)
  %39 = sub nsw i64 1, %38, !llfi_index !1531
  call void @latencyCount(i64 1532)
  %40 = icmp slt i64 %36, %39, !llfi_index !1532
  br i1 %40, label %bb16, label %bb15, !llfi_index !1533

bb15:                                             ; preds = %bb14
  store i64 %39, i64* %delta, align 8, !llfi_index !1534
  store i64 1, i64* %xchange, align 8, !llfi_index !1535
  br label %bb16, !llfi_index !1536

bb16:                                             ; preds = %bb15, %bb14, %bb13, %bb11, %bb10
  %iminus.1 = phi %struct.node* [ %jplus_addr.0, %bb11 ], [ %jplus_addr.0, %bb15 ], [ %iminus.2, %bb14 ], [ %iminus.2, %bb13 ], [ %iminus.2, %bb10 ], !llfi_index !1537
  call void @latencyCount(i64 1538)
  %41 = getelementptr inbounds %struct.node* %jplus_addr.0, i64 0, i32 3, !llfi_index !1538
  call void @latencyCount(i64 1539)
  %42 = load %struct.node** %41, align 8, !llfi_index !1539
  br label %bb17, !llfi_index !1540

bb17:                                             ; preds = %bb16, %bb17.outer
  %jplus_addr.0 = phi %struct.node* [ %42, %bb16 ], [ %jplus_addr.0.ph, %bb17.outer ], !llfi_index !1541
  %iminus.2 = phi %struct.node* [ %iminus.1, %bb16 ], [ %iminus.2.ph, %bb17.outer ], !llfi_index !1542
  call void @latencyCount(i64 1543)
  %43 = icmp eq %struct.node* %iplus_addr.0.ph, %jplus_addr.0, !llfi_index !1543
  call void @qsPlace(i64 1544)
  br i1 %43, label %bb18, label %bb, !llfi_index !1544

bb18:                                             ; preds = %bb17
  store %struct.node* %iplus_addr.0.ph, %struct.node** %w, align 8, !llfi_index !1545
  ret %struct.node* %iminus.2, !llfi_index !1546
}

define void @primal_update_flow(%struct.node* %iplus, %struct.node* %jplus, %struct.node* %w) nounwind {
entry:
  call void @latencyCount(i64 1547)
  %0 = icmp eq %struct.node* %iplus, %w, !llfi_index !1547
  br i1 %0, label %bb10.preheader, label %bb, !llfi_index !1548

bb:                                               ; preds = %bb, %entry
  %iplus_addr.04 = phi %struct.node* [ %6, %bb ], [ %iplus, %entry ], !llfi_index !1549
  call void @latencyCount(i64 1550)
  %1 = getelementptr inbounds %struct.node* %iplus_addr.04, i64 0, i32 1, !llfi_index !1550
  call void @latencyCount(i64 1551)
  %2 = load i32* %1, align 8, !llfi_index !1551
  call void @latencyCount(i64 1552)
  %3 = icmp eq i32 %2, 0, !llfi_index !1552
  call void @latencyCount(i64 1553)
  %4 = getelementptr inbounds %struct.node* %iplus_addr.04, i64 0, i32 10, !llfi_index !1553
  call void @latencyCount(i64 1554)
  %. = zext i1 %3 to i64, !llfi_index !1554
  store i64 %., i64* %4, align 8, !llfi_index !1555
  call void @latencyCount(i64 1556)
  %5 = getelementptr inbounds %struct.node* %iplus_addr.04, i64 0, i32 3, !llfi_index !1556
  call void @latencyCount(i64 1557)
  %6 = load %struct.node** %5, align 8, !llfi_index !1557
  call void @latencyCount(i64 1558)
  %7 = icmp eq %struct.node* %6, %w, !llfi_index !1558
  call void @qsPlace(i64 1559)
  br i1 %7, label %bb10.preheader, label %bb, !llfi_index !1559

bb10.preheader:                                   ; preds = %bb, %entry
  call void @latencyCount(i64 1560)
  %8 = icmp eq %struct.node* %jplus, %w, !llfi_index !1560
  br i1 %8, label %return, label %bb6, !llfi_index !1561

bb6:                                              ; preds = %bb6, %bb10.preheader
  %jplus_addr.03 = phi %struct.node* [ %13, %bb6 ], [ %jplus, %bb10.preheader ], !llfi_index !1562
  call void @latencyCount(i64 1563)
  %9 = getelementptr inbounds %struct.node* %jplus_addr.03, i64 0, i32 1, !llfi_index !1563
  call void @latencyCount(i64 1564)
  %10 = load i32* %9, align 8, !llfi_index !1564
  call void @latencyCount(i64 1565)
  %11 = getelementptr inbounds %struct.node* %jplus_addr.03, i64 0, i32 10, !llfi_index !1565
  call void @latencyCount(i64 1566)
  %not. = icmp ne i32 %10, 0, !llfi_index !1566
  call void @latencyCount(i64 1567)
  %.2 = zext i1 %not. to i64, !llfi_index !1567
  store i64 %.2, i64* %11, align 8, !llfi_index !1568
  call void @latencyCount(i64 1569)
  %12 = getelementptr inbounds %struct.node* %jplus_addr.03, i64 0, i32 3, !llfi_index !1569
  call void @latencyCount(i64 1570)
  %13 = load %struct.node** %12, align 8, !llfi_index !1570
  call void @latencyCount(i64 1571)
  %14 = icmp eq %struct.node* %13, %w, !llfi_index !1571
  call void @qsPlace(i64 1572)
  br i1 %14, label %return, label %bb6, !llfi_index !1572

return:                                           ; preds = %bb6, %bb10.preheader
  ret void, !llfi_index !1573
}

define i64 @primal_net_simplex(%struct.network_t* nocapture %net) nounwind {
entry:
  call void @latencyCount(i64 1574)
  %red_cost_of_bea = alloca i64, align 8, !llfi_index !1574
  call void @latencyCount(i64 1575)
  %0 = getelementptr inbounds %struct.network_t* %net, i64 0, i32 23, !llfi_index !1575
  call void @latencyCount(i64 1576)
  %1 = load %struct.arc** %0, align 8, !llfi_index !1576
  call void @latencyCount(i64 1577)
  %2 = getelementptr inbounds %struct.network_t* %net, i64 0, i32 24, !llfi_index !1577
  call void @latencyCount(i64 1578)
  %3 = load %struct.arc** %2, align 8, !llfi_index !1578
  call void @latencyCount(i64 1579)
  %4 = getelementptr inbounds %struct.network_t* %net, i64 0, i32 5, !llfi_index !1579
  call void @latencyCount(i64 1580)
  %5 = load i64* %4, align 8, !llfi_index !1580
  call void @latencyCount(i64 1581)
  %6 = getelementptr inbounds %struct.network_t* %net, i64 0, i32 27, !llfi_index !1581
  call void @latencyCount(i64 1582)
  %7 = getelementptr inbounds %struct.network_t* %net, i64 0, i32 28, !llfi_index !1582
  call void @latencyCount(i64 1583)
  %8 = getelementptr inbounds %struct.network_t* %net, i64 0, i32 29, !llfi_index !1583
  call void @latencyCount(i64 1584)
  %9 = getelementptr inbounds %struct.network_t* %net, i64 0, i32 16, !llfi_index !1584
  call void @latencyCount(i64 1585)
  %10 = getelementptr inbounds %struct.network_t* %net, i64 0, i32 21, !llfi_index !1585
  br label %bb26.outer, !llfi_index !1586

bb:                                               ; preds = %bb26
  call void @latencyCount(i64 1587)
  %11 = call %struct.arc* @primal_bea_mpp(i64 %5, %struct.arc* %1, %struct.arc* %3, i64* %red_cost_of_bea) nounwind, !llfi_index !1587
  call void @latencyCount(i64 1588)
  %12 = icmp eq %struct.arc* %11, null, !llfi_index !1588
  call void @qsPlace(i64 1589)
  br i1 %12, label %bb26, label %bb1, !llfi_index !1589

bb1:                                              ; preds = %bb
  call void @latencyCount(i64 1590)
  %13 = load i64* %6, align 8, !llfi_index !1590
  call void @latencyCount(i64 1591)
  %14 = add nsw i64 %13, 1, !llfi_index !1591
  store i64 %14, i64* %6, align 8, !llfi_index !1592
  call void @latencyCount(i64 1593)
  %15 = load i64* %red_cost_of_bea, align 8, !llfi_index !1593
  call void @latencyCount(i64 1594)
  %16 = icmp sgt i64 %15, 0, !llfi_index !1594
  call void @latencyCount(i64 1595)
  %17 = getelementptr inbounds %struct.arc* %11, i64 0, i32 2, !llfi_index !1595
  call void @latencyCount(i64 1596)
  %18 = getelementptr inbounds %struct.arc* %11, i64 0, i32 1, !llfi_index !1596
  call void @latencyCount(i64 1597)
  %iplus.0.in = select i1 %16, %struct.node** %17, %struct.node** %18, !llfi_index !1597
  call void @latencyCount(i64 1598)
  %jplus.0.in = select i1 %16, %struct.node** %18, %struct.node** %17, !llfi_index !1598
  call void @latencyCount(i64 1599)
  %jplus.0 = load %struct.node** %jplus.0.in, align 8, !llfi_index !1599
  call void @latencyCount(i64 1600)
  %iplus.0 = load %struct.node** %iplus.0.in, align 8, !llfi_index !1600
  br label %bb17.outer.i, !llfi_index !1601

bb17.outer.i:                                     ; preds = %bb8.i, %bb1
  %19 = phi i64 [ %.ph, %bb1 ], [ %41, %bb8.i ], !llfi_index !1602
  %20 = phi i64 [ 1, %bb1 ], [ %42, %bb8.i ], !llfi_index !1603
  %iplus_addr.0.ph.i = phi %struct.node* [ %iplus.0, %bb1 ], [ %44, %bb8.i ], !llfi_index !1604
  %jplus_addr.0.ph.i = phi %struct.node* [ %jplus.0, %bb1 ], [ %jplus_addr.0.i, %bb8.i ], !llfi_index !1605
  %iminus.2.ph.i = phi %struct.node* [ null, %bb1 ], [ %iminus.0.i, %bb8.i ], !llfi_index !1606
  call void @latencyCount(i64 1607)
  %21 = getelementptr inbounds %struct.node* %iplus_addr.0.ph.i, i64 0, i32 11, !llfi_index !1607
  br label %bb17.i, !llfi_index !1608

bb.i7:                                            ; preds = %bb17.i
  call void @latencyCount(i64 1609)
  %22 = load i64* %21, align 8, !llfi_index !1609
  call void @latencyCount(i64 1610)
  %23 = getelementptr inbounds %struct.node* %jplus_addr.0.i, i64 0, i32 11, !llfi_index !1610
  call void @latencyCount(i64 1611)
  %24 = load i64* %23, align 8, !llfi_index !1611
  call void @latencyCount(i64 1612)
  %25 = icmp slt i64 %22, %24, !llfi_index !1612
  call void @qsPlace(i64 1613)
  br i1 %25, label %bb1.i, label %bb9.i, !llfi_index !1613

bb1.i:                                            ; preds = %bb.i7
  call void @latencyCount(i64 1614)
  %26 = getelementptr inbounds %struct.node* %iplus_addr.0.ph.i, i64 0, i32 1, !llfi_index !1614
  call void @latencyCount(i64 1615)
  %27 = load i32* %26, align 8, !llfi_index !1615
  call void @latencyCount(i64 1616)
  %28 = icmp eq i32 %27, 0, !llfi_index !1616
  br i1 %28, label %bb5.i, label %bb2.i, !llfi_index !1617

bb2.i:                                            ; preds = %bb1.i
  call void @latencyCount(i64 1618)
  %29 = getelementptr inbounds %struct.node* %iplus_addr.0.ph.i, i64 0, i32 10, !llfi_index !1618
  call void @latencyCount(i64 1619)
  %30 = load i64* %29, align 8, !llfi_index !1619
  call void @latencyCount(i64 1620)
  %31 = icmp sgt i64 %65, %30, !llfi_index !1620
  br i1 %31, label %bb3.i, label %bb8.i, !llfi_index !1621

bb3.i:                                            ; preds = %bb2.i
  br label %bb8.i, !llfi_index !1622

bb5.i:                                            ; preds = %bb1.i
  call void @latencyCount(i64 1623)
  %32 = getelementptr inbounds %struct.node* %iplus_addr.0.ph.i, i64 0, i32 3, !llfi_index !1623
  call void @latencyCount(i64 1624)
  %33 = load %struct.node** %32, align 8, !llfi_index !1624
  call void @latencyCount(i64 1625)
  %34 = getelementptr inbounds %struct.node* %33, i64 0, i32 3, !llfi_index !1625
  call void @latencyCount(i64 1626)
  %35 = load %struct.node** %34, align 8, !llfi_index !1626
  call void @latencyCount(i64 1627)
  %36 = icmp eq %struct.node* %35, null, !llfi_index !1627
  br i1 %36, label %bb8.i, label %bb6.i8, !llfi_index !1628

bb6.i8:                                           ; preds = %bb5.i
  call void @latencyCount(i64 1629)
  %37 = getelementptr inbounds %struct.node* %iplus_addr.0.ph.i, i64 0, i32 10, !llfi_index !1629
  call void @latencyCount(i64 1630)
  %38 = load i64* %37, align 8, !llfi_index !1630
  call void @latencyCount(i64 1631)
  %39 = sub nsw i64 1, %38, !llfi_index !1631
  call void @latencyCount(i64 1632)
  %40 = icmp sgt i64 %65, %39, !llfi_index !1632
  br i1 %40, label %bb7.i, label %bb8.i, !llfi_index !1633

bb7.i:                                            ; preds = %bb6.i8
  br label %bb8.i, !llfi_index !1634

bb8.i:                                            ; preds = %bb7.i, %bb6.i8, %bb5.i, %bb3.i, %bb2.i
  %41 = phi i64 [ 0, %bb3.i ], [ 0, %bb7.i ], [ %64, %bb2.i ], [ %64, %bb5.i ], [ %64, %bb6.i8 ], !llfi_index !1635
  %42 = phi i64 [ %30, %bb3.i ], [ %39, %bb7.i ], [ %65, %bb2.i ], [ %65, %bb5.i ], [ %65, %bb6.i8 ], !llfi_index !1636
  %iminus.0.i = phi %struct.node* [ %iplus_addr.0.ph.i, %bb3.i ], [ %iplus_addr.0.ph.i, %bb7.i ], [ %iminus.2.i, %bb2.i ], [ %iminus.2.i, %bb5.i ], [ %iminus.2.i, %bb6.i8 ], !llfi_index !1637
  call void @latencyCount(i64 1638)
  %43 = getelementptr inbounds %struct.node* %iplus_addr.0.ph.i, i64 0, i32 3, !llfi_index !1638
  call void @latencyCount(i64 1639)
  %44 = load %struct.node** %43, align 8, !llfi_index !1639
  br label %bb17.outer.i, !llfi_index !1640

bb9.i:                                            ; preds = %bb.i7
  call void @latencyCount(i64 1641)
  %45 = getelementptr inbounds %struct.node* %jplus_addr.0.i, i64 0, i32 1, !llfi_index !1641
  call void @latencyCount(i64 1642)
  %46 = load i32* %45, align 8, !llfi_index !1642
  call void @latencyCount(i64 1643)
  %47 = icmp eq i32 %46, 0, !llfi_index !1643
  br i1 %47, label %bb10.i9, label %bb13.i, !llfi_index !1644

bb10.i9:                                          ; preds = %bb9.i
  call void @latencyCount(i64 1645)
  %48 = getelementptr inbounds %struct.node* %jplus_addr.0.i, i64 0, i32 10, !llfi_index !1645
  call void @latencyCount(i64 1646)
  %49 = load i64* %48, align 8, !llfi_index !1646
  call void @latencyCount(i64 1647)
  %50 = icmp slt i64 %65, %49, !llfi_index !1647
  br i1 %50, label %bb16.i, label %bb11.i, !llfi_index !1648

bb11.i:                                           ; preds = %bb10.i9
  br label %bb16.i, !llfi_index !1649

bb13.i:                                           ; preds = %bb9.i
  call void @latencyCount(i64 1650)
  %51 = getelementptr inbounds %struct.node* %jplus_addr.0.i, i64 0, i32 3, !llfi_index !1650
  call void @latencyCount(i64 1651)
  %52 = load %struct.node** %51, align 8, !llfi_index !1651
  call void @latencyCount(i64 1652)
  %53 = getelementptr inbounds %struct.node* %52, i64 0, i32 3, !llfi_index !1652
  call void @latencyCount(i64 1653)
  %54 = load %struct.node** %53, align 8, !llfi_index !1653
  call void @latencyCount(i64 1654)
  %55 = icmp eq %struct.node* %54, null, !llfi_index !1654
  br i1 %55, label %bb16.i, label %bb14.i, !llfi_index !1655

bb14.i:                                           ; preds = %bb13.i
  call void @latencyCount(i64 1656)
  %56 = getelementptr inbounds %struct.node* %jplus_addr.0.i, i64 0, i32 10, !llfi_index !1656
  call void @latencyCount(i64 1657)
  %57 = load i64* %56, align 8, !llfi_index !1657
  call void @latencyCount(i64 1658)
  %58 = sub nsw i64 1, %57, !llfi_index !1658
  call void @latencyCount(i64 1659)
  %59 = icmp slt i64 %65, %58, !llfi_index !1659
  br i1 %59, label %bb16.i, label %bb15.i, !llfi_index !1660

bb15.i:                                           ; preds = %bb14.i
  br label %bb16.i, !llfi_index !1661

bb16.i:                                           ; preds = %bb15.i, %bb14.i, %bb13.i, %bb11.i, %bb10.i9
  %60 = phi i64 [ 1, %bb11.i ], [ 1, %bb15.i ], [ %64, %bb14.i ], [ %64, %bb13.i ], [ %64, %bb10.i9 ], !llfi_index !1662
  %61 = phi i64 [ %49, %bb11.i ], [ %58, %bb15.i ], [ %65, %bb14.i ], [ %65, %bb13.i ], [ %65, %bb10.i9 ], !llfi_index !1663
  %iminus.1.i = phi %struct.node* [ %jplus_addr.0.i, %bb11.i ], [ %jplus_addr.0.i, %bb15.i ], [ %iminus.2.i, %bb14.i ], [ %iminus.2.i, %bb13.i ], [ %iminus.2.i, %bb10.i9 ], !llfi_index !1664
  call void @latencyCount(i64 1665)
  %62 = getelementptr inbounds %struct.node* %jplus_addr.0.i, i64 0, i32 3, !llfi_index !1665
  call void @latencyCount(i64 1666)
  %63 = load %struct.node** %62, align 8, !llfi_index !1666
  br label %bb17.i, !llfi_index !1667

bb17.i:                                           ; preds = %bb16.i, %bb17.outer.i
  %64 = phi i64 [ %60, %bb16.i ], [ %19, %bb17.outer.i ], !llfi_index !1668
  %65 = phi i64 [ %61, %bb16.i ], [ %20, %bb17.outer.i ], !llfi_index !1669
  %jplus_addr.0.i = phi %struct.node* [ %63, %bb16.i ], [ %jplus_addr.0.ph.i, %bb17.outer.i ], !llfi_index !1670
  %iminus.2.i = phi %struct.node* [ %iminus.1.i, %bb16.i ], [ %iminus.2.ph.i, %bb17.outer.i ], !llfi_index !1671
  call void @latencyCount(i64 1672)
  %66 = icmp eq %struct.node* %iplus_addr.0.ph.i, %jplus_addr.0.i, !llfi_index !1672
  call void @qsPlace(i64 1673)
  br i1 %66, label %primal_iminus.exit, label %bb.i7, !llfi_index !1673

primal_iminus.exit:                               ; preds = %bb17.i
  call void @latencyCount(i64 1674)
  %67 = icmp eq %struct.node* %iminus.2.i, null, !llfi_index !1674
  br i1 %67, label %bb5, label %bb11, !llfi_index !1675

bb5:                                              ; preds = %primal_iminus.exit
  call void @latencyCount(i64 1676)
  %68 = load i64* %7, align 8, !llfi_index !1676
  call void @latencyCount(i64 1677)
  %69 = add nsw i64 %68, 1, !llfi_index !1677
  store i64 %69, i64* %7, align 8, !llfi_index !1678
  call void @latencyCount(i64 1679)
  %70 = getelementptr inbounds %struct.arc* %11, i64 0, i32 3, !llfi_index !1679
  call void @latencyCount(i64 1680)
  %71 = load i32* %70, align 8, !llfi_index !1680
  call void @latencyCount(i64 1681)
  %72 = icmp eq i32 %71, 2, !llfi_index !1681
  call void @latencyCount(i64 1682)
  %. = select i1 %72, i32 1, i32 2, !llfi_index !1682
  store i32 %., i32* %70, align 8, !llfi_index !1683
  call void @latencyCount(i64 1684)
  %73 = icmp eq i64 %65, 0, !llfi_index !1684
  br i1 %73, label %bb26.outer, label %bb4.i.preheader, !llfi_index !1685

bb4.i.preheader:                                  ; preds = %bb5
  call void @latencyCount(i64 1686)
  %74 = icmp eq %struct.node* %iplus.0, %iplus_addr.0.ph.i, !llfi_index !1686
  br i1 %74, label %bb10.i.loopexit, label %bb.i, !llfi_index !1687

bb.i:                                             ; preds = %bb.i, %bb4.i.preheader
  %iplus_addr.i.039 = phi %struct.node* [ %80, %bb.i ], [ %iplus.0, %bb4.i.preheader ], !llfi_index !1688
  call void @latencyCount(i64 1689)
  %75 = getelementptr inbounds %struct.node* %iplus_addr.i.039, i64 0, i32 1, !llfi_index !1689
  call void @latencyCount(i64 1690)
  %76 = load i32* %75, align 8, !llfi_index !1690
  call void @latencyCount(i64 1691)
  %77 = icmp eq i32 %76, 0, !llfi_index !1691
  call void @latencyCount(i64 1692)
  %78 = getelementptr inbounds %struct.node* %iplus_addr.i.039, i64 0, i32 10, !llfi_index !1692
  call void @latencyCount(i64 1693)
  %.3 = zext i1 %77 to i64, !llfi_index !1693
  store i64 %.3, i64* %78, align 8, !llfi_index !1694
  call void @latencyCount(i64 1695)
  %79 = getelementptr inbounds %struct.node* %iplus_addr.i.039, i64 0, i32 3, !llfi_index !1695
  call void @latencyCount(i64 1696)
  %80 = load %struct.node** %79, align 8, !llfi_index !1696
  call void @latencyCount(i64 1697)
  %81 = icmp eq %struct.node* %80, %iplus_addr.0.ph.i, !llfi_index !1697
  call void @qsPlace(i64 1698)
  br i1 %81, label %bb10.i.loopexit, label %bb.i, !llfi_index !1698

bb6.i:                                            ; preds = %bb10.i.loopexit, %bb6.i
  %jplus_addr.i.040 = phi %struct.node* [ %86, %bb6.i ], [ %jplus.0, %bb10.i.loopexit ], !llfi_index !1699
  call void @latencyCount(i64 1700)
  %82 = getelementptr inbounds %struct.node* %jplus_addr.i.040, i64 0, i32 1, !llfi_index !1700
  call void @latencyCount(i64 1701)
  %83 = load i32* %82, align 8, !llfi_index !1701
  call void @latencyCount(i64 1702)
  %84 = getelementptr inbounds %struct.node* %jplus_addr.i.040, i64 0, i32 10, !llfi_index !1702
  call void @latencyCount(i64 1703)
  %not. = icmp ne i32 %83, 0, !llfi_index !1703
  call void @latencyCount(i64 1704)
  %.4 = zext i1 %not. to i64, !llfi_index !1704
  store i64 %.4, i64* %84, align 8, !llfi_index !1705
  call void @latencyCount(i64 1706)
  %85 = getelementptr inbounds %struct.node* %jplus_addr.i.040, i64 0, i32 3, !llfi_index !1706
  call void @latencyCount(i64 1707)
  %86 = load %struct.node** %85, align 8, !llfi_index !1707
  call void @latencyCount(i64 1708)
  %87 = icmp eq %struct.node* %86, %iplus_addr.0.ph.i, !llfi_index !1708
  call void @qsPlace(i64 1709)
  br i1 %87, label %bb26.outer, label %bb6.i, !llfi_index !1709

bb10.i.loopexit:                                  ; preds = %bb.i, %bb4.i.preheader
  call void @latencyCount(i64 1710)
  %88 = icmp eq %struct.node* %jplus.0, %iplus_addr.0.ph.i, !llfi_index !1710
  br i1 %88, label %bb26.outer, label %bb6.i, !llfi_index !1711

bb11:                                             ; preds = %primal_iminus.exit
  call void @latencyCount(i64 1712)
  %89 = icmp eq i64 %64, 0, !llfi_index !1712
  call void @latencyCount(i64 1713)
  %iplus.1 = select i1 %89, %struct.node* %iplus.0, %struct.node* %jplus.0, !llfi_index !1713
  call void @latencyCount(i64 1714)
  %jplus.1 = select i1 %89, %struct.node* %jplus.0, %struct.node* %iplus.0, !llfi_index !1714
  call void @latencyCount(i64 1715)
  %90 = getelementptr inbounds %struct.node* %iminus.2.i, i64 0, i32 3, !llfi_index !1715
  call void @latencyCount(i64 1716)
  %91 = load %struct.node** %90, align 8, !llfi_index !1716
  call void @latencyCount(i64 1717)
  %92 = getelementptr inbounds %struct.node* %iminus.2.i, i64 0, i32 6, !llfi_index !1717
  call void @latencyCount(i64 1718)
  %93 = load %struct.arc** %92, align 8, !llfi_index !1718
  call void @latencyCount(i64 1719)
  %94 = getelementptr inbounds %struct.node* %iminus.2.i, i64 0, i32 1, !llfi_index !1719
  call void @latencyCount(i64 1720)
  %95 = load i32* %94, align 8, !llfi_index !1720
  call void @latencyCount(i64 1721)
  %96 = sext i32 %95 to i64, !llfi_index !1721
  call void @latencyCount(i64 1722)
  %97 = icmp eq i64 %96, %64, !llfi_index !1722
  call void @latencyCount(i64 1723)
  %.5 = select i1 %97, i32 2, i32 1, !llfi_index !1723
  call void @latencyCount(i64 1724)
  %98 = sub nsw i64 1, %65, !llfi_index !1724
  call void @latencyCount(i64 1725)
  %new_flow.0 = select i1 %16, i64 %98, i64 %65, !llfi_index !1725
  call void @latencyCount(i64 1726)
  %99 = load %struct.node** %18, align 8, !llfi_index !1726
  call void @latencyCount(i64 1727)
  %100 = icmp eq %struct.node* %99, %iplus.1, !llfi_index !1727
  call void @latencyCount(i64 1728)
  %.6 = zext i1 %100 to i64, !llfi_index !1728
  call void @latencyCount(i64 1729)
  %101 = load i64* %9, align 8, !llfi_index !1729
  call void @latencyCount(i64 1730)
  %102 = zext i1 %89 to i64, !llfi_index !1730
  call void @latencyCount(i64 1731)
  call void @update_tree(i64 %102, i64 %.6, i64 %65, i64 %new_flow.0, %struct.node* %iplus.1, %struct.node* %jplus.1, %struct.node* %iminus.2.i, %struct.node* %91, %struct.node* %iplus_addr.0.ph.i, %struct.arc* %11, i64 %15, i64 %101) nounwind, !llfi_index !1731
  call void @latencyCount(i64 1732)
  %103 = getelementptr inbounds %struct.arc* %11, i64 0, i32 3, !llfi_index !1732
  store i32 0, i32* %103, align 8, !llfi_index !1733
  call void @latencyCount(i64 1734)
  %104 = getelementptr inbounds %struct.arc* %93, i64 0, i32 3, !llfi_index !1734
  store i32 %.5, i32* %104, align 8, !llfi_index !1735
  call void @latencyCount(i64 1736)
  %105 = load i64* %6, align 8, !llfi_index !1736
  call void @latencyCount(i64 1737)
  %106 = add nsw i64 %105, -1, !llfi_index !1737
  call void @latencyCount(i64 1738)
  %107 = srem i64 %106, 200, !llfi_index !1738
  call void @latencyCount(i64 1739)
  %108 = icmp eq i64 %107, 0, !llfi_index !1739
  br i1 %108, label %bb23, label %bb26.outer, !llfi_index !1740

bb23:                                             ; preds = %bb11
  call void @latencyCount(i64 1741)
  %109 = load i64* %8, align 8, !llfi_index !1741
  call void @latencyCount(i64 1742)
  %110 = load %struct.node** %10, align 8, !llfi_index !1742
  call void @latencyCount(i64 1743)
  %111 = getelementptr inbounds %struct.node* %110, i64 0, i32 0, !llfi_index !1743
  store i64 -100000000, i64* %111, align 8, !llfi_index !1744
  call void @latencyCount(i64 1745)
  %112 = getelementptr inbounds %struct.node* %110, i64 0, i32 2, !llfi_index !1745
  call void @latencyCount(i64 1746)
  %113 = load %struct.node** %112, align 8, !llfi_index !1746
  call void @latencyCount(i64 1747)
  %114 = icmp eq %struct.node* %113, %110, !llfi_index !1747
  br i1 %114, label %refresh_potential.exit, label %bb5.preheader.i, !llfi_index !1748

bb1.i10:                                          ; preds = %bb5.preheader.i, %bb4.i13
  %checksum.12.i = phi i64 [ %checksum.0.i, %bb4.i13 ], [ %checksum.26.i, %bb5.preheader.i ], !llfi_index !1749
  %node.01.i = phi %struct.node* [ %140, %bb4.i13 ], [ %node.24.i, %bb5.preheader.i ], !llfi_index !1750
  call void @latencyCount(i64 1751)
  %115 = getelementptr inbounds %struct.node* %node.01.i, i64 0, i32 1, !llfi_index !1751
  call void @latencyCount(i64 1752)
  %116 = load i32* %115, align 8, !llfi_index !1752
  call void @latencyCount(i64 1753)
  %117 = icmp eq i32 %116, 1, !llfi_index !1753
  br i1 %117, label %bb2.i11, label %bb3.i12, !llfi_index !1754

bb2.i11:                                          ; preds = %bb1.i10
  call void @latencyCount(i64 1755)
  %118 = getelementptr inbounds %struct.node* %node.01.i, i64 0, i32 6, !llfi_index !1755
  call void @latencyCount(i64 1756)
  %119 = load %struct.arc** %118, align 8, !llfi_index !1756
  call void @latencyCount(i64 1757)
  %120 = getelementptr inbounds %struct.arc* %119, i64 0, i32 0, !llfi_index !1757
  call void @latencyCount(i64 1758)
  %121 = load i64* %120, align 8, !llfi_index !1758
  call void @latencyCount(i64 1759)
  %122 = getelementptr inbounds %struct.node* %node.01.i, i64 0, i32 3, !llfi_index !1759
  call void @latencyCount(i64 1760)
  %123 = load %struct.node** %122, align 8, !llfi_index !1760
  call void @latencyCount(i64 1761)
  %124 = getelementptr inbounds %struct.node* %123, i64 0, i32 0, !llfi_index !1761
  call void @latencyCount(i64 1762)
  %125 = load i64* %124, align 8, !llfi_index !1762
  call void @latencyCount(i64 1763)
  %126 = add nsw i64 %125, %121, !llfi_index !1763
  call void @latencyCount(i64 1764)
  %127 = getelementptr inbounds %struct.node* %node.01.i, i64 0, i32 0, !llfi_index !1764
  store i64 %126, i64* %127, align 8, !llfi_index !1765
  br label %bb4.i13, !llfi_index !1766

bb3.i12:                                          ; preds = %bb1.i10
  call void @latencyCount(i64 1767)
  %128 = getelementptr inbounds %struct.node* %node.01.i, i64 0, i32 3, !llfi_index !1767
  call void @latencyCount(i64 1768)
  %129 = load %struct.node** %128, align 8, !llfi_index !1768
  call void @latencyCount(i64 1769)
  %130 = getelementptr inbounds %struct.node* %129, i64 0, i32 0, !llfi_index !1769
  call void @latencyCount(i64 1770)
  %131 = load i64* %130, align 8, !llfi_index !1770
  call void @latencyCount(i64 1771)
  %132 = getelementptr inbounds %struct.node* %node.01.i, i64 0, i32 6, !llfi_index !1771
  call void @latencyCount(i64 1772)
  %133 = load %struct.arc** %132, align 8, !llfi_index !1772
  call void @latencyCount(i64 1773)
  %134 = getelementptr inbounds %struct.arc* %133, i64 0, i32 0, !llfi_index !1773
  call void @latencyCount(i64 1774)
  %135 = load i64* %134, align 8, !llfi_index !1774
  call void @latencyCount(i64 1775)
  %136 = sub nsw i64 %131, %135, !llfi_index !1775
  call void @latencyCount(i64 1776)
  %137 = getelementptr inbounds %struct.node* %node.01.i, i64 0, i32 0, !llfi_index !1776
  store i64 %136, i64* %137, align 8, !llfi_index !1777
  call void @latencyCount(i64 1778)
  %138 = add nsw i64 %checksum.12.i, 1, !llfi_index !1778
  br label %bb4.i13, !llfi_index !1779

bb4.i13:                                          ; preds = %bb3.i12, %bb2.i11
  %checksum.0.i = phi i64 [ %checksum.12.i, %bb2.i11 ], [ %138, %bb3.i12 ], !llfi_index !1780
  call void @latencyCount(i64 1781)
  %139 = getelementptr inbounds %struct.node* %node.01.i, i64 0, i32 2, !llfi_index !1781
  call void @latencyCount(i64 1782)
  %140 = load %struct.node** %139, align 8, !llfi_index !1782
  call void @latencyCount(i64 1783)
  %141 = icmp eq %struct.node* %140, null, !llfi_index !1783
  call void @qsPlace(i64 1784)
  br i1 %141, label %bb10.loopexit.i, label %bb1.i10, !llfi_index !1784

bb7.i14:                                          ; preds = %bb10.i15
  call void @latencyCount(i64 1785)
  %142 = getelementptr inbounds %struct.node* %node.1.i, i64 0, i32 4, !llfi_index !1785
  call void @latencyCount(i64 1786)
  %143 = load %struct.node** %142, align 8, !llfi_index !1786
  call void @latencyCount(i64 1787)
  %144 = icmp eq %struct.node* %143, null, !llfi_index !1787
  call void @qsPlace(i64 1788)
  br i1 %144, label %bb10.i15, label %bb11.loopexit.i, !llfi_index !1788

bb10.loopexit.i:                                  ; preds = %bb5.preheader.i, %bb4.i13
  %checksum.1.lcssa.i = phi i64 [ %checksum.26.i, %bb5.preheader.i ], [ %checksum.0.i, %bb4.i13 ], !llfi_index !1789
  %tmp.0.lcssa.i = phi %struct.node* [ %tmp.25.i, %bb5.preheader.i ], [ %node.01.i, %bb4.i13 ], !llfi_index !1790
  br label %bb10.i15, !llfi_index !1791

bb10.i15:                                         ; preds = %bb10.loopexit.i, %bb7.i14
  %node.1.i = phi %struct.node* [ %146, %bb7.i14 ], [ %tmp.0.lcssa.i, %bb10.loopexit.i ], !llfi_index !1792
  %tmp.1.i = phi %struct.node* [ null, %bb7.i14 ], [ %tmp.0.lcssa.i, %bb10.loopexit.i ], !llfi_index !1793
  call void @latencyCount(i64 1794)
  %145 = getelementptr inbounds %struct.node* %node.1.i, i64 0, i32 3, !llfi_index !1794
  call void @latencyCount(i64 1795)
  %146 = load %struct.node** %145, align 8, !llfi_index !1795
  call void @latencyCount(i64 1796)
  %147 = icmp eq %struct.node* %146, null, !llfi_index !1796
  call void @qsPlace(i64 1797)
  br i1 %147, label %bb11.loopexit.i, label %bb7.i14, !llfi_index !1797

bb11.loopexit.i:                                  ; preds = %bb10.i15, %bb7.i14
  %node.2.ph.i = phi %struct.node* [ %143, %bb7.i14 ], [ %node.1.i, %bb10.i15 ], !llfi_index !1798
  %tmp.2.ph.i = phi %struct.node* [ %143, %bb7.i14 ], [ %tmp.1.i, %bb10.i15 ], !llfi_index !1799
  call void @latencyCount(i64 1800)
  %148 = icmp eq %struct.node* %node.2.ph.i, %110, !llfi_index !1800
  call void @qsPlace(i64 1801)
  br i1 %148, label %refresh_potential.exit, label %bb5.preheader.i, !llfi_index !1801

bb5.preheader.i:                                  ; preds = %bb11.loopexit.i, %bb23
  %checksum.26.i = phi i64 [ %checksum.1.lcssa.i, %bb11.loopexit.i ], [ 0, %bb23 ], !llfi_index !1802
  %tmp.25.i = phi %struct.node* [ %tmp.2.ph.i, %bb11.loopexit.i ], [ %113, %bb23 ], !llfi_index !1803
  %node.24.i = phi %struct.node* [ %node.2.ph.i, %bb11.loopexit.i ], [ %113, %bb23 ], !llfi_index !1804
  call void @latencyCount(i64 1805)
  %149 = icmp eq %struct.node* %node.24.i, null, !llfi_index !1805
  br i1 %149, label %bb10.loopexit.i, label %bb1.i10, !llfi_index !1806

refresh_potential.exit:                           ; preds = %bb11.loopexit.i, %bb23
  %checksum.2.lcssa.i = phi i64 [ 0, %bb23 ], [ %checksum.1.lcssa.i, %bb11.loopexit.i ], !llfi_index !1807
  call void @latencyCount(i64 1808)
  %150 = add nsw i64 %checksum.2.lcssa.i, %109, !llfi_index !1808
  store i64 %150, i64* %8, align 8, !llfi_index !1809
  br label %bb26.outer, !llfi_index !1810

bb26.outer:                                       ; preds = %refresh_potential.exit, %bb11, %bb10.i.loopexit, %bb6.i, %bb5, %entry
  %.ph = phi i64 [ undef, %entry ], [ %64, %bb5 ], [ %64, %refresh_potential.exit ], [ %64, %bb11 ], [ %64, %bb6.i ], [ %64, %bb10.i.loopexit ], !llfi_index !1811
  %opt.0.ph = phi i64 [ 0, %entry ], [ %opt.0, %bb5 ], [ %opt.0, %refresh_potential.exit ], [ %opt.0, %bb11 ], [ %opt.0, %bb6.i ], [ %opt.0, %bb10.i.loopexit ], !llfi_index !1812
  br label %bb26, !llfi_index !1813

bb26:                                             ; preds = %bb26.outer, %bb
  %opt.0 = phi i64 [ 1, %bb ], [ %opt.0.ph, %bb26.outer ], !llfi_index !1814
  call void @latencyCount(i64 1815)
  %151 = icmp eq i64 %opt.0, 0, !llfi_index !1815
  call void @qsPlace(i64 1816)
  br i1 %151, label %bb, label %bb27, !llfi_index !1816

bb27:                                             ; preds = %bb26
  call void @latencyCount(i64 1817)
  %152 = load i64* %8, align 8, !llfi_index !1817
  call void @latencyCount(i64 1818)
  %153 = load %struct.node** %10, align 8, !llfi_index !1818
  call void @latencyCount(i64 1819)
  %154 = getelementptr inbounds %struct.node* %153, i64 0, i32 0, !llfi_index !1819
  store i64 -100000000, i64* %154, align 8, !llfi_index !1820
  call void @latencyCount(i64 1821)
  %155 = getelementptr inbounds %struct.node* %153, i64 0, i32 2, !llfi_index !1821
  call void @latencyCount(i64 1822)
  %156 = load %struct.node** %155, align 8, !llfi_index !1822
  call void @latencyCount(i64 1823)
  %157 = icmp eq %struct.node* %156, %153, !llfi_index !1823
  br i1 %157, label %refresh_potential.exit38, label %bb5.preheader.i36, !llfi_index !1824

bb1.i18:                                          ; preds = %bb5.preheader.i36, %bb4.i22
  %checksum.12.i16 = phi i64 [ %checksum.0.i21, %bb4.i22 ], [ %checksum.26.i33, %bb5.preheader.i36 ], !llfi_index !1825
  %node.01.i17 = phi %struct.node* [ %183, %bb4.i22 ], [ %node.24.i35, %bb5.preheader.i36 ], !llfi_index !1826
  call void @latencyCount(i64 1827)
  %158 = getelementptr inbounds %struct.node* %node.01.i17, i64 0, i32 1, !llfi_index !1827
  call void @latencyCount(i64 1828)
  %159 = load i32* %158, align 8, !llfi_index !1828
  call void @latencyCount(i64 1829)
  %160 = icmp eq i32 %159, 1, !llfi_index !1829
  br i1 %160, label %bb2.i19, label %bb3.i20, !llfi_index !1830

bb2.i19:                                          ; preds = %bb1.i18
  call void @latencyCount(i64 1831)
  %161 = getelementptr inbounds %struct.node* %node.01.i17, i64 0, i32 6, !llfi_index !1831
  call void @latencyCount(i64 1832)
  %162 = load %struct.arc** %161, align 8, !llfi_index !1832
  call void @latencyCount(i64 1833)
  %163 = getelementptr inbounds %struct.arc* %162, i64 0, i32 0, !llfi_index !1833
  call void @latencyCount(i64 1834)
  %164 = load i64* %163, align 8, !llfi_index !1834
  call void @latencyCount(i64 1835)
  %165 = getelementptr inbounds %struct.node* %node.01.i17, i64 0, i32 3, !llfi_index !1835
  call void @latencyCount(i64 1836)
  %166 = load %struct.node** %165, align 8, !llfi_index !1836
  call void @latencyCount(i64 1837)
  %167 = getelementptr inbounds %struct.node* %166, i64 0, i32 0, !llfi_index !1837
  call void @latencyCount(i64 1838)
  %168 = load i64* %167, align 8, !llfi_index !1838
  call void @latencyCount(i64 1839)
  %169 = add nsw i64 %168, %164, !llfi_index !1839
  call void @latencyCount(i64 1840)
  %170 = getelementptr inbounds %struct.node* %node.01.i17, i64 0, i32 0, !llfi_index !1840
  store i64 %169, i64* %170, align 8, !llfi_index !1841
  br label %bb4.i22, !llfi_index !1842

bb3.i20:                                          ; preds = %bb1.i18
  call void @latencyCount(i64 1843)
  %171 = getelementptr inbounds %struct.node* %node.01.i17, i64 0, i32 3, !llfi_index !1843
  call void @latencyCount(i64 1844)
  %172 = load %struct.node** %171, align 8, !llfi_index !1844
  call void @latencyCount(i64 1845)
  %173 = getelementptr inbounds %struct.node* %172, i64 0, i32 0, !llfi_index !1845
  call void @latencyCount(i64 1846)
  %174 = load i64* %173, align 8, !llfi_index !1846
  call void @latencyCount(i64 1847)
  %175 = getelementptr inbounds %struct.node* %node.01.i17, i64 0, i32 6, !llfi_index !1847
  call void @latencyCount(i64 1848)
  %176 = load %struct.arc** %175, align 8, !llfi_index !1848
  call void @latencyCount(i64 1849)
  %177 = getelementptr inbounds %struct.arc* %176, i64 0, i32 0, !llfi_index !1849
  call void @latencyCount(i64 1850)
  %178 = load i64* %177, align 8, !llfi_index !1850
  call void @latencyCount(i64 1851)
  %179 = sub nsw i64 %174, %178, !llfi_index !1851
  call void @latencyCount(i64 1852)
  %180 = getelementptr inbounds %struct.node* %node.01.i17, i64 0, i32 0, !llfi_index !1852
  store i64 %179, i64* %180, align 8, !llfi_index !1853
  call void @latencyCount(i64 1854)
  %181 = add nsw i64 %checksum.12.i16, 1, !llfi_index !1854
  br label %bb4.i22, !llfi_index !1855

bb4.i22:                                          ; preds = %bb3.i20, %bb2.i19
  %checksum.0.i21 = phi i64 [ %checksum.12.i16, %bb2.i19 ], [ %181, %bb3.i20 ], !llfi_index !1856
  call void @latencyCount(i64 1857)
  %182 = getelementptr inbounds %struct.node* %node.01.i17, i64 0, i32 2, !llfi_index !1857
  call void @latencyCount(i64 1858)
  %183 = load %struct.node** %182, align 8, !llfi_index !1858
  call void @latencyCount(i64 1859)
  %184 = icmp eq %struct.node* %183, null, !llfi_index !1859
  call void @qsPlace(i64 1860)
  br i1 %184, label %bb10.loopexit.i26, label %bb1.i18, !llfi_index !1860

bb7.i23:                                          ; preds = %bb10.i29
  call void @latencyCount(i64 1861)
  %185 = getelementptr inbounds %struct.node* %node.1.i27, i64 0, i32 4, !llfi_index !1861
  call void @latencyCount(i64 1862)
  %186 = load %struct.node** %185, align 8, !llfi_index !1862
  call void @latencyCount(i64 1863)
  %187 = icmp eq %struct.node* %186, null, !llfi_index !1863
  call void @qsPlace(i64 1864)
  br i1 %187, label %bb10.i29, label %bb11.loopexit.i32, !llfi_index !1864

bb10.loopexit.i26:                                ; preds = %bb5.preheader.i36, %bb4.i22
  %checksum.1.lcssa.i24 = phi i64 [ %checksum.26.i33, %bb5.preheader.i36 ], [ %checksum.0.i21, %bb4.i22 ], !llfi_index !1865
  %tmp.0.lcssa.i25 = phi %struct.node* [ %tmp.25.i34, %bb5.preheader.i36 ], [ %node.01.i17, %bb4.i22 ], !llfi_index !1866
  br label %bb10.i29, !llfi_index !1867

bb10.i29:                                         ; preds = %bb10.loopexit.i26, %bb7.i23
  %node.1.i27 = phi %struct.node* [ %189, %bb7.i23 ], [ %tmp.0.lcssa.i25, %bb10.loopexit.i26 ], !llfi_index !1868
  %tmp.1.i28 = phi %struct.node* [ null, %bb7.i23 ], [ %tmp.0.lcssa.i25, %bb10.loopexit.i26 ], !llfi_index !1869
  call void @latencyCount(i64 1870)
  %188 = getelementptr inbounds %struct.node* %node.1.i27, i64 0, i32 3, !llfi_index !1870
  call void @latencyCount(i64 1871)
  %189 = load %struct.node** %188, align 8, !llfi_index !1871
  call void @latencyCount(i64 1872)
  %190 = icmp eq %struct.node* %189, null, !llfi_index !1872
  call void @qsPlace(i64 1873)
  br i1 %190, label %bb11.loopexit.i32, label %bb7.i23, !llfi_index !1873

bb11.loopexit.i32:                                ; preds = %bb10.i29, %bb7.i23
  %node.2.ph.i30 = phi %struct.node* [ %186, %bb7.i23 ], [ %node.1.i27, %bb10.i29 ], !llfi_index !1874
  %tmp.2.ph.i31 = phi %struct.node* [ %186, %bb7.i23 ], [ %tmp.1.i28, %bb10.i29 ], !llfi_index !1875
  call void @latencyCount(i64 1876)
  %191 = icmp eq %struct.node* %node.2.ph.i30, %153, !llfi_index !1876
  call void @qsPlace(i64 1877)
  br i1 %191, label %refresh_potential.exit38, label %bb5.preheader.i36, !llfi_index !1877

bb5.preheader.i36:                                ; preds = %bb11.loopexit.i32, %bb27
  %checksum.26.i33 = phi i64 [ %checksum.1.lcssa.i24, %bb11.loopexit.i32 ], [ 0, %bb27 ], !llfi_index !1878
  %tmp.25.i34 = phi %struct.node* [ %tmp.2.ph.i31, %bb11.loopexit.i32 ], [ %156, %bb27 ], !llfi_index !1879
  %node.24.i35 = phi %struct.node* [ %node.2.ph.i30, %bb11.loopexit.i32 ], [ %156, %bb27 ], !llfi_index !1880
  call void @latencyCount(i64 1881)
  %192 = icmp eq %struct.node* %node.24.i35, null, !llfi_index !1881
  br i1 %192, label %bb10.loopexit.i26, label %bb1.i18, !llfi_index !1882

refresh_potential.exit38:                         ; preds = %bb11.loopexit.i32, %bb27
  %checksum.2.lcssa.i37 = phi i64 [ 0, %bb27 ], [ %checksum.1.lcssa.i24, %bb11.loopexit.i32 ], !llfi_index !1883
  call void @latencyCount(i64 1884)
  %193 = add nsw i64 %checksum.2.lcssa.i37, %152, !llfi_index !1884
  store i64 %193, i64* %8, align 8, !llfi_index !1885
  call void @latencyCount(i64 1886)
  %194 = call i64 @primal_feasible(%struct.network_t* %net) nounwind, !llfi_index !1886
  call void @latencyCount(i64 1887)
  %195 = call i64 @dual_feasible(%struct.network_t* %net) nounwind, !llfi_index !1887
  ret i64 0, !llfi_index !1888
}

define i64 @primal_start_artificial(%struct.network_t* nocapture %net) nounwind {
entry:
  call void @latencyCount(i64 1889)
  %0 = getelementptr inbounds %struct.network_t* %net, i64 0, i32 21, !llfi_index !1889
  call void @latencyCount(i64 1890)
  %1 = load %struct.node** %0, align 8, !llfi_index !1890
  call void @latencyCount(i64 1891)
  %2 = getelementptr inbounds %struct.node* %1, i64 1, !llfi_index !1891
  call void @latencyCount(i64 1892)
  %3 = getelementptr inbounds %struct.node* %1, i64 0, i32 6, !llfi_index !1892
  store %struct.arc* null, %struct.arc** %3, align 8, !llfi_index !1893
  call void @latencyCount(i64 1894)
  %4 = getelementptr inbounds %struct.node* %1, i64 0, i32 3, !llfi_index !1894
  store %struct.node* null, %struct.node** %4, align 8, !llfi_index !1895
  call void @latencyCount(i64 1896)
  %5 = getelementptr inbounds %struct.node* %1, i64 0, i32 2, !llfi_index !1896
  store %struct.node* %2, %struct.node** %5, align 8, !llfi_index !1897
  call void @latencyCount(i64 1898)
  %6 = getelementptr inbounds %struct.node* %1, i64 0, i32 4, !llfi_index !1898
  store %struct.node* null, %struct.node** %6, align 8, !llfi_index !1899
  call void @latencyCount(i64 1900)
  %7 = getelementptr inbounds %struct.node* %1, i64 0, i32 5, !llfi_index !1900
  store %struct.node* null, %struct.node** %7, align 8, !llfi_index !1901
  call void @latencyCount(i64 1902)
  %8 = getelementptr inbounds %struct.network_t* %net, i64 0, i32 2, !llfi_index !1902
  call void @latencyCount(i64 1903)
  %9 = load i64* %8, align 8, !llfi_index !1903
  call void @latencyCount(i64 1904)
  %10 = add nsw i64 %9, 1, !llfi_index !1904
  call void @latencyCount(i64 1905)
  %11 = getelementptr inbounds %struct.node* %1, i64 0, i32 11, !llfi_index !1905
  store i64 %10, i64* %11, align 8, !llfi_index !1906
  call void @latencyCount(i64 1907)
  %12 = getelementptr inbounds %struct.node* %1, i64 0, i32 1, !llfi_index !1907
  store i32 0, i32* %12, align 8, !llfi_index !1908
  call void @latencyCount(i64 1909)
  %13 = getelementptr inbounds %struct.node* %1, i64 0, i32 0, !llfi_index !1909
  store i64 -100000000, i64* %13, align 8, !llfi_index !1910
  call void @latencyCount(i64 1911)
  %14 = getelementptr inbounds %struct.node* %1, i64 0, i32 10, !llfi_index !1911
  store i64 0, i64* %14, align 8, !llfi_index !1912
  call void @latencyCount(i64 1913)
  %15 = getelementptr inbounds %struct.network_t* %net, i64 0, i32 24, !llfi_index !1913
  call void @latencyCount(i64 1914)
  %16 = load %struct.arc** %15, align 8, !llfi_index !1914
  call void @latencyCount(i64 1915)
  %17 = getelementptr inbounds %struct.network_t* %net, i64 0, i32 23, !llfi_index !1915
  call void @latencyCount(i64 1916)
  %18 = load %struct.arc** %17, align 8, !llfi_index !1916
  call void @latencyCount(i64 1917)
  %19 = icmp eq %struct.arc* %18, %16, !llfi_index !1917
  br i1 %19, label %bb4, label %bb, !llfi_index !1918

bb:                                               ; preds = %bb2, %entry
  %indvar20 = phi i64 [ %tmp23, %bb2 ], [ 0, %entry ], !llfi_index !1919
  call void @latencyCount(i64 1920)
  %scevgep22 = getelementptr %struct.arc* %18, i64 %indvar20, i32 3, !llfi_index !1920
  call void @latencyCount(i64 1921)
  %tmp23 = add i64 %indvar20, 1, !llfi_index !1921
  call void @latencyCount(i64 1922)
  %scevgep24 = getelementptr %struct.arc* %18, i64 %tmp23, !llfi_index !1922
  call void @latencyCount(i64 1923)
  %20 = load i32* %scevgep22, align 8, !llfi_index !1923
  call void @latencyCount(i64 1924)
  %21 = icmp eq i32 %20, -1, !llfi_index !1924
  br i1 %21, label %bb2, label %bb1, !llfi_index !1925

bb1:                                              ; preds = %bb
  store i32 1, i32* %scevgep22, align 8, !llfi_index !1926
  br label %bb2, !llfi_index !1927

bb2:                                              ; preds = %bb1, %bb
  call void @latencyCount(i64 1928)
  %22 = icmp eq %struct.arc* %scevgep24, %16, !llfi_index !1928
  call void @qsPlace(i64 1929)
  br i1 %22, label %bb4, label %bb, !llfi_index !1929

bb4:                                              ; preds = %bb2, %entry
  call void @latencyCount(i64 1930)
  %23 = getelementptr inbounds %struct.network_t* %net, i64 0, i32 22, !llfi_index !1930
  call void @latencyCount(i64 1931)
  %24 = load %struct.node** %23, align 8, !llfi_index !1931
  call void @latencyCount(i64 1932)
  %25 = icmp eq %struct.node* %2, %24, !llfi_index !1932
  br i1 %25, label %bb7, label %bb5.lr.ph, !llfi_index !1933

bb5.lr.ph:                                        ; preds = %bb4
  call void @latencyCount(i64 1934)
  %26 = getelementptr inbounds %struct.network_t* %net, i64 0, i32 25, !llfi_index !1934
  call void @latencyCount(i64 1935)
  %27 = load %struct.arc** %26, align 8, !llfi_index !1935
  br label %bb5, !llfi_index !1936

bb5:                                              ; preds = %bb5, %bb5.lr.ph
  %indvar = phi i64 [ 0, %bb5.lr.ph ], [ %tmp, %bb5 ], !llfi_index !1937
  call void @latencyCount(i64 1938)
  %arc.12 = getelementptr %struct.arc* %27, i64 %indvar, !llfi_index !1938
  call void @latencyCount(i64 1939)
  %arc.124 = getelementptr inbounds %struct.arc* %27, i64 %indvar, i32 0, !llfi_index !1939
  call void @latencyCount(i64 1940)
  %scevgep = getelementptr %struct.arc* %27, i64 %indvar, i32 3, !llfi_index !1940
  call void @latencyCount(i64 1941)
  %scevgep5 = getelementptr %struct.arc* %27, i64 %indvar, i32 1, !llfi_index !1941
  call void @latencyCount(i64 1942)
  %scevgep6 = getelementptr %struct.arc* %27, i64 %indvar, i32 2, !llfi_index !1942
  call void @latencyCount(i64 1943)
  %tmp = add i64 %indvar, 1, !llfi_index !1943
  call void @latencyCount(i64 1944)
  %scevgep7 = getelementptr %struct.node* %1, i64 %tmp, i32 6, !llfi_index !1944
  call void @latencyCount(i64 1945)
  %scevgep8 = getelementptr %struct.node* %1, i64 %tmp, i32 3, !llfi_index !1945
  call void @latencyCount(i64 1946)
  %scevgep9 = getelementptr %struct.node* %1, i64 %tmp, i32 2, !llfi_index !1946
  call void @latencyCount(i64 1947)
  %tmp10 = add i64 %indvar, 2, !llfi_index !1947
  call void @latencyCount(i64 1948)
  %scevgep11 = getelementptr %struct.node* %1, i64 %tmp10, !llfi_index !1948
  call void @latencyCount(i64 1949)
  %scevgep12 = getelementptr %struct.node* %1, i64 %tmp, i32 4, !llfi_index !1949
  call void @latencyCount(i64 1950)
  %scevgep13 = getelementptr %struct.node* %1, i64 %indvar, !llfi_index !1950
  call void @latencyCount(i64 1951)
  %scevgep14 = getelementptr %struct.node* %1, i64 %tmp, i32 5, !llfi_index !1951
  call void @latencyCount(i64 1952)
  %scevgep15 = getelementptr %struct.node* %1, i64 %tmp, i32 11, !llfi_index !1952
  call void @latencyCount(i64 1953)
  %scevgep16 = getelementptr %struct.node* %1, i64 %tmp, i32 1, !llfi_index !1953
  call void @latencyCount(i64 1954)
  %node.01 = getelementptr %struct.node* %1, i64 %tmp, !llfi_index !1954
  call void @latencyCount(i64 1955)
  %scevgep1718 = getelementptr inbounds %struct.node* %1, i64 %tmp, i32 0, !llfi_index !1955
  call void @latencyCount(i64 1956)
  %scevgep19 = getelementptr %struct.node* %1, i64 %tmp, i32 10, !llfi_index !1956
  store %struct.arc* %arc.12, %struct.arc** %scevgep7, align 8, !llfi_index !1957
  store %struct.node* %1, %struct.node** %scevgep8, align 8, !llfi_index !1958
  store %struct.node* null, %struct.node** %scevgep9, align 8, !llfi_index !1959
  store %struct.node* %scevgep11, %struct.node** %scevgep12, align 8, !llfi_index !1960
  store %struct.node* %scevgep13, %struct.node** %scevgep14, align 8, !llfi_index !1961
  store i64 1, i64* %scevgep15, align 8, !llfi_index !1962
  store i64 100000000, i64* %arc.124, align 8, !llfi_index !1963
  store i32 0, i32* %scevgep, align 8, !llfi_index !1964
  store i32 1, i32* %scevgep16, align 8, !llfi_index !1965
  store i64 0, i64* %scevgep1718, align 8, !llfi_index !1966
  store %struct.node* %node.01, %struct.node** %scevgep5, align 8, !llfi_index !1967
  store %struct.node* %1, %struct.node** %scevgep6, align 8, !llfi_index !1968
  store i64 0, i64* %scevgep19, align 8, !llfi_index !1969
  call void @latencyCount(i64 1970)
  %28 = icmp eq %struct.node* %scevgep11, %24, !llfi_index !1970
  call void @qsPlace(i64 1971)
  br i1 %28, label %bb7, label %bb5, !llfi_index !1971

bb7:                                              ; preds = %bb5, %bb4
  %node.0.lcssa = phi %struct.node* [ %2, %bb4 ], [ %scevgep11, %bb5 ], !llfi_index !1972
  call void @latencyCount(i64 1973)
  %29 = getelementptr inbounds %struct.node* %node.0.lcssa, i64 -1, i32 4, !llfi_index !1973
  store %struct.node* null, %struct.node** %29, align 8, !llfi_index !1974
  call void @latencyCount(i64 1975)
  %30 = getelementptr inbounds %struct.node* %1, i64 1, i32 5, !llfi_index !1975
  store %struct.node* null, %struct.node** %30, align 8, !llfi_index !1976
  ret i64 0, !llfi_index !1977
}

define i64 @read_min(%struct.network_t* %net) nounwind {
entry:
  call void @latencyCount(i64 1978)
  %instring1 = alloca [201 x i8], align 1, !llfi_index !1978
  call void @latencyCount(i64 1979)
  %t = alloca i64, align 8, !llfi_index !1979
  call void @latencyCount(i64 1980)
  %h = alloca i64, align 8, !llfi_index !1980
  call void @latencyCount(i64 1981)
  %c = alloca i64, align 8, !llfi_index !1981
  call void @latencyCount(i64 1982)
  %instring1.sub = getelementptr inbounds [201 x i8]* %instring1, i64 0, i64 0, !llfi_index !1982
  call void @latencyCount(i64 1983)
  %0 = getelementptr inbounds %struct.network_t* %net, i64 0, i32 0, i64 0, !llfi_index !1983
  call void @latencyCount(i64 1984)
  %1 = call %struct.FILE* @fopen(i8* noalias %0, i8* noalias getelementptr inbounds ([2 x i8]* @.str30, i64 0, i64 0)) nounwind, !llfi_index !1984
  call void @latencyCount(i64 1985)
  %2 = icmp eq %struct.FILE* %1, null, !llfi_index !1985
  br i1 %2, label %bb45, label %bb1, !llfi_index !1986

bb1:                                              ; preds = %entry
  call void @latencyCount(i64 1987)
  %3 = call i8* @fgets(i8* noalias %instring1.sub, i32 200, %struct.FILE* noalias %1) nounwind, !llfi_index !1987
  call void @latencyCount(i64 1988)
  %4 = call i32 (i8*, i8*, ...)* @"\01__isoc99_sscanf"(i8* noalias %instring1.sub, i8* noalias getelementptr inbounds ([8 x i8]* @.str131, i64 0, i64 0), i64* %t, i64* %h) nounwind, !llfi_index !1988
  call void @latencyCount(i64 1989)
  %5 = icmp eq i32 %4, 2, !llfi_index !1989
  br i1 %5, label %bb5, label %bb45, !llfi_index !1990

bb5:                                              ; preds = %bb1
  call void @latencyCount(i64 1991)
  %6 = load i64* %t, align 8, !llfi_index !1991
  call void @latencyCount(i64 1992)
  %7 = getelementptr inbounds %struct.network_t* %net, i64 0, i32 3, !llfi_index !1992
  store i64 %6, i64* %7, align 8, !llfi_index !1993
  call void @latencyCount(i64 1994)
  %8 = load i64* %h, align 8, !llfi_index !1994
  call void @latencyCount(i64 1995)
  %9 = getelementptr inbounds %struct.network_t* %net, i64 0, i32 6, !llfi_index !1995
  store i64 %8, i64* %9, align 8, !llfi_index !1996
  call void @latencyCount(i64 1997)
  %10 = shl nsw i64 %6, 1, !llfi_index !1997
  call void @latencyCount(i64 1998)
  %11 = or i64 %10, 1, !llfi_index !1998
  call void @latencyCount(i64 1999)
  %12 = getelementptr inbounds %struct.network_t* %net, i64 0, i32 2, !llfi_index !1999
  store i64 %11, i64* %12, align 8, !llfi_index !2000
  call void @latencyCount(i64 2001)
  %13 = mul i64 %6, 3, !llfi_index !2001
  call void @latencyCount(i64 2002)
  %14 = add nsw i64 %13, %8, !llfi_index !2002
  call void @latencyCount(i64 2003)
  %15 = getelementptr inbounds %struct.network_t* %net, i64 0, i32 5, !llfi_index !2003
  store i64 %14, i64* %15, align 8, !llfi_index !2004
  call void @latencyCount(i64 2005)
  %16 = icmp slt i64 %6, 15001, !llfi_index !2005
  call void @latencyCount(i64 2006)
  %17 = getelementptr inbounds %struct.network_t* %net, i64 0, i32 4, !llfi_index !2006
  br i1 %16, label %bb6, label %bb7, !llfi_index !2007

bb6:                                              ; preds = %bb5
  store i64 %14, i64* %17, align 8, !llfi_index !2008
  call void @latencyCount(i64 2009)
  %18 = getelementptr inbounds %struct.network_t* %net, i64 0, i32 9, !llfi_index !2009
  store i64 3000000, i64* %18, align 8, !llfi_index !2010
  br label %bb10, !llfi_index !2011

bb7:                                              ; preds = %bb5
  store i64 27328512, i64* %17, align 8, !llfi_index !2012
  call void @latencyCount(i64 2013)
  %19 = getelementptr inbounds %struct.network_t* %net, i64 0, i32 9, !llfi_index !2013
  store i64 28900000, i64* %19, align 8, !llfi_index !2014
  br label %bb10, !llfi_index !2015

bb10:                                             ; preds = %bb7, %bb6
  %20 = phi i64 [ 27328512, %bb7 ], [ %14, %bb6 ], !llfi_index !2016
  call void @latencyCount(i64 2017)
  %21 = sub nsw i64 %20, %14, !llfi_index !2017
  call void @latencyCount(i64 2018)
  %22 = getelementptr inbounds %struct.network_t* %net, i64 0, i32 8, !llfi_index !2018
  store i64 %21, i64* %22, align 8, !llfi_index !2019
  call void @latencyCount(i64 2020)
  %23 = add nsw i64 %11, 1, !llfi_index !2020
  call void @latencyCount(i64 2021)
  %24 = call noalias i8* @calloc(i64 %23, i64 104) nounwind, !llfi_index !2021
  call void @latencyCount(i64 2022)
  %25 = bitcast i8* %24 to %struct.node*, !llfi_index !2022
  call void @latencyCount(i64 2023)
  %26 = getelementptr inbounds %struct.network_t* %net, i64 0, i32 21, !llfi_index !2023
  store %struct.node* %25, %struct.node** %26, align 8, !llfi_index !2024
  call void @latencyCount(i64 2025)
  %27 = load i64* %12, align 8, !llfi_index !2025
  call void @latencyCount(i64 2026)
  %28 = call noalias i8* @calloc(i64 %27, i64 64) nounwind, !llfi_index !2026
  call void @latencyCount(i64 2027)
  %29 = bitcast i8* %28 to %struct.arc*, !llfi_index !2027
  call void @latencyCount(i64 2028)
  %30 = getelementptr inbounds %struct.network_t* %net, i64 0, i32 25, !llfi_index !2028
  store %struct.arc* %29, %struct.arc** %30, align 8, !llfi_index !2029
  call void @latencyCount(i64 2030)
  %31 = load i64* %17, align 8, !llfi_index !2030
  call void @latencyCount(i64 2031)
  %32 = call noalias i8* @calloc(i64 %31, i64 64) nounwind, !llfi_index !2031
  call void @latencyCount(i64 2032)
  %33 = bitcast i8* %32 to %struct.arc*, !llfi_index !2032
  call void @latencyCount(i64 2033)
  %34 = getelementptr inbounds %struct.network_t* %net, i64 0, i32 23, !llfi_index !2033
  store %struct.arc* %33, %struct.arc** %34, align 8, !llfi_index !2034
  call void @latencyCount(i64 2035)
  %35 = load %struct.node** %26, align 8, !llfi_index !2035
  call void @latencyCount(i64 2036)
  %36 = icmp eq %struct.node* %35, null, !llfi_index !2036
  call void @latencyCount(i64 2037)
  %37 = icmp eq i8* %32, null, !llfi_index !2037
  call void @latencyCount(i64 2038)
  %or.cond = or i1 %36, %37, !llfi_index !2038
  br i1 %or.cond, label %bb13, label %bb12, !llfi_index !2039

bb12:                                             ; preds = %bb10
  call void @latencyCount(i64 2040)
  %38 = load %struct.arc** %30, align 8, !llfi_index !2040
  call void @latencyCount(i64 2041)
  %39 = icmp eq %struct.arc* %38, null, !llfi_index !2041
  br i1 %39, label %bb13, label %bb14, !llfi_index !2042

bb13:                                             ; preds = %bb12, %bb10
  call void @latencyCount(i64 2043)
  %40 = call i32 @puts(i8* getelementptr inbounds ([30 x i8]* @.str434, i64 0, i64 0)) nounwind, !llfi_index !2043
  call void @latencyCount(i64 2044)
  %41 = load %struct.node** %26, align 8, !llfi_index !2044
  call void @latencyCount(i64 2045)
  %42 = icmp eq %struct.node* %41, null, !llfi_index !2045
  br i1 %42, label %bb1.i, label %bb.i, !llfi_index !2046

bb.i:                                             ; preds = %bb13
  call void @latencyCount(i64 2047)
  %43 = bitcast %struct.node* %41 to i8*, !llfi_index !2047
  call void @latencyCount(i64 2048)
  call void @free(i8* %43) nounwind, !llfi_index !2048
  br label %bb1.i, !llfi_index !2049

bb1.i:                                            ; preds = %bb.i, %bb13
  call void @latencyCount(i64 2050)
  %44 = load %struct.arc** %34, align 8, !llfi_index !2050
  call void @latencyCount(i64 2051)
  %45 = icmp eq %struct.arc* %44, null, !llfi_index !2051
  br i1 %45, label %bb3.i, label %bb2.i, !llfi_index !2052

bb2.i:                                            ; preds = %bb1.i
  call void @latencyCount(i64 2053)
  %46 = bitcast %struct.arc* %44 to i8*, !llfi_index !2053
  call void @latencyCount(i64 2054)
  call void @free(i8* %46) nounwind, !llfi_index !2054
  br label %bb3.i, !llfi_index !2055

bb3.i:                                            ; preds = %bb2.i, %bb1.i
  call void @latencyCount(i64 2056)
  %47 = load %struct.arc** %30, align 8, !llfi_index !2056
  call void @latencyCount(i64 2057)
  %48 = icmp eq %struct.arc* %47, null, !llfi_index !2057
  br i1 %48, label %getfree.exit, label %bb4.i, !llfi_index !2058

bb4.i:                                            ; preds = %bb3.i
  call void @latencyCount(i64 2059)
  %49 = bitcast %struct.arc* %47 to i8*, !llfi_index !2059
  call void @latencyCount(i64 2060)
  call void @free(i8* %49) nounwind, !llfi_index !2060
  br label %getfree.exit, !llfi_index !2061

getfree.exit:                                     ; preds = %bb4.i, %bb3.i
  call void @latencyCount(i64 2062)
  %50 = getelementptr inbounds %struct.network_t* %net, i64 0, i32 22, !llfi_index !2062
  store %struct.node* null, %struct.node** %50, align 8, !llfi_index !2063
  store %struct.node* null, %struct.node** %26, align 8, !llfi_index !2064
  call void @latencyCount(i64 2065)
  %51 = getelementptr inbounds %struct.network_t* %net, i64 0, i32 24, !llfi_index !2065
  store %struct.arc* null, %struct.arc** %51, align 8, !llfi_index !2066
  store %struct.arc* null, %struct.arc** %34, align 8, !llfi_index !2067
  call void @latencyCount(i64 2068)
  %52 = getelementptr inbounds %struct.network_t* %net, i64 0, i32 26, !llfi_index !2068
  store %struct.arc* null, %struct.arc** %52, align 8, !llfi_index !2069
  store %struct.arc* null, %struct.arc** %30, align 8, !llfi_index !2070
  br label %bb45, !llfi_index !2071

bb14:                                             ; preds = %bb12
  call void @latencyCount(i64 2072)
  %53 = load i64* %12, align 8, !llfi_index !2072
  call void @latencyCount(i64 2073)
  %.sum = add i64 %53, 1, !llfi_index !2073
  call void @latencyCount(i64 2074)
  %54 = getelementptr inbounds %struct.node* %35, i64 %.sum, !llfi_index !2074
  call void @latencyCount(i64 2075)
  %55 = getelementptr inbounds %struct.network_t* %net, i64 0, i32 22, !llfi_index !2075
  store %struct.node* %54, %struct.node** %55, align 8, !llfi_index !2076
  call void @latencyCount(i64 2077)
  %56 = load i64* %15, align 8, !llfi_index !2077
  call void @latencyCount(i64 2078)
  %57 = getelementptr inbounds %struct.arc* %33, i64 %56, !llfi_index !2078
  call void @latencyCount(i64 2079)
  %58 = getelementptr inbounds %struct.network_t* %net, i64 0, i32 24, !llfi_index !2079
  store %struct.arc* %57, %struct.arc** %58, align 8, !llfi_index !2080
  call void @latencyCount(i64 2081)
  %59 = getelementptr inbounds %struct.arc* %38, i64 %53, !llfi_index !2081
  call void @latencyCount(i64 2082)
  %60 = getelementptr inbounds %struct.network_t* %net, i64 0, i32 26, !llfi_index !2082
  store %struct.arc* %59, %struct.arc** %60, align 8, !llfi_index !2083
  call void @latencyCount(i64 2084)
  %61 = getelementptr inbounds %struct.network_t* %net, i64 0, i32 18, !llfi_index !2084
  br label %bb22, !llfi_index !2085

bb15:                                             ; preds = %bb22
  call void @latencyCount(i64 2086)
  %62 = call i8* @fgets(i8* noalias %instring1.sub, i32 200, %struct.FILE* noalias %1) nounwind, !llfi_index !2086
  call void @latencyCount(i64 2087)
  %63 = call i32 (i8*, i8*, ...)* @"\01__isoc99_sscanf"(i8* noalias %instring1.sub, i8* noalias getelementptr inbounds ([8 x i8]* @.str131, i64 0, i64 0), i64* %t, i64* %h) nounwind, !llfi_index !2087
  call void @latencyCount(i64 2088)
  %64 = icmp eq i32 %63, 2, !llfi_index !2088
  call void @qsPlace(i64 2089)
  br i1 %64, label %bb18, label %bb45, !llfi_index !2089

bb18:                                             ; preds = %bb15
  call void @latencyCount(i64 2090)
  %65 = load i64* %t, align 8, !llfi_index !2090
  call void @latencyCount(i64 2091)
  %66 = load i64* %h, align 8, !llfi_index !2091
  call void @latencyCount(i64 2092)
  %67 = icmp sgt i64 %65, %66, !llfi_index !2092
  call void @qsPlace(i64 2093)
  br i1 %67, label %bb45, label %bb20, !llfi_index !2093

bb20:                                             ; preds = %bb18
  store i32 %tmp49, i32* %scevgep45, align 8, !llfi_index !2094
  store i64 -1, i64* %scevgep44, align 8, !llfi_index !2095
  call void @latencyCount(i64 2096)
  %68 = load i64* %7, align 8, !llfi_index !2096
  call void @latencyCount(i64 2097)
  %tmp42 = add i64 %68, %i.0, !llfi_index !2097
  call void @latencyCount(i64 2098)
  %69 = getelementptr inbounds %struct.node* %35, i64 %tmp42, i32 12, !llfi_index !2098
  store i32 %tmp46, i32* %69, align 8, !llfi_index !2099
  call void @latencyCount(i64 2100)
  %70 = load i64* %7, align 8, !llfi_index !2100
  call void @latencyCount(i64 2101)
  %tmp41 = add i64 %70, %i.0, !llfi_index !2101
  call void @latencyCount(i64 2102)
  %71 = getelementptr inbounds %struct.node* %35, i64 %tmp41, i32 10, !llfi_index !2102
  store i64 1, i64* %71, align 8, !llfi_index !2103
  call void @latencyCount(i64 2104)
  %72 = load i64* %t, align 8, !llfi_index !2104
  call void @latencyCount(i64 2105)
  %73 = trunc i64 %72 to i32, !llfi_index !2105
  store i32 %73, i32* %scevgep43, align 4, !llfi_index !2106
  call void @latencyCount(i64 2107)
  %74 = load i64* %7, align 8, !llfi_index !2107
  call void @latencyCount(i64 2108)
  %75 = load i64* %h, align 8, !llfi_index !2108
  call void @latencyCount(i64 2109)
  %76 = trunc i64 %75 to i32, !llfi_index !2109
  call void @latencyCount(i64 2110)
  %tmp40 = add i64 %74, %i.0, !llfi_index !2110
  call void @latencyCount(i64 2111)
  %77 = getelementptr inbounds %struct.node* %35, i64 %tmp40, i32 13, !llfi_index !2111
  store i32 %76, i32* %77, align 4, !llfi_index !2112
  call void @latencyCount(i64 2113)
  %78 = load i64* %12, align 8, !llfi_index !2113
  call void @latencyCount(i64 2114)
  %79 = getelementptr inbounds %struct.node* %35, i64 %78, !llfi_index !2114
  store %struct.node* %79, %struct.node** %scevgep74, align 8, !llfi_index !2115
  store %struct.node* %scevgep50, %struct.node** %scevgep73, align 8, !llfi_index !2116
  call void @latencyCount(i64 2117)
  %80 = load i64* %61, align 8, !llfi_index !2117
  call void @latencyCount(i64 2118)
  %81 = add nsw i64 %80, 15, !llfi_index !2118
  store i64 %81, i64* %arc.072, align 8, !llfi_index !2119
  store i64 %81, i64* %scevgep71, align 8, !llfi_index !2120
  call void @latencyCount(i64 2121)
  %82 = getelementptr inbounds %struct.node* %35, i64 %78, i32 7, !llfi_index !2121
  call void @latencyCount(i64 2122)
  %83 = load %struct.arc** %82, align 8, !llfi_index !2122
  store %struct.arc* %83, %struct.arc** %scevgep70, align 8, !llfi_index !2123
  store %struct.arc* %arc.0, %struct.arc** %82, align 8, !llfi_index !2124
  call void @latencyCount(i64 2125)
  %84 = load %struct.node** %scevgep73, align 8, !llfi_index !2125
  call void @latencyCount(i64 2126)
  %85 = getelementptr inbounds %struct.node* %84, i64 0, i32 8, !llfi_index !2126
  call void @latencyCount(i64 2127)
  %86 = load %struct.arc** %85, align 8, !llfi_index !2127
  store %struct.arc* %86, %struct.arc** %scevgep69, align 8, !llfi_index !2128
  store %struct.arc* %arc.0, %struct.arc** %85, align 8, !llfi_index !2129
  call void @latencyCount(i64 2130)
  %87 = load i64* %7, align 8, !llfi_index !2130
  call void @latencyCount(i64 2131)
  %tmp39 = add i64 %87, %i.0, !llfi_index !2131
  call void @latencyCount(i64 2132)
  %88 = getelementptr inbounds %struct.node* %35, i64 %tmp39, !llfi_index !2132
  store %struct.node* %88, %struct.node** %scevgep67, align 8, !llfi_index !2133
  call void @latencyCount(i64 2134)
  %89 = load i64* %12, align 8, !llfi_index !2134
  call void @latencyCount(i64 2135)
  %90 = getelementptr inbounds %struct.node* %35, i64 %89, !llfi_index !2135
  store %struct.node* %90, %struct.node** %scevgep66, align 8, !llfi_index !2136
  store i64 15, i64* %scevgep6465, align 8, !llfi_index !2137
  store i64 15, i64* %scevgep63, align 8, !llfi_index !2138
  call void @latencyCount(i64 2139)
  %91 = getelementptr inbounds %struct.node* %35, i64 %tmp39, i32 7, !llfi_index !2139
  call void @latencyCount(i64 2140)
  %92 = load %struct.arc** %91, align 8, !llfi_index !2140
  store %struct.arc* %92, %struct.arc** %scevgep62, align 8, !llfi_index !2141
  store %struct.arc* %scevgep64, %struct.arc** %91, align 8, !llfi_index !2142
  call void @latencyCount(i64 2143)
  %93 = load %struct.node** %scevgep66, align 8, !llfi_index !2143
  call void @latencyCount(i64 2144)
  %94 = getelementptr inbounds %struct.node* %93, i64 0, i32 8, !llfi_index !2144
  call void @latencyCount(i64 2145)
  %95 = load %struct.arc** %94, align 8, !llfi_index !2145
  store %struct.arc* %95, %struct.arc** %scevgep61, align 8, !llfi_index !2146
  store %struct.arc* %scevgep64, %struct.arc** %94, align 8, !llfi_index !2147
  store %struct.node* %scevgep50, %struct.node** %scevgep59, align 8, !llfi_index !2148
  call void @latencyCount(i64 2149)
  %96 = load i64* %7, align 8, !llfi_index !2149
  call void @latencyCount(i64 2150)
  %tmp38 = add i64 %96, %i.0, !llfi_index !2150
  call void @latencyCount(i64 2151)
  %97 = getelementptr inbounds %struct.node* %35, i64 %tmp38, !llfi_index !2151
  store %struct.node* %97, %struct.node** %scevgep58, align 8, !llfi_index !2152
  call void @latencyCount(i64 2153)
  %98 = load i64* %61, align 8, !llfi_index !2153
  call void @latencyCount(i64 2154)
  %99 = icmp slt i64 %98, 10000000, !llfi_index !2154
  call void @latencyCount(i64 2155)
  %.op3 = shl i64 %98, 1, !llfi_index !2155
  call void @latencyCount(i64 2156)
  %100 = select i1 %99, i64 20000000, i64 %.op3, !llfi_index !2156
  store i64 %100, i64* %scevgep5657, align 8, !llfi_index !2157
  store i64 %100, i64* %scevgep55, align 8, !llfi_index !2158
  call void @latencyCount(i64 2159)
  %101 = getelementptr inbounds %struct.node* %35, i64 %i.0, i32 7, !llfi_index !2159
  call void @latencyCount(i64 2160)
  %102 = load %struct.arc** %101, align 8, !llfi_index !2160
  store %struct.arc* %102, %struct.arc** %scevgep54, align 8, !llfi_index !2161
  store %struct.arc* %scevgep56, %struct.arc** %101, align 8, !llfi_index !2162
  call void @latencyCount(i64 2163)
  %103 = load %struct.node** %scevgep58, align 8, !llfi_index !2163
  call void @latencyCount(i64 2164)
  %104 = getelementptr inbounds %struct.node* %103, i64 0, i32 8, !llfi_index !2164
  call void @latencyCount(i64 2165)
  %105 = load %struct.arc** %104, align 8, !llfi_index !2165
  store %struct.arc* %105, %struct.arc** %scevgep53, align 8, !llfi_index !2166
  store %struct.arc* %scevgep56, %struct.arc** %104, align 8, !llfi_index !2167
  br label %bb22, !llfi_index !2168

bb22:                                             ; preds = %bb20, %bb14
  %106 = phi i64 [ %i.0, %bb20 ], [ 0, %bb14 ], !llfi_index !2169
  call void @latencyCount(i64 2170)
  %i.0 = add i64 %106, 1, !llfi_index !2170
  call void @latencyCount(i64 2171)
  %scevgep43 = getelementptr %struct.node* %35, i64 %i.0, i32 13, !llfi_index !2171
  call void @latencyCount(i64 2172)
  %scevgep44 = getelementptr %struct.node* %35, i64 %i.0, i32 10, !llfi_index !2172
  call void @latencyCount(i64 2173)
  %scevgep45 = getelementptr %struct.node* %35, i64 %i.0, i32 12, !llfi_index !2173
  call void @latencyCount(i64 2174)
  %tmp46 = trunc i64 %i.0 to i32, !llfi_index !2174
  call void @latencyCount(i64 2175)
  %tmp48 = xor i64 %106, 4294967295, !llfi_index !2175
  call void @latencyCount(i64 2176)
  %tmp49 = trunc i64 %tmp48 to i32, !llfi_index !2176
  call void @latencyCount(i64 2177)
  %scevgep50 = getelementptr %struct.node* %35, i64 %i.0, !llfi_index !2177
  call void @latencyCount(i64 2178)
  %tmp51 = mul i64 %106, 3, !llfi_index !2178
  call void @latencyCount(i64 2179)
  %tmp52 = add i64 %tmp51, 2, !llfi_index !2179
  call void @latencyCount(i64 2180)
  %scevgep53 = getelementptr %struct.arc* %33, i64 %tmp52, i32 5, !llfi_index !2180
  call void @latencyCount(i64 2181)
  %scevgep54 = getelementptr %struct.arc* %33, i64 %tmp52, i32 4, !llfi_index !2181
  call void @latencyCount(i64 2182)
  %scevgep55 = getelementptr %struct.arc* %33, i64 %tmp52, i32 7, !llfi_index !2182
  call void @latencyCount(i64 2183)
  %scevgep56 = getelementptr %struct.arc* %33, i64 %tmp52, !llfi_index !2183
  call void @latencyCount(i64 2184)
  %scevgep5657 = getelementptr inbounds %struct.arc* %33, i64 %tmp52, i32 0, !llfi_index !2184
  call void @latencyCount(i64 2185)
  %scevgep58 = getelementptr %struct.arc* %33, i64 %tmp52, i32 2, !llfi_index !2185
  call void @latencyCount(i64 2186)
  %scevgep59 = getelementptr %struct.arc* %33, i64 %tmp52, i32 1, !llfi_index !2186
  call void @latencyCount(i64 2187)
  %tmp60 = add i64 %tmp51, 1, !llfi_index !2187
  call void @latencyCount(i64 2188)
  %scevgep61 = getelementptr %struct.arc* %33, i64 %tmp60, i32 5, !llfi_index !2188
  call void @latencyCount(i64 2189)
  %scevgep62 = getelementptr %struct.arc* %33, i64 %tmp60, i32 4, !llfi_index !2189
  call void @latencyCount(i64 2190)
  %scevgep63 = getelementptr %struct.arc* %33, i64 %tmp60, i32 7, !llfi_index !2190
  call void @latencyCount(i64 2191)
  %scevgep64 = getelementptr %struct.arc* %33, i64 %tmp60, !llfi_index !2191
  call void @latencyCount(i64 2192)
  %scevgep6465 = getelementptr inbounds %struct.arc* %33, i64 %tmp60, i32 0, !llfi_index !2192
  call void @latencyCount(i64 2193)
  %scevgep66 = getelementptr %struct.arc* %33, i64 %tmp60, i32 2, !llfi_index !2193
  call void @latencyCount(i64 2194)
  %scevgep67 = getelementptr %struct.arc* %33, i64 %tmp60, i32 1, !llfi_index !2194
  call void @latencyCount(i64 2195)
  %arc.0 = getelementptr %struct.arc* %33, i64 %tmp51, !llfi_index !2195
  call void @latencyCount(i64 2196)
  %arc.072 = getelementptr inbounds %struct.arc* %33, i64 %tmp51, i32 0, !llfi_index !2196
  call void @latencyCount(i64 2197)
  %scevgep69 = getelementptr %struct.arc* %33, i64 %tmp51, i32 5, !llfi_index !2197
  call void @latencyCount(i64 2198)
  %scevgep70 = getelementptr %struct.arc* %33, i64 %tmp51, i32 4, !llfi_index !2198
  call void @latencyCount(i64 2199)
  %scevgep71 = getelementptr %struct.arc* %33, i64 %tmp51, i32 7, !llfi_index !2199
  call void @latencyCount(i64 2200)
  %scevgep73 = getelementptr %struct.arc* %33, i64 %tmp51, i32 2, !llfi_index !2200
  call void @latencyCount(i64 2201)
  %scevgep74 = getelementptr %struct.arc* %33, i64 %tmp51, i32 1, !llfi_index !2201
  call void @latencyCount(i64 2202)
  %107 = load i64* %7, align 8, !llfi_index !2202
  call void @latencyCount(i64 2203)
  %108 = icmp slt i64 %107, %i.0, !llfi_index !2203
  call void @qsPlace(i64 2204)
  br i1 %108, label %bb23, label %bb15, !llfi_index !2204

bb23:                                             ; preds = %bb22
  call void @latencyCount(i64 2205)
  %109 = add nsw i64 %107, 1, !llfi_index !2205
  call void @latencyCount(i64 2206)
  %110 = icmp eq i64 %109, %i.0, !llfi_index !2206
  br i1 %110, label %bb31, label %bb45, !llfi_index !2207

bb26:                                             ; preds = %bb31
  call void @latencyCount(i64 2208)
  %111 = call i8* @fgets(i8* noalias %instring1.sub, i32 200, %struct.FILE* noalias %1) nounwind, !llfi_index !2208
  call void @latencyCount(i64 2209)
  %112 = call i32 (i8*, i8*, ...)* @"\01__isoc99_sscanf"(i8* noalias %instring1.sub, i8* noalias getelementptr inbounds ([12 x i8]* @.str535, i64 0, i64 0), i64* %t, i64* %h, i64* %c) nounwind, !llfi_index !2209
  call void @latencyCount(i64 2210)
  %113 = icmp eq i32 %112, 3, !llfi_index !2210
  call void @qsPlace(i64 2211)
  br i1 %113, label %bb30, label %bb45, !llfi_index !2211

bb30:                                             ; preds = %bb26
  call void @latencyCount(i64 2212)
  %114 = load i64* %7, align 8, !llfi_index !2212
  call void @latencyCount(i64 2213)
  %115 = load i64* %t, align 8, !llfi_index !2213
  call void @latencyCount(i64 2214)
  %116 = add nsw i64 %115, %114, !llfi_index !2214
  call void @latencyCount(i64 2215)
  %117 = getelementptr inbounds %struct.node* %35, i64 %116, !llfi_index !2215
  store %struct.node* %117, %struct.node** %scevgep32, align 8, !llfi_index !2216
  call void @latencyCount(i64 2217)
  %118 = load i64* %h, align 8, !llfi_index !2217
  call void @latencyCount(i64 2218)
  %119 = getelementptr inbounds %struct.node* %35, i64 %118, !llfi_index !2218
  store %struct.node* %119, %struct.node** %scevgep31, align 8, !llfi_index !2219
  call void @latencyCount(i64 2220)
  %120 = load i64* %c, align 8, !llfi_index !2220
  store i64 %120, i64* %scevgep30, align 8, !llfi_index !2221
  store i64 %120, i64* %arc.129, align 8, !llfi_index !2222
  call void @latencyCount(i64 2223)
  %121 = getelementptr inbounds %struct.node* %35, i64 %116, i32 7, !llfi_index !2223
  call void @latencyCount(i64 2224)
  %122 = load %struct.arc** %121, align 8, !llfi_index !2224
  store %struct.arc* %122, %struct.arc** %scevgep28, align 8, !llfi_index !2225
  store %struct.arc* %arc.1, %struct.arc** %121, align 8, !llfi_index !2226
  call void @latencyCount(i64 2227)
  %123 = load %struct.node** %scevgep31, align 8, !llfi_index !2227
  call void @latencyCount(i64 2228)
  %124 = getelementptr inbounds %struct.node* %123, i64 0, i32 8, !llfi_index !2228
  call void @latencyCount(i64 2229)
  %125 = load %struct.arc** %124, align 8, !llfi_index !2229
  store %struct.arc* %125, %struct.arc** %scevgep27, align 8, !llfi_index !2230
  store %struct.arc* %arc.1, %struct.arc** %124, align 8, !llfi_index !2231
  call void @latencyCount(i64 2232)
  %126 = add nsw i64 %127, 1, !llfi_index !2232
  br label %bb31, !llfi_index !2233

bb31:                                             ; preds = %bb30, %bb23
  %127 = phi i64 [ %126, %bb30 ], [ 0, %bb23 ], !llfi_index !2234
  call void @latencyCount(i64 2235)
  %tmp25 = add i64 %tmp51, %127, !llfi_index !2235
  call void @latencyCount(i64 2236)
  %arc.1 = getelementptr %struct.arc* %33, i64 %tmp25, !llfi_index !2236
  call void @latencyCount(i64 2237)
  %arc.129 = getelementptr inbounds %struct.arc* %33, i64 %tmp25, i32 0, !llfi_index !2237
  call void @latencyCount(i64 2238)
  %scevgep27 = getelementptr %struct.arc* %33, i64 %tmp25, i32 5, !llfi_index !2238
  call void @latencyCount(i64 2239)
  %scevgep28 = getelementptr %struct.arc* %33, i64 %tmp25, i32 4, !llfi_index !2239
  call void @latencyCount(i64 2240)
  %scevgep30 = getelementptr %struct.arc* %33, i64 %tmp25, i32 7, !llfi_index !2240
  call void @latencyCount(i64 2241)
  %scevgep31 = getelementptr %struct.arc* %33, i64 %tmp25, i32 2, !llfi_index !2241
  call void @latencyCount(i64 2242)
  %scevgep32 = getelementptr %struct.arc* %33, i64 %tmp25, i32 1, !llfi_index !2242
  call void @latencyCount(i64 2243)
  %128 = load i64* %9, align 8, !llfi_index !2243
  call void @latencyCount(i64 2244)
  %129 = icmp sgt i64 %128, %127, !llfi_index !2244
  call void @qsPlace(i64 2245)
  br i1 %129, label %bb26, label %bb32, !llfi_index !2245

bb32:                                             ; preds = %bb31
  call void @latencyCount(i64 2246)
  %130 = load %struct.arc** %58, align 8, !llfi_index !2246
  call void @latencyCount(i64 2247)
  %131 = icmp eq %struct.arc* %130, %arc.1, !llfi_index !2247
  br i1 %131, label %bb37, label %bb33, !llfi_index !2248

bb33:                                             ; preds = %bb32
  store %struct.arc* %arc.1, %struct.arc** %58, align 8, !llfi_index !2249
  call void @latencyCount(i64 2250)
  %132 = load %struct.arc** %34, align 8, !llfi_index !2250
  store i64 0, i64* %15, align 8, !llfi_index !2251
  call void @latencyCount(i64 2252)
  %133 = icmp ugt %struct.arc* %arc.1, %132, !llfi_index !2252
  br i1 %133, label %bb34, label %bb36, !llfi_index !2253

bb34:                                             ; preds = %bb34, %bb33
  %134 = phi i64 [ %tmp, %bb34 ], [ 0, %bb33 ], !llfi_index !2254
  call void @latencyCount(i64 2255)
  %tmp = add i64 %134, 1, !llfi_index !2255
  call void @latencyCount(i64 2256)
  %scevgep = getelementptr %struct.arc* %132, i64 %tmp, !llfi_index !2256
  call void @latencyCount(i64 2257)
  %135 = icmp ugt %struct.arc* %arc.1, %scevgep, !llfi_index !2257
  call void @qsPlace(i64 2258)
  br i1 %135, label %bb34, label %bb35.bb36_crit_edge, !llfi_index !2258

bb35.bb36_crit_edge:                              ; preds = %bb34
  store i64 %tmp, i64* %15, align 8, !llfi_index !2259
  br label %bb36, !llfi_index !2260

bb36:                                             ; preds = %bb35.bb36_crit_edge, %bb33
  %.lcssa = phi i64 [ %tmp, %bb35.bb36_crit_edge ], [ 0, %bb33 ], !llfi_index !2261
  store i64 %.lcssa, i64* %9, align 8, !llfi_index !2262
  br label %bb37, !llfi_index !2263

bb37:                                             ; preds = %bb36, %bb32
  call void @latencyCount(i64 2264)
  %136 = call i32 @fclose(%struct.FILE* %1) nounwind, !llfi_index !2264
  call void @latencyCount(i64 2265)
  %137 = getelementptr inbounds %struct.network_t* %net, i64 0, i32 1, i64 0, !llfi_index !2265
  store i8 0, i8* %137, align 1, !llfi_index !2266
  call void @latencyCount(i64 2267)
  %138 = load i64* %7, align 8, !llfi_index !2267
  call void @latencyCount(i64 2268)
  %139 = icmp slt i64 %138, 1, !llfi_index !2268
  br i1 %139, label %bb45, label %bb38, !llfi_index !2269

bb38:                                             ; preds = %bb38, %bb37
  %indvar = phi i64 [ %indvar.next, %bb38 ], [ 0, %bb37 ], !llfi_index !2270
  call void @latencyCount(i64 2271)
  %tmp15 = mul i64 %indvar, 3, !llfi_index !2271
  call void @latencyCount(i64 2272)
  %tmp16 = add i64 %tmp15, 2, !llfi_index !2272
  call void @latencyCount(i64 2273)
  %tmp20 = add i64 %indvar, 2, !llfi_index !2273
  call void @latencyCount(i64 2274)
  %140 = load %struct.arc** %34, align 8, !llfi_index !2274
  call void @latencyCount(i64 2275)
  %141 = load i64* %61, align 8, !llfi_index !2275
  call void @latencyCount(i64 2276)
  %142 = icmp slt i64 %141, 10000000, !llfi_index !2276
  call void @latencyCount(i64 2277)
  %.op = mul i64 %141, -2, !llfi_index !2277
  call void @latencyCount(i64 2278)
  %143 = select i1 %142, i64 -20000000, i64 %.op, !llfi_index !2278
  call void @latencyCount(i64 2279)
  %scevgep1819 = getelementptr inbounds %struct.arc* %140, i64 %tmp16, i32 0, !llfi_index !2279
  store i64 %143, i64* %scevgep1819, align 8, !llfi_index !2280
  call void @latencyCount(i64 2281)
  %144 = load %struct.arc** %34, align 8, !llfi_index !2281
  call void @latencyCount(i64 2282)
  %145 = load i64* %61, align 8, !llfi_index !2282
  call void @latencyCount(i64 2283)
  %146 = icmp slt i64 %145, 10000000, !llfi_index !2283
  call void @latencyCount(i64 2284)
  %.op2 = mul i64 %145, -2, !llfi_index !2284
  call void @latencyCount(i64 2285)
  %147 = select i1 %146, i64 -20000000, i64 %.op2, !llfi_index !2285
  call void @latencyCount(i64 2286)
  %scevgep17 = getelementptr %struct.arc* %144, i64 %tmp16, i32 7, !llfi_index !2286
  store i64 %147, i64* %scevgep17, align 8, !llfi_index !2287
  call void @latencyCount(i64 2288)
  %148 = load i64* %7, align 8, !llfi_index !2288
  call void @latencyCount(i64 2289)
  %149 = icmp slt i64 %148, %tmp20, !llfi_index !2289
  call void @latencyCount(i64 2290)
  %indvar.next = add i64 %indvar, 1, !llfi_index !2290
  call void @qsPlace(i64 2291)
  br i1 %149, label %bb45, label %bb38, !llfi_index !2291

bb45:                                             ; preds = %bb38, %bb37, %bb26, %bb23, %bb18, %bb15, %getfree.exit, %bb1, %entry
  %.0 = phi i64 [ -1, %getfree.exit ], [ -1, %entry ], [ -1, %bb1 ], [ -1, %bb23 ], [ 0, %bb38 ], [ 0, %bb37 ], [ -1, %bb26 ], [ -1, %bb15 ], [ -1, %bb18 ], !llfi_index !2292
  ret i64 %.0, !llfi_index !2293
}

declare i8* @fgets(i8* noalias, i32, %struct.FILE* noalias nocapture) nounwind

declare i32 @"\01__isoc99_sscanf"(i8* noalias nocapture, i8* noalias nocapture, ...) nounwind

declare noalias i8* @calloc(i64, i64) nounwind

define void @update_tree(i64 %cycle_ori, i64 %new_orientation, i64 %delta, i64 %new_flow, %struct.node* %iplus, %struct.node* %jplus, %struct.node* %iminus, %struct.node* %jminus, %struct.node* %w, %struct.arc* %bea, i64 %sigma, i64 %feas_tol) nounwind {
entry:
  call void @latencyCount(i64 2294)
  %0 = getelementptr inbounds %struct.arc* %bea, i64 0, i32 1, !llfi_index !2294
  call void @latencyCount(i64 2295)
  %1 = load %struct.node** %0, align 8, !llfi_index !2295
  call void @latencyCount(i64 2296)
  %2 = icmp eq %struct.node* %1, %jplus, !llfi_index !2296
  call void @latencyCount(i64 2297)
  %3 = icmp slt i64 %sigma, 0, !llfi_index !2297
  call void @latencyCount(i64 2298)
  %or.cond = and i1 %2, %3, !llfi_index !2298
  br i1 %or.cond, label %bb3, label %bb1, !llfi_index !2299

bb1:                                              ; preds = %entry
  call void @latencyCount(i64 2300)
  %4 = icmp eq %struct.node* %1, %iplus, !llfi_index !2300
  call void @latencyCount(i64 2301)
  %5 = icmp sgt i64 %sigma, 0, !llfi_index !2301
  call void @latencyCount(i64 2302)
  %or.cond2 = and i1 %4, %5, !llfi_index !2302
  br i1 %or.cond2, label %bb3, label %bb4, !llfi_index !2303

bb3:                                              ; preds = %bb1, %entry
  call void @latencyCount(i64 2304)
  %neg = sub i64 0, %sigma, !llfi_index !2304
  call void @latencyCount(i64 2305)
  %abscond = icmp sgt i64 %sigma, -1, !llfi_index !2305
  call void @latencyCount(i64 2306)
  %abs = select i1 %abscond, i64 %sigma, i64 %neg, !llfi_index !2306
  br label %bb9, !llfi_index !2307

bb4:                                              ; preds = %bb1
  call void @latencyCount(i64 2308)
  %neg5 = sub i64 0, %sigma, !llfi_index !2308
  call void @latencyCount(i64 2309)
  %abscond6 = icmp sgt i64 %sigma, -1, !llfi_index !2309
  call void @latencyCount(i64 2310)
  %abs7 = select i1 %abscond6, i64 %sigma, i64 %neg5, !llfi_index !2310
  call void @latencyCount(i64 2311)
  %6 = sub nsw i64 0, %abs7, !llfi_index !2311
  br label %bb9, !llfi_index !2312

bb9:                                              ; preds = %bb4, %bb3
  %sigma_addr.0 = phi i64 [ %6, %bb4 ], [ %abs, %bb3 ], !llfi_index !2313
  call void @latencyCount(i64 2314)
  %7 = getelementptr inbounds %struct.node* %iminus, i64 0, i32 0, !llfi_index !2314
  call void @latencyCount(i64 2315)
  %8 = load i64* %7, align 8, !llfi_index !2315
  call void @latencyCount(i64 2316)
  %9 = add nsw i64 %8, %sigma_addr.0, !llfi_index !2316
  store i64 %9, i64* %7, align 8, !llfi_index !2317
  br label %RECURSION, !llfi_index !2318

RECURSION:                                        ; preds = %ITERATION, %bb9
  %father.0 = phi %struct.node* [ %iminus, %bb9 ], [ %temp.0, %ITERATION ], !llfi_index !2319
  call void @latencyCount(i64 2320)
  %10 = getelementptr inbounds %struct.node* %father.0, i64 0, i32 2, !llfi_index !2320
  call void @latencyCount(i64 2321)
  %11 = load %struct.node** %10, align 8, !llfi_index !2321
  call void @latencyCount(i64 2322)
  %12 = icmp eq %struct.node* %11, null, !llfi_index !2322
  br i1 %12, label %TEST, label %ITERATION, !llfi_index !2323

ITERATION:                                        ; preds = %bb10, %RECURSION
  %temp.0 = phi %struct.node* [ %11, %RECURSION ], [ %18, %bb10 ], !llfi_index !2324
  call void @latencyCount(i64 2325)
  %13 = getelementptr inbounds %struct.node* %temp.0, i64 0, i32 0, !llfi_index !2325
  call void @latencyCount(i64 2326)
  %14 = load i64* %13, align 8, !llfi_index !2326
  call void @latencyCount(i64 2327)
  %15 = add nsw i64 %14, %sigma_addr.0, !llfi_index !2327
  store i64 %15, i64* %13, align 8, !llfi_index !2328
  br label %RECURSION, !llfi_index !2329

TEST:                                             ; preds = %bb11, %RECURSION
  %father.1 = phi %struct.node* [ %21, %bb11 ], [ %father.0, %RECURSION ], !llfi_index !2330
  call void @latencyCount(i64 2331)
  %16 = icmp eq %struct.node* %father.1, %iminus, !llfi_index !2331
  call void @qsPlace(i64 2332)
  br i1 %16, label %CONTINUE, label %bb10, !llfi_index !2332

bb10:                                             ; preds = %TEST
  call void @latencyCount(i64 2333)
  %17 = getelementptr inbounds %struct.node* %father.1, i64 0, i32 4, !llfi_index !2333
  call void @latencyCount(i64 2334)
  %18 = load %struct.node** %17, align 8, !llfi_index !2334
  call void @latencyCount(i64 2335)
  %19 = icmp eq %struct.node* %18, null, !llfi_index !2335
  call void @qsPlace(i64 2336)
  br i1 %19, label %bb11, label %ITERATION, !llfi_index !2336

bb11:                                             ; preds = %bb10
  call void @latencyCount(i64 2337)
  %20 = getelementptr inbounds %struct.node* %father.1, i64 0, i32 3, !llfi_index !2337
  call void @latencyCount(i64 2338)
  %21 = load %struct.node** %20, align 8, !llfi_index !2338
  br label %TEST, !llfi_index !2339

CONTINUE:                                         ; preds = %TEST
  call void @latencyCount(i64 2340)
  %22 = getelementptr inbounds %struct.node* %iminus, i64 0, i32 11, !llfi_index !2340
  call void @latencyCount(i64 2341)
  %23 = load i64* %22, align 8, !llfi_index !2341
  call void @latencyCount(i64 2342)
  %father.2.in10 = getelementptr inbounds %struct.node* %iplus, i64 0, i32 3, !llfi_index !2342
  call void @latencyCount(i64 2343)
  %24 = icmp eq %struct.node* %iplus, %jminus, !llfi_index !2343
  br i1 %24, label %bb24, label %bb12.lr.ph, !llfi_index !2344

bb12.lr.ph:                                       ; preds = %CONTINUE
  call void @latencyCount(i64 2345)
  %tmp = sub i64 0, %delta, !llfi_index !2345
  br label %bb12, !llfi_index !2346

bb12:                                             ; preds = %bb19, %bb12.lr.ph
  %father.219.in = phi %struct.node** [ %father.2.in10, %bb12.lr.ph ], [ %father.2.in, %bb19 ], !llfi_index !2347
  %new_orientation_addr.017 = phi i64 [ %new_orientation, %bb12.lr.ph ], [ %42, %bb19 ], !llfi_index !2348
  %new_depth.016 = phi i64 [ %23, %bb12.lr.ph ], [ %51, %bb19 ], !llfi_index !2349
  %new_flow_addr.015 = phi i64 [ %new_flow, %bb12.lr.ph ], [ %flow_temp.0, %bb19 ], !llfi_index !2350
  %new_pred.014 = phi %struct.node* [ %jplus, %bb12.lr.ph ], [ %iplus.pn13, %bb19 ], !llfi_index !2351
  %iplus.pn13 = phi %struct.node* [ %iplus, %bb12.lr.ph ], [ %father.219, %bb19 ], !llfi_index !2352
  %new_basic_arc.012 = phi %struct.arc* [ %bea, %bb12.lr.ph ], [ %47, %bb19 ], !llfi_index !2353
  call void @latencyCount(i64 2354)
  %father.219 = load %struct.node** %father.219.in, align 8, !llfi_index !2354
  call void @latencyCount(i64 2355)
  %25 = getelementptr inbounds %struct.node* %iplus.pn13, i64 0, i32 4, !llfi_index !2355
  call void @latencyCount(i64 2356)
  %26 = load %struct.node** %25, align 8, !llfi_index !2356
  call void @latencyCount(i64 2357)
  %27 = icmp eq %struct.node* %26, null, !llfi_index !2357
  call void @latencyCount(i64 2358)
  %.pre20 = getelementptr inbounds %struct.node* %iplus.pn13, i64 0, i32 5, !llfi_index !2358
  br i1 %27, label %bb14, label %bb13, !llfi_index !2359

bb13:                                             ; preds = %bb12
  call void @latencyCount(i64 2360)
  %28 = load %struct.node** %.pre20, align 8, !llfi_index !2360
  call void @latencyCount(i64 2361)
  %29 = getelementptr inbounds %struct.node* %26, i64 0, i32 5, !llfi_index !2361
  store %struct.node* %28, %struct.node** %29, align 8, !llfi_index !2362
  call void @latencyCount(i64 2363)
  %.pre = load %struct.node** %25, align 8, !llfi_index !2363
  br label %bb14, !llfi_index !2364

bb14:                                             ; preds = %bb13, %bb12
  %30 = phi %struct.node* [ %.pre, %bb13 ], [ null, %bb12 ], !llfi_index !2365
  call void @latencyCount(i64 2366)
  %31 = load %struct.node** %.pre20, align 8, !llfi_index !2366
  call void @latencyCount(i64 2367)
  %32 = icmp eq %struct.node* %31, null, !llfi_index !2367
  br i1 %32, label %bb16, label %bb15, !llfi_index !2368

bb15:                                             ; preds = %bb14
  call void @latencyCount(i64 2369)
  %33 = getelementptr inbounds %struct.node* %31, i64 0, i32 4, !llfi_index !2369
  store %struct.node* %30, %struct.node** %33, align 8, !llfi_index !2370
  br label %bb17, !llfi_index !2371

bb16:                                             ; preds = %bb14
  call void @latencyCount(i64 2372)
  %34 = getelementptr inbounds %struct.node* %father.219, i64 0, i32 2, !llfi_index !2372
  store %struct.node* %30, %struct.node** %34, align 8, !llfi_index !2373
  br label %bb17, !llfi_index !2374

bb17:                                             ; preds = %bb16, %bb15
  store %struct.node* %new_pred.014, %struct.node** %father.219.in, align 8, !llfi_index !2375
  call void @latencyCount(i64 2376)
  %35 = getelementptr inbounds %struct.node* %new_pred.014, i64 0, i32 2, !llfi_index !2376
  call void @latencyCount(i64 2377)
  %36 = load %struct.node** %35, align 8, !llfi_index !2377
  store %struct.node* %36, %struct.node** %25, align 8, !llfi_index !2378
  call void @latencyCount(i64 2379)
  %37 = icmp eq %struct.node* %36, null, !llfi_index !2379
  br i1 %37, label %bb19, label %bb18, !llfi_index !2380

bb18:                                             ; preds = %bb17
  call void @latencyCount(i64 2381)
  %38 = getelementptr inbounds %struct.node* %36, i64 0, i32 5, !llfi_index !2381
  store %struct.node* %iplus.pn13, %struct.node** %38, align 8, !llfi_index !2382
  br label %bb19, !llfi_index !2383

bb19:                                             ; preds = %bb18, %bb17
  store %struct.node* %iplus.pn13, %struct.node** %35, align 8, !llfi_index !2384
  store %struct.node* null, %struct.node** %.pre20, align 8, !llfi_index !2385
  call void @latencyCount(i64 2386)
  %39 = getelementptr inbounds %struct.node* %iplus.pn13, i64 0, i32 1, !llfi_index !2386
  call void @latencyCount(i64 2387)
  %40 = load i32* %39, align 8, !llfi_index !2387
  call void @latencyCount(i64 2388)
  %41 = icmp eq i32 %40, 0, !llfi_index !2388
  call void @latencyCount(i64 2389)
  %42 = zext i1 %41 to i64, !llfi_index !2389
  call void @latencyCount(i64 2390)
  %43 = icmp eq i64 %42, %cycle_ori, !llfi_index !2390
  call void @latencyCount(i64 2391)
  %44 = getelementptr inbounds %struct.node* %iplus.pn13, i64 0, i32 10, !llfi_index !2391
  call void @latencyCount(i64 2392)
  %45 = load i64* %44, align 8, !llfi_index !2392
  call void @latencyCount(i64 2393)
  %flow_temp.0.p = select i1 %43, i64 %delta, i64 %tmp, !llfi_index !2393
  call void @latencyCount(i64 2394)
  %flow_temp.0 = add i64 %flow_temp.0.p, %45, !llfi_index !2394
  call void @latencyCount(i64 2395)
  %46 = getelementptr inbounds %struct.node* %iplus.pn13, i64 0, i32 6, !llfi_index !2395
  call void @latencyCount(i64 2396)
  %47 = load %struct.arc** %46, align 8, !llfi_index !2396
  call void @latencyCount(i64 2397)
  %48 = getelementptr inbounds %struct.node* %iplus.pn13, i64 0, i32 11, !llfi_index !2397
  call void @latencyCount(i64 2398)
  %49 = load i64* %48, align 8, !llfi_index !2398
  call void @latencyCount(i64 2399)
  %50 = trunc i64 %new_orientation_addr.017 to i32, !llfi_index !2399
  store i32 %50, i32* %39, align 8, !llfi_index !2400
  store i64 %new_flow_addr.015, i64* %44, align 8, !llfi_index !2401
  store %struct.arc* %new_basic_arc.012, %struct.arc** %46, align 8, !llfi_index !2402
  store i64 %new_depth.016, i64* %48, align 8, !llfi_index !2403
  call void @latencyCount(i64 2404)
  %51 = sub nsw i64 %23, %49, !llfi_index !2404
  call void @latencyCount(i64 2405)
  %father.2.in = getelementptr inbounds %struct.node* %father.219, i64 0, i32 3, !llfi_index !2405
  call void @latencyCount(i64 2406)
  %52 = icmp eq %struct.node* %father.219, %jminus, !llfi_index !2406
  call void @qsPlace(i64 2407)
  br i1 %52, label %bb24, label %bb12, !llfi_index !2407

bb24:                                             ; preds = %bb19, %CONTINUE
  call void @latencyCount(i64 2408)
  %53 = icmp sgt i64 %delta, %feas_tol, !llfi_index !2408
  call void @latencyCount(i64 2409)
  %54 = icmp eq %struct.node* %jminus, %w, !llfi_index !2409
  br i1 %53, label %bb30.preheader, label %bb40.preheader, !llfi_index !2410

bb30.preheader:                                   ; preds = %bb24
  br i1 %54, label %bb36.preheader, label %bb26.lr.ph, !llfi_index !2411

bb26.lr.ph:                                       ; preds = %bb30.preheader
  call void @latencyCount(i64 2412)
  %tmp3 = sub i64 0, %delta, !llfi_index !2412
  br label %bb26, !llfi_index !2413

bb40.preheader:                                   ; preds = %bb24
  br i1 %54, label %bb43.preheader, label %bb39, !llfi_index !2414

bb26:                                             ; preds = %bb26, %bb26.lr.ph
  %temp.29 = phi %struct.node* [ %jminus, %bb26.lr.ph ], [ %65, %bb26 ], !llfi_index !2415
  call void @latencyCount(i64 2416)
  %55 = getelementptr inbounds %struct.node* %temp.29, i64 0, i32 11, !llfi_index !2416
  call void @latencyCount(i64 2417)
  %56 = load i64* %55, align 8, !llfi_index !2417
  call void @latencyCount(i64 2418)
  %57 = sub nsw i64 %56, %23, !llfi_index !2418
  store i64 %57, i64* %55, align 8, !llfi_index !2419
  call void @latencyCount(i64 2420)
  %58 = getelementptr inbounds %struct.node* %temp.29, i64 0, i32 1, !llfi_index !2420
  call void @latencyCount(i64 2421)
  %59 = load i32* %58, align 8, !llfi_index !2421
  call void @latencyCount(i64 2422)
  %60 = sext i32 %59 to i64, !llfi_index !2422
  call void @latencyCount(i64 2423)
  %61 = icmp eq i64 %60, %cycle_ori, !llfi_index !2423
  call void @latencyCount(i64 2424)
  %62 = getelementptr inbounds %struct.node* %temp.29, i64 0, i32 10, !llfi_index !2424
  call void @latencyCount(i64 2425)
  %63 = load i64* %62, align 8, !llfi_index !2425
  call void @latencyCount(i64 2426)
  %storemerge1.p = select i1 %61, i64 %tmp3, i64 %delta, !llfi_index !2426
  call void @latencyCount(i64 2427)
  %storemerge1 = add i64 %storemerge1.p, %63, !llfi_index !2427
  store i64 %storemerge1, i64* %62, align 8, !llfi_index !2428
  call void @latencyCount(i64 2429)
  %64 = getelementptr inbounds %struct.node* %temp.29, i64 0, i32 3, !llfi_index !2429
  call void @latencyCount(i64 2430)
  %65 = load %struct.node** %64, align 8, !llfi_index !2430
  call void @latencyCount(i64 2431)
  %66 = icmp eq %struct.node* %65, %w, !llfi_index !2431
  call void @qsPlace(i64 2432)
  br i1 %66, label %bb36.preheader, label %bb26, !llfi_index !2432

bb36.preheader:                                   ; preds = %bb26, %bb30.preheader
  call void @latencyCount(i64 2433)
  %67 = icmp eq %struct.node* %jplus, %w, !llfi_index !2433
  br i1 %67, label %return, label %bb32.lr.ph, !llfi_index !2434

bb32.lr.ph:                                       ; preds = %bb36.preheader
  call void @latencyCount(i64 2435)
  %tmp4 = sub i64 0, %delta, !llfi_index !2435
  br label %bb32, !llfi_index !2436

bb32:                                             ; preds = %bb32, %bb32.lr.ph
  %temp.38 = phi %struct.node* [ %jplus, %bb32.lr.ph ], [ %78, %bb32 ], !llfi_index !2437
  call void @latencyCount(i64 2438)
  %68 = getelementptr inbounds %struct.node* %temp.38, i64 0, i32 11, !llfi_index !2438
  call void @latencyCount(i64 2439)
  %69 = load i64* %68, align 8, !llfi_index !2439
  call void @latencyCount(i64 2440)
  %70 = add nsw i64 %69, %23, !llfi_index !2440
  store i64 %70, i64* %68, align 8, !llfi_index !2441
  call void @latencyCount(i64 2442)
  %71 = getelementptr inbounds %struct.node* %temp.38, i64 0, i32 1, !llfi_index !2442
  call void @latencyCount(i64 2443)
  %72 = load i32* %71, align 8, !llfi_index !2443
  call void @latencyCount(i64 2444)
  %73 = sext i32 %72 to i64, !llfi_index !2444
  call void @latencyCount(i64 2445)
  %74 = icmp eq i64 %73, %cycle_ori, !llfi_index !2445
  call void @latencyCount(i64 2446)
  %75 = getelementptr inbounds %struct.node* %temp.38, i64 0, i32 10, !llfi_index !2446
  call void @latencyCount(i64 2447)
  %76 = load i64* %75, align 8, !llfi_index !2447
  call void @latencyCount(i64 2448)
  %storemerge.p = select i1 %74, i64 %delta, i64 %tmp4, !llfi_index !2448
  call void @latencyCount(i64 2449)
  %storemerge = add i64 %storemerge.p, %76, !llfi_index !2449
  store i64 %storemerge, i64* %75, align 8, !llfi_index !2450
  call void @latencyCount(i64 2451)
  %77 = getelementptr inbounds %struct.node* %temp.38, i64 0, i32 3, !llfi_index !2451
  call void @latencyCount(i64 2452)
  %78 = load %struct.node** %77, align 8, !llfi_index !2452
  call void @latencyCount(i64 2453)
  %79 = icmp eq %struct.node* %78, %w, !llfi_index !2453
  call void @qsPlace(i64 2454)
  br i1 %79, label %return, label %bb32, !llfi_index !2454

bb39:                                             ; preds = %bb39, %bb40.preheader
  %temp.46 = phi %struct.node* [ %84, %bb39 ], [ %jminus, %bb40.preheader ], !llfi_index !2455
  call void @latencyCount(i64 2456)
  %80 = getelementptr inbounds %struct.node* %temp.46, i64 0, i32 11, !llfi_index !2456
  call void @latencyCount(i64 2457)
  %81 = load i64* %80, align 8, !llfi_index !2457
  call void @latencyCount(i64 2458)
  %82 = sub nsw i64 %81, %23, !llfi_index !2458
  store i64 %82, i64* %80, align 8, !llfi_index !2459
  call void @latencyCount(i64 2460)
  %83 = getelementptr inbounds %struct.node* %temp.46, i64 0, i32 3, !llfi_index !2460
  call void @latencyCount(i64 2461)
  %84 = load %struct.node** %83, align 8, !llfi_index !2461
  call void @latencyCount(i64 2462)
  %85 = icmp eq %struct.node* %84, %w, !llfi_index !2462
  call void @qsPlace(i64 2463)
  br i1 %85, label %bb43.preheader, label %bb39, !llfi_index !2463

bb43.preheader:                                   ; preds = %bb39, %bb40.preheader
  call void @latencyCount(i64 2464)
  %86 = icmp eq %struct.node* %jplus, %w, !llfi_index !2464
  br i1 %86, label %return, label %bb42, !llfi_index !2465

bb42:                                             ; preds = %bb42, %bb43.preheader
  %temp.55 = phi %struct.node* [ %91, %bb42 ], [ %jplus, %bb43.preheader ], !llfi_index !2466
  call void @latencyCount(i64 2467)
  %87 = getelementptr inbounds %struct.node* %temp.55, i64 0, i32 11, !llfi_index !2467
  call void @latencyCount(i64 2468)
  %88 = load i64* %87, align 8, !llfi_index !2468
  call void @latencyCount(i64 2469)
  %89 = add nsw i64 %88, %23, !llfi_index !2469
  store i64 %89, i64* %87, align 8, !llfi_index !2470
  call void @latencyCount(i64 2471)
  %90 = getelementptr inbounds %struct.node* %temp.55, i64 0, i32 3, !llfi_index !2471
  call void @latencyCount(i64 2472)
  %91 = load %struct.node** %90, align 8, !llfi_index !2472
  call void @latencyCount(i64 2473)
  %92 = icmp eq %struct.node* %91, %w, !llfi_index !2473
  call void @qsPlace(i64 2474)
  br i1 %92, label %return, label %bb42, !llfi_index !2474

return:                                           ; preds = %bb42, %bb43.preheader, %bb32, %bb36.preheader
  ret void, !llfi_index !2475
}

declare void @latencyCount(i64)

declare void @qsPlace(i64)

!0 = metadata !{i64 0}
!1 = metadata !{i64 1}
!2 = metadata !{i64 2}
!3 = metadata !{i64 3}
!4 = metadata !{i64 4}
!5 = metadata !{i64 5}
!6 = metadata !{i64 6}
!7 = metadata !{i64 7}
!8 = metadata !{i64 8}
!9 = metadata !{i64 9}
!10 = metadata !{i64 10}
!11 = metadata !{i64 11}
!12 = metadata !{i64 12}
!13 = metadata !{i64 13}
!14 = metadata !{i64 14}
!15 = metadata !{i64 15}
!16 = metadata !{i64 16}
!17 = metadata !{i64 17}
!18 = metadata !{i64 18}
!19 = metadata !{i64 19}
!20 = metadata !{i64 20}
!21 = metadata !{i64 21}
!22 = metadata !{i64 22}
!23 = metadata !{i64 23}
!24 = metadata !{i64 24}
!25 = metadata !{i64 25}
!26 = metadata !{i64 26}
!27 = metadata !{i64 27}
!28 = metadata !{i64 28}
!29 = metadata !{i64 29}
!30 = metadata !{i64 30}
!31 = metadata !{i64 31}
!32 = metadata !{i64 32}
!33 = metadata !{i64 33}
!34 = metadata !{i64 34}
!35 = metadata !{i64 35}
!36 = metadata !{i64 36}
!37 = metadata !{i64 37}
!38 = metadata !{i64 38}
!39 = metadata !{i64 39}
!40 = metadata !{i64 40}
!41 = metadata !{i64 41}
!42 = metadata !{i64 42}
!43 = metadata !{i64 43}
!44 = metadata !{i64 44}
!45 = metadata !{i64 45}
!46 = metadata !{i64 46}
!47 = metadata !{i64 47}
!48 = metadata !{i64 48}
!49 = metadata !{i64 49}
!50 = metadata !{i64 50}
!51 = metadata !{i64 51}
!52 = metadata !{i64 52}
!53 = metadata !{i64 53}
!54 = metadata !{i64 54}
!55 = metadata !{i64 55}
!56 = metadata !{i64 56}
!57 = metadata !{i64 57}
!58 = metadata !{i64 58}
!59 = metadata !{i64 59}
!60 = metadata !{i64 60}
!61 = metadata !{i64 61}
!62 = metadata !{i64 62}
!63 = metadata !{i64 63}
!64 = metadata !{i64 64}
!65 = metadata !{i64 65}
!66 = metadata !{i64 66}
!67 = metadata !{i64 67}
!68 = metadata !{i64 68}
!69 = metadata !{i64 69}
!70 = metadata !{i64 70}
!71 = metadata !{i64 71}
!72 = metadata !{i64 72}
!73 = metadata !{i64 73}
!74 = metadata !{i64 74}
!75 = metadata !{i64 75}
!76 = metadata !{i64 76}
!77 = metadata !{i64 77}
!78 = metadata !{i64 78}
!79 = metadata !{i64 79}
!80 = metadata !{i64 80}
!81 = metadata !{i64 81}
!82 = metadata !{i64 82}
!83 = metadata !{i64 83}
!84 = metadata !{i64 84}
!85 = metadata !{i64 85}
!86 = metadata !{i64 86}
!87 = metadata !{i64 87}
!88 = metadata !{i64 88}
!89 = metadata !{i64 89}
!90 = metadata !{i64 90}
!91 = metadata !{i64 91}
!92 = metadata !{i64 92}
!93 = metadata !{i64 93}
!94 = metadata !{i64 94}
!95 = metadata !{i64 95}
!96 = metadata !{i64 96}
!97 = metadata !{i64 97}
!98 = metadata !{i64 98}
!99 = metadata !{i64 99}
!100 = metadata !{i64 100}
!101 = metadata !{i64 101}
!102 = metadata !{i64 102}
!103 = metadata !{i64 103}
!104 = metadata !{i64 104}
!105 = metadata !{i64 105}
!106 = metadata !{i64 106}
!107 = metadata !{i64 107}
!108 = metadata !{i64 108}
!109 = metadata !{i64 109}
!110 = metadata !{i64 110}
!111 = metadata !{i64 111}
!112 = metadata !{i64 112}
!113 = metadata !{i64 113}
!114 = metadata !{i64 114}
!115 = metadata !{i64 115}
!116 = metadata !{i64 116}
!117 = metadata !{i64 117}
!118 = metadata !{i64 118}
!119 = metadata !{i64 119}
!120 = metadata !{i64 120}
!121 = metadata !{i64 121}
!122 = metadata !{i64 122}
!123 = metadata !{i64 123}
!124 = metadata !{i64 124}
!125 = metadata !{i64 125}
!126 = metadata !{i64 126}
!127 = metadata !{i64 127}
!128 = metadata !{i64 128}
!129 = metadata !{i64 129}
!130 = metadata !{i64 130}
!131 = metadata !{i64 131}
!132 = metadata !{i64 132}
!133 = metadata !{i64 133}
!134 = metadata !{i64 134}
!135 = metadata !{i64 135}
!136 = metadata !{i64 136}
!137 = metadata !{i64 137}
!138 = metadata !{i64 138}
!139 = metadata !{i64 139}
!140 = metadata !{i64 140}
!141 = metadata !{i64 141}
!142 = metadata !{i64 142}
!143 = metadata !{i64 143}
!144 = metadata !{i64 144}
!145 = metadata !{i64 145}
!146 = metadata !{i64 146}
!147 = metadata !{i64 147}
!148 = metadata !{i64 148}
!149 = metadata !{i64 149}
!150 = metadata !{i64 150}
!151 = metadata !{i64 151}
!152 = metadata !{i64 152}
!153 = metadata !{i64 153}
!154 = metadata !{i64 154}
!155 = metadata !{i64 155}
!156 = metadata !{i64 156}
!157 = metadata !{i64 157}
!158 = metadata !{i64 158}
!159 = metadata !{i64 159}
!160 = metadata !{i64 160}
!161 = metadata !{i64 161}
!162 = metadata !{i64 162}
!163 = metadata !{i64 163}
!164 = metadata !{i64 164}
!165 = metadata !{i64 165}
!166 = metadata !{i64 166}
!167 = metadata !{i64 167}
!168 = metadata !{i64 168}
!169 = metadata !{i64 169}
!170 = metadata !{i64 170}
!171 = metadata !{i64 171}
!172 = metadata !{i64 172}
!173 = metadata !{i64 173}
!174 = metadata !{i64 174}
!175 = metadata !{i64 175}
!176 = metadata !{i64 176}
!177 = metadata !{i64 177}
!178 = metadata !{i64 178}
!179 = metadata !{i64 179}
!180 = metadata !{i64 180}
!181 = metadata !{i64 181}
!182 = metadata !{i64 182}
!183 = metadata !{i64 183}
!184 = metadata !{i64 184}
!185 = metadata !{i64 185}
!186 = metadata !{i64 186}
!187 = metadata !{i64 187}
!188 = metadata !{i64 188}
!189 = metadata !{i64 189}
!190 = metadata !{i64 190}
!191 = metadata !{i64 191}
!192 = metadata !{i64 192}
!193 = metadata !{i64 193}
!194 = metadata !{i64 194}
!195 = metadata !{i64 195}
!196 = metadata !{i64 196}
!197 = metadata !{i64 197}
!198 = metadata !{i64 198}
!199 = metadata !{i64 199}
!200 = metadata !{i64 200}
!201 = metadata !{i64 201}
!202 = metadata !{i64 202}
!203 = metadata !{i64 203}
!204 = metadata !{i64 204}
!205 = metadata !{i64 205}
!206 = metadata !{i64 206}
!207 = metadata !{i64 207}
!208 = metadata !{i64 208}
!209 = metadata !{i64 209}
!210 = metadata !{i64 210}
!211 = metadata !{i64 211}
!212 = metadata !{i64 212}
!213 = metadata !{i64 213}
!214 = metadata !{i64 214}
!215 = metadata !{i64 215}
!216 = metadata !{i64 216}
!217 = metadata !{i64 217}
!218 = metadata !{i64 218}
!219 = metadata !{i64 219}
!220 = metadata !{i64 220}
!221 = metadata !{i64 221}
!222 = metadata !{i64 222}
!223 = metadata !{i64 223}
!224 = metadata !{i64 224}
!225 = metadata !{i64 225}
!226 = metadata !{i64 226}
!227 = metadata !{i64 227}
!228 = metadata !{i64 228}
!229 = metadata !{i64 229}
!230 = metadata !{i64 230}
!231 = metadata !{i64 231}
!232 = metadata !{i64 232}
!233 = metadata !{i64 233}
!234 = metadata !{i64 234}
!235 = metadata !{i64 235}
!236 = metadata !{i64 236}
!237 = metadata !{i64 237}
!238 = metadata !{i64 238}
!239 = metadata !{i64 239}
!240 = metadata !{i64 240}
!241 = metadata !{i64 241}
!242 = metadata !{i64 242}
!243 = metadata !{i64 243}
!244 = metadata !{i64 244}
!245 = metadata !{i64 245}
!246 = metadata !{i64 246}
!247 = metadata !{i64 247}
!248 = metadata !{i64 248}
!249 = metadata !{i64 249}
!250 = metadata !{i64 250}
!251 = metadata !{i64 251}
!252 = metadata !{i64 252}
!253 = metadata !{i64 253}
!254 = metadata !{i64 254}
!255 = metadata !{i64 255}
!256 = metadata !{i64 256}
!257 = metadata !{i64 257}
!258 = metadata !{i64 258}
!259 = metadata !{i64 259}
!260 = metadata !{i64 260}
!261 = metadata !{i64 261}
!262 = metadata !{i64 262}
!263 = metadata !{i64 263}
!264 = metadata !{i64 264}
!265 = metadata !{i64 265}
!266 = metadata !{i64 266}
!267 = metadata !{i64 267}
!268 = metadata !{i64 268}
!269 = metadata !{i64 269}
!270 = metadata !{i64 270}
!271 = metadata !{i64 271}
!272 = metadata !{i64 272}
!273 = metadata !{i64 273}
!274 = metadata !{i64 274}
!275 = metadata !{i64 275}
!276 = metadata !{i64 276}
!277 = metadata !{i64 277}
!278 = metadata !{i64 278}
!279 = metadata !{i64 279}
!280 = metadata !{i64 280}
!281 = metadata !{i64 281}
!282 = metadata !{i64 282}
!283 = metadata !{i64 283}
!284 = metadata !{i64 284}
!285 = metadata !{i64 285}
!286 = metadata !{i64 286}
!287 = metadata !{i64 287}
!288 = metadata !{i64 288}
!289 = metadata !{i64 289}
!290 = metadata !{i64 290}
!291 = metadata !{i64 291}
!292 = metadata !{i64 292}
!293 = metadata !{i64 293}
!294 = metadata !{i64 294}
!295 = metadata !{i64 295}
!296 = metadata !{i64 296}
!297 = metadata !{i64 297}
!298 = metadata !{i64 298}
!299 = metadata !{i64 299}
!300 = metadata !{i64 300}
!301 = metadata !{i64 301}
!302 = metadata !{i64 302}
!303 = metadata !{i64 303}
!304 = metadata !{i64 304}
!305 = metadata !{i64 305}
!306 = metadata !{i64 306}
!307 = metadata !{i64 307}
!308 = metadata !{i64 308}
!309 = metadata !{i64 309}
!310 = metadata !{i64 310}
!311 = metadata !{i64 311}
!312 = metadata !{i64 312}
!313 = metadata !{i64 313}
!314 = metadata !{i64 314}
!315 = metadata !{i64 315}
!316 = metadata !{i64 316}
!317 = metadata !{i64 317}
!318 = metadata !{i64 318}
!319 = metadata !{i64 319}
!320 = metadata !{i64 320}
!321 = metadata !{i64 321}
!322 = metadata !{i64 322}
!323 = metadata !{i64 323}
!324 = metadata !{i64 324}
!325 = metadata !{i64 325}
!326 = metadata !{i64 326}
!327 = metadata !{i64 327}
!328 = metadata !{i64 328}
!329 = metadata !{i64 329}
!330 = metadata !{i64 330}
!331 = metadata !{i64 331}
!332 = metadata !{i64 332}
!333 = metadata !{i64 333}
!334 = metadata !{i64 334}
!335 = metadata !{i64 335}
!336 = metadata !{i64 336}
!337 = metadata !{i64 337}
!338 = metadata !{i64 338}
!339 = metadata !{i64 339}
!340 = metadata !{i64 340}
!341 = metadata !{i64 341}
!342 = metadata !{i64 342}
!343 = metadata !{i64 343}
!344 = metadata !{i64 344}
!345 = metadata !{i64 345}
!346 = metadata !{i64 346}
!347 = metadata !{i64 347}
!348 = metadata !{i64 348}
!349 = metadata !{i64 349}
!350 = metadata !{i64 350}
!351 = metadata !{i64 351}
!352 = metadata !{i64 352}
!353 = metadata !{i64 353}
!354 = metadata !{i64 354}
!355 = metadata !{i64 355}
!356 = metadata !{i64 356}
!357 = metadata !{i64 357}
!358 = metadata !{i64 358}
!359 = metadata !{i64 359}
!360 = metadata !{i64 360}
!361 = metadata !{i64 361}
!362 = metadata !{i64 362}
!363 = metadata !{i64 363}
!364 = metadata !{i64 364}
!365 = metadata !{i64 365}
!366 = metadata !{i64 366}
!367 = metadata !{i64 367}
!368 = metadata !{i64 368}
!369 = metadata !{i64 369}
!370 = metadata !{i64 370}
!371 = metadata !{i64 371}
!372 = metadata !{i64 372}
!373 = metadata !{i64 373}
!374 = metadata !{i64 374}
!375 = metadata !{i64 375}
!376 = metadata !{i64 376}
!377 = metadata !{i64 377}
!378 = metadata !{i64 378}
!379 = metadata !{i64 379}
!380 = metadata !{i64 380}
!381 = metadata !{i64 381}
!382 = metadata !{i64 382}
!383 = metadata !{i64 383}
!384 = metadata !{i64 384}
!385 = metadata !{i64 385}
!386 = metadata !{i64 386}
!387 = metadata !{i64 387}
!388 = metadata !{i64 388}
!389 = metadata !{i64 389}
!390 = metadata !{i64 390}
!391 = metadata !{i64 391}
!392 = metadata !{i64 392}
!393 = metadata !{i64 393}
!394 = metadata !{i64 394}
!395 = metadata !{i64 395}
!396 = metadata !{i64 396}
!397 = metadata !{i64 397}
!398 = metadata !{i64 398}
!399 = metadata !{i64 399}
!400 = metadata !{i64 400}
!401 = metadata !{i64 401}
!402 = metadata !{i64 402}
!403 = metadata !{i64 403}
!404 = metadata !{i64 404}
!405 = metadata !{i64 405}
!406 = metadata !{i64 406}
!407 = metadata !{i64 407}
!408 = metadata !{i64 408}
!409 = metadata !{i64 409}
!410 = metadata !{i64 410}
!411 = metadata !{i64 411}
!412 = metadata !{i64 412}
!413 = metadata !{i64 413}
!414 = metadata !{i64 414}
!415 = metadata !{i64 415}
!416 = metadata !{i64 416}
!417 = metadata !{i64 417}
!418 = metadata !{i64 418}
!419 = metadata !{i64 419}
!420 = metadata !{i64 420}
!421 = metadata !{i64 421}
!422 = metadata !{i64 422}
!423 = metadata !{i64 423}
!424 = metadata !{i64 424}
!425 = metadata !{i64 425}
!426 = metadata !{i64 426}
!427 = metadata !{i64 427}
!428 = metadata !{i64 428}
!429 = metadata !{i64 429}
!430 = metadata !{i64 430}
!431 = metadata !{i64 431}
!432 = metadata !{i64 432}
!433 = metadata !{i64 433}
!434 = metadata !{i64 434}
!435 = metadata !{i64 435}
!436 = metadata !{i64 436}
!437 = metadata !{i64 437}
!438 = metadata !{i64 438}
!439 = metadata !{i64 439}
!440 = metadata !{i64 440}
!441 = metadata !{i64 441}
!442 = metadata !{i64 442}
!443 = metadata !{i64 443}
!444 = metadata !{i64 444}
!445 = metadata !{i64 445}
!446 = metadata !{i64 446}
!447 = metadata !{i64 447}
!448 = metadata !{i64 448}
!449 = metadata !{i64 449}
!450 = metadata !{i64 450}
!451 = metadata !{i64 451}
!452 = metadata !{i64 452}
!453 = metadata !{i64 453}
!454 = metadata !{i64 454}
!455 = metadata !{i64 455}
!456 = metadata !{i64 456}
!457 = metadata !{i64 457}
!458 = metadata !{i64 458}
!459 = metadata !{i64 459}
!460 = metadata !{i64 460}
!461 = metadata !{i64 461}
!462 = metadata !{i64 462}
!463 = metadata !{i64 463}
!464 = metadata !{i64 464}
!465 = metadata !{i64 465}
!466 = metadata !{i64 466}
!467 = metadata !{i64 467}
!468 = metadata !{i64 468}
!469 = metadata !{i64 469}
!470 = metadata !{i64 470}
!471 = metadata !{i64 471}
!472 = metadata !{i64 472}
!473 = metadata !{i64 473}
!474 = metadata !{i64 474}
!475 = metadata !{i64 475}
!476 = metadata !{i64 476}
!477 = metadata !{i64 477}
!478 = metadata !{i64 478}
!479 = metadata !{i64 479}
!480 = metadata !{i64 480}
!481 = metadata !{i64 481}
!482 = metadata !{i64 482}
!483 = metadata !{i64 483}
!484 = metadata !{i64 484}
!485 = metadata !{i64 485}
!486 = metadata !{i64 486}
!487 = metadata !{i64 487}
!488 = metadata !{i64 488}
!489 = metadata !{i64 489}
!490 = metadata !{i64 490}
!491 = metadata !{i64 491}
!492 = metadata !{i64 492}
!493 = metadata !{i64 493}
!494 = metadata !{i64 494}
!495 = metadata !{i64 495}
!496 = metadata !{i64 496}
!497 = metadata !{i64 497}
!498 = metadata !{i64 498}
!499 = metadata !{i64 499}
!500 = metadata !{i64 500}
!501 = metadata !{i64 501}
!502 = metadata !{i64 502}
!503 = metadata !{i64 503}
!504 = metadata !{i64 504}
!505 = metadata !{i64 505}
!506 = metadata !{i64 506}
!507 = metadata !{i64 507}
!508 = metadata !{i64 508}
!509 = metadata !{i64 509}
!510 = metadata !{i64 510}
!511 = metadata !{i64 511}
!512 = metadata !{i64 512}
!513 = metadata !{i64 513}
!514 = metadata !{i64 514}
!515 = metadata !{i64 515}
!516 = metadata !{i64 516}
!517 = metadata !{i64 517}
!518 = metadata !{i64 518}
!519 = metadata !{i64 519}
!520 = metadata !{i64 520}
!521 = metadata !{i64 521}
!522 = metadata !{i64 522}
!523 = metadata !{i64 523}
!524 = metadata !{i64 524}
!525 = metadata !{i64 525}
!526 = metadata !{i64 526}
!527 = metadata !{i64 527}
!528 = metadata !{i64 528}
!529 = metadata !{i64 529}
!530 = metadata !{i64 530}
!531 = metadata !{i64 531}
!532 = metadata !{i64 532}
!533 = metadata !{i64 533}
!534 = metadata !{i64 534}
!535 = metadata !{i64 535}
!536 = metadata !{i64 536}
!537 = metadata !{i64 537}
!538 = metadata !{i64 538}
!539 = metadata !{i64 539}
!540 = metadata !{i64 540}
!541 = metadata !{i64 541}
!542 = metadata !{i64 542}
!543 = metadata !{i64 543}
!544 = metadata !{i64 544}
!545 = metadata !{i64 545}
!546 = metadata !{i64 546}
!547 = metadata !{i64 547}
!548 = metadata !{i64 548}
!549 = metadata !{i64 549}
!550 = metadata !{i64 550}
!551 = metadata !{i64 551}
!552 = metadata !{i64 552}
!553 = metadata !{i64 553}
!554 = metadata !{i64 554}
!555 = metadata !{i64 555}
!556 = metadata !{i64 556}
!557 = metadata !{i64 557}
!558 = metadata !{i64 558}
!559 = metadata !{i64 559}
!560 = metadata !{i64 560}
!561 = metadata !{i64 561}
!562 = metadata !{i64 562}
!563 = metadata !{i64 563}
!564 = metadata !{i64 564}
!565 = metadata !{i64 565}
!566 = metadata !{i64 566}
!567 = metadata !{i64 567}
!568 = metadata !{i64 568}
!569 = metadata !{i64 569}
!570 = metadata !{i64 570}
!571 = metadata !{i64 571}
!572 = metadata !{i64 572}
!573 = metadata !{i64 573}
!574 = metadata !{i64 574}
!575 = metadata !{i64 575}
!576 = metadata !{i64 576}
!577 = metadata !{i64 577}
!578 = metadata !{i64 578}
!579 = metadata !{i64 579}
!580 = metadata !{i64 580}
!581 = metadata !{i64 581}
!582 = metadata !{i64 582}
!583 = metadata !{i64 583}
!584 = metadata !{i64 584}
!585 = metadata !{i64 585}
!586 = metadata !{i64 586}
!587 = metadata !{i64 587}
!588 = metadata !{i64 588}
!589 = metadata !{i64 589}
!590 = metadata !{i64 590}
!591 = metadata !{i64 591}
!592 = metadata !{i64 592}
!593 = metadata !{i64 593}
!594 = metadata !{i64 594}
!595 = metadata !{i64 595}
!596 = metadata !{i64 596}
!597 = metadata !{i64 597}
!598 = metadata !{i64 598}
!599 = metadata !{i64 599}
!600 = metadata !{i64 600}
!601 = metadata !{i64 601}
!602 = metadata !{i64 602}
!603 = metadata !{i64 603}
!604 = metadata !{i64 604}
!605 = metadata !{i64 605}
!606 = metadata !{i64 606}
!607 = metadata !{i64 607}
!608 = metadata !{i64 608}
!609 = metadata !{i64 609}
!610 = metadata !{i64 610}
!611 = metadata !{i64 611}
!612 = metadata !{i64 612}
!613 = metadata !{i64 613}
!614 = metadata !{i64 614}
!615 = metadata !{i64 615}
!616 = metadata !{i64 616}
!617 = metadata !{i64 617}
!618 = metadata !{i64 618}
!619 = metadata !{i64 619}
!620 = metadata !{i64 620}
!621 = metadata !{i64 621}
!622 = metadata !{i64 622}
!623 = metadata !{i64 623}
!624 = metadata !{i64 624}
!625 = metadata !{i64 625}
!626 = metadata !{i64 626}
!627 = metadata !{i64 627}
!628 = metadata !{i64 628}
!629 = metadata !{i64 629}
!630 = metadata !{i64 630}
!631 = metadata !{i64 631}
!632 = metadata !{i64 632}
!633 = metadata !{i64 633}
!634 = metadata !{i64 634}
!635 = metadata !{i64 635}
!636 = metadata !{i64 636}
!637 = metadata !{i64 637}
!638 = metadata !{i64 638}
!639 = metadata !{i64 639}
!640 = metadata !{i64 640}
!641 = metadata !{i64 641}
!642 = metadata !{i64 642}
!643 = metadata !{i64 643}
!644 = metadata !{i64 644}
!645 = metadata !{i64 645}
!646 = metadata !{i64 646}
!647 = metadata !{i64 647}
!648 = metadata !{i64 648}
!649 = metadata !{i64 649}
!650 = metadata !{i64 650}
!651 = metadata !{i64 651}
!652 = metadata !{i64 652}
!653 = metadata !{i64 653}
!654 = metadata !{i64 654}
!655 = metadata !{i64 655}
!656 = metadata !{i64 656}
!657 = metadata !{i64 657}
!658 = metadata !{i64 658}
!659 = metadata !{i64 659}
!660 = metadata !{i64 660}
!661 = metadata !{i64 661}
!662 = metadata !{i64 662}
!663 = metadata !{i64 663}
!664 = metadata !{i64 664}
!665 = metadata !{i64 665}
!666 = metadata !{i64 666}
!667 = metadata !{i64 667}
!668 = metadata !{i64 668}
!669 = metadata !{i64 669}
!670 = metadata !{i64 670}
!671 = metadata !{i64 671}
!672 = metadata !{i64 672}
!673 = metadata !{i64 673}
!674 = metadata !{i64 674}
!675 = metadata !{i64 675}
!676 = metadata !{i64 676}
!677 = metadata !{i64 677}
!678 = metadata !{i64 678}
!679 = metadata !{i64 679}
!680 = metadata !{i64 680}
!681 = metadata !{i64 681}
!682 = metadata !{i64 682}
!683 = metadata !{i64 683}
!684 = metadata !{i64 684}
!685 = metadata !{i64 685}
!686 = metadata !{i64 686}
!687 = metadata !{i64 687}
!688 = metadata !{i64 688}
!689 = metadata !{i64 689}
!690 = metadata !{i64 690}
!691 = metadata !{i64 691}
!692 = metadata !{i64 692}
!693 = metadata !{i64 693}
!694 = metadata !{i64 694}
!695 = metadata !{i64 695}
!696 = metadata !{i64 696}
!697 = metadata !{i64 697}
!698 = metadata !{i64 698}
!699 = metadata !{i64 699}
!700 = metadata !{i64 700}
!701 = metadata !{i64 701}
!702 = metadata !{i64 702}
!703 = metadata !{i64 703}
!704 = metadata !{i64 704}
!705 = metadata !{i64 705}
!706 = metadata !{i64 706}
!707 = metadata !{i64 707}
!708 = metadata !{i64 708}
!709 = metadata !{i64 709}
!710 = metadata !{i64 710}
!711 = metadata !{i64 711}
!712 = metadata !{i64 712}
!713 = metadata !{i64 713}
!714 = metadata !{i64 714}
!715 = metadata !{i64 715}
!716 = metadata !{i64 716}
!717 = metadata !{i64 717}
!718 = metadata !{i64 718}
!719 = metadata !{i64 719}
!720 = metadata !{i64 720}
!721 = metadata !{i64 721}
!722 = metadata !{i64 722}
!723 = metadata !{i64 723}
!724 = metadata !{i64 724}
!725 = metadata !{i64 725}
!726 = metadata !{i64 726}
!727 = metadata !{i64 727}
!728 = metadata !{i64 728}
!729 = metadata !{i64 729}
!730 = metadata !{i64 730}
!731 = metadata !{i64 731}
!732 = metadata !{i64 732}
!733 = metadata !{i64 733}
!734 = metadata !{i64 734}
!735 = metadata !{i64 735}
!736 = metadata !{i64 736}
!737 = metadata !{i64 737}
!738 = metadata !{i64 738}
!739 = metadata !{i64 739}
!740 = metadata !{i64 740}
!741 = metadata !{i64 741}
!742 = metadata !{i64 742}
!743 = metadata !{i64 743}
!744 = metadata !{i64 744}
!745 = metadata !{i64 745}
!746 = metadata !{i64 746}
!747 = metadata !{i64 747}
!748 = metadata !{i64 748}
!749 = metadata !{i64 749}
!750 = metadata !{i64 750}
!751 = metadata !{i64 751}
!752 = metadata !{i64 752}
!753 = metadata !{i64 753}
!754 = metadata !{i64 754}
!755 = metadata !{i64 755}
!756 = metadata !{i64 756}
!757 = metadata !{i64 757}
!758 = metadata !{i64 758}
!759 = metadata !{i64 759}
!760 = metadata !{i64 760}
!761 = metadata !{i64 761}
!762 = metadata !{i64 762}
!763 = metadata !{i64 763}
!764 = metadata !{i64 764}
!765 = metadata !{i64 765}
!766 = metadata !{i64 766}
!767 = metadata !{i64 767}
!768 = metadata !{i64 768}
!769 = metadata !{i64 769}
!770 = metadata !{i64 770}
!771 = metadata !{i64 771}
!772 = metadata !{i64 772}
!773 = metadata !{i64 773}
!774 = metadata !{i64 774}
!775 = metadata !{i64 775}
!776 = metadata !{i64 776}
!777 = metadata !{i64 777}
!778 = metadata !{i64 778}
!779 = metadata !{i64 779}
!780 = metadata !{i64 780}
!781 = metadata !{i64 781}
!782 = metadata !{i64 782}
!783 = metadata !{i64 783}
!784 = metadata !{i64 784}
!785 = metadata !{i64 785}
!786 = metadata !{i64 786}
!787 = metadata !{i64 787}
!788 = metadata !{i64 788}
!789 = metadata !{i64 789}
!790 = metadata !{i64 790}
!791 = metadata !{i64 791}
!792 = metadata !{i64 792}
!793 = metadata !{i64 793}
!794 = metadata !{i64 794}
!795 = metadata !{i64 795}
!796 = metadata !{i64 796}
!797 = metadata !{i64 797}
!798 = metadata !{i64 798}
!799 = metadata !{i64 799}
!800 = metadata !{i64 800}
!801 = metadata !{i64 801}
!802 = metadata !{i64 802}
!803 = metadata !{i64 803}
!804 = metadata !{i64 804}
!805 = metadata !{i64 805}
!806 = metadata !{i64 806}
!807 = metadata !{i64 807}
!808 = metadata !{i64 808}
!809 = metadata !{i64 809}
!810 = metadata !{i64 810}
!811 = metadata !{i64 811}
!812 = metadata !{i64 812}
!813 = metadata !{i64 813}
!814 = metadata !{i64 814}
!815 = metadata !{i64 815}
!816 = metadata !{i64 816}
!817 = metadata !{i64 817}
!818 = metadata !{i64 818}
!819 = metadata !{i64 819}
!820 = metadata !{i64 820}
!821 = metadata !{i64 821}
!822 = metadata !{i64 822}
!823 = metadata !{i64 823}
!824 = metadata !{i64 824}
!825 = metadata !{i64 825}
!826 = metadata !{i64 826}
!827 = metadata !{i64 827}
!828 = metadata !{i64 828}
!829 = metadata !{i64 829}
!830 = metadata !{i64 830}
!831 = metadata !{i64 831}
!832 = metadata !{i64 832}
!833 = metadata !{i64 833}
!834 = metadata !{i64 834}
!835 = metadata !{i64 835}
!836 = metadata !{i64 836}
!837 = metadata !{i64 837}
!838 = metadata !{i64 838}
!839 = metadata !{i64 839}
!840 = metadata !{i64 840}
!841 = metadata !{i64 841}
!842 = metadata !{i64 842}
!843 = metadata !{i64 843}
!844 = metadata !{i64 844}
!845 = metadata !{i64 845}
!846 = metadata !{i64 846}
!847 = metadata !{i64 847}
!848 = metadata !{i64 848}
!849 = metadata !{i64 849}
!850 = metadata !{i64 850}
!851 = metadata !{i64 851}
!852 = metadata !{i64 852}
!853 = metadata !{i64 853}
!854 = metadata !{i64 854}
!855 = metadata !{i64 855}
!856 = metadata !{i64 856}
!857 = metadata !{i64 857}
!858 = metadata !{i64 858}
!859 = metadata !{i64 859}
!860 = metadata !{i64 860}
!861 = metadata !{i64 861}
!862 = metadata !{i64 862}
!863 = metadata !{i64 863}
!864 = metadata !{i64 864}
!865 = metadata !{i64 865}
!866 = metadata !{i64 866}
!867 = metadata !{i64 867}
!868 = metadata !{i64 868}
!869 = metadata !{i64 869}
!870 = metadata !{i64 870}
!871 = metadata !{i64 871}
!872 = metadata !{i64 872}
!873 = metadata !{i64 873}
!874 = metadata !{i64 874}
!875 = metadata !{i64 875}
!876 = metadata !{i64 876}
!877 = metadata !{i64 877}
!878 = metadata !{i64 878}
!879 = metadata !{i64 879}
!880 = metadata !{i64 880}
!881 = metadata !{i64 881}
!882 = metadata !{i64 882}
!883 = metadata !{i64 883}
!884 = metadata !{i64 884}
!885 = metadata !{i64 885}
!886 = metadata !{i64 886}
!887 = metadata !{i64 887}
!888 = metadata !{i64 888}
!889 = metadata !{i64 889}
!890 = metadata !{i64 890}
!891 = metadata !{i64 891}
!892 = metadata !{i64 892}
!893 = metadata !{i64 893}
!894 = metadata !{i64 894}
!895 = metadata !{i64 895}
!896 = metadata !{i64 896}
!897 = metadata !{i64 897}
!898 = metadata !{i64 898}
!899 = metadata !{i64 899}
!900 = metadata !{i64 900}
!901 = metadata !{i64 901}
!902 = metadata !{i64 902}
!903 = metadata !{i64 903}
!904 = metadata !{i64 904}
!905 = metadata !{i64 905}
!906 = metadata !{i64 906}
!907 = metadata !{i64 907}
!908 = metadata !{i64 908}
!909 = metadata !{i64 909}
!910 = metadata !{i64 910}
!911 = metadata !{i64 911}
!912 = metadata !{i64 912}
!913 = metadata !{i64 913}
!914 = metadata !{i64 914}
!915 = metadata !{i64 915}
!916 = metadata !{i64 916}
!917 = metadata !{i64 917}
!918 = metadata !{i64 918}
!919 = metadata !{i64 919}
!920 = metadata !{i64 920}
!921 = metadata !{i64 921}
!922 = metadata !{i64 922}
!923 = metadata !{i64 923}
!924 = metadata !{i64 924}
!925 = metadata !{i64 925}
!926 = metadata !{i64 926}
!927 = metadata !{i64 927}
!928 = metadata !{i64 928}
!929 = metadata !{i64 929}
!930 = metadata !{i64 930}
!931 = metadata !{i64 931}
!932 = metadata !{i64 932}
!933 = metadata !{i64 933}
!934 = metadata !{i64 934}
!935 = metadata !{i64 935}
!936 = metadata !{i64 936}
!937 = metadata !{i64 937}
!938 = metadata !{i64 938}
!939 = metadata !{i64 939}
!940 = metadata !{i64 940}
!941 = metadata !{i64 941}
!942 = metadata !{i64 942}
!943 = metadata !{i64 943}
!944 = metadata !{i64 944}
!945 = metadata !{i64 945}
!946 = metadata !{i64 946}
!947 = metadata !{i64 947}
!948 = metadata !{i64 948}
!949 = metadata !{i64 949}
!950 = metadata !{i64 950}
!951 = metadata !{i64 951}
!952 = metadata !{i64 952}
!953 = metadata !{i64 953}
!954 = metadata !{i64 954}
!955 = metadata !{i64 955}
!956 = metadata !{i64 956}
!957 = metadata !{i64 957}
!958 = metadata !{i64 958}
!959 = metadata !{i64 959}
!960 = metadata !{i64 960}
!961 = metadata !{i64 961}
!962 = metadata !{i64 962}
!963 = metadata !{i64 963}
!964 = metadata !{i64 964}
!965 = metadata !{i64 965}
!966 = metadata !{i64 966}
!967 = metadata !{i64 967}
!968 = metadata !{i64 968}
!969 = metadata !{i64 969}
!970 = metadata !{i64 970}
!971 = metadata !{i64 971}
!972 = metadata !{i64 972}
!973 = metadata !{i64 973}
!974 = metadata !{i64 974}
!975 = metadata !{i64 975}
!976 = metadata !{i64 976}
!977 = metadata !{i64 977}
!978 = metadata !{i64 978}
!979 = metadata !{i64 979}
!980 = metadata !{i64 980}
!981 = metadata !{i64 981}
!982 = metadata !{i64 982}
!983 = metadata !{i64 983}
!984 = metadata !{i64 984}
!985 = metadata !{i64 985}
!986 = metadata !{i64 986}
!987 = metadata !{i64 987}
!988 = metadata !{i64 988}
!989 = metadata !{i64 989}
!990 = metadata !{i64 990}
!991 = metadata !{i64 991}
!992 = metadata !{i64 992}
!993 = metadata !{i64 993}
!994 = metadata !{i64 994}
!995 = metadata !{i64 995}
!996 = metadata !{i64 996}
!997 = metadata !{i64 997}
!998 = metadata !{i64 998}
!999 = metadata !{i64 999}
!1000 = metadata !{i64 1000}
!1001 = metadata !{i64 1001}
!1002 = metadata !{i64 1002}
!1003 = metadata !{i64 1003}
!1004 = metadata !{i64 1004}
!1005 = metadata !{i64 1005}
!1006 = metadata !{i64 1006}
!1007 = metadata !{i64 1007}
!1008 = metadata !{i64 1008}
!1009 = metadata !{i64 1009}
!1010 = metadata !{i64 1010}
!1011 = metadata !{i64 1011}
!1012 = metadata !{i64 1012}
!1013 = metadata !{i64 1013}
!1014 = metadata !{i64 1014}
!1015 = metadata !{i64 1015}
!1016 = metadata !{i64 1016}
!1017 = metadata !{i64 1017}
!1018 = metadata !{i64 1018}
!1019 = metadata !{i64 1019}
!1020 = metadata !{i64 1020}
!1021 = metadata !{i64 1021}
!1022 = metadata !{i64 1022}
!1023 = metadata !{i64 1023}
!1024 = metadata !{i64 1024}
!1025 = metadata !{i64 1025}
!1026 = metadata !{i64 1026}
!1027 = metadata !{i64 1027}
!1028 = metadata !{i64 1028}
!1029 = metadata !{i64 1029}
!1030 = metadata !{i64 1030}
!1031 = metadata !{i64 1031}
!1032 = metadata !{i64 1032}
!1033 = metadata !{i64 1033}
!1034 = metadata !{i64 1034}
!1035 = metadata !{i64 1035}
!1036 = metadata !{i64 1036}
!1037 = metadata !{i64 1037}
!1038 = metadata !{i64 1038}
!1039 = metadata !{i64 1039}
!1040 = metadata !{i64 1040}
!1041 = metadata !{i64 1041}
!1042 = metadata !{i64 1042}
!1043 = metadata !{i64 1043}
!1044 = metadata !{i64 1044}
!1045 = metadata !{i64 1045}
!1046 = metadata !{i64 1046}
!1047 = metadata !{i64 1047}
!1048 = metadata !{i64 1048}
!1049 = metadata !{i64 1049}
!1050 = metadata !{i64 1050}
!1051 = metadata !{i64 1051}
!1052 = metadata !{i64 1052}
!1053 = metadata !{i64 1053}
!1054 = metadata !{i64 1054}
!1055 = metadata !{i64 1055}
!1056 = metadata !{i64 1056}
!1057 = metadata !{i64 1057}
!1058 = metadata !{i64 1058}
!1059 = metadata !{i64 1059}
!1060 = metadata !{i64 1060}
!1061 = metadata !{i64 1061}
!1062 = metadata !{i64 1062}
!1063 = metadata !{i64 1063}
!1064 = metadata !{i64 1064}
!1065 = metadata !{i64 1065}
!1066 = metadata !{i64 1066}
!1067 = metadata !{i64 1067}
!1068 = metadata !{i64 1068}
!1069 = metadata !{i64 1069}
!1070 = metadata !{i64 1070}
!1071 = metadata !{i64 1071}
!1072 = metadata !{i64 1072}
!1073 = metadata !{i64 1073}
!1074 = metadata !{i64 1074}
!1075 = metadata !{i64 1075}
!1076 = metadata !{i64 1076}
!1077 = metadata !{i64 1077}
!1078 = metadata !{i64 1078}
!1079 = metadata !{i64 1079}
!1080 = metadata !{i64 1080}
!1081 = metadata !{i64 1081}
!1082 = metadata !{i64 1082}
!1083 = metadata !{i64 1083}
!1084 = metadata !{i64 1084}
!1085 = metadata !{i64 1085}
!1086 = metadata !{i64 1086}
!1087 = metadata !{i64 1087}
!1088 = metadata !{i64 1088}
!1089 = metadata !{i64 1089}
!1090 = metadata !{i64 1090}
!1091 = metadata !{i64 1091}
!1092 = metadata !{i64 1092}
!1093 = metadata !{i64 1093}
!1094 = metadata !{i64 1094}
!1095 = metadata !{i64 1095}
!1096 = metadata !{i64 1096}
!1097 = metadata !{i64 1097}
!1098 = metadata !{i64 1098}
!1099 = metadata !{i64 1099}
!1100 = metadata !{i64 1100}
!1101 = metadata !{i64 1101}
!1102 = metadata !{i64 1102}
!1103 = metadata !{i64 1103}
!1104 = metadata !{i64 1104}
!1105 = metadata !{i64 1105}
!1106 = metadata !{i64 1106}
!1107 = metadata !{i64 1107}
!1108 = metadata !{i64 1108}
!1109 = metadata !{i64 1109}
!1110 = metadata !{i64 1110}
!1111 = metadata !{i64 1111}
!1112 = metadata !{i64 1112}
!1113 = metadata !{i64 1113}
!1114 = metadata !{i64 1114}
!1115 = metadata !{i64 1115}
!1116 = metadata !{i64 1116}
!1117 = metadata !{i64 1117}
!1118 = metadata !{i64 1118}
!1119 = metadata !{i64 1119}
!1120 = metadata !{i64 1120}
!1121 = metadata !{i64 1121}
!1122 = metadata !{i64 1122}
!1123 = metadata !{i64 1123}
!1124 = metadata !{i64 1124}
!1125 = metadata !{i64 1125}
!1126 = metadata !{i64 1126}
!1127 = metadata !{i64 1127}
!1128 = metadata !{i64 1128}
!1129 = metadata !{i64 1129}
!1130 = metadata !{i64 1130}
!1131 = metadata !{i64 1131}
!1132 = metadata !{i64 1132}
!1133 = metadata !{i64 1133}
!1134 = metadata !{i64 1134}
!1135 = metadata !{i64 1135}
!1136 = metadata !{i64 1136}
!1137 = metadata !{i64 1137}
!1138 = metadata !{i64 1138}
!1139 = metadata !{i64 1139}
!1140 = metadata !{i64 1140}
!1141 = metadata !{i64 1141}
!1142 = metadata !{i64 1142}
!1143 = metadata !{i64 1143}
!1144 = metadata !{i64 1144}
!1145 = metadata !{i64 1145}
!1146 = metadata !{i64 1146}
!1147 = metadata !{i64 1147}
!1148 = metadata !{i64 1148}
!1149 = metadata !{i64 1149}
!1150 = metadata !{i64 1150}
!1151 = metadata !{i64 1151}
!1152 = metadata !{i64 1152}
!1153 = metadata !{i64 1153}
!1154 = metadata !{i64 1154}
!1155 = metadata !{i64 1155}
!1156 = metadata !{i64 1156}
!1157 = metadata !{i64 1157}
!1158 = metadata !{i64 1158}
!1159 = metadata !{i64 1159}
!1160 = metadata !{i64 1160}
!1161 = metadata !{i64 1161}
!1162 = metadata !{i64 1162}
!1163 = metadata !{i64 1163}
!1164 = metadata !{i64 1164}
!1165 = metadata !{i64 1165}
!1166 = metadata !{i64 1166}
!1167 = metadata !{i64 1167}
!1168 = metadata !{i64 1168}
!1169 = metadata !{i64 1169}
!1170 = metadata !{i64 1170}
!1171 = metadata !{i64 1171}
!1172 = metadata !{i64 1172}
!1173 = metadata !{i64 1173}
!1174 = metadata !{i64 1174}
!1175 = metadata !{i64 1175}
!1176 = metadata !{i64 1176}
!1177 = metadata !{i64 1177}
!1178 = metadata !{i64 1178}
!1179 = metadata !{i64 1179}
!1180 = metadata !{i64 1180}
!1181 = metadata !{i64 1181}
!1182 = metadata !{i64 1182}
!1183 = metadata !{i64 1183}
!1184 = metadata !{i64 1184}
!1185 = metadata !{i64 1185}
!1186 = metadata !{i64 1186}
!1187 = metadata !{i64 1187}
!1188 = metadata !{i64 1188}
!1189 = metadata !{i64 1189}
!1190 = metadata !{i64 1190}
!1191 = metadata !{i64 1191}
!1192 = metadata !{i64 1192}
!1193 = metadata !{i64 1193}
!1194 = metadata !{i64 1194}
!1195 = metadata !{i64 1195}
!1196 = metadata !{i64 1196}
!1197 = metadata !{i64 1197}
!1198 = metadata !{i64 1198}
!1199 = metadata !{i64 1199}
!1200 = metadata !{i64 1200}
!1201 = metadata !{i64 1201}
!1202 = metadata !{i64 1202}
!1203 = metadata !{i64 1203}
!1204 = metadata !{i64 1204}
!1205 = metadata !{i64 1205}
!1206 = metadata !{i64 1206}
!1207 = metadata !{i64 1207}
!1208 = metadata !{i64 1208}
!1209 = metadata !{i64 1209}
!1210 = metadata !{i64 1210}
!1211 = metadata !{i64 1211}
!1212 = metadata !{i64 1212}
!1213 = metadata !{i64 1213}
!1214 = metadata !{i64 1214}
!1215 = metadata !{i64 1215}
!1216 = metadata !{i64 1216}
!1217 = metadata !{i64 1217}
!1218 = metadata !{i64 1218}
!1219 = metadata !{i64 1219}
!1220 = metadata !{i64 1220}
!1221 = metadata !{i64 1221}
!1222 = metadata !{i64 1222}
!1223 = metadata !{i64 1223}
!1224 = metadata !{i64 1224}
!1225 = metadata !{i64 1225}
!1226 = metadata !{i64 1226}
!1227 = metadata !{i64 1227}
!1228 = metadata !{i64 1228}
!1229 = metadata !{i64 1229}
!1230 = metadata !{i64 1230}
!1231 = metadata !{i64 1231}
!1232 = metadata !{i64 1232}
!1233 = metadata !{i64 1233}
!1234 = metadata !{i64 1234}
!1235 = metadata !{i64 1235}
!1236 = metadata !{i64 1236}
!1237 = metadata !{i64 1237}
!1238 = metadata !{i64 1238}
!1239 = metadata !{i64 1239}
!1240 = metadata !{i64 1240}
!1241 = metadata !{i64 1241}
!1242 = metadata !{i64 1242}
!1243 = metadata !{i64 1243}
!1244 = metadata !{i64 1244}
!1245 = metadata !{i64 1245}
!1246 = metadata !{i64 1246}
!1247 = metadata !{i64 1247}
!1248 = metadata !{i64 1248}
!1249 = metadata !{i64 1249}
!1250 = metadata !{i64 1250}
!1251 = metadata !{i64 1251}
!1252 = metadata !{i64 1252}
!1253 = metadata !{i64 1253}
!1254 = metadata !{i64 1254}
!1255 = metadata !{i64 1255}
!1256 = metadata !{i64 1256}
!1257 = metadata !{i64 1257}
!1258 = metadata !{i64 1258}
!1259 = metadata !{i64 1259}
!1260 = metadata !{i64 1260}
!1261 = metadata !{i64 1261}
!1262 = metadata !{i64 1262}
!1263 = metadata !{i64 1263}
!1264 = metadata !{i64 1264}
!1265 = metadata !{i64 1265}
!1266 = metadata !{i64 1266}
!1267 = metadata !{i64 1267}
!1268 = metadata !{i64 1268}
!1269 = metadata !{i64 1269}
!1270 = metadata !{i64 1270}
!1271 = metadata !{i64 1271}
!1272 = metadata !{i64 1272}
!1273 = metadata !{i64 1273}
!1274 = metadata !{i64 1274}
!1275 = metadata !{i64 1275}
!1276 = metadata !{i64 1276}
!1277 = metadata !{i64 1277}
!1278 = metadata !{i64 1278}
!1279 = metadata !{i64 1279}
!1280 = metadata !{i64 1280}
!1281 = metadata !{i64 1281}
!1282 = metadata !{i64 1282}
!1283 = metadata !{i64 1283}
!1284 = metadata !{i64 1284}
!1285 = metadata !{i64 1285}
!1286 = metadata !{i64 1286}
!1287 = metadata !{i64 1287}
!1288 = metadata !{i64 1288}
!1289 = metadata !{i64 1289}
!1290 = metadata !{i64 1290}
!1291 = metadata !{i64 1291}
!1292 = metadata !{i64 1292}
!1293 = metadata !{i64 1293}
!1294 = metadata !{i64 1294}
!1295 = metadata !{i64 1295}
!1296 = metadata !{i64 1296}
!1297 = metadata !{i64 1297}
!1298 = metadata !{i64 1298}
!1299 = metadata !{i64 1299}
!1300 = metadata !{i64 1300}
!1301 = metadata !{i64 1301}
!1302 = metadata !{i64 1302}
!1303 = metadata !{i64 1303}
!1304 = metadata !{i64 1304}
!1305 = metadata !{i64 1305}
!1306 = metadata !{i64 1306}
!1307 = metadata !{i64 1307}
!1308 = metadata !{i64 1308}
!1309 = metadata !{i64 1309}
!1310 = metadata !{i64 1310}
!1311 = metadata !{i64 1311}
!1312 = metadata !{i64 1312}
!1313 = metadata !{i64 1313}
!1314 = metadata !{i64 1314}
!1315 = metadata !{i64 1315}
!1316 = metadata !{i64 1316}
!1317 = metadata !{i64 1317}
!1318 = metadata !{i64 1318}
!1319 = metadata !{i64 1319}
!1320 = metadata !{i64 1320}
!1321 = metadata !{i64 1321}
!1322 = metadata !{i64 1322}
!1323 = metadata !{i64 1323}
!1324 = metadata !{i64 1324}
!1325 = metadata !{i64 1325}
!1326 = metadata !{i64 1326}
!1327 = metadata !{i64 1327}
!1328 = metadata !{i64 1328}
!1329 = metadata !{i64 1329}
!1330 = metadata !{i64 1330}
!1331 = metadata !{i64 1331}
!1332 = metadata !{i64 1332}
!1333 = metadata !{i64 1333}
!1334 = metadata !{i64 1334}
!1335 = metadata !{i64 1335}
!1336 = metadata !{i64 1336}
!1337 = metadata !{i64 1337}
!1338 = metadata !{i64 1338}
!1339 = metadata !{i64 1339}
!1340 = metadata !{i64 1340}
!1341 = metadata !{i64 1341}
!1342 = metadata !{i64 1342}
!1343 = metadata !{i64 1343}
!1344 = metadata !{i64 1344}
!1345 = metadata !{i64 1345}
!1346 = metadata !{i64 1346}
!1347 = metadata !{i64 1347}
!1348 = metadata !{i64 1348}
!1349 = metadata !{i64 1349}
!1350 = metadata !{i64 1350}
!1351 = metadata !{i64 1351}
!1352 = metadata !{i64 1352}
!1353 = metadata !{i64 1353}
!1354 = metadata !{i64 1354}
!1355 = metadata !{i64 1355}
!1356 = metadata !{i64 1356}
!1357 = metadata !{i64 1357}
!1358 = metadata !{i64 1358}
!1359 = metadata !{i64 1359}
!1360 = metadata !{i64 1360}
!1361 = metadata !{i64 1361}
!1362 = metadata !{i64 1362}
!1363 = metadata !{i64 1363}
!1364 = metadata !{i64 1364}
!1365 = metadata !{i64 1365}
!1366 = metadata !{i64 1366}
!1367 = metadata !{i64 1367}
!1368 = metadata !{i64 1368}
!1369 = metadata !{i64 1369}
!1370 = metadata !{i64 1370}
!1371 = metadata !{i64 1371}
!1372 = metadata !{i64 1372}
!1373 = metadata !{i64 1373}
!1374 = metadata !{i64 1374}
!1375 = metadata !{i64 1375}
!1376 = metadata !{i64 1376}
!1377 = metadata !{i64 1377}
!1378 = metadata !{i64 1378}
!1379 = metadata !{i64 1379}
!1380 = metadata !{i64 1380}
!1381 = metadata !{i64 1381}
!1382 = metadata !{i64 1382}
!1383 = metadata !{i64 1383}
!1384 = metadata !{i64 1384}
!1385 = metadata !{i64 1385}
!1386 = metadata !{i64 1386}
!1387 = metadata !{i64 1387}
!1388 = metadata !{i64 1388}
!1389 = metadata !{i64 1389}
!1390 = metadata !{i64 1390}
!1391 = metadata !{i64 1391}
!1392 = metadata !{i64 1392}
!1393 = metadata !{i64 1393}
!1394 = metadata !{i64 1394}
!1395 = metadata !{i64 1395}
!1396 = metadata !{i64 1396}
!1397 = metadata !{i64 1397}
!1398 = metadata !{i64 1398}
!1399 = metadata !{i64 1399}
!1400 = metadata !{i64 1400}
!1401 = metadata !{i64 1401}
!1402 = metadata !{i64 1402}
!1403 = metadata !{i64 1403}
!1404 = metadata !{i64 1404}
!1405 = metadata !{i64 1405}
!1406 = metadata !{i64 1406}
!1407 = metadata !{i64 1407}
!1408 = metadata !{i64 1408}
!1409 = metadata !{i64 1409}
!1410 = metadata !{i64 1410}
!1411 = metadata !{i64 1411}
!1412 = metadata !{i64 1412}
!1413 = metadata !{i64 1413}
!1414 = metadata !{i64 1414}
!1415 = metadata !{i64 1415}
!1416 = metadata !{i64 1416}
!1417 = metadata !{i64 1417}
!1418 = metadata !{i64 1418}
!1419 = metadata !{i64 1419}
!1420 = metadata !{i64 1420}
!1421 = metadata !{i64 1421}
!1422 = metadata !{i64 1422}
!1423 = metadata !{i64 1423}
!1424 = metadata !{i64 1424}
!1425 = metadata !{i64 1425}
!1426 = metadata !{i64 1426}
!1427 = metadata !{i64 1427}
!1428 = metadata !{i64 1428}
!1429 = metadata !{i64 1429}
!1430 = metadata !{i64 1430}
!1431 = metadata !{i64 1431}
!1432 = metadata !{i64 1432}
!1433 = metadata !{i64 1433}
!1434 = metadata !{i64 1434}
!1435 = metadata !{i64 1435}
!1436 = metadata !{i64 1436}
!1437 = metadata !{i64 1437}
!1438 = metadata !{i64 1438}
!1439 = metadata !{i64 1439}
!1440 = metadata !{i64 1440}
!1441 = metadata !{i64 1441}
!1442 = metadata !{i64 1442}
!1443 = metadata !{i64 1443}
!1444 = metadata !{i64 1444}
!1445 = metadata !{i64 1445}
!1446 = metadata !{i64 1446}
!1447 = metadata !{i64 1447}
!1448 = metadata !{i64 1448}
!1449 = metadata !{i64 1449}
!1450 = metadata !{i64 1450}
!1451 = metadata !{i64 1451}
!1452 = metadata !{i64 1452}
!1453 = metadata !{i64 1453}
!1454 = metadata !{i64 1454}
!1455 = metadata !{i64 1455}
!1456 = metadata !{i64 1456}
!1457 = metadata !{i64 1457}
!1458 = metadata !{i64 1458}
!1459 = metadata !{i64 1459}
!1460 = metadata !{i64 1460}
!1461 = metadata !{i64 1461}
!1462 = metadata !{i64 1462}
!1463 = metadata !{i64 1463}
!1464 = metadata !{i64 1464}
!1465 = metadata !{i64 1465}
!1466 = metadata !{i64 1466}
!1467 = metadata !{i64 1467}
!1468 = metadata !{i64 1468}
!1469 = metadata !{i64 1469}
!1470 = metadata !{i64 1470}
!1471 = metadata !{i64 1471}
!1472 = metadata !{i64 1472}
!1473 = metadata !{i64 1473}
!1474 = metadata !{i64 1474}
!1475 = metadata !{i64 1475}
!1476 = metadata !{i64 1476}
!1477 = metadata !{i64 1477}
!1478 = metadata !{i64 1478}
!1479 = metadata !{i64 1479}
!1480 = metadata !{i64 1480}
!1481 = metadata !{i64 1481}
!1482 = metadata !{i64 1482}
!1483 = metadata !{i64 1483}
!1484 = metadata !{i64 1484}
!1485 = metadata !{i64 1485}
!1486 = metadata !{i64 1486}
!1487 = metadata !{i64 1487}
!1488 = metadata !{i64 1488}
!1489 = metadata !{i64 1489}
!1490 = metadata !{i64 1490}
!1491 = metadata !{i64 1491}
!1492 = metadata !{i64 1492}
!1493 = metadata !{i64 1493}
!1494 = metadata !{i64 1494}
!1495 = metadata !{i64 1495}
!1496 = metadata !{i64 1496}
!1497 = metadata !{i64 1497}
!1498 = metadata !{i64 1498}
!1499 = metadata !{i64 1499}
!1500 = metadata !{i64 1500}
!1501 = metadata !{i64 1501}
!1502 = metadata !{i64 1502}
!1503 = metadata !{i64 1503}
!1504 = metadata !{i64 1504}
!1505 = metadata !{i64 1505}
!1506 = metadata !{i64 1506}
!1507 = metadata !{i64 1507}
!1508 = metadata !{i64 1508}
!1509 = metadata !{i64 1509}
!1510 = metadata !{i64 1510}
!1511 = metadata !{i64 1511}
!1512 = metadata !{i64 1512}
!1513 = metadata !{i64 1513}
!1514 = metadata !{i64 1514}
!1515 = metadata !{i64 1515}
!1516 = metadata !{i64 1516}
!1517 = metadata !{i64 1517}
!1518 = metadata !{i64 1518}
!1519 = metadata !{i64 1519}
!1520 = metadata !{i64 1520}
!1521 = metadata !{i64 1521}
!1522 = metadata !{i64 1522}
!1523 = metadata !{i64 1523}
!1524 = metadata !{i64 1524}
!1525 = metadata !{i64 1525}
!1526 = metadata !{i64 1526}
!1527 = metadata !{i64 1527}
!1528 = metadata !{i64 1528}
!1529 = metadata !{i64 1529}
!1530 = metadata !{i64 1530}
!1531 = metadata !{i64 1531}
!1532 = metadata !{i64 1532}
!1533 = metadata !{i64 1533}
!1534 = metadata !{i64 1534}
!1535 = metadata !{i64 1535}
!1536 = metadata !{i64 1536}
!1537 = metadata !{i64 1537}
!1538 = metadata !{i64 1538}
!1539 = metadata !{i64 1539}
!1540 = metadata !{i64 1540}
!1541 = metadata !{i64 1541}
!1542 = metadata !{i64 1542}
!1543 = metadata !{i64 1543}
!1544 = metadata !{i64 1544}
!1545 = metadata !{i64 1545}
!1546 = metadata !{i64 1546}
!1547 = metadata !{i64 1547}
!1548 = metadata !{i64 1548}
!1549 = metadata !{i64 1549}
!1550 = metadata !{i64 1550}
!1551 = metadata !{i64 1551}
!1552 = metadata !{i64 1552}
!1553 = metadata !{i64 1553}
!1554 = metadata !{i64 1554}
!1555 = metadata !{i64 1555}
!1556 = metadata !{i64 1556}
!1557 = metadata !{i64 1557}
!1558 = metadata !{i64 1558}
!1559 = metadata !{i64 1559}
!1560 = metadata !{i64 1560}
!1561 = metadata !{i64 1561}
!1562 = metadata !{i64 1562}
!1563 = metadata !{i64 1563}
!1564 = metadata !{i64 1564}
!1565 = metadata !{i64 1565}
!1566 = metadata !{i64 1566}
!1567 = metadata !{i64 1567}
!1568 = metadata !{i64 1568}
!1569 = metadata !{i64 1569}
!1570 = metadata !{i64 1570}
!1571 = metadata !{i64 1571}
!1572 = metadata !{i64 1572}
!1573 = metadata !{i64 1573}
!1574 = metadata !{i64 1574}
!1575 = metadata !{i64 1575}
!1576 = metadata !{i64 1576}
!1577 = metadata !{i64 1577}
!1578 = metadata !{i64 1578}
!1579 = metadata !{i64 1579}
!1580 = metadata !{i64 1580}
!1581 = metadata !{i64 1581}
!1582 = metadata !{i64 1582}
!1583 = metadata !{i64 1583}
!1584 = metadata !{i64 1584}
!1585 = metadata !{i64 1585}
!1586 = metadata !{i64 1586}
!1587 = metadata !{i64 1587}
!1588 = metadata !{i64 1588}
!1589 = metadata !{i64 1589}
!1590 = metadata !{i64 1590}
!1591 = metadata !{i64 1591}
!1592 = metadata !{i64 1592}
!1593 = metadata !{i64 1593}
!1594 = metadata !{i64 1594}
!1595 = metadata !{i64 1595}
!1596 = metadata !{i64 1596}
!1597 = metadata !{i64 1597}
!1598 = metadata !{i64 1598}
!1599 = metadata !{i64 1599}
!1600 = metadata !{i64 1600}
!1601 = metadata !{i64 1601}
!1602 = metadata !{i64 1602}
!1603 = metadata !{i64 1603}
!1604 = metadata !{i64 1604}
!1605 = metadata !{i64 1605}
!1606 = metadata !{i64 1606}
!1607 = metadata !{i64 1607}
!1608 = metadata !{i64 1608}
!1609 = metadata !{i64 1609}
!1610 = metadata !{i64 1610}
!1611 = metadata !{i64 1611}
!1612 = metadata !{i64 1612}
!1613 = metadata !{i64 1613}
!1614 = metadata !{i64 1614}
!1615 = metadata !{i64 1615}
!1616 = metadata !{i64 1616}
!1617 = metadata !{i64 1617}
!1618 = metadata !{i64 1618}
!1619 = metadata !{i64 1619}
!1620 = metadata !{i64 1620}
!1621 = metadata !{i64 1621}
!1622 = metadata !{i64 1622}
!1623 = metadata !{i64 1623}
!1624 = metadata !{i64 1624}
!1625 = metadata !{i64 1625}
!1626 = metadata !{i64 1626}
!1627 = metadata !{i64 1627}
!1628 = metadata !{i64 1628}
!1629 = metadata !{i64 1629}
!1630 = metadata !{i64 1630}
!1631 = metadata !{i64 1631}
!1632 = metadata !{i64 1632}
!1633 = metadata !{i64 1633}
!1634 = metadata !{i64 1634}
!1635 = metadata !{i64 1635}
!1636 = metadata !{i64 1636}
!1637 = metadata !{i64 1637}
!1638 = metadata !{i64 1638}
!1639 = metadata !{i64 1639}
!1640 = metadata !{i64 1640}
!1641 = metadata !{i64 1641}
!1642 = metadata !{i64 1642}
!1643 = metadata !{i64 1643}
!1644 = metadata !{i64 1644}
!1645 = metadata !{i64 1645}
!1646 = metadata !{i64 1646}
!1647 = metadata !{i64 1647}
!1648 = metadata !{i64 1648}
!1649 = metadata !{i64 1649}
!1650 = metadata !{i64 1650}
!1651 = metadata !{i64 1651}
!1652 = metadata !{i64 1652}
!1653 = metadata !{i64 1653}
!1654 = metadata !{i64 1654}
!1655 = metadata !{i64 1655}
!1656 = metadata !{i64 1656}
!1657 = metadata !{i64 1657}
!1658 = metadata !{i64 1658}
!1659 = metadata !{i64 1659}
!1660 = metadata !{i64 1660}
!1661 = metadata !{i64 1661}
!1662 = metadata !{i64 1662}
!1663 = metadata !{i64 1663}
!1664 = metadata !{i64 1664}
!1665 = metadata !{i64 1665}
!1666 = metadata !{i64 1666}
!1667 = metadata !{i64 1667}
!1668 = metadata !{i64 1668}
!1669 = metadata !{i64 1669}
!1670 = metadata !{i64 1670}
!1671 = metadata !{i64 1671}
!1672 = metadata !{i64 1672}
!1673 = metadata !{i64 1673}
!1674 = metadata !{i64 1674}
!1675 = metadata !{i64 1675}
!1676 = metadata !{i64 1676}
!1677 = metadata !{i64 1677}
!1678 = metadata !{i64 1678}
!1679 = metadata !{i64 1679}
!1680 = metadata !{i64 1680}
!1681 = metadata !{i64 1681}
!1682 = metadata !{i64 1682}
!1683 = metadata !{i64 1683}
!1684 = metadata !{i64 1684}
!1685 = metadata !{i64 1685}
!1686 = metadata !{i64 1686}
!1687 = metadata !{i64 1687}
!1688 = metadata !{i64 1688}
!1689 = metadata !{i64 1689}
!1690 = metadata !{i64 1690}
!1691 = metadata !{i64 1691}
!1692 = metadata !{i64 1692}
!1693 = metadata !{i64 1693}
!1694 = metadata !{i64 1694}
!1695 = metadata !{i64 1695}
!1696 = metadata !{i64 1696}
!1697 = metadata !{i64 1697}
!1698 = metadata !{i64 1698}
!1699 = metadata !{i64 1699}
!1700 = metadata !{i64 1700}
!1701 = metadata !{i64 1701}
!1702 = metadata !{i64 1702}
!1703 = metadata !{i64 1703}
!1704 = metadata !{i64 1704}
!1705 = metadata !{i64 1705}
!1706 = metadata !{i64 1706}
!1707 = metadata !{i64 1707}
!1708 = metadata !{i64 1708}
!1709 = metadata !{i64 1709}
!1710 = metadata !{i64 1710}
!1711 = metadata !{i64 1711}
!1712 = metadata !{i64 1712}
!1713 = metadata !{i64 1713}
!1714 = metadata !{i64 1714}
!1715 = metadata !{i64 1715}
!1716 = metadata !{i64 1716}
!1717 = metadata !{i64 1717}
!1718 = metadata !{i64 1718}
!1719 = metadata !{i64 1719}
!1720 = metadata !{i64 1720}
!1721 = metadata !{i64 1721}
!1722 = metadata !{i64 1722}
!1723 = metadata !{i64 1723}
!1724 = metadata !{i64 1724}
!1725 = metadata !{i64 1725}
!1726 = metadata !{i64 1726}
!1727 = metadata !{i64 1727}
!1728 = metadata !{i64 1728}
!1729 = metadata !{i64 1729}
!1730 = metadata !{i64 1730}
!1731 = metadata !{i64 1731}
!1732 = metadata !{i64 1732}
!1733 = metadata !{i64 1733}
!1734 = metadata !{i64 1734}
!1735 = metadata !{i64 1735}
!1736 = metadata !{i64 1736}
!1737 = metadata !{i64 1737}
!1738 = metadata !{i64 1738}
!1739 = metadata !{i64 1739}
!1740 = metadata !{i64 1740}
!1741 = metadata !{i64 1741}
!1742 = metadata !{i64 1742}
!1743 = metadata !{i64 1743}
!1744 = metadata !{i64 1744}
!1745 = metadata !{i64 1745}
!1746 = metadata !{i64 1746}
!1747 = metadata !{i64 1747}
!1748 = metadata !{i64 1748}
!1749 = metadata !{i64 1749}
!1750 = metadata !{i64 1750}
!1751 = metadata !{i64 1751}
!1752 = metadata !{i64 1752}
!1753 = metadata !{i64 1753}
!1754 = metadata !{i64 1754}
!1755 = metadata !{i64 1755}
!1756 = metadata !{i64 1756}
!1757 = metadata !{i64 1757}
!1758 = metadata !{i64 1758}
!1759 = metadata !{i64 1759}
!1760 = metadata !{i64 1760}
!1761 = metadata !{i64 1761}
!1762 = metadata !{i64 1762}
!1763 = metadata !{i64 1763}
!1764 = metadata !{i64 1764}
!1765 = metadata !{i64 1765}
!1766 = metadata !{i64 1766}
!1767 = metadata !{i64 1767}
!1768 = metadata !{i64 1768}
!1769 = metadata !{i64 1769}
!1770 = metadata !{i64 1770}
!1771 = metadata !{i64 1771}
!1772 = metadata !{i64 1772}
!1773 = metadata !{i64 1773}
!1774 = metadata !{i64 1774}
!1775 = metadata !{i64 1775}
!1776 = metadata !{i64 1776}
!1777 = metadata !{i64 1777}
!1778 = metadata !{i64 1778}
!1779 = metadata !{i64 1779}
!1780 = metadata !{i64 1780}
!1781 = metadata !{i64 1781}
!1782 = metadata !{i64 1782}
!1783 = metadata !{i64 1783}
!1784 = metadata !{i64 1784}
!1785 = metadata !{i64 1785}
!1786 = metadata !{i64 1786}
!1787 = metadata !{i64 1787}
!1788 = metadata !{i64 1788}
!1789 = metadata !{i64 1789}
!1790 = metadata !{i64 1790}
!1791 = metadata !{i64 1791}
!1792 = metadata !{i64 1792}
!1793 = metadata !{i64 1793}
!1794 = metadata !{i64 1794}
!1795 = metadata !{i64 1795}
!1796 = metadata !{i64 1796}
!1797 = metadata !{i64 1797}
!1798 = metadata !{i64 1798}
!1799 = metadata !{i64 1799}
!1800 = metadata !{i64 1800}
!1801 = metadata !{i64 1801}
!1802 = metadata !{i64 1802}
!1803 = metadata !{i64 1803}
!1804 = metadata !{i64 1804}
!1805 = metadata !{i64 1805}
!1806 = metadata !{i64 1806}
!1807 = metadata !{i64 1807}
!1808 = metadata !{i64 1808}
!1809 = metadata !{i64 1809}
!1810 = metadata !{i64 1810}
!1811 = metadata !{i64 1811}
!1812 = metadata !{i64 1812}
!1813 = metadata !{i64 1813}
!1814 = metadata !{i64 1814}
!1815 = metadata !{i64 1815}
!1816 = metadata !{i64 1816}
!1817 = metadata !{i64 1817}
!1818 = metadata !{i64 1818}
!1819 = metadata !{i64 1819}
!1820 = metadata !{i64 1820}
!1821 = metadata !{i64 1821}
!1822 = metadata !{i64 1822}
!1823 = metadata !{i64 1823}
!1824 = metadata !{i64 1824}
!1825 = metadata !{i64 1825}
!1826 = metadata !{i64 1826}
!1827 = metadata !{i64 1827}
!1828 = metadata !{i64 1828}
!1829 = metadata !{i64 1829}
!1830 = metadata !{i64 1830}
!1831 = metadata !{i64 1831}
!1832 = metadata !{i64 1832}
!1833 = metadata !{i64 1833}
!1834 = metadata !{i64 1834}
!1835 = metadata !{i64 1835}
!1836 = metadata !{i64 1836}
!1837 = metadata !{i64 1837}
!1838 = metadata !{i64 1838}
!1839 = metadata !{i64 1839}
!1840 = metadata !{i64 1840}
!1841 = metadata !{i64 1841}
!1842 = metadata !{i64 1842}
!1843 = metadata !{i64 1843}
!1844 = metadata !{i64 1844}
!1845 = metadata !{i64 1845}
!1846 = metadata !{i64 1846}
!1847 = metadata !{i64 1847}
!1848 = metadata !{i64 1848}
!1849 = metadata !{i64 1849}
!1850 = metadata !{i64 1850}
!1851 = metadata !{i64 1851}
!1852 = metadata !{i64 1852}
!1853 = metadata !{i64 1853}
!1854 = metadata !{i64 1854}
!1855 = metadata !{i64 1855}
!1856 = metadata !{i64 1856}
!1857 = metadata !{i64 1857}
!1858 = metadata !{i64 1858}
!1859 = metadata !{i64 1859}
!1860 = metadata !{i64 1860}
!1861 = metadata !{i64 1861}
!1862 = metadata !{i64 1862}
!1863 = metadata !{i64 1863}
!1864 = metadata !{i64 1864}
!1865 = metadata !{i64 1865}
!1866 = metadata !{i64 1866}
!1867 = metadata !{i64 1867}
!1868 = metadata !{i64 1868}
!1869 = metadata !{i64 1869}
!1870 = metadata !{i64 1870}
!1871 = metadata !{i64 1871}
!1872 = metadata !{i64 1872}
!1873 = metadata !{i64 1873}
!1874 = metadata !{i64 1874}
!1875 = metadata !{i64 1875}
!1876 = metadata !{i64 1876}
!1877 = metadata !{i64 1877}
!1878 = metadata !{i64 1878}
!1879 = metadata !{i64 1879}
!1880 = metadata !{i64 1880}
!1881 = metadata !{i64 1881}
!1882 = metadata !{i64 1882}
!1883 = metadata !{i64 1883}
!1884 = metadata !{i64 1884}
!1885 = metadata !{i64 1885}
!1886 = metadata !{i64 1886}
!1887 = metadata !{i64 1887}
!1888 = metadata !{i64 1888}
!1889 = metadata !{i64 1889}
!1890 = metadata !{i64 1890}
!1891 = metadata !{i64 1891}
!1892 = metadata !{i64 1892}
!1893 = metadata !{i64 1893}
!1894 = metadata !{i64 1894}
!1895 = metadata !{i64 1895}
!1896 = metadata !{i64 1896}
!1897 = metadata !{i64 1897}
!1898 = metadata !{i64 1898}
!1899 = metadata !{i64 1899}
!1900 = metadata !{i64 1900}
!1901 = metadata !{i64 1901}
!1902 = metadata !{i64 1902}
!1903 = metadata !{i64 1903}
!1904 = metadata !{i64 1904}
!1905 = metadata !{i64 1905}
!1906 = metadata !{i64 1906}
!1907 = metadata !{i64 1907}
!1908 = metadata !{i64 1908}
!1909 = metadata !{i64 1909}
!1910 = metadata !{i64 1910}
!1911 = metadata !{i64 1911}
!1912 = metadata !{i64 1912}
!1913 = metadata !{i64 1913}
!1914 = metadata !{i64 1914}
!1915 = metadata !{i64 1915}
!1916 = metadata !{i64 1916}
!1917 = metadata !{i64 1917}
!1918 = metadata !{i64 1918}
!1919 = metadata !{i64 1919}
!1920 = metadata !{i64 1920}
!1921 = metadata !{i64 1921}
!1922 = metadata !{i64 1922}
!1923 = metadata !{i64 1923}
!1924 = metadata !{i64 1924}
!1925 = metadata !{i64 1925}
!1926 = metadata !{i64 1926}
!1927 = metadata !{i64 1927}
!1928 = metadata !{i64 1928}
!1929 = metadata !{i64 1929}
!1930 = metadata !{i64 1930}
!1931 = metadata !{i64 1931}
!1932 = metadata !{i64 1932}
!1933 = metadata !{i64 1933}
!1934 = metadata !{i64 1934}
!1935 = metadata !{i64 1935}
!1936 = metadata !{i64 1936}
!1937 = metadata !{i64 1937}
!1938 = metadata !{i64 1938}
!1939 = metadata !{i64 1939}
!1940 = metadata !{i64 1940}
!1941 = metadata !{i64 1941}
!1942 = metadata !{i64 1942}
!1943 = metadata !{i64 1943}
!1944 = metadata !{i64 1944}
!1945 = metadata !{i64 1945}
!1946 = metadata !{i64 1946}
!1947 = metadata !{i64 1947}
!1948 = metadata !{i64 1948}
!1949 = metadata !{i64 1949}
!1950 = metadata !{i64 1950}
!1951 = metadata !{i64 1951}
!1952 = metadata !{i64 1952}
!1953 = metadata !{i64 1953}
!1954 = metadata !{i64 1954}
!1955 = metadata !{i64 1955}
!1956 = metadata !{i64 1956}
!1957 = metadata !{i64 1957}
!1958 = metadata !{i64 1958}
!1959 = metadata !{i64 1959}
!1960 = metadata !{i64 1960}
!1961 = metadata !{i64 1961}
!1962 = metadata !{i64 1962}
!1963 = metadata !{i64 1963}
!1964 = metadata !{i64 1964}
!1965 = metadata !{i64 1965}
!1966 = metadata !{i64 1966}
!1967 = metadata !{i64 1967}
!1968 = metadata !{i64 1968}
!1969 = metadata !{i64 1969}
!1970 = metadata !{i64 1970}
!1971 = metadata !{i64 1971}
!1972 = metadata !{i64 1972}
!1973 = metadata !{i64 1973}
!1974 = metadata !{i64 1974}
!1975 = metadata !{i64 1975}
!1976 = metadata !{i64 1976}
!1977 = metadata !{i64 1977}
!1978 = metadata !{i64 1978}
!1979 = metadata !{i64 1979}
!1980 = metadata !{i64 1980}
!1981 = metadata !{i64 1981}
!1982 = metadata !{i64 1982}
!1983 = metadata !{i64 1983}
!1984 = metadata !{i64 1984}
!1985 = metadata !{i64 1985}
!1986 = metadata !{i64 1986}
!1987 = metadata !{i64 1987}
!1988 = metadata !{i64 1988}
!1989 = metadata !{i64 1989}
!1990 = metadata !{i64 1990}
!1991 = metadata !{i64 1991}
!1992 = metadata !{i64 1992}
!1993 = metadata !{i64 1993}
!1994 = metadata !{i64 1994}
!1995 = metadata !{i64 1995}
!1996 = metadata !{i64 1996}
!1997 = metadata !{i64 1997}
!1998 = metadata !{i64 1998}
!1999 = metadata !{i64 1999}
!2000 = metadata !{i64 2000}
!2001 = metadata !{i64 2001}
!2002 = metadata !{i64 2002}
!2003 = metadata !{i64 2003}
!2004 = metadata !{i64 2004}
!2005 = metadata !{i64 2005}
!2006 = metadata !{i64 2006}
!2007 = metadata !{i64 2007}
!2008 = metadata !{i64 2008}
!2009 = metadata !{i64 2009}
!2010 = metadata !{i64 2010}
!2011 = metadata !{i64 2011}
!2012 = metadata !{i64 2012}
!2013 = metadata !{i64 2013}
!2014 = metadata !{i64 2014}
!2015 = metadata !{i64 2015}
!2016 = metadata !{i64 2016}
!2017 = metadata !{i64 2017}
!2018 = metadata !{i64 2018}
!2019 = metadata !{i64 2019}
!2020 = metadata !{i64 2020}
!2021 = metadata !{i64 2021}
!2022 = metadata !{i64 2022}
!2023 = metadata !{i64 2023}
!2024 = metadata !{i64 2024}
!2025 = metadata !{i64 2025}
!2026 = metadata !{i64 2026}
!2027 = metadata !{i64 2027}
!2028 = metadata !{i64 2028}
!2029 = metadata !{i64 2029}
!2030 = metadata !{i64 2030}
!2031 = metadata !{i64 2031}
!2032 = metadata !{i64 2032}
!2033 = metadata !{i64 2033}
!2034 = metadata !{i64 2034}
!2035 = metadata !{i64 2035}
!2036 = metadata !{i64 2036}
!2037 = metadata !{i64 2037}
!2038 = metadata !{i64 2038}
!2039 = metadata !{i64 2039}
!2040 = metadata !{i64 2040}
!2041 = metadata !{i64 2041}
!2042 = metadata !{i64 2042}
!2043 = metadata !{i64 2043}
!2044 = metadata !{i64 2044}
!2045 = metadata !{i64 2045}
!2046 = metadata !{i64 2046}
!2047 = metadata !{i64 2047}
!2048 = metadata !{i64 2048}
!2049 = metadata !{i64 2049}
!2050 = metadata !{i64 2050}
!2051 = metadata !{i64 2051}
!2052 = metadata !{i64 2052}
!2053 = metadata !{i64 2053}
!2054 = metadata !{i64 2054}
!2055 = metadata !{i64 2055}
!2056 = metadata !{i64 2056}
!2057 = metadata !{i64 2057}
!2058 = metadata !{i64 2058}
!2059 = metadata !{i64 2059}
!2060 = metadata !{i64 2060}
!2061 = metadata !{i64 2061}
!2062 = metadata !{i64 2062}
!2063 = metadata !{i64 2063}
!2064 = metadata !{i64 2064}
!2065 = metadata !{i64 2065}
!2066 = metadata !{i64 2066}
!2067 = metadata !{i64 2067}
!2068 = metadata !{i64 2068}
!2069 = metadata !{i64 2069}
!2070 = metadata !{i64 2070}
!2071 = metadata !{i64 2071}
!2072 = metadata !{i64 2072}
!2073 = metadata !{i64 2073}
!2074 = metadata !{i64 2074}
!2075 = metadata !{i64 2075}
!2076 = metadata !{i64 2076}
!2077 = metadata !{i64 2077}
!2078 = metadata !{i64 2078}
!2079 = metadata !{i64 2079}
!2080 = metadata !{i64 2080}
!2081 = metadata !{i64 2081}
!2082 = metadata !{i64 2082}
!2083 = metadata !{i64 2083}
!2084 = metadata !{i64 2084}
!2085 = metadata !{i64 2085}
!2086 = metadata !{i64 2086}
!2087 = metadata !{i64 2087}
!2088 = metadata !{i64 2088}
!2089 = metadata !{i64 2089}
!2090 = metadata !{i64 2090}
!2091 = metadata !{i64 2091}
!2092 = metadata !{i64 2092}
!2093 = metadata !{i64 2093}
!2094 = metadata !{i64 2094}
!2095 = metadata !{i64 2095}
!2096 = metadata !{i64 2096}
!2097 = metadata !{i64 2097}
!2098 = metadata !{i64 2098}
!2099 = metadata !{i64 2099}
!2100 = metadata !{i64 2100}
!2101 = metadata !{i64 2101}
!2102 = metadata !{i64 2102}
!2103 = metadata !{i64 2103}
!2104 = metadata !{i64 2104}
!2105 = metadata !{i64 2105}
!2106 = metadata !{i64 2106}
!2107 = metadata !{i64 2107}
!2108 = metadata !{i64 2108}
!2109 = metadata !{i64 2109}
!2110 = metadata !{i64 2110}
!2111 = metadata !{i64 2111}
!2112 = metadata !{i64 2112}
!2113 = metadata !{i64 2113}
!2114 = metadata !{i64 2114}
!2115 = metadata !{i64 2115}
!2116 = metadata !{i64 2116}
!2117 = metadata !{i64 2117}
!2118 = metadata !{i64 2118}
!2119 = metadata !{i64 2119}
!2120 = metadata !{i64 2120}
!2121 = metadata !{i64 2121}
!2122 = metadata !{i64 2122}
!2123 = metadata !{i64 2123}
!2124 = metadata !{i64 2124}
!2125 = metadata !{i64 2125}
!2126 = metadata !{i64 2126}
!2127 = metadata !{i64 2127}
!2128 = metadata !{i64 2128}
!2129 = metadata !{i64 2129}
!2130 = metadata !{i64 2130}
!2131 = metadata !{i64 2131}
!2132 = metadata !{i64 2132}
!2133 = metadata !{i64 2133}
!2134 = metadata !{i64 2134}
!2135 = metadata !{i64 2135}
!2136 = metadata !{i64 2136}
!2137 = metadata !{i64 2137}
!2138 = metadata !{i64 2138}
!2139 = metadata !{i64 2139}
!2140 = metadata !{i64 2140}
!2141 = metadata !{i64 2141}
!2142 = metadata !{i64 2142}
!2143 = metadata !{i64 2143}
!2144 = metadata !{i64 2144}
!2145 = metadata !{i64 2145}
!2146 = metadata !{i64 2146}
!2147 = metadata !{i64 2147}
!2148 = metadata !{i64 2148}
!2149 = metadata !{i64 2149}
!2150 = metadata !{i64 2150}
!2151 = metadata !{i64 2151}
!2152 = metadata !{i64 2152}
!2153 = metadata !{i64 2153}
!2154 = metadata !{i64 2154}
!2155 = metadata !{i64 2155}
!2156 = metadata !{i64 2156}
!2157 = metadata !{i64 2157}
!2158 = metadata !{i64 2158}
!2159 = metadata !{i64 2159}
!2160 = metadata !{i64 2160}
!2161 = metadata !{i64 2161}
!2162 = metadata !{i64 2162}
!2163 = metadata !{i64 2163}
!2164 = metadata !{i64 2164}
!2165 = metadata !{i64 2165}
!2166 = metadata !{i64 2166}
!2167 = metadata !{i64 2167}
!2168 = metadata !{i64 2168}
!2169 = metadata !{i64 2169}
!2170 = metadata !{i64 2170}
!2171 = metadata !{i64 2171}
!2172 = metadata !{i64 2172}
!2173 = metadata !{i64 2173}
!2174 = metadata !{i64 2174}
!2175 = metadata !{i64 2175}
!2176 = metadata !{i64 2176}
!2177 = metadata !{i64 2177}
!2178 = metadata !{i64 2178}
!2179 = metadata !{i64 2179}
!2180 = metadata !{i64 2180}
!2181 = metadata !{i64 2181}
!2182 = metadata !{i64 2182}
!2183 = metadata !{i64 2183}
!2184 = metadata !{i64 2184}
!2185 = metadata !{i64 2185}
!2186 = metadata !{i64 2186}
!2187 = metadata !{i64 2187}
!2188 = metadata !{i64 2188}
!2189 = metadata !{i64 2189}
!2190 = metadata !{i64 2190}
!2191 = metadata !{i64 2191}
!2192 = metadata !{i64 2192}
!2193 = metadata !{i64 2193}
!2194 = metadata !{i64 2194}
!2195 = metadata !{i64 2195}
!2196 = metadata !{i64 2196}
!2197 = metadata !{i64 2197}
!2198 = metadata !{i64 2198}
!2199 = metadata !{i64 2199}
!2200 = metadata !{i64 2200}
!2201 = metadata !{i64 2201}
!2202 = metadata !{i64 2202}
!2203 = metadata !{i64 2203}
!2204 = metadata !{i64 2204}
!2205 = metadata !{i64 2205}
!2206 = metadata !{i64 2206}
!2207 = metadata !{i64 2207}
!2208 = metadata !{i64 2208}
!2209 = metadata !{i64 2209}
!2210 = metadata !{i64 2210}
!2211 = metadata !{i64 2211}
!2212 = metadata !{i64 2212}
!2213 = metadata !{i64 2213}
!2214 = metadata !{i64 2214}
!2215 = metadata !{i64 2215}
!2216 = metadata !{i64 2216}
!2217 = metadata !{i64 2217}
!2218 = metadata !{i64 2218}
!2219 = metadata !{i64 2219}
!2220 = metadata !{i64 2220}
!2221 = metadata !{i64 2221}
!2222 = metadata !{i64 2222}
!2223 = metadata !{i64 2223}
!2224 = metadata !{i64 2224}
!2225 = metadata !{i64 2225}
!2226 = metadata !{i64 2226}
!2227 = metadata !{i64 2227}
!2228 = metadata !{i64 2228}
!2229 = metadata !{i64 2229}
!2230 = metadata !{i64 2230}
!2231 = metadata !{i64 2231}
!2232 = metadata !{i64 2232}
!2233 = metadata !{i64 2233}
!2234 = metadata !{i64 2234}
!2235 = metadata !{i64 2235}
!2236 = metadata !{i64 2236}
!2237 = metadata !{i64 2237}
!2238 = metadata !{i64 2238}
!2239 = metadata !{i64 2239}
!2240 = metadata !{i64 2240}
!2241 = metadata !{i64 2241}
!2242 = metadata !{i64 2242}
!2243 = metadata !{i64 2243}
!2244 = metadata !{i64 2244}
!2245 = metadata !{i64 2245}
!2246 = metadata !{i64 2246}
!2247 = metadata !{i64 2247}
!2248 = metadata !{i64 2248}
!2249 = metadata !{i64 2249}
!2250 = metadata !{i64 2250}
!2251 = metadata !{i64 2251}
!2252 = metadata !{i64 2252}
!2253 = metadata !{i64 2253}
!2254 = metadata !{i64 2254}
!2255 = metadata !{i64 2255}
!2256 = metadata !{i64 2256}
!2257 = metadata !{i64 2257}
!2258 = metadata !{i64 2258}
!2259 = metadata !{i64 2259}
!2260 = metadata !{i64 2260}
!2261 = metadata !{i64 2261}
!2262 = metadata !{i64 2262}
!2263 = metadata !{i64 2263}
!2264 = metadata !{i64 2264}
!2265 = metadata !{i64 2265}
!2266 = metadata !{i64 2266}
!2267 = metadata !{i64 2267}
!2268 = metadata !{i64 2268}
!2269 = metadata !{i64 2269}
!2270 = metadata !{i64 2270}
!2271 = metadata !{i64 2271}
!2272 = metadata !{i64 2272}
!2273 = metadata !{i64 2273}
!2274 = metadata !{i64 2274}
!2275 = metadata !{i64 2275}
!2276 = metadata !{i64 2276}
!2277 = metadata !{i64 2277}
!2278 = metadata !{i64 2278}
!2279 = metadata !{i64 2279}
!2280 = metadata !{i64 2280}
!2281 = metadata !{i64 2281}
!2282 = metadata !{i64 2282}
!2283 = metadata !{i64 2283}
!2284 = metadata !{i64 2284}
!2285 = metadata !{i64 2285}
!2286 = metadata !{i64 2286}
!2287 = metadata !{i64 2287}
!2288 = metadata !{i64 2288}
!2289 = metadata !{i64 2289}
!2290 = metadata !{i64 2290}
!2291 = metadata !{i64 2291}
!2292 = metadata !{i64 2292}
!2293 = metadata !{i64 2293}
!2294 = metadata !{i64 2294}
!2295 = metadata !{i64 2295}
!2296 = metadata !{i64 2296}
!2297 = metadata !{i64 2297}
!2298 = metadata !{i64 2298}
!2299 = metadata !{i64 2299}
!2300 = metadata !{i64 2300}
!2301 = metadata !{i64 2301}
!2302 = metadata !{i64 2302}
!2303 = metadata !{i64 2303}
!2304 = metadata !{i64 2304}
!2305 = metadata !{i64 2305}
!2306 = metadata !{i64 2306}
!2307 = metadata !{i64 2307}
!2308 = metadata !{i64 2308}
!2309 = metadata !{i64 2309}
!2310 = metadata !{i64 2310}
!2311 = metadata !{i64 2311}
!2312 = metadata !{i64 2312}
!2313 = metadata !{i64 2313}
!2314 = metadata !{i64 2314}
!2315 = metadata !{i64 2315}
!2316 = metadata !{i64 2316}
!2317 = metadata !{i64 2317}
!2318 = metadata !{i64 2318}
!2319 = metadata !{i64 2319}
!2320 = metadata !{i64 2320}
!2321 = metadata !{i64 2321}
!2322 = metadata !{i64 2322}
!2323 = metadata !{i64 2323}
!2324 = metadata !{i64 2324}
!2325 = metadata !{i64 2325}
!2326 = metadata !{i64 2326}
!2327 = metadata !{i64 2327}
!2328 = metadata !{i64 2328}
!2329 = metadata !{i64 2329}
!2330 = metadata !{i64 2330}
!2331 = metadata !{i64 2331}
!2332 = metadata !{i64 2332}
!2333 = metadata !{i64 2333}
!2334 = metadata !{i64 2334}
!2335 = metadata !{i64 2335}
!2336 = metadata !{i64 2336}
!2337 = metadata !{i64 2337}
!2338 = metadata !{i64 2338}
!2339 = metadata !{i64 2339}
!2340 = metadata !{i64 2340}
!2341 = metadata !{i64 2341}
!2342 = metadata !{i64 2342}
!2343 = metadata !{i64 2343}
!2344 = metadata !{i64 2344}
!2345 = metadata !{i64 2345}
!2346 = metadata !{i64 2346}
!2347 = metadata !{i64 2347}
!2348 = metadata !{i64 2348}
!2349 = metadata !{i64 2349}
!2350 = metadata !{i64 2350}
!2351 = metadata !{i64 2351}
!2352 = metadata !{i64 2352}
!2353 = metadata !{i64 2353}
!2354 = metadata !{i64 2354}
!2355 = metadata !{i64 2355}
!2356 = metadata !{i64 2356}
!2357 = metadata !{i64 2357}
!2358 = metadata !{i64 2358}
!2359 = metadata !{i64 2359}
!2360 = metadata !{i64 2360}
!2361 = metadata !{i64 2361}
!2362 = metadata !{i64 2362}
!2363 = metadata !{i64 2363}
!2364 = metadata !{i64 2364}
!2365 = metadata !{i64 2365}
!2366 = metadata !{i64 2366}
!2367 = metadata !{i64 2367}
!2368 = metadata !{i64 2368}
!2369 = metadata !{i64 2369}
!2370 = metadata !{i64 2370}
!2371 = metadata !{i64 2371}
!2372 = metadata !{i64 2372}
!2373 = metadata !{i64 2373}
!2374 = metadata !{i64 2374}
!2375 = metadata !{i64 2375}
!2376 = metadata !{i64 2376}
!2377 = metadata !{i64 2377}
!2378 = metadata !{i64 2378}
!2379 = metadata !{i64 2379}
!2380 = metadata !{i64 2380}
!2381 = metadata !{i64 2381}
!2382 = metadata !{i64 2382}
!2383 = metadata !{i64 2383}
!2384 = metadata !{i64 2384}
!2385 = metadata !{i64 2385}
!2386 = metadata !{i64 2386}
!2387 = metadata !{i64 2387}
!2388 = metadata !{i64 2388}
!2389 = metadata !{i64 2389}
!2390 = metadata !{i64 2390}
!2391 = metadata !{i64 2391}
!2392 = metadata !{i64 2392}
!2393 = metadata !{i64 2393}
!2394 = metadata !{i64 2394}
!2395 = metadata !{i64 2395}
!2396 = metadata !{i64 2396}
!2397 = metadata !{i64 2397}
!2398 = metadata !{i64 2398}
!2399 = metadata !{i64 2399}
!2400 = metadata !{i64 2400}
!2401 = metadata !{i64 2401}
!2402 = metadata !{i64 2402}
!2403 = metadata !{i64 2403}
!2404 = metadata !{i64 2404}
!2405 = metadata !{i64 2405}
!2406 = metadata !{i64 2406}
!2407 = metadata !{i64 2407}
!2408 = metadata !{i64 2408}
!2409 = metadata !{i64 2409}
!2410 = metadata !{i64 2410}
!2411 = metadata !{i64 2411}
!2412 = metadata !{i64 2412}
!2413 = metadata !{i64 2413}
!2414 = metadata !{i64 2414}
!2415 = metadata !{i64 2415}
!2416 = metadata !{i64 2416}
!2417 = metadata !{i64 2417}
!2418 = metadata !{i64 2418}
!2419 = metadata !{i64 2419}
!2420 = metadata !{i64 2420}
!2421 = metadata !{i64 2421}
!2422 = metadata !{i64 2422}
!2423 = metadata !{i64 2423}
!2424 = metadata !{i64 2424}
!2425 = metadata !{i64 2425}
!2426 = metadata !{i64 2426}
!2427 = metadata !{i64 2427}
!2428 = metadata !{i64 2428}
!2429 = metadata !{i64 2429}
!2430 = metadata !{i64 2430}
!2431 = metadata !{i64 2431}
!2432 = metadata !{i64 2432}
!2433 = metadata !{i64 2433}
!2434 = metadata !{i64 2434}
!2435 = metadata !{i64 2435}
!2436 = metadata !{i64 2436}
!2437 = metadata !{i64 2437}
!2438 = metadata !{i64 2438}
!2439 = metadata !{i64 2439}
!2440 = metadata !{i64 2440}
!2441 = metadata !{i64 2441}
!2442 = metadata !{i64 2442}
!2443 = metadata !{i64 2443}
!2444 = metadata !{i64 2444}
!2445 = metadata !{i64 2445}
!2446 = metadata !{i64 2446}
!2447 = metadata !{i64 2447}
!2448 = metadata !{i64 2448}
!2449 = metadata !{i64 2449}
!2450 = metadata !{i64 2450}
!2451 = metadata !{i64 2451}
!2452 = metadata !{i64 2452}
!2453 = metadata !{i64 2453}
!2454 = metadata !{i64 2454}
!2455 = metadata !{i64 2455}
!2456 = metadata !{i64 2456}
!2457 = metadata !{i64 2457}
!2458 = metadata !{i64 2458}
!2459 = metadata !{i64 2459}
!2460 = metadata !{i64 2460}
!2461 = metadata !{i64 2461}
!2462 = metadata !{i64 2462}
!2463 = metadata !{i64 2463}
!2464 = metadata !{i64 2464}
!2465 = metadata !{i64 2465}
!2466 = metadata !{i64 2466}
!2467 = metadata !{i64 2467}
!2468 = metadata !{i64 2468}
!2469 = metadata !{i64 2469}
!2470 = metadata !{i64 2470}
!2471 = metadata !{i64 2471}
!2472 = metadata !{i64 2472}
!2473 = metadata !{i64 2473}
!2474 = metadata !{i64 2474}
!2475 = metadata !{i64 2475}
