--Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2017.2 (lin64) Build 1909853 Thu Jun 15 18:39:10 MDT 2017
--Date        : Thu Mar  8 12:40:44 2018
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
    ap_clk : in STD_LOGIC;
    ap_done : out STD_LOGIC;
    ap_idle : out STD_LOGIC;
    ap_ready : out STD_LOGIC;
    ap_rst : in STD_LOGIC;
    ap_start : in STD_LOGIC;
    c_d0 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    din_1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    wr_en : in STD_LOGIC;
    wr_en_1 : in STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of design_1 : entity is "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=3,numReposBlks=3,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=1,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of design_1 : entity is "design_1.hwdef";
end design_1;

architecture STRUCTURE of design_1 is
  component design_1_simple_0_0 is
  port (
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
  end component design_1_simple_0_0;
  component design_1_fifo_generator_0_0 is
  port (
    clk : in STD_LOGIC;
    srst : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    wr_en : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    full : out STD_LOGIC;
    empty : out STD_LOGIC
  );
  end component design_1_fifo_generator_0_0;
  component design_1_fifo_generator_0_1 is
  port (
    clk : in STD_LOGIC;
    srst : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    wr_en : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    full : out STD_LOGIC;
    empty : out STD_LOGIC
  );
  end component design_1_fifo_generator_0_1;
  signal Net : STD_LOGIC;
  signal Net1 : STD_LOGIC;
  signal ap_start_1 : STD_LOGIC;
  signal \^din_1\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal din_1_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal fifo_generator_0_dout : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal fifo_generator_1_dout : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal simple_0_a_ce0 : STD_LOGIC;
  signal simple_0_ap_done : STD_LOGIC;
  signal simple_0_ap_idle : STD_LOGIC;
  signal simple_0_ap_ready : STD_LOGIC;
  signal simple_0_b_ce0 : STD_LOGIC;
  signal simple_0_c_d0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^wr_en_1\ : STD_LOGIC;
  signal wr_en_1_1 : STD_LOGIC;
  signal NLW_fifo_generator_0_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_generator_0_full_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_generator_1_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_generator_1_full_UNCONNECTED : STD_LOGIC;
  signal NLW_simple_0_c_ce0_UNCONNECTED : STD_LOGIC;
  signal NLW_simple_0_c_we0_UNCONNECTED : STD_LOGIC;
  signal NLW_simple_0_a_address0_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_simple_0_ap_return_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_simple_0_b_address0_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_simple_0_c_address0_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
begin
  Net <= ap_clk;
  Net1 <= ap_rst;
  \^din_1\(31 downto 0) <= din(31 downto 0);
  \^wr_en_1\ <= wr_en;
  ap_done <= simple_0_ap_done;
  ap_idle <= simple_0_ap_idle;
  ap_ready <= simple_0_ap_ready;
  ap_start_1 <= ap_start;
  c_d0(31 downto 0) <= simple_0_c_d0(31 downto 0);
  din_1_1(31 downto 0) <= din_1(31 downto 0);
  wr_en_1_1 <= wr_en_1;
fifo_generator_0: component design_1_fifo_generator_0_0
     port map (
      clk => Net,
      din(31 downto 0) => \^din_1\(31 downto 0),
      dout(31 downto 0) => fifo_generator_0_dout(31 downto 0),
      empty => NLW_fifo_generator_0_empty_UNCONNECTED,
      full => NLW_fifo_generator_0_full_UNCONNECTED,
      rd_en => simple_0_a_ce0,
      srst => Net1,
      wr_en => \^wr_en_1\
    );
fifo_generator_1: component design_1_fifo_generator_0_1
     port map (
      clk => Net,
      din(31 downto 0) => din_1_1(31 downto 0),
      dout(31 downto 0) => fifo_generator_1_dout(31 downto 0),
      empty => NLW_fifo_generator_1_empty_UNCONNECTED,
      full => NLW_fifo_generator_1_full_UNCONNECTED,
      rd_en => simple_0_b_ce0,
      srst => Net1,
      wr_en => wr_en_1_1
    );
simple_0: component design_1_simple_0_0
     port map (
      a_address0(2 downto 0) => NLW_simple_0_a_address0_UNCONNECTED(2 downto 0),
      a_ce0 => simple_0_a_ce0,
      a_q0(31 downto 0) => fifo_generator_0_dout(31 downto 0),
      ap_clk => Net,
      ap_done => simple_0_ap_done,
      ap_idle => simple_0_ap_idle,
      ap_ready => simple_0_ap_ready,
      ap_return(31 downto 0) => NLW_simple_0_ap_return_UNCONNECTED(31 downto 0),
      ap_rst => Net1,
      ap_start => ap_start_1,
      b_address0(2 downto 0) => NLW_simple_0_b_address0_UNCONNECTED(2 downto 0),
      b_ce0 => simple_0_b_ce0,
      b_q0(31 downto 0) => fifo_generator_1_dout(31 downto 0),
      c_address0(2 downto 0) => NLW_simple_0_c_address0_UNCONNECTED(2 downto 0),
      c_ce0 => NLW_simple_0_c_ce0_UNCONNECTED,
      c_d0(31 downto 0) => simple_0_c_d0(31 downto 0),
      c_we0 => NLW_simple_0_c_we0_UNCONNECTED
    );
end STRUCTURE;
