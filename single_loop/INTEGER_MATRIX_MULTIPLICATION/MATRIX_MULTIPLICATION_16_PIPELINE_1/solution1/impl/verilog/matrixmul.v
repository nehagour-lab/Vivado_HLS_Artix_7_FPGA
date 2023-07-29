// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.2
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="matrixmul,hls_ip_2017_2,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7a35tcpg236-3,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=8.023500,HLS_SYN_LAT=82,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=1,HLS_SYN_FF=165,HLS_SYN_LUT=214}" *)

module matrixmul (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        a_address0,
        a_ce0,
        a_q0,
        b_address0,
        b_ce0,
        b_q0,
        res_address0,
        res_ce0,
        res_we0,
        res_d0,
        res_q0
);

parameter    ap_ST_fsm_state1 = 5'd1;
parameter    ap_ST_fsm_state2 = 5'd2;
parameter    ap_ST_fsm_pp0_stage0 = 5'd4;
parameter    ap_ST_fsm_pp0_stage1 = 5'd8;
parameter    ap_ST_fsm_state6 = 5'd16;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [3:0] a_address0;
output   a_ce0;
input  [7:0] a_q0;
output  [3:0] b_address0;
output   b_ce0;
input  [7:0] b_q0;
output  [3:0] res_address0;
output   res_ce0;
output   res_we0;
output  [15:0] res_d0;
input  [15:0] res_q0;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg a_ce0;
reg b_ce0;
reg[3:0] res_address0;
reg res_ce0;
reg res_we0;
reg[15:0] res_d0;

(* fsm_encoding = "none" *) reg   [4:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [1:0] k_reg_126;
wire   [0:0] exitcond_flatten_fu_137_p2;
wire    ap_CS_fsm_state2;
wire   [3:0] indvar_flatten_next_fu_143_p2;
reg   [3:0] indvar_flatten_next_reg_292;
wire   [1:0] j_mid2_fu_161_p3;
reg   [1:0] j_mid2_reg_297;
wire   [1:0] tmp_mid2_v_fu_169_p3;
reg   [1:0] tmp_mid2_v_reg_302;
wire   [4:0] tmp_1_fu_193_p2;
reg   [4:0] tmp_1_reg_307;
wire   [4:0] tmp_2_cast_fu_199_p1;
reg   [4:0] tmp_2_cast_reg_312;
reg   [3:0] res_addr_reg_317;
wire   [0:0] exitcond_fu_214_p2;
reg   [0:0] exitcond_reg_322;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_block_state3_pp0_stage0_iter0;
wire    ap_block_state5_pp0_stage0_iter1;
wire    ap_block_pp0_stage0_flag00011001;
wire   [1:0] k_1_fu_220_p2;
reg   [1:0] k_1_reg_326;
reg    ap_enable_reg_pp0_iter0;
reg  signed [7:0] a_load_reg_341;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_state4_pp0_stage1_iter0;
wire    ap_block_pp0_stage1_flag00011001;
reg  signed [7:0] b_load_reg_346;
wire   [1:0] j_1_fu_274_p2;
wire    ap_CS_fsm_state6;
wire    ap_block_pp0_stage0_flag00011011;
reg    ap_condition_pp0_exit_iter0_state3;
reg    ap_enable_reg_pp0_iter1;
wire    ap_block_pp0_stage1_flag00011011;
reg   [3:0] indvar_flatten_reg_93;
reg   [1:0] i_reg_104;
reg   [1:0] j_reg_115;
reg   [1:0] k_phi_fu_130_p4;
wire    ap_block_pp0_stage0_flag00000000;
wire  signed [63:0] tmp_10_cast_fu_209_p1;
wire  signed [63:0] tmp_11_cast_fu_235_p1;
wire  signed [63:0] tmp_14_cast_fu_263_p1;
wire    ap_block_pp0_stage1_flag00000000;
wire  signed [15:0] grp_fu_279_p3;
wire   [0:0] exitcond1_fu_155_p2;
wire   [1:0] i_1_fu_149_p2;
wire   [3:0] tmp_fu_181_p3;
wire   [4:0] p_shl_cast_fu_189_p1;
wire   [4:0] tmp_mid2_cast_fu_177_p1;
wire   [4:0] tmp_s_fu_203_p2;
wire   [4:0] tmp_4_cast_fu_226_p1;
wire   [4:0] tmp_2_fu_230_p2;
wire   [3:0] tmp_4_fu_240_p3;
wire   [4:0] p_shl1_cast_fu_248_p1;
wire   [4:0] tmp_10_fu_252_p2;
wire   [4:0] tmp_11_fu_258_p2;
reg   [4:0] ap_NS_fsm;
reg    ap_idle_pp0;
wire    ap_enable_pp0;

// power-on initialization
initial begin
#0 ap_CS_fsm = 5'd1;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
end

matrixmul_mac_mulbkb #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 8 ),
    .din1_WIDTH( 8 ),
    .din2_WIDTH( 16 ),
    .dout_WIDTH( 16 ))
