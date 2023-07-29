; ModuleID = '/opt/Xilinx/Vivado_HLS/2017.2/bin/INTEGER_MATRIX_MULTIPLICATION/matrix_multiplication_16_unroll/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@matrixmul.str = internal unnamed_addr constant [10 x i8] c"matrixmul\00" ; [#uses=1 type=[10 x i8]*]
@.str2 = private unnamed_addr constant [4 x i8] c"Row\00", align 1 ; [#uses=3 type=[4 x i8]*]
@.str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]

; [#uses=0]
define void @matrixmul([3 x i8]* %"a[0]", [3 x i8]* %"a[1]", [3 x i8]* %"a[2]", [3 x i8]* %"b[0]", [3 x i8]* %"b[1]", [3 x i8]* %"b[2]", [3 x [3 x i16]]* %res) {
  call void (...)* @_ssdm_op_SpecBitsMap([3 x i8]* %"b[2]"), !map !36
  call void (...)* @_ssdm_op_SpecBitsMap([3 x i8]* %"b[1]"), !map !43
  call void (...)* @_ssdm_op_SpecBitsMap([3 x i8]* %"b[0]"), !map !49
  call void (...)* @_ssdm_op_SpecBitsMap([3 x i8]* %"a[2]"), !map !55
  call void (...)* @_ssdm_op_SpecBitsMap([3 x i8]* %"a[1]"), !map !59
  call void (...)* @_ssdm_op_SpecBitsMap([3 x i8]* %"a[0]"), !map !63
  call void (...)* @_ssdm_op_SpecBitsMap([3 x [3 x i16]]* %res) nounwind, !map !67
  call void (...)* @_ssdm_op_SpecTopModule([10 x i8]* @matrixmul.str) nounwind
  call void @llvm.dbg.value(metadata !{[3 x i8]* %"a[0]"}, i64 0, metadata !72), !dbg !77 ; [debug line = 4:15] [debug variable = a[0]]
  call void @llvm.dbg.value(metadata !{[3 x i8]* %"a[1]"}, i64 0, metadata !78), !dbg !77 ; [debug line = 4:15] [debug variable = a[1]]
  call void @llvm.dbg.value(metadata !{[3 x i8]* %"a[2]"}, i64 0, metadata !79), !dbg !77 ; [debug line = 4:15] [debug variable = a[2]]
  call void @llvm.dbg.value(metadata !{[3 x i8]* %"b[0]"}, i64 0, metadata !80), !dbg !84 ; [debug line = 5:15] [debug variable = b[0]]
  call void @llvm.dbg.value(metadata !{[3 x i8]* %"b[1]"}, i64 0, metadata !85), !dbg !84 ; [debug line = 5:15] [debug variable = b[1]]
  call void @llvm.dbg.value(metadata !{[3 x i8]* %"b[2]"}, i64 0, metadata !86), !dbg !84 ; [debug line = 5:15] [debug variable = b[2]]
  call void @llvm.dbg.value(metadata !{[3 x [3 x i16]]* %res}, i64 0, metadata !87), !dbg !89 ; [debug line = 6:16] [debug variable = res]
  %"b[0].addr" = getelementptr [3 x i8]* %"b[0]", i64 0, i64 0 ; [#uses=1 type=i8*]
  %"b[0].addr.1" = getelementptr [3 x i8]* %"b[0]", i64 0, i64 1 ; [#uses=1 type=i8*]
  %"b[0].addr.2" = getelementptr [3 x i8]* %"b[0]", i64 0, i64 2 ; [#uses=1 type=i8*]
  %"b[1].addr" = getelementptr [3 x i8]* %"b[1]", i64 0, i64 0 ; [#uses=1 type=i8*]
  %"b[1].addr.1" = getelementptr [3 x i8]* %"b[1]", i64 0, i64 1 ; [#uses=1 type=i8*]
  %"b[1].addr.2" = getelementptr [3 x i8]* %"b[1]", i64 0, i64 2 ; [#uses=1 type=i8*]
  %"b[2].addr" = getelementptr [3 x i8]* %"b[2]", i64 0, i64 0 ; [#uses=1 type=i8*]
  %"b[2].addr.1" = getelementptr [3 x i8]* %"b[2]", i64 0, i64 1 ; [#uses=1 type=i8*]
  %"b[2].addr.2" = getelementptr [3 x i8]* %"b[2]", i64 0, i64 2 ; [#uses=1 type=i8*]
  br label %1, !dbg !90                           ; [debug line = 11:21]

; <label>:1                                       ; preds = %3, %0
  %i = phi i2 [ 0, %0 ], [ %i.1, %3 ]             ; [#uses=3 type=i2]
  %exitcond2 = icmp eq i2 %i, -1, !dbg !90        ; [#uses=1 type=i1] [debug line = 11:21]
  %2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 3, i64 3, i64 3) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond2, label %5, label %3, !dbg !90  ; [debug line = 11:21]

; <label>:3                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([4 x i8]* @.str2) nounwind, !dbg !93 ; [debug line = 11:36]
  %tmp.1 = call i32 (...)* @_ssdm_op_SpecRegionBegin([4 x i8]* @.str2) nounwind, !dbg !93 ; [#uses=1 type=i32] [debug line = 11:36]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @.str1) nounwind, !dbg !95 ; [debug line = 12:1]
  %tmp = zext i2 %i to i64, !dbg !96              ; [#uses=6 type=i64] [debug line = 16:7]
  %res.addr = getelementptr [3 x [3 x i16]]* %res, i64 0, i64 %tmp, i64 0, !dbg !96 ; [#uses=1 type=i16*] [debug line = 16:7]
  %"a[0].addr" = getelementptr [3 x i8]* %"a[0]", i64 0, i64 %tmp ; [#uses=1 type=i8*]
  %"a[0].load" = load i8* %"a[0].addr", align 1, !dbg !99 ; [#uses=1 type=i8] [debug line = 20:9]
  %tmp.5 = sext i8 %"a[0].load" to i16, !dbg !99  ; [#uses=3 type=i16] [debug line = 20:9]
  %"b[0].load" = load i8* %"b[0].addr", align 1, !dbg !99 ; [#uses=1 type=i8] [debug line = 20:9]
  %tmp.6 = sext i8 %"b[0].load" to i16, !dbg !99  ; [#uses=1 type=i16] [debug line = 20:9]
  %tmp.7 = mul i16 %tmp.6, %tmp.5, !dbg !99       ; [#uses=1 type=i16] [debug line = 20:9]
  %"a[1].addr" = getelementptr [3 x i8]* %"a[1]", i64 0, i64 %tmp ; [#uses=1 type=i8*]
  %"a[1].load" = load i8* %"a[1].addr", align 1, !dbg !99 ; [#uses=1 type=i8] [debug line = 20:9]
  %tmp.5.0.1 = sext i8 %"a[1].load" to i16, !dbg !99 ; [#uses=3 type=i16] [debug line = 20:9]
  %"b[0].load.1" = load i8* %"b[0].addr.1", align 1, !dbg !99 ; [#uses=1 type=i8] [debug line = 20:9]
  %tmp.6.0.1 = sext i8 %"b[0].load.1" to i16, !dbg !99 ; [#uses=1 type=i16] [debug line = 20:9]
  %tmp.7.0.1 = mul i16 %tmp.6.0.1, %tmp.5.0.1, !dbg !99 ; [#uses=1 type=i16] [debug line = 20:9]
  %"a[2].addr" = getelementptr [3 x i8]* %"a[2]", i64 0, i64 %tmp ; [#uses=1 type=i8*]
  %"a[2].load" = load i8* %"a[2].addr", align 1, !dbg !99 ; [#uses=1 type=i8] [debug line = 20:9]
  %tmp.5.0.2 = sext i8 %"a[2].load" to i16, !dbg !99 ; [#uses=3 type=i16] [debug line = 20:9]
  %"b[0].load.2" = load i8* %"b[0].addr.2", align 1, !dbg !99 ; [#uses=1 type=i8] [debug line = 20:9]
  %tmp.6.0.2 = sext i8 %"b[0].load.2" to i16, !dbg !99 ; [#uses=1 type=i16] [debug line = 20:9]
  %tmp.7.0.2 = mul i16 %tmp.6.0.2, %tmp.5.0.2, !dbg !99 ; [#uses=1 type=i16] [debug line = 20:9]
  %tmp1 = add i16 %tmp.7.0.2, %tmp.7, !dbg !99    ; [#uses=1 type=i16] [debug line = 20:9]
  %tmp.8.0.2 = add i16 %tmp.7.0.1, %tmp1, !dbg !99 ; [#uses=1 type=i16] [debug line = 20:9]
  store i16 %tmp.8.0.2, i16* %res.addr, align 2, !dbg !99 ; [debug line = 20:9]
  %res.addr.1 = getelementptr [3 x [3 x i16]]* %res, i64 0, i64 %tmp, i64 1, !dbg !96 ; [#uses=1 type=i16*] [debug line = 16:7]
  %"b[1].load" = load i8* %"b[1].addr", align 1, !dbg !99 ; [#uses=1 type=i8] [debug line = 20:9]
  %tmp.6.1 = sext i8 %"b[1].load" to i16, !dbg !99 ; [#uses=1 type=i16] [debug line = 20:9]
  %tmp.7.1 = mul i16 %tmp.6.1, %tmp.5, !dbg !99   ; [#uses=1 type=i16] [debug line = 20:9]
  %"b[1].load.1" = load i8* %"b[1].addr.1", align 1, !dbg !99 ; [#uses=1 type=i8] [debug line = 20:9]
  %tmp.6.1.1 = sext i8 %"b[1].load.1" to i16, !dbg !99 ; [#uses=1 type=i16] [debug line = 20:9]
  %tmp.7.1.1 = mul i16 %tmp.6.1.1, %tmp.5.0.1, !dbg !99 ; [#uses=1 type=i16] [debug line = 20:9]
  %"b[1].load.2" = load i8* %"b[1].addr.2", align 1, !dbg !99 ; [#uses=1 type=i8] [debug line = 20:9]
  %tmp.6.1.2 = sext i8 %"b[1].load.2" to i16, !dbg !99 ; [#uses=1 type=i16] [debug line = 20:9]
  %tmp.7.1.2 = mul i16 %tmp.6.1.2, %tmp.5.0.2, !dbg !99 ; [#uses=1 type=i16] [debug line = 20:9]
  %tmp2 = add i16 %tmp.7.1.2, %tmp.7.1, !dbg !99  ; [#uses=1 type=i16] [debug line = 20:9]
  %tmp.8.1.2 = add i16 %tmp.7.1.1, %tmp2, !dbg !99 ; [#uses=1 type=i16] [debug line = 20:9]
  store i16 %tmp.8.1.2, i16* %res.addr.1, align 2, !dbg !99 ; [debug line = 20:9]
  %res.addr.2 = getelementptr [3 x [3 x i16]]* %res, i64 0, i64 %tmp, i64 2, !dbg !96 ; [#uses=1 type=i16*] [debug line = 16:7]
  %"b[2].load" = load i8* %"b[2].addr", align 1, !dbg !99 ; [#uses=1 type=i8] [debug line = 20:9]
  %tmp.6.2 = sext i8 %"b[2].load" to i16, !dbg !99 ; [#uses=1 type=i16] [debug line = 20:9]
  %tmp.7.2 = mul i16 %tmp.6.2, %tmp.5, !dbg !99   ; [#uses=1 type=i16] [debug line = 20:9]
  %"b[2].load.1" = load i8* %"b[2].addr.1", align 1, !dbg !99 ; [#uses=1 type=i8] [debug line = 20:9]
  %tmp.6.2.1 = sext i8 %"b[2].load.1" to i16, !dbg !99 ; [#uses=1 type=i16] [debug line = 20:9]
  %tmp.7.2.1 = mul i16 %tmp.6.2.1, %tmp.5.0.1, !dbg !99 ; [#uses=1 type=i16] [debug line = 20:9]
  %"b[2].load.2" = load i8* %"b[2].addr.2", align 1, !dbg !99 ; [#uses=1 type=i8] [debug line = 20:9]
  %tmp.6.2.2 = sext i8 %"b[2].load.2" to i16, !dbg !99 ; [#uses=1 type=i16] [debug line = 20:9]
  %tmp.7.2.2 = mul i16 %tmp.6.2.2, %tmp.5.0.2, !dbg !99 ; [#uses=1 type=i16] [debug line = 20:9]
  %tmp3 = add i16 %tmp.7.2.2, %tmp.7.2, !dbg !99  ; [#uses=1 type=i16] [debug line = 20:9]
  %tmp.8.2.2 = add i16 %tmp.7.2.1, %tmp3, !dbg !99 ; [#uses=1 type=i16] [debug line = 20:9]
  store i16 %tmp.8.2.2, i16* %res.addr.2, align 2, !dbg !99 ; [debug line = 20:9]
  %4 = call i32 (...)* @_ssdm_op_SpecRegionEnd([4 x i8]* @.str2, i32 %tmp.1) nounwind, !dbg !102 ; [#uses=0 type=i32] [debug line = 23:3]
  %i.1 = add i2 %i, 1, !dbg !103                  ; [#uses=1 type=i2] [debug line = 11:30]
  call void @llvm.dbg.value(metadata !{i2 %i.1}, i64 0, metadata !104), !dbg !103 ; [debug line = 11:30] [debug variable = i]
  br label %1, !dbg !103                          ; [debug line = 11:30]

; <label>:5                                       ; preds = %1
  ret void, !dbg !105                             ; [debug line = 24:1]
}

; [#uses=8]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=1]
declare i32 @_ssdm_op_SpecRegionEnd(...)

; [#uses=1]
declare i32 @_ssdm_op_SpecRegionBegin(...)

; [#uses=1]
declare void @_ssdm_op_SpecPipeline(...) nounwind

; [#uses=1]
declare i32 @_ssdm_op_SpecLoopTripCount(...)

; [#uses=1]
declare void @_ssdm_op_SpecLoopName(...) nounwind

; [#uses=7]
declare void @_ssdm_op_SpecBitsMap(...)

!llvm.dbg.cu = !{!0}
!opencl.kernels = !{!29}
!hls.encrypted.func = !{}
!llvm.map.gv = !{}

!0 = metadata !{i32 786449, i32 0, i32 4, metadata !"/opt/Xilinx/Vivado_HLS/2017.2/bin/INTEGER_MATRIX_MULTIPLICATION/matrix_multiplication_16_unroll/solution1/.autopilot/db/mat_unroll_1.pragma.2.cpp", metadata !"/opt/Xilinx/Vivado_HLS/2017.2/bin/INTEGER_MATRIX_MULTIPLICATION", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !24} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"matrixmul", metadata !"matrixmul", metadata !"_Z9matrixmulPA3_cS0_PA3_s", metadata !6, i32 3, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !22, i32 7} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"../../../../../../home/drsatya/Desktop/lab1/mat_unroll_1.cpp", metadata !"/opt/Xilinx/Vivado_HLS/2017.2/bin/INTEGER_MATRIX_MULTIPLICATION", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{null, metadata !9, metadata !15, metadata !18}
!9 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ]
!10 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 24, i64 8, i32 0, i32 0, metadata !11, metadata !13, i32 0, i32 0} ; [ DW_TAG_array_type ]
!11 = metadata !{i32 786454, null, metadata !"mat_a_t", metadata !6, i32 80, i64 0, i64 0, i64 0, i32 0, metadata !12} ; [ DW_TAG_typedef ]
!12 = metadata !{i32 786468, null, metadata !"char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!13 = metadata !{metadata !14}
!14 = metadata !{i32 786465, i64 0, i64 2}        ; [ DW_TAG_subrange_type ]
!15 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !16} ; [ DW_TAG_pointer_type ]
!16 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 24, i64 8, i32 0, i32 0, metadata !17, metadata !13, i32 0, i32 0} ; [ DW_TAG_array_type ]
!17 = metadata !{i32 786454, null, metadata !"mat_b_t", metadata !6, i32 81, i64 0, i64 0, i64 0, i32 0, metadata !12} ; [ DW_TAG_typedef ]
!18 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !19} ; [ DW_TAG_pointer_type ]
!19 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 48, i64 16, i32 0, i32 0, metadata !20, metadata !13, i32 0, i32 0} ; [ DW_TAG_array_type ]
!20 = metadata !{i32 786454, null, metadata !"result_t", metadata !6, i32 82, i64 0, i64 0, i64 0, i32 0, metadata !21} ; [ DW_TAG_typedef ]
!21 = metadata !{i32 786468, null, metadata !"short", null, i32 0, i64 16, i64 16, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!22 = metadata !{metadata !23}
!23 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!24 = metadata !{metadata !25}
!25 = metadata !{metadata !26}
!26 = metadata !{i32 786484, i32 0, null, metadata !"signgam", metadata !"signgam", metadata !"", metadata !27, i32 162, metadata !28, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!27 = metadata !{i32 786473, metadata !"/usr/include/math.h", metadata !"/opt/Xilinx/Vivado_HLS/2017.2/bin/INTEGER_MATRIX_MULTIPLICATION", null} ; [ DW_TAG_file_type ]
!28 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!29 = metadata !{null, metadata !30, metadata !31, metadata !32, metadata !33, metadata !34, metadata !35}
!30 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 1}
!31 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!32 = metadata !{metadata !"kernel_arg_type", metadata !"mat_a_t [3]*", metadata !"mat_b_t [3]*", metadata !"result_t [3]*"}
!33 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!34 = metadata !{metadata !"kernel_arg_name", metadata !"a", metadata !"b", metadata !"res"}
!35 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!36 = metadata !{metadata !37}
!37 = metadata !{i32 0, i32 7, metadata !38}
!38 = metadata !{metadata !39}
!39 = metadata !{metadata !"b", metadata !40, metadata !"char", i32 0, i32 7}
!40 = metadata !{metadata !41, metadata !42}
!41 = metadata !{i32 0, i32 2, i32 1}
!42 = metadata !{i32 2, i32 2, i32 2}
!43 = metadata !{metadata !44}
!44 = metadata !{i32 0, i32 7, metadata !45}
!45 = metadata !{metadata !46}
!46 = metadata !{metadata !"b", metadata !47, metadata !"char", i32 0, i32 7}
!47 = metadata !{metadata !41, metadata !48}
!48 = metadata !{i32 1, i32 1, i32 2}
!49 = metadata !{metadata !50}
!50 = metadata !{i32 0, i32 7, metadata !51}
!51 = metadata !{metadata !52}
!52 = metadata !{metadata !"b", metadata !53, metadata !"char", i32 0, i32 7}
!53 = metadata !{metadata !41, metadata !54}
!54 = metadata !{i32 0, i32 0, i32 2}
!55 = metadata !{metadata !56}
!56 = metadata !{i32 0, i32 7, metadata !57}
!57 = metadata !{metadata !58}
!58 = metadata !{metadata !"a", metadata !40, metadata !"char", i32 0, i32 7}
!59 = metadata !{metadata !60}
!60 = metadata !{i32 0, i32 7, metadata !61}
!61 = metadata !{metadata !62}
!62 = metadata !{metadata !"a", metadata !47, metadata !"char", i32 0, i32 7}
!63 = metadata !{metadata !64}
!64 = metadata !{i32 0, i32 7, metadata !65}
!65 = metadata !{metadata !66}
!66 = metadata !{metadata !"a", metadata !53, metadata !"char", i32 0, i32 7}
!67 = metadata !{metadata !68}
!68 = metadata !{i32 0, i32 15, metadata !69}
!69 = metadata !{metadata !70}
!70 = metadata !{metadata !"res", metadata !71, metadata !"short", i32 0, i32 15}
!71 = metadata !{metadata !41, metadata !41}
!72 = metadata !{i32 790531, metadata !73, metadata !"a[0]", null, i32 4, metadata !76, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!73 = metadata !{i32 786689, metadata !5, metadata !"a", null, i32 4, metadata !74, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!74 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 72, i64 8, i32 0, i32 0, metadata !11, metadata !75, i32 0, i32 0} ; [ DW_TAG_array_type ]
!75 = metadata !{metadata !14, metadata !14}
!76 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 24, i64 8, i32 0, i32 0, metadata !11, metadata !75, i32 0, i32 0} ; [ DW_TAG_array_type ]
!77 = metadata !{i32 4, i32 15, metadata !5, null}
!78 = metadata !{i32 790531, metadata !73, metadata !"a[1]", null, i32 4, metadata !76, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!79 = metadata !{i32 790531, metadata !73, metadata !"a[2]", null, i32 4, metadata !76, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!80 = metadata !{i32 790531, metadata !81, metadata !"b[0]", null, i32 5, metadata !83, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!81 = metadata !{i32 786689, metadata !5, metadata !"b", null, i32 5, metadata !82, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!82 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 72, i64 8, i32 0, i32 0, metadata !17, metadata !75, i32 0, i32 0} ; [ DW_TAG_array_type ]
!83 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 24, i64 8, i32 0, i32 0, metadata !17, metadata !75, i32 0, i32 0} ; [ DW_TAG_array_type ]
!84 = metadata !{i32 5, i32 15, metadata !5, null}
!85 = metadata !{i32 790531, metadata !81, metadata !"b[1]", null, i32 5, metadata !83, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!86 = metadata !{i32 790531, metadata !81, metadata !"b[2]", null, i32 5, metadata !83, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!87 = metadata !{i32 786689, metadata !5, metadata !"res", null, i32 6, metadata !88, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!88 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 144, i64 16, i32 0, i32 0, metadata !20, metadata !75, i32 0, i32 0} ; [ DW_TAG_array_type ]
!89 = metadata !{i32 6, i32 16, metadata !5, null}
!90 = metadata !{i32 11, i32 21, metadata !91, null}
!91 = metadata !{i32 786443, metadata !92, i32 11, i32 8, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!92 = metadata !{i32 786443, metadata !5, i32 7, i32 1, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!93 = metadata !{i32 11, i32 36, metadata !94, null}
!94 = metadata !{i32 786443, metadata !91, i32 11, i32 35, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!95 = metadata !{i32 12, i32 1, metadata !94, null}
!96 = metadata !{i32 16, i32 7, metadata !97, null}
!97 = metadata !{i32 786443, metadata !98, i32 14, i32 37, metadata !6, i32 4} ; [ DW_TAG_lexical_block ]
!98 = metadata !{i32 786443, metadata !94, i32 14, i32 10, metadata !6, i32 3} ; [ DW_TAG_lexical_block ]
!99 = metadata !{i32 20, i32 9, metadata !100, null}
!100 = metadata !{i32 786443, metadata !101, i32 17, i32 43, metadata !6, i32 6} ; [ DW_TAG_lexical_block ]
!101 = metadata !{i32 786443, metadata !97, i32 17, i32 16, metadata !6, i32 5} ; [ DW_TAG_lexical_block ]
!102 = metadata !{i32 23, i32 3, metadata !94, null}
!103 = metadata !{i32 11, i32 30, metadata !91, null}
!104 = metadata !{i32 786688, metadata !91, metadata !"i", metadata !6, i32 11, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!105 = metadata !{i32 24, i32 1, metadata !92, null}
