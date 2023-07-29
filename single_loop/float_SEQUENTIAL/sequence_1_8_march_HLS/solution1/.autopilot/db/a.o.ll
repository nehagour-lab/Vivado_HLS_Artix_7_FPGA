; ModuleID = '/opt/Xilinx/Vivado_HLS/2017.2/bin/sequence_1_8_march/solution1/.autopilot/db/a.o.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@signgam = external global i32                    ; [#uses=0 type=i32*]

; [#uses=0]
define float @simple(float* %a, float* %b, float* %c) nounwind uwtable {
  %1 = alloca float*, align 8                     ; [#uses=3 type=float**]
  %2 = alloca float*, align 8                     ; [#uses=3 type=float**]
  %3 = alloca float*, align 8                     ; [#uses=3 type=float**]
  %i = alloca i32, align 4                        ; [#uses=7 type=i32*]
  store float* %a, float** %1, align 8
  call void @llvm.dbg.declare(metadata !{float** %1}, metadata !25), !dbg !26 ; [debug line = 3:22] [debug variable = a]
  store float* %b, float** %2, align 8
  call void @llvm.dbg.declare(metadata !{float** %2}, metadata !27), !dbg !28 ; [debug line = 3:34] [debug variable = b]
  store float* %c, float** %3, align 8
  call void @llvm.dbg.declare(metadata !{float** %3}, metadata !29), !dbg !30 ; [debug line = 3:46] [debug variable = c]
  %4 = load float** %1, align 8, !dbg !31         ; [#uses=1 type=float*] [debug line = 5:2]
  call void (...)* @_ssdm_SpecArrayDimSize(float* %4, i32 8) nounwind, !dbg !31 ; [debug line = 5:2]
  %5 = load float** %2, align 8, !dbg !33         ; [#uses=1 type=float*] [debug line = 5:30]
  call void (...)* @_ssdm_SpecArrayDimSize(float* %5, i32 8) nounwind, !dbg !33 ; [debug line = 5:30]
  %6 = load float** %3, align 8, !dbg !34         ; [#uses=1 type=float*] [debug line = 5:58]
  call void (...)* @_ssdm_SpecArrayDimSize(float* %6, i32 8) nounwind, !dbg !34 ; [debug line = 5:58]
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !35), !dbg !36 ; [debug line = 6:5] [debug variable = i]
  store i32 0, i32* %i, align 4, !dbg !37         ; [debug line = 7:5]
  br label %7, !dbg !37                           ; [debug line = 7:5]

; <label>:7                                       ; preds = %26, %0
  %8 = load i32* %i, align 4, !dbg !37            ; [#uses=1 type=i32] [debug line = 7:5]
  %9 = icmp slt i32 %8, 8, !dbg !37               ; [#uses=1 type=i1] [debug line = 7:5]
  br i1 %9, label %10, label %29, !dbg !37        ; [debug line = 7:5]

; <label>:10                                      ; preds = %7
  %11 = load i32* %i, align 4, !dbg !39           ; [#uses=1 type=i32] [debug line = 10:7]
  %12 = sext i32 %11 to i64, !dbg !39             ; [#uses=1 type=i64] [debug line = 10:7]
  %13 = load float** %1, align 8, !dbg !39        ; [#uses=1 type=float*] [debug line = 10:7]
  %14 = getelementptr inbounds float* %13, i64 %12, !dbg !39 ; [#uses=1 type=float*] [debug line = 10:7]
  %15 = load float* %14, align 4, !dbg !39        ; [#uses=1 type=float] [debug line = 10:7]
  %16 = load i32* %i, align 4, !dbg !39           ; [#uses=1 type=i32] [debug line = 10:7]
  %17 = sext i32 %16 to i64, !dbg !39             ; [#uses=1 type=i64] [debug line = 10:7]
  %18 = load float** %2, align 8, !dbg !39        ; [#uses=1 type=float*] [debug line = 10:7]
  %19 = getelementptr inbounds float* %18, i64 %17, !dbg !39 ; [#uses=1 type=float*] [debug line = 10:7]
  %20 = load float* %19, align 4, !dbg !39        ; [#uses=1 type=float] [debug line = 10:7]
  %21 = fadd float %15, %20, !dbg !39             ; [#uses=1 type=float] [debug line = 10:7]
  %22 = load i32* %i, align 4, !dbg !39           ; [#uses=1 type=i32] [debug line = 10:7]
  %23 = sext i32 %22 to i64, !dbg !39             ; [#uses=1 type=i64] [debug line = 10:7]
  %24 = load float** %3, align 8, !dbg !39        ; [#uses=1 type=float*] [debug line = 10:7]
  %25 = getelementptr inbounds float* %24, i64 %23, !dbg !39 ; [#uses=1 type=float*] [debug line = 10:7]
  store float %21, float* %25, align 4, !dbg !39  ; [debug line = 10:7]
  br label %26, !dbg !41                          ; [debug line = 12:6]

; <label>:26                                      ; preds = %10
  %27 = load i32* %i, align 4, !dbg !42           ; [#uses=1 type=i32] [debug line = 7:14]
  %28 = add nsw i32 %27, 1, !dbg !42              ; [#uses=1 type=i32] [debug line = 7:14]
  store i32 %28, i32* %i, align 4, !dbg !42       ; [debug line = 7:14]
  br label %7, !dbg !42                           ; [debug line = 7:14]

; <label>:29                                      ; preds = %7
  ret float 0.000000e+00, !dbg !43                ; [debug line = 13:5]
}

; [#uses=4]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=3]
declare void @_ssdm_SpecArrayDimSize(...) nounwind

!llvm.dbg.cu = !{!0}
!opencl.kernels = !{!18}
!hls.encrypted.func = !{}

!0 = metadata !{i32 786449, i32 0, i32 1, metadata !"/opt/Xilinx/Vivado_HLS/2017.2/bin/sequence_1_8_march/solution1/.autopilot/db/add.pragma.2.c", metadata !"/opt/Xilinx/Vivado_HLS/2017.2/bin", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !13} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"simple", metadata !"simple", metadata !"", metadata !6, i32 3, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, float (float*, float*, float*)* @simple, null, null, metadata !11, i32 5} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"../../../../../home/drsatya/neha/add.c", metadata !"/opt/Xilinx/Vivado_HLS/2017.2/bin", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{metadata !9, metadata !10, metadata !10, metadata !10}
!9 = metadata !{i32 786468, null, metadata !"float", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!10 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ]
!11 = metadata !{metadata !12}
!12 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!13 = metadata !{metadata !14}
!14 = metadata !{metadata !15}
!15 = metadata !{i32 786484, i32 0, null, metadata !"signgam", metadata !"signgam", metadata !"", metadata !16, i32 162, metadata !17, i32 0, i32 1, i32* @signgam} ; [ DW_TAG_variable ]
!16 = metadata !{i32 786473, metadata !"/usr/include/math.h", metadata !"/opt/Xilinx/Vivado_HLS/2017.2/bin", null} ; [ DW_TAG_file_type ]
!17 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!18 = metadata !{float (float*, float*, float*)* @simple, metadata !19, metadata !20, metadata !21, metadata !22, metadata !23, metadata !24}
!19 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 1}
!20 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!21 = metadata !{metadata !"kernel_arg_type", metadata !"float*", metadata !"float*", metadata !"float*"}
!22 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!23 = metadata !{metadata !"kernel_arg_name", metadata !"a", metadata !"b", metadata !"c"}
!24 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!25 = metadata !{i32 786689, metadata !5, metadata !"a", metadata !6, i32 16777219, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!26 = metadata !{i32 3, i32 22, metadata !5, null}
!27 = metadata !{i32 786689, metadata !5, metadata !"b", metadata !6, i32 33554435, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!28 = metadata !{i32 3, i32 34, metadata !5, null}
!29 = metadata !{i32 786689, metadata !5, metadata !"c", metadata !6, i32 50331651, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!30 = metadata !{i32 3, i32 46, metadata !5, null}
!31 = metadata !{i32 5, i32 2, metadata !32, null}
!32 = metadata !{i32 786443, metadata !5, i32 5, i32 1, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!33 = metadata !{i32 5, i32 30, metadata !32, null}
!34 = metadata !{i32 5, i32 58, metadata !32, null}
!35 = metadata !{i32 786688, metadata !32, metadata !"i", metadata !6, i32 6, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!36 = metadata !{i32 6, i32 5, metadata !32, null}
!37 = metadata !{i32 7, i32 5, metadata !38, null}
!38 = metadata !{i32 786443, metadata !32, i32 7, i32 1, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!39 = metadata !{i32 10, i32 7, metadata !40, null}
!40 = metadata !{i32 786443, metadata !38, i32 8, i32 5, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!41 = metadata !{i32 12, i32 6, metadata !40, null}
!42 = metadata !{i32 7, i32 14, metadata !38, null}
!43 = metadata !{i32 13, i32 5, metadata !32, null}