matrixmul_mac_mulbkb_U1(
    .din0(b_load_reg_346),
    .din1(a_load_reg_341),
    .din2(res_q0),
    .dout(grp_fu_279_p3)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_block_pp0_stage0_flag00011011 == 1'b0) & (1'b1 == ap_condition_pp0_exit_iter0_state3))) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if (((1'b1 == ap_CS_fsm_state2) & (exitcond_flatten_fu_137_p2 == 1'd0))) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b1 == ap_condition_pp0_exit_iter0_state3) & (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_block_pp0_stage0_flag00011011 == 1'b0)) | ((1'b1 == ap_CS_fsm_pp0_stage1) & (ap_block_pp0_stage1_flag00011011 == 1'b0))))) begin
            ap_enable_reg_pp0_iter1 <= (ap_condition_pp0_exit_iter0_state3 ^ 1'b1);
        end else if ((((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_block_pp0_stage0_flag00011011 == 1'b0)) | ((1'b1 == ap_CS_fsm_pp0_stage1) & (ap_block_pp0_stage1_flag00011011 == 1'b0)))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end else if (((1'b1 == ap_CS_fsm_state2) & (exitcond_flatten_fu_137_p2 == 1'd0))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        i_reg_104 <= tmp_mid2_v_reg_302;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        i_reg_104 <= 2'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        indvar_flatten_reg_93 <= indvar_flatten_next_reg_292;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        indvar_flatten_reg_93 <= 4'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        j_reg_115 <= j_1_fu_274_p2;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        j_reg_115 <= 2'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_block_pp0_stage0_flag00011001 == 1'b0) & (1'd0 == exitcond_reg_322) & (1'b1 == ap_enable_reg_pp0_iter1))) begin
        k_reg_126 <= k_1_reg_326;
    end else if (((1'b1 == ap_CS_fsm_state2) & (exitcond_flatten_fu_137_p2 == 1'd0))) begin
        k_reg_126 <= 2'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage1) & (ap_block_pp0_stage1_flag00011001 == 1'b0) & (1'd0 == exitcond_reg_322))) begin
        a_load_reg_341 <= a_q0;
        b_load_reg_346 <= b_q0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_block_pp0_stage0_flag00011001 == 1'b0))) begin
        exitcond_reg_322 <= exitcond_fu_214_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        indvar_flatten_next_reg_292 <= indvar_flatten_next_fu_143_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (exitcond_flatten_fu_137_p2 == 1'd0))) begin
        j_mid2_reg_297 <= j_mid2_fu_161_p3;
        res_addr_reg_317 <= tmp_10_cast_fu_209_p1;
        tmp_1_reg_307 <= tmp_1_fu_193_p2;
        tmp_2_cast_reg_312[1 : 0] <= tmp_2_cast_fu_199_p1[1 : 0];
        tmp_mid2_v_reg_302 <= tmp_mid2_v_fu_169_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_block_pp0_stage0_flag00011001 == 1'b0) & (1'b1 == ap_enable_reg_pp0_iter0))) begin
        k_1_reg_326 <= k_1_fu_220_p2;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_block_pp0_stage0_flag00011001 == 1'b0) & (1'b1 == ap_enable_reg_pp0_iter0))) begin
        a_ce0 = 1'b1;
    end else begin
        a_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((exitcond_fu_214_p2 == 1'd1)) begin
        ap_condition_pp0_exit_iter0_state3 = 1'b1;
    end else begin
        ap_condition_pp0_exit_iter0_state3 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (exitcond_flatten_fu_137_p2 == 1'd1))) begin
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
    if (((1'b0 == ap_enable_reg_pp0_iter0) & (1'b0 == ap_enable_reg_pp0_iter1))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (exitcond_flatten_fu_137_p2 == 1'd1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_block_pp0_stage0_flag00011001 == 1'b0) & (1'b1 == ap_enable_reg_pp0_iter0))) begin
        b_ce0 = 1'b1;
    end else begin
        b_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'd0 == exitcond_reg_322) & (1'b1 == ap_enable_reg_pp0_iter1) & (ap_block_pp0_stage0_flag00000000 == 1'b0))) begin
        k_phi_fu_130_p4 = k_1_reg_326;
    end else begin
        k_phi_fu_130_p4 = k_reg_126;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_enable_reg_pp0_iter1) & (ap_block_pp0_stage0_flag00000000 == 1'b0)) | ((1'b1 == ap_enable_reg_pp0_iter0) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_block_pp0_stage1_flag00000000 == 1'b0)))) begin
        res_address0 = res_addr_reg_317;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        res_address0 = tmp_10_cast_fu_209_p1;
    end else begin
        res_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_block_pp0_stage0_flag00011001 == 1'b0) & (1'b1 == ap_enable_reg_pp0_iter1)) | ((1'b1 == ap_enable_reg_pp0_iter0) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_block_pp0_stage1_flag00011001 == 1'b0)))) begin
        res_ce0 = 1'b1;
    end else begin
        res_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_enable_reg_pp0_iter1) & (ap_block_pp0_stage0_flag00000000 == 1'b0))) begin
        res_d0 = grp_fu_279_p3;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        res_d0 = 16'd0;
    end else begin
        res_d0 = 'bx;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state2) & (exitcond_flatten_fu_137_p2 == 1'd0)) | ((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_block_pp0_stage0_flag00011001 == 1'b0) & (1'd0 == exitcond_reg_322) & (1'b1 == ap_enable_reg_pp0_iter1)))) begin
        res_we0 = 1'b1;
    end else begin
        res_we0 = 1'b0;
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
            if (((1'b1 == ap_CS_fsm_state2) & (exitcond_flatten_fu_137_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage0 : begin
            if (((ap_block_pp0_stage0_flag00011011 == 1'b0) & ~((1'b1 == ap_enable_reg_pp0_iter0) & (ap_block_pp0_stage0_flag00011011 == 1'b0) & (exitcond_fu_214_p2 == 1'd1)))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else if (((1'b1 == ap_enable_reg_pp0_iter0) & (ap_block_pp0_stage0_flag00011011 == 1'b0) & (exitcond_fu_214_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if ((ap_block_pp0_stage1_flag00011011 == 1'b0)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state2;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign a_address0 = tmp_11_cast_fu_235_p1;

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd4];

assign ap_block_pp0_stage0_flag00000000 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_flag00011001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_flag00011011 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage1_flag00000000 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage1_flag00011001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage1_flag00011011 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage1_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state5_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign b_address0 = tmp_14_cast_fu_263_p1;

assign exitcond1_fu_155_p2 = ((j_reg_115 == 2'd3) ? 1'b1 : 1'b0);

assign exitcond_flatten_fu_137_p2 = ((indvar_flatten_reg_93 == 4'd9) ? 1'b1 : 1'b0);

assign exitcond_fu_214_p2 = ((k_phi_fu_130_p4 == 2'd3) ? 1'b1 : 1'b0);

assign i_1_fu_149_p2 = (i_reg_104 + 2'd1);

assign indvar_flatten_next_fu_143_p2 = (indvar_flatten_reg_93 + 4'd1);

assign j_1_fu_274_p2 = (j_mid2_reg_297 + 2'd1);

assign j_mid2_fu_161_p3 = ((exitcond1_fu_155_p2[0:0] === 1'b1) ? 2'd0 : j_reg_115);

assign k_1_fu_220_p2 = (k_phi_fu_130_p4 + 2'd1);

assign p_shl1_cast_fu_248_p1 = tmp_4_fu_240_p3;

assign p_shl_cast_fu_189_p1 = tmp_fu_181_p3;

assign tmp_10_cast_fu_209_p1 = $signed(tmp_s_fu_203_p2);

assign tmp_10_fu_252_p2 = (p_shl1_cast_fu_248_p1 - tmp_4_cast_fu_226_p1);

assign tmp_11_cast_fu_235_p1 = $signed(tmp_2_fu_230_p2);

assign tmp_11_fu_258_p2 = (tmp_10_fu_252_p2 + tmp_2_cast_reg_312);

assign tmp_14_cast_fu_263_p1 = $signed(tmp_11_fu_258_p2);

assign tmp_1_fu_193_p2 = (p_shl_cast_fu_189_p1 - tmp_mid2_cast_fu_177_p1);

assign tmp_2_cast_fu_199_p1 = j_mid2_fu_161_p3;

assign tmp_2_fu_230_p2 = (tmp_1_reg_307 + tmp_4_cast_fu_226_p1);

assign tmp_4_cast_fu_226_p1 = k_phi_fu_130_p4;

assign tmp_4_fu_240_p3 = {{k_phi_fu_130_p4}, {2'd0}};

assign tmp_fu_181_p3 = {{tmp_mid2_v_fu_169_p3}, {2'd0}};

assign tmp_mid2_cast_fu_177_p1 = tmp_mid2_v_fu_169_p3;

assign tmp_mid2_v_fu_169_p3 = ((exitcond1_fu_155_p2[0:0] === 1'b1) ? i_1_fu_149_p2 : i_reg_104);

assign tmp_s_fu_203_p2 = (tmp_1_fu_193_p2 + tmp_2_cast_fu_199_p1);

always @ (posedge ap_clk) begin
    tmp_2_cast_reg_312[4:2] <= 3'b000;
end

endmodule //matrixmul
