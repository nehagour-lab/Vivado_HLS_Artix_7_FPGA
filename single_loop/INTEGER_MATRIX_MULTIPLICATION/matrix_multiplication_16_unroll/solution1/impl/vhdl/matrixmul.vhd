-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2017.2
-- Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity matrixmul is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    a_0_address0 : OUT STD_LOGIC_VECTOR (1 downto 0);
    a_0_ce0 : OUT STD_LOGIC;
    a_0_q0 : IN STD_LOGIC_VECTOR (7 downto 0);
    a_1_address0 : OUT STD_LOGIC_VECTOR (1 downto 0);
    a_1_ce0 : OUT STD_LOGIC;
    a_1_q0 : IN STD_LOGIC_VECTOR (7 downto 0);
    a_2_address0 : OUT STD_LOGIC_VECTOR (1 downto 0);
    a_2_ce0 : OUT STD_LOGIC;
    a_2_q0 : IN STD_LOGIC_VECTOR (7 downto 0);
    b_0_address0 : OUT STD_LOGIC_VECTOR (1 downto 0);
    b_0_ce0 : OUT STD_LOGIC;
    b_0_q0 : IN STD_LOGIC_VECTOR (7 downto 0);
    b_0_address1 : OUT STD_LOGIC_VECTOR (1 downto 0);
    b_0_ce1 : OUT STD_LOGIC;
    b_0_q1 : IN STD_LOGIC_VECTOR (7 downto 0);
    b_1_address0 : OUT STD_LOGIC_VECTOR (1 downto 0);
    b_1_ce0 : OUT STD_LOGIC;
    b_1_q0 : IN STD_LOGIC_VECTOR (7 downto 0);
    b_1_address1 : OUT STD_LOGIC_VECTOR (1 downto 0);
    b_1_ce1 : OUT STD_LOGIC;
    b_1_q1 : IN STD_LOGIC_VECTOR (7 downto 0);
    b_2_address0 : OUT STD_LOGIC_VECTOR (1 downto 0);
    b_2_ce0 : OUT STD_LOGIC;
    b_2_q0 : IN STD_LOGIC_VECTOR (7 downto 0);
    b_2_address1 : OUT STD_LOGIC_VECTOR (1 downto 0);
    b_2_ce1 : OUT STD_LOGIC;
    b_2_q1 : IN STD_LOGIC_VECTOR (7 downto 0);
    res_address0 : OUT STD_LOGIC_VECTOR (3 downto 0);
    res_ce0 : OUT STD_LOGIC;
    res_we0 : OUT STD_LOGIC;
    res_d0 : OUT STD_LOGIC_VECTOR (15 downto 0);
    res_address1 : OUT STD_LOGIC_VECTOR (3 downto 0);
    res_ce1 : OUT STD_LOGIC;
    res_we1 : OUT STD_LOGIC;
    res_d1 : OUT STD_LOGIC_VECTOR (15 downto 0) );
end;


