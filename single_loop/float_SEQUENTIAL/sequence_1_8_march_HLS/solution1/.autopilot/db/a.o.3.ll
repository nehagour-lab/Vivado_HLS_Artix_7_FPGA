; ModuleID = '/opt/Xilinx/Vivado_HLS/2017.2/bin/sequence_1_8_march/solution1/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@simple_str = internal unnamed_addr constant [7 x i8] c"simple\00" ; [#uses=1 type=[7 x i8]*]

; [#uses=0]
define float @simple([8 x float]* %a, [8 x float]* %b, [8 x float]* %c) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap([8 x float]* %a) nounwind, !map !7
  call void (...)* @_ssdm_op_SpecBitsMap([8 x float]* %b) nounwind, !map !13
  call void (...)* @_ssdm_op_SpecBitsMap([8 x float]* %c) nounwind, !map !17
  call void (...)* @_ssdm_op_SpecBitsMap(float 0.000000e+00) nounwind, !map !21
  call void (...)* @_ssdm_op_SpecTopModule([7 x i8]* @simple_str) nounwind
  call void @llvm.dbg.value(metadata !{[8 x float]* %a}, i64 0, metadata !27), !dbg !39 ; [debug line = 3:22] [debug variable = a]
  call void @llvm.dbg.value(metadata !{[8 x float]* %b}, i64 0, metadata !40), !dbg !41 ; [debug line = 3:34] [debug variable = b]
  call void @llvm.dbg.value(metadata !{[8 x float]* %c}, i64 0, metadata !42), !dbg !43 ; [debug line = 3:46] [debug variable = c]
  br label %1, !dbg !44                           ; [debug line = 7:5]

; <label>:1                                       ; preds = %2, %0
  %i = phi i4 [ 0, %0 ], [ %i_1, %2 ]             ; [#uses=3 type=i4]
  %exitcond = icmp eq i4 %i, -8, !dbg !44         ; [#uses=1 type=i1] [debug line = 7:5]
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) nounwind ; [#uses=0 type=i32]
  %i_1 = add i4 %i, 1, !dbg !47                   ; [#uses=1 type=i4] [debug line = 7:14]
  br i1 %exitcond, label %3, label %2, !dbg !44   ; [debug line = 7:5]

; <label>:2                                       ; preds = %1
  %tmp = zext i4 %i to i64, !dbg !48              ; [#uses=3 type=i64] [debug line = 10:7]
  %a_addr = getelementptr [8 x float]* %a, i64 0, i64 %tmp, !dbg !48 ; [#uses=1 type=float*] [debug line = 10:7]
  %a_load = load float* %a_addr, align 4, !dbg !48 ; [#uses=1 type=float] [debug line = 10:7]
  %b_addr = getelementptr [8 x float]* %b, i64 0, i64 %tmp, !dbg !48 ; [#uses=1 type=float*] [debug line = 10:7]
  %b_load = load float* %b_addr, align 4, !dbg !48 ; [#uses=1 type=float] [debug line = 10:7]
  %tmp_1 = fadd float %a_load, %b_load, !dbg !48  ; [#uses=1 type=float] [debug line = 10:7]
  %c_addr = getelementptr [8 x float]* %c, i64 0, i64 %tmp, !dbg !48 ; [#uses=1 type=float*] [debug line = 10:7]
  store float %tmp_1, float* %c_addr, align 4, !dbg !48 ; [debug line = 10:7]
  call void @llvm.dbg.value(metadata !{i4 %i_1}, i64 0, metadata !50), !dbg !47 ; [debug line = 7:14] [debug variable = i]
  br label %1, !dbg !47                           ; [debug line = 7:14]

; <label>:3                                       ; preds = %1
  ret float 0.000000e+00, !dbg !52                ; [debug line = 13:5]
}

; [#uses=4]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=1]
define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

; [#uses=1]
define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

; [#uses=4]
define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

!opencl.kernels = !{!0}
!hls.encrypted.func = !{}
!llvm.map.gv = !{}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 1}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"float*", metadata !"float*", metadata !"float*"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"a", metadata !"b", metadata !"c"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{metadata !8}
!8 = metadata !{i32 0, i32 31, metadata !9}
!9 = metadata !{metadata !10}
!10 = metadata !{metadata !"a", metadata !11, metadata !"float", i32 0, i32 31}
!11 = metadata !{metadata !12}
!12 = metadata !{i32 0, i32 7, i32 1}
!13 = metadata !{metadata !14}
!14 = metadata !{i32 0, i32 31, metadata !15}
!15 = metadata !{metadata !16}
!16 = metadata !{metadata !"b", metadata !11, metadata !"float", i32 0, i32 31}
!17 = metadata !{metadata !18}
!18 = metadata !{i32 0, i32 31, metadata !19}
!19 = metadata !{metadata !20}
!20 = metadata !{metadata !"c", metadata !11, metadata !"float", i32 0, i32 31}
!21 = metadata !{metadata !22}
!22 = metadata !{i32 0, i32 31, metadata !23}
!23 = metadata !{metadata !24}
!24 = metadata !{metadata !"return", metadata !25, metadata !"float", i32 0, i32 31}
!25 = metadata !{metadata !26}
!26 = metadata !{i32 0, i32 1, i32 0}
!27 = metadata !{i32 786689, metadata !28, metadata !"a", null, i32 3, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!28 = metadata !{i32 786478, i32 0, metadata !29, metadata !"simple", metadata !"simple", metadata !"", metadata !29, i32 3, metadata !30, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !34, i32 5} ; [ DW_TAG_subprogram ]
!29 = metadata !{i32 786473, metadata !"../../../../../home/drsatya/neha/add.c", metadata !"/opt/Xilinx/Vivado_HLS/2017.2/bin", null} ; [ DW_TAG_file_type ]
!30 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !31, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!31 = metadata !{metadata !32, metadata !33, metadata !33, metadata !33}
!32 = metadata !{i32 786468, null, metadata !"float", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!33 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !32} ; [ DW_TAG_pointer_type ]
!34 = metadata !{metadata !35}
!35 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!36 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 256, i64 32, i32 0, i32 0, metadata !32, metadata !37, i32 0, i32 0} ; [ DW_TAG_array_type ]
!37 = metadata !{metadata !38}
!38 = metadata !{i32 786465, i64 0, i64 7}        ; [ DW_TAG_subrange_type ]
!39 = metadata !{i32 3, i32 22, metadata !28, null}
!40 = metadata !{i32 786689, metadata !28, metadata !"b", null, i32 3, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!41 = metadata !{i32 3, i32 34, metadata !28, null}
!42 = metadata !{i32 786689, metadata !28, metadata !"c", null, i32 3, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!43 = metadata !{i32 3, i32 46, metadata !28, null}
!44 = metadata !{i32 7, i32 5, metadata !45, null}
!45 = metadata !{i32 786443, metadata !46, i32 7, i32 1, metadata !29, i32 1} ; [ DW_TAG_lexical_block ]
!46 = metadata !{i32 786443, metadata !28, i32 5, i32 1, metadata !29, i32 0} ; [ DW_TAG_lexical_block ]
!47 = metadata !{i32 7, i32 14, metadata !45, null}
!48 = metadata !{i32 10, i32 7, metadata !49, null}
!49 = metadata !{i32 786443, metadata !45, i32 8, i32 5, metadata !29, i32 2} ; [ DW_TAG_lexical_block ]
!50 = metadata !{i32 786688, metadata !46, metadata !"i", metadata !29, i32 6, metadata !51, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!51 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!52 = metadata !{i32 13, i32 5, metadata !46, null}
