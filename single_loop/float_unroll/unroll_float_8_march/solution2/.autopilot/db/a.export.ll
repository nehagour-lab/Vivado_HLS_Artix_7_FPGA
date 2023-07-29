; ModuleID = '/opt/Xilinx/Vivado_HLS/2017.2/bin/unroll_float_8_march/solution2/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@simple_str = internal unnamed_addr constant [7 x i8] c"simple\00"

define float @simple(float* %a_0, float* %a_1, float* %a_2, float* %a_3, float* %a_4, float* %a_5, float* %a_6, float* %a_7, float* %b_0, float* %b_1, float* %b_2, float* %b_3, float* %b_4, float* %b_5, float* %b_6, float* %b_7, float* %c_0, float* %c_1, float* %c_2, float* %c_3, float* %c_4, float* %c_5, float* %c_6, float* %c_7) {
  call void (...)* @_ssdm_op_SpecBitsMap(float* %c_7), !map !7
  call void (...)* @_ssdm_op_SpecBitsMap(float* %c_6), !map !13
  call void (...)* @_ssdm_op_SpecBitsMap(float* %c_5), !map !19
  call void (...)* @_ssdm_op_SpecBitsMap(float* %c_4), !map !25
  call void (...)* @_ssdm_op_SpecBitsMap(float* %c_3), !map !31
  call void (...)* @_ssdm_op_SpecBitsMap(float* %c_2), !map !37
  call void (...)* @_ssdm_op_SpecBitsMap(float* %c_1), !map !43
  call void (...)* @_ssdm_op_SpecBitsMap(float* %c_0), !map !49
  call void (...)* @_ssdm_op_SpecBitsMap(float* %b_7), !map !55
  call void (...)* @_ssdm_op_SpecBitsMap(float* %b_6), !map !59
  call void (...)* @_ssdm_op_SpecBitsMap(float* %b_5), !map !63
  call void (...)* @_ssdm_op_SpecBitsMap(float* %b_4), !map !67
  call void (...)* @_ssdm_op_SpecBitsMap(float* %b_3), !map !71
  call void (...)* @_ssdm_op_SpecBitsMap(float* %b_2), !map !75
  call void (...)* @_ssdm_op_SpecBitsMap(float* %b_1), !map !79
  call void (...)* @_ssdm_op_SpecBitsMap(float* %b_0), !map !83
  call void (...)* @_ssdm_op_SpecBitsMap(float* %a_7), !map !87
  call void (...)* @_ssdm_op_SpecBitsMap(float* %a_6), !map !91
  call void (...)* @_ssdm_op_SpecBitsMap(float* %a_5), !map !95
  call void (...)* @_ssdm_op_SpecBitsMap(float* %a_4), !map !99
  call void (...)* @_ssdm_op_SpecBitsMap(float* %a_3), !map !103
  call void (...)* @_ssdm_op_SpecBitsMap(float* %a_2), !map !107
  call void (...)* @_ssdm_op_SpecBitsMap(float* %a_1), !map !111
  call void (...)* @_ssdm_op_SpecBitsMap(float* %a_0), !map !115
  call void (...)* @_ssdm_op_SpecBitsMap(float 0.000000e+00) nounwind, !map !119
  call void (...)* @_ssdm_op_SpecTopModule([7 x i8]* @simple_str) nounwind
  %a_0_read = call float @_ssdm_op_Read.ap_auto.floatP(float* %a_0)
  %b_0_read = call float @_ssdm_op_Read.ap_auto.floatP(float* %b_0)
  %tmp_1 = fadd float %a_0_read, %b_0_read
  call void @_ssdm_op_Write.ap_auto.floatP(float* %c_0, float %tmp_1)
  %a_1_read = call float @_ssdm_op_Read.ap_auto.floatP(float* %a_1)
  %b_1_read = call float @_ssdm_op_Read.ap_auto.floatP(float* %b_1)
  %tmp_1_1 = fadd float %a_1_read, %b_1_read
  call void @_ssdm_op_Write.ap_auto.floatP(float* %c_1, float %tmp_1_1)
  %a_2_read = call float @_ssdm_op_Read.ap_auto.floatP(float* %a_2)
  %b_2_read = call float @_ssdm_op_Read.ap_auto.floatP(float* %b_2)
  %tmp_1_2 = fadd float %a_2_read, %b_2_read
  call void @_ssdm_op_Write.ap_auto.floatP(float* %c_2, float %tmp_1_2)
  %a_3_read = call float @_ssdm_op_Read.ap_auto.floatP(float* %a_3)
  %b_3_read = call float @_ssdm_op_Read.ap_auto.floatP(float* %b_3)
  %tmp_1_3 = fadd float %a_3_read, %b_3_read
  call void @_ssdm_op_Write.ap_auto.floatP(float* %c_3, float %tmp_1_3)
  %a_4_read = call float @_ssdm_op_Read.ap_auto.floatP(float* %a_4)
  %b_4_read = call float @_ssdm_op_Read.ap_auto.floatP(float* %b_4)
  %tmp_1_4 = fadd float %a_4_read, %b_4_read
  call void @_ssdm_op_Write.ap_auto.floatP(float* %c_4, float %tmp_1_4)
  %a_5_read = call float @_ssdm_op_Read.ap_auto.floatP(float* %a_5)
  %b_5_read = call float @_ssdm_op_Read.ap_auto.floatP(float* %b_5)
  %tmp_1_5 = fadd float %a_5_read, %b_5_read
  call void @_ssdm_op_Write.ap_auto.floatP(float* %c_5, float %tmp_1_5)
  %a_6_read = call float @_ssdm_op_Read.ap_auto.floatP(float* %a_6)
  %b_6_read = call float @_ssdm_op_Read.ap_auto.floatP(float* %b_6)
  %tmp_1_6 = fadd float %a_6_read, %b_6_read
  call void @_ssdm_op_Write.ap_auto.floatP(float* %c_6, float %tmp_1_6)
  %a_7_read = call float @_ssdm_op_Read.ap_auto.floatP(float* %a_7)
  %b_7_read = call float @_ssdm_op_Read.ap_auto.floatP(float* %b_7)
  %tmp_1_7 = fadd float %a_7_read, %b_7_read
  call void @_ssdm_op_Write.ap_auto.floatP(float* %c_7, float %tmp_1_7)
  ret float 0.000000e+00
}

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define weak void @_ssdm_op_Write.ap_auto.floatP(float*, float) {
entry:
  store float %1, float* %0
  ret void
}

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak float @_ssdm_op_Read.ap_auto.floatP(float*) {
entry:
  %empty = load float* %0
  ret float %empty
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
!10 = metadata !{metadata !"c", metadata !11, metadata !"float", i32 0, i32 31}
!11 = metadata !{metadata !12}
!12 = metadata !{i32 7, i32 7, i32 2}
!13 = metadata !{metadata !14}
!14 = metadata !{i32 0, i32 31, metadata !15}
!15 = metadata !{metadata !16}
!16 = metadata !{metadata !"c", metadata !17, metadata !"float", i32 0, i32 31}
!17 = metadata !{metadata !18}
!18 = metadata !{i32 6, i32 6, i32 2}
!19 = metadata !{metadata !20}
!20 = metadata !{i32 0, i32 31, metadata !21}
!21 = metadata !{metadata !22}
!22 = metadata !{metadata !"c", metadata !23, metadata !"float", i32 0, i32 31}
!23 = metadata !{metadata !24}
!24 = metadata !{i32 5, i32 5, i32 2}
!25 = metadata !{metadata !26}
!26 = metadata !{i32 0, i32 31, metadata !27}
!27 = metadata !{metadata !28}
!28 = metadata !{metadata !"c", metadata !29, metadata !"float", i32 0, i32 31}
!29 = metadata !{metadata !30}
!30 = metadata !{i32 4, i32 4, i32 2}
!31 = metadata !{metadata !32}
!32 = metadata !{i32 0, i32 31, metadata !33}
!33 = metadata !{metadata !34}
!34 = metadata !{metadata !"c", metadata !35, metadata !"float", i32 0, i32 31}
!35 = metadata !{metadata !36}
!36 = metadata !{i32 3, i32 3, i32 2}
!37 = metadata !{metadata !38}
!38 = metadata !{i32 0, i32 31, metadata !39}
!39 = metadata !{metadata !40}
!40 = metadata !{metadata !"c", metadata !41, metadata !"float", i32 0, i32 31}
!41 = metadata !{metadata !42}
!42 = metadata !{i32 2, i32 2, i32 2}
!43 = metadata !{metadata !44}
!44 = metadata !{i32 0, i32 31, metadata !45}
!45 = metadata !{metadata !46}
!46 = metadata !{metadata !"c", metadata !47, metadata !"float", i32 0, i32 31}
!47 = metadata !{metadata !48}
!48 = metadata !{i32 1, i32 1, i32 2}
!49 = metadata !{metadata !50}
!50 = metadata !{i32 0, i32 31, metadata !51}
!51 = metadata !{metadata !52}
!52 = metadata !{metadata !"c", metadata !53, metadata !"float", i32 0, i32 31}
!53 = metadata !{metadata !54}
!54 = metadata !{i32 0, i32 0, i32 2}
!55 = metadata !{metadata !56}
!56 = metadata !{i32 0, i32 31, metadata !57}
!57 = metadata !{metadata !58}
!58 = metadata !{metadata !"b", metadata !11, metadata !"float", i32 0, i32 31}
!59 = metadata !{metadata !60}
!60 = metadata !{i32 0, i32 31, metadata !61}
!61 = metadata !{metadata !62}
!62 = metadata !{metadata !"b", metadata !17, metadata !"float", i32 0, i32 31}
!63 = metadata !{metadata !64}
!64 = metadata !{i32 0, i32 31, metadata !65}
!65 = metadata !{metadata !66}
!66 = metadata !{metadata !"b", metadata !23, metadata !"float", i32 0, i32 31}
!67 = metadata !{metadata !68}
!68 = metadata !{i32 0, i32 31, metadata !69}
!69 = metadata !{metadata !70}
!70 = metadata !{metadata !"b", metadata !29, metadata !"float", i32 0, i32 31}
!71 = metadata !{metadata !72}
!72 = metadata !{i32 0, i32 31, metadata !73}
!73 = metadata !{metadata !74}
!74 = metadata !{metadata !"b", metadata !35, metadata !"float", i32 0, i32 31}
!75 = metadata !{metadata !76}
!76 = metadata !{i32 0, i32 31, metadata !77}
!77 = metadata !{metadata !78}
!78 = metadata !{metadata !"b", metadata !41, metadata !"float", i32 0, i32 31}
!79 = metadata !{metadata !80}
!80 = metadata !{i32 0, i32 31, metadata !81}
!81 = metadata !{metadata !82}
!82 = metadata !{metadata !"b", metadata !47, metadata !"float", i32 0, i32 31}
!83 = metadata !{metadata !84}
!84 = metadata !{i32 0, i32 31, metadata !85}
!85 = metadata !{metadata !86}
!86 = metadata !{metadata !"b", metadata !53, metadata !"float", i32 0, i32 31}
!87 = metadata !{metadata !88}
!88 = metadata !{i32 0, i32 31, metadata !89}
!89 = metadata !{metadata !90}
!90 = metadata !{metadata !"a", metadata !11, metadata !"float", i32 0, i32 31}
!91 = metadata !{metadata !92}
!92 = metadata !{i32 0, i32 31, metadata !93}
!93 = metadata !{metadata !94}
!94 = metadata !{metadata !"a", metadata !17, metadata !"float", i32 0, i32 31}
!95 = metadata !{metadata !96}
!96 = metadata !{i32 0, i32 31, metadata !97}
!97 = metadata !{metadata !98}
!98 = metadata !{metadata !"a", metadata !23, metadata !"float", i32 0, i32 31}
!99 = metadata !{metadata !100}
!100 = metadata !{i32 0, i32 31, metadata !101}
!101 = metadata !{metadata !102}
!102 = metadata !{metadata !"a", metadata !29, metadata !"float", i32 0, i32 31}
!103 = metadata !{metadata !104}
!104 = metadata !{i32 0, i32 31, metadata !105}
!105 = metadata !{metadata !106}
!106 = metadata !{metadata !"a", metadata !35, metadata !"float", i32 0, i32 31}
!107 = metadata !{metadata !108}
!108 = metadata !{i32 0, i32 31, metadata !109}
!109 = metadata !{metadata !110}
!110 = metadata !{metadata !"a", metadata !41, metadata !"float", i32 0, i32 31}
!111 = metadata !{metadata !112}
!112 = metadata !{i32 0, i32 31, metadata !113}
!113 = metadata !{metadata !114}
!114 = metadata !{metadata !"a", metadata !47, metadata !"float", i32 0, i32 31}
!115 = metadata !{metadata !116}
!116 = metadata !{i32 0, i32 31, metadata !117}
!117 = metadata !{metadata !118}
!118 = metadata !{metadata !"a", metadata !53, metadata !"float", i32 0, i32 31}
!119 = metadata !{metadata !120}
!120 = metadata !{i32 0, i32 31, metadata !121}
!121 = metadata !{metadata !122}
!122 = metadata !{metadata !"return", metadata !123, metadata !"float", i32 0, i32 31}
!123 = metadata !{metadata !124}
!124 = metadata !{i32 0, i32 1, i32 0}
