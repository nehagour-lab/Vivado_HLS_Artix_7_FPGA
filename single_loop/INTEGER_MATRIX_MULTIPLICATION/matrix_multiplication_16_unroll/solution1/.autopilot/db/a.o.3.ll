; ModuleID = '/opt/Xilinx/Vivado_HLS/2017.2/bin/INTEGER_MATRIX_MULTIPLICATION/matrix_multiplication_16_unroll/solution1/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@matrixmul_str = internal unnamed_addr constant [10 x i8] c"matrixmul\00" ; [#uses=1 type=[10 x i8]*]
@p_str2 = private unnamed_addr constant [4 x i8] c"Row\00", align 1 ; [#uses=3 type=[4 x i8]*]
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]

; [#uses=0]
define void @matrixmul([3 x i8]* %a_0, [3 x i8]* %a_1, [3 x i8]* %a_2, [3 x i8]* %b_0, [3 x i8]* %b_1, [3 x i8]* %b_2, [9 x i16]* %res) {
  call void (...)* @_ssdm_op_SpecBitsMap([3 x i8]* %b_2), !map !7
  call void (...)* @_ssdm_op_SpecBitsMap([3 x i8]* %b_1), !map !14
  call void (...)* @_ssdm_op_SpecBitsMap([3 x i8]* %b_0), !map !20
  call void (...)* @_ssdm_op_SpecBitsMap([3 x i8]* %a_2), !map !26
  call void (...)* @_ssdm_op_SpecBitsMap([3 x i8]* %a_1), !map !30
  call void (...)* @_ssdm_op_SpecBitsMap([3 x i8]* %a_0), !map !34
  call void (...)* @_ssdm_op_SpecBitsMap([9 x i16]* %res), !map !38
  call void (...)* @_ssdm_op_SpecTopModule([10 x i8]* @matrixmul_str) nounwind
  call void @llvm.dbg.value(metadata !{[3 x i8]* %a_0}, i64 0, metadata !43), !dbg !67 ; [debug line = 4:15] [debug variable = a[0]]
  call void @llvm.dbg.value(metadata !{[3 x i8]* %a_1}, i64 0, metadata !68), !dbg !67 ; [debug line = 4:15] [debug variable = a[1]]
  call void @llvm.dbg.value(metadata !{[3 x i8]* %a_2}, i64 0, metadata !69), !dbg !67 ; [debug line = 4:15] [debug variable = a[2]]
  call void @llvm.dbg.value(metadata !{[3 x i8]* %b_0}, i64 0, metadata !70), !dbg !74 ; [debug line = 5:15] [debug variable = b[0]]
  call void @llvm.dbg.value(metadata !{[3 x i8]* %b_1}, i64 0, metadata !75), !dbg !74 ; [debug line = 5:15] [debug variable = b[1]]
  call void @llvm.dbg.value(metadata !{[3 x i8]* %b_2}, i64 0, metadata !76), !dbg !74 ; [debug line = 5:15] [debug variable = b[2]]
  call void @llvm.dbg.value(metadata !{[9 x i16]* %res}, i64 0, metadata !77), !dbg !79 ; [debug line = 6:16] [debug variable = res]
  %b_0_addr = getelementptr [3 x i8]* %b_0, i64 0, i64 0 ; [#uses=1 type=i8*]
  %b_0_addr_1 = getelementptr [3 x i8]* %b_0, i64 0, i64 1 ; [#uses=1 type=i8*]
  %b_0_addr_2 = getelementptr [3 x i8]* %b_0, i64 0, i64 2 ; [#uses=1 type=i8*]
  %b_1_addr = getelementptr [3 x i8]* %b_1, i64 0, i64 0 ; [#uses=1 type=i8*]
  %b_1_addr_1 = getelementptr [3 x i8]* %b_1, i64 0, i64 1 ; [#uses=1 type=i8*]
  %b_1_addr_2 = getelementptr [3 x i8]* %b_1, i64 0, i64 2 ; [#uses=1 type=i8*]
  %b_2_addr = getelementptr [3 x i8]* %b_2, i64 0, i64 0 ; [#uses=1 type=i8*]
  %b_2_addr_1 = getelementptr [3 x i8]* %b_2, i64 0, i64 1 ; [#uses=1 type=i8*]
  %b_2_addr_2 = getelementptr [3 x i8]* %b_2, i64 0, i64 2 ; [#uses=1 type=i8*]
  br label %1, !dbg !80                           ; [debug line = 11:21]

; <label>:1                                       ; preds = %2, %0
  %i = phi i2 [ 0, %0 ], [ %i_1, %2 ]             ; [#uses=5 type=i2]
  %exitcond2 = icmp eq i2 %i, -1, !dbg !80        ; [#uses=1 type=i1] [debug line = 11:21]
  %i_1 = add i2 %i, 1, !dbg !83                   ; [#uses=1 type=i2] [debug line = 11:30]
  br i1 %exitcond2, label %3, label %2, !dbg !80  ; [debug line = 11:21]

; <label>:2                                       ; preds = %1
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 3, i64 3, i64 3) nounwind ; [#uses=0 type=i32]
  call void (...)* @_ssdm_op_SpecLoopName([4 x i8]* @p_str2) nounwind, !dbg !84 ; [debug line = 11:36]
  %tmp_1 = call i32 (...)* @_ssdm_op_SpecRegionBegin([4 x i8]* @p_str2) nounwind, !dbg !84 ; [#uses=1 type=i32] [debug line = 11:36]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind, !dbg !86 ; [debug line = 12:1]
  %tmp = zext i2 %i to i64, !dbg !87              ; [#uses=3 type=i64] [debug line = 16:7]
  %tmp_cast = zext i2 %i to i5                    ; [#uses=1 type=i5]
  %tmp_2 = call i4 @_ssdm_op_BitConcatenate.i4.i2.i2(i2 %i, i2 0) ; [#uses=1 type=i4]
  %p_shl_cast = zext i4 %tmp_2 to i5, !dbg !87    ; [#uses=1 type=i5] [debug line = 16:7]
  %tmp_3 = sub i5 %p_shl_cast, %tmp_cast, !dbg !87 ; [#uses=3 type=i5] [debug line = 16:7]
  %tmp_3_cast = sext i5 %tmp_3 to i64, !dbg !87   ; [#uses=1 type=i64] [debug line = 16:7]
  %res_addr = getelementptr [9 x i16]* %res, i64 0, i64 %tmp_3_cast, !dbg !87 ; [#uses=1 type=i16*] [debug line = 16:7]
  %tmp_4 = add i5 %tmp_3, 1, !dbg !87             ; [#uses=1 type=i5] [debug line = 16:7]
  %tmp_4_cast = sext i5 %tmp_4 to i64, !dbg !87   ; [#uses=1 type=i64] [debug line = 16:7]
  %res_addr_1 = getelementptr [9 x i16]* %res, i64 0, i64 %tmp_4_cast, !dbg !87 ; [#uses=1 type=i16*] [debug line = 16:7]
  %tmp_8 = add i5 %tmp_3, 2, !dbg !87             ; [#uses=1 type=i5] [debug line = 16:7]
  %tmp_8_cast = sext i5 %tmp_8 to i64, !dbg !87   ; [#uses=1 type=i64] [debug line = 16:7]
  %res_addr_2 = getelementptr [9 x i16]* %res, i64 0, i64 %tmp_8_cast, !dbg !87 ; [#uses=1 type=i16*] [debug line = 16:7]
  %a_0_addr = getelementptr [3 x i8]* %a_0, i64 0, i64 %tmp ; [#uses=1 type=i8*]
  %a_0_load = load i8* %a_0_addr, align 1, !dbg !90 ; [#uses=1 type=i8] [debug line = 20:9]
  %tmp_5 = sext i8 %a_0_load to i16, !dbg !90     ; [#uses=3 type=i16] [debug line = 20:9]
  %b_0_load = load i8* %b_0_addr, align 1, !dbg !90 ; [#uses=1 type=i8] [debug line = 20:9]
  %tmp_6 = sext i8 %b_0_load to i16, !dbg !90     ; [#uses=1 type=i16] [debug line = 20:9]
  %tmp_7 = mul i16 %tmp_6, %tmp_5, !dbg !90       ; [#uses=1 type=i16] [debug line = 20:9]
  %a_1_addr = getelementptr [3 x i8]* %a_1, i64 0, i64 %tmp ; [#uses=1 type=i8*]
  %a_1_load = load i8* %a_1_addr, align 1, !dbg !90 ; [#uses=1 type=i8] [debug line = 20:9]
  %tmp_5_0_1 = sext i8 %a_1_load to i16, !dbg !90 ; [#uses=3 type=i16] [debug line = 20:9]
  %b_0_load_1 = load i8* %b_0_addr_1, align 1, !dbg !90 ; [#uses=1 type=i8] [debug line = 20:9]
  %tmp_6_0_1 = sext i8 %b_0_load_1 to i16, !dbg !90 ; [#uses=1 type=i16] [debug line = 20:9]
  %tmp_7_0_1 = mul i16 %tmp_6_0_1, %tmp_5_0_1, !dbg !90 ; [#uses=1 type=i16] [debug line = 20:9]
  %a_2_addr = getelementptr [3 x i8]* %a_2, i64 0, i64 %tmp ; [#uses=1 type=i8*]
  %a_2_load = load i8* %a_2_addr, align 1, !dbg !90 ; [#uses=1 type=i8] [debug line = 20:9]
  %tmp_5_0_2 = sext i8 %a_2_load to i16, !dbg !90 ; [#uses=3 type=i16] [debug line = 20:9]
  %b_0_load_2 = load i8* %b_0_addr_2, align 1, !dbg !90 ; [#uses=1 type=i8] [debug line = 20:9]
  %tmp_6_0_2 = sext i8 %b_0_load_2 to i16, !dbg !90 ; [#uses=1 type=i16] [debug line = 20:9]
  %tmp_7_0_2 = mul i16 %tmp_6_0_2, %tmp_5_0_2, !dbg !90 ; [#uses=1 type=i16] [debug line = 20:9]
  %tmp1 = add i16 %tmp_7_0_2, %tmp_7, !dbg !90    ; [#uses=1 type=i16] [debug line = 20:9]
  %tmp_8_0_2 = add i16 %tmp_7_0_1, %tmp1, !dbg !90 ; [#uses=1 type=i16] [debug line = 20:9]
  store i16 %tmp_8_0_2, i16* %res_addr, align 2, !dbg !90 ; [debug line = 20:9]
  %b_1_load = load i8* %b_1_addr, align 1, !dbg !90 ; [#uses=1 type=i8] [debug line = 20:9]
  %tmp_6_1 = sext i8 %b_1_load to i16, !dbg !90   ; [#uses=1 type=i16] [debug line = 20:9]
  %tmp_7_1 = mul i16 %tmp_6_1, %tmp_5, !dbg !90   ; [#uses=1 type=i16] [debug line = 20:9]
  %b_1_load_1 = load i8* %b_1_addr_1, align 1, !dbg !90 ; [#uses=1 type=i8] [debug line = 20:9]
  %tmp_6_1_1 = sext i8 %b_1_load_1 to i16, !dbg !90 ; [#uses=1 type=i16] [debug line = 20:9]
  %tmp_7_1_1 = mul i16 %tmp_6_1_1, %tmp_5_0_1, !dbg !90 ; [#uses=1 type=i16] [debug line = 20:9]
  %b_1_load_2 = load i8* %b_1_addr_2, align 1, !dbg !90 ; [#uses=1 type=i8] [debug line = 20:9]
  %tmp_6_1_2 = sext i8 %b_1_load_2 to i16, !dbg !90 ; [#uses=1 type=i16] [debug line = 20:9]
  %tmp_7_1_2 = mul i16 %tmp_6_1_2, %tmp_5_0_2, !dbg !90 ; [#uses=1 type=i16] [debug line = 20:9]
  %tmp2 = add i16 %tmp_7_1_2, %tmp_7_1, !dbg !90  ; [#uses=1 type=i16] [debug line = 20:9]
  %tmp_8_1_2 = add i16 %tmp_7_1_1, %tmp2, !dbg !90 ; [#uses=1 type=i16] [debug line = 20:9]
  store i16 %tmp_8_1_2, i16* %res_addr_1, align 2, !dbg !90 ; [debug line = 20:9]
  %b_2_load = load i8* %b_2_addr, align 1, !dbg !90 ; [#uses=1 type=i8] [debug line = 20:9]
  %tmp_6_2 = sext i8 %b_2_load to i16, !dbg !90   ; [#uses=1 type=i16] [debug line = 20:9]
  %tmp_7_2 = mul i16 %tmp_6_2, %tmp_5, !dbg !90   ; [#uses=1 type=i16] [debug line = 20:9]
  %b_2_load_1 = load i8* %b_2_addr_1, align 1, !dbg !90 ; [#uses=1 type=i8] [debug line = 20:9]
  %tmp_6_2_1 = sext i8 %b_2_load_1 to i16, !dbg !90 ; [#uses=1 type=i16] [debug line = 20:9]
  %tmp_7_2_1 = mul i16 %tmp_6_2_1, %tmp_5_0_1, !dbg !90 ; [#uses=1 type=i16] [debug line = 20:9]
  %b_2_load_2 = load i8* %b_2_addr_2, align 1, !dbg !90 ; [#uses=1 type=i8] [debug line = 20:9]
  %tmp_6_2_2 = sext i8 %b_2_load_2 to i16, !dbg !90 ; [#uses=1 type=i16] [debug line = 20:9]
  %tmp_7_2_2 = mul i16 %tmp_6_2_2, %tmp_5_0_2, !dbg !90 ; [#uses=1 type=i16] [debug line = 20:9]
  %tmp3 = add i16 %tmp_7_2_2, %tmp_7_2, !dbg !90  ; [#uses=1 type=i16] [debug line = 20:9]
  %tmp_8_2_2 = add i16 %tmp_7_2_1, %tmp3, !dbg !90 ; [#uses=1 type=i16] [debug line = 20:9]
  store i16 %tmp_8_2_2, i16* %res_addr_2, align 2, !dbg !90 ; [debug line = 20:9]
  %empty_2 = call i32 (...)* @_ssdm_op_SpecRegionEnd([4 x i8]* @p_str2, i32 %tmp_1) nounwind, !dbg !93 ; [#uses=0 type=i32] [debug line = 23:3]
  call void @llvm.dbg.value(metadata !{i2 %i_1}, i64 0, metadata !94), !dbg !83 ; [debug line = 11:30] [debug variable = i]
  br label %1, !dbg !83                           ; [debug line = 11:30]

; <label>:3                                       ; preds = %1
  ret void, !dbg !96                              ; [debug line = 24:1]
}

; [#uses=8]
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

; [#uses=1]
define weak void @_ssdm_op_SpecLoopName(...) nounwind {
entry:
  ret void
}

; [#uses=7]
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
!43 = metadata !{i32 790531, metadata !44, metadata !"a[0]", null, i32 4, metadata !66, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!44 = metadata !{i32 786689, metadata !45, metadata !"a", null, i32 4, metadata !64, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!45 = metadata !{i32 786478, i32 0, metadata !46, metadata !"matrixmul", metadata !"matrixmul", metadata !"_Z9matrixmulPA3_cS0_PA3_s", metadata !46, i32 3, metadata !47, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !62, i32 7} ; [ DW_TAG_subprogram ]
!46 = metadata !{i32 786473, metadata !"../../../../../../home/drsatya/Desktop/lab1/mat_unroll_1.cpp", metadata !"/opt/Xilinx/Vivado_HLS/2017.2/bin/INTEGER_MATRIX_MULTIPLICATION", null} ; [ DW_TAG_file_type ]
!47 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !48, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!48 = metadata !{null, metadata !49, metadata !55, metadata !58}
!49 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !50} ; [ DW_TAG_pointer_type ]
!50 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 24, i64 8, i32 0, i32 0, metadata !51, metadata !53, i32 0, i32 0} ; [ DW_TAG_array_type ]
!51 = metadata !{i32 786454, null, metadata !"mat_a_t", metadata !46, i32 80, i64 0, i64 0, i64 0, i32 0, metadata !52} ; [ DW_TAG_typedef ]
!52 = metadata !{i32 786468, null, metadata !"char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!53 = metadata !{metadata !54}
!54 = metadata !{i32 786465, i64 0, i64 2}        ; [ DW_TAG_subrange_type ]
!55 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !56} ; [ DW_TAG_pointer_type ]
!56 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 24, i64 8, i32 0, i32 0, metadata !57, metadata !53, i32 0, i32 0} ; [ DW_TAG_array_type ]
!57 = metadata !{i32 786454, null, metadata !"mat_b_t", metadata !46, i32 81, i64 0, i64 0, i64 0, i32 0, metadata !52} ; [ DW_TAG_typedef ]
!58 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !59} ; [ DW_TAG_pointer_type ]
!59 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 48, i64 16, i32 0, i32 0, metadata !60, metadata !53, i32 0, i32 0} ; [ DW_TAG_array_type ]
!60 = metadata !{i32 786454, null, metadata !"result_t", metadata !46, i32 82, i64 0, i64 0, i64 0, i32 0, metadata !61} ; [ DW_TAG_typedef ]
!61 = metadata !{i32 786468, null, metadata !"short", null, i32 0, i64 16, i64 16, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!62 = metadata !{metadata !63}
!63 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!64 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 72, i64 8, i32 0, i32 0, metadata !51, metadata !65, i32 0, i32 0} ; [ DW_TAG_array_type ]
!65 = metadata !{metadata !54, metadata !54}
!66 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 24, i64 8, i32 0, i32 0, metadata !51, metadata !65, i32 0, i32 0} ; [ DW_TAG_array_type ]
!67 = metadata !{i32 4, i32 15, metadata !45, null}
!68 = metadata !{i32 790531, metadata !44, metadata !"a[1]", null, i32 4, metadata !66, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!69 = metadata !{i32 790531, metadata !44, metadata !"a[2]", null, i32 4, metadata !66, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!70 = metadata !{i32 790531, metadata !71, metadata !"b[0]", null, i32 5, metadata !73, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!71 = metadata !{i32 786689, metadata !45, metadata !"b", null, i32 5, metadata !72, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!72 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 72, i64 8, i32 0, i32 0, metadata !57, metadata !65, i32 0, i32 0} ; [ DW_TAG_array_type ]
!73 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 24, i64 8, i32 0, i32 0, metadata !57, metadata !65, i32 0, i32 0} ; [ DW_TAG_array_type ]
!74 = metadata !{i32 5, i32 15, metadata !45, null}
!75 = metadata !{i32 790531, metadata !71, metadata !"b[1]", null, i32 5, metadata !73, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!76 = metadata !{i32 790531, metadata !71, metadata !"b[2]", null, i32 5, metadata !73, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!77 = metadata !{i32 786689, metadata !45, metadata !"res", null, i32 6, metadata !78, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!78 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 144, i64 16, i32 0, i32 0, metadata !60, metadata !65, i32 0, i32 0} ; [ DW_TAG_array_type ]
!79 = metadata !{i32 6, i32 16, metadata !45, null}
!80 = metadata !{i32 11, i32 21, metadata !81, null}
!81 = metadata !{i32 786443, metadata !82, i32 11, i32 8, metadata !46, i32 1} ; [ DW_TAG_lexical_block ]
!82 = metadata !{i32 786443, metadata !45, i32 7, i32 1, metadata !46, i32 0} ; [ DW_TAG_lexical_block ]
!83 = metadata !{i32 11, i32 30, metadata !81, null}
!84 = metadata !{i32 11, i32 36, metadata !85, null}
!85 = metadata !{i32 786443, metadata !81, i32 11, i32 35, metadata !46, i32 2} ; [ DW_TAG_lexical_block ]
!86 = metadata !{i32 12, i32 1, metadata !85, null}
!87 = metadata !{i32 16, i32 7, metadata !88, null}
!88 = metadata !{i32 786443, metadata !89, i32 14, i32 37, metadata !46, i32 4} ; [ DW_TAG_lexical_block ]
!89 = metadata !{i32 786443, metadata !85, i32 14, i32 10, metadata !46, i32 3} ; [ DW_TAG_lexical_block ]
!90 = metadata !{i32 20, i32 9, metadata !91, null}
!91 = metadata !{i32 786443, metadata !92, i32 17, i32 43, metadata !46, i32 6} ; [ DW_TAG_lexical_block ]
!92 = metadata !{i32 786443, metadata !88, i32 17, i32 16, metadata !46, i32 5} ; [ DW_TAG_lexical_block ]
!93 = metadata !{i32 23, i32 3, metadata !85, null}
!94 = metadata !{i32 786688, metadata !81, metadata !"i", metadata !46, i32 11, metadata !95, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!95 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!96 = metadata !{i32 24, i32 1, metadata !82, null}
