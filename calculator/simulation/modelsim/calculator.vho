-- Copyright (C) 2017  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Intel and sold by Intel or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 17.0.0 Build 595 04/25/2017 SJ Lite Edition"

-- DATE "05/15/2022 17:30:49"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	DE10_LITE_Golden_Top IS
    PORT (
	ADC_CLK_10 : IN std_logic;
	MAX10_CLK1_50 : IN std_logic;
	MAX10_CLK2_50 : IN std_logic;
	HEX0S : OUT std_logic_vector(6 DOWNTO 0);
	HEX1S : OUT std_logic_vector(6 DOWNTO 0);
	HEX2S : OUT std_logic_vector(6 DOWNTO 0);
	HEX3S : OUT std_logic_vector(6 DOWNTO 0);
	HEX4S : OUT std_logic_vector(6 DOWNTO 0);
	HEX5S : OUT std_logic_vector(6 DOWNTO 0);
	HEXdp : OUT std_logic_vector(5 DOWNTO 0);
	KEY : IN std_logic_vector(1 DOWNTO 0);
	LEDR : OUT std_logic_vector(9 DOWNTO 0);
	SW : IN std_logic_vector(9 DOWNTO 0)
	);
END DE10_LITE_Golden_Top;

-- Design Ports Information
-- MAX10_CLK2_50	=>  Location: PIN_N14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0S[0]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0S[1]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0S[2]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0S[3]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0S[4]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0S[5]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0S[6]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1S[0]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1S[1]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1S[2]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1S[3]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1S[4]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1S[5]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1S[6]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2S[0]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2S[1]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2S[2]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2S[3]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2S[4]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2S[5]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2S[6]	=>  Location: PIN_B20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3S[0]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3S[1]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3S[2]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3S[3]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3S[4]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3S[5]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3S[6]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4S[0]	=>  Location: PIN_F20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4S[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4S[2]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4S[3]	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4S[4]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4S[5]	=>  Location: PIN_E20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4S[6]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5S[0]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5S[1]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5S[2]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5S[3]	=>  Location: PIN_N18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5S[4]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5S[5]	=>  Location: PIN_K20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5S[6]	=>  Location: PIN_J20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEXdp[0]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEXdp[1]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEXdp[2]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEXdp[3]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEXdp[4]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEXdp[5]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[8]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[9]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MAX10_CLK1_50	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_CLK_10	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF DE10_LITE_Golden_Top IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_ADC_CLK_10 : std_logic;
SIGNAL ww_MAX10_CLK1_50 : std_logic;
SIGNAL ww_MAX10_CLK2_50 : std_logic;
SIGNAL ww_HEX0S : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1S : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2S : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3S : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4S : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5S : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEXdp : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_SW : std_logic_vector(9 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \ADC_CLK_10~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \db2|out~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \MAX10_CLK1_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \MAX10_CLK2_50~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \HEX0S[0]~output_o\ : std_logic;
SIGNAL \HEX0S[1]~output_o\ : std_logic;
SIGNAL \HEX0S[2]~output_o\ : std_logic;
SIGNAL \HEX0S[3]~output_o\ : std_logic;
SIGNAL \HEX0S[4]~output_o\ : std_logic;
SIGNAL \HEX0S[5]~output_o\ : std_logic;
SIGNAL \HEX0S[6]~output_o\ : std_logic;
SIGNAL \HEX1S[0]~output_o\ : std_logic;
SIGNAL \HEX1S[1]~output_o\ : std_logic;
SIGNAL \HEX1S[2]~output_o\ : std_logic;
SIGNAL \HEX1S[3]~output_o\ : std_logic;
SIGNAL \HEX1S[4]~output_o\ : std_logic;
SIGNAL \HEX1S[5]~output_o\ : std_logic;
SIGNAL \HEX1S[6]~output_o\ : std_logic;
SIGNAL \HEX2S[0]~output_o\ : std_logic;
SIGNAL \HEX2S[1]~output_o\ : std_logic;
SIGNAL \HEX2S[2]~output_o\ : std_logic;
SIGNAL \HEX2S[3]~output_o\ : std_logic;
SIGNAL \HEX2S[4]~output_o\ : std_logic;
SIGNAL \HEX2S[5]~output_o\ : std_logic;
SIGNAL \HEX2S[6]~output_o\ : std_logic;
SIGNAL \HEX3S[0]~output_o\ : std_logic;
SIGNAL \HEX3S[1]~output_o\ : std_logic;
SIGNAL \HEX3S[2]~output_o\ : std_logic;
SIGNAL \HEX3S[3]~output_o\ : std_logic;
SIGNAL \HEX3S[4]~output_o\ : std_logic;
SIGNAL \HEX3S[5]~output_o\ : std_logic;
SIGNAL \HEX3S[6]~output_o\ : std_logic;
SIGNAL \HEX4S[0]~output_o\ : std_logic;
SIGNAL \HEX4S[1]~output_o\ : std_logic;
SIGNAL \HEX4S[2]~output_o\ : std_logic;
SIGNAL \HEX4S[3]~output_o\ : std_logic;
SIGNAL \HEX4S[4]~output_o\ : std_logic;
SIGNAL \HEX4S[5]~output_o\ : std_logic;
SIGNAL \HEX4S[6]~output_o\ : std_logic;
SIGNAL \HEX5S[0]~output_o\ : std_logic;
SIGNAL \HEX5S[1]~output_o\ : std_logic;
SIGNAL \HEX5S[2]~output_o\ : std_logic;
SIGNAL \HEX5S[3]~output_o\ : std_logic;
SIGNAL \HEX5S[4]~output_o\ : std_logic;
SIGNAL \HEX5S[5]~output_o\ : std_logic;
SIGNAL \HEX5S[6]~output_o\ : std_logic;
SIGNAL \HEXdp[0]~output_o\ : std_logic;
SIGNAL \HEXdp[1]~output_o\ : std_logic;
SIGNAL \HEXdp[2]~output_o\ : std_logic;
SIGNAL \HEXdp[3]~output_o\ : std_logic;
SIGNAL \HEXdp[4]~output_o\ : std_logic;
SIGNAL \HEXdp[5]~output_o\ : std_logic;
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \LEDR[4]~output_o\ : std_logic;
SIGNAL \LEDR[5]~output_o\ : std_logic;
SIGNAL \LEDR[6]~output_o\ : std_logic;
SIGNAL \LEDR[7]~output_o\ : std_logic;
SIGNAL \LEDR[8]~output_o\ : std_logic;
SIGNAL \LEDR[9]~output_o\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \mod|div|WideNor0~combout\ : std_logic;
SIGNAL \ADC_CLK_10~input_o\ : std_logic;
SIGNAL \ADC_CLK_10~inputclkctrl_outclk\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \db2|counter~0_combout\ : std_logic;
SIGNAL \db2|counter[0]~feeder_combout\ : std_logic;
SIGNAL \db2|counter~1_combout\ : std_logic;
SIGNAL \db2|counter[1]~feeder_combout\ : std_logic;
SIGNAL \db2|counter~4_combout\ : std_logic;
SIGNAL \db2|counter~5_combout\ : std_logic;
SIGNAL \db2|counter~2_combout\ : std_logic;
SIGNAL \db2|counter~3_combout\ : std_logic;
SIGNAL \db2|out~0_combout\ : std_logic;
SIGNAL \db2|out~1_combout\ : std_logic;
SIGNAL \db2|out~feeder_combout\ : std_logic;
SIGNAL \db2|out~q\ : std_logic;
SIGNAL \db2|out~clkctrl_outclk\ : std_logic;
SIGNAL \state[0]~2_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \db1|counter~4_combout\ : std_logic;
SIGNAL \db1|counter~5_combout\ : std_logic;
SIGNAL \db1|counter~2_combout\ : std_logic;
SIGNAL \db1|counter~3_combout\ : std_logic;
SIGNAL \db1|counter~0_combout\ : std_logic;
SIGNAL \db1|counter~1_combout\ : std_logic;
SIGNAL \db1|Equal0~0_combout\ : std_logic;
SIGNAL \db1|out~0_combout\ : std_logic;
SIGNAL \db1|out~feeder_combout\ : std_logic;
SIGNAL \db1|out~q\ : std_logic;
SIGNAL \Mux3~5_combout\ : std_logic;
SIGNAL \dec|fa4|sum~combout\ : std_logic;
SIGNAL \state~0_combout\ : std_logic;
SIGNAL \Mux6~5_combout\ : std_logic;
SIGNAL \Mux6~7_combout\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \div|add2|fa4|c_out~0_combout\ : std_logic;
SIGNAL \div|interim2[2]~1_combout\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \div|interim1[2]~2_combout\ : std_logic;
SIGNAL \div|interim2[1]~0_combout\ : std_logic;
SIGNAL \div|add1|fa4|c_out~0_combout\ : std_logic;
SIGNAL \div|add2|fa4|c_out~1_combout\ : std_logic;
SIGNAL \div|interim1[3]~1_combout\ : std_logic;
SIGNAL \mul|interim2[3]~2_combout\ : std_logic;
SIGNAL \div|add2|fa4|c_out~2_combout\ : std_logic;
SIGNAL \div|mux2[0]~1_combout\ : std_logic;
SIGNAL \div|add3|fa1|c_out~0_combout\ : std_logic;
SIGNAL \div|interim1[1]~0_combout\ : std_logic;
SIGNAL \div|add3|fa2|c_out~combout\ : std_logic;
SIGNAL \div|add2|fa2|sum~2_combout\ : std_logic;
SIGNAL \div|mux1[0]~0_combout\ : std_logic;
SIGNAL \div|mux2[1]~0_combout\ : std_logic;
SIGNAL \div|add3|fa4|c_out~0_combout\ : std_logic;
SIGNAL \div|mux3[1]~1_combout\ : std_logic;
SIGNAL \div|mux3[0]~0_combout\ : std_logic;
SIGNAL \div|add4|fa2|c_out~combout\ : std_logic;
SIGNAL \div|add4|fa3|c_out~combout\ : std_logic;
SIGNAL \div|mux3[2]~2_combout\ : std_logic;
SIGNAL \div|add4|fa4|c_out~combout\ : std_logic;
SIGNAL \div|rem_res[0]~0_combout\ : std_logic;
SIGNAL \Mux6~4_combout\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \add_sub|fa1|c_out~0_combout\ : std_logic;
SIGNAL \add_sub|fa2|sum~combout\ : std_logic;
SIGNAL \mul|fac3|fa2|sum~combout\ : std_logic;
SIGNAL \mul|add1|fa1|ha|sum~combout\ : std_logic;
SIGNAL \Mux6~1_combout\ : std_logic;
SIGNAL \Mux6~2_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Mux7~1_combout\ : std_logic;
SIGNAL \Mux6~3_combout\ : std_logic;
SIGNAL \Mux7~2_combout\ : std_logic;
SIGNAL \MAX10_CLK1_50~input_o\ : std_logic;
SIGNAL \MAX10_CLK1_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \fsh|data~0_combout\ : std_logic;
SIGNAL \fash|START~feeder_combout\ : std_logic;
SIGNAL \fash|START~q\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \fash|counter[0]~4_combout\ : std_logic;
SIGNAL \fash|sub|fa2|sum~combout\ : std_logic;
SIGNAL \fash|counter[1]~3_combout\ : std_logic;
SIGNAL \fash|counter[3]~1_combout\ : std_logic;
SIGNAL \fash|counter[2]~2_combout\ : std_logic;
SIGNAL \fash|sub|fa4|sum~combout\ : std_logic;
SIGNAL \fash|counter[3]~0_combout\ : std_logic;
SIGNAL \fsh|out_reg[0]~0_combout\ : std_logic;
SIGNAL \fsh|out_reg[0]~1_combout\ : std_logic;
SIGNAL \fsh|data~3_combout\ : std_logic;
SIGNAL \fsh|data~2_combout\ : std_logic;
SIGNAL \fsh|data~1_combout\ : std_logic;
SIGNAL \fash|data~3_combout\ : std_logic;
SIGNAL \fash|data~2_combout\ : std_logic;
SIGNAL \fash|data~0_combout\ : std_logic;
SIGNAL \fash|data~1_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux7~3_combout\ : std_logic;
SIGNAL \cmp|temp_xnor[3]~0_combout\ : std_logic;
SIGNAL \Mux6~6_combout\ : std_logic;
SIGNAL \frsh|data~0_combout\ : std_logic;
SIGNAL \frsh|data~3_combout\ : std_logic;
SIGNAL \frsh|data~2_combout\ : std_logic;
SIGNAL \frsh|data~1_combout\ : std_logic;
SIGNAL \Mux6~8_combout\ : std_logic;
SIGNAL \Mux7~4_combout\ : std_logic;
SIGNAL \cmp|less~3_combout\ : std_logic;
SIGNAL \div|rem_res[1]~1_combout\ : std_logic;
SIGNAL \Mux7~combout\ : std_logic;
SIGNAL \mod|out[0]~2_combout\ : std_logic;
SIGNAL \cmp|less~1_combout\ : std_logic;
SIGNAL \cmp|less~0_combout\ : std_logic;
SIGNAL \cmp|less~2_combout\ : std_logic;
SIGNAL \ccpm|less~0_combout\ : std_logic;
SIGNAL \frsh|out_reg[0]~feeder_combout\ : std_logic;
SIGNAL \Mux8~6_combout\ : std_logic;
SIGNAL \Mux8~7_combout\ : std_logic;
SIGNAL \cmp|temp_B[0]~0_combout\ : std_logic;
SIGNAL \out_status~0_combout\ : std_logic;
SIGNAL \div|add4|fa1|ha|sum~combout\ : std_logic;
SIGNAL \Mux8~3_combout\ : std_logic;
SIGNAL \sh|out[0]~0_combout\ : std_logic;
SIGNAL \Mux8~4_combout\ : std_logic;
SIGNAL \Mux8~1_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Mux8~2_combout\ : std_logic;
SIGNAL \Mux8~5_combout\ : std_logic;
SIGNAL \Mux8~8_combout\ : std_logic;
SIGNAL \add_sub|fa2|c_out~0_combout\ : std_logic;
SIGNAL \add_sub|fa3|sum~0_combout\ : std_logic;
SIGNAL \mul|add1|fa1|ha|c_out~combout\ : std_logic;
SIGNAL \mul|add1|fa2|sum~combout\ : std_logic;
SIGNAL \mul|add2|fa1|ha|sum~combout\ : std_logic;
SIGNAL \mul|fac3|fa3|sum~combout\ : std_logic;
SIGNAL \Mux6~9_combout\ : std_logic;
SIGNAL \Mux6~10_combout\ : std_logic;
SIGNAL \Mux6~11_combout\ : std_logic;
SIGNAL \Mux6~12_combout\ : std_logic;
SIGNAL \Mux6~13_combout\ : std_logic;
SIGNAL \div|rem_res[2]~2_combout\ : std_logic;
SIGNAL \div|rem|fa2|c_out~0_combout\ : std_logic;
SIGNAL \Mux6~combout\ : std_logic;
SIGNAL \fash|out_reg[3]~feeder_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux5~1_combout\ : std_logic;
SIGNAL \Mux5~2_combout\ : std_logic;
SIGNAL \sh|out[3]~1_combout\ : std_logic;
SIGNAL \mul|fac3|fa3|c_out~2_combout\ : std_logic;
SIGNAL \Mux5~3_combout\ : std_logic;
SIGNAL \Mux5~4_combout\ : std_logic;
SIGNAL \mul|add1|fa3|ha|sum~combout\ : std_logic;
SIGNAL \mul|add1|fa2|c_out~0_combout\ : std_logic;
SIGNAL \mul|add2|fa1|ha|c_out~combout\ : std_logic;
SIGNAL \mul|add2|fa2|sum~combout\ : std_logic;
SIGNAL \mul|add3|fa1|ha|sum~combout\ : std_logic;
SIGNAL \Mux5~5_combout\ : std_logic;
SIGNAL \div|rem|fa3|c_out~0_combout\ : std_logic;
SIGNAL \div|rem_res[3]~3_combout\ : std_logic;
SIGNAL \out_status~1_combout\ : std_logic;
SIGNAL \Mux5~6_combout\ : std_logic;
SIGNAL \Mux5~7_combout\ : std_logic;
SIGNAL \out_status~2_combout\ : std_logic;
SIGNAL \Mux5~8_combout\ : std_logic;
SIGNAL \Mux5~9_combout\ : std_logic;
SIGNAL \hex0s|WideOr6~0_combout\ : std_logic;
SIGNAL \hex0s|WideOr5~0_combout\ : std_logic;
SIGNAL \hex0s|WideOr4~0_combout\ : std_logic;
SIGNAL \hex0s|WideOr3~0_combout\ : std_logic;
SIGNAL \hex0s|WideOr2~0_combout\ : std_logic;
SIGNAL \hex0s|WideOr1~0_combout\ : std_logic;
SIGNAL \hex0s|WideOr0~0_combout\ : std_logic;
SIGNAL \Mux3~2_combout\ : std_logic;
SIGNAL \Mux3~3_combout\ : std_logic;
SIGNAL \mul|add2|fa2|c_out~0_combout\ : std_logic;
SIGNAL \mul|add1|fa3|c_out~0_combout\ : std_logic;
SIGNAL \mul|add2|fa3|c_out~0_combout\ : std_logic;
SIGNAL \mul|add2|fa3|ha|sum~combout\ : std_logic;
SIGNAL \mul|add3|fa1|ha|c_out~combout\ : std_logic;
SIGNAL \mul|add3|fa2|c_out~0_combout\ : std_logic;
SIGNAL \mul|add3|fa3|c_out~0_combout\ : std_logic;
SIGNAL \mul|add2|fa4|c_out~0_combout\ : std_logic;
SIGNAL \mul|add3|fa4|c_out~0_combout\ : std_logic;
SIGNAL \mul|add3|fa4|sum~combout\ : std_logic;
SIGNAL \mul|add3|fa2|sum~combout\ : std_logic;
SIGNAL \mul|add3|fa3|sum~combout\ : std_logic;
SIGNAL \mul|fac3|fa6|c_out~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \Mux4~2_combout\ : std_logic;
SIGNAL \mul|fac3|fa4|c_out~0_combout\ : std_logic;
SIGNAL \Mux4~3_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \Mux4~4_combout\ : std_logic;
SIGNAL \Mux4~5_combout\ : std_logic;
SIGNAL \Mux4~6_combout\ : std_logic;
SIGNAL \Mux4~7_combout\ : std_logic;
SIGNAL \Mux4~8_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \mul|fac3|fa5|c_out~0_combout\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \Mux3~4_combout\ : std_logic;
SIGNAL \hex1s|WideOr6~0_combout\ : std_logic;
SIGNAL \hex1s|WideOr5~0_combout\ : std_logic;
SIGNAL \hex1s|WideOr4~0_combout\ : std_logic;
SIGNAL \hex1s|WideOr3~0_combout\ : std_logic;
SIGNAL \hex1s|WideOr2~0_combout\ : std_logic;
SIGNAL \hex1s|WideOr1~0_combout\ : std_logic;
SIGNAL \hex1s|WideOr0~0_combout\ : std_logic;
SIGNAL \comp_dec|WideAnd2~0_combout\ : std_logic;
SIGNAL \hex2s_in[2]~4_combout\ : std_logic;
SIGNAL \div|add1|fa4|c_out~1_combout\ : std_logic;
SIGNAL \div|quo|fa3|c_out~0_combout\ : std_logic;
SIGNAL \hex2s_in[3]~8_combout\ : std_logic;
SIGNAL \hex2s_in[2]~2_combout\ : std_logic;
SIGNAL \hex2s_in[3]~7_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \cmp|greater~0_combout\ : std_logic;
SIGNAL \Mux0~2_combout\ : std_logic;
SIGNAL \Mux0~3_combout\ : std_logic;
SIGNAL \Mux0~4_combout\ : std_logic;
SIGNAL \Mux0~5_combout\ : std_logic;
SIGNAL \hex2s_in[2]~5_combout\ : std_logic;
SIGNAL \hex2s_in[2]~6_combout\ : std_logic;
SIGNAL \hex2s_in[1]~3_combout\ : std_logic;
SIGNAL \hex2s|WideOr6~0_combout\ : std_logic;
SIGNAL \hex2s|WideOr5~0_combout\ : std_logic;
SIGNAL \hex2s|WideOr4~0_combout\ : std_logic;
SIGNAL \hex2s|WideOr3~0_combout\ : std_logic;
SIGNAL \hex2s|WideOr2~0_combout\ : std_logic;
SIGNAL \hex2s|WideOr1~0_combout\ : std_logic;
SIGNAL \hex2s|WideOr0~0_combout\ : std_logic;
SIGNAL \hex3s_in[0]~0_combout\ : std_logic;
SIGNAL \frsh|out_reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \fsh|data\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \fash|data\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \frsh|data\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \mul|interim1\ : std_logic_vector(3 DOWNTO 0);
SIGNAL state : std_logic_vector(3 DOWNTO 0);
SIGNAL \fsh|out_reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \fash|out_reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \mul|interim3\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \mul|interim4\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \fash|counter\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \db2|counter\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \db1|counter\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \fash|ALT_INV_START~q\ : std_logic;
SIGNAL \db1|ALT_INV_out~q\ : std_logic;
SIGNAL \ALT_INV_hex3s_in[0]~0_combout\ : std_logic;
SIGNAL \hex2s|ALT_INV_WideOr6~0_combout\ : std_logic;
SIGNAL \ALT_INV_hex2s_in[2]~2_combout\ : std_logic;
SIGNAL \hex1s|ALT_INV_WideOr6~0_combout\ : std_logic;
SIGNAL \hex0s|ALT_INV_WideOr6~0_combout\ : std_logic;
SIGNAL \ALT_INV_SW[9]~input_o\ : std_logic;
SIGNAL \fsh|ALT_INV_out_reg[0]~1_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_ADC_CLK_10 <= ADC_CLK_10;
ww_MAX10_CLK1_50 <= MAX10_CLK1_50;
ww_MAX10_CLK2_50 <= MAX10_CLK2_50;
HEX0S <= ww_HEX0S;
HEX1S <= ww_HEX1S;
HEX2S <= ww_HEX2S;
HEX3S <= ww_HEX3S;
HEX4S <= ww_HEX4S;
HEX5S <= ww_HEX5S;
HEXdp <= ww_HEXdp;
ww_KEY <= KEY;
LEDR <= ww_LEDR;
ww_SW <= SW;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\ADC_CLK_10~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \ADC_CLK_10~input_o\);

\db2|out~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \db2|out~q\);

