; ModuleID = '/opt/Xilinx/Vivado_HLS/2017.2/bin/sequence_1_8_march/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@simple.str = internal unnamed_addr constant [7 x i8] c"simple\00" ; [#uses=1 type=[7 x i8]*]

; [#uses=0]
define float @simple([8 x float]* %a, [8 x float]* %b, [8 x float]* %c) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap([8 x float]* %a) nounwind, !map !25
  call void (...)* @_ssdm_op_SpecBitsMap([8 x float]* %b) nounwind, !map !31
  call void (...)* @_ssdm_op_SpecBitsMap([8 x float]* %c) nounwind, !map !35
  call void (...)* @_ssdm_op_SpecBitsMap(float 0.000000e+00) nounwind, !map !39
  call void (...)* @_ssdm_op_SpecTopModule([7 x i8]* @simple.str) nounwind
  call void @llvm.dbg.value(metadata !{[8 x float]* %a}, i64 0, metadata !45), !dbg !49 ; [debug line = 3:22] [debug variable = a]
  call void @llvm.dbg.value(metadata !{[8 x float]* %b}, i64 0, metadata !50), !dbg !51 ; [debug line = 3:34] [debug variable = b]
  call void @llvm.dbg.value(metadata !{[8 x float]* %c}, i64 0, metadata !52), !dbg !53 ; [debug line = 3:46] [debug variable = c]
  br label %1, !dbg !54                           ; [debug line = 7:5]

; <label>:1                                       ; preds = %3, %0
  %i = phi i4 [ 0, %0 ], [ %i.1, %3 ]             ; [#uses=3 type=i4]
  %exitcond = icmp eq i4 %i, -8, !dbg !54         ; [#uses=1 type=i1] [debug line = 7:5]
  %2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond, label %4, label %3, !dbg !54   ; [debug line = 7:5]

; <label>:3                                       ; preds = %1
  %tmp = zext i4 %i to i64, !dbg !57              ; [#uses=3 type=i64] [debug line = 10:7]
  %a.addr = getelementptr [8 x float]* %a, i64 0, i64 %tmp, !dbg !57 ; [#uses=1 type=float*] [debug line = 10:7]
  %a.load = load float* %a.addr, align 4, !dbg !57 ; [#uses=1 type=float] [debug line = 10:7]
  %b.addr = getelementptr [8 x float]* %b, i64 0, i64 %tmp, !dbg !57 ; [#uses=1 type=float*] [debug line = 10:7]
  %b.load = load float* %b.addr, align 4, !dbg !57 ; [#uses=1 type=float] [debug line = 10:7]
  %tmp.1 = fadd float %a.load, %b.load, !dbg !57  ; [#uses=1 type=float] [debug line = 10:7]
  %c.addr = getelementptr [8 x float]* %c, i64 0, i64 %tmp, !dbg !57 ; [#uses=1 type=float*] [debug line = 10:7]
  store float %tmp.1, float* %c.addr, align 4, !dbg !57 ; [debug line = 10:7]
  %i.1 = add i4 %i, 1, !dbg !59                   ; [#uses=1 type=i4] [debug line = 7:14]
  call void @llvm.dbg.value(metadata !{i4 %i.1}, i64 0, metadata !60), !dbg !59 ; [debug line = 7:14] [debug variable = i]
  br label %1, !dbg !59                           ; [debug line = 7:14]

; <label>:4                                       ; preds = %1
  ret float 0.000000e+00, !dbg !61                ; [debug line = 13:5]
}

; [#uses=4]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=1]
declare i32 @_ssdm_op_SpecLoopTripCount(...)

; [#uses=4]
declare void @_ssdm_op_SpecBitsMap(...)

!llvm.dbg.cu = !{!0}
!opencl.kernels = !{!18}
!hls.encrypted.func = !{}
!llvm.map.gv = !{}

!0 = metadata !{i32 786449, i32 0, i32 1, metadata !"/opt/Xilinx/Vivado_HLS/2017.2/bin/sequence_1_8_march/solution1/.autopilot/db/add.pragma.2.c", metadata !"/opt/Xilinx/Vivado_HLS/2017.2/bin", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !13} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"simple", metadata !"simple", metadata !"", metadata !6, i32 3, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !11, i32 5} ; [ DW_TAG_subprogram ]
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
!18 = metadata !{null, metadata !19, metadata !20, metadata !21, metadata !22, metadata !23, metadata !24}
!19 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 1}
!20 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!21 = metadata !{metadata !"kernel_arg_type", metadata !"float*", metadata !"float*", metadata !"float*"}
!22 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!23 = metadata !{metadata !"kernel_arg_name", metadata !"a", metadata !"b", metadata !"c"}
!24 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!25 = metadata !{metadata !26}
!26 = metadata !{i32 0, i32 31, metadata !27}
!27 = metadata !{metadata !28}
!28 = metadata !{metadata !"a", metadata !29, metadata !"float", i32 0, i32 31}
!29 = metadata !{metadata !30}
!30 = metadata !{i32 0, i32 7, i32 1}
!31 = metadata !{metadata !32}
!32 = metadata !{i32 0, i32 31, metadata !33}
!33 = metadata !{metadata !34}
!34 = metadata !{metadata !"b", metadata !29, metadata !"float", i32 0, i32 31}
!35 = metadata !{metadata !36}
!36 = metadata !{i32 0, i32 31, metadata !37}
!37 = metadata !{metadata !38}
!38 = metadata !{metadata !"c", metadata !29, metadata !"float", i32 0, i32 31}
!39 = metadata !{metadata !40}
!40 = metadata !{i32 0, i32 31, metadata !41}
!41 = metadata !{metadata !42}
!42 = metadata !{metadata !"return", metadata !43, metadata !"float", i32 0, i32 31}
!43 = metadata !{metadata !44}
!44 = metadata !{i32 0, i32 1, i32 0}
!45 = metadata !{i32 786689, metadata !5, metadata !"a", null, i32 3, metadata !46, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!46 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 256, i64 32, i32 0, i32 0, metadata !9, metadata !47, i32 0, i32 0} ; [ DW_TAG_array_type ]
!47 = metadata !{metadata !48}
!48 = metadata !{i32 786465, i64 0, i64 7}        ; [ DW_TAG_subrange_type ]
!49 = metadata !{i32 3, i32 22, metadata !5, null}
!50 = metadata !{i32 786689, metadata !5, metadata !"b", null, i32 3, metadata !46, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!51 = metadata !{i32 3, i32 34, metadata !5, null}
!52 = metadata !{i32 786689, metadata !5, metadata !"c", null, i32 3, metadata !46, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!53 = metadata !{i32 3, i32 46, metadata !5, null}
!54 = metadata !{i32 7, i32 5, metadata !55, null}
!55 = metadata !{i32 786443, metadata !56, i32 7, i32 1, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!56 = metadata !{i32 786443, metadata !5, i32 5, i32 1, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!57 = metadata !{i32 10, i32 7, metadata !58, null}
!58 = metadata !{i32 786443, metadata !55, i32 8, i32 5, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!59 = metadata !{i32 7, i32 14, metadata !55, null}
!60 = metadata !{i32 786688, metadata !56, metadata !"i", metadata !6, i32 6, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!61 = metadata !{i32 13, i32 5, metadata !56, null}
