; ModuleID = '/opt/Xilinx/Vivado_HLS/2017.2/bin/INTEGER_MATRIX_MULTIPLICATION/matrix_multiplication_16_unroll/solution1/.autopilot/db/a.g.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"COMPLETE\00", align 1 ; [#uses=1 type=[9 x i8]*]
@.str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]
@.str2 = private unnamed_addr constant [4 x i8] c"Row\00", align 1 ; [#uses=1 type=[4 x i8]*]
@.str3 = private unnamed_addr constant [4 x i8] c"Col\00", align 1 ; [#uses=1 type=[4 x i8]*]
@.str4 = private unnamed_addr constant [8 x i8] c"Product\00", align 1 ; [#uses=1 type=[8 x i8]*]
@signgam = external global i32                    ; [#uses=0 type=i32*]

; [#uses=0]
define void @_Z9matrixmulPA3_cS0_PA3_s([3 x i8]* %a, [3 x i8]* %b, [3 x i16]* %res) nounwind uwtable {
  %1 = alloca [3 x i8]*, align 8                  ; [#uses=4 type=[3 x i8]**]
  %2 = alloca [3 x i8]*, align 8                  ; [#uses=4 type=[3 x i8]**]
  %3 = alloca [3 x i16]*, align 8                 ; [#uses=4 type=[3 x i16]**]
  %i = alloca i32, align 4                        ; [#uses=7 type=i32*]
  %j = alloca i32, align 4                        ; [#uses=7 type=i32*]
  %k = alloca i32, align 4                        ; [#uses=6 type=i32*]
  store [3 x i8]* %a, [3 x i8]** %1, align 8
  call void @llvm.dbg.declare(metadata !{[3 x i8]** %1}, metadata !36), !dbg !37 ; [debug line = 4:15] [debug variable = a]
  store [3 x i8]* %b, [3 x i8]** %2, align 8
  call void @llvm.dbg.declare(metadata !{[3 x i8]** %2}, metadata !38), !dbg !39 ; [debug line = 5:15] [debug variable = b]
  store [3 x i16]* %res, [3 x i16]** %3, align 8
  call void @llvm.dbg.declare(metadata !{[3 x i16]** %3}, metadata !40), !dbg !41 ; [debug line = 6:16] [debug variable = res]
  %4 = load [3 x i8]** %1, align 8, !dbg !42      ; [#uses=1 type=[3 x i8]*] [debug line = 7:2]
  call void (...)* @_ssdm_SpecArrayDimSize([3 x i8]* %4, i32 3) nounwind, !dbg !42 ; [debug line = 7:2]
  %5 = load [3 x i16]** %3, align 8, !dbg !44     ; [#uses=1 type=[3 x i16]*] [debug line = 7:30]
  call void (...)* @_ssdm_SpecArrayDimSize([3 x i16]* %5, i32 3) nounwind, !dbg !44 ; [debug line = 7:30]
  %6 = load [3 x i8]** %2, align 8, !dbg !45      ; [#uses=1 type=[3 x i8]*] [debug line = 7:60]
  call void (...)* @_ssdm_SpecArrayDimSize([3 x i8]* %6, i32 3) nounwind, !dbg !45 ; [debug line = 7:60]
  %7 = load [3 x i8]** %1, align 8, !dbg !46      ; [#uses=1 type=[3 x i8]*] [debug line = 8:1]
  call void (...)* @_ssdm_SpecArrayPartition([3 x i8]* %7, i32 2, i8* getelementptr inbounds ([9 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !46 ; [debug line = 8:1]
  %8 = load [3 x i8]** %2, align 8, !dbg !46      ; [#uses=1 type=[3 x i8]*] [debug line = 8:1]
  call void (...)* @_ssdm_SpecArrayPartition([3 x i8]* %8, i32 2, i8* getelementptr inbounds ([9 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !46 ; [debug line = 8:1]
  br label %9, !dbg !46                           ; [debug line = 8:1]

; <label>:9                                       ; preds = %0
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !47), !dbg !49 ; [debug line = 11:16] [debug variable = i]
  store i32 0, i32* %i, align 4, !dbg !50         ; [debug line = 11:21]
  br label %10, !dbg !50                          ; [debug line = 11:21]

; <label>:10                                      ; preds = %69, %9
  %11 = load i32* %i, align 4, !dbg !50           ; [#uses=1 type=i32] [debug line = 11:21]
  %12 = icmp slt i32 %11, 3, !dbg !50             ; [#uses=1 type=i1] [debug line = 11:21]
  br i1 %12, label %13, label %72, !dbg !50       ; [debug line = 11:21]

; <label>:13                                      ; preds = %10
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([4 x i8]* @.str2, i32 0, i32 0)) nounwind, !dbg !51 ; [debug line = 11:36]
  call void (...)* @_ssdm_RegionBegin(i8* getelementptr inbounds ([4 x i8]* @.str2, i32 0, i32 0)) nounwind, !dbg !51 ; [debug line = 11:36]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !53 ; [debug line = 12:1]
  br label %14, !dbg !53                          ; [debug line = 12:1]

; <label>:14                                      ; preds = %13
  call void @llvm.dbg.declare(metadata !{i32* %j}, metadata !54), !dbg !56 ; [debug line = 14:18] [debug variable = j]
  store i32 0, i32* %j, align 4, !dbg !57         ; [debug line = 14:23]
  br label %15, !dbg !57                          ; [debug line = 14:23]

; <label>:15                                      ; preds = %65, %14
  %16 = load i32* %j, align 4, !dbg !57           ; [#uses=1 type=i32] [debug line = 14:23]
  %17 = icmp slt i32 %16, 3, !dbg !57             ; [#uses=1 type=i1] [debug line = 14:23]
  br i1 %17, label %18, label %68, !dbg !57       ; [debug line = 14:23]

; <label>:18                                      ; preds = %15
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([4 x i8]* @.str3, i32 0, i32 0)) nounwind, !dbg !58 ; [debug line = 14:38]
  call void (...)* @_ssdm_RegionBegin(i8* getelementptr inbounds ([4 x i8]* @.str3, i32 0, i32 0)) nounwind, !dbg !58 ; [debug line = 14:38]
  %19 = load i32* %j, align 4, !dbg !60           ; [#uses=1 type=i32] [debug line = 16:7]
  %20 = sext i32 %19 to i64, !dbg !60             ; [#uses=1 type=i64] [debug line = 16:7]
  %21 = load i32* %i, align 4, !dbg !60           ; [#uses=1 type=i32] [debug line = 16:7]
  %22 = sext i32 %21 to i64, !dbg !60             ; [#uses=1 type=i64] [debug line = 16:7]
  %23 = load [3 x i16]** %3, align 8, !dbg !60    ; [#uses=1 type=[3 x i16]*] [debug line = 16:7]
  %24 = getelementptr inbounds [3 x i16]* %23, i64 %22, !dbg !60 ; [#uses=1 type=[3 x i16]*] [debug line = 16:7]
  %25 = getelementptr inbounds [3 x i16]* %24, i32 0, i64 %20, !dbg !60 ; [#uses=1 type=i16*] [debug line = 16:7]
  store i16 0, i16* %25, align 2, !dbg !60        ; [debug line = 16:7]
  br label %26, !dbg !60                          ; [debug line = 16:7]

; <label>:26                                      ; preds = %18
  call void @llvm.dbg.declare(metadata !{i32* %k}, metadata !61), !dbg !63 ; [debug line = 17:24] [debug variable = k]
  store i32 0, i32* %k, align 4, !dbg !64         ; [debug line = 17:29]
  br label %27, !dbg !64                          ; [debug line = 17:29]

; <label>:27                                      ; preds = %61, %26
  %28 = load i32* %k, align 4, !dbg !64           ; [#uses=1 type=i32] [debug line = 17:29]
  %29 = icmp slt i32 %28, 3, !dbg !64             ; [#uses=1 type=i1] [debug line = 17:29]
  br i1 %29, label %30, label %64, !dbg !64       ; [debug line = 17:29]

; <label>:30                                      ; preds = %27
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([8 x i8]* @.str4, i32 0, i32 0)) nounwind, !dbg !65 ; [debug line = 17:44]
  call void (...)* @_ssdm_RegionBegin(i8* getelementptr inbounds ([8 x i8]* @.str4, i32 0, i32 0)) nounwind, !dbg !65 ; [debug line = 17:44]
  %31 = load i32* %k, align 4, !dbg !67           ; [#uses=1 type=i32] [debug line = 20:9]
  %32 = sext i32 %31 to i64, !dbg !67             ; [#uses=1 type=i64] [debug line = 20:9]
  %33 = load i32* %i, align 4, !dbg !67           ; [#uses=1 type=i32] [debug line = 20:9]
  %34 = sext i32 %33 to i64, !dbg !67             ; [#uses=1 type=i64] [debug line = 20:9]
  %35 = load [3 x i8]** %1, align 8, !dbg !67     ; [#uses=1 type=[3 x i8]*] [debug line = 20:9]
  %36 = getelementptr inbounds [3 x i8]* %35, i64 %34, !dbg !67 ; [#uses=1 type=[3 x i8]*] [debug line = 20:9]
  %37 = getelementptr inbounds [3 x i8]* %36, i32 0, i64 %32, !dbg !67 ; [#uses=1 type=i8*] [debug line = 20:9]
  %38 = load i8* %37, align 1, !dbg !67           ; [#uses=1 type=i8] [debug line = 20:9]
  %39 = sext i8 %38 to i32, !dbg !67              ; [#uses=1 type=i32] [debug line = 20:9]
  %40 = load i32* %j, align 4, !dbg !67           ; [#uses=1 type=i32] [debug line = 20:9]
  %41 = sext i32 %40 to i64, !dbg !67             ; [#uses=1 type=i64] [debug line = 20:9]
  %42 = load i32* %k, align 4, !dbg !67           ; [#uses=1 type=i32] [debug line = 20:9]
  %43 = sext i32 %42 to i64, !dbg !67             ; [#uses=1 type=i64] [debug line = 20:9]
  %44 = load [3 x i8]** %2, align 8, !dbg !67     ; [#uses=1 type=[3 x i8]*] [debug line = 20:9]
  %45 = getelementptr inbounds [3 x i8]* %44, i64 %43, !dbg !67 ; [#uses=1 type=[3 x i8]*] [debug line = 20:9]
  %46 = getelementptr inbounds [3 x i8]* %45, i32 0, i64 %41, !dbg !67 ; [#uses=1 type=i8*] [debug line = 20:9]
  %47 = load i8* %46, align 1, !dbg !67           ; [#uses=1 type=i8] [debug line = 20:9]
  %48 = sext i8 %47 to i32, !dbg !67              ; [#uses=1 type=i32] [debug line = 20:9]
  %49 = mul nsw i32 %39, %48, !dbg !67            ; [#uses=1 type=i32] [debug line = 20:9]
  %50 = load i32* %j, align 4, !dbg !67           ; [#uses=1 type=i32] [debug line = 20:9]
  %51 = sext i32 %50 to i64, !dbg !67             ; [#uses=1 type=i64] [debug line = 20:9]
  %52 = load i32* %i, align 4, !dbg !67           ; [#uses=1 type=i32] [debug line = 20:9]
  %53 = sext i32 %52 to i64, !dbg !67             ; [#uses=1 type=i64] [debug line = 20:9]
  %54 = load [3 x i16]** %3, align 8, !dbg !67    ; [#uses=1 type=[3 x i16]*] [debug line = 20:9]
  %55 = getelementptr inbounds [3 x i16]* %54, i64 %53, !dbg !67 ; [#uses=1 type=[3 x i16]*] [debug line = 20:9]
  %56 = getelementptr inbounds [3 x i16]* %55, i32 0, i64 %51, !dbg !67 ; [#uses=2 type=i16*] [debug line = 20:9]
  %57 = load i16* %56, align 2, !dbg !67          ; [#uses=1 type=i16] [debug line = 20:9]
  %58 = sext i16 %57 to i32, !dbg !67             ; [#uses=1 type=i32] [debug line = 20:9]
  %59 = add nsw i32 %58, %49, !dbg !67            ; [#uses=1 type=i32] [debug line = 20:9]
  %60 = trunc i32 %59 to i16, !dbg !67            ; [#uses=1 type=i16] [debug line = 20:9]
  store i16 %60, i16* %56, align 2, !dbg !67      ; [debug line = 20:9]
  call void (...)* @_ssdm_RegionEnd(i8* getelementptr inbounds ([8 x i8]* @.str4, i32 0, i32 0)) nounwind, !dbg !68 ; [debug line = 21:7]
  br label %61, !dbg !68                          ; [debug line = 21:7]

; <label>:61                                      ; preds = %30
  %62 = load i32* %k, align 4, !dbg !69           ; [#uses=1 type=i32] [debug line = 17:38]
  %63 = add nsw i32 %62, 1, !dbg !69              ; [#uses=1 type=i32] [debug line = 17:38]
  store i32 %63, i32* %k, align 4, !dbg !69       ; [debug line = 17:38]
  br label %27, !dbg !69                          ; [debug line = 17:38]

; <label>:64                                      ; preds = %27
  call void (...)* @_ssdm_RegionEnd(i8* getelementptr inbounds ([4 x i8]* @.str3, i32 0, i32 0)) nounwind, !dbg !70 ; [debug line = 22:5]
  br label %65, !dbg !70                          ; [debug line = 22:5]

; <label>:65                                      ; preds = %64
  %66 = load i32* %j, align 4, !dbg !71           ; [#uses=1 type=i32] [debug line = 14:32]
  %67 = add nsw i32 %66, 1, !dbg !71              ; [#uses=1 type=i32] [debug line = 14:32]
  store i32 %67, i32* %j, align 4, !dbg !71       ; [debug line = 14:32]
  br label %15, !dbg !71                          ; [debug line = 14:32]

; <label>:68                                      ; preds = %15
  call void (...)* @_ssdm_RegionEnd(i8* getelementptr inbounds ([4 x i8]* @.str2, i32 0, i32 0)) nounwind, !dbg !72 ; [debug line = 23:3]
  br label %69, !dbg !72                          ; [debug line = 23:3]

; <label>:69                                      ; preds = %68
  %70 = load i32* %i, align 4, !dbg !73           ; [#uses=1 type=i32] [debug line = 11:30]
  %71 = add nsw i32 %70, 1, !dbg !73              ; [#uses=1 type=i32] [debug line = 11:30]
  store i32 %71, i32* %i, align 4, !dbg !73       ; [debug line = 11:30]
  br label %10, !dbg !73                          ; [debug line = 11:30]

; <label>:72                                      ; preds = %10
  ret void, !dbg !74                              ; [debug line = 24:1]
}

; [#uses=6]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=3]
declare void @_ssdm_SpecArrayDimSize(...) nounwind

; [#uses=2]
declare void @_ssdm_SpecArrayPartition(...) nounwind

; [#uses=3]
declare void @_ssdm_op_SpecLoopName(...) nounwind

; [#uses=3]
declare void @_ssdm_RegionBegin(...) nounwind

; [#uses=1]
declare void @_ssdm_op_SpecPipeline(...) nounwind

; [#uses=3]
declare void @_ssdm_RegionEnd(...) nounwind

!llvm.dbg.cu = !{!0}
!opencl.kernels = !{!29}
!hls.encrypted.func = !{}

!0 = metadata !{i32 786449, i32 0, i32 4, metadata !"/opt/Xilinx/Vivado_HLS/2017.2/bin/INTEGER_MATRIX_MULTIPLICATION/matrix_multiplication_16_unroll/solution1/.autopilot/db/mat_unroll_1.pragma.2.cpp", metadata !"/opt/Xilinx/Vivado_HLS/2017.2/bin/INTEGER_MATRIX_MULTIPLICATION", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !24} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"matrixmul", metadata !"matrixmul", metadata !"_Z9matrixmulPA3_cS0_PA3_s", metadata !6, i32 3, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void ([3 x i8]*, [3 x i8]*, [3 x i16]*)* @_Z9matrixmulPA3_cS0_PA3_s, null, null, metadata !22, i32 7} ; [ DW_TAG_subprogram ]
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
!26 = metadata !{i32 786484, i32 0, null, metadata !"signgam", metadata !"signgam", metadata !"", metadata !27, i32 162, metadata !28, i32 0, i32 1, i32* @signgam} ; [ DW_TAG_variable ]
!27 = metadata !{i32 786473, metadata !"/usr/include/math.h", metadata !"/opt/Xilinx/Vivado_HLS/2017.2/bin/INTEGER_MATRIX_MULTIPLICATION", null} ; [ DW_TAG_file_type ]
!28 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!29 = metadata !{void ([3 x i8]*, [3 x i8]*, [3 x i16]*)* @_Z9matrixmulPA3_cS0_PA3_s, metadata !30, metadata !31, metadata !32, metadata !33, metadata !34, metadata !35}
!30 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 1}
!31 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!32 = metadata !{metadata !"kernel_arg_type", metadata !"mat_a_t [3]*", metadata !"mat_b_t [3]*", metadata !"result_t [3]*"}
!33 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!34 = metadata !{metadata !"kernel_arg_name", metadata !"a", metadata !"b", metadata !"res"}
!35 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!36 = metadata !{i32 786689, metadata !5, metadata !"a", metadata !6, i32 16777220, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!37 = metadata !{i32 4, i32 15, metadata !5, null}
!38 = metadata !{i32 786689, metadata !5, metadata !"b", metadata !6, i32 33554437, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!39 = metadata !{i32 5, i32 15, metadata !5, null}
!40 = metadata !{i32 786689, metadata !5, metadata !"res", metadata !6, i32 50331654, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!41 = metadata !{i32 6, i32 16, metadata !5, null}
!42 = metadata !{i32 7, i32 2, metadata !43, null}
!43 = metadata !{i32 786443, metadata !5, i32 7, i32 1, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!44 = metadata !{i32 7, i32 30, metadata !43, null}
!45 = metadata !{i32 7, i32 60, metadata !43, null}
!46 = metadata !{i32 8, i32 1, metadata !43, null}
!47 = metadata !{i32 786688, metadata !48, metadata !"i", metadata !6, i32 11, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!48 = metadata !{i32 786443, metadata !43, i32 11, i32 8, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!49 = metadata !{i32 11, i32 16, metadata !48, null}
!50 = metadata !{i32 11, i32 21, metadata !48, null}
!51 = metadata !{i32 11, i32 36, metadata !52, null}
!52 = metadata !{i32 786443, metadata !48, i32 11, i32 35, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!53 = metadata !{i32 12, i32 1, metadata !52, null}
!54 = metadata !{i32 786688, metadata !55, metadata !"j", metadata !6, i32 14, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!55 = metadata !{i32 786443, metadata !52, i32 14, i32 10, metadata !6, i32 3} ; [ DW_TAG_lexical_block ]
!56 = metadata !{i32 14, i32 18, metadata !55, null}
!57 = metadata !{i32 14, i32 23, metadata !55, null}
!58 = metadata !{i32 14, i32 38, metadata !59, null}
!59 = metadata !{i32 786443, metadata !55, i32 14, i32 37, metadata !6, i32 4} ; [ DW_TAG_lexical_block ]
!60 = metadata !{i32 16, i32 7, metadata !59, null}
!61 = metadata !{i32 786688, metadata !62, metadata !"k", metadata !6, i32 17, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!62 = metadata !{i32 786443, metadata !59, i32 17, i32 16, metadata !6, i32 5} ; [ DW_TAG_lexical_block ]
!63 = metadata !{i32 17, i32 24, metadata !62, null}
!64 = metadata !{i32 17, i32 29, metadata !62, null}
!65 = metadata !{i32 17, i32 44, metadata !66, null}
!66 = metadata !{i32 786443, metadata !62, i32 17, i32 43, metadata !6, i32 6} ; [ DW_TAG_lexical_block ]
!67 = metadata !{i32 20, i32 9, metadata !66, null}
!68 = metadata !{i32 21, i32 7, metadata !66, null}
!69 = metadata !{i32 17, i32 38, metadata !62, null}
!70 = metadata !{i32 22, i32 5, metadata !59, null}
!71 = metadata !{i32 14, i32 32, metadata !55, null}
!72 = metadata !{i32 23, i32 3, metadata !52, null}
!73 = metadata !{i32 11, i32 30, metadata !48, null}
!74 = metadata !{i32 24, i32 1, metadata !43, null}