\MAX10_CLK1_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \MAX10_CLK1_50~input_o\);
\fash|ALT_INV_START~q\ <= NOT \fash|START~q\;
\db1|ALT_INV_out~q\ <= NOT \db1|out~q\;
\ALT_INV_hex3s_in[0]~0_combout\ <= NOT \hex3s_in[0]~0_combout\;
\hex2s|ALT_INV_WideOr6~0_combout\ <= NOT \hex2s|WideOr6~0_combout\;
\ALT_INV_hex2s_in[2]~2_combout\ <= NOT \hex2s_in[2]~2_combout\;
\hex1s|ALT_INV_WideOr6~0_combout\ <= NOT \hex1s|WideOr6~0_combout\;
\hex0s|ALT_INV_WideOr6~0_combout\ <= NOT \hex0s|WideOr6~0_combout\;
\ALT_INV_SW[9]~input_o\ <= NOT \SW[9]~input_o\;
\fsh|ALT_INV_out_reg[0]~1_combout\ <= NOT \fsh|out_reg[0]~1_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y41_N24
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X74_Y54_N23
\HEX0S[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex0s|ALT_INV_WideOr6~0_combout\,
	devoe => ww_devoe,
	o => \HEX0S[0]~output_o\);

-- Location: IOOBUF_X74_Y54_N16
\HEX0S[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex0s|WideOr5~0_combout\,
	devoe => ww_devoe,
	o => \HEX0S[1]~output_o\);

-- Location: IOOBUF_X74_Y54_N2
\HEX0S[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex0s|WideOr4~0_combout\,
	devoe => ww_devoe,
	o => \HEX0S[2]~output_o\);

-- Location: IOOBUF_X62_Y54_N30
\HEX0S[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex0s|WideOr3~0_combout\,
	devoe => ww_devoe,
	o => \HEX0S[3]~output_o\);

-- Location: IOOBUF_X60_Y54_N2
\HEX0S[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex0s|WideOr2~0_combout\,
	devoe => ww_devoe,
	o => \HEX0S[4]~output_o\);

-- Location: IOOBUF_X74_Y54_N9
\HEX0S[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex0s|WideOr1~0_combout\,
	devoe => ww_devoe,
	o => \HEX0S[5]~output_o\);

-- Location: IOOBUF_X58_Y54_N16
\HEX0S[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex0s|WideOr0~0_combout\,
	devoe => ww_devoe,
	o => \HEX0S[6]~output_o\);

-- Location: IOOBUF_X69_Y54_N30
\HEX1S[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex1s|ALT_INV_WideOr6~0_combout\,
	devoe => ww_devoe,
	o => \HEX1S[0]~output_o\);

-- Location: IOOBUF_X66_Y54_N30
\HEX1S[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex1s|WideOr5~0_combout\,
	devoe => ww_devoe,
	o => \HEX1S[1]~output_o\);

-- Location: IOOBUF_X64_Y54_N2
\HEX1S[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex1s|WideOr4~0_combout\,
	devoe => ww_devoe,
	o => \HEX1S[2]~output_o\);

-- Location: IOOBUF_X60_Y54_N9
\HEX1S[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex1s|WideOr3~0_combout\,
	devoe => ww_devoe,
	o => \HEX1S[3]~output_o\);

-- Location: IOOBUF_X78_Y49_N2
\HEX1S[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex1s|WideOr2~0_combout\,
	devoe => ww_devoe,
	o => \HEX1S[4]~output_o\);

-- Location: IOOBUF_X78_Y49_N9
\HEX1S[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex1s|WideOr1~0_combout\,
	devoe => ww_devoe,
	o => \HEX1S[5]~output_o\);

-- Location: IOOBUF_X69_Y54_N23
\HEX1S[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex1s|WideOr0~0_combout\,
	devoe => ww_devoe,
	o => \HEX1S[6]~output_o\);

-- Location: IOOBUF_X78_Y43_N9
\HEX2S[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex2s|ALT_INV_WideOr6~0_combout\,
	devoe => ww_devoe,
	o => \HEX2S[0]~output_o\);

-- Location: IOOBUF_X78_Y35_N2
\HEX2S[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex2s|WideOr5~0_combout\,
	devoe => ww_devoe,
	o => \HEX2S[1]~output_o\);

-- Location: IOOBUF_X78_Y43_N2
\HEX2S[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex2s|WideOr4~0_combout\,
	devoe => ww_devoe,
	o => \HEX2S[2]~output_o\);

-- Location: IOOBUF_X78_Y44_N2
\HEX2S[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex2s|WideOr3~0_combout\,
	devoe => ww_devoe,
	o => \HEX2S[3]~output_o\);

-- Location: IOOBUF_X69_Y54_N16
\HEX2S[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex2s|WideOr2~0_combout\,
	devoe => ww_devoe,
	o => \HEX2S[4]~output_o\);

-- Location: IOOBUF_X66_Y54_N2
\HEX2S[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex2s|WideOr1~0_combout\,
	devoe => ww_devoe,
	o => \HEX2S[5]~output_o\);

-- Location: IOOBUF_X78_Y44_N9
\HEX2S[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex2s|WideOr0~0_combout\,
	devoe => ww_devoe,
	o => \HEX2S[6]~output_o\);

-- Location: IOOBUF_X78_Y43_N16
\HEX3S[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_hex3s_in[0]~0_combout\,
	devoe => ww_devoe,
	o => \HEX3S[0]~output_o\);

-- Location: IOOBUF_X78_Y41_N2
\HEX3S[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX3S[1]~output_o\);

-- Location: IOOBUF_X78_Y41_N9
\HEX3S[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX3S[2]~output_o\);

-- Location: IOOBUF_X69_Y54_N9
\HEX3S[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex3s_in[0]~0_combout\,
	devoe => ww_devoe,
	o => \HEX3S[3]~output_o\);

-- Location: IOOBUF_X78_Y33_N2
\HEX3S[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex3s_in[0]~0_combout\,
	devoe => ww_devoe,
	o => \HEX3S[4]~output_o\);

-- Location: IOOBUF_X78_Y33_N9
\HEX3S[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex3s_in[0]~0_combout\,
	devoe => ww_devoe,
	o => \HEX3S[5]~output_o\);

-- Location: IOOBUF_X78_Y35_N23
\HEX3S[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX3S[6]~output_o\);

-- Location: IOOBUF_X78_Y35_N16
\HEX4S[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX4S[0]~output_o\);

-- Location: IOOBUF_X78_Y40_N9
\HEX4S[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX4S[1]~output_o\);

-- Location: IOOBUF_X78_Y45_N23
\HEX4S[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX4S[2]~output_o\);

-- Location: IOOBUF_X78_Y42_N16
\HEX4S[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX4S[3]~output_o\);

-- Location: IOOBUF_X78_Y40_N23
\HEX4S[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX4S[4]~output_o\);

-- Location: IOOBUF_X78_Y40_N2
\HEX4S[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX4S[5]~output_o\);

-- Location: IOOBUF_X78_Y40_N16
\HEX4S[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX4S[6]~output_o\);

-- Location: IOOBUF_X78_Y34_N2
\HEX5S[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX5S[0]~output_o\);

-- Location: IOOBUF_X78_Y34_N16
\HEX5S[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX5S[1]~output_o\);

-- Location: IOOBUF_X78_Y34_N9
\HEX5S[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX5S[2]~output_o\);

-- Location: IOOBUF_X78_Y34_N24
\HEX5S[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX5S[3]~output_o\);

-- Location: IOOBUF_X78_Y37_N16
\HEX5S[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX5S[4]~output_o\);

-- Location: IOOBUF_X78_Y42_N2
\HEX5S[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX5S[5]~output_o\);

-- Location: IOOBUF_X78_Y45_N9
\HEX5S[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX5S[6]~output_o\);

-- Location: IOOBUF_X66_Y54_N16
\HEXdp[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEXdp[0]~output_o\);

-- Location: IOOBUF_X60_Y54_N16
\HEXdp[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEXdp[1]~output_o\);

-- Location: IOOBUF_X66_Y54_N9
\HEXdp[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_hex2s_in[2]~2_combout\,
	devoe => ww_devoe,
	o => \HEXdp[2]~output_o\);

-- Location: IOOBUF_X78_Y35_N9
\HEXdp[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEXdp[3]~output_o\);

-- Location: IOOBUF_X78_Y43_N23
\HEXdp[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEXdp[4]~output_o\);

-- Location: IOOBUF_X78_Y37_N9
\HEXdp[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEXdp[5]~output_o\);

-- Location: IOOBUF_X46_Y54_N2
\LEDR[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => state(0),
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

-- Location: IOOBUF_X46_Y54_N23
\LEDR[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => state(1),
	devoe => ww_devoe,
	o => \LEDR[1]~output_o\);

-- Location: IOOBUF_X51_Y54_N16
\LEDR[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => state(2),
	devoe => ww_devoe,
	o => \LEDR[2]~output_o\);

-- Location: IOOBUF_X46_Y54_N9
\LEDR[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => state(3),
	devoe => ww_devoe,
	o => \LEDR[3]~output_o\);

-- Location: IOOBUF_X56_Y54_N30
\LEDR[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[4]~output_o\);

-- Location: IOOBUF_X58_Y54_N23
\LEDR[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[5]~output_o\);

-- Location: IOOBUF_X66_Y54_N23
\LEDR[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[6]~output_o\);

-- Location: IOOBUF_X56_Y54_N9
\LEDR[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[7]~output_o\);

-- Location: IOOBUF_X51_Y54_N9
\LEDR[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[8]~output_o\);

-- Location: IOOBUF_X49_Y54_N9
\LEDR[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[9]~output_o\);

-- Location: IOIBUF_X56_Y54_N1
\SW[8]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: IOIBUF_X69_Y54_N1
\SW[9]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: IOIBUF_X54_Y54_N15
\SW[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: IOIBUF_X58_Y54_N29
\SW[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: LCCOMB_X58_Y52_N12
\mod|div|WideNor0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mod|div|WideNor0~combout\ = (\SW[8]~input_o\) # ((\SW[9]~input_o\) # ((\SW[6]~input_o\) # (\SW[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \SW[9]~input_o\,
	datac => \SW[6]~input_o\,
	datad => \SW[7]~input_o\,
	combout => \mod|div|WideNor0~combout\);

-- Location: IOIBUF_X0_Y23_N22
\ADC_CLK_10~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADC_CLK_10,
	o => \ADC_CLK_10~input_o\);

-- Location: CLKCTRL_G4
\ADC_CLK_10~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \ADC_CLK_10~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \ADC_CLK_10~inputclkctrl_outclk\);

-- Location: IOIBUF_X49_Y54_N29
\KEY[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: LCCOMB_X45_Y53_N12
\db2|counter~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \db2|counter~0_combout\ = (!\db2|counter\(0) & (\KEY[1]~input_o\ $ (!\db2|out~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY[1]~input_o\,
	datac => \db2|out~q\,
	datad => \db2|counter\(0),
	combout => \db2|counter~0_combout\);

-- Location: LCCOMB_X45_Y53_N20
\db2|counter[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \db2|counter[0]~feeder_combout\ = \db2|counter~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \db2|counter~0_combout\,
	combout => \db2|counter[0]~feeder_combout\);

-- Location: FF_X45_Y53_N21
\db2|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADC_CLK_10~inputclkctrl_outclk\,
	d => \db2|counter[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \db2|counter\(0));

-- Location: LCCOMB_X45_Y53_N24
\db2|counter~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \db2|counter~1_combout\ = (\db2|out~q\ & (\KEY[1]~input_o\ & (\db2|counter\(1) $ (\db2|counter\(0))))) # (!\db2|out~q\ & (!\KEY[1]~input_o\ & (\db2|counter\(1) $ (\db2|counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \db2|out~q\,
	datab => \KEY[1]~input_o\,
	datac => \db2|counter\(1),
	datad => \db2|counter\(0),
	combout => \db2|counter~1_combout\);

-- Location: LCCOMB_X45_Y53_N26
\db2|counter[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \db2|counter[1]~feeder_combout\ = \db2|counter~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \db2|counter~1_combout\,
	combout => \db2|counter[1]~feeder_combout\);

-- Location: FF_X45_Y53_N27
\db2|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADC_CLK_10~inputclkctrl_outclk\,
	d => \db2|counter[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \db2|counter\(1));

-- Location: LCCOMB_X45_Y53_N22
\db2|counter~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \db2|counter~4_combout\ = (!\db2|counter\(0)) # (!\db2|counter\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \db2|counter\(1),
	datad => \db2|counter\(0),
	combout => \db2|counter~4_combout\);

-- Location: LCCOMB_X45_Y53_N10
\db2|counter~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \db2|counter~5_combout\ = (\db2|counter~4_combout\ & (\db2|counter\(2) & (\KEY[1]~input_o\ $ (!\db2|out~q\)))) # (!\db2|counter~4_combout\ & (!\db2|counter\(2) & (\KEY[1]~input_o\ $ (!\db2|out~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \db2|counter~4_combout\,
	datab => \KEY[1]~input_o\,
	datac => \db2|counter\(2),
	datad => \db2|out~q\,
	combout => \db2|counter~5_combout\);

-- Location: FF_X45_Y53_N11
\db2|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADC_CLK_10~inputclkctrl_outclk\,
	d => \db2|counter~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \db2|counter\(2));

-- Location: LCCOMB_X45_Y53_N6
\db2|counter~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \db2|counter~2_combout\ = (\db2|counter\(1) & (\db2|counter\(2) & \db2|counter\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \db2|counter\(1),
	datac => \db2|counter\(2),
	datad => \db2|counter\(0),
	combout => \db2|counter~2_combout\);

-- Location: LCCOMB_X45_Y53_N8
\db2|counter~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \db2|counter~3_combout\ = (\db2|counter~2_combout\ & (!\db2|counter\(3) & (\KEY[1]~input_o\ $ (!\db2|out~q\)))) # (!\db2|counter~2_combout\ & (\db2|counter\(3) & (\KEY[1]~input_o\ $ (!\db2|out~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \db2|counter~2_combout\,
	datab => \KEY[1]~input_o\,
	datac => \db2|counter\(3),
	datad => \db2|out~q\,
	combout => \db2|counter~3_combout\);

-- Location: FF_X45_Y53_N9
\db2|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADC_CLK_10~inputclkctrl_outclk\,
	d => \db2|counter~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \db2|counter\(3));

-- Location: LCCOMB_X45_Y53_N16
\db2|out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \db2|out~0_combout\ = (\db2|counter\(3) & ((\db2|counter\(2) & ((!\KEY[1]~input_o\))) # (!\db2|counter\(2) & (\db2|out~q\)))) # (!\db2|counter\(3) & (\db2|out~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \db2|out~q\,
	datab => \KEY[1]~input_o\,
	datac => \db2|counter\(3),
	datad => \db2|counter\(2),
	combout => \db2|out~0_combout\);

-- Location: LCCOMB_X45_Y53_N30
\db2|out~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \db2|out~1_combout\ = (\db2|counter\(1) & ((\db2|counter\(0) & (\db2|out~0_combout\)) # (!\db2|counter\(0) & ((\db2|out~q\))))) # (!\db2|counter\(1) & (((\db2|out~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \db2|counter\(1),
	datab => \db2|out~0_combout\,
	datac => \db2|out~q\,
	datad => \db2|counter\(0),
	combout => \db2|out~1_combout\);

-- Location: LCCOMB_X45_Y53_N14
\db2|out~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \db2|out~feeder_combout\ = \db2|out~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \db2|out~1_combout\,
	combout => \db2|out~feeder_combout\);

-- Location: FF_X45_Y53_N15
\db2|out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADC_CLK_10~inputclkctrl_outclk\,
	d => \db2|out~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \db2|out~q\);

