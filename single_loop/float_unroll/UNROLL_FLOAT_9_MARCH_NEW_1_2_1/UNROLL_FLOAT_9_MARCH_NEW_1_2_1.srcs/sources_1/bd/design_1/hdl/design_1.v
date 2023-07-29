//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2017.2 (lin64) Build 1909853 Thu Jun 15 18:39:10 MDT 2017
//Date        : Fri Mar  9 16:28:09 2018
//Host        : drsatya-OptiPlex-990 running 64-bit Ubuntu 12.04.4 LTS
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=1,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   (a_0,
    a_1,
    a_2,
    a_3,
    a_4,
    a_5,
    a_6,
    a_7,
    ap_clk,
    ap_done,
    ap_idle,
    ap_ready,
    ap_rst,
    ap_start,
    b_0,
    b_1,
    b_2,
    b_3,
    b_4,
    b_5,
    b_6,
    b_7,
    c_0,
    c_1,
    c_2,
    c_3,
    c_4,
    c_5,
    c_6,
    c_7);
  input [31:0]a_0;
  input [31:0]a_1;
  input [31:0]a_2;
  input [31:0]a_3;
  input [31:0]a_4;
  input [31:0]a_5;
  input [31:0]a_6;
  input [31:0]a_7;
  input ap_clk;
  output ap_done;
  output ap_idle;
  output ap_ready;
  input ap_rst;
  input ap_start;
  input [31:0]b_0;
  input [31:0]b_1;
  input [31:0]b_2;
  input [31:0]b_3;
  input [31:0]b_4;
  input [31:0]b_5;
  input [31:0]b_6;
  input [31:0]b_7;
  output [31:0]c_0;
  output [31:0]c_1;
  output [31:0]c_2;
  output [31:0]c_3;
  output [31:0]c_4;
  output [31:0]c_5;
  output [31:0]c_6;
  output [31:0]c_7;

  wire [31:0]a_0_1;
  wire [31:0]a_1_1;
  wire [31:0]a_2_1;
  wire [31:0]a_3_1;
  wire [31:0]a_4_1;
  wire [31:0]a_5_1;
  wire [31:0]a_6_1;
  wire [31:0]a_7_1;
  wire ap_clk_1;
  wire ap_rst_1;
  wire ap_start_1;
  wire [31:0]b_0_1;
  wire [31:0]b_1_1;
  wire [31:0]b_2_1;
  wire [31:0]b_3_1;
  wire [31:0]b_4_1;
  wire [31:0]b_5_1;
  wire [31:0]b_6_1;
  wire [31:0]b_7_1;
  wire simple_0_ap_done;
  wire simple_0_ap_idle;
  wire simple_0_ap_ready;
  wire [31:0]simple_0_c_0;
  wire [31:0]simple_0_c_1;
  wire [31:0]simple_0_c_2;
  wire [31:0]simple_0_c_3;
  wire [31:0]simple_0_c_4;
  wire [31:0]simple_0_c_5;
  wire [31:0]simple_0_c_6;
  wire [31:0]simple_0_c_7;

  assign a_0_1 = a_0[31:0];
  assign a_1_1 = a_1[31:0];
  assign a_2_1 = a_2[31:0];
  assign a_3_1 = a_3[31:0];
  assign a_4_1 = a_4[31:0];
  assign a_5_1 = a_5[31:0];
  assign a_6_1 = a_6[31:0];
  assign a_7_1 = a_7[31:0];
  assign ap_clk_1 = ap_clk;
  assign ap_done = simple_0_ap_done;
  assign ap_idle = simple_0_ap_idle;
  assign ap_ready = simple_0_ap_ready;
  assign ap_rst_1 = ap_rst;
  assign ap_start_1 = ap_start;
  assign b_0_1 = b_0[31:0];
  assign b_1_1 = b_1[31:0];
  assign b_2_1 = b_2[31:0];
  assign b_3_1 = b_3[31:0];
  assign b_4_1 = b_4[31:0];
  assign b_5_1 = b_5[31:0];
  assign b_6_1 = b_6[31:0];
  assign b_7_1 = b_7[31:0];
  assign c_0[31:0] = simple_0_c_0;
  assign c_1[31:0] = simple_0_c_1;
  assign c_2[31:0] = simple_0_c_2;
  assign c_3[31:0] = simple_0_c_3;
  assign c_4[31:0] = simple_0_c_4;
  assign c_5[31:0] = simple_0_c_5;
  assign c_6[31:0] = simple_0_c_6;
  assign c_7[31:0] = simple_0_c_7;
  design_1_simple_0_0 simple_0
       (.a_0(a_0_1),
        .a_1(a_1_1),
        .a_2(a_2_1),
        .a_3(a_3_1),
        .a_4(a_4_1),
        .a_5(a_5_1),
        .a_6(a_6_1),
        .a_7(a_7_1),
        .ap_clk(ap_clk_1),
        .ap_done(simple_0_ap_done),
        .ap_idle(simple_0_ap_idle),
        .ap_ready(simple_0_ap_ready),
        .ap_rst(ap_rst_1),
        .ap_start(ap_start_1),
        .b_0(b_0_1),
        .b_1(b_1_1),
        .b_2(b_2_1),
        .b_3(b_3_1),
        .b_4(b_4_1),
        .b_5(b_5_1),
        .b_6(b_6_1),
        .b_7(b_7_1),
        .c_0(simple_0_c_0),
        .c_1(simple_0_c_1),
        .c_2(simple_0_c_2),
        .c_3(simple_0_c_3),
        .c_4(simple_0_c_4),
        .c_5(simple_0_c_5),
        .c_6(simple_0_c_6),
        .c_7(simple_0_c_7));
endmodule
