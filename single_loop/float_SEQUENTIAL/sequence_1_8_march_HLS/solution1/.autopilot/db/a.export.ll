; ModuleID = '/opt/Xilinx/Vivado_HLS/2017.2/bin/sequence_1_8_march/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@simple_str = internal unnamed_addr constant [7 x i8] c"simple\00"

define float @simple([8 x float]* %a, [8 x float]* %b, [8 x float]* %c) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap([8 x float]* %a) nounwind, !map !7
  call void (...)* @_ssdm_op_SpecBitsMap([8 x float]* %b) nounwind, !map !13
  call void (...)* @_ssdm_op_SpecBitsMap([8 x float]* %c) nounwind, !map !17
  call void (...)* @_ssdm_op_SpecBitsMap(float 0.000000e+00) nounwind, !map !21
  call void (...)* @_ssdm_op_SpecTopModule([7 x i8]* @simple_str) nounwind
  br label %1

; <label>:1                                       ; preds = %2, %0
  %i = phi i4 [ 0, %0 ], [ %i_1, %2 ]
  %exitcond = icmp eq i4 %i, -8
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) nounwind
  %i_1 = add i4 %i, 1
  br i1 %exitcond, label %3, label %2

; <label>:2                                       ; preds = %1
  %tmp = zext i4 %i to i64
  %a_addr = getelementptr [8 x float]* %a, i64 0, i64 %tmp
  %a_load = load float* %a_addr, align 4
  %b_addr = getelementptr [8 x float]* %b, i64 0, i64 %tmp
  %b_load = load float* %b_addr, align 4
  %tmp_1 = fadd float %a_load, %b_load
  %c_addr = getelementptr [8 x float]* %c, i64 0, i64 %tmp
  store float %tmp_1, float* %c_addr, align 4
  br label %1

; <label>:3                                       ; preds = %1
  ret float 0.000000e+00
}

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

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