architecture behav of matrixmul is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "matrixmul,hls_ip_2017_2,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7a35tcpg236-3,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=8.001000,HLS_SYN_LAT=10,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=6,HLS_SYN_FF=251,HLS_SYN_LUT=367}";
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (3 downto 0) := "0010";
    constant ap_ST_fsm_pp0_stage1 : STD_LOGIC_VECTOR (3 downto 0) := "0100";
    constant ap_ST_fsm_state7 : STD_LOGIC_VECTOR (3 downto 0) := "1000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv64_0 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
    constant ap_const_lv64_1 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000001";
    constant ap_const_lv64_2 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000010";
    constant ap_const_lv2_3 : STD_LOGIC_VECTOR (1 downto 0) := "11";
    constant ap_const_lv2_1 : STD_LOGIC_VECTOR (1 downto 0) := "01";
    constant ap_const_lv5_1 : STD_LOGIC_VECTOR (4 downto 0) := "00001";
    constant ap_const_lv5_2 : STD_LOGIC_VECTOR (4 downto 0) := "00010";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";

    signal ap_CS_fsm : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal i_reg_220 : STD_LOGIC_VECTOR (1 downto 0);
    signal ap_reg_pp0_iter1_i_reg_220 : STD_LOGIC_VECTOR (1 downto 0);
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_block_state2_pp0_stage0_iter0 : BOOLEAN;
    signal ap_block_state4_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_state6_pp0_stage0_iter2 : BOOLEAN;
    signal ap_block_pp0_stage0_flag00011001 : BOOLEAN;
    signal reg_232 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_CS_fsm_pp0_stage1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage1 : signal is "none";
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC := '0';
    signal ap_block_state3_pp0_stage1_iter0 : BOOLEAN;
    signal ap_block_state5_pp0_stage1_iter1 : BOOLEAN;
    signal ap_block_pp0_stage1_flag00011001 : BOOLEAN;
    signal exitcond2_reg_463 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal reg_236 : STD_LOGIC_VECTOR (7 downto 0);
    signal reg_240 : STD_LOGIC_VECTOR (7 downto 0);
    signal exitcond2_fu_244_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_reg_pp0_iter1_exitcond2_reg_463 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_1_fu_250_p2 : STD_LOGIC_VECTOR (1 downto 0);
    signal i_1_reg_467 : STD_LOGIC_VECTOR (1 downto 0);
    signal a_0_load_reg_487 : STD_LOGIC_VECTOR (7 downto 0);
    signal a_1_load_reg_492 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_5_0_2_fu_263_p1 : STD_LOGIC_VECTOR (15 downto 0);
    signal tmp_5_0_2_reg_497 : STD_LOGIC_VECTOR (15 downto 0);
    signal tmp_7_0_2_fu_271_p2 : STD_LOGIC_VECTOR (15 downto 0);
    signal tmp_7_0_2_reg_502 : STD_LOGIC_VECTOR (15 downto 0);
    signal tmp_7_1_2_fu_281_p2 : STD_LOGIC_VECTOR (15 downto 0);
    signal tmp_7_1_2_reg_507 : STD_LOGIC_VECTOR (15 downto 0);
    signal b_2_load_2_reg_512 : STD_LOGIC_VECTOR (7 downto 0);
    signal grp_fu_373_p3 : STD_LOGIC_VECTOR (15 downto 0);
    signal tmp1_reg_517 : STD_LOGIC_VECTOR (15 downto 0);
    signal grp_fu_380_p3 : STD_LOGIC_VECTOR (15 downto 0);
    signal tmp2_reg_522 : STD_LOGIC_VECTOR (15 downto 0);
    signal grp_fu_387_p3 : STD_LOGIC_VECTOR (15 downto 0);
    signal tmp3_reg_527 : STD_LOGIC_VECTOR (15 downto 0);
    signal tmp_3_fu_326_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal tmp_3_reg_532 : STD_LOGIC_VECTOR (4 downto 0);
    signal grp_fu_411_p3 : STD_LOGIC_VECTOR (15 downto 0);
    signal tmp_8_2_2_reg_537 : STD_LOGIC_VECTOR (15 downto 0);
    signal ap_block_pp0_stage0_flag00011011 : BOOLEAN;
    signal ap_condition_pp0_exit_iter0_state2 : STD_LOGIC;
    signal ap_block_pp0_stage1_flag00011011 : BOOLEAN;
    signal ap_enable_reg_pp0_iter2 : STD_LOGIC := '0';
    signal i_phi_fu_224_p4 : STD_LOGIC_VECTOR (1 downto 0);
    signal ap_block_pp0_stage0_flag00000000 : BOOLEAN;
    signal tmp_fu_256_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_3_cast_fu_332_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_block_pp0_stage1_flag00000000 : BOOLEAN;
    signal tmp_4_cast_fu_343_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_8_cast_fu_368_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal grp_fu_395_p3 : STD_LOGIC_VECTOR (15 downto 0);
    signal grp_fu_403_p3 : STD_LOGIC_VECTOR (15 downto 0);
    signal tmp_7_0_2_fu_271_p0 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_7_0_2_fu_271_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_7_1_2_fu_281_p0 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_7_1_2_fu_281_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_7_2_2_fu_305_p0 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_7_2_2_fu_305_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_2_fu_314_p3 : STD_LOGIC_VECTOR (3 downto 0);
    signal p_shl_cast_fu_322_p1 : STD_LOGIC_VECTOR (4 downto 0);
    signal tmp_cast_fu_310_p1 : STD_LOGIC_VECTOR (4 downto 0);
    signal tmp_4_fu_337_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal tmp_8_fu_363_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal grp_fu_373_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_5_fu_287_p1 : STD_LOGIC_VECTOR (15 downto 0);
    signal grp_fu_380_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal grp_fu_387_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal grp_fu_387_p2 : STD_LOGIC_VECTOR (15 downto 0);
    signal grp_fu_395_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_5_0_1_fu_348_p1 : STD_LOGIC_VECTOR (15 downto 0);
    signal grp_fu_403_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal grp_fu_411_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_CS_fsm_state7 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state7 : signal is "none";
    signal ap_NS_fsm : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_enable_pp0 : STD_LOGIC;

    component matrixmul_mac_mulbkb IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        din2_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        din0 : IN STD_LOGIC_VECTOR (7 downto 0);
        din1 : IN STD_LOGIC_VECTOR (7 downto 0);
        din2 : IN STD_LOGIC_VECTOR (15 downto 0);
        dout : OUT STD_LOGIC_VECTOR (15 downto 0) );
    end component;


    component matrixmul_mac_mulcud IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        din2_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        din0 : IN STD_LOGIC_VECTOR (7 downto 0);
        din1 : IN STD_LOGIC_VECTOR (7 downto 0);
        din2 : IN STD_LOGIC_VECTOR (15 downto 0);
        dout : OUT STD_LOGIC_VECTOR (15 downto 0) );
    end component;



