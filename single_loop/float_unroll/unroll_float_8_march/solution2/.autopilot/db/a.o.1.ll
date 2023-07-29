; ModuleID = '/opt/Xilinx/Vivado_HLS/2017.2/bin/unroll_float_8_march/solution2/.autopilot/db/a.g.1.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@simple.str = internal unnamed_addr constant [7 x i8] c"simple\00" ; [#uses=1 type=[7 x i8]*]
@.str2 = private unnamed_addr constant [12 x i8] c"hls_label_0\00", align 1 ; [#uses=1 type=[12 x i8]*]
@.str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]
@.str = private unnamed_addr constant [6 x i8] c"BLOCK\00", align 1 ; [#uses=1 type=[6 x i8]*]

; [#uses=0]
define float @simple(float* %a, float* %b, float* %c) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap(float 0.000000e+00) nounwind, !map !25
  call void (...)* @_ssdm_op_SpecTopModule([7 x i8]* @simple.str) nounwind
  call void @llvm.dbg.value(metadata !{float* %a}, i64 0, metadata !31), !dbg !32 ; [debug line = 3:22] [debug variable = a]
  call void @llvm.dbg.value(metadata !{float* %b}, i64 0, metadata !33), !dbg !34 ; [debug line = 3:34] [debug variable = b]
  call void @llvm.dbg.value(metadata !{float* %c}, i64 0, metadata !35), !dbg !36 ; [debug line = 3:46] [debug variable = c]
  call void (...)* @_ssdm_SpecArrayDimSize(float* %a, i32 8) nounwind, !dbg !37 ; [debug line = 4:2]
  call void (...)* @_ssdm_SpecArrayDimSize(float* %b, i32 8) nounwind, !dbg !39 ; [debug line = 4:30]
  call void (...)* @_ssdm_SpecArrayDimSize(float* %c, i32 8) nounwind, !dbg !40 ; [debug line = 4:58]
  call void (...)* @_ssdm_SpecArrayPartition(float* %a, i32 1, i8* getelementptr inbounds ([6 x i8]* @.str, i64 0, i64 0), i32 8, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !41 ; [debug line = 5:1]
  call void (...)* @_ssdm_SpecArrayPartition(float* %b, i32 1, i8* getelementptr inbounds ([6 x i8]* @.str, i64 0, i64 0), i32 8, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !42 ; [debug line = 6:1]
  call void (...)* @_ssdm_SpecArrayPartition(float* %c, i32 1, i8* getelementptr inbounds ([6 x i8]* @.str, i64 0, i64 0), i32 8, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !43 ; [debug line = 7:1]
  br label %1, !dbg !44                           ; [debug line = 10:5]

; <label>:1                                       ; preds = %2, %0
  %i = phi i32 [ 0, %0 ], [ %i.1, %2 ]            ; [#uses=3 type=i32]
  %exitcond = icmp eq i32 %i, 8, !dbg !44         ; [#uses=1 type=i1] [debug line = 10:5]
  br i1 %exitcond, label %3, label %2, !dbg !44   ; [debug line = 10:5]

; <label>:2                                       ; preds = %1
  %rbegin = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([12 x i8]* @.str2, i64 0, i64 0)) nounwind, !dbg !46 ; [#uses=1 type=i32] [debug line = 11:6]
  call void (...)* @_ssdm_Unroll(i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !48 ; [debug line = 13:1]
  %tmp = sext i32 %i to i64, !dbg !49             ; [#uses=3 type=i64] [debug line = 14:2]
  %a.addr = getelementptr inbounds float* %a, i64 %tmp, !dbg !49 ; [#uses=1 type=float*] [debug line = 14:2]
  %a.load = load float* %a.addr, align 4, !dbg !49 ; [#uses=2 type=float] [debug line = 14:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %a.load) nounwind
  %b.addr = getelementptr inbounds float* %b, i64 %tmp, !dbg !49 ; [#uses=1 type=float*] [debug line = 14:2]
  %b.load = load float* %b.addr, align 4, !dbg !49 ; [#uses=2 type=float] [debug line = 14:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %b.load) nounwind
  %tmp.1 = fadd float %a.load, %b.load, !dbg !49  ; [#uses=1 type=float] [debug line = 14:2]
  %c.addr = getelementptr inbounds float* %c, i64 %tmp, !dbg !49 ; [#uses=1 type=float*] [debug line = 14:2]
  store float %tmp.1, float* %c.addr, align 4, !dbg !49 ; [debug line = 14:2]
  %rend = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([12 x i8]* @.str2, i64 0, i64 0), i32 %rbegin) nounwind, !dbg !50 ; [#uses=0 type=i32] [debug line = 16:6]
  %i.1 = add nsw i32 %i, 1, !dbg !51              ; [#uses=1 type=i32] [debug line = 10:14]
  call void @llvm.dbg.value(metadata !{i32 %i.1}, i64 0, metadata !52), !dbg !51 ; [debug line = 10:14] [debug variable = i]
  br label %1, !dbg !51                           ; [debug line = 10:14]

; <label>:3                                       ; preds = %1
  ret float 0.000000e+00, !dbg !53                ; [debug line = 17:4]
}

; [#uses=4]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=1]
declare i32 @_ssdm_op_SpecRegionEnd(...)

; [#uses=1]
declare i32 @_ssdm_op_SpecRegionBegin(...)

; [#uses=1]
declare void @_ssdm_op_SpecBitsMap(...)

; [#uses=1]
declare void @_ssdm_Unroll(...) nounwind

; [#uses=2]
declare void @_ssdm_SpecKeepArrayLoad(...)

; [#uses=3]
declare void @_ssdm_SpecArrayPartition(...) nounwind

; [#uses=3]
declare void @_ssdm_SpecArrayDimSize(...) nounwind

!llvm.dbg.cu = !{!0}
!opencl.kernels = !{!18}
!hls.encrypted.func = !{}

!0 = metadata !{i32 786449, i32 0, i32 1, metadata !"/opt/Xilinx/Vivado_HLS/2017.2/bin/unroll_float_8_march/solution2/.autopilot/db/add.pragma.2.c", metadata !"/opt/Xilinx/Vivado_HLS/2017.2/bin", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !13} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"simple", metadata !"simple", metadata !"", metadata !6, i32 3, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, float (float*, float*, float*)* @simple, null, null, metadata !11, i32 4} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"../../../../../home/drsatya/neha/add.c", metadata !"/opt/Xilinx/Vivado_HLS/2017.2/bin", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{metadata !9, metadata !10, metadata !10, metadata !10}
!9 = metadata !{i32 786468, null, metadata !"float", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!10 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ]
!11 = metadata !{metadata !12}
!12 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!13 = metadata !{metadata !14}
!14 = metadata !{metadata !15}
!15 = metadata !{i32 786484, i32 0, null, metadata !"signgam", metadata !"signgam", metadata !"", metadata !16, i32 162, metadata !17, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!16 = metadata !{i32 786473, metadata !"/usr/include/math.h", metadata !"/opt/Xilinx/Vivado_HLS/2017.2/bin", null} ; [ DW_TAG_file_type ]
!17 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!18 = metadata !{float (float*, float*, float*)* @simple, metadata !19, metadata !20, metadata !21, metadata !22, metadata !23, metadata !24}
!19 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 1}
!20 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!21 = metadata !{metadata !"kernel_arg_type", metadata !"float*", metadata !"float*", metadata !"float*"}
!22 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!23 = metadata !{metadata !"kernel_arg_name", metadata !"a", metadata !"b", metadata !"c"}
!24 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!25 = metadata !{metadata !26}
!26 = metadata !{i32 0, i32 31, metadata !27}
!27 = metadata !{metadata !28}
!28 = metadata !{metadata !"return", metadata !29, metadata !"float", i32 0, i32 31}
!29 = metadata !{metadata !30}
!30 = metadata !{i32 0, i32 1, i32 0}
!31 = metadata !{i32 786689, metadata !5, metadata !"a", metadata !6, i32 16777219, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!32 = metadata !{i32 3, i32 22, metadata !5, null}
!33 = metadata !{i32 786689, metadata !5, metadata !"b", metadata !6, i32 33554435, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!34 = metadata !{i32 3, i32 34, metadata !5, null}
!35 = metadata !{i32 786689, metadata !5, metadata !"c", metadata !6, i32 50331651, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!36 = metadata !{i32 3, i32 46, metadata !5, null}
!37 = metadata !{i32 4, i32 2, metadata !38, null}
!38 = metadata !{i32 786443, metadata !5, i32 4, i32 1, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!39 = metadata !{i32 4, i32 30, metadata !38, null}
!40 = metadata !{i32 4, i32 58, metadata !38, null}
!41 = metadata !{i32 5, i32 1, metadata !38, null}
!42 = metadata !{i32 6, i32 1, metadata !38, null}
!43 = metadata !{i32 7, i32 1, metadata !38, null}
!44 = metadata !{i32 10, i32 5, metadata !45, null}
!45 = metadata !{i32 786443, metadata !38, i32 10, i32 1, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!46 = metadata !{i32 11, i32 6, metadata !47, null}
!47 = metadata !{i32 786443, metadata !45, i32 11, i32 5, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!48 = metadata !{i32 13, i32 1, metadata !47, null}
!49 = metadata !{i32 14, i32 2, metadata !47, null}
!50 = metadata !{i32 16, i32 6, metadata !47, null}
!51 = metadata !{i32 10, i32 14, metadata !45, null}
!52 = metadata !{i32 786688, metadata !38, metadata !"i", metadata !6, i32 9, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!53 = metadata !{i32 17, i32 4, metadata !38, null}
