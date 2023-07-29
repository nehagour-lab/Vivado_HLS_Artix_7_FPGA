--Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2017.2 (lin64) Build 1909853 Thu Jun 15 18:39:10 MDT 2017
--Date        : Fri Mar  9 17:57:25 2018
--Host        : drsatya-OptiPlex-990 running 64-bit Ubuntu 12.04.4 LTS
--Command     : generate_target design_1.bd
--Design      : design_1
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1 is
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
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of design_1 : entity is "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=1,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of design_1 : entity is "design_1.hwdef";
end design_1;

architecture STRUCTURE of design_1 is
  component design_1_simple_0_0 is
  port (
    c_0_ap_vld : out STD_LOGIC;
    c_1_ap_vld : out STD_LOGIC;
    c_2_ap_vld : out STD_LOGIC;
    c_3_ap_vld : out STD_LOGIC;
    c_4_ap_vld : out STD_LOGIC;
    c_5_ap_vld : out STD_LOGIC;
    c_6_ap_vld : out STD_LOGIC;
    c_7_ap_vld : out STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst : in STD_LOGIC;
    ap_start : in STD_LOGIC;
    ap_done : out STD_LOGIC;
    ap_idle : out STD_LOGIC;
    ap_ready : out STD_LOGIC;
    ap_return : out STD_LOGIC_VECTOR ( 31 downto 0 );
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
    c_0 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    c_1 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    c_2 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    c_3 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    c_4 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    c_5 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    c_6 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    c_7 : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component design_1_simple_0_0;
  signal a_0_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal a_1_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal a_2_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal a_3_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal a_4_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal a_5_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal a_6_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal a_7_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ap_clk_1 : STD_LOGIC;
  signal ap_rst_1 : STD_LOGIC;
  signal ap_start_1 : STD_LOGIC;
  signal b_0_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal b_1_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal b_2_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal b_3_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal b_4_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal b_5_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal b_6_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal b_7_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal simple_0_ap_done : STD_LOGIC;
  signal simple_0_ap_idle : STD_LOGIC;
  signal simple_0_ap_ready : STD_LOGIC;
  signal simple_0_c_0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal simple_0_c_0_ap_vld : STD_LOGIC;
  signal simple_0_c_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal simple_0_c_1_ap_vld : STD_LOGIC;
  signal simple_0_c_2 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal simple_0_c_2_ap_vld : STD_LOGIC;
  signal simple_0_c_3 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal simple_0_c_3_ap_vld : STD_LOGIC;
  signal simple_0_c_4 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal simple_0_c_4_ap_vld : STD_LOGIC;
  signal simple_0_c_5 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal simple_0_c_5_ap_vld : STD_LOGIC;
  signal simple_0_c_6 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal simple_0_c_6_ap_vld : STD_LOGIC;
  signal simple_0_c_7 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal simple_0_c_7_ap_vld : STD_LOGIC;
  signal NLW_simple_0_ap_return_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
begin
  a_0_1(31 downto 0) <= a_0(31 downto 0);
  a_1_1(31 downto 0) <= a_1(31 downto 0);
  a_2_1(31 downto 0) <= a_2(31 downto 0);
  a_3_1(31 downto 0) <= a_3(31 downto 0);
  a_4_1(31 downto 0) <= a_4(31 downto 0);
  a_5_1(31 downto 0) <= a_5(31 downto 0);
  a_6_1(31 downto 0) <= a_6(31 downto 0);
  a_7_1(31 downto 0) <= a_7(31 downto 0);
  ap_clk_1 <= ap_clk;
  ap_done <= simple_0_ap_done;
  ap_idle <= simple_0_ap_idle;
  ap_ready <= simple_0_ap_ready;
  ap_rst_1 <= ap_rst;
  ap_start_1 <= ap_start;
  b_0_1(31 downto 0) <= b_0(31 downto 0);
  b_1_1(31 downto 0) <= b_1(31 downto 0);
  b_2_1(31 downto 0) <= b_2(31 downto 0);
  b_3_1(31 downto 0) <= b_3(31 downto 0);
  b_4_1(31 downto 0) <= b_4(31 downto 0);
  b_5_1(31 downto 0) <= b_5(31 downto 0);
  b_6_1(31 downto 0) <= b_6(31 downto 0);
  b_7_1(31 downto 0) <= b_7(31 downto 0);
  c_0(31 downto 0) <= simple_0_c_0(31 downto 0);
  c_0_ap_vld <= simple_0_c_0_ap_vld;
  c_1(31 downto 0) <= simple_0_c_1(31 downto 0);
  c_1_ap_vld <= simple_0_c_1_ap_vld;
  c_2(31 downto 0) <= simple_0_c_2(31 downto 0);
  c_2_ap_vld <= simple_0_c_2_ap_vld;
  c_3(31 downto 0) <= simple_0_c_3(31 downto 0);
  c_3_ap_vld <= simple_0_c_3_ap_vld;
  c_4(31 downto 0) <= simple_0_c_4(31 downto 0);
  c_4_ap_vld <= simple_0_c_4_ap_vld;
  c_5(31 downto 0) <= simple_0_c_5(31 downto 0);
  c_5_ap_vld <= simple_0_c_5_ap_vld;
  c_6(31 downto 0) <= simple_0_c_6(31 downto 0);
  c_6_ap_vld <= simple_0_c_6_ap_vld;
  c_7(31 downto 0) <= simple_0_c_7(31 downto 0);
  c_7_ap_vld <= simple_0_c_7_ap_vld;
simple_0: component design_1_simple_0_0
     port map (
      a_0(31 downto 0) => a_0_1(31 downto 0),
      a_1(31 downto 0) => a_1_1(31 downto 0),
      a_2(31 downto 0) => a_2_1(31 downto 0),
      a_3(31 downto 0) => a_3_1(31 downto 0),
      a_4(31 downto 0) => a_4_1(31 downto 0),
      a_5(31 downto 0) => a_5_1(31 downto 0),
      a_6(31 downto 0) => a_6_1(31 downto 0),
      a_7(31 downto 0) => a_7_1(31 downto 0),
      ap_clk => ap_clk_1,
      ap_done => simple_0_ap_done,
      ap_idle => simple_0_ap_idle,
      ap_ready => simple_0_ap_ready,
      ap_return(31 downto 0) => NLW_simple_0_ap_return_UNCONNECTED(31 downto 0),
      ap_rst => ap_rst_1,
      ap_start => ap_start_1,
      b_0(31 downto 0) => b_0_1(31 downto 0),
      b_1(31 downto 0) => b_1_1(31 downto 0),
      b_2(31 downto 0) => b_2_1(31 downto 0),
      b_3(31 downto 0) => b_3_1(31 downto 0),
      b_4(31 downto 0) => b_4_1(31 downto 0),
      b_5(31 downto 0) => b_5_1(31 downto 0),
      b_6(31 downto 0) => b_6_1(31 downto 0),
      b_7(31 downto 0) => b_7_1(31 downto 0),
      c_0(31 downto 0) => simple_0_c_0(31 downto 0),
      c_0_ap_vld => simple_0_c_0_ap_vld,
      c_1(31 downto 0) => simple_0_c_1(31 downto 0),
      c_1_ap_vld => simple_0_c_1_ap_vld,
      c_2(31 downto 0) => simple_0_c_2(31 downto 0),
      c_2_ap_vld => simple_0_c_2_ap_vld,
      c_3(31 downto 0) => simple_0_c_3(31 downto 0),
      c_3_ap_vld => simple_0_c_3_ap_vld,
      c_4(31 downto 0) => simple_0_c_4(31 downto 0),
      c_4_ap_vld => simple_0_c_4_ap_vld,
      c_5(31 downto 0) => simple_0_c_5(31 downto 0),
      c_5_ap_vld => simple_0_c_5_ap_vld,
      c_6(31 downto 0) => simple_0_c_6(31 downto 0),
      c_6_ap_vld => simple_0_c_6_ap_vld,
      c_7(31 downto 0) => simple_0_c_7(31 downto 0),
      c_7_ap_vld => simple_0_c_7_ap_vld
    );
end STRUCTURE;
