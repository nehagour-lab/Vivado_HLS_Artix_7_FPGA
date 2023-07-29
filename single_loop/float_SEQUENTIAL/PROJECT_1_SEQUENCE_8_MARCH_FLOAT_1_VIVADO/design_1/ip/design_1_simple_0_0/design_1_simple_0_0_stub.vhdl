-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.2 (lin64) Build 1909853 Thu Jun 15 18:39:10 MDT 2017
-- Date        : Thu Mar  8 12:41:33 2018
-- Host        : drsatya-OptiPlex-990 running 64-bit Ubuntu 12.04.4 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /opt/Xilinx/Vivado/2017.2/bin/project_1_sequence_8_march_float_1/design_1/ip/design_1_simple_0_0/design_1_simple_0_0_stub.vhdl
-- Design      : design_1_simple_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_simple_0_0 is
  Port ( 
    a_ce0 : out STD_LOGIC;
    b_ce0 : out STD_LOGIC;
    c_ce0 : out STD_LOGIC;
    c_we0 : out STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst : in STD_LOGIC;
    ap_start : in STD_LOGIC;
    ap_done : out STD_LOGIC;
    ap_idle : out STD_LOGIC;
    ap_ready : out STD_LOGIC;
    ap_return : out STD_LOGIC_VECTOR ( 31 downto 0 );
    a_address0 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    a_q0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    b_address0 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    b_q0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    c_address0 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    c_d0 : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );

end design_1_simple_0_0;

architecture stub of design_1_simple_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "a_ce0,b_ce0,c_ce0,c_we0,ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,ap_return[31:0],a_address0[2:0],a_q0[31:0],b_address0[2:0],b_q0[31:0],c_address0[2:0],c_d0[31:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "simple,Vivado 2017.2";
begin
end;