-- Location: CLKCTRL_G11
\db2|out~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \db2|out~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \db2|out~clkctrl_outclk\);

-- Location: LCCOMB_X57_Y53_N22
\state[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state[0]~2_combout\ = !state(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => state(0),
	combout => \state[0]~2_combout\);

-- Location: IOIBUF_X46_Y54_N29
\KEY[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: LCCOMB_X56_Y53_N20
\db1|counter~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \db1|counter~4_combout\ = (!\db1|counter\(0) & (\db1|out~q\ $ (!\KEY[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \db1|out~q\,
	datac => \db1|counter\(0),
	datad => \KEY[0]~input_o\,
	combout => \db1|counter~4_combout\);

-- Location: FF_X56_Y53_N21
\db1|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADC_CLK_10~inputclkctrl_outclk\,
	d => \db1|counter~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \db1|counter\(0));

-- Location: LCCOMB_X56_Y53_N22
\db1|counter~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \db1|counter~5_combout\ = (\db1|out~q\ & (\KEY[0]~input_o\ & (\db1|counter\(0) $ (\db1|counter\(1))))) # (!\db1|out~q\ & (!\KEY[0]~input_o\ & (\db1|counter\(0) $ (\db1|counter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \db1|out~q\,
	datab => \db1|counter\(0),
	datac => \db1|counter\(1),
	datad => \KEY[0]~input_o\,
	combout => \db1|counter~5_combout\);

-- Location: FF_X56_Y53_N23
\db1|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADC_CLK_10~inputclkctrl_outclk\,
	d => \db1|counter~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \db1|counter\(1));

-- Location: LCCOMB_X56_Y53_N30
\db1|counter~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \db1|counter~2_combout\ = (!\db1|counter\(0)) # (!\db1|counter\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \db1|counter\(1),
	datad => \db1|counter\(0),
	combout => \db1|counter~2_combout\);

-- Location: LCCOMB_X56_Y53_N26
\db1|counter~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \db1|counter~3_combout\ = (\db1|out~q\ & (\KEY[0]~input_o\ & (\db1|counter\(2) $ (!\db1|counter~2_combout\)))) # (!\db1|out~q\ & (!\KEY[0]~input_o\ & (\db1|counter\(2) $ (!\db1|counter~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \db1|out~q\,
	datab => \KEY[0]~input_o\,
	datac => \db1|counter\(2),
	datad => \db1|counter~2_combout\,
	combout => \db1|counter~3_combout\);

-- Location: FF_X56_Y53_N27
\db1|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADC_CLK_10~inputclkctrl_outclk\,
	d => \db1|counter~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \db1|counter\(2));

-- Location: LCCOMB_X56_Y53_N16
\db1|counter~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \db1|counter~0_combout\ = (\db1|counter\(1) & (\db1|counter\(2) & \db1|counter\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \db1|counter\(1),
	datac => \db1|counter\(2),
	datad => \db1|counter\(0),
	combout => \db1|counter~0_combout\);

-- Location: LCCOMB_X56_Y53_N28
\db1|counter~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \db1|counter~1_combout\ = (\db1|out~q\ & (\KEY[0]~input_o\ & (\db1|counter\(3) $ (\db1|counter~0_combout\)))) # (!\db1|out~q\ & (!\KEY[0]~input_o\ & (\db1|counter\(3) $ (\db1|counter~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \db1|out~q\,
	datab => \KEY[0]~input_o\,
	datac => \db1|counter\(3),
	datad => \db1|counter~0_combout\,
	combout => \db1|counter~1_combout\);

-- Location: FF_X56_Y53_N29
\db1|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADC_CLK_10~inputclkctrl_outclk\,
	d => \db1|counter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \db1|counter\(3));

-- Location: LCCOMB_X56_Y53_N24
\db1|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \db1|Equal0~0_combout\ = (\db1|counter\(2) & (\db1|counter\(3) & (\db1|counter\(1) & \db1|counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \db1|counter\(2),
	datab => \db1|counter\(3),
	datac => \db1|counter\(1),
	datad => \db1|counter\(0),
	combout => \db1|Equal0~0_combout\);

-- Location: LCCOMB_X56_Y53_N2
\db1|out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \db1|out~0_combout\ = (\db1|Equal0~0_combout\ & ((!\KEY[0]~input_o\))) # (!\db1|Equal0~0_combout\ & (\db1|out~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \db1|out~q\,
	datac => \KEY[0]~input_o\,
	datad => \db1|Equal0~0_combout\,
	combout => \db1|out~0_combout\);

-- Location: LCCOMB_X56_Y53_N6
\db1|out~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \db1|out~feeder_combout\ = \db1|out~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \db1|out~0_combout\,
	combout => \db1|out~feeder_combout\);

-- Location: FF_X56_Y53_N7
\db1|out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADC_CLK_10~inputclkctrl_outclk\,
	d => \db1|out~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \db1|out~q\);

-- Location: FF_X57_Y53_N23
\state[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \db2|out~clkctrl_outclk\,
	d => \state[0]~2_combout\,
	ena => \db1|ALT_INV_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => state(0));

