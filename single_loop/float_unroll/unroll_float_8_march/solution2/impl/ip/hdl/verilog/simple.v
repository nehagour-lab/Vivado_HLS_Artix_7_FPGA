// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.2
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="simple,hls_ip_2017_2,{HLS_INPUT_TYPE=c,HLS_INPUT_FLOAT=1,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xcku035-ffva1156-3-e,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=5.714000,HLS_SYN_LAT=3,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=16,HLS_SYN_FF=1820,HLS_SYN_LUT=1771}" *)

module simple (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        a_0,
        a_1,
        a_2,
        a_3,
        a_4,
        a_5,
        a_6,
        a_7,
        b_0,
        b_1,
        b_2,
        b_3,
        b_4,
        b_5,
        b_6,
        b_7,
        c_0,
        c_0_ap_vld,
        c_1,
        c_1_ap_vld,
        c_2,
        c_2_ap_vld,
        c_3,
        c_3_ap_vld,
        c_4,
        c_4_ap_vld,
        c_5,
        c_5_ap_vld,
        c_6,
        c_6_ap_vld,
        c_7,
        c_7_ap_vld,
        ap_return
);

parameter    ap_ST_fsm_state1 = 4'd1;
parameter    ap_ST_fsm_state2 = 4'd2;
parameter    ap_ST_fsm_state3 = 4'd4;
parameter    ap_ST_fsm_state4 = 4'd8;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [31:0] a_0;
input  [31:0] a_1;
input  [31:0] a_2;
input  [31:0] a_3;
input  [31:0] a_4;
input  [31:0] a_5;
input  [31:0] a_6;
input  [31:0] a_7;
input  [31:0] b_0;
input  [31:0] b_1;
input  [31:0] b_2;
input  [31:0] b_3;
input  [31:0] b_4;
input  [31:0] b_5;
input  [31:0] b_6;
input  [31:0] b_7;
output  [31:0] c_0;
output   c_0_ap_vld;
output  [31:0] c_1;
output   c_1_ap_vld;
output  [31:0] c_2;
output   c_2_ap_vld;
output  [31:0] c_3;
output   c_3_ap_vld;
output  [31:0] c_4;
output   c_4_ap_vld;
output  [31:0] c_5;
output   c_5_ap_vld;
output  [31:0] c_6;
output   c_6_ap_vld;
output  [31:0] c_7;
output   c_7_ap_vld;
output  [31:0] ap_return;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg c_0_ap_vld;
reg c_1_ap_vld;
reg c_2_ap_vld;
reg c_3_ap_vld;
reg c_4_ap_vld;
reg c_5_ap_vld;
reg c_6_ap_vld;
reg c_7_ap_vld;

(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [31:0] grp_fu_212_p2;
wire    ap_CS_fsm_state4;
wire   [31:0] grp_fu_219_p2;
wire   [31:0] grp_fu_226_p2;
wire   [31:0] grp_fu_233_p2;
wire   [31:0] grp_fu_240_p2;
wire   [31:0] grp_fu_247_p2;
wire   [31:0] grp_fu_254_p2;
wire   [31:0] grp_fu_261_p2;
reg   [3:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 4'd1;
end

simple_fadd_32ns_bkb #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
simple_fadd_32ns_bkb_U1(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(a_0),
    .din1(b_0),
    .ce(1'b1),
    .dout(grp_fu_212_p2)
);

simple_fadd_32ns_bkb #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
simple_fadd_32ns_bkb_U2(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(a_1),
    .din1(b_1),
    .ce(1'b1),
    .dout(grp_fu_219_p2)
);

simple_fadd_32ns_bkb #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
simple_fadd_32ns_bkb_U3(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(a_2),
    .din1(b_2),
    .ce(1'b1),
    .dout(grp_fu_226_p2)
);

simple_fadd_32ns_bkb #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
simple_fadd_32ns_bkb_U4(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(a_3),
    .din1(b_3),
    .ce(1'b1),
    .dout(grp_fu_233_p2)
);

simple_fadd_32ns_bkb #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
simple_fadd_32ns_bkb_U5(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(a_4),
    .din1(b_4),
    .ce(1'b1),
    .dout(grp_fu_240_p2)
);

simple_fadd_32ns_bkb #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
simple_fadd_32ns_bkb_U6(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(a_5),
    .din1(b_5),
    .ce(1'b1),
    .dout(grp_fu_247_p2)
);

simple_fadd_32ns_bkb #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
simple_fadd_32ns_bkb_U7(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(a_6),
    .din1(b_6),
    .ce(1'b1),
    .dout(grp_fu_254_p2)
);

simple_fadd_32ns_bkb #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
simple_fadd_32ns_bkb_U8(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(a_7),
    .din1(b_7),
    .ce(1'b1),
    .dout(grp_fu_261_p2)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_start) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        c_0_ap_vld = 1'b1;
    end else begin
        c_0_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        c_1_ap_vld = 1'b1;
    end else begin
        c_1_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        c_2_ap_vld = 1'b1;
    end else begin
        c_2_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        c_3_ap_vld = 1'b1;
    end else begin
        c_3_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        c_4_ap_vld = 1'b1;
    end else begin
        c_4_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        c_5_ap_vld = 1'b1;
    end else begin
        c_5_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        c_6_ap_vld = 1'b1;
    end else begin
        c_6_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        c_7_ap_vld = 1'b1;
    end else begin
        c_7_ap_vld = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_return = 32'd0;

assign c_0 = grp_fu_212_p2;

assign c_1 = grp_fu_219_p2;

assign c_2 = grp_fu_226_p2;

assign c_3 = grp_fu_233_p2;

assign c_4 = grp_fu_240_p2;

assign c_5 = grp_fu_247_p2;

assign c_6 = grp_fu_254_p2;

assign c_7 = grp_fu_261_p2;

endmodule //simple
