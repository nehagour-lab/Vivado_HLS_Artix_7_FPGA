; ModuleID = '/opt/Xilinx/Vivado_HLS/2017.2/bin/INTEGER_MATRIX_MULTIPLICATION/MATRIX_MULTIPLICATION_16_PIPELINE_3/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@matrixmul_str = internal unnamed_addr constant [10 x i8] c"matrixmul\00"
@Row_Col_str = internal unnamed_addr constant [8 x i8] c"Row_Col\00"
@p_str3 = private unnamed_addr constant [4 x i8] c"Col\00", align 1
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

define void @matrixmul([3 x i8]* %a_0, [3 x i8]* %a_1, [3 x i8]* %a_2, [3 x i8]* %b_0, [3 x i8]* %b_1, [3 x i8]* %b_2, [9 x i16]* %res) {
  call void (...)* @_ssdm_op_SpecBitsMap([3 x i8]* %b_2), !map !7
  call void (...)* @_ssdm_op_SpecBitsMap([3 x i8]* %b_1), !map !14
  call void (...)* @_ssdm_op_SpecBitsMap([3 x i8]* %b_0), !map !20
  call void (...)* @_ssdm_op_SpecBitsMap([3 x i8]* %a_2), !map !26
  call void (...)* @_ssdm_op_SpecBitsMap([3 x i8]* %a_1), !map !30
  call void (...)* @_ssdm_op_SpecBitsMap([3 x i8]* %a_0), !map !34
  call void (...)* @_ssdm_op_SpecBitsMap([9 x i16]* %res), !map !38
  call void (...)* @_ssdm_op_SpecTopModule([10 x i8]* @matrixmul_str) nounwind
  %b_0_addr = getelementptr [3 x i8]* %b_0, i64 0, i64 0
  %b_1_addr = getelementptr [3 x i8]* %b_1, i64 0, i64 0
  %b_2_addr = getelementptr [3 x i8]* %b_2, i64 0, i64 0
  %b_0_addr_1 = getelementptr [3 x i8]* %b_0, i64 0, i64 1
  %b_1_addr_1 = getelementptr [3 x i8]* %b_1, i64 0, i64 1
  %b_2_addr_1 = getelementptr [3 x i8]* %b_2, i64 0, i64 1
  %b_0_addr_2 = getelementptr [3 x i8]* %b_0, i64 0, i64 2
  %b_1_addr_2 = getelementptr [3 x i8]* %b_1, i64 0, i64 2
  %b_2_addr_2 = getelementptr [3 x i8]* %b_2, i64 0, i64 2
  br label %1

; <label>:1                                       ; preds = %.reset, %0
  %indvar_flatten = phi i4 [ 0, %0 ], [ %indvar_flatten_next, %.reset ]
  %i = phi i2 [ 0, %0 ], [ %tmp_mid2_v, %.reset ]
  %j = phi i2 [ 0, %0 ], [ %j_1, %.reset ]
  %exitcond_flatten = icmp eq i4 %indvar_flatten, -7
  %indvar_flatten_next = add i4 %indvar_flatten, 1
  br i1 %exitcond_flatten, label %2, label %.reset

.reset:                                           ; preds = %1
  %i_1 = add i2 %i, 1
  call void (...)* @_ssdm_op_SpecLoopName([8 x i8]* @Row_Col_str)
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 9, i64 9, i64 9)
  %exitcond = icmp eq i2 %j, -1
  %j_mid2 = select i1 %exitcond, i2 0, i2 %j
  %tmp_mid2_v = select i1 %exitcond, i2 %i_1, i2 %i
  %tmp_mid2 = zext i2 %tmp_mid2_v to i64
  %tmp_mid2_cast = zext i2 %tmp_mid2_v to i5
  %tmp = call i4 @_ssdm_op_BitConcatenate.i4.i2.i2(i2 %tmp_mid2_v, i2 0)
  %p_shl_cast = zext i4 %tmp to i5
  %tmp_1 = sub i5 %p_shl_cast, %tmp_mid2_cast
  call void (...)* @_ssdm_op_SpecLoopName([4 x i8]* @p_str3) nounwind
  %tmp_3 = call i32 (...)* @_ssdm_op_SpecRegionBegin([4 x i8]* @p_str3) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind
  %tmp_2_cast = zext i2 %j_mid2 to i5
  %tmp_s = add i5 %tmp_1, %tmp_2_cast
  %tmp_10_cast = sext i5 %tmp_s to i64
  %res_addr = getelementptr [9 x i16]* %res, i64 0, i64 %tmp_10_cast
  %a_0_addr = getelementptr [3 x i8]* %a_0, i64 0, i64 %tmp_mid2
  %a_0_load = load i8* %a_0_addr, align 1
  %tmp_5 = sext i8 %a_0_load to i16
  %b_0_load = load i8* %b_0_addr, align 1
  %b_1_load = load i8* %b_1_addr, align 1
  %b_2_load = load i8* %b_2_addr, align 1
  %tmp_4 = call i8 @_ssdm_op_Mux.ap_auto.3i8.i2(i8 %b_0_load, i8 %b_1_load, i8 %b_2_load, i2 %j_mid2)
  %tmp_6 = sext i8 %tmp_4 to i16
  %tmp_7 = mul i16 %tmp_6, %tmp_5
  %a_1_addr = getelementptr [3 x i8]* %a_1, i64 0, i64 %tmp_mid2
  %a_1_load = load i8* %a_1_addr, align 1
  %tmp_5_1 = sext i8 %a_1_load to i16
  %b_0_load_1 = load i8* %b_0_addr_1, align 1
  %b_1_load_1 = load i8* %b_1_addr_1, align 1
  %b_2_load_1 = load i8* %b_2_addr_1, align 1
  %tmp_8 = call i8 @_ssdm_op_Mux.ap_auto.3i8.i2(i8 %b_0_load_1, i8 %b_1_load_1, i8 %b_2_load_1, i2 %j_mid2)
  %tmp_6_1 = sext i8 %tmp_8 to i16
  %tmp_7_1 = mul i16 %tmp_6_1, %tmp_5_1
  %a_2_addr = getelementptr [3 x i8]* %a_2, i64 0, i64 %tmp_mid2
  %a_2_load = load i8* %a_2_addr, align 1
  %tmp_5_2 = sext i8 %a_2_load to i16
  %b_0_load_2 = load i8* %b_0_addr_2, align 1
  %b_1_load_2 = load i8* %b_1_addr_2, align 1
  %b_2_load_2 = load i8* %b_2_addr_2, align 1
  %tmp_9 = call i8 @_ssdm_op_Mux.ap_auto.3i8.i2(i8 %b_0_load_2, i8 %b_1_load_2, i8 %b_2_load_2, i2 %j_mid2)
  %tmp_6_2 = sext i8 %tmp_9 to i16
  %tmp_7_2 = mul i16 %tmp_6_2, %tmp_5_2
  %tmp1 = add i16 %tmp_7_2, %tmp_7
  %tmp_8_2 = add i16 %tmp_7_1, %tmp1
  store i16 %tmp_8_2, i16* %res_addr, align 2
  %empty_2 = call i32 (...)* @_ssdm_op_SpecRegionEnd([4 x i8]* @p_str3, i32 %tmp_3) nounwind
  %j_1 = add i2 %j_mid2, 1
  br label %1