-- Location: LCCOMB_X57_Y53_N16
\Mux3~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~5_combout\ = state(1) $ (!state(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => state(1),
	datad => state(0),
	combout => \Mux3~5_combout\);

-- Location: FF_X57_Y53_N17
\state[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \db2|out~clkctrl_outclk\,
	d => \Mux3~5_combout\,
	ena => \db1|ALT_INV_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => state(1));

-- Location: LCCOMB_X57_Y53_N20
\dec|fa4|sum\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dec|fa4|sum~combout\ = state(3) $ (((!state(2) & (!state(0) & !state(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(2),
	datab => state(0),
	datac => state(3),
	datad => state(1),
	combout => \dec|fa4|sum~combout\);

-- Location: FF_X57_Y53_N21
\state[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \db2|out~clkctrl_outclk\,
	d => \dec|fa4|sum~combout\,
	ena => \db1|ALT_INV_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => state(3));

-- Location: LCCOMB_X57_Y53_N30
\state~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state~0_combout\ = (state(0) & (((state(2))))) # (!state(0) & ((state(2) & ((state(1)))) # (!state(2) & (state(3) & !state(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(0),
	datab => state(3),
	datac => state(2),
	datad => state(1),
	combout => \state~0_combout\);

-- Location: FF_X57_Y53_N31
\state[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \db2|out~clkctrl_outclk\,
	d => \state~0_combout\,
	ena => \db1|ALT_INV_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => state(2));

-- Location: LCCOMB_X55_Y52_N0
\Mux6~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~5_combout\ = (!state(2) & ((state(1) & (!state(0) & !state(3))) # (!state(1) & (state(0) & state(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(1),
	datab => state(0),
	datac => state(2),
	datad => state(3),
	combout => \Mux6~5_combout\);

-- Location: LCCOMB_X57_Y52_N8
\Mux6~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~7_combout\ = (\mod|div|WideNor0~combout\ & \Mux6~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mod|div|WideNor0~combout\,
	datab => \Mux6~5_combout\,
	combout => \Mux6~7_combout\);

-- Location: IOIBUF_X51_Y54_N1
\SW[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: LCCOMB_X58_Y52_N28
\div|add2|fa4|c_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \div|add2|fa4|c_out~0_combout\ = (\SW[8]~input_o\) # (((\SW[6]~input_o\) # (\SW[7]~input_o\)) # (!\SW[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \SW[9]~input_o\,
	datac => \SW[6]~input_o\,
	datad => \SW[7]~input_o\,
	combout => \div|add2|fa4|c_out~0_combout\);

-- Location: LCCOMB_X58_Y52_N30
\div|interim2[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \div|interim2[2]~1_combout\ = \SW[8]~input_o\ $ (((\SW[9]~input_o\ & ((\SW[6]~input_o\) # (\SW[7]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \SW[9]~input_o\,
	datac => \SW[6]~input_o\,
	datad => \SW[7]~input_o\,
	combout => \div|interim2[2]~1_combout\);

-- Location: IOIBUF_X54_Y54_N29
\SW[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: IOIBUF_X49_Y54_N1
\SW[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: IOIBUF_X54_Y54_N22
\SW[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: LCCOMB_X58_Y52_N0
\div|interim1[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \div|interim1[2]~2_combout\ = \SW[4]~input_o\ $ (((\SW[5]~input_o\ & ((\SW[3]~input_o\) # (\SW[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \SW[5]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \div|interim1[2]~2_combout\);

-- Location: LCCOMB_X58_Y53_N28
\div|interim2[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \div|interim2[1]~0_combout\ = \SW[7]~input_o\ $ (((\SW[6]~input_o\ & \SW[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[7]~input_o\,
	datac => \SW[6]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \div|interim2[1]~0_combout\);

-- Location: LCCOMB_X58_Y52_N22
\div|add1|fa4|c_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \div|add1|fa4|c_out~0_combout\ = (\SW[8]~input_o\ & (\SW[9]~input_o\ & ((\SW[6]~input_o\) # (\SW[7]~input_o\)))) # (!\SW[8]~input_o\ & (!\SW[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \SW[9]~input_o\,
	datac => \SW[6]~input_o\,
	datad => \SW[7]~input_o\,
	combout => \div|add1|fa4|c_out~0_combout\);

-- Location: LCCOMB_X59_Y52_N10
\div|add2|fa4|c_out~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \div|add2|fa4|c_out~1_combout\ = (!\div|interim2[1]~0_combout\ & (\div|add1|fa4|c_out~0_combout\ & ((\div|interim1[2]~2_combout\) # (!\SW[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|interim2[1]~0_combout\,
	datab => \div|interim1[2]~2_combout\,
	datac => \SW[6]~input_o\,
	datad => \div|add1|fa4|c_out~0_combout\,
	combout => \div|add2|fa4|c_out~1_combout\);

-- Location: LCCOMB_X57_Y51_N10
\div|interim1[3]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \div|interim1[3]~1_combout\ = (!\SW[4]~input_o\ & (\SW[5]~input_o\ & (!\SW[3]~input_o\ & !\SW[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[4]~input_o\,
	datab => \SW[5]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \SW[2]~input_o\,
	combout => \div|interim1[3]~1_combout\);

-- Location: LCCOMB_X58_Y52_N24
\mul|interim2[3]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mul|interim2[3]~2_combout\ = (\div|interim1[3]~1_combout\ & (\SW[7]~input_o\ $ (((\SW[9]~input_o\ & \SW[6]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|interim1[3]~1_combout\,
	datab => \SW[9]~input_o\,
	datac => \SW[6]~input_o\,
	datad => \SW[7]~input_o\,
	combout => \mul|interim2[3]~2_combout\);

-- Location: LCCOMB_X59_Y52_N28
\div|add2|fa4|c_out~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \div|add2|fa4|c_out~2_combout\ = (\div|add2|fa4|c_out~1_combout\) # ((\mul|interim2[3]~2_combout\ & (!\SW[6]~input_o\ & \div|add1|fa4|c_out~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|add2|fa4|c_out~1_combout\,
	datab => \mul|interim2[3]~2_combout\,
	datac => \SW[6]~input_o\,
	datad => \div|add1|fa4|c_out~0_combout\,
	combout => \div|add2|fa4|c_out~2_combout\);

-- Location: LCCOMB_X58_Y51_N14
\div|mux2[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \div|mux2[0]~1_combout\ = \div|interim1[2]~2_combout\ $ (((\SW[6]~input_o\ & \div|add2|fa4|c_out~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \div|interim1[2]~2_combout\,
	datac => \SW[6]~input_o\,
	datad => \div|add2|fa4|c_out~2_combout\,
	combout => \div|mux2[0]~1_combout\);

-- Location: LCCOMB_X58_Y51_N0
\div|add3|fa1|c_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \div|add3|fa1|c_out~0_combout\ = (\SW[3]~input_o\ $ (((\SW[5]~input_o\ & \SW[2]~input_o\)))) # (!\SW[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \SW[5]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \SW[2]~input_o\,
	combout => \div|add3|fa1|c_out~0_combout\);

-- Location: LCCOMB_X58_Y51_N8
\div|interim1[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \div|interim1[1]~0_combout\ = \SW[3]~input_o\ $ (((\SW[2]~input_o\ & \SW[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[5]~input_o\,
	datac => \SW[3]~input_o\,
	combout => \div|interim1[1]~0_combout\);

-- Location: LCCOMB_X59_Y51_N22
\div|add3|fa2|c_out\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \div|add3|fa2|c_out~combout\ = (\div|interim2[1]~0_combout\ & (\div|mux2[0]~1_combout\ & ((\div|interim1[1]~0_combout\) # (!\SW[6]~input_o\)))) # (!\div|interim2[1]~0_combout\ & (((\div|interim1[1]~0_combout\) # (\div|mux2[0]~1_combout\)) # 
-- (!\SW[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \div|interim1[1]~0_combout\,
	datac => \div|interim2[1]~0_combout\,
	datad => \div|mux2[0]~1_combout\,
	combout => \div|add3|fa2|c_out~combout\);

-- Location: LCCOMB_X59_Y51_N26
\div|add2|fa2|sum~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \div|add2|fa2|sum~2_combout\ = \SW[7]~input_o\ $ (((\div|interim1[2]~2_combout\ $ (\SW[9]~input_o\)) # (!\SW[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \div|interim1[2]~2_combout\,
	datac => \SW[6]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \div|add2|fa2|sum~2_combout\);

-- Location: LCCOMB_X59_Y52_N20
\div|mux1[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \div|mux1[0]~0_combout\ = (\div|interim1[3]~1_combout\ & ((\div|interim2[1]~0_combout\) # ((!\div|add1|fa4|c_out~0_combout\) # (!\SW[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|interim2[1]~0_combout\,
	datab => \div|interim1[3]~1_combout\,
	datac => \SW[6]~input_o\,
	datad => \div|add1|fa4|c_out~0_combout\,
	combout => \div|mux1[0]~0_combout\);

-- Location: LCCOMB_X59_Y51_N12
\div|mux2[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \div|mux2[1]~0_combout\ = \div|mux1[0]~0_combout\ $ (((\div|add2|fa4|c_out~2_combout\ & !\div|add2|fa2|sum~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \div|add2|fa4|c_out~2_combout\,
	datac => \div|add2|fa2|sum~2_combout\,
	datad => \div|mux1[0]~0_combout\,
	combout => \div|mux2[1]~0_combout\);

-- Location: LCCOMB_X59_Y51_N0
\div|add3|fa4|c_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \div|add3|fa4|c_out~0_combout\ = (\div|add2|fa4|c_out~0_combout\ & ((\div|interim2[2]~1_combout\ & (\div|add3|fa2|c_out~combout\ & \div|mux2[1]~0_combout\)) # (!\div|interim2[2]~1_combout\ & ((\div|add3|fa2|c_out~combout\) # (\div|mux2[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|add2|fa4|c_out~0_combout\,
	datab => \div|interim2[2]~1_combout\,
	datac => \div|add3|fa2|c_out~combout\,
	datad => \div|mux2[1]~0_combout\,
	combout => \div|add3|fa4|c_out~0_combout\);

-- Location: LCCOMB_X59_Y51_N30
\div|mux3[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \div|mux3[1]~1_combout\ = \div|mux2[0]~1_combout\ $ (((\div|add3|fa4|c_out~0_combout\ & (\div|interim2[1]~0_combout\ $ (!\div|add3|fa1|c_out~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|mux2[0]~1_combout\,
	datab => \div|interim2[1]~0_combout\,
	datac => \div|add3|fa1|c_out~0_combout\,
	datad => \div|add3|fa4|c_out~0_combout\,
	combout => \div|mux3[1]~1_combout\);

-- Location: LCCOMB_X59_Y51_N10
\div|mux3[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \div|mux3[0]~0_combout\ = \div|interim1[1]~0_combout\ $ (((\SW[6]~input_o\ & \div|add3|fa4|c_out~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \div|interim1[1]~0_combout\,
	datac => \SW[6]~input_o\,
	datad => \div|add3|fa4|c_out~0_combout\,
	combout => \div|mux3[0]~0_combout\);

-- Location: LCCOMB_X59_Y51_N20
\div|add4|fa2|c_out\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \div|add4|fa2|c_out~combout\ = (\div|interim2[1]~0_combout\ & (\div|mux3[0]~0_combout\ & ((\SW[2]~input_o\) # (!\SW[6]~input_o\)))) # (!\div|interim2[1]~0_combout\ & (((\SW[2]~input_o\) # (\div|mux3[0]~0_combout\)) # (!\SW[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \div|interim2[1]~0_combout\,
	datac => \SW[2]~input_o\,
	datad => \div|mux3[0]~0_combout\,
	combout => \div|add4|fa2|c_out~combout\);

-- Location: LCCOMB_X59_Y51_N24
\div|add4|fa3|c_out\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \div|add4|fa3|c_out~combout\ = (\div|interim2[2]~1_combout\ & (\div|mux3[1]~1_combout\ & \div|add4|fa2|c_out~combout\)) # (!\div|interim2[2]~1_combout\ & ((\div|mux3[1]~1_combout\) # (\div|add4|fa2|c_out~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \div|interim2[2]~1_combout\,
	datac => \div|mux3[1]~1_combout\,
	datad => \div|add4|fa2|c_out~combout\,
	combout => \div|add4|fa3|c_out~combout\);

-- Location: LCCOMB_X59_Y51_N2
\div|mux3[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \div|mux3[2]~2_combout\ = (\div|mux2[1]~0_combout\ & ((\div|interim2[2]~1_combout\ $ (\div|add3|fa2|c_out~combout\)) # (!\div|add2|fa4|c_out~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|add2|fa4|c_out~0_combout\,
	datab => \div|interim2[2]~1_combout\,
	datac => \div|add3|fa2|c_out~combout\,
	datad => \div|mux2[1]~0_combout\,
	combout => \div|mux3[2]~2_combout\);

-- Location: LCCOMB_X59_Y51_N8
\div|add4|fa4|c_out\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \div|add4|fa4|c_out~combout\ = (\div|add2|fa4|c_out~0_combout\ & ((\div|add4|fa3|c_out~combout\) # (\div|mux3[2]~2_combout\))) # (!\div|add2|fa4|c_out~0_combout\ & (\div|add4|fa3|c_out~combout\ & \div|mux3[2]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|add2|fa4|c_out~0_combout\,
	datab => \div|add4|fa3|c_out~combout\,
	datad => \div|mux3[2]~2_combout\,
	combout => \div|add4|fa4|c_out~combout\);

-- Location: LCCOMB_X58_Y52_N18
\div|rem_res[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \div|rem_res[0]~0_combout\ = \SW[2]~input_o\ $ (((\SW[6]~input_o\ & \div|add4|fa4|c_out~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \SW[2]~input_o\,
	datad => \div|add4|fa4|c_out~combout\,
	combout => \div|rem_res[0]~0_combout\);

-- Location: LCCOMB_X57_Y52_N20
\Mux6~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~4_combout\ = (state(0)) # ((state(1) & state(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(0),
	datab => state(1),
	datad => state(2),
	combout => \Mux6~4_combout\);

-- Location: IOIBUF_X51_Y54_N22
\SW[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: LCCOMB_X58_Y51_N12
\add_sub|fa1|c_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \add_sub|fa1|c_out~0_combout\ = (\SW[6]~input_o\ & ((\SW[2]~input_o\))) # (!\SW[6]~input_o\ & (\SW[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datac => \SW[6]~input_o\,
	datad => \SW[2]~input_o\,
	combout => \add_sub|fa1|c_out~0_combout\);

-- Location: LCCOMB_X58_Y51_N26
\add_sub|fa2|sum\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \add_sub|fa2|sum~combout\ = \add_sub|fa1|c_out~0_combout\ $ (\SW[3]~input_o\ $ (\SW[1]~input_o\ $ (\SW[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_sub|fa1|c_out~0_combout\,
	datab => \SW[3]~input_o\,
	datac => \SW[1]~input_o\,
	datad => \SW[7]~input_o\,
	combout => \add_sub|fa2|sum~combout\);

-- Location: LCCOMB_X57_Y51_N4
\mul|fac3|fa2|sum\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mul|fac3|fa2|sum~combout\ = (\SW[2]~input_o\ & (\div|interim2[1]~0_combout\ $ (((!\div|interim1[1]~0_combout\ & \SW[6]~input_o\))))) # (!\SW[2]~input_o\ & (\div|interim1[1]~0_combout\ & (\SW[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \div|interim1[1]~0_combout\,
	datac => \SW[6]~input_o\,
	datad => \div|interim2[1]~0_combout\,
	combout => \mul|fac3|fa2|sum~combout\);

-- Location: LCCOMB_X57_Y51_N24
\mul|add1|fa1|ha|sum\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mul|add1|fa1|ha|sum~combout\ = (\SW[2]~input_o\ & (\div|interim2[1]~0_combout\ $ (((\div|interim1[1]~0_combout\ & \SW[6]~input_o\))))) # (!\SW[2]~input_o\ & (\div|interim1[1]~0_combout\ & (\SW[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \div|interim1[1]~0_combout\,
	datac => \SW[6]~input_o\,
	datad => \div|interim2[1]~0_combout\,
	combout => \mul|add1|fa1|ha|sum~combout\);

-- Location: LCCOMB_X59_Y52_N30
\Mux6~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~1_combout\ = (!state(1) & !state(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => state(1),
	datad => state(2),
	combout => \Mux6~1_combout\);

-- Location: LCCOMB_X57_Y51_N6
\Mux6~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~2_combout\ = (\Mux6~1_combout\ & ((\SW[5]~input_o\ $ (\SW[9]~input_o\)))) # (!\Mux6~1_combout\ & (\SW[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[5]~input_o\,
	datac => \Mux6~1_combout\,
	datad => \SW[9]~input_o\,
	combout => \Mux6~2_combout\);

-- Location: LCCOMB_X57_Y51_N22
\Mux7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (\Mux6~1_combout\ & (((\mul|add1|fa1|ha|sum~combout\ & !\Mux6~2_combout\)))) # (!\Mux6~1_combout\ & ((\SW[4]~input_o\) # ((\Mux6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[4]~input_o\,
	datab => \mul|add1|fa1|ha|sum~combout\,
	datac => \Mux6~1_combout\,
	datad => \Mux6~2_combout\,
	combout => \Mux7~0_combout\);

-- Location: LCCOMB_X57_Y51_N8
\Mux7~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~1_combout\ = (\Mux7~0_combout\ & ((\SW[2]~input_o\) # ((!\Mux6~2_combout\)))) # (!\Mux7~0_combout\ & (((\mul|fac3|fa2|sum~combout\ & \Mux6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \mul|fac3|fa2|sum~combout\,
	datac => \Mux7~0_combout\,
	datad => \Mux6~2_combout\,
	combout => \Mux7~1_combout\);

-- Location: LCCOMB_X57_Y53_N0
\Mux6~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~3_combout\ = (state(0)) # ((!state(1) & !state(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(1),
	datac => state(2),
	datad => state(0),
	combout => \Mux6~3_combout\);

-- Location: LCCOMB_X57_Y51_N2
\Mux7~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~2_combout\ = (\Mux6~4_combout\ & (((\Mux7~1_combout\ & \Mux6~3_combout\)))) # (!\Mux6~4_combout\ & ((\add_sub|fa2|sum~combout\) # ((!\Mux6~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~4_combout\,
	datab => \add_sub|fa2|sum~combout\,
	datac => \Mux7~1_combout\,
	datad => \Mux6~3_combout\,
	combout => \Mux7~2_combout\);

-- Location: IOIBUF_X34_Y0_N29
\MAX10_CLK1_50~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MAX10_CLK1_50,
	o => \MAX10_CLK1_50~input_o\);

-- Location: CLKCTRL_G19
\MAX10_CLK1_50~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \MAX10_CLK1_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \MAX10_CLK1_50~inputclkctrl_outclk\);

-- Location: LCCOMB_X58_Y52_N8
\fsh|data~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fsh|data~0_combout\ = (!\SW[8]~input_o\ & \fsh|data\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datad => \fsh|data\(1),
	combout => \fsh|data~0_combout\);

-- Location: LCCOMB_X56_Y52_N2
\fash|START~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fash|START~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \fash|START~feeder_combout\);

-- Location: FF_X56_Y52_N3
\fash|START\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \fash|START~feeder_combout\,
	clrn => \ALT_INV_SW[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fash|START~q\);

-- Location: IOIBUF_X51_Y54_N29
\SW[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: LCCOMB_X56_Y52_N22
\fash|counter[0]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fash|counter[0]~4_combout\ = (\fash|START~q\ & (((!\fash|counter\(0) & !\fsh|out_reg[0]~0_combout\)))) # (!\fash|START~q\ & (\SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fash|START~q\,
	datab => \SW[0]~input_o\,
	datac => \fash|counter\(0),
	datad => \fsh|out_reg[0]~0_combout\,
	combout => \fash|counter[0]~4_combout\);

-- Location: FF_X56_Y52_N23
\fash|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \fash|counter[0]~4_combout\,
	clrn => \ALT_INV_SW[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fash|counter\(0));

-- Location: LCCOMB_X56_Y52_N14
\fash|sub|fa2|sum\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fash|sub|fa2|sum~combout\ = \fash|counter\(0) $ (\fash|counter\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fash|counter\(0),
	datad => \fash|counter\(1),
	combout => \fash|sub|fa2|sum~combout\);

-- Location: LCCOMB_X56_Y52_N4
\fash|counter[1]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fash|counter[1]~3_combout\ = (\fash|START~q\ & (!\fash|sub|fa2|sum~combout\ & ((!\fsh|out_reg[0]~0_combout\)))) # (!\fash|START~q\ & (((\SW[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fash|START~q\,
	datab => \fash|sub|fa2|sum~combout\,
	datac => \SW[1]~input_o\,
	datad => \fsh|out_reg[0]~0_combout\,
	combout => \fash|counter[1]~3_combout\);

-- Location: FF_X56_Y52_N5
\fash|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \fash|counter[1]~3_combout\,
	clrn => \ALT_INV_SW[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fash|counter\(1));

-- Location: LCCOMB_X56_Y52_N20
\fash|counter[3]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fash|counter[3]~1_combout\ = (\fash|START~q\ & !\fsh|out_reg[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fash|START~q\,
	datad => \fsh|out_reg[0]~0_combout\,
	combout => \fash|counter[3]~1_combout\);

-- Location: LCCOMB_X56_Y52_N18
\fash|counter[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fash|counter[2]~2_combout\ = (\fash|counter[3]~1_combout\ & (\fash|counter\(2) $ (((!\fash|counter\(1) & !\fash|counter\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fash|counter\(1),
	datab => \fash|counter\(0),
	datac => \fash|counter\(2),
	datad => \fash|counter[3]~1_combout\,
	combout => \fash|counter[2]~2_combout\);

-- Location: FF_X56_Y52_N19
\fash|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \fash|counter[2]~2_combout\,
	clrn => \ALT_INV_SW[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fash|counter\(2));

-- Location: LCCOMB_X55_Y52_N16
\fash|sub|fa4|sum\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fash|sub|fa4|sum~combout\ = \fash|counter\(3) $ (((\fash|counter\(0)) # ((\fash|counter\(1)) # (\fash|counter\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fash|counter\(0),
	datab => \fash|counter\(3),
	datac => \fash|counter\(1),
	datad => \fash|counter\(2),
	combout => \fash|sub|fa4|sum~combout\);

-- Location: LCCOMB_X56_Y52_N8
\fash|counter[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fash|counter[3]~0_combout\ = (!\fsh|out_reg[0]~0_combout\ & (\fash|START~q\ & !\fash|sub|fa4|sum~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fsh|out_reg[0]~0_combout\,
	datac => \fash|START~q\,
	datad => \fash|sub|fa4|sum~combout\,
	combout => \fash|counter[3]~0_combout\);

-- Location: FF_X56_Y52_N9
\fash|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \fash|counter[3]~0_combout\,
	clrn => \ALT_INV_SW[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fash|counter\(3));

-- Location: LCCOMB_X56_Y52_N28
\fsh|out_reg[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fsh|out_reg[0]~0_combout\ = (!\fash|counter\(0) & (!\fash|counter\(1) & (!\fash|counter\(3) & !\fash|counter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fash|counter\(0),
	datab => \fash|counter\(1),
	datac => \fash|counter\(3),
	datad => \fash|counter\(2),
	combout => \fsh|out_reg[0]~0_combout\);

-- Location: LCCOMB_X56_Y52_N6
\fsh|out_reg[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fsh|out_reg[0]~1_combout\ = (!\fsh|out_reg[0]~0_combout\) # (!\fash|START~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fash|START~q\,
	datad => \fsh|out_reg[0]~0_combout\,
	combout => \fsh|out_reg[0]~1_combout\);

-- Location: FF_X58_Y52_N9
\fsh|data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \fsh|data~0_combout\,
	asdata => \SW[2]~input_o\,
	clrn => \ALT_INV_SW[9]~input_o\,
	sload => \fash|ALT_INV_START~q\,
	ena => \fsh|out_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsh|data\(0));

-- Location: LCCOMB_X56_Y52_N10
\fsh|data~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fsh|data~3_combout\ = (\fash|counter[3]~1_combout\ & (\fsh|data\(2) & (\SW[8]~input_o\))) # (!\fash|counter[3]~1_combout\ & (((\fsh|data\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsh|data\(2),
	datab => \SW[8]~input_o\,
	datac => \fsh|data\(3),
	datad => \fash|counter[3]~1_combout\,
	combout => \fsh|data~3_combout\);

-- Location: FF_X56_Y52_N11
\fsh|data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \fsh|data~3_combout\,
	asdata => \SW[5]~input_o\,
	clrn => \ALT_INV_SW[9]~input_o\,
	sload => \fash|ALT_INV_START~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsh|data\(3));

-- Location: LCCOMB_X56_Y52_N26
\fsh|data~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fsh|data~2_combout\ = (\SW[8]~input_o\ & (\fsh|data\(1))) # (!\SW[8]~input_o\ & ((\fsh|data\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsh|data\(1),
	datab => \SW[8]~input_o\,
	datad => \fsh|data\(3),
	combout => \fsh|data~2_combout\);

-- Location: FF_X56_Y52_N27
\fsh|data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \fsh|data~2_combout\,
	asdata => \SW[4]~input_o\,
	clrn => \ALT_INV_SW[9]~input_o\,
	sload => \fash|ALT_INV_START~q\,
	ena => \fsh|out_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsh|data\(2));

-- Location: LCCOMB_X56_Y52_N30
\fsh|data~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fsh|data~1_combout\ = (\SW[8]~input_o\ & (\fsh|data\(0))) # (!\SW[8]~input_o\ & ((\fsh|data\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsh|data\(0),
	datab => \SW[8]~input_o\,
	datad => \fsh|data\(2),
	combout => \fsh|data~1_combout\);

-- Location: FF_X56_Y52_N31
\fsh|data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \fsh|data~1_combout\,
	asdata => \SW[3]~input_o\,
	clrn => \ALT_INV_SW[9]~input_o\,
	sload => \fash|ALT_INV_START~q\,
	ena => \fsh|out_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsh|data\(1));

-- Location: FF_X57_Y52_N9
\fsh|out_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \fsh|data\(1),
	clrn => \ALT_INV_SW[9]~input_o\,
	sload => VCC,
	ena => \fsh|ALT_INV_out_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsh|out_reg\(1));

-- Location: LCCOMB_X58_Y52_N16
\fash|data~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fash|data~3_combout\ = (\SW[8]~input_o\ & ((\fash|counter[3]~1_combout\ & (\fash|data\(2))) # (!\fash|counter[3]~1_combout\ & ((\fash|data\(3)))))) # (!\SW[8]~input_o\ & (((\fash|data\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \fash|data\(2),
	datac => \fash|data\(3),
	datad => \fash|counter[3]~1_combout\,
	combout => \fash|data~3_combout\);

-- Location: FF_X58_Y52_N17
\fash|data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \fash|data~3_combout\,
	asdata => \SW[5]~input_o\,
	clrn => \ALT_INV_SW[9]~input_o\,
	sload => \fash|ALT_INV_START~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fash|data\(3));

-- Location: LCCOMB_X56_Y52_N12
\fash|data~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fash|data~2_combout\ = (\SW[8]~input_o\ & (\fash|data\(1))) # (!\SW[8]~input_o\ & ((\fash|data\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fash|data\(1),
	datab => \SW[8]~input_o\,
	datad => \fash|data\(3),
	combout => \fash|data~2_combout\);

-- Location: FF_X56_Y52_N13
\fash|data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \fash|data~2_combout\,
	asdata => \SW[4]~input_o\,
	clrn => \ALT_INV_SW[9]~input_o\,
	sload => \fash|ALT_INV_START~q\,
	ena => \fsh|out_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fash|data\(2));

-- Location: LCCOMB_X56_Y52_N0
\fash|data~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fash|data~0_combout\ = (!\SW[8]~input_o\ & \fash|data\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[8]~input_o\,
	datad => \fash|data\(1),
	combout => \fash|data~0_combout\);

-- Location: FF_X56_Y52_N1
\fash|data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \fash|data~0_combout\,
	asdata => \SW[2]~input_o\,
	clrn => \ALT_INV_SW[9]~input_o\,
	sload => \fash|ALT_INV_START~q\,
	ena => \fsh|out_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fash|data\(0));

-- Location: LCCOMB_X56_Y52_N16
\fash|data~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fash|data~1_combout\ = (\SW[8]~input_o\ & ((\fash|data\(0)))) # (!\SW[8]~input_o\ & (\fash|data\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fash|data\(2),
	datab => \SW[8]~input_o\,
	datad => \fash|data\(0),
	combout => \fash|data~1_combout\);

-- Location: FF_X56_Y52_N17
\fash|data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \fash|data~1_combout\,
	asdata => \SW[3]~input_o\,
	clrn => \ALT_INV_SW[9]~input_o\,
	sload => \fash|ALT_INV_START~q\,
	ena => \fsh|out_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fash|data\(1));

-- Location: FF_X57_Y52_N7
\fash|out_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \fash|data\(1),
	clrn => \ALT_INV_SW[9]~input_o\,
	sload => VCC,
	ena => \fsh|ALT_INV_out_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fash|out_reg\(1));

-- Location: LCCOMB_X57_Y52_N4
\Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (state(2) & !state(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => state(2),
	datad => state(0),
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X57_Y52_N6
\Mux7~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~3_combout\ = (\Mux7~2_combout\ & ((\fsh|out_reg\(1)) # ((!\Mux6~0_combout\)))) # (!\Mux7~2_combout\ & (((\fash|out_reg\(1) & \Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~2_combout\,
	datab => \fsh|out_reg\(1),
	datac => \fash|out_reg\(1),
	datad => \Mux6~0_combout\,
	combout => \Mux7~3_combout\);

-- Location: LCCOMB_X58_Y53_N16
\cmp|temp_xnor[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmp|temp_xnor[3]~0_combout\ = \SW[5]~input_o\ $ (\SW[9]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[5]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \cmp|temp_xnor[3]~0_combout\);

-- Location: LCCOMB_X57_Y52_N18
\Mux6~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~6_combout\ = (\mod|div|WideNor0~combout\ & ((\Mux6~5_combout\ & (\cmp|temp_xnor[3]~0_combout\)) # (!\Mux6~5_combout\ & ((state(3)))))) # (!\mod|div|WideNor0~combout\ & (((state(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mod|div|WideNor0~combout\,
	datab => \cmp|temp_xnor[3]~0_combout\,
	datac => \Mux6~5_combout\,
	datad => state(3),
	combout => \Mux6~6_combout\);

-- Location: LCCOMB_X58_Y52_N6
\frsh|data~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \frsh|data~0_combout\ = (\SW[8]~input_o\ & ((\frsh|data\(3)))) # (!\SW[8]~input_o\ & (\frsh|data\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \frsh|data\(1),
	datad => \frsh|data\(3),
	combout => \frsh|data~0_combout\);

-- Location: FF_X58_Y52_N7
\frsh|data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \frsh|data~0_combout\,
	asdata => \SW[2]~input_o\,
	clrn => \ALT_INV_SW[9]~input_o\,
	sload => \fash|ALT_INV_START~q\,
	ena => \fsh|out_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \frsh|data\(0));

-- Location: LCCOMB_X58_Y52_N10
\frsh|data~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \frsh|data~3_combout\ = (\SW[8]~input_o\ & (\frsh|data\(2))) # (!\SW[8]~input_o\ & ((\frsh|data\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \frsh|data\(2),
	datad => \frsh|data\(0),
	combout => \frsh|data~3_combout\);

-- Location: FF_X58_Y52_N11
\frsh|data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \frsh|data~3_combout\,
	asdata => \SW[5]~input_o\,
	clrn => \ALT_INV_SW[9]~input_o\,
	sload => \fash|ALT_INV_START~q\,
	ena => \fsh|out_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \frsh|data\(3));

-- Location: LCCOMB_X58_Y52_N14
\frsh|data~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \frsh|data~2_combout\ = (\SW[8]~input_o\ & (\frsh|data\(1))) # (!\SW[8]~input_o\ & ((\frsh|data\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \frsh|data\(1),
	datad => \frsh|data\(3),
	combout => \frsh|data~2_combout\);

-- Location: FF_X58_Y52_N15
\frsh|data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \frsh|data~2_combout\,
	asdata => \SW[4]~input_o\,
	clrn => \ALT_INV_SW[9]~input_o\,
	sload => \fash|ALT_INV_START~q\,
	ena => \fsh|out_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \frsh|data\(2));

-- Location: LCCOMB_X58_Y52_N20
\frsh|data~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \frsh|data~1_combout\ = (\SW[8]~input_o\ & ((\frsh|data\(0)))) # (!\SW[8]~input_o\ & (\frsh|data\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \frsh|data\(2),
	datad => \frsh|data\(0),
	combout => \frsh|data~1_combout\);

-- Location: FF_X58_Y52_N21
\frsh|data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \frsh|data~1_combout\,
	asdata => \SW[3]~input_o\,
	clrn => \ALT_INV_SW[9]~input_o\,
	sload => \fash|ALT_INV_START~q\,
	ena => \fsh|out_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \frsh|data\(1));

-- Location: FF_X57_Y52_N27
\frsh|out_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \frsh|data\(1),
	clrn => \ALT_INV_SW[9]~input_o\,
	sload => VCC,
	ena => \fsh|ALT_INV_out_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \frsh|out_reg\(1));

-- Location: LCCOMB_X57_Y52_N12
\Mux6~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~8_combout\ = (!\Mux6~7_combout\ & (((\Mux6~1_combout\ & !state(0))) # (!\Mux6~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~7_combout\,
	datab => \Mux6~6_combout\,
	datac => \Mux6~1_combout\,
	datad => state(0),
	combout => \Mux6~8_combout\);

-- Location: LCCOMB_X57_Y52_N26
\Mux7~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~4_combout\ = (\Mux6~6_combout\ & (((\frsh|out_reg\(1) & \Mux6~8_combout\)))) # (!\Mux6~6_combout\ & ((\Mux7~3_combout\) # ((!\Mux6~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~3_combout\,
	datab => \Mux6~6_combout\,
	datac => \frsh|out_reg\(1),
	datad => \Mux6~8_combout\,
	combout => \Mux7~4_combout\);

-- Location: LCCOMB_X59_Y51_N14
\cmp|less~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmp|less~3_combout\ = (\SW[6]~input_o\ & !\SW[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datac => \SW[2]~input_o\,
	combout => \cmp|less~3_combout\);

-- Location: LCCOMB_X59_Y51_N28
\div|rem_res[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \div|rem_res[1]~1_combout\ = \div|mux3[0]~0_combout\ $ (((\div|add4|fa4|c_out~combout\ & (\cmp|less~3_combout\ $ (\div|interim2[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|mux3[0]~0_combout\,
	datab => \cmp|less~3_combout\,
	datac => \div|interim2[1]~0_combout\,
	datad => \div|add4|fa4|c_out~combout\,
	combout => \div|rem_res[1]~1_combout\);

-- Location: LCCOMB_X57_Y52_N2
Mux7 : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~combout\ = (\Mux6~7_combout\ & (\div|rem_res[1]~1_combout\ $ (((\div|rem_res[0]~0_combout\ & !\Mux7~4_combout\))))) # (!\Mux6~7_combout\ & (((\Mux7~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~7_combout\,
	datab => \div|rem_res[0]~0_combout\,
	datac => \Mux7~4_combout\,
	datad => \div|rem_res[1]~1_combout\,
	combout => \Mux7~combout\);

-- Location: LCCOMB_X55_Y52_N2
\mod|out[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mod|out[0]~2_combout\ = (\mod|div|WideNor0~combout\ & (\SW[2]~input_o\ $ (((\SW[6]~input_o\ & \div|add4|fa4|c_out~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[6]~input_o\,
	datac => \div|add4|fa4|c_out~combout\,
	datad => \mod|div|WideNor0~combout\,
	combout => \mod|out[0]~2_combout\);

-- Location: LCCOMB_X58_Y51_N10
\cmp|less~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmp|less~1_combout\ = (\SW[3]~input_o\ & (!\SW[2]~input_o\ & (\SW[6]~input_o\ & \SW[7]~input_o\))) # (!\SW[3]~input_o\ & ((\SW[7]~input_o\) # ((!\SW[2]~input_o\ & \SW[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \SW[6]~input_o\,
	datad => \SW[7]~input_o\,
	combout => \cmp|less~1_combout\);

-- Location: LCCOMB_X58_Y53_N0
\cmp|less~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmp|less~0_combout\ = \SW[5]~input_o\ $ (!\SW[9]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[5]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \cmp|less~0_combout\);

-- Location: LCCOMB_X58_Y53_N22
\cmp|less~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmp|less~2_combout\ = (\cmp|less~0_combout\ & ((\cmp|less~1_combout\ & ((\SW[8]~input_o\) # (!\SW[4]~input_o\))) # (!\cmp|less~1_combout\ & (\SW[8]~input_o\ & !\SW[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmp|less~1_combout\,
	datab => \SW[8]~input_o\,
	datac => \SW[4]~input_o\,
	datad => \cmp|less~0_combout\,
	combout => \cmp|less~2_combout\);

-- Location: LCCOMB_X57_Y53_N2
\ccpm|less~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ccpm|less~0_combout\ = (\SW[0]~input_o\ & ((\cmp|less~2_combout\) # (!\SW[1]~input_o\))) # (!\SW[0]~input_o\ & (!\SW[1]~input_o\ & \cmp|less~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datac => \SW[1]~input_o\,
	datad => \cmp|less~2_combout\,
	combout => \ccpm|less~0_combout\);

-- Location: LCCOMB_X57_Y52_N24
\frsh|out_reg[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \frsh|out_reg[0]~feeder_combout\ = \frsh|data\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \frsh|data\(0),
	combout => \frsh|out_reg[0]~feeder_combout\);

-- Location: FF_X57_Y52_N25
\frsh|out_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \frsh|out_reg[0]~feeder_combout\,
	clrn => \ALT_INV_SW[9]~input_o\,
	ena => \fsh|ALT_INV_out_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \frsh|out_reg\(0));

-- Location: LCCOMB_X57_Y53_N28
\Mux8~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux8~6_combout\ = (state(0) & (((state(1))))) # (!state(0) & ((state(1) & ((\cmp|less~2_combout\))) # (!state(1) & (\frsh|out_reg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(0),
	datab => \frsh|out_reg\(0),
	datac => state(1),
	datad => \cmp|less~2_combout\,
	combout => \Mux8~6_combout\);

-- Location: LCCOMB_X57_Y53_N24
\Mux8~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux8~7_combout\ = (state(0) & ((\Mux8~6_combout\ & ((\ccpm|less~0_combout\))) # (!\Mux8~6_combout\ & (\mod|out[0]~2_combout\)))) # (!state(0) & (((\Mux8~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(0),
	datab => \mod|out[0]~2_combout\,
	datac => \ccpm|less~0_combout\,
	datad => \Mux8~6_combout\,
	combout => \Mux8~7_combout\);

-- Location: LCCOMB_X57_Y51_N16
\cmp|temp_B[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmp|temp_B[0]~0_combout\ = (\SW[2]~input_o\ & \SW[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datac => \SW[6]~input_o\,
	combout => \cmp|temp_B[0]~0_combout\);

-- Location: LCCOMB_X57_Y53_N4
\out_status~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \out_status~0_combout\ = (\SW[2]~input_o\ $ (((\SW[6]~input_o\ & \div|add4|fa4|c_out~combout\)))) # (!\mod|div|WideNor0~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \mod|div|WideNor0~combout\,
	datac => \SW[2]~input_o\,
	datad => \div|add4|fa4|c_out~combout\,
	combout => \out_status~0_combout\);

-- Location: LCCOMB_X58_Y53_N26
\div|add4|fa1|ha|sum\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \div|add4|fa1|ha|sum~combout\ = \SW[6]~input_o\ $ (\SW[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[6]~input_o\,
	datac => \SW[2]~input_o\,
	combout => \div|add4|fa1|ha|sum~combout\);

-- Location: LCCOMB_X57_Y53_N26
\Mux8~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux8~3_combout\ = (state(0) & (((state(1))))) # (!state(0) & ((state(1) & (\out_status~0_combout\)) # (!state(1) & ((\div|add4|fa1|ha|sum~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(0),
	datab => \out_status~0_combout\,
	datac => state(1),
	datad => \div|add4|fa1|ha|sum~combout\,
	combout => \Mux8~3_combout\);

-- Location: LCCOMB_X56_Y53_N8
\sh|out[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sh|out[0]~0_combout\ = (\SW[3]~input_o\ & !\SW[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[3]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \sh|out[0]~0_combout\);

-- Location: LCCOMB_X57_Y53_N12
\Mux8~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux8~4_combout\ = (state(0) & ((\Mux8~3_combout\ & ((\sh|out[0]~0_combout\))) # (!\Mux8~3_combout\ & (\cmp|temp_B[0]~0_combout\)))) # (!state(0) & (((\Mux8~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(0),
	datab => \cmp|temp_B[0]~0_combout\,
	datac => \Mux8~3_combout\,
	datad => \sh|out[0]~0_combout\,
	combout => \Mux8~4_combout\);

-- Location: LCCOMB_X57_Y51_N28
\Mux8~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux8~1_combout\ = (state(0) & ((!\SW[1]~input_o\) # (!\SW[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[5]~input_o\,
	datac => state(0),
	datad => \SW[1]~input_o\,
	combout => \Mux8~1_combout\);

-- Location: FF_X57_Y52_N21
\fsh|out_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \fsh|data\(0),
	clrn => \ALT_INV_SW[9]~input_o\,
	sload => VCC,
	ena => \fsh|ALT_INV_out_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsh|out_reg\(0));

-- Location: FF_X57_Y52_N31
\fash|out_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \fash|data\(0),
	clrn => \ALT_INV_SW[9]~input_o\,
	sload => VCC,
	ena => \fsh|ALT_INV_out_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fash|out_reg\(0));

-- Location: LCCOMB_X57_Y52_N30
\Mux8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (state(0) & (((state(1))))) # (!state(0) & ((state(1) & ((\fash|out_reg\(0)))) # (!state(1) & (\fsh|out_reg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsh|out_reg\(0),
	datab => state(0),
	datac => \fash|out_reg\(0),
	datad => state(1),
	combout => \Mux8~0_combout\);

-- Location: LCCOMB_X57_Y51_N18
\Mux8~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux8~2_combout\ = (\Mux8~1_combout\ & (\SW[3]~input_o\ & ((!\SW[1]~input_o\)))) # (!\Mux8~1_combout\ & (((\Mux8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \Mux8~1_combout\,
	datac => \Mux8~0_combout\,
	datad => \SW[1]~input_o\,
	combout => \Mux8~2_combout\);

-- Location: LCCOMB_X57_Y53_N18
\Mux8~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux8~5_combout\ = (!state(3) & ((state(2) & ((\Mux8~2_combout\))) # (!state(2) & (\Mux8~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~4_combout\,
	datab => \Mux8~2_combout\,
	datac => state(2),
	datad => state(3),
	combout => \Mux8~5_combout\);

-- Location: LCCOMB_X57_Y53_N6
\Mux8~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux8~8_combout\ = (\Mux8~5_combout\) # ((state(3) & (\Mux8~7_combout\ & !state(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(3),
	datab => \Mux8~7_combout\,
	datac => state(2),
	datad => \Mux8~5_combout\,
	combout => \Mux8~8_combout\);

-- Location: LCCOMB_X58_Y51_N16
\add_sub|fa2|c_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \add_sub|fa2|c_out~0_combout\ = (\add_sub|fa1|c_out~0_combout\ & ((\SW[3]~input_o\) # (\SW[1]~input_o\ $ (\SW[7]~input_o\)))) # (!\add_sub|fa1|c_out~0_combout\ & (\SW[3]~input_o\ & (\SW[1]~input_o\ $ (\SW[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_sub|fa1|c_out~0_combout\,
	datab => \SW[3]~input_o\,
	datac => \SW[1]~input_o\,
	datad => \SW[7]~input_o\,
	combout => \add_sub|fa2|c_out~0_combout\);

-- Location: LCCOMB_X57_Y51_N20
\add_sub|fa3|sum~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \add_sub|fa3|sum~0_combout\ = \SW[4]~input_o\ $ (\SW[8]~input_o\ $ (\add_sub|fa2|c_out~0_combout\ $ (\SW[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[4]~input_o\,
	datab => \SW[8]~input_o\,
	datac => \add_sub|fa2|c_out~0_combout\,
	datad => \SW[1]~input_o\,
	combout => \add_sub|fa3|sum~0_combout\);

-- Location: LCCOMB_X58_Y51_N22
\mul|interim1[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mul|interim1\(2) = (\SW[6]~input_o\ & \div|interim1[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[6]~input_o\,
	datad => \div|interim1[2]~2_combout\,
	combout => \mul|interim1\(2));

-- Location: LCCOMB_X59_Y51_N18
\mul|add1|fa1|ha|c_out\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mul|add1|fa1|ha|c_out~combout\ = (\SW[6]~input_o\ & (\div|interim1[1]~0_combout\ & (\SW[2]~input_o\ & \div|interim2[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \div|interim1[1]~0_combout\,
	datac => \SW[2]~input_o\,
	datad => \div|interim2[1]~0_combout\,
	combout => \mul|add1|fa1|ha|c_out~combout\);

-- Location: LCCOMB_X58_Y51_N24
\mul|add1|fa2|sum\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mul|add1|fa2|sum~combout\ = \mul|interim1\(2) $ (\mul|add1|fa1|ha|c_out~combout\ $ (((\div|interim2[1]~0_combout\ & \div|interim1[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|interim2[1]~0_combout\,
	datab => \div|interim1[1]~0_combout\,
	datac => \mul|interim1\(2),
	datad => \mul|add1|fa1|ha|c_out~combout\,
	combout => \mul|add1|fa2|sum~combout\);

-- Location: LCCOMB_X58_Y51_N18
\mul|add2|fa1|ha|sum\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mul|add2|fa1|ha|sum~combout\ = \mul|add1|fa2|sum~combout\ $ (((\SW[2]~input_o\ & \div|interim2[2]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datac => \div|interim2[2]~1_combout\,
	datad => \mul|add1|fa2|sum~combout\,
	combout => \mul|add2|fa1|ha|sum~combout\);

-- Location: LCCOMB_X57_Y51_N26
\mul|fac3|fa3|sum\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mul|fac3|fa3|sum~combout\ = \mul|add2|fa1|ha|sum~combout\ $ (((\mul|add1|fa1|ha|sum~combout\) # ((\SW[2]~input_o\ & \SW[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \mul|add1|fa1|ha|sum~combout\,
	datac => \SW[6]~input_o\,
	datad => \mul|add2|fa1|ha|sum~combout\,
	combout => \mul|fac3|fa3|sum~combout\);

-- Location: LCCOMB_X58_Y51_N20
\Mux6~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~9_combout\ = (\Mux6~2_combout\ & (((!\Mux6~1_combout\)))) # (!\Mux6~2_combout\ & ((\Mux6~1_combout\ & ((\mul|add2|fa1|ha|sum~combout\))) # (!\Mux6~1_combout\ & (\SW[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~2_combout\,
	datab => \SW[5]~input_o\,
	datac => \Mux6~1_combout\,
	datad => \mul|add2|fa1|ha|sum~combout\,
	combout => \Mux6~9_combout\);

-- Location: LCCOMB_X57_Y51_N30
\Mux6~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~10_combout\ = (\Mux6~9_combout\ & (((\SW[3]~input_o\) # (!\Mux6~2_combout\)))) # (!\Mux6~9_combout\ & (\mul|fac3|fa3|sum~combout\ & ((\Mux6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mul|fac3|fa3|sum~combout\,
	datab => \SW[3]~input_o\,
	datac => \Mux6~9_combout\,
	datad => \Mux6~2_combout\,
	combout => \Mux6~10_combout\);

-- Location: LCCOMB_X57_Y51_N0
\Mux6~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~11_combout\ = (\Mux6~4_combout\ & (((\Mux6~10_combout\ & \Mux6~3_combout\)))) # (!\Mux6~4_combout\ & ((\add_sub|fa3|sum~0_combout\) # ((!\Mux6~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~4_combout\,
	datab => \add_sub|fa3|sum~0_combout\,
	datac => \Mux6~10_combout\,
	datad => \Mux6~3_combout\,
	combout => \Mux6~11_combout\);

-- Location: FF_X57_Y52_N17
\fash|out_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \fash|data\(2),
	clrn => \ALT_INV_SW[9]~input_o\,
	sload => VCC,
	ena => \fsh|ALT_INV_out_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fash|out_reg\(2));

-- Location: FF_X57_Y52_N11
\fsh|out_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \fsh|data\(2),
	clrn => \ALT_INV_SW[9]~input_o\,
	sload => VCC,
	ena => \fsh|ALT_INV_out_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsh|out_reg\(2));

-- Location: LCCOMB_X57_Y52_N16
\Mux6~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~12_combout\ = (\Mux6~0_combout\ & ((\Mux6~11_combout\ & ((\fsh|out_reg\(2)))) # (!\Mux6~11_combout\ & (\fash|out_reg\(2))))) # (!\Mux6~0_combout\ & (\Mux6~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~0_combout\,
	datab => \Mux6~11_combout\,
	datac => \fash|out_reg\(2),
	datad => \fsh|out_reg\(2),
	combout => \Mux6~12_combout\);

-- Location: FF_X57_Y52_N1
\frsh|out_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \frsh|data\(2),
	clrn => \ALT_INV_SW[9]~input_o\,
	sload => VCC,
	ena => \fsh|ALT_INV_out_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \frsh|out_reg\(2));

-- Location: LCCOMB_X57_Y52_N0
\Mux6~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~13_combout\ = (\Mux6~8_combout\ & ((\Mux6~6_combout\ & ((\frsh|out_reg\(2)))) # (!\Mux6~6_combout\ & (\Mux6~12_combout\)))) # (!\Mux6~8_combout\ & (((!\Mux6~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~8_combout\,
	datab => \Mux6~12_combout\,
	datac => \frsh|out_reg\(2),
	datad => \Mux6~6_combout\,
	combout => \Mux6~13_combout\);

-- Location: LCCOMB_X59_Y51_N16
\div|rem_res[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \div|rem_res[2]~2_combout\ = \div|mux3[1]~1_combout\ $ (((\div|add4|fa4|c_out~combout\ & (\div|interim2[2]~1_combout\ $ (!\div|add4|fa2|c_out~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|add4|fa4|c_out~combout\,
	datab => \div|interim2[2]~1_combout\,
	datac => \div|mux3[1]~1_combout\,
	datad => \div|add4|fa2|c_out~combout\,
	combout => \div|rem_res[2]~2_combout\);

-- Location: LCCOMB_X59_Y52_N16
\div|rem|fa2|c_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \div|rem|fa2|c_out~0_combout\ = (\div|rem_res[1]~1_combout\) # (\SW[2]~input_o\ $ (((\SW[6]~input_o\ & \div|add4|fa4|c_out~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \div|add4|fa4|c_out~combout\,
	datac => \div|rem_res[1]~1_combout\,
	datad => \SW[2]~input_o\,
	combout => \div|rem|fa2|c_out~0_combout\);

-- Location: LCCOMB_X57_Y52_N22
Mux6 : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~combout\ = (\Mux6~7_combout\ & (\div|rem_res[2]~2_combout\ $ (((!\Mux6~13_combout\ & \div|rem|fa2|c_out~0_combout\))))) # (!\Mux6~7_combout\ & (\Mux6~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~7_combout\,
	datab => \Mux6~13_combout\,
	datac => \div|rem_res[2]~2_combout\,
	datad => \div|rem|fa2|c_out~0_combout\,
	combout => \Mux6~combout\);

-- Location: LCCOMB_X55_Y52_N10
\fash|out_reg[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fash|out_reg[3]~feeder_combout\ = \fash|data\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fash|data\(3),
	combout => \fash|out_reg[3]~feeder_combout\);

-- Location: FF_X55_Y52_N11
\fash|out_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \fash|out_reg[3]~feeder_combout\,
	clrn => \ALT_INV_SW[9]~input_o\,
	ena => \fsh|ALT_INV_out_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fash|out_reg\(3));

-- Location: FF_X55_Y52_N13
\fsh|out_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \fsh|data\(3),
	clrn => \ALT_INV_SW[9]~input_o\,
	sload => VCC,
	ena => \fsh|ALT_INV_out_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsh|out_reg\(3));

-- Location: LCCOMB_X55_Y52_N18
\Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (state(0) & ((state(1) & (\SW[2]~input_o\)) # (!state(1) & ((\SW[5]~input_o\))))) # (!state(0) & (((state(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => state(0),
	datac => \SW[5]~input_o\,
	datad => state(1),
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X55_Y52_N20
\Mux5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~1_combout\ = (\SW[1]~input_o\ & ((state(0) & (\SW[4]~input_o\)) # (!state(0) & ((\Mux5~0_combout\))))) # (!\SW[1]~input_o\ & (((\Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => state(0),
	datac => \SW[4]~input_o\,
	datad => \Mux5~0_combout\,
	combout => \Mux5~1_combout\);

-- Location: LCCOMB_X55_Y52_N12
\Mux5~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~2_combout\ = (state(0) & (((\Mux5~1_combout\)))) # (!state(0) & ((\Mux5~1_combout\ & (\fash|out_reg\(3))) # (!\Mux5~1_combout\ & ((\fsh|out_reg\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fash|out_reg\(3),
	datab => state(0),
	datac => \fsh|out_reg\(3),
	datad => \Mux5~1_combout\,
	combout => \Mux5~2_combout\);

-- Location: LCCOMB_X55_Y52_N26
\sh|out[3]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sh|out[3]~1_combout\ = (\SW[4]~input_o\ & \SW[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[4]~input_o\,
	datac => \SW[1]~input_o\,
	combout => \sh|out[3]~1_combout\);

-- Location: LCCOMB_X57_Y51_N12
\mul|fac3|fa3|c_out~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mul|fac3|fa3|c_out~2_combout\ = (\mul|add1|fa1|ha|sum~combout\) # ((\mul|add2|fa1|ha|sum~combout\) # ((\SW[2]~input_o\ & \SW[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \mul|add1|fa1|ha|sum~combout\,
	datac => \SW[6]~input_o\,
	datad => \mul|add2|fa1|ha|sum~combout\,
	combout => \mul|fac3|fa3|c_out~2_combout\);

-- Location: LCCOMB_X56_Y52_N24
\Mux5~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~3_combout\ = (\SW[4]~input_o\ & ((\add_sub|fa2|c_out~0_combout\ & (!\SW[1]~input_o\)) # (!\add_sub|fa2|c_out~0_combout\ & ((\SW[8]~input_o\))))) # (!\SW[4]~input_o\ & ((\add_sub|fa2|c_out~0_combout\ & ((\SW[8]~input_o\))) # 
-- (!\add_sub|fa2|c_out~0_combout\ & (\SW[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[4]~input_o\,
	datac => \SW[8]~input_o\,
	datad => \add_sub|fa2|c_out~0_combout\,
	combout => \Mux5~3_combout\);

-- Location: LCCOMB_X55_Y52_N22
\Mux5~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~4_combout\ = (state(0) & (\cmp|temp_xnor[3]~0_combout\ & (\mul|fac3|fa3|c_out~2_combout\))) # (!state(0) & (\cmp|temp_xnor[3]~0_combout\ $ (((\Mux5~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmp|temp_xnor[3]~0_combout\,
	datab => \mul|fac3|fa3|c_out~2_combout\,
	datac => state(0),
	datad => \Mux5~3_combout\,
	combout => \Mux5~4_combout\);

-- Location: LCCOMB_X58_Y51_N28
\mul|interim3[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mul|interim3\(1) = (\div|interim2[2]~1_combout\ & (\SW[3]~input_o\ $ (((\SW[2]~input_o\ & \SW[5]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \div|interim2[2]~1_combout\,
	datad => \SW[5]~input_o\,
	combout => \mul|interim3\(1));

-- Location: LCCOMB_X58_Y51_N30
\mul|add1|fa3|ha|sum\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mul|add1|fa3|ha|sum~combout\ = (\div|interim1[3]~1_combout\ & ((\SW[6]~input_o\) # ((\div|interim1[2]~2_combout\ & \div|interim2[1]~0_combout\)))) # (!\div|interim1[3]~1_combout\ & (\div|interim1[2]~2_combout\ & ((\div|interim2[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|interim1[3]~1_combout\,
	datab => \div|interim1[2]~2_combout\,
	datac => \SW[6]~input_o\,
	datad => \div|interim2[1]~0_combout\,
	combout => \mul|add1|fa3|ha|sum~combout\);

-- Location: LCCOMB_X58_Y51_N4
\mul|add1|fa2|c_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mul|add1|fa2|c_out~0_combout\ = (\mul|interim1\(2) & ((\mul|add1|fa1|ha|c_out~combout\) # ((\div|interim2[1]~0_combout\ & \div|interim1[1]~0_combout\)))) # (!\mul|interim1\(2) & (\div|interim2[1]~0_combout\ & (\div|interim1[1]~0_combout\ & 
-- \mul|add1|fa1|ha|c_out~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|interim2[1]~0_combout\,
	datab => \div|interim1[1]~0_combout\,
	datac => \mul|interim1\(2),
	datad => \mul|add1|fa1|ha|c_out~combout\,
	combout => \mul|add1|fa2|c_out~0_combout\);

-- Location: LCCOMB_X58_Y53_N6
\mul|add2|fa1|ha|c_out\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mul|add2|fa1|ha|c_out~combout\ = (\div|interim2[2]~1_combout\ & (\SW[2]~input_o\ & \mul|add1|fa2|sum~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|interim2[2]~1_combout\,
	datac => \SW[2]~input_o\,
	datad => \mul|add1|fa2|sum~combout\,
	combout => \mul|add2|fa1|ha|c_out~combout\);

-- Location: LCCOMB_X58_Y53_N24
\mul|add2|fa2|sum\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mul|add2|fa2|sum~combout\ = \mul|interim3\(1) $ (\mul|add1|fa3|ha|sum~combout\ $ (\mul|add1|fa2|c_out~0_combout\ $ (\mul|add2|fa1|ha|c_out~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mul|interim3\(1),
	datab => \mul|add1|fa3|ha|sum~combout\,
	datac => \mul|add1|fa2|c_out~0_combout\,
	datad => \mul|add2|fa1|ha|c_out~combout\,
	combout => \mul|add2|fa2|sum~combout\);

-- Location: LCCOMB_X59_Y53_N12
\mul|add3|fa1|ha|sum\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mul|add3|fa1|ha|sum~combout\ = \mul|add2|fa2|sum~combout\ $ (((\SW[2]~input_o\ & !\div|add2|fa4|c_out~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datac => \div|add2|fa4|c_out~0_combout\,
	datad => \mul|add2|fa2|sum~combout\,
	combout => \mul|add3|fa1|ha|sum~combout\);

-- Location: LCCOMB_X55_Y52_N28
\Mux5~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~5_combout\ = (state(1) & (((state(0))))) # (!state(1) & (\Mux5~4_combout\ $ (((state(0) & \mul|add3|fa1|ha|sum~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~4_combout\,
	datab => state(0),
	datac => \mul|add3|fa1|ha|sum~combout\,
	datad => state(1),
	combout => \Mux5~5_combout\);

-- Location: LCCOMB_X59_Y52_N2
\div|rem|fa3|c_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \div|rem|fa3|c_out~0_combout\ = (\div|rem_res[2]~2_combout\) # ((\div|rem_res[0]~0_combout\) # (\div|rem_res[1]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|rem_res[2]~2_combout\,
	datab => \div|rem_res[0]~0_combout\,
	datac => \div|rem_res[1]~1_combout\,
	combout => \div|rem|fa3|c_out~0_combout\);

-- Location: LCCOMB_X58_Y51_N6
\div|rem_res[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \div|rem_res[3]~3_combout\ = (\div|mux3[2]~2_combout\ & (\div|add4|fa3|c_out~combout\ $ (!\div|add2|fa4|c_out~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \div|add4|fa3|c_out~combout\,
	datac => \div|add2|fa4|c_out~0_combout\,
	datad => \div|mux3[2]~2_combout\,
	combout => \div|rem_res[3]~3_combout\);

-- Location: LCCOMB_X55_Y53_N16
\out_status~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \out_status~1_combout\ = (\div|rem_res[3]~3_combout\ $ (((\cmp|temp_xnor[3]~0_combout\ & \div|rem|fa3|c_out~0_combout\)))) # (!\mod|div|WideNor0~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmp|temp_xnor[3]~0_combout\,
	datab => \div|rem|fa3|c_out~0_combout\,
	datac => \mod|div|WideNor0~combout\,
	datad => \div|rem_res[3]~3_combout\,
	combout => \out_status~1_combout\);

-- Location: LCCOMB_X55_Y52_N24
\Mux5~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~6_combout\ = (\Mux5~5_combout\ & ((\sh|out[3]~1_combout\) # ((!state(1))))) # (!\Mux5~5_combout\ & (((\out_status~1_combout\ & state(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sh|out[3]~1_combout\,
	datab => \Mux5~5_combout\,
	datac => \out_status~1_combout\,
	datad => state(1),
	combout => \Mux5~6_combout\);

-- Location: LCCOMB_X55_Y52_N6
\Mux5~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~7_combout\ = (!state(3) & ((state(2) & (\Mux5~2_combout\)) # (!state(2) & ((\Mux5~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~2_combout\,
	datab => \Mux5~6_combout\,
	datac => state(2),
	datad => state(3),
	combout => \Mux5~7_combout\);

-- Location: LCCOMB_X57_Y52_N28
\out_status~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \out_status~2_combout\ = \div|rem_res[3]~3_combout\ $ ((((!\div|rem_res[2]~2_combout\ & !\div|rem|fa2|c_out~0_combout\)) # (!\cmp|temp_xnor[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|rem_res[3]~3_combout\,
	datab => \div|rem_res[2]~2_combout\,
	datac => \cmp|temp_xnor[3]~0_combout\,
	datad => \div|rem|fa2|c_out~0_combout\,
	combout => \out_status~2_combout\);

-- Location: FF_X57_Y52_N5
\frsh|out_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \frsh|data\(3),
	clrn => \ALT_INV_SW[9]~input_o\,
	sload => VCC,
	ena => \fsh|ALT_INV_out_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \frsh|out_reg\(3));

-- Location: LCCOMB_X57_Y52_N14
\Mux5~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~8_combout\ = (state(0) & (\mod|div|WideNor0~combout\ & (!\out_status~2_combout\))) # (!state(0) & (((\frsh|out_reg\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mod|div|WideNor0~combout\,
	datab => \out_status~2_combout\,
	datac => \frsh|out_reg\(3),
	datad => state(0),
	combout => \Mux5~8_combout\);

-- Location: LCCOMB_X58_Y52_N4
\Mux5~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~9_combout\ = (\Mux5~7_combout\) # ((state(3) & (\Mux6~1_combout\ & \Mux5~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(3),
	datab => \Mux5~7_combout\,
	datac => \Mux6~1_combout\,
	datad => \Mux5~8_combout\,
	combout => \Mux5~9_combout\);

-- Location: LCCOMB_X65_Y53_N24
\hex0s|WideOr6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hex0s|WideOr6~0_combout\ = (\Mux8~8_combout\ & ((\Mux5~9_combout\) # (\Mux7~combout\ $ (\Mux6~combout\)))) # (!\Mux8~8_combout\ & ((\Mux7~combout\) # (\Mux6~combout\ $ (\Mux5~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~combout\,
	datab => \Mux8~8_combout\,
	datac => \Mux6~combout\,
	datad => \Mux5~9_combout\,
	combout => \hex0s|WideOr6~0_combout\);

-- Location: LCCOMB_X65_Y53_N14
\hex0s|WideOr5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hex0s|WideOr5~0_combout\ = (\Mux7~combout\ & (!\Mux5~9_combout\ & ((\Mux8~8_combout\) # (!\Mux6~combout\)))) # (!\Mux7~combout\ & (\Mux8~8_combout\ & (\Mux6~combout\ $ (!\Mux5~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~combout\,
	datab => \Mux8~8_combout\,
	datac => \Mux6~combout\,
	datad => \Mux5~9_combout\,
	combout => \hex0s|WideOr5~0_combout\);

-- Location: LCCOMB_X65_Y53_N0
\hex0s|WideOr4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hex0s|WideOr4~0_combout\ = (\Mux7~combout\ & (\Mux8~8_combout\ & ((!\Mux5~9_combout\)))) # (!\Mux7~combout\ & ((\Mux6~combout\ & ((!\Mux5~9_combout\))) # (!\Mux6~combout\ & (\Mux8~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~combout\,
	datab => \Mux8~8_combout\,
	datac => \Mux6~combout\,
	datad => \Mux5~9_combout\,
	combout => \hex0s|WideOr4~0_combout\);

-- Location: LCCOMB_X65_Y53_N2
\hex0s|WideOr3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hex0s|WideOr3~0_combout\ = (\Mux7~combout\ & ((\Mux8~8_combout\ & (\Mux6~combout\)) # (!\Mux8~8_combout\ & (!\Mux6~combout\ & \Mux5~9_combout\)))) # (!\Mux7~combout\ & (!\Mux5~9_combout\ & (\Mux8~8_combout\ $ (\Mux6~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~combout\,
	datab => \Mux8~8_combout\,
	datac => \Mux6~combout\,
	datad => \Mux5~9_combout\,
	combout => \hex0s|WideOr3~0_combout\);

-- Location: LCCOMB_X65_Y53_N28
\hex0s|WideOr2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hex0s|WideOr2~0_combout\ = (\Mux6~combout\ & (\Mux5~9_combout\ & ((\Mux7~combout\) # (!\Mux8~8_combout\)))) # (!\Mux6~combout\ & (\Mux7~combout\ & (!\Mux8~8_combout\ & !\Mux5~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~combout\,
	datab => \Mux8~8_combout\,
	datac => \Mux6~combout\,
	datad => \Mux5~9_combout\,
	combout => \hex0s|WideOr2~0_combout\);

-- Location: LCCOMB_X65_Y53_N22
\hex0s|WideOr1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hex0s|WideOr1~0_combout\ = (\Mux7~combout\ & ((\Mux8~8_combout\ & ((\Mux5~9_combout\))) # (!\Mux8~8_combout\ & (\Mux6~combout\)))) # (!\Mux7~combout\ & (\Mux6~combout\ & (\Mux8~8_combout\ $ (\Mux5~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~combout\,
	datab => \Mux8~8_combout\,
	datac => \Mux6~combout\,
	datad => \Mux5~9_combout\,
	combout => \hex0s|WideOr1~0_combout\);

-- Location: LCCOMB_X65_Y53_N12
\hex0s|WideOr0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hex0s|WideOr0~0_combout\ = (\Mux6~combout\ & (!\Mux7~combout\ & (\Mux8~8_combout\ $ (!\Mux5~9_combout\)))) # (!\Mux6~combout\ & (\Mux8~8_combout\ & (\Mux7~combout\ $ (!\Mux5~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~combout\,
	datab => \Mux8~8_combout\,
	datac => \Mux6~combout\,
	datad => \Mux5~9_combout\,
	combout => \hex0s|WideOr0~0_combout\);

-- Location: LCCOMB_X55_Y53_N24
\Mux3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~2_combout\ = (state(1) & (((\div|rem_res[3]~3_combout\ & \cmp|temp_xnor[3]~0_combout\)) # (!\mod|div|WideNor0~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|rem_res[3]~3_combout\,
	datab => state(1),
	datac => \mod|div|WideNor0~combout\,
	datad => \cmp|temp_xnor[3]~0_combout\,
	combout => \Mux3~2_combout\);

-- Location: LCCOMB_X55_Y53_N14
\Mux3~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~3_combout\ = (\Mux3~2_combout\) # ((\cmp|temp_xnor[3]~0_combout\ & (state(1) & \div|rem|fa3|c_out~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmp|temp_xnor[3]~0_combout\,
	datab => \Mux3~2_combout\,
	datac => state(1),
	datad => \div|rem|fa3|c_out~0_combout\,
	combout => \Mux3~3_combout\);

-- Location: LCCOMB_X59_Y53_N22
\mul|interim3[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mul|interim3\(3) = (\div|interim1[3]~1_combout\ & \div|interim2[2]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|interim1[3]~1_combout\,
	datad => \div|interim2[2]~1_combout\,
	combout => \mul|interim3\(3));

-- Location: LCCOMB_X58_Y53_N14
\mul|add2|fa2|c_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mul|add2|fa2|c_out~0_combout\ = (\mul|interim3\(1) & ((\mul|add2|fa1|ha|c_out~combout\) # (\mul|add1|fa3|ha|sum~combout\ $ (\mul|add1|fa2|c_out~0_combout\)))) # (!\mul|interim3\(1) & (\mul|add2|fa1|ha|c_out~combout\ & (\mul|add1|fa3|ha|sum~combout\ $ 
-- (\mul|add1|fa2|c_out~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mul|interim3\(1),
	datab => \mul|add1|fa3|ha|sum~combout\,
	datac => \mul|add1|fa2|c_out~0_combout\,
	datad => \mul|add2|fa1|ha|c_out~combout\,
	combout => \mul|add2|fa2|c_out~0_combout\);

-- Location: LCCOMB_X58_Y53_N10
\mul|interim1[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mul|interim1\(3) = (\div|interim1[3]~1_combout\ & \SW[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \div|interim1[3]~1_combout\,
	datac => \SW[6]~input_o\,
	combout => \mul|interim1\(3));

-- Location: LCCOMB_X58_Y53_N4
\mul|add1|fa3|c_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mul|add1|fa3|c_out~0_combout\ = (\mul|interim1\(3) & ((\mul|add1|fa2|c_out~0_combout\) # ((\div|interim1[2]~2_combout\ & \div|interim2[1]~0_combout\)))) # (!\mul|interim1\(3) & (\div|interim1[2]~2_combout\ & (\mul|add1|fa2|c_out~0_combout\ & 
-- \div|interim2[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mul|interim1\(3),
	datab => \div|interim1[2]~2_combout\,
	datac => \mul|add1|fa2|c_out~0_combout\,
	datad => \div|interim2[1]~0_combout\,
	combout => \mul|add1|fa3|c_out~0_combout\);

-- Location: LCCOMB_X58_Y53_N18
\mul|interim3[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mul|interim3\(2) = (\div|interim2[2]~1_combout\ & \div|interim1[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \div|interim2[2]~1_combout\,
	datad => \div|interim1[2]~2_combout\,
	combout => \mul|interim3\(2));

-- Location: LCCOMB_X59_Y53_N0
\mul|add2|fa3|c_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mul|add2|fa3|c_out~0_combout\ = (\mul|add2|fa2|c_out~0_combout\ & ((\mul|interim3\(2)) # (\mul|interim2[3]~2_combout\ $ (\mul|add1|fa3|c_out~0_combout\)))) # (!\mul|add2|fa2|c_out~0_combout\ & (\mul|interim3\(2) & (\mul|interim2[3]~2_combout\ $ 
-- (\mul|add1|fa3|c_out~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mul|add2|fa2|c_out~0_combout\,
	datab => \mul|interim2[3]~2_combout\,
	datac => \mul|add1|fa3|c_out~0_combout\,
	datad => \mul|interim3\(2),
	combout => \mul|add2|fa3|c_out~0_combout\);

-- Location: LCCOMB_X59_Y53_N4
\mul|interim4[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mul|interim4\(2) = (!\div|add2|fa4|c_out~0_combout\ & \div|interim1[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|add2|fa4|c_out~0_combout\,
	datac => \div|interim1[2]~2_combout\,
	combout => \mul|interim4\(2));

-- Location: LCCOMB_X59_Y53_N28
\mul|add2|fa3|ha|sum\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mul|add2|fa3|ha|sum~combout\ = \mul|interim2[3]~2_combout\ $ (\mul|add1|fa3|c_out~0_combout\ $ (((\div|interim1[2]~2_combout\ & \div|interim2[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|interim1[2]~2_combout\,
	datab => \mul|interim2[3]~2_combout\,
	datac => \mul|add1|fa3|c_out~0_combout\,
	datad => \div|interim2[2]~1_combout\,
	combout => \mul|add2|fa3|ha|sum~combout\);

-- Location: LCCOMB_X59_Y53_N30
\mul|add3|fa1|ha|c_out\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mul|add3|fa1|ha|c_out~combout\ = (\SW[2]~input_o\ & (!\div|add2|fa4|c_out~0_combout\ & \mul|add2|fa2|sum~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datac => \div|add2|fa4|c_out~0_combout\,
	datad => \mul|add2|fa2|sum~combout\,
	combout => \mul|add3|fa1|ha|c_out~combout\);

-- Location: LCCOMB_X58_Y53_N2
\mul|interim4[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mul|interim4\(1) = (!\div|add2|fa4|c_out~0_combout\ & (\SW[3]~input_o\ $ (((\SW[2]~input_o\ & \SW[5]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \SW[5]~input_o\,
	datad => \div|add2|fa4|c_out~0_combout\,
	combout => \mul|interim4\(1));

-- Location: LCCOMB_X59_Y53_N2
\mul|add3|fa2|c_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mul|add3|fa2|c_out~0_combout\ = (\mul|add3|fa1|ha|c_out~combout\ & ((\mul|interim4\(1)) # (\mul|add2|fa2|c_out~0_combout\ $ (\mul|add2|fa3|ha|sum~combout\)))) # (!\mul|add3|fa1|ha|c_out~combout\ & (\mul|interim4\(1) & (\mul|add2|fa2|c_out~0_combout\ $ 
-- (\mul|add2|fa3|ha|sum~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mul|add2|fa2|c_out~0_combout\,
	datab => \mul|add2|fa3|ha|sum~combout\,
	datac => \mul|add3|fa1|ha|c_out~combout\,
	datad => \mul|interim4\(1),
	combout => \mul|add3|fa2|c_out~0_combout\);

-- Location: LCCOMB_X59_Y53_N26
\mul|add3|fa3|c_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mul|add3|fa3|c_out~0_combout\ = (\mul|interim4\(2) & ((\mul|add3|fa2|c_out~0_combout\) # (\mul|interim3\(3) $ (\mul|add2|fa3|c_out~0_combout\)))) # (!\mul|interim4\(2) & (\mul|add3|fa2|c_out~0_combout\ & (\mul|interim3\(3) $ 
-- (\mul|add2|fa3|c_out~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mul|interim3\(3),
	datab => \mul|add2|fa3|c_out~0_combout\,
	datac => \mul|interim4\(2),
	datad => \mul|add3|fa2|c_out~0_combout\,
	combout => \mul|add3|fa3|c_out~0_combout\);

-- Location: LCCOMB_X59_Y53_N20
\mul|add2|fa4|c_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mul|add2|fa4|c_out~0_combout\ = (\mul|interim3\(3) & ((\mul|add2|fa3|c_out~0_combout\) # ((\mul|add1|fa3|c_out~0_combout\ & \mul|interim2[3]~2_combout\)))) # (!\mul|interim3\(3) & (\mul|add1|fa3|c_out~0_combout\ & (\mul|interim2[3]~2_combout\ & 
-- \mul|add2|fa3|c_out~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mul|interim3\(3),
	datab => \mul|add1|fa3|c_out~0_combout\,
	datac => \mul|interim2[3]~2_combout\,
	datad => \mul|add2|fa3|c_out~0_combout\,
	combout => \mul|add2|fa4|c_out~0_combout\);

-- Location: LCCOMB_X59_Y53_N14
\mul|add3|fa4|c_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mul|add3|fa4|c_out~0_combout\ = (\mul|add3|fa3|c_out~0_combout\ & ((\mul|add2|fa4|c_out~0_combout\) # ((!\div|add2|fa4|c_out~0_combout\ & \div|interim1[3]~1_combout\)))) # (!\mul|add3|fa3|c_out~0_combout\ & (\mul|add2|fa4|c_out~0_combout\ & 
-- (!\div|add2|fa4|c_out~0_combout\ & \div|interim1[3]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mul|add3|fa3|c_out~0_combout\,
	datab => \mul|add2|fa4|c_out~0_combout\,
	datac => \div|add2|fa4|c_out~0_combout\,
	datad => \div|interim1[3]~1_combout\,
	combout => \mul|add3|fa4|c_out~0_combout\);

-- Location: LCCOMB_X59_Y53_N6
\mul|add3|fa4|sum\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mul|add3|fa4|sum~combout\ = \mul|add3|fa3|c_out~0_combout\ $ (\mul|add2|fa4|c_out~0_combout\ $ (((!\div|add2|fa4|c_out~0_combout\ & \div|interim1[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mul|add3|fa3|c_out~0_combout\,
	datab => \mul|add2|fa4|c_out~0_combout\,
	datac => \div|add2|fa4|c_out~0_combout\,
	datad => \div|interim1[3]~1_combout\,
	combout => \mul|add3|fa4|sum~combout\);

-- Location: LCCOMB_X59_Y53_N10
\mul|add3|fa2|sum\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mul|add3|fa2|sum~combout\ = \mul|add2|fa2|c_out~0_combout\ $ (\mul|add2|fa3|ha|sum~combout\ $ (\mul|add3|fa1|ha|c_out~combout\ $ (\mul|interim4\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mul|add2|fa2|c_out~0_combout\,
	datab => \mul|add2|fa3|ha|sum~combout\,
	datac => \mul|add3|fa1|ha|c_out~combout\,
	datad => \mul|interim4\(1),
	combout => \mul|add3|fa2|sum~combout\);

-- Location: LCCOMB_X59_Y53_N18
\mul|add3|fa3|sum\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mul|add3|fa3|sum~combout\ = \mul|interim3\(3) $ (\mul|add2|fa3|c_out~0_combout\ $ (\mul|interim4\(2) $ (\mul|add3|fa2|c_out~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mul|interim3\(3),
	datab => \mul|add2|fa3|c_out~0_combout\,
	datac => \mul|interim4\(2),
	datad => \mul|add3|fa2|c_out~0_combout\,
	combout => \mul|add3|fa3|sum~combout\);

-- Location: LCCOMB_X59_Y53_N24
\mul|fac3|fa6|c_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mul|fac3|fa6|c_out~0_combout\ = (\mul|add3|fa2|sum~combout\) # ((\mul|add3|fa3|sum~combout\) # ((\mul|fac3|fa3|c_out~2_combout\) # (\mul|add3|fa1|ha|sum~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mul|add3|fa2|sum~combout\,
	datab => \mul|add3|fa3|sum~combout\,
	datac => \mul|fac3|fa3|c_out~2_combout\,
	datad => \mul|add3|fa1|ha|sum~combout\,
	combout => \mul|fac3|fa6|c_out~0_combout\);

-- Location: LCCOMB_X60_Y53_N24
\Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = \mul|add3|fa4|c_out~0_combout\ $ (((\cmp|temp_xnor[3]~0_combout\ & ((\mul|add3|fa4|sum~combout\) # (\mul|fac3|fa6|c_out~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mul|add3|fa4|c_out~0_combout\,
	datab => \mul|add3|fa4|sum~combout\,
	datac => \cmp|temp_xnor[3]~0_combout\,
	datad => \mul|fac3|fa6|c_out~0_combout\,
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X57_Y53_N10
\Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (!state(3) & (!state(2) & (state(1) $ (state(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(3),
	datab => state(2),
	datac => state(1),
	datad => state(0),
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X60_Y53_N26
\Mux1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = (\Mux3~0_combout\ & ((\Mux3~3_combout\) # ((\Mux1~0_combout\ & !state(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~3_combout\,
	datab => \Mux1~0_combout\,
	datac => state(1),
	datad => \Mux3~0_combout\,
	combout => \Mux1~1_combout\);

-- Location: LCCOMB_X55_Y53_N26
\Mux4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~2_combout\ = (state(0) & (!state(1) & !state(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(0),
	datac => state(1),
	datad => state(3),
	combout => \Mux4~2_combout\);

-- Location: LCCOMB_X59_Y53_N8
\mul|fac3|fa4|c_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mul|fac3|fa4|c_out~0_combout\ = (\mul|fac3|fa3|c_out~2_combout\) # (\mul|add2|fa2|sum~combout\ $ (((!\div|add2|fa4|c_out~0_combout\ & \SW[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mul|fac3|fa3|c_out~2_combout\,
	datab => \mul|add2|fa2|sum~combout\,
	datac => \div|add2|fa4|c_out~0_combout\,
	datad => \SW[2]~input_o\,
	combout => \mul|fac3|fa4|c_out~0_combout\);

-- Location: LCCOMB_X55_Y53_N20
\Mux4~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~3_combout\ = (\Mux4~2_combout\ & (\mul|add3|fa2|sum~combout\ $ (((\cmp|temp_xnor[3]~0_combout\ & \mul|fac3|fa4|c_out~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmp|temp_xnor[3]~0_combout\,
	datab => \mul|add3|fa2|sum~combout\,
	datac => \Mux4~2_combout\,
	datad => \mul|fac3|fa4|c_out~0_combout\,
	combout => \Mux4~3_combout\);

-- Location: LCCOMB_X55_Y53_N30
\Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (!state(3) & (!state(0) & (state(1) & \cmp|temp_xnor[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(3),
	datab => state(0),
	datac => state(1),
	datad => \cmp|temp_xnor[3]~0_combout\,
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X55_Y53_N8
\Mux4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = (\mod|div|WideNor0~combout\ & (\Mux4~0_combout\ & ((\div|rem_res[3]~3_combout\) # (\div|rem|fa3|c_out~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|rem_res[3]~3_combout\,
	datab => \mod|div|WideNor0~combout\,
	datac => \Mux4~0_combout\,
	datad => \div|rem|fa3|c_out~0_combout\,
	combout => \Mux4~1_combout\);

-- Location: LCCOMB_X58_Y52_N2
\Mux4~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~4_combout\ = (\SW[8]~input_o\ & (\SW[4]~input_o\ & (\SW[5]~input_o\ $ (!\SW[9]~input_o\)))) # (!\SW[8]~input_o\ & (!\SW[4]~input_o\ & (\SW[5]~input_o\ $ (!\SW[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \SW[4]~input_o\,
	datac => \SW[5]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \Mux4~4_combout\);

-- Location: LCCOMB_X58_Y53_N20
\Mux4~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~5_combout\ = (!\div|add4|fa1|ha|sum~combout\ & (\Mux4~4_combout\ & (\SW[3]~input_o\ $ (!\SW[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[7]~input_o\,
	datac => \div|add4|fa1|ha|sum~combout\,
	datad => \Mux4~4_combout\,
	combout => \Mux4~5_combout\);

-- Location: LCCOMB_X57_Y53_N14
\Mux4~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~6_combout\ = ((\SW[0]~input_o\ & \SW[1]~input_o\)) # (!state(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => state(0),
	datac => \SW[0]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \Mux4~6_combout\);

-- Location: LCCOMB_X57_Y53_N8
\Mux4~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~7_combout\ = (\Mux4~5_combout\ & (state(1) & (\Mux4~6_combout\ & state(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~5_combout\,
	datab => state(1),
	datac => \Mux4~6_combout\,
	datad => state(3),
	combout => \Mux4~7_combout\);

-- Location: LCCOMB_X55_Y53_N6
\Mux4~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~8_combout\ = (!state(2) & ((\Mux4~3_combout\) # ((\Mux4~1_combout\) # (\Mux4~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(2),
	datab => \Mux4~3_combout\,
	datac => \Mux4~1_combout\,
	datad => \Mux4~7_combout\,
	combout => \Mux4~8_combout\);

-- Location: LCCOMB_X60_Y53_N12
\Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (!state(1) & (\mul|add3|fa4|sum~combout\ $ (((\cmp|temp_xnor[3]~0_combout\ & \mul|fac3|fa6|c_out~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(1),
	datab => \cmp|temp_xnor[3]~0_combout\,
	datac => \mul|add3|fa4|sum~combout\,
	datad => \mul|fac3|fa6|c_out~0_combout\,
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X60_Y53_N30
\Mux2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = (\Mux3~0_combout\ & ((\Mux2~0_combout\) # (\Mux3~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~0_combout\,
	datac => \Mux3~3_combout\,
	datad => \Mux3~0_combout\,
	combout => \Mux2~1_combout\);

-- Location: LCCOMB_X59_Y53_N16
\mul|fac3|fa5|c_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mul|fac3|fa5|c_out~0_combout\ = (\mul|add3|fa2|sum~combout\) # ((\mul|fac3|fa3|c_out~2_combout\) # (\mul|add3|fa1|ha|sum~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mul|add3|fa2|sum~combout\,
	datac => \mul|fac3|fa3|c_out~2_combout\,
	datad => \mul|add3|fa1|ha|sum~combout\,
	combout => \mul|fac3|fa5|c_out~0_combout\);

-- Location: LCCOMB_X60_Y53_N16
\Mux3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = (!state(1) & (\mul|add3|fa3|sum~combout\ $ (((\mul|fac3|fa5|c_out~0_combout\ & \cmp|temp_xnor[3]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mul|fac3|fa5|c_out~0_combout\,
	datab => \cmp|temp_xnor[3]~0_combout\,
	datac => state(1),
	datad => \mul|add3|fa3|sum~combout\,
	combout => \Mux3~1_combout\);

-- Location: LCCOMB_X60_Y53_N18
\Mux3~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~4_combout\ = (\Mux3~0_combout\ & ((\Mux3~3_combout\) # (\Mux3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~3_combout\,
	datab => \Mux3~1_combout\,
	datad => \Mux3~0_combout\,
	combout => \Mux3~4_combout\);

-- Location: LCCOMB_X60_Y53_N8
\hex1s|WideOr6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hex1s|WideOr6~0_combout\ = (\Mux4~8_combout\ & ((\Mux1~1_combout\) # (\Mux2~1_combout\ $ (\Mux3~4_combout\)))) # (!\Mux4~8_combout\ & ((\Mux3~4_combout\) # (\Mux1~1_combout\ $ (\Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~1_combout\,
	datab => \Mux4~8_combout\,
	datac => \Mux2~1_combout\,
	datad => \Mux3~4_combout\,
	combout => \hex1s|WideOr6~0_combout\);

-- Location: LCCOMB_X60_Y53_N10
\hex1s|WideOr5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hex1s|WideOr5~0_combout\ = (\Mux4~8_combout\ & (\Mux1~1_combout\ $ (((\Mux3~4_combout\) # (!\Mux2~1_combout\))))) # (!\Mux4~8_combout\ & (!\Mux1~1_combout\ & (!\Mux2~1_combout\ & \Mux3~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~1_combout\,
	datab => \Mux4~8_combout\,
	datac => \Mux2~1_combout\,
	datad => \Mux3~4_combout\,
	combout => \hex1s|WideOr5~0_combout\);

-- Location: LCCOMB_X60_Y53_N4
\hex1s|WideOr4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hex1s|WideOr4~0_combout\ = (\Mux3~4_combout\ & (!\Mux1~1_combout\ & (\Mux4~8_combout\))) # (!\Mux3~4_combout\ & ((\Mux2~1_combout\ & (!\Mux1~1_combout\)) # (!\Mux2~1_combout\ & ((\Mux4~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~1_combout\,
	datab => \Mux4~8_combout\,
	datac => \Mux2~1_combout\,
	datad => \Mux3~4_combout\,
	combout => \hex1s|WideOr4~0_combout\);

-- Location: LCCOMB_X60_Y53_N6
\hex1s|WideOr3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hex1s|WideOr3~0_combout\ = (\Mux3~4_combout\ & ((\Mux4~8_combout\ & ((\Mux2~1_combout\))) # (!\Mux4~8_combout\ & (\Mux1~1_combout\ & !\Mux2~1_combout\)))) # (!\Mux3~4_combout\ & (!\Mux1~1_combout\ & (\Mux4~8_combout\ $ (\Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~1_combout\,
	datab => \Mux4~8_combout\,
	datac => \Mux2~1_combout\,
	datad => \Mux3~4_combout\,
	combout => \hex1s|WideOr3~0_combout\);

-- Location: LCCOMB_X60_Y53_N20
\hex1s|WideOr2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hex1s|WideOr2~0_combout\ = (\Mux1~1_combout\ & (\Mux2~1_combout\ & ((\Mux3~4_combout\) # (!\Mux4~8_combout\)))) # (!\Mux1~1_combout\ & (!\Mux4~8_combout\ & (!\Mux2~1_combout\ & \Mux3~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~1_combout\,
	datab => \Mux4~8_combout\,
	datac => \Mux2~1_combout\,
	datad => \Mux3~4_combout\,
	combout => \hex1s|WideOr2~0_combout\);

-- Location: LCCOMB_X60_Y53_N22
\hex1s|WideOr1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hex1s|WideOr1~0_combout\ = (\Mux1~1_combout\ & ((\Mux4~8_combout\ & ((\Mux3~4_combout\))) # (!\Mux4~8_combout\ & (\Mux2~1_combout\)))) # (!\Mux1~1_combout\ & (\Mux2~1_combout\ & (\Mux4~8_combout\ $ (\Mux3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~1_combout\,
	datab => \Mux4~8_combout\,
	datac => \Mux2~1_combout\,
	datad => \Mux3~4_combout\,
	combout => \hex1s|WideOr1~0_combout\);

-- Location: LCCOMB_X60_Y53_N28
\hex1s|WideOr0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hex1s|WideOr0~0_combout\ = (\Mux1~1_combout\ & (\Mux4~8_combout\ & (\Mux2~1_combout\ $ (\Mux3~4_combout\)))) # (!\Mux1~1_combout\ & (!\Mux3~4_combout\ & (\Mux4~8_combout\ $ (\Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~1_combout\,
	datab => \Mux4~8_combout\,
	datac => \Mux2~1_combout\,
	datad => \Mux3~4_combout\,
	combout => \hex1s|WideOr0~0_combout\);

-- Location: LCCOMB_X57_Y52_N10
\comp_dec|WideAnd2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comp_dec|WideAnd2~0_combout\ = (!state(3) & !state(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => state(3),
	datad => state(2),
	combout => \comp_dec|WideAnd2~0_combout\);

-- Location: LCCOMB_X59_Y52_N0
\hex2s_in[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hex2s_in[2]~4_combout\ = (\comp_dec|WideAnd2~0_combout\ & (!state(0) & (state(1) & !\mod|div|WideNor0~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comp_dec|WideAnd2~0_combout\,
	datab => state(0),
	datac => state(1),
	datad => \mod|div|WideNor0~combout\,
	combout => \hex2s_in[2]~4_combout\);

-- Location: LCCOMB_X59_Y52_N14
\div|add1|fa4|c_out~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \div|add1|fa4|c_out~1_combout\ = (!\div|interim2[1]~0_combout\ & (\div|add1|fa4|c_out~0_combout\ & ((\div|interim1[3]~1_combout\) # (!\SW[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|interim2[1]~0_combout\,
	datab => \div|interim1[3]~1_combout\,
	datac => \SW[6]~input_o\,
	datad => \div|add1|fa4|c_out~0_combout\,
	combout => \div|add1|fa4|c_out~1_combout\);

-- Location: LCCOMB_X59_Y52_N4
\div|quo|fa3|c_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \div|quo|fa3|c_out~0_combout\ = (\div|add2|fa4|c_out~2_combout\) # ((\div|add4|fa4|c_out~combout\) # (\div|add3|fa4|c_out~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|add2|fa4|c_out~2_combout\,
	datac => \div|add4|fa4|c_out~combout\,
	datad => \div|add3|fa4|c_out~0_combout\,
	combout => \div|quo|fa3|c_out~0_combout\);

-- Location: LCCOMB_X59_Y52_N22
\hex2s_in[3]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hex2s_in[3]~8_combout\ = \div|add1|fa4|c_out~1_combout\ $ (((\div|quo|fa3|c_out~0_combout\ & (\SW[5]~input_o\ $ (\SW[9]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \div|add1|fa4|c_out~1_combout\,
	datac => \div|quo|fa3|c_out~0_combout\,
	datad => \SW[9]~input_o\,
	combout => \hex2s_in[3]~8_combout\);

-- Location: LCCOMB_X59_Y52_N24
\hex2s_in[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hex2s_in[2]~2_combout\ = (\comp_dec|WideAnd2~0_combout\ & (!state(0) & (state(1) & \mod|div|WideNor0~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comp_dec|WideAnd2~0_combout\,
	datab => state(0),
	datac => state(1),
	datad => \mod|div|WideNor0~combout\,
	combout => \hex2s_in[2]~2_combout\);

-- Location: LCCOMB_X59_Y52_N18
\hex2s_in[3]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hex2s_in[3]~7_combout\ = (\hex2s_in[2]~4_combout\) # ((\hex2s_in[3]~8_combout\ & \hex2s_in[2]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \hex2s_in[2]~4_combout\,
	datac => \hex2s_in[3]~8_combout\,
	datad => \hex2s_in[2]~2_combout\,
	combout => \hex2s_in[3]~7_combout\);

-- Location: LCCOMB_X55_Y53_N12
\Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (state(1) & !state(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => state(1),
	datad => state(2),
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X55_Y53_N18
\Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (!state(3) & (!state(0) & ((\div|add4|fa4|c_out~combout\) # (!\mod|div|WideNor0~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(3),
	datab => \mod|div|WideNor0~combout\,
	datac => state(0),
	datad => \div|add4|fa4|c_out~combout\,
	combout => \Mux0~1_combout\);

-- Location: LCCOMB_X58_Y53_N12
\cmp|greater~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmp|greater~0_combout\ = (\SW[3]~input_o\ & (((!\SW[6]~input_o\ & \SW[2]~input_o\)) # (!\SW[7]~input_o\))) # (!\SW[3]~input_o\ & (!\SW[6]~input_o\ & (\SW[2]~input_o\ & !\SW[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[6]~input_o\,
	datac => \SW[2]~input_o\,
	datad => \SW[7]~input_o\,
	combout => \cmp|greater~0_combout\);

-- Location: LCCOMB_X58_Y53_N30
\Mux0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~2_combout\ = (\SW[8]~input_o\ & (\SW[4]~input_o\ & \cmp|greater~0_combout\)) # (!\SW[8]~input_o\ & ((\SW[4]~input_o\) # (\cmp|greater~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[8]~input_o\,
	datac => \SW[4]~input_o\,
	datad => \cmp|greater~0_combout\,
	combout => \Mux0~2_combout\);

-- Location: LCCOMB_X58_Y53_N8
\Mux0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~3_combout\ = (\Mux0~2_combout\ & (\SW[5]~input_o\ $ (!\SW[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~2_combout\,
	datac => \SW[5]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \Mux0~3_combout\);

-- Location: LCCOMB_X55_Y53_N4
\Mux0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~4_combout\ = (\SW[1]~input_o\ & ((\Mux0~3_combout\) # ((state(0) & !\SW[0]~input_o\)))) # (!\SW[1]~input_o\ & (\Mux0~3_combout\ & ((!\SW[0]~input_o\) # (!state(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => state(0),
	datac => \SW[0]~input_o\,
	datad => \Mux0~3_combout\,
	combout => \Mux0~4_combout\);

-- Location: LCCOMB_X55_Y53_N22
\Mux0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~5_combout\ = (\Mux0~0_combout\ & ((\Mux0~1_combout\) # ((\Mux0~4_combout\ & state(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~0_combout\,
	datab => \Mux0~1_combout\,
	datac => \Mux0~4_combout\,
	datad => state(3),
	combout => \Mux0~5_combout\);

-- Location: LCCOMB_X59_Y52_N26
\hex2s_in[2]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hex2s_in[2]~5_combout\ = \div|add2|fa4|c_out~2_combout\ $ (((\cmp|temp_xnor[3]~0_combout\ & ((\div|add4|fa4|c_out~combout\) # (\div|add3|fa4|c_out~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|add2|fa4|c_out~2_combout\,
	datab => \cmp|temp_xnor[3]~0_combout\,
	datac => \div|add4|fa4|c_out~combout\,
	datad => \div|add3|fa4|c_out~0_combout\,
	combout => \hex2s_in[2]~5_combout\);

-- Location: LCCOMB_X59_Y52_N12
\hex2s_in[2]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hex2s_in[2]~6_combout\ = (\hex2s_in[2]~4_combout\) # ((\hex2s_in[2]~5_combout\ & \hex2s_in[2]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \hex2s_in[2]~4_combout\,
	datac => \hex2s_in[2]~5_combout\,
	datad => \hex2s_in[2]~2_combout\,
	combout => \hex2s_in[2]~6_combout\);

-- Location: LCCOMB_X59_Y52_N6
\hex2s_in[1]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hex2s_in[1]~3_combout\ = (\hex2s_in[2]~2_combout\ & (\div|add3|fa4|c_out~0_combout\ $ (((\cmp|temp_xnor[3]~0_combout\ & \div|add4|fa4|c_out~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmp|temp_xnor[3]~0_combout\,
	datab => \div|add3|fa4|c_out~0_combout\,
	datac => \div|add4|fa4|c_out~combout\,
	datad => \hex2s_in[2]~2_combout\,
	combout => \hex2s_in[1]~3_combout\);

-- Location: LCCOMB_X71_Y49_N20
\hex2s|WideOr6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hex2s|WideOr6~0_combout\ = (\Mux0~5_combout\ & ((\hex2s_in[3]~7_combout\) # (\hex2s_in[2]~6_combout\ $ (\hex2s_in[1]~3_combout\)))) # (!\Mux0~5_combout\ & ((\hex2s_in[1]~3_combout\) # (\hex2s_in[3]~7_combout\ $ (\hex2s_in[2]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hex2s_in[3]~7_combout\,
	datab => \Mux0~5_combout\,
	datac => \hex2s_in[2]~6_combout\,
	datad => \hex2s_in[1]~3_combout\,
	combout => \hex2s|WideOr6~0_combout\);

-- Location: LCCOMB_X71_Y49_N22
\hex2s|WideOr5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hex2s|WideOr5~0_combout\ = (\Mux0~5_combout\ & (\hex2s_in[3]~7_combout\ $ (((\hex2s_in[1]~3_combout\) # (!\hex2s_in[2]~6_combout\))))) # (!\Mux0~5_combout\ & (!\hex2s_in[3]~7_combout\ & (!\hex2s_in[2]~6_combout\ & \hex2s_in[1]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hex2s_in[3]~7_combout\,
	datab => \Mux0~5_combout\,
	datac => \hex2s_in[2]~6_combout\,
	datad => \hex2s_in[1]~3_combout\,
	combout => \hex2s|WideOr5~0_combout\);

-- Location: LCCOMB_X71_Y49_N24
\hex2s|WideOr4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hex2s|WideOr4~0_combout\ = (\hex2s_in[1]~3_combout\ & (!\hex2s_in[3]~7_combout\ & (\Mux0~5_combout\))) # (!\hex2s_in[1]~3_combout\ & ((\hex2s_in[2]~6_combout\ & (!\hex2s_in[3]~7_combout\)) # (!\hex2s_in[2]~6_combout\ & ((\Mux0~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hex2s_in[3]~7_combout\,
	datab => \Mux0~5_combout\,
	datac => \hex2s_in[2]~6_combout\,
	datad => \hex2s_in[1]~3_combout\,
	combout => \hex2s|WideOr4~0_combout\);

-- Location: LCCOMB_X71_Y49_N30
\hex2s|WideOr3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hex2s|WideOr3~0_combout\ = (\hex2s_in[1]~3_combout\ & ((\Mux0~5_combout\ & ((\hex2s_in[2]~6_combout\))) # (!\Mux0~5_combout\ & (\hex2s_in[3]~7_combout\ & !\hex2s_in[2]~6_combout\)))) # (!\hex2s_in[1]~3_combout\ & (!\hex2s_in[3]~7_combout\ & 
-- (\Mux0~5_combout\ $ (\hex2s_in[2]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hex2s_in[3]~7_combout\,
	datab => \Mux0~5_combout\,
	datac => \hex2s_in[2]~6_combout\,
	datad => \hex2s_in[1]~3_combout\,
	combout => \hex2s|WideOr3~0_combout\);

-- Location: LCCOMB_X71_Y49_N12
\hex2s|WideOr2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hex2s|WideOr2~0_combout\ = (\hex2s_in[3]~7_combout\ & (\hex2s_in[2]~6_combout\ & ((\hex2s_in[1]~3_combout\) # (!\Mux0~5_combout\)))) # (!\hex2s_in[3]~7_combout\ & (!\Mux0~5_combout\ & (!\hex2s_in[2]~6_combout\ & \hex2s_in[1]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hex2s_in[3]~7_combout\,
	datab => \Mux0~5_combout\,
	datac => \hex2s_in[2]~6_combout\,
	datad => \hex2s_in[1]~3_combout\,
	combout => \hex2s|WideOr2~0_combout\);

-- Location: LCCOMB_X71_Y49_N26
\hex2s|WideOr1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hex2s|WideOr1~0_combout\ = (\hex2s_in[3]~7_combout\ & ((\Mux0~5_combout\ & ((\hex2s_in[1]~3_combout\))) # (!\Mux0~5_combout\ & (\hex2s_in[2]~6_combout\)))) # (!\hex2s_in[3]~7_combout\ & (\hex2s_in[2]~6_combout\ & (\Mux0~5_combout\ $ 
-- (\hex2s_in[1]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hex2s_in[3]~7_combout\,
	datab => \Mux0~5_combout\,
	datac => \hex2s_in[2]~6_combout\,
	datad => \hex2s_in[1]~3_combout\,
	combout => \hex2s|WideOr1~0_combout\);

-- Location: LCCOMB_X71_Y49_N0
\hex2s|WideOr0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hex2s|WideOr0~0_combout\ = (\hex2s_in[3]~7_combout\ & (\Mux0~5_combout\ & (\hex2s_in[2]~6_combout\ $ (\hex2s_in[1]~3_combout\)))) # (!\hex2s_in[3]~7_combout\ & (!\hex2s_in[1]~3_combout\ & (\Mux0~5_combout\ $ (\hex2s_in[2]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hex2s_in[3]~7_combout\,
	datab => \Mux0~5_combout\,
	datac => \hex2s_in[2]~6_combout\,
	datad => \hex2s_in[1]~3_combout\,
	combout => \hex2s|WideOr0~0_combout\);

-- Location: LCCOMB_X59_Y52_N8
\hex3s_in[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hex3s_in[0]~0_combout\ = (\cmp|temp_xnor[3]~0_combout\ & (\hex2s_in[2]~2_combout\ & ((\div|quo|fa3|c_out~0_combout\) # (\div|add1|fa4|c_out~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmp|temp_xnor[3]~0_combout\,
	datab => \div|quo|fa3|c_out~0_combout\,
	datac => \div|add1|fa4|c_out~1_combout\,
	datad => \hex2s_in[2]~2_combout\,
	combout => \hex3s_in[0]~0_combout\);

-- Location: IOIBUF_X78_Y29_N22
\MAX10_CLK2_50~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MAX10_CLK2_50,
	o => \MAX10_CLK2_50~input_o\);

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_HEX0S(0) <= \HEX0S[0]~output_o\;

ww_HEX0S(1) <= \HEX0S[1]~output_o\;

ww_HEX0S(2) <= \HEX0S[2]~output_o\;

ww_HEX0S(3) <= \HEX0S[3]~output_o\;

ww_HEX0S(4) <= \HEX0S[4]~output_o\;

ww_HEX0S(5) <= \HEX0S[5]~output_o\;

ww_HEX0S(6) <= \HEX0S[6]~output_o\;

ww_HEX1S(0) <= \HEX1S[0]~output_o\;

ww_HEX1S(1) <= \HEX1S[1]~output_o\;

ww_HEX1S(2) <= \HEX1S[2]~output_o\;

ww_HEX1S(3) <= \HEX1S[3]~output_o\;

ww_HEX1S(4) <= \HEX1S[4]~output_o\;

ww_HEX1S(5) <= \HEX1S[5]~output_o\;

ww_HEX1S(6) <= \HEX1S[6]~output_o\;

ww_HEX2S(0) <= \HEX2S[0]~output_o\;

ww_HEX2S(1) <= \HEX2S[1]~output_o\;

ww_HEX2S(2) <= \HEX2S[2]~output_o\;

ww_HEX2S(3) <= \HEX2S[3]~output_o\;

ww_HEX2S(4) <= \HEX2S[4]~output_o\;

ww_HEX2S(5) <= \HEX2S[5]~output_o\;

ww_HEX2S(6) <= \HEX2S[6]~output_o\;

ww_HEX3S(0) <= \HEX3S[0]~output_o\;

ww_HEX3S(1) <= \HEX3S[1]~output_o\;

ww_HEX3S(2) <= \HEX3S[2]~output_o\;

ww_HEX3S(3) <= \HEX3S[3]~output_o\;

ww_HEX3S(4) <= \HEX3S[4]~output_o\;

ww_HEX3S(5) <= \HEX3S[5]~output_o\;

ww_HEX3S(6) <= \HEX3S[6]~output_o\;

ww_HEX4S(0) <= \HEX4S[0]~output_o\;

ww_HEX4S(1) <= \HEX4S[1]~output_o\;

ww_HEX4S(2) <= \HEX4S[2]~output_o\;

ww_HEX4S(3) <= \HEX4S[3]~output_o\;

ww_HEX4S(4) <= \HEX4S[4]~output_o\;

ww_HEX4S(5) <= \HEX4S[5]~output_o\;

ww_HEX4S(6) <= \HEX4S[6]~output_o\;

ww_HEX5S(0) <= \HEX5S[0]~output_o\;

ww_HEX5S(1) <= \HEX5S[1]~output_o\;

ww_HEX5S(2) <= \HEX5S[2]~output_o\;

ww_HEX5S(3) <= \HEX5S[3]~output_o\;

ww_HEX5S(4) <= \HEX5S[4]~output_o\;

ww_HEX5S(5) <= \HEX5S[5]~output_o\;

ww_HEX5S(6) <= \HEX5S[6]~output_o\;

ww_HEXdp(0) <= \HEXdp[0]~output_o\;

ww_HEXdp(1) <= \HEXdp[1]~output_o\;

ww_HEXdp(2) <= \HEXdp[2]~output_o\;

ww_HEXdp(3) <= \HEXdp[3]~output_o\;

ww_HEXdp(4) <= \HEXdp[4]~output_o\;

ww_HEXdp(5) <= \HEXdp[5]~output_o\;

ww_LEDR(0) <= \LEDR[0]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_LEDR(4) <= \LEDR[4]~output_o\;

ww_LEDR(5) <= \LEDR[5]~output_o\;

ww_LEDR(6) <= \LEDR[6]~output_o\;

ww_LEDR(7) <= \LEDR[7]~output_o\;

ww_LEDR(8) <= \LEDR[8]~output_o\;

ww_LEDR(9) <= \LEDR[9]~output_o\;
END structure;


