; ModuleID = '/opt/Xilinx/Vivado_HLS/2017.2/bin/INTEGER_MATRIX_MULTIPLICATION/MATRIX_MULTIPLICATION_16_PIPELINE_1/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@matrixmul_str = internal unnamed_addr constant [10 x i8] c"matrixmul\00"
@Row_Col_str = internal unnamed_addr constant [8 x i8] c"Row_Col\00"
@p_str3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str2 = private unnamed_addr constant [8 x i8] c"Product\00", align 1
@p_str1 = private unnamed_addr constant [4 x i8] c"Col\00", align 1

define void @matrixmul([9 x i8]* %a, [9 x i8]* %b, [9 x i16]* %res) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap([9 x i8]* %a) nounwind, !map !7
  call void (...)* @_ssdm_op_SpecBitsMap([9 x i8]* %b) nounwind, !map !13
  call void (...)* @_ssdm_op_SpecBitsMap([9 x i16]* %res) nounwind, !map !17
  call void (...)* @_ssdm_op_SpecTopModule([10 x i8]* @matrixmul_str) nounwind
  br label %1

; <label>:1                                       ; preds = %3, %0
  %indvar_flatten = phi i4 [ 0, %0 ], [ %indvar_flatten_next, %3 ]
  %i = phi i2 [ 0, %0 ], [ %tmp_mid2_v, %3 ]
  %j = phi i2 [ 0, %0 ], [ %j_1, %3 ]
  %exitcond_flatten = icmp eq i4 %indvar_flatten, -7
  %indvar_flatten_next = add i4 %indvar_flatten, 1
  br i1 %exitcond_flatten, label %4, label %.reset

; <label>:2                                       ; preds = %ifBlock, %.reset
  %k = phi i2 [ 0, %.reset ], [ %k_1, %ifBlock ]
  %exitcond = icmp eq i2 %k, -1
  %k_1 = add i2 %k, 1
  br i1 %exitcond, label %3, label %ifBlock

ifBlock:                                          ; preds = %2
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 3, i64 3, i64 3) nounwind
  call void (...)* @_ssdm_op_SpecLoopName([8 x i8]* @p_str2) nounwind
  %tmp_9 = call i32 (...)* @_ssdm_op_SpecRegionBegin([8 x i8]* @p_str2) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str3) nounwind
  %tmp_4_cast = zext i2 %k to i5
  %tmp_2 = add i5 %tmp_1, %tmp_4_cast
  %tmp_11_cast = sext i5 %tmp_2 to i64
  %a_addr = getelementptr [9 x i8]* %a, i64 0, i64 %tmp_11_cast
  %tmp_4 = call i4 @_ssdm_op_BitConcatenate.i4.i2.i2(i2 %k, i2 0)
  %p_shl1_cast = zext i4 %tmp_4 to i5
  %tmp_10 = sub i5 %p_shl1_cast, %tmp_4_cast
  %tmp_11 = add i5 %tmp_10, %tmp_2_cast
  %tmp_14_cast = sext i5 %tmp_11 to i64
  %b_addr = getelementptr [9 x i8]* %b, i64 0, i64 %tmp_14_cast
  %a_load = load i8* %a_addr, align 1
  %tmp_5 = sext i8 %a_load to i16
  %b_load = load i8* %b_addr, align 1
  %tmp_6 = sext i8 %b_load to i16
  %tmp_7 = mul i16 %tmp_6, %tmp_5
  %res_load = load i16* %res_addr, align 2
  %tmp_8 = add i16 %tmp_7, %res_load
  store i16 %tmp_8, i16* %res_addr, align 2
  %empty_2 = call i32 (...)* @_ssdm_op_SpecRegionEnd([8 x i8]* @p_str2, i32 %tmp_9) nounwind
  br label %2

; <label>:3                                       ; preds = %2
  %empty_3 = call i32 (...)* @_ssdm_op_SpecRegionEnd([4 x i8]* @p_str1, i32 %tmp_3) nounwind
  %j_1 = add i2 %j_mid2, 1
  br label %1

.reset:                                           ; preds = %1
  %i_1 = add i2 %i, 1
  call void (...)* @_ssdm_op_SpecLoopName([8 x i8]* @Row_Col_str)
  %empty_4 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 9, i64 9, i64 9) nounwind
  %exitcond1 = icmp eq i2 %j, -1
  %j_mid2 = select i1 %exitcond1, i2 0, i2 %j
  %tmp_mid2_v = select i1 %exitcond1, i2 %i_1, i2 %i
  %tmp_mid2_cast = zext i2 %tmp_mid2_v to i5
  %tmp = call i4 @_ssdm_op_BitConcatenate.i4.i2.i2(i2 %tmp_mid2_v, i2 0)
  %p_shl_cast = zext i4 %tmp to i5
  %tmp_1 = sub i5 %p_shl_cast, %tmp_mid2_cast
  call void (...)* @_ssdm_op_SpecLoopName([4 x i8]* @p_str1) nounwind
  %tmp_3 = call i32 (...)* @_ssdm_op_SpecRegionBegin([4 x i8]* @p_str1) nounwind
  %tmp_2_cast = zext i2 %j_mid2 to i5
  %tmp_s = add i5 %tmp_1, %tmp_2_cast
  %tmp_10_cast = sext i5 %tmp_s to i64
  %res_addr = getelementptr [9 x i16]* %res, i64 0, i64 %tmp_10_cast
  store i16 0, i16* %res_addr, align 2
  br label %2

; <label>:4                                       ; preds = %1
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

define weak i4 @_ssdm_op_BitConcatenate.i4.i2.i2(i2, i2) nounwind readnone {
entry:
  %empty = zext i2 %0 to i4
  %empty_5 = zext i2 %1 to i4
  %empty_6 = shl i4 %empty, 2
  %empty_7 = or i4 %empty_6, %empty_5
  ret i4 %empty_7
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
!10 = metadata !{metadata !"a", metadata !11, metadata !"char", i32 0, i32 7}
!11 = metadata !{metadata !12, metadata !12}
!12 = metadata !{i32 0, i32 2, i32 1}
!13 = metadata !{metadata !14}
!14 = metadata !{i32 0, i32 7, metadata !15}
!15 = metadata !{metadata !16}
!16 = metadata !{metadata !"b", metadata !11, metadata !"char", i32 0, i32 7}
!17 = metadata !{metadata !18}
!18 = metadata !{i32 0, i32 15, metadata !19}
!19 = metadata !{metadata !20}
!20 = metadata !{metadata !"res", metadata !11, metadata !"short", i32 0, i32 15}
