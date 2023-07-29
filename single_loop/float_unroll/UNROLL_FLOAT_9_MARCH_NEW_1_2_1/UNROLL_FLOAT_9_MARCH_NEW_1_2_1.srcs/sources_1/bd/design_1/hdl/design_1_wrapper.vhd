--Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2017.2 (lin64) Build 1909853 Thu Jun 15 18:39:10 MDT 2017
--Date        : Fri Mar  9 17:57:25 2018
--Host        : drsatya-OptiPlex-990 running 64-bit Ubuntu 12.04.4 LTS
--Command     : generate_target design_1_wrapper.bd
--Design      : design_1_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_wrapper is
  port (
    a_0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    a_1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    a_2 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    a_3 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    a_4 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    a_5 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    a_6 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    a_7 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    ap_clk : in STD_LOGIC;
    ap_done : out STD_LOGIC;
    ap_idle : out STD_LOGIC;
    ap_ready : out STD_LOGIC;
    ap_rst : in STD_LOGIC;
    ap_start : in STD_LOGIC;
    b_0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    b_1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    b_2 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    b_3 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    b_4 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    b_5 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    b_6 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    b_7 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    c_0 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    c_0_ap_vld : out STD_LOGIC;
    c_1 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    c_1_ap_vld : out STD_LOGIC;
    c_2 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    c_2_ap_vld : out STD_LOGIC;
    c_3 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    c_3_ap_vld : out STD_LOGIC;
    c_4 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    c_4_ap_vld : out STD_LOGIC;
    c_5 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    c_5_ap_vld : out STD_LOGIC;
    c_6 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    c_6_ap_vld : out STD_LOGIC;
    c_7 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    c_7_ap_vld : out STD_LOGIC
  );
end design_1_wrapper;

architecture STRUCTURE of design_1_wrapper is
  component design_1 is
  port (
    ap_start : in STD_LOGIC;
    ap_done : out STD_LOGIC;
    ap_idle : out STD_LOGIC;
    ap_ready : out STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst : in STD_LOGIC;
    a_0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    a_1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    a_2 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    a_3 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    a_4 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    a_5 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    a_6 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    a_7 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    b_0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    b_1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    b_2 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    b_3 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    b_4 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    b_5 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    b_6 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    b_7 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    c_7 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    c_6 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    c_5 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    c_4 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    c_3 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    c_2 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    c_1 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    c_0 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    c_0_ap_vld : out STD_LOGIC;
    c_1_ap_vld : out STD_LOGIC;
    c_2_ap_vld : out STD_LOGIC;
    c_3_ap_vld : out STD_LOGIC;
    c_4_ap_vld : out STD_LOGIC;
    c_5_ap_vld : out STD_LOGIC;
    c_6_ap_vld : out STD_LOGIC;
    c_7_ap_vld : out STD_LOGIC
  );
  end component design_1;
begin
design_1_i: component design_1
     port map (
      a_0(31 downto 0) => a_0(31 downto 0),
      a_1(31 downto 0) => a_1(31 downto 0),
      a_2(31 downto 0) => a_2(31 downto 0),
      a_3(31 downto 0) => a_3(31 downto 0),
      a_4(31 downto 0) => a_4(31 downto 0),
      a_5(31 downto 0) => a_5(31 downto 0),
      a_6(31 downto 0) => a_6(31 downto 0),
      a_7(31 downto 0) => a_7(31 downto 0),
      ap_clk => ap_clk,
      ap_done => ap_done,
      ap_idle => ap_idle,
      ap_ready => ap_ready,
      ap_rst => ap_rst,
      ap_start => ap_start,
      b_0(31 downto 0) => b_0(31 downto 0),
      b_1(31 downto 0) => b_1(31 downto 0),
      b_2(31 downto 0) => b_2(31 downto 0),
      b_3(31 downto 0) => b_3(31 downto 0),
      b_4(31 downto 0) => b_4(31 downto 0),
      b_5(31 downto 0) => b_5(31 downto 0),
      b_6(31 downto 0) => b_6(31 downto 0),
      b_7(31 downto 0) => b_7(31 downto 0),
      c_0(31 downto 0) => c_0(31 downto 0),
      c_0_ap_vld => c_0_ap_vld,
      c_1(31 downto 0) => c_1(31 downto 0),
      c_1_ap_vld => c_1_ap_vld,
      c_2(31 downto 0) => c_2(31 downto 0),
      c_2_ap_vld => c_2_ap_vld,
      c_3(31 downto 0) => c_3(31 downto 0),
      c_3_ap_vld => c_3_ap_vld,
      c_4(31 downto 0) => c_4(31 downto 0),
      c_4_ap_vld => c_4_ap_vld,
      c_5(31 downto 0) => c_5(31 downto 0),
      c_5_ap_vld => c_5_ap_vld,
      c_6(31 downto 0) => c_6(31 downto 0),
      c_6_ap_vld => c_6_ap_vld,
      c_7(31 downto 0) => c_7(31 downto 0),
      c_7_ap_vld => c_7_ap_vld
    );
end STRUCTURE;