; <label>:2                                       ; preds = %1
  ret void
}

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecRegionEnd(...) {
entry:
  ret i32 0
}

define weak i32 @_ssdm_op_SpecRegionBegin(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecPipeline(...) nounwind {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecLoopName(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak i8 @_ssdm_op_Mux.ap_auto.3i8.i2(i8, i8, i8, i2) {
entry:
  switch i2 %3, label %case2 [
    i2 0, label %case0
    i2 1, label %case1
  ]

case0:                                            ; preds = %case2, %case1, %entry
  %merge = phi i8 [ %0, %entry ], [ %1, %case1 ], [ %2, %case2 ]
  ret i8 %merge

case1:                                            ; preds = %entry
  br label %case0

case2:                                            ; preds = %entry
  br label %case0
}

define weak i4 @_ssdm_op_BitConcatenate.i4.i2.i2(i2, i2) nounwind readnone {
entry:
  %empty = zext i2 %0 to i4
  %empty_3 = zext i2 %1 to i4
  %empty_4 = shl i4 %empty, 2
  %empty_5 = or i4 %empty_4, %empty_3
  ret i4 %empty_5
}

!opencl.kernels = !{!0}
!hls.encrypted.func = !{}
!llvm.map.gv = !{}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 1}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"mat_a_t [3]*", metadata !"mat_b_t [3]*", metadata !"result_t [3]*"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"a", metadata !"b", metadata !"res"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{metadata !8}
!8 = metadata !{i32 0, i32 7, metadata !9}
!9 = metadata !{metadata !10}
!10 = metadata !{metadata !"b", metadata !11, metadata !"char", i32 0, i32 7}
!11 = metadata !{metadata !12, metadata !13}
!12 = metadata !{i32 0, i32 2, i32 1}
!13 = metadata !{i32 2, i32 2, i32 2}
!14 = metadata !{metadata !15}
!15 = metadata !{i32 0, i32 7, metadata !16}
!16 = metadata !{metadata !17}
!17 = metadata !{metadata !"b", metadata !18, metadata !"char", i32 0, i32 7}
!18 = metadata !{metadata !12, metadata !19}
!19 = metadata !{i32 1, i32 1, i32 2}
!20 = metadata !{metadata !21}
!21 = metadata !{i32 0, i32 7, metadata !22}
!22 = metadata !{metadata !23}
!23 = metadata !{metadata !"b", metadata !24, metadata !"char", i32 0, i32 7}
!24 = metadata !{metadata !12, metadata !25}
!25 = metadata !{i32 0, i32 0, i32 2}
!26 = metadata !{metadata !27}
!27 = metadata !{i32 0, i32 7, metadata !28}
!28 = metadata !{metadata !29}
!29 = metadata !{metadata !"a", metadata !11, metadata !"char", i32 0, i32 7}
!30 = metadata !{metadata !31}
!31 = metadata !{i32 0, i32 7, metadata !32}
!32 = metadata !{metadata !33}
!33 = metadata !{metadata !"a", metadata !18, metadata !"char", i32 0, i32 7}
!34 = metadata !{metadata !35}
!35 = metadata !{i32 0, i32 7, metadata !36}
!36 = metadata !{metadata !37}
!37 = metadata !{metadata !"a", metadata !24, metadata !"char", i32 0, i32 7}
!38 = metadata !{metadata !39}
!39 = metadata !{i32 0, i32 15, metadata !40}
!40 = metadata !{metadata !41}
!41 = metadata !{metadata !"res", metadata !42, metadata !"short", i32 0, i32 15}
!42 = metadata !{metadata !12, metadata !12}
