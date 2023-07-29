; ModuleID = '/opt/Xilinx/Vivado_HLS/2017.2/bin/INTEGER_MATRIX_MULTIPLICATION/MATRIX_MULTIPLICATION_16_PIPELINE_2/solution1/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@matrixmul_str = internal unnamed_addr constant [10 x i8] c"matrixmul\00" ; [#uses=1 type=[10 x i8]*]
@Row_Col_str = internal unnamed_addr constant [8 x i8] c"Row_Col\00" ; [#uses=1 type=[8 x i8]*]
@p_str2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]
@p_str1 = private unnamed_addr constant [4 x i8] c"Col\00", align 1 ; [#uses=3 type=[4 x i8]*]

; [#uses=0]
define void @matrixmul([9 x i8]* %a, [9 x i8]* %b, [9 x i16]* %res) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap([9 x i8]* %a) nounwind, !map !7
  call void (...)* @_ssdm_op_SpecBitsMap([9 x i8]* %b) nounwind, !map !13
  call void (...)* @_ssdm_op_SpecBitsMap([9 x i16]* %res) nounwind, !map !17
  call void (...)* @_ssdm_op_SpecTopModule([10 x i8]* @matrixmul_str) nounwind
  call void @llvm.dbg.value(metadata !{[9 x i8]* %a}, i64 0, metadata !21), !dbg !43 ; [debug line = 5:15] [debug variable = a]
  call void @llvm.dbg.value(metadata !{[9 x i8]* %b}, i64 0, metadata !44), !dbg !46 ; [debug line = 6:15] [debug variable = b]
  call void @llvm.dbg.value(metadata !{[9 x i16]* %res}, i64 0, metadata !47), !dbg !49 ; [debug line = 7:16] [debug variable = res]
  br label %1, !dbg !50                           ; [debug line = 10:21]

; <label>:1                                       ; preds = %.reset, %0
  %indvar_flatten = phi i4 [ 0, %0 ], [ %indvar_flatten_next, %.reset ] ; [#uses=2 type=i4]
  %i = phi i2 [ 0, %0 ], [ %tmp_mid2_v, %.reset ] ; [#uses=2 type=i2]
  %j = phi i2 [ 0, %0 ], [ %j_1, %.reset ]        ; [#uses=2 type=i2]
  %exitcond_flatten = icmp eq i4 %indvar_flatten, -7 ; [#uses=1 type=i1]
  %indvar_flatten_next = add i4 %indvar_flatten, 1 ; [#uses=1 type=i4]
  br i1 %exitcond_flatten, label %2, label %.reset

.reset:                                           ; preds = %1
  %i_1 = add i2 %i, 1, !dbg !53                   ; [#uses=1 type=i2] [debug line = 10:30]
  call void @llvm.dbg.value(metadata !{i2 %i_1}, i64 0, metadata !54), !dbg !53 ; [debug line = 10:30] [debug variable = i]
  call void (...)* @_ssdm_op_SpecLoopName([8 x i8]* @Row_Col_str)
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 9, i64 9, i64 9) nounwind ; [#uses=0 type=i32]
  %exitcond = icmp eq i2 %j, -1, !dbg !56         ; [#uses=2 type=i1] [debug line = 13:23]
  %j_mid2 = select i1 %exitcond, i2 0, i2 %j      ; [#uses=5 type=i2]
  %tmp_mid2_v = select i1 %exitcond, i2 %i_1, i2 %i, !dbg !59 ; [#uses=3 type=i2] [debug line = 16:7]
  %tmp_mid2_cast = zext i2 %tmp_mid2_v to i5      ; [#uses=1 type=i5]
  %tmp = call i4 @_ssdm_op_BitConcatenate.i4.i2.i2(i2 %tmp_mid2_v, i2 0) ; [#uses=1 type=i4]
  %p_shl_cast = zext i4 %tmp to i5, !dbg !61      ; [#uses=1 type=i5] [debug line = 19:9]
  %tmp_1 = sub i5 %p_shl_cast, %tmp_mid2_cast, !dbg !61 ; [#uses=4 type=i5] [debug line = 19:9]
  %tmp_1_cast = sext i5 %tmp_1 to i64, !dbg !61   ; [#uses=1 type=i64] [debug line = 19:9]
  %a_addr = getelementptr [9 x i8]* %a, i64 0, i64 %tmp_1_cast, !dbg !61 ; [#uses=1 type=i8*] [debug line = 19:9]
  %tmp_4 = add i5 %tmp_1, 1, !dbg !61             ; [#uses=1 type=i5] [debug line = 19:9]
  %tmp_4_cast = sext i5 %tmp_4 to i64, !dbg !61   ; [#uses=1 type=i64] [debug line = 19:9]
  %a_addr_1 = getelementptr [9 x i8]* %a, i64 0, i64 %tmp_4_cast, !dbg !61 ; [#uses=1 type=i8*] [debug line = 19:9]
  %tmp_8 = add i5 %tmp_1, 2, !dbg !61             ; [#uses=1 type=i5] [debug line = 19:9]
  %tmp_8_cast = sext i5 %tmp_8 to i64, !dbg !61   ; [#uses=1 type=i64] [debug line = 19:9]
  %a_addr_2 = getelementptr [9 x i8]* %a, i64 0, i64 %tmp_8_cast, !dbg !61 ; [#uses=1 type=i8*] [debug line = 19:9]
  call void (...)* @_ssdm_op_SpecLoopName([4 x i8]* @p_str1) nounwind, !dbg !64 ; [debug line = 13:38]
  %tmp_3 = call i32 (...)* @_ssdm_op_SpecRegionBegin([4 x i8]* @p_str1) nounwind, !dbg !64 ; [#uses=1 type=i32] [debug line = 13:38]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str2) nounwind, !dbg !65 ; [debug line = 14:1]
  %tmp_2 = zext i2 %j_mid2 to i64, !dbg !59       ; [#uses=1 type=i64] [debug line = 16:7]
  %tmp_2_cast4 = zext i2 %j_mid2 to i5, !dbg !61  ; [#uses=1 type=i5] [debug line = 19:9]
  %tmp_2_cast3 = zext i2 %j_mid2 to i4, !dbg !61  ; [#uses=1 type=i4] [debug line = 19:9]
  %tmp_2_cast = zext i2 %j_mid2 to i3, !dbg !61   ; [#uses=1 type=i3] [debug line = 19:9]
  %b_addr = getelementptr [9 x i8]* %b, i64 0, i64 %tmp_2, !dbg !61 ; [#uses=1 type=i8*] [debug line = 19:9]
  %tmp_9 = add i3 %tmp_2_cast, 3, !dbg !61        ; [#uses=1 type=i3] [debug line = 19:9]
  %tmp_9_cast = zext i3 %tmp_9 to i64, !dbg !61   ; [#uses=1 type=i64] [debug line = 19:9]
  %b_addr_1 = getelementptr [9 x i8]* %b, i64 0, i64 %tmp_9_cast, !dbg !61 ; [#uses=1 type=i8*] [debug line = 19:9]
  %tmp_s = add i4 %tmp_2_cast3, 6, !dbg !61       ; [#uses=1 type=i4] [debug line = 19:9]
  %tmp_10_cast = zext i4 %tmp_s to i64, !dbg !61  ; [#uses=1 type=i64] [debug line = 19:9]
  %b_addr_2 = getelementptr [9 x i8]* %b, i64 0, i64 %tmp_10_cast, !dbg !61 ; [#uses=1 type=i8*] [debug line = 19:9]
  %tmp_10 = add i5 %tmp_1, %tmp_2_cast4, !dbg !59 ; [#uses=1 type=i5] [debug line = 16:7]
  %tmp_11_cast = sext i5 %tmp_10 to i64, !dbg !59 ; [#uses=1 type=i64] [debug line = 16:7]
  %res_addr = getelementptr [9 x i16]* %res, i64 0, i64 %tmp_11_cast, !dbg !59 ; [#uses=1 type=i16*] [debug line = 16:7]
  %a_load = load i8* %a_addr, align 1, !dbg !61   ; [#uses=1 type=i8] [debug line = 19:9]
  %tmp_5 = sext i8 %a_load to i16, !dbg !61       ; [#uses=1 type=i16] [debug line = 19:9]
  %b_load = load i8* %b_addr, align 1, !dbg !61   ; [#uses=1 type=i8] [debug line = 19:9]
  %tmp_6 = sext i8 %b_load to i16, !dbg !61       ; [#uses=1 type=i16] [debug line = 19:9]
  %tmp_7 = mul i16 %tmp_6, %tmp_5, !dbg !61       ; [#uses=1 type=i16] [debug line = 19:9]
  %a_load_1 = load i8* %a_addr_1, align 1, !dbg !61 ; [#uses=1 type=i8] [debug line = 19:9]
  %tmp_5_1 = sext i8 %a_load_1 to i16, !dbg !61   ; [#uses=1 type=i16] [debug line = 19:9]
  %b_load_1 = load i8* %b_addr_1, align 1, !dbg !61 ; [#uses=1 type=i8] [debug line = 19:9]
  %tmp_6_1 = sext i8 %b_load_1 to i16, !dbg !61   ; [#uses=1 type=i16] [debug line = 19:9]
  %tmp_7_1 = mul i16 %tmp_6_1, %tmp_5_1, !dbg !61 ; [#uses=1 type=i16] [debug line = 19:9]
  %a_load_2 = load i8* %a_addr_2, align 1, !dbg !61 ; [#uses=1 type=i8] [debug line = 19:9]
  %tmp_5_2 = sext i8 %a_load_2 to i16, !dbg !61   ; [#uses=1 type=i16] [debug line = 19:9]
  %b_load_2 = load i8* %b_addr_2, align 1, !dbg !61 ; [#uses=1 type=i8] [debug line = 19:9]
  %tmp_6_2 = sext i8 %b_load_2 to i16, !dbg !61   ; [#uses=1 type=i16] [debug line = 19:9]
  %tmp_7_2 = mul i16 %tmp_6_2, %tmp_5_2, !dbg !61 ; [#uses=1 type=i16] [debug line = 19:9]
  %tmp1 = add i16 %tmp_7_2, %tmp_7, !dbg !61      ; [#uses=1 type=i16] [debug line = 19:9]
  %tmp_8_2 = add i16 %tmp_7_1, %tmp1, !dbg !61    ; [#uses=1 type=i16] [debug line = 19:9]
  store i16 %tmp_8_2, i16* %res_addr, align 2, !dbg !61 ; [debug line = 19:9]
  %empty_2 = call i32 (...)* @_ssdm_op_SpecRegionEnd([4 x i8]* @p_str1, i32 %tmp_3) nounwind, !dbg !66 ; [#uses=0 type=i32] [debug line = 21:5]
  %j_1 = add i2 %j_mid2, 1, !dbg !67              ; [#uses=1 type=i2] [debug line = 13:32]
  call void @llvm.dbg.value(metadata !{i2 %j_1}, i64 0, metadata !68), !dbg !67 ; [debug line = 13:32] [debug variable = j]
  br label %1

; <label>:2                                       ; preds = %1
  ret void, !dbg !69                              ; [debug line = 23:1]
}

; [#uses=5]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=1]
define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

; [#uses=1]
define weak i32 @_ssdm_op_SpecRegionEnd(...) {
entry:
  ret i32 0
}

; [#uses=1]
define weak i32 @_ssdm_op_SpecRegionBegin(...) {
entry:
  ret i32 0
}

; [#uses=1]
define weak void @_ssdm_op_SpecPipeline(...) nounwind {
entry:
  ret void
}

; [#uses=1]
define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

; [#uses=2]
define weak void @_ssdm_op_SpecLoopName(...) nounwind {
entry:
  ret void
}

; [#uses=3]
define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

; [#uses=1]
define weak i4 @_ssdm_op_BitConcatenate.i4.i2.i2(i2, i2) nounwind readnone {
entry:
  %empty = zext i2 %0 to i4                       ; [#uses=1 type=i4]
  %empty_3 = zext i2 %1 to i4                     ; [#uses=1 type=i4]
  %empty_4 = shl i4 %empty, 2                     ; [#uses=1 type=i4]
  %empty_5 = or i4 %empty_4, %empty_3             ; [#uses=1 type=i4]
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
!21 = metadata !{i32 786689, metadata !22, metadata !"a", null, i32 5, metadata !41, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!22 = metadata !{i32 786478, i32 0, metadata !23, metadata !"matrixmul", metadata !"matrixmul", metadata !"_Z9matrixmulPA3_cS0_PA3_s", metadata !23, i32 4, metadata !24, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !39, i32 8} ; [ DW_TAG_subprogram ]
!23 = metadata !{i32 786473, metadata !"../../../../../../home/drsatya/Desktop/lab1/MAT_PIPELINE_2.cpp", metadata !"/opt/Xilinx/Vivado_HLS/2017.2/bin/INTEGER_MATRIX_MULTIPLICATION", null} ; [ DW_TAG_file_type ]
!24 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !25, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!25 = metadata !{null, metadata !26, metadata !32, metadata !35}
!26 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !27} ; [ DW_TAG_pointer_type ]
!27 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 24, i64 8, i32 0, i32 0, metadata !28, metadata !30, i32 0, i32 0} ; [ DW_TAG_array_type ]
!28 = metadata !{i32 786454, null, metadata !"mat_a_t", metadata !23, i32 80, i64 0, i64 0, i64 0, i32 0, metadata !29} ; [ DW_TAG_typedef ]
!29 = metadata !{i32 786468, null, metadata !"char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!30 = metadata !{metadata !31}
!31 = metadata !{i32 786465, i64 0, i64 2}        ; [ DW_TAG_subrange_type ]
!32 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !33} ; [ DW_TAG_pointer_type ]
!33 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 24, i64 8, i32 0, i32 0, metadata !34, metadata !30, i32 0, i32 0} ; [ DW_TAG_array_type ]
!34 = metadata !{i32 786454, null, metadata !"mat_b_t", metadata !23, i32 81, i64 0, i64 0, i64 0, i32 0, metadata !29} ; [ DW_TAG_typedef ]
!35 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !36} ; [ DW_TAG_pointer_type ]
!36 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 48, i64 16, i32 0, i32 0, metadata !37, metadata !30, i32 0, i32 0} ; [ DW_TAG_array_type ]
!37 = metadata !{i32 786454, null, metadata !"result_t", metadata !23, i32 82, i64 0, i64 0, i64 0, i32 0, metadata !38} ; [ DW_TAG_typedef ]
!38 = metadata !{i32 786468, null, metadata !"short", null, i32 0, i64 16, i64 16, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!39 = metadata !{metadata !40}
!40 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!41 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 72, i64 8, i32 0, i32 0, metadata !28, metadata !42, i32 0, i32 0} ; [ DW_TAG_array_type ]
!42 = metadata !{metadata !31, metadata !31}
!43 = metadata !{i32 5, i32 15, metadata !22, null}
!44 = metadata !{i32 786689, metadata !22, metadata !"b", null, i32 6, metadata !45, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!45 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 72, i64 8, i32 0, i32 0, metadata !34, metadata !42, i32 0, i32 0} ; [ DW_TAG_array_type ]
!46 = metadata !{i32 6, i32 15, metadata !22, null}
!47 = metadata !{i32 786689, metadata !22, metadata !"res", null, i32 7, metadata !48, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!48 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 144, i64 16, i32 0, i32 0, metadata !37, metadata !42, i32 0, i32 0} ; [ DW_TAG_array_type ]
!49 = metadata !{i32 7, i32 16, metadata !22, null}
!50 = metadata !{i32 10, i32 21, metadata !51, null}
!51 = metadata !{i32 786443, metadata !52, i32 10, i32 8, metadata !23, i32 1} ; [ DW_TAG_lexical_block ]
!52 = metadata !{i32 786443, metadata !22, i32 8, i32 1, metadata !23, i32 0} ; [ DW_TAG_lexical_block ]
!53 = metadata !{i32 10, i32 30, metadata !51, null}
!54 = metadata !{i32 786688, metadata !51, metadata !"i", metadata !23, i32 10, metadata !55, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!55 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!56 = metadata !{i32 13, i32 23, metadata !57, null}
!57 = metadata !{i32 786443, metadata !58, i32 13, i32 10, metadata !23, i32 3} ; [ DW_TAG_lexical_block ]
!58 = metadata !{i32 786443, metadata !51, i32 10, i32 35, metadata !23, i32 2} ; [ DW_TAG_lexical_block ]
!59 = metadata !{i32 16, i32 7, metadata !60, null}
!60 = metadata !{i32 786443, metadata !57, i32 13, i32 37, metadata !23, i32 4} ; [ DW_TAG_lexical_block ]
!61 = metadata !{i32 19, i32 9, metadata !62, null}
!62 = metadata !{i32 786443, metadata !63, i32 17, i32 43, metadata !23, i32 6} ; [ DW_TAG_lexical_block ]
!63 = metadata !{i32 786443, metadata !60, i32 17, i32 16, metadata !23, i32 5} ; [ DW_TAG_lexical_block ]
!64 = metadata !{i32 13, i32 38, metadata !60, null}
!65 = metadata !{i32 14, i32 1, metadata !60, null}
!66 = metadata !{i32 21, i32 5, metadata !60, null}
!67 = metadata !{i32 13, i32 32, metadata !57, null}
!68 = metadata !{i32 786688, metadata !57, metadata !"j", metadata !23, i32 13, metadata !55, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!69 = metadata !{i32 23, i32 1, metadata !52, null}
