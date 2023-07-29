// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (lin64) Build 1909853 Thu Jun 15 18:39:10 MDT 2017
// Date        : Thu Mar  8 12:41:33 2018
// Host        : drsatya-OptiPlex-990 running 64-bit Ubuntu 12.04.4 LTS
// Command     : write_verilog -force -mode synth_stub
//               /opt/Xilinx/Vivado/2017.2/bin/project_1_sequence_8_march_float_1/design_1/ip/design_1_simple_0_0/design_1_simple_0_0_stub.v
// Design      : design_1_simple_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "simple,Vivado 2017.2" *)
module design_1_simple_0_0(a_ce0, b_ce0, c_ce0, c_we0, ap_clk, ap_rst, ap_start, 
  ap_done, ap_idle, ap_ready, ap_return, a_address0, a_q0, b_address0, b_q0, c_address0, c_d0)
/* synthesis syn_black_box black_box_pad_pin="a_ce0,b_ce0,c_ce0,c_we0,ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,ap_return[31:0],a_address0[2:0],a_q0[31:0],b_address0[2:0],b_q0[31:0],c_address0[2:0],c_d0[31:0]" */;
  output a_ce0;
  output b_ce0;
  output c_ce0;
  output c_we0;
  input ap_clk;
  input ap_rst;
  input ap_start;
  output ap_done;
  output ap_idle;
  output ap_ready;
  output [31:0]ap_return;
  output [2:0]a_address0;
  input [31:0]a_q0;
  output [2:0]b_address0;
  input [31:0]b_q0;
  output [2:0]c_address0;
  output [31:0]c_d0;
endmodule
