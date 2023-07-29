; ModuleID = '/opt/Xilinx/Vivado_HLS/2017.2/bin/unroll_float_8_march/solution2/.autopilot/db/a.o.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"BLOCK\00", align 1 ; [#uses=1 type=[6 x i8]*]
@.str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]
@.str2 = private unnamed_addr constant [12 x i8] c"hls_label_0\00", align 1 ; [#uses=1 type=[12 x i8]*]
@signgam = external global i32                    ; [#uses=0 type=i32*]

; [#uses=0]
define float @simple(float* %a, float* %b, float* %c) nounwind uwtable {
  %1 = alloca float*, align 8                     ; [#uses=4 type=float**]
  %2 = alloca float*, align 8                     ; [#uses=4 type=float**]
  %3 = alloca float*, align 8                     ; [#uses=4 type=float**]
  %i = alloca i32, align 4                        ; [#uses=7 type=i32*]
  store float* %a, float** %1, align 8
  call void @llvm.dbg.declare(metadata !{float** %1}, metadata !25), !dbg !26 ; [debug line = 3:22] [debug variable = a]
  store float* %b, float** %2, align 8
  call void @llvm.dbg.declare(metadata !{float** %2}, metadata !27), !dbg !28 ; [debug line = 3:34] [debug variable = b]
  store float* %c, float** %3, align 8
  call void @llvm.dbg.declare(metadata !{float** %3}, metadata !29), !dbg !30 ; [debug line = 3:46] [debug variable = c]
  %4 = load float** %1, align 8, !dbg !31         ; [#uses=1 type=float*] [debug line = 4:2]
  call void (...)* @_ssdm_SpecArrayDimSize(float* %4, i32 8) nounwind, !dbg !31 ; [debug line = 4:2]
  %5 = load float** %2, align 8, !dbg !33         ; [#uses=1 type=float*] [debug line = 4:30]
  call void (...)* @_ssdm_SpecArrayDimSize(float* %5, i32 8) nounwind, !dbg !33 ; [debug line = 4:30]
  %6 = load float** %3, align 8, !dbg !34         ; [#uses=1 type=float*] [debug line = 4:58]
  call void (...)* @_ssdm_SpecArrayDimSize(float* %6, i32 8) nounwind, !dbg !34 ; [debug line = 4:58]
  %7 = load float** %1, align 8, !dbg !35         ; [#uses=1 type=float*] [debug line = 5:1]
  call void (...)* @_ssdm_SpecArrayPartition(float* %7, i32 1, i8* getelementptr inbounds ([6 x i8]* @.str, i32 0, i32 0), i32 8, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !35 ; [debug line = 5:1]
  %8 = load float** %2, align 8, !dbg !36         ; [#uses=1 type=float*] [debug line = 6:1]
  call void (...)* @_ssdm_SpecArrayPartition(float* %8, i32 1, i8* getelementptr inbounds ([6 x i8]* @.str, i32 0, i32 0), i32 8, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !36 ; [debug line = 6:1]
  %9 = load float** %3, align 8, !dbg !37         ; [#uses=1 type=float*] [debug line = 7:1]
  call void (...)* @_ssdm_SpecArrayPartition(float* %9, i32 1, i8* getelementptr inbounds ([6 x i8]* @.str, i32 0, i32 0), i32 8, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !37 ; [debug line = 7:1]
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !38), !dbg !39 ; [debug line = 9:5] [debug variable = i]
  store i32 0, i32* %i, align 4, !dbg !40         ; [debug line = 10:5]
  br label %10, !dbg !40                          ; [debug line = 10:5]

; <label>:10                                      ; preds = %29, %0
  %11 = load i32* %i, align 4, !dbg !40           ; [#uses=1 type=i32] [debug line = 10:5]
  %12 = icmp slt i32 %11, 8, !dbg !40             ; [#uses=1 type=i1] [debug line = 10:5]
  br i1 %12, label %13, label %32, !dbg !40       ; [debug line = 10:5]

; <label>:13                                      ; preds = %10
  call void (...)* @_ssdm_RegionBegin(i8* getelementptr inbounds ([12 x i8]* @.str2, i32 0, i32 0)) nounwind, !dbg !42 ; [debug line = 11:6]
  call void (...)* @_ssdm_Unroll(i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !44 ; [debug line = 13:1]
  %14 = load i32* %i, align 4, !dbg !45           ; [#uses=1 type=i32] [debug line = 14:2]
  %15 = sext i32 %14 to i64, !dbg !45             ; [#uses=1 type=i64] [debug line = 14:2]
  %16 = load float** %1, align 8, !dbg !45        ; [#uses=1 type=float*] [debug line = 14:2]
  %17 = getelementptr inbounds float* %16, i64 %15, !dbg !45 ; [#uses=1 type=float*] [debug line = 14:2]
  %18 = load float* %17, align 4, !dbg !45        ; [#uses=1 type=float] [debug line = 14:2]
  %19 = load i32* %i, align 4, !dbg !45           ; [#uses=1 type=i32] [debug line = 14:2]
  %20 = sext i32 %19 to i64, !dbg !45             ; [#uses=1 type=i64] [debug line = 14:2]
  %21 = load float** %2, align 8, !dbg !45        ; [#uses=1 type=float*] [debug line = 14:2]
  %22 = getelementptr inbounds float* %21, i64 %20, !dbg !45 ; [#uses=1 type=float*] [debug line = 14:2]
  %23 = load float* %22, align 4, !dbg !45        ; [#uses=1 type=float] [debug line = 14:2]
  %24 = fadd float %18, %23, !dbg !45             ; [#uses=1 type=float] [debug line = 14:2]
  %25 = load i32* %i, align 4, !dbg !45           ; [#uses=1 type=i32] [debug line = 14:2]
  %26 = sext i32 %25 to i64, !dbg !45             ; [#uses=1 type=i64] [debug line = 14:2]
  %27 = load float** %3, align 8, !dbg !45        ; [#uses=1 type=float*] [debug line = 14:2]
  %28 = getelementptr inbounds float* %27, i64 %26, !dbg !45 ; [#uses=1 type=float*] [debug line = 14:2]
  store float %24, float* %28, align 4, !dbg !45  ; [debug line = 14:2]
  call void (...)* @_ssdm_RegionEnd(i8* getelementptr inbounds ([12 x i8]* @.str2, i32 0, i32 0)) nounwind, !dbg !46 ; [debug line = 16:6]
  br label %29, !dbg !46                          ; [debug line = 16:6]

; <label>:29                                      ; preds = %13
  %30 = load i32* %i, align 4, !dbg !47           ; [#uses=1 type=i32] [debug line = 10:14]
  %31 = add nsw i32 %30, 1, !dbg !47              ; [#uses=1 type=i32] [debug line = 10:14]
  store i32 %31, i32* %i, align 4, !dbg !47       ; [debug line = 10:14]
  br label %10, !dbg !47                          ; [debug line = 10:14]

; <label>:32                                      ; preds = %10
  ret float 0.000000e+00, !dbg !48                ; [debug line = 17:4]
}

; [#uses=4]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=3]
declare void @_ssdm_SpecArrayDimSize(...) nounwind

; [#uses=3]
declare void @_ssdm_SpecArrayPartition(...) nounwind

; [#uses=1]
declare void @_ssdm_RegionBegin(...) nounwind

; [#uses=1]
declare void @_ssdm_Unroll(...) nounwind

; [#uses=1]
declare void @_ssdm_RegionEnd(...) nounwind

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
!31 = metadata !{i32 4, i32 2, metadata !32, null}
!32 = metadata !{i32 786443, metadata !5, i32 4, i32 1, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!33 = metadata !{i32 4, i32 30, metadata !32, null}
!34 = metadata !{i32 4, i32 58, metadata !32, null}
!35 = metadata !{i32 5, i32 1, metadata !32, null}
!36 = metadata !{i32 6, i32 1, metadata !32, null}
!37 = metadata !{i32 7, i32 1, metadata !32, null}
!38 = metadata !{i32 786688, metadata !32, metadata !"i", metadata !6, i32 9, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!39 = metadata !{i32 9, i32 5, metadata !32, null}
!40 = metadata !{i32 10, i32 5, metadata !41, null}
!41 = metadata !{i32 786443, metadata !32, i32 10, i32 1, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!42 = metadata !{i32 11, i32 6, metadata !43, null}
!43 = metadata !{i32 786443, metadata !41, i32 11, i32 5, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!44 = metadata !{i32 13, i32 1, metadata !43, null}
!45 = metadata !{i32 14, i32 2, metadata !43, null}
!46 = metadata !{i32 16, i32 6, metadata !43, null}
!47 = metadata !{i32 10, i32 14, metadata !41, null}
!48 = metadata !{i32 17, i32 4, metadata !32, null}
