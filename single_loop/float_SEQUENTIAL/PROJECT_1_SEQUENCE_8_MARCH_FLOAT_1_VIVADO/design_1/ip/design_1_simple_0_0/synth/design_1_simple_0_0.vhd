-- (c) Copyright 1995-2018 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:hls:simple:1.0
-- IP Revision: 1803081231

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY design_1_simple_0_0 IS
  PORT (
    a_ce0 : OUT STD_LOGIC;
    b_ce0 : OUT STD_LOGIC;
    c_ce0 : OUT STD_LOGIC;
    c_we0 : OUT STD_LOGIC;
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    ap_return : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    a_address0 : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    a_q0 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    b_address0 : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    b_q0 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    c_address0 : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    c_d0 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
  );
END design_1_simple_0_0;

ARCHITECTURE design_1_simple_0_0_arch OF design_1_simple_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF design_1_simple_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT simple IS
    PORT (
      a_ce0 : OUT STD_LOGIC;
      b_ce0 : OUT STD_LOGIC;
      c_ce0 : OUT STD_LOGIC;
      c_we0 : OUT STD_LOGIC;
      ap_clk : IN STD_LOGIC;
      ap_rst : IN STD_LOGIC;
      ap_start : IN STD_LOGIC;
      ap_done : OUT STD_LOGIC;
      ap_idle : OUT STD_LOGIC;
      ap_ready : OUT STD_LOGIC;
      ap_return : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      a_address0 : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      a_q0 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      b_address0 : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      b_q0 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      c_address0 : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      c_d0 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
    );
  END COMPONENT simple;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF design_1_simple_0_0_arch: ARCHITECTURE IS "simple,Vivado 2017.2";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF design_1_simple_0_0_arch : ARCHITECTURE IS "design_1_simple_0_0,simple,{}";
  ATTRIBUTE CORE_GENERATION_INFO : STRING;
  ATTRIBUTE CORE_GENERATION_INFO OF design_1_simple_0_0_arch: ARCHITECTURE IS "design_1_simple_0_0,simple,{x_ipProduct=Vivado 2017.2,x_ipVendor=xilinx.com,x_ipLibrary=hls,x_ipName=simple,x_ipVersion=1.0,x_ipCoreRevision=1803081231,x_ipLanguage=VHDL,x_ipSimLanguage=VHDL}";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_INFO OF ap_clk: SIGNAL IS "xilinx.com:signal:clock:1.0 ap_clk CLK";
  ATTRIBUTE X_INTERFACE_INFO OF ap_rst: SIGNAL IS "xilinx.com:signal:reset:1.0 ap_rst RST";
  ATTRIBUTE X_INTERFACE_INFO OF ap_start: SIGNAL IS "xilinx.com:interface:acc_handshake:1.0 ap_ctrl start";
  ATTRIBUTE X_INTERFACE_INFO OF ap_done: SIGNAL IS "xilinx.com:interface:acc_handshake:1.0 ap_ctrl done";
  ATTRIBUTE X_INTERFACE_INFO OF ap_idle: SIGNAL IS "xilinx.com:interface:acc_handshake:1.0 ap_ctrl idle";
  ATTRIBUTE X_INTERFACE_INFO OF ap_ready: SIGNAL IS "xilinx.com:interface:acc_handshake:1.0 ap_ctrl ready";
  ATTRIBUTE X_INTERFACE_INFO OF ap_return: SIGNAL IS "xilinx.com:signal:data:1.0 ap_return DATA";
  ATTRIBUTE X_INTERFACE_INFO OF a_address0: SIGNAL IS "xilinx.com:signal:data:1.0 a_address0 DATA";
  ATTRIBUTE X_INTERFACE_INFO OF a_q0: SIGNAL IS "xilinx.com:signal:data:1.0 a_q0 DATA";
  ATTRIBUTE X_INTERFACE_INFO OF b_address0: SIGNAL IS "xilinx.com:signal:data:1.0 b_address0 DATA";
  ATTRIBUTE X_INTERFACE_INFO OF b_q0: SIGNAL IS "xilinx.com:signal:data:1.0 b_q0 DATA";
  ATTRIBUTE X_INTERFACE_INFO OF c_address0: SIGNAL IS "xilinx.com:signal:data:1.0 c_address0 DATA";
  ATTRIBUTE X_INTERFACE_INFO OF c_d0: SIGNAL IS "xilinx.com:signal:data:1.0 c_d0 DATA";
BEGIN
  U0 : simple
    PORT MAP (
      a_ce0 => a_ce0,
      b_ce0 => b_ce0,
      c_ce0 => c_ce0,
      c_we0 => c_we0,
      ap_clk => ap_clk,
      ap_rst => ap_rst,
      ap_start => ap_start,
      ap_done => ap_done,
      ap_idle => ap_idle,
      ap_ready => ap_ready,
      ap_return => ap_return,
      a_address0 => a_address0,
      a_q0 => a_q0,
      b_address0 => b_address0,
      b_q0 => b_q0,
      c_address0 => c_address0,
      c_d0 => c_d0
    );
END design_1_simple_0_0_arch;