begin
    matrixmul_mac_mulbkb_U1 : component matrixmul_mac_mulbkb
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 8,
        din1_WIDTH => 8,
        din2_WIDTH => 16,
        dout_WIDTH => 16)
    port map (
        din0 => reg_232,
        din1 => grp_fu_373_p1,
        din2 => tmp_7_0_2_reg_502,
        dout => grp_fu_373_p3);

    matrixmul_mac_mulbkb_U2 : component matrixmul_mac_mulbkb
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 8,
        din1_WIDTH => 8,
        din2_WIDTH => 16,
        dout_WIDTH => 16)
    port map (
        din0 => reg_236,
        din1 => grp_fu_380_p1,
        din2 => tmp_7_1_2_reg_507,
        dout => grp_fu_380_p3);

    matrixmul_mac_mulbkb_U3 : component matrixmul_mac_mulbkb
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 8,
        din1_WIDTH => 8,
        din2_WIDTH => 16,
        dout_WIDTH => 16)
    port map (
        din0 => reg_240,
        din1 => grp_fu_387_p1,
        din2 => grp_fu_387_p2,
        dout => grp_fu_387_p3);

    matrixmul_mac_mulcud_U4 : component matrixmul_mac_mulcud
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 8,
        din1_WIDTH => 8,
        din2_WIDTH => 16,
        dout_WIDTH => 16)
    port map (
        din0 => reg_232,
        din1 => grp_fu_395_p1,
        din2 => tmp1_reg_517,
        dout => grp_fu_395_p3);

    matrixmul_mac_mulcud_U5 : component matrixmul_mac_mulcud
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 8,
        din1_WIDTH => 8,
        din2_WIDTH => 16,
        dout_WIDTH => 16)
    port map (
        din0 => reg_236,
        din1 => grp_fu_403_p1,
        din2 => tmp2_reg_522,
        dout => grp_fu_403_p3);

    matrixmul_mac_mulcud_U6 : component matrixmul_mac_mulcud
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 8,
        din1_WIDTH => 8,
        din2_WIDTH => 16,
        dout_WIDTH => 16)
    port map (
        din0 => reg_240,
        din1 => grp_fu_411_p1,
        din2 => tmp3_reg_527,
        dout => grp_fu_411_p3);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter0_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter0 <= ap_const_logic_0;
            else
                if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_block_pp0_stage0_flag00011011 = ap_const_boolean_0) and (ap_const_logic_1 = ap_condition_pp0_exit_iter0_state2))) then 
                    ap_enable_reg_pp0_iter0 <= ap_const_logic_0;
                elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                    ap_enable_reg_pp0_iter0 <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter1_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
            else
                if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_block_pp0_stage1_flag00011011 = ap_const_boolean_0))) then
                    if ((ap_const_logic_1 = ap_condition_pp0_exit_iter0_state2)) then 
                        ap_enable_reg_pp0_iter1 <= (ap_condition_pp0_exit_iter0_state2 xor ap_const_logic_1);
                    elsif ((ap_const_boolean_1 = ap_const_boolean_1)) then 
                        ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
                    end if;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter2_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter2 <= ap_const_logic_0;
            else
                if ((((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_block_pp0_stage0_flag00011011 = ap_const_boolean_0)) or ((ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_block_pp0_stage1_flag00011011 = ap_const_boolean_0)))) then 
                    ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
                elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                    ap_enable_reg_pp0_iter2 <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    i_reg_220_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_block_pp0_stage0_flag00011001 = ap_const_boolean_0) and (exitcond2_reg_463 = ap_const_lv1_0) and (ap_const_logic_1 = ap_enable_reg_pp0_iter1))) then 
                i_reg_220 <= i_1_reg_467;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                i_reg_220 <= ap_const_lv2_0;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_block_pp0_stage1_flag00011001 = ap_const_boolean_0) and (exitcond2_reg_463 = ap_const_lv1_0))) then
                a_0_load_reg_487 <= a_0_q0;
                a_1_load_reg_492 <= a_1_q0;
                tmp_5_0_2_reg_497 <= tmp_5_0_2_fu_263_p1;
                tmp_7_0_2_reg_502 <= tmp_7_0_2_fu_271_p2;
                tmp_7_1_2_reg_507 <= tmp_7_1_2_fu_281_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_block_pp0_stage0_flag00011001 = ap_const_boolean_0))) then
                ap_reg_pp0_iter1_exitcond2_reg_463 <= exitcond2_reg_463;
                ap_reg_pp0_iter1_i_reg_220 <= i_reg_220;
                exitcond2_reg_463 <= exitcond2_fu_244_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_const_logic_1 = ap_enable_reg_pp0_iter0) and (ap_block_pp0_stage1_flag00011001 = ap_const_boolean_0) and (exitcond2_reg_463 = ap_const_lv1_0))) then
                b_2_load_2_reg_512 <= b_2_q1;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_block_pp0_stage0_flag00011001 = ap_const_boolean_0) and (ap_const_logic_1 = ap_enable_reg_pp0_iter0))) then
                i_1_reg_467 <= i_1_fu_250_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((((ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_const_logic_1 = ap_enable_reg_pp0_iter0) and (ap_block_pp0_stage1_flag00011001 = ap_const_boolean_0) and (exitcond2_reg_463 = ap_const_lv1_0)) or ((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_block_pp0_stage0_flag00011001 = ap_const_boolean_0) and (exitcond2_reg_463 = ap_const_lv1_0) and (ap_const_logic_1 = ap_enable_reg_pp0_iter1)))) then
                reg_232 <= b_0_q0;
                reg_236 <= b_1_q0;
                reg_240 <= b_2_q0;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_block_pp0_stage0_flag00011001 = ap_const_boolean_0) and (exitcond2_reg_463 = ap_const_lv1_0) and (ap_const_logic_1 = ap_enable_reg_pp0_iter1))) then
                tmp1_reg_517 <= grp_fu_373_p3;
                tmp2_reg_522 <= grp_fu_380_p3;
                tmp3_reg_527 <= grp_fu_387_p3;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_block_pp0_stage1_flag00011001 = ap_const_boolean_0) and (ap_const_lv1_0 = ap_reg_pp0_iter1_exitcond2_reg_463))) then
                tmp_3_reg_532 <= tmp_3_fu_326_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_block_pp0_stage1_flag00011001 = ap_const_boolean_0) and (ap_const_logic_1 = ap_enable_reg_pp0_iter1) and (ap_const_lv1_0 = ap_reg_pp0_iter1_exitcond2_reg_463))) then
                tmp_8_2_2_reg_537 <= grp_fu_411_p3;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1, exitcond2_fu_244_p2, ap_block_pp0_stage0_flag00011011, ap_block_pp0_stage1_flag00011011, ap_enable_reg_pp0_iter2)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_pp0_stage0 => 
                if (((ap_block_pp0_stage0_flag00011011 = ap_const_boolean_0) and not(((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_block_pp0_stage0_flag00011011 = ap_const_boolean_0) and (ap_const_logic_1 = ap_enable_reg_pp0_iter2) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0))) and not(((ap_const_logic_1 = ap_enable_reg_pp0_iter0) and (ap_block_pp0_stage0_flag00011011 = ap_const_boolean_0) and (exitcond2_fu_244_p2 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0))))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage1;
                elsif ((((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_block_pp0_stage0_flag00011011 = ap_const_boolean_0) and (ap_const_logic_1 = ap_enable_reg_pp0_iter2) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0)) or ((ap_const_logic_1 = ap_enable_reg_pp0_iter0) and (ap_block_pp0_stage0_flag00011011 = ap_const_boolean_0) and (exitcond2_fu_244_p2 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0)))) then
                    ap_NS_fsm <= ap_ST_fsm_state7;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                end if;
            when ap_ST_fsm_pp0_stage1 => 
                if ((ap_block_pp0_stage1_flag00011011 = ap_const_boolean_0)) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage1;
                end if;
            when ap_ST_fsm_state7 => 
                ap_NS_fsm <= ap_ST_fsm_state1;
            when others =>  
                ap_NS_fsm <= "XXXX";
        end case;
    end process;
    a_0_address0 <= tmp_fu_256_p1(2 - 1 downto 0);

    a_0_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_flag00011001, ap_enable_reg_pp0_iter0)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_block_pp0_stage0_flag00011001 = ap_const_boolean_0) and (ap_const_logic_1 = ap_enable_reg_pp0_iter0))) then 
            a_0_ce0 <= ap_const_logic_1;
        else 
            a_0_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    a_1_address0 <= tmp_fu_256_p1(2 - 1 downto 0);

    a_1_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_flag00011001, ap_enable_reg_pp0_iter0)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_block_pp0_stage0_flag00011001 = ap_const_boolean_0) and (ap_const_logic_1 = ap_enable_reg_pp0_iter0))) then 
            a_1_ce0 <= ap_const_logic_1;
        else 
            a_1_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    a_2_address0 <= tmp_fu_256_p1(2 - 1 downto 0);

    a_2_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_flag00011001, ap_enable_reg_pp0_iter0)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_block_pp0_stage0_flag00011001 = ap_const_boolean_0) and (ap_const_logic_1 = ap_enable_reg_pp0_iter0))) then 
            a_2_ce0 <= ap_const_logic_1;
        else 
            a_2_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(1);
    ap_CS_fsm_pp0_stage1 <= ap_CS_fsm(2);
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state7 <= ap_CS_fsm(3);
        ap_block_pp0_stage0_flag00000000 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_flag00011001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_flag00011011 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage1_flag00000000 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage1_flag00011001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage1_flag00011011 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state2_pp0_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state3_pp0_stage1_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state4_pp0_stage0_iter1 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state5_pp0_stage1_iter1 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state6_pp0_stage0_iter2 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_condition_pp0_exit_iter0_state2_assign_proc : process(exitcond2_fu_244_p2)
    begin
        if ((exitcond2_fu_244_p2 = ap_const_lv1_1)) then 
            ap_condition_pp0_exit_iter0_state2 <= ap_const_logic_1;
        else 
            ap_condition_pp0_exit_iter0_state2 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_assign_proc : process(ap_CS_fsm_state7)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state7)) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;

    ap_enable_pp0 <= (ap_idle_pp0 xor ap_const_logic_1);

    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_const_logic_0 = ap_start) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter2)
    begin
        if (((ap_const_logic_0 = ap_enable_reg_pp0_iter0) and (ap_const_logic_0 = ap_enable_reg_pp0_iter1) and (ap_const_logic_0 = ap_enable_reg_pp0_iter2))) then 
            ap_idle_pp0 <= ap_const_logic_1;
        else 
            ap_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_ready_assign_proc : process(ap_CS_fsm_state7)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state7)) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;


    b_0_address0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_CS_fsm_pp0_stage1, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_flag00000000, ap_block_pp0_stage1_flag00000000)
    begin
        if ((ap_const_logic_1 = ap_enable_reg_pp0_iter0)) then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_block_pp0_stage1_flag00000000 = ap_const_boolean_0))) then 
                b_0_address0 <= ap_const_lv64_1(2 - 1 downto 0);
            elsif (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_block_pp0_stage0_flag00000000 = ap_const_boolean_0))) then 
                b_0_address0 <= ap_const_lv64_0(2 - 1 downto 0);
            else 
                b_0_address0 <= "XX";
            end if;
        else 
            b_0_address0 <= "XX";
        end if; 
    end process;

    b_0_address1 <= ap_const_lv64_2(2 - 1 downto 0);

    b_0_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_flag00011001, ap_CS_fsm_pp0_stage1, ap_enable_reg_pp0_iter0, ap_block_pp0_stage1_flag00011001)
    begin
        if ((((ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_const_logic_1 = ap_enable_reg_pp0_iter0) and (ap_block_pp0_stage1_flag00011001 = ap_const_boolean_0)) or ((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_block_pp0_stage0_flag00011001 = ap_const_boolean_0) and (ap_const_logic_1 = ap_enable_reg_pp0_iter0)))) then 
            b_0_ce0 <= ap_const_logic_1;
        else 
            b_0_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    b_0_ce1_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_flag00011001, ap_enable_reg_pp0_iter0)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_block_pp0_stage0_flag00011001 = ap_const_boolean_0) and (ap_const_logic_1 = ap_enable_reg_pp0_iter0))) then 
            b_0_ce1 <= ap_const_logic_1;
        else 
            b_0_ce1 <= ap_const_logic_0;
        end if; 
    end process;


    b_1_address0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_CS_fsm_pp0_stage1, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_flag00000000, ap_block_pp0_stage1_flag00000000)
    begin
        if ((ap_const_logic_1 = ap_enable_reg_pp0_iter0)) then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_block_pp0_stage1_flag00000000 = ap_const_boolean_0))) then 
                b_1_address0 <= ap_const_lv64_1(2 - 1 downto 0);
            elsif (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_block_pp0_stage0_flag00000000 = ap_const_boolean_0))) then 
                b_1_address0 <= ap_const_lv64_0(2 - 1 downto 0);
            else 
                b_1_address0 <= "XX";
            end if;
        else 
            b_1_address0 <= "XX";
        end if; 
    end process;

    b_1_address1 <= ap_const_lv64_2(2 - 1 downto 0);

    b_1_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_flag00011001, ap_CS_fsm_pp0_stage1, ap_enable_reg_pp0_iter0, ap_block_pp0_stage1_flag00011001)
    begin
        if ((((ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_const_logic_1 = ap_enable_reg_pp0_iter0) and (ap_block_pp0_stage1_flag00011001 = ap_const_boolean_0)) or ((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_block_pp0_stage0_flag00011001 = ap_const_boolean_0) and (ap_const_logic_1 = ap_enable_reg_pp0_iter0)))) then 
            b_1_ce0 <= ap_const_logic_1;
        else 
            b_1_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    b_1_ce1_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_flag00011001, ap_enable_reg_pp0_iter0)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_block_pp0_stage0_flag00011001 = ap_const_boolean_0) and (ap_const_logic_1 = ap_enable_reg_pp0_iter0))) then 
            b_1_ce1 <= ap_const_logic_1;
        else 
            b_1_ce1 <= ap_const_logic_0;
        end if; 
    end process;


    b_2_address0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_CS_fsm_pp0_stage1, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_flag00000000, ap_block_pp0_stage1_flag00000000)
    begin
        if ((ap_const_logic_1 = ap_enable_reg_pp0_iter0)) then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_block_pp0_stage1_flag00000000 = ap_const_boolean_0))) then 
                b_2_address0 <= ap_const_lv64_1(2 - 1 downto 0);
            elsif (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_block_pp0_stage0_flag00000000 = ap_const_boolean_0))) then 
                b_2_address0 <= ap_const_lv64_0(2 - 1 downto 0);
            else 
                b_2_address0 <= "XX";
            end if;
        else 
            b_2_address0 <= "XX";
        end if; 
    end process;

    b_2_address1 <= ap_const_lv64_2(2 - 1 downto 0);

    b_2_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_flag00011001, ap_CS_fsm_pp0_stage1, ap_enable_reg_pp0_iter0, ap_block_pp0_stage1_flag00011001)
    begin
        if ((((ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_const_logic_1 = ap_enable_reg_pp0_iter0) and (ap_block_pp0_stage1_flag00011001 = ap_const_boolean_0)) or ((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_block_pp0_stage0_flag00011001 = ap_const_boolean_0) and (ap_const_logic_1 = ap_enable_reg_pp0_iter0)))) then 
            b_2_ce0 <= ap_const_logic_1;
        else 
            b_2_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    b_2_ce1_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_flag00011001, ap_enable_reg_pp0_iter0)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_block_pp0_stage0_flag00011001 = ap_const_boolean_0) and (ap_const_logic_1 = ap_enable_reg_pp0_iter0))) then 
            b_2_ce1 <= ap_const_logic_1;
        else 
            b_2_ce1 <= ap_const_logic_0;
        end if; 
    end process;

    exitcond2_fu_244_p2 <= "1" when (i_phi_fu_224_p4 = ap_const_lv2_3) else "0";
    grp_fu_373_p1 <= tmp_5_fu_287_p1(8 - 1 downto 0);
    grp_fu_380_p1 <= tmp_5_fu_287_p1(8 - 1 downto 0);
    grp_fu_387_p1 <= tmp_5_fu_287_p1(8 - 1 downto 0);
    grp_fu_387_p2 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(std_logic_vector(signed(tmp_7_2_2_fu_305_p0) * signed(tmp_7_2_2_fu_305_p1))), 16));
    grp_fu_395_p1 <= tmp_5_0_1_fu_348_p1(8 - 1 downto 0);
    grp_fu_403_p1 <= tmp_5_0_1_fu_348_p1(8 - 1 downto 0);
    grp_fu_411_p1 <= tmp_5_0_1_fu_348_p1(8 - 1 downto 0);
    i_1_fu_250_p2 <= std_logic_vector(unsigned(i_phi_fu_224_p4) + unsigned(ap_const_lv2_1));

    i_phi_fu_224_p4_assign_proc : process(i_reg_220, ap_CS_fsm_pp0_stage0, exitcond2_reg_463, ap_enable_reg_pp0_iter1, i_1_reg_467, ap_block_pp0_stage0_flag00000000)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (exitcond2_reg_463 = ap_const_lv1_0) and (ap_const_logic_1 = ap_enable_reg_pp0_iter1) and (ap_block_pp0_stage0_flag00000000 = ap_const_boolean_0))) then 
            i_phi_fu_224_p4 <= i_1_reg_467;
        else 
            i_phi_fu_224_p4 <= i_reg_220;
        end if; 
    end process;

    p_shl_cast_fu_322_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_2_fu_314_p3),5));

    res_address0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_CS_fsm_pp0_stage1, ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter2, ap_block_pp0_stage0_flag00000000, tmp_3_cast_fu_332_p1, ap_block_pp0_stage1_flag00000000, tmp_8_cast_fu_368_p1)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_block_pp0_stage0_flag00000000 = ap_const_boolean_0) and (ap_const_logic_1 = ap_enable_reg_pp0_iter2))) then 
            res_address0 <= tmp_8_cast_fu_368_p1(4 - 1 downto 0);
        elsif (((ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_const_logic_1 = ap_enable_reg_pp0_iter1) and (ap_block_pp0_stage1_flag00000000 = ap_const_boolean_0))) then 
            res_address0 <= tmp_3_cast_fu_332_p1(4 - 1 downto 0);
        else 
            res_address0 <= "XXXX";
        end if; 
    end process;

    res_address1 <= tmp_4_cast_fu_343_p1(4 - 1 downto 0);

    res_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_flag00011001, ap_CS_fsm_pp0_stage1, ap_block_pp0_stage1_flag00011001, ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter2)
    begin
        if ((((ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_block_pp0_stage1_flag00011001 = ap_const_boolean_0) and (ap_const_logic_1 = ap_enable_reg_pp0_iter1)) or ((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_block_pp0_stage0_flag00011001 = ap_const_boolean_0) and (ap_const_logic_1 = ap_enable_reg_pp0_iter2)))) then 
            res_ce0 <= ap_const_logic_1;
        else 
            res_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    res_ce1_assign_proc : process(ap_CS_fsm_pp0_stage1, ap_block_pp0_stage1_flag00011001, ap_enable_reg_pp0_iter1)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_block_pp0_stage1_flag00011001 = ap_const_boolean_0) and (ap_const_logic_1 = ap_enable_reg_pp0_iter1))) then 
            res_ce1 <= ap_const_logic_1;
        else 
            res_ce1 <= ap_const_logic_0;
        end if; 
    end process;


    res_d0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_CS_fsm_pp0_stage1, ap_enable_reg_pp0_iter1, tmp_8_2_2_reg_537, ap_enable_reg_pp0_iter2, ap_block_pp0_stage0_flag00000000, ap_block_pp0_stage1_flag00000000, grp_fu_395_p3)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_block_pp0_stage0_flag00000000 = ap_const_boolean_0) and (ap_const_logic_1 = ap_enable_reg_pp0_iter2))) then 
            res_d0 <= tmp_8_2_2_reg_537;
        elsif (((ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_const_logic_1 = ap_enable_reg_pp0_iter1) and (ap_block_pp0_stage1_flag00000000 = ap_const_boolean_0))) then 
            res_d0 <= grp_fu_395_p3;
        else 
            res_d0 <= "XXXXXXXXXXXXXXXX";
        end if; 
    end process;

    res_d1 <= grp_fu_403_p3;

    res_we0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_flag00011001, ap_CS_fsm_pp0_stage1, ap_block_pp0_stage1_flag00011001, ap_enable_reg_pp0_iter1, ap_reg_pp0_iter1_exitcond2_reg_463, ap_enable_reg_pp0_iter2)
    begin
        if ((((ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_block_pp0_stage1_flag00011001 = ap_const_boolean_0) and (ap_const_logic_1 = ap_enable_reg_pp0_iter1) and (ap_const_lv1_0 = ap_reg_pp0_iter1_exitcond2_reg_463)) or ((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_block_pp0_stage0_flag00011001 = ap_const_boolean_0) and (ap_const_lv1_0 = ap_reg_pp0_iter1_exitcond2_reg_463) and (ap_const_logic_1 = ap_enable_reg_pp0_iter2)))) then 
            res_we0 <= ap_const_logic_1;
        else 
            res_we0 <= ap_const_logic_0;
        end if; 
    end process;


    res_we1_assign_proc : process(ap_CS_fsm_pp0_stage1, ap_block_pp0_stage1_flag00011001, ap_enable_reg_pp0_iter1, ap_reg_pp0_iter1_exitcond2_reg_463)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_block_pp0_stage1_flag00011001 = ap_const_boolean_0) and (ap_const_logic_1 = ap_enable_reg_pp0_iter1) and (ap_const_lv1_0 = ap_reg_pp0_iter1_exitcond2_reg_463))) then 
            res_we1 <= ap_const_logic_1;
        else 
            res_we1 <= ap_const_logic_0;
        end if; 
    end process;

    tmp_2_fu_314_p3 <= (ap_reg_pp0_iter1_i_reg_220 & ap_const_lv2_0);
        tmp_3_cast_fu_332_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(tmp_3_fu_326_p2),64));

    tmp_3_fu_326_p2 <= std_logic_vector(unsigned(p_shl_cast_fu_322_p1) - unsigned(tmp_cast_fu_310_p1));
        tmp_4_cast_fu_343_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(tmp_4_fu_337_p2),64));

    tmp_4_fu_337_p2 <= std_logic_vector(unsigned(tmp_3_fu_326_p2) + unsigned(ap_const_lv5_1));
        tmp_5_0_1_fu_348_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(a_1_load_reg_492),16));

        tmp_5_0_2_fu_263_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(a_2_q0),16));

        tmp_5_fu_287_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(a_0_load_reg_487),16));

    tmp_7_0_2_fu_271_p0 <= b_0_q1;
    tmp_7_0_2_fu_271_p1 <= tmp_5_0_2_fu_263_p1(8 - 1 downto 0);
    tmp_7_0_2_fu_271_p2 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(std_logic_vector(signed(tmp_7_0_2_fu_271_p0) * signed(tmp_7_0_2_fu_271_p1))), 16));
    tmp_7_1_2_fu_281_p0 <= b_1_q1;
    tmp_7_1_2_fu_281_p1 <= tmp_5_0_2_fu_263_p1(8 - 1 downto 0);
    tmp_7_1_2_fu_281_p2 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(std_logic_vector(signed(tmp_7_1_2_fu_281_p0) * signed(tmp_7_1_2_fu_281_p1))), 16));
    tmp_7_2_2_fu_305_p0 <= b_2_load_2_reg_512;
    tmp_7_2_2_fu_305_p1 <= tmp_5_0_2_reg_497(8 - 1 downto 0);
        tmp_8_cast_fu_368_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(tmp_8_fu_363_p2),64));

    tmp_8_fu_363_p2 <= std_logic_vector(unsigned(tmp_3_reg_532) + unsigned(ap_const_lv5_2));
    tmp_cast_fu_310_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(ap_reg_pp0_iter1_i_reg_220),5));
    tmp_fu_256_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(i_phi_fu_224_p4),64));
end behav;
