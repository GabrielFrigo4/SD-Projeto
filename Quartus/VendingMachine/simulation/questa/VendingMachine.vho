-- Copyright (C) 2025  Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus Prime License Agreement,
-- the Altera IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Altera and sold by Altera or its authorized distributors.  Please
-- refer to the Altera Software License Subscription Agreements 
-- on the Quartus Prime software download page.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 24.1std.0 Build 1077 03/04/2025 SC Lite Edition"

-- DATE "08/10/2025 23:13:09"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
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

ENTITY 	VendingMachine IS
    PORT (
	CLOCK_50 : IN std_logic;
	SW : IN std_logic_vector(3 DOWNTO 0);
	KEY : IN std_logic_vector(1 DOWNTO 0);
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	HEX3 : OUT std_logic_vector(6 DOWNTO 0);
	HEX4 : OUT std_logic_vector(6 DOWNTO 0);
	HEX5 : OUT std_logic_vector(6 DOWNTO 0)
	);
END VendingMachine;

-- Design Ports Information
-- SW[3]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_B20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[0]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[1]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[2]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[3]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[4]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[5]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[6]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[0]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[1]	=>  Location: PIN_E20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[3]	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[4]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[5]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[6]	=>  Location: PIN_F20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[0]	=>  Location: PIN_J20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[1]	=>  Location: PIN_K20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[2]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[3]	=>  Location: PIN_N18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[4]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[5]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[6]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF VendingMachine IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_SW : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \state_machine0|delay0|DONE~1clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock0|clk_local~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \HEX1[0]~output_o\ : std_logic;
SIGNAL \HEX1[1]~output_o\ : std_logic;
SIGNAL \HEX1[2]~output_o\ : std_logic;
SIGNAL \HEX1[3]~output_o\ : std_logic;
SIGNAL \HEX1[4]~output_o\ : std_logic;
SIGNAL \HEX1[5]~output_o\ : std_logic;
SIGNAL \HEX1[6]~output_o\ : std_logic;
SIGNAL \HEX2[0]~output_o\ : std_logic;
SIGNAL \HEX2[1]~output_o\ : std_logic;
SIGNAL \HEX2[2]~output_o\ : std_logic;
SIGNAL \HEX2[3]~output_o\ : std_logic;
SIGNAL \HEX2[4]~output_o\ : std_logic;
SIGNAL \HEX2[5]~output_o\ : std_logic;
SIGNAL \HEX2[6]~output_o\ : std_logic;
SIGNAL \HEX3[0]~output_o\ : std_logic;
SIGNAL \HEX3[1]~output_o\ : std_logic;
SIGNAL \HEX3[2]~output_o\ : std_logic;
SIGNAL \HEX3[3]~output_o\ : std_logic;
SIGNAL \HEX3[4]~output_o\ : std_logic;
SIGNAL \HEX3[5]~output_o\ : std_logic;
SIGNAL \HEX3[6]~output_o\ : std_logic;
SIGNAL \HEX4[0]~output_o\ : std_logic;
SIGNAL \HEX4[1]~output_o\ : std_logic;
SIGNAL \HEX4[2]~output_o\ : std_logic;
SIGNAL \HEX4[3]~output_o\ : std_logic;
SIGNAL \HEX4[4]~output_o\ : std_logic;
SIGNAL \HEX4[5]~output_o\ : std_logic;
SIGNAL \HEX4[6]~output_o\ : std_logic;
SIGNAL \HEX5[0]~output_o\ : std_logic;
SIGNAL \HEX5[1]~output_o\ : std_logic;
SIGNAL \HEX5[2]~output_o\ : std_logic;
SIGNAL \HEX5[3]~output_o\ : std_logic;
SIGNAL \HEX5[4]~output_o\ : std_logic;
SIGNAL \HEX5[5]~output_o\ : std_logic;
SIGNAL \HEX5[6]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \clock0|clk_local~0_combout\ : std_logic;
SIGNAL \clock0|clk_local~feeder_combout\ : std_logic;
SIGNAL \clock0|clk_local~q\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \clock0|clk_local~clkctrl_outclk\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \state_machine0|btn_prev~0_combout\ : std_logic;
SIGNAL \state_machine0|btn_prev~q\ : std_logic;
SIGNAL \state_machine0|process_1~0_combout\ : std_logic;
SIGNAL \state_machine0|next_state~1_combout\ : std_logic;
SIGNAL \state_machine0|Selector9~0_combout\ : std_logic;
SIGNAL \state_machine0|process_1~1_combout\ : std_logic;
SIGNAL \state_machine0|Selector7~0_combout\ : std_logic;
SIGNAL \state_machine0|Selector5~0_combout\ : std_logic;
SIGNAL \state_machine0|present_state.st5~q\ : std_logic;
SIGNAL \state_machine0|next_state~2_combout\ : std_logic;
SIGNAL \state_machine0|Selector7~1_combout\ : std_logic;
SIGNAL \state_machine0|present_state.st15~q\ : std_logic;
SIGNAL \state_machine0|delay0|DONE~0_combout\ : std_logic;
SIGNAL \state_machine0|delay0|DONE~10_combout\ : std_logic;
SIGNAL \state_machine0|delay0|counter[0]~25_combout\ : std_logic;
SIGNAL \state_machine0|delay0|counter[0]~26\ : std_logic;
SIGNAL \state_machine0|delay0|counter[1]~27_combout\ : std_logic;
SIGNAL \state_machine0|delay0|counter[1]~28\ : std_logic;
SIGNAL \state_machine0|delay0|counter[2]~29_combout\ : std_logic;
SIGNAL \state_machine0|delay0|counter[2]~30\ : std_logic;
SIGNAL \state_machine0|delay0|counter[3]~31_combout\ : std_logic;
SIGNAL \state_machine0|delay0|counter[3]~32\ : std_logic;
SIGNAL \state_machine0|delay0|counter[4]~33_combout\ : std_logic;
SIGNAL \state_machine0|delay0|counter[4]~34\ : std_logic;
SIGNAL \state_machine0|delay0|counter[5]~35_combout\ : std_logic;
SIGNAL \state_machine0|delay0|counter[5]~36\ : std_logic;
SIGNAL \state_machine0|delay0|counter[6]~37_combout\ : std_logic;
SIGNAL \state_machine0|delay0|counter[6]~38\ : std_logic;
SIGNAL \state_machine0|delay0|counter[7]~39_combout\ : std_logic;
SIGNAL \state_machine0|delay0|counter[7]~40\ : std_logic;
SIGNAL \state_machine0|delay0|counter[8]~41_combout\ : std_logic;
SIGNAL \state_machine0|delay0|counter[8]~42\ : std_logic;
SIGNAL \state_machine0|delay0|counter[9]~43_combout\ : std_logic;
SIGNAL \state_machine0|delay0|counter[9]~44\ : std_logic;
SIGNAL \state_machine0|delay0|counter[10]~45_combout\ : std_logic;
SIGNAL \state_machine0|delay0|counter[10]~46\ : std_logic;
SIGNAL \state_machine0|delay0|counter[11]~47_combout\ : std_logic;
SIGNAL \state_machine0|delay0|counter[11]~feeder_combout\ : std_logic;
SIGNAL \state_machine0|delay0|counter[11]~48\ : std_logic;
SIGNAL \state_machine0|delay0|counter[12]~49_combout\ : std_logic;
SIGNAL \state_machine0|delay0|counter[12]~50\ : std_logic;
SIGNAL \state_machine0|delay0|counter[13]~51_combout\ : std_logic;
SIGNAL \state_machine0|delay0|counter[13]~52\ : std_logic;
SIGNAL \state_machine0|delay0|counter[14]~53_combout\ : std_logic;
SIGNAL \state_machine0|delay0|counter[14]~54\ : std_logic;
SIGNAL \state_machine0|delay0|counter[15]~55_combout\ : std_logic;
SIGNAL \state_machine0|delay0|counter[15]~56\ : std_logic;
SIGNAL \state_machine0|delay0|counter[16]~57_combout\ : std_logic;
SIGNAL \state_machine0|delay0|counter[16]~58\ : std_logic;
SIGNAL \state_machine0|delay0|counter[17]~59_combout\ : std_logic;
SIGNAL \state_machine0|delay0|counter[17]~60\ : std_logic;
SIGNAL \state_machine0|delay0|counter[18]~61_combout\ : std_logic;
SIGNAL \state_machine0|delay0|counter[18]~62\ : std_logic;
SIGNAL \state_machine0|delay0|counter[19]~63_combout\ : std_logic;
SIGNAL \state_machine0|delay0|counter[19]~64\ : std_logic;
SIGNAL \state_machine0|delay0|counter[20]~65_combout\ : std_logic;
SIGNAL \state_machine0|delay0|counter[20]~66\ : std_logic;
SIGNAL \state_machine0|delay0|counter[21]~67_combout\ : std_logic;
SIGNAL \state_machine0|delay0|counter[21]~68\ : std_logic;
SIGNAL \state_machine0|delay0|counter[22]~69_combout\ : std_logic;
SIGNAL \state_machine0|delay0|counter[22]~70\ : std_logic;
SIGNAL \state_machine0|delay0|counter[23]~71_combout\ : std_logic;
SIGNAL \state_machine0|delay0|counter[23]~72\ : std_logic;
SIGNAL \state_machine0|delay0|counter[24]~73_combout\ : std_logic;
SIGNAL \state_machine0|delay0|DONE~2_combout\ : std_logic;
SIGNAL \state_machine0|delay0|DONE~6_combout\ : std_logic;
SIGNAL \state_machine0|delay0|DONE~3_combout\ : std_logic;
SIGNAL \state_machine0|delay0|DONE~4_combout\ : std_logic;
SIGNAL \state_machine0|delay0|DONE~5_combout\ : std_logic;
SIGNAL \state_machine0|delay0|DONE~7_combout\ : std_logic;
SIGNAL \state_machine0|delay0|DONE~8_combout\ : std_logic;
SIGNAL \state_machine0|delay0|DONE~9_combout\ : std_logic;
SIGNAL \state_machine0|delay0|DONE~11_combout\ : std_logic;
SIGNAL \state_machine0|delay0|DONE~q\ : std_logic;
SIGNAL \state_machine0|Selector9~1_combout\ : std_logic;
SIGNAL \state_machine0|next_state~0_combout\ : std_logic;
SIGNAL \state_machine0|Selector9~2_combout\ : std_logic;
SIGNAL \state_machine0|present_state.st25~q\ : std_logic;
SIGNAL \state_machine0|Selector10~0_combout\ : std_logic;
SIGNAL \state_machine0|Selector10~1_combout\ : std_logic;
SIGNAL \state_machine0|present_state.st30~q\ : std_logic;
SIGNAL \state_machine0|Selector12~0_combout\ : std_logic;
SIGNAL \state_machine0|present_state.st40~q\ : std_logic;
SIGNAL \state_machine0|Selector13~0_combout\ : std_logic;
SIGNAL \state_machine0|present_state.st45~q\ : std_logic;
SIGNAL \state_machine0|Selector11~0_combout\ : std_logic;
SIGNAL \state_machine0|Selector11~1_combout\ : std_logic;
SIGNAL \state_machine0|present_state.st35~q\ : std_logic;
SIGNAL \state_machine0|WideOr3~0_combout\ : std_logic;
SIGNAL \state_machine0|Selector4~0_combout\ : std_logic;
SIGNAL \state_machine0|present_state.st0~q\ : std_logic;
SIGNAL \state_machine0|Selector6~0_combout\ : std_logic;
SIGNAL \state_machine0|Selector6~1_combout\ : std_logic;
SIGNAL \state_machine0|present_state.st10~q\ : std_logic;
SIGNAL \state_machine0|Selector8~0_combout\ : std_logic;
SIGNAL \state_machine0|Selector8~1_combout\ : std_logic;
SIGNAL \state_machine0|present_state.st20~q\ : std_logic;
SIGNAL \state_machine0|delay0|DONE~1_combout\ : std_logic;
SIGNAL \state_machine0|delay0|DONE~1clkctrl_outclk\ : std_logic;
SIGNAL \state_machine0|Selector3~0_combout\ : std_logic;
SIGNAL \state_machine0|nickel_out~combout\ : std_logic;
SIGNAL \state_machine0|Selector0~0_combout\ : std_logic;
SIGNAL \state_machine0|dime_out~combout\ : std_logic;
SIGNAL \WideNor0~0_combout\ : std_logic;
SIGNAL \WideNor0~combout\ : std_logic;
SIGNAL \WideOr1~0_combout\ : std_logic;
SIGNAL \display3|Mux6~0_combout\ : std_logic;
SIGNAL \display3|Mux4~0_combout\ : std_logic;
SIGNAL \display3|Mux3~0_combout\ : std_logic;
SIGNAL \display3|Mux2~0_combout\ : std_logic;
SIGNAL \display3|Mux1~0_combout\ : std_logic;
SIGNAL \display3|Mux0~0_combout\ : std_logic;
SIGNAL \state_machine0|candy_out~combout\ : std_logic;
SIGNAL present_state_dig1 : std_logic_vector(3 DOWNTO 0);
SIGNAL \state_machine0|delay0|counter\ : std_logic_vector(24 DOWNTO 0);
SIGNAL \state_machine0|delay0|ALT_INV_DONE~11_combout\ : std_logic;
SIGNAL \ALT_INV_WideNor0~combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_SW <= SW;
ww_KEY <= KEY;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\state_machine0|delay0|DONE~1clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \state_machine0|delay0|DONE~1_combout\);

\clock0|clk_local~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock0|clk_local~q\);
\state_machine0|delay0|ALT_INV_DONE~11_combout\ <= NOT \state_machine0|delay0|DONE~11_combout\;
\ALT_INV_WideNor0~combout\ <= NOT \WideNor0~combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y42_N12
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

-- Location: IOOBUF_X58_Y54_N16
\HEX0[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \state_machine0|nickel_out~combout\,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

-- Location: IOOBUF_X74_Y54_N9
\HEX0[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

-- Location: IOOBUF_X60_Y54_N2
\HEX0[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

-- Location: IOOBUF_X62_Y54_N30
\HEX0[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \state_machine0|nickel_out~combout\,
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

-- Location: IOOBUF_X74_Y54_N2
\HEX0[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \state_machine0|nickel_out~combout\,
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

-- Location: IOOBUF_X74_Y54_N16
\HEX0[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \state_machine0|nickel_out~combout\,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

-- Location: IOOBUF_X74_Y54_N23
\HEX0[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

-- Location: IOOBUF_X69_Y54_N23
\HEX1[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \state_machine0|dime_out~combout\,
	devoe => ww_devoe,
	o => \HEX1[0]~output_o\);

-- Location: IOOBUF_X78_Y49_N9
\HEX1[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX1[1]~output_o\);

-- Location: IOOBUF_X78_Y49_N2
\HEX1[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX1[2]~output_o\);

-- Location: IOOBUF_X60_Y54_N9
\HEX1[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \state_machine0|dime_out~combout\,
	devoe => ww_devoe,
	o => \HEX1[3]~output_o\);

-- Location: IOOBUF_X64_Y54_N2
\HEX1[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \state_machine0|dime_out~combout\,
	devoe => ww_devoe,
	o => \HEX1[4]~output_o\);

-- Location: IOOBUF_X66_Y54_N30
\HEX1[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \state_machine0|dime_out~combout\,
	devoe => ww_devoe,
	o => \HEX1[5]~output_o\);

-- Location: IOOBUF_X69_Y54_N30
\HEX1[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX1[6]~output_o\);

-- Location: IOOBUF_X78_Y44_N9
\HEX2[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX2[0]~output_o\);

-- Location: IOOBUF_X66_Y54_N2
\HEX2[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WideNor0~combout\,
	devoe => ww_devoe,
	o => \HEX2[1]~output_o\);

-- Location: IOOBUF_X69_Y54_N16
\HEX2[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX2[2]~output_o\);

-- Location: IOOBUF_X78_Y44_N2
\HEX2[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX2[3]~output_o\);

-- Location: IOOBUF_X78_Y43_N2
\HEX2[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WideNor0~combout\,
	devoe => ww_devoe,
	o => \HEX2[4]~output_o\);

-- Location: IOOBUF_X78_Y35_N2
\HEX2[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX2[5]~output_o\);

-- Location: IOOBUF_X78_Y43_N9
\HEX2[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_WideNor0~combout\,
	devoe => ww_devoe,
	o => \HEX2[6]~output_o\);

-- Location: IOOBUF_X78_Y35_N23
\HEX3[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display3|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[0]~output_o\);

-- Location: IOOBUF_X78_Y33_N9
\HEX3[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX3[1]~output_o\);

-- Location: IOOBUF_X78_Y33_N2
\HEX3[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display3|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[2]~output_o\);

-- Location: IOOBUF_X69_Y54_N9
\HEX3[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display3|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[3]~output_o\);

-- Location: IOOBUF_X78_Y41_N9
\HEX3[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display3|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[4]~output_o\);

-- Location: IOOBUF_X78_Y41_N2
\HEX3[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display3|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[5]~output_o\);

-- Location: IOOBUF_X78_Y43_N16
\HEX3[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display3|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[6]~output_o\);

-- Location: IOOBUF_X78_Y40_N16
\HEX4[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \state_machine0|candy_out~combout\,
	devoe => ww_devoe,
	o => \HEX4[0]~output_o\);

-- Location: IOOBUF_X78_Y40_N2
\HEX4[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX4[1]~output_o\);

-- Location: IOOBUF_X78_Y40_N23
\HEX4[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX4[2]~output_o\);

-- Location: IOOBUF_X78_Y42_N16
\HEX4[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \state_machine0|candy_out~combout\,
	devoe => ww_devoe,
	o => \HEX4[3]~output_o\);

-- Location: IOOBUF_X78_Y45_N23
\HEX4[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \state_machine0|candy_out~combout\,
	devoe => ww_devoe,
	o => \HEX4[4]~output_o\);

-- Location: IOOBUF_X78_Y40_N9
\HEX4[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \state_machine0|candy_out~combout\,
	devoe => ww_devoe,
	o => \HEX4[5]~output_o\);

-- Location: IOOBUF_X78_Y35_N16
\HEX4[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX4[6]~output_o\);

-- Location: IOOBUF_X78_Y45_N9
\HEX5[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX5[0]~output_o\);

-- Location: IOOBUF_X78_Y42_N2
\HEX5[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX5[1]~output_o\);

-- Location: IOOBUF_X78_Y37_N16
\HEX5[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX5[2]~output_o\);

-- Location: IOOBUF_X78_Y34_N24
\HEX5[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX5[3]~output_o\);

-- Location: IOOBUF_X78_Y34_N9
\HEX5[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX5[4]~output_o\);

-- Location: IOOBUF_X78_Y34_N16
\HEX5[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX5[5]~output_o\);

-- Location: IOOBUF_X78_Y34_N2
\HEX5[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX5[6]~output_o\);

-- Location: IOIBUF_X34_Y0_N29
\CLOCK_50~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: LCCOMB_X56_Y47_N20
\clock0|clk_local~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock0|clk_local~0_combout\ = !\clock0|clk_local~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clock0|clk_local~q\,
	combout => \clock0|clk_local~0_combout\);

-- Location: LCCOMB_X56_Y47_N6
\clock0|clk_local~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock0|clk_local~feeder_combout\ = \clock0|clk_local~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clock0|clk_local~0_combout\,
	combout => \clock0|clk_local~feeder_combout\);

-- Location: FF_X56_Y47_N7
\clock0|clk_local\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \clock0|clk_local~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock0|clk_local~q\);

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

-- Location: CLKCTRL_G14
\clock0|clk_local~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock0|clk_local~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock0|clk_local~clkctrl_outclk\);

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

-- Location: LCCOMB_X55_Y47_N26
\state_machine0|btn_prev~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_machine0|btn_prev~0_combout\ = (\KEY[0]~input_o\ & ((!\KEY[1]~input_o\))) # (!\KEY[0]~input_o\ & (\state_machine0|btn_prev~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datac => \state_machine0|btn_prev~q\,
	datad => \KEY[1]~input_o\,
	combout => \state_machine0|btn_prev~0_combout\);

-- Location: FF_X55_Y47_N27
\state_machine0|btn_prev\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock0|clk_local~clkctrl_outclk\,
	d => \state_machine0|btn_prev~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_machine0|btn_prev~q\);

-- Location: LCCOMB_X55_Y47_N0
\state_machine0|process_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_machine0|process_1~0_combout\ = (!\KEY[1]~input_o\ & !\state_machine0|btn_prev~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY[1]~input_o\,
	datac => \state_machine0|btn_prev~q\,
	combout => \state_machine0|process_1~0_combout\);

-- Location: LCCOMB_X55_Y47_N12
\state_machine0|next_state~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_machine0|next_state~1_combout\ = (\state_machine0|process_1~0_combout\ & ((\SW[1]~input_o\) # ((\SW[0]~input_o\) # (\SW[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[0]~input_o\,
	datac => \SW[2]~input_o\,
	datad => \state_machine0|process_1~0_combout\,
	combout => \state_machine0|next_state~1_combout\);

-- Location: LCCOMB_X56_Y47_N0
\state_machine0|Selector9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_machine0|Selector9~0_combout\ = (!\state_machine0|btn_prev~q\ & (!\KEY[1]~input_o\ & (\state_machine0|present_state.st20~q\ & \SW[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_machine0|btn_prev~q\,
	datab => \KEY[1]~input_o\,
	datac => \state_machine0|present_state.st20~q\,
	datad => \SW[0]~input_o\,
	combout => \state_machine0|Selector9~0_combout\);

-- Location: LCCOMB_X55_Y47_N4
\state_machine0|process_1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_machine0|process_1~1_combout\ = (!\state_machine0|btn_prev~q\ & (!\KEY[1]~input_o\ & \SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_machine0|btn_prev~q\,
	datab => \KEY[1]~input_o\,
	datac => \SW[0]~input_o\,
	combout => \state_machine0|process_1~1_combout\);

-- Location: LCCOMB_X55_Y47_N22
\state_machine0|Selector7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_machine0|Selector7~0_combout\ = (\state_machine0|present_state.st15~q\ & (((\state_machine0|present_state.st10~q\ & \state_machine0|process_1~1_combout\)) # (!\state_machine0|next_state~1_combout\))) # (!\state_machine0|present_state.st15~q\ & 
-- (\state_machine0|present_state.st10~q\ & (\state_machine0|process_1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_machine0|present_state.st15~q\,
	datab => \state_machine0|present_state.st10~q\,
	datac => \state_machine0|process_1~1_combout\,
	datad => \state_machine0|next_state~1_combout\,
	combout => \state_machine0|Selector7~0_combout\);

-- Location: LCCOMB_X55_Y47_N24
\state_machine0|Selector5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_machine0|Selector5~0_combout\ = (\state_machine0|present_state.st0~q\ & (((\state_machine0|present_state.st5~q\ & !\state_machine0|next_state~1_combout\)))) # (!\state_machine0|present_state.st0~q\ & ((\state_machine0|process_1~1_combout\) # 
-- ((\state_machine0|present_state.st5~q\ & !\state_machine0|next_state~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_machine0|present_state.st0~q\,
	datab => \state_machine0|process_1~1_combout\,
	datac => \state_machine0|present_state.st5~q\,
	datad => \state_machine0|next_state~1_combout\,
	combout => \state_machine0|Selector5~0_combout\);

-- Location: FF_X55_Y47_N25
\state_machine0|present_state.st5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock0|clk_local~q\,
	d => \state_machine0|Selector5~0_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_machine0|present_state.st5~q\);

-- Location: LCCOMB_X55_Y47_N8
\state_machine0|next_state~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_machine0|next_state~2_combout\ = (\state_machine0|btn_prev~q\) # ((\KEY[1]~input_o\) # ((\SW[0]~input_o\) # (!\SW[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_machine0|btn_prev~q\,
	datab => \KEY[1]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \state_machine0|next_state~2_combout\);

-- Location: LCCOMB_X55_Y47_N16
\state_machine0|Selector7~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_machine0|Selector7~1_combout\ = (\state_machine0|Selector7~0_combout\) # ((\state_machine0|present_state.st5~q\ & !\state_machine0|next_state~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_machine0|Selector7~0_combout\,
	datab => \state_machine0|present_state.st5~q\,
	datac => \state_machine0|next_state~2_combout\,
	combout => \state_machine0|Selector7~1_combout\);

-- Location: FF_X55_Y47_N17
\state_machine0|present_state.st15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock0|clk_local~q\,
	d => \state_machine0|Selector7~1_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_machine0|present_state.st15~q\);

-- Location: LCCOMB_X55_Y47_N30
\state_machine0|delay0|DONE~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_machine0|delay0|DONE~0_combout\ = (!\state_machine0|present_state.st5~q\ & (!\state_machine0|present_state.st15~q\ & (!\state_machine0|delay0|DONE~q\ & \state_machine0|present_state.st0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_machine0|present_state.st5~q\,
	datab => \state_machine0|present_state.st15~q\,
	datac => \state_machine0|delay0|DONE~q\,
	datad => \state_machine0|present_state.st0~q\,
	combout => \state_machine0|delay0|DONE~0_combout\);

-- Location: LCCOMB_X56_Y47_N30
\state_machine0|delay0|DONE~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_machine0|delay0|DONE~10_combout\ = (!\state_machine0|present_state.st20~q\ & !\state_machine0|present_state.st10~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state_machine0|present_state.st20~q\,
	datad => \state_machine0|present_state.st10~q\,
	combout => \state_machine0|delay0|DONE~10_combout\);

-- Location: LCCOMB_X63_Y46_N8
\state_machine0|delay0|counter[0]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_machine0|delay0|counter[0]~25_combout\ = \state_machine0|delay0|counter\(0) $ (VCC)
-- \state_machine0|delay0|counter[0]~26\ = CARRY(\state_machine0|delay0|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_machine0|delay0|counter\(0),
	datad => VCC,
	combout => \state_machine0|delay0|counter[0]~25_combout\,
	cout => \state_machine0|delay0|counter[0]~26\);

-- Location: FF_X63_Y46_N9
\state_machine0|delay0|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock0|clk_local~clkctrl_outclk\,
	d => \state_machine0|delay0|counter[0]~25_combout\,
	sclr => \state_machine0|delay0|DONE~1_combout\,
	ena => \state_machine0|delay0|ALT_INV_DONE~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_machine0|delay0|counter\(0));

-- Location: LCCOMB_X63_Y46_N10
\state_machine0|delay0|counter[1]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_machine0|delay0|counter[1]~27_combout\ = (\state_machine0|delay0|counter\(1) & (!\state_machine0|delay0|counter[0]~26\)) # (!\state_machine0|delay0|counter\(1) & ((\state_machine0|delay0|counter[0]~26\) # (GND)))
-- \state_machine0|delay0|counter[1]~28\ = CARRY((!\state_machine0|delay0|counter[0]~26\) # (!\state_machine0|delay0|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \state_machine0|delay0|counter\(1),
	datad => VCC,
	cin => \state_machine0|delay0|counter[0]~26\,
	combout => \state_machine0|delay0|counter[1]~27_combout\,
	cout => \state_machine0|delay0|counter[1]~28\);

-- Location: FF_X63_Y46_N11
\state_machine0|delay0|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock0|clk_local~clkctrl_outclk\,
	d => \state_machine0|delay0|counter[1]~27_combout\,
	sclr => \state_machine0|delay0|DONE~1_combout\,
	ena => \state_machine0|delay0|ALT_INV_DONE~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_machine0|delay0|counter\(1));

-- Location: LCCOMB_X63_Y46_N12
\state_machine0|delay0|counter[2]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_machine0|delay0|counter[2]~29_combout\ = (\state_machine0|delay0|counter\(2) & (\state_machine0|delay0|counter[1]~28\ $ (GND))) # (!\state_machine0|delay0|counter\(2) & (!\state_machine0|delay0|counter[1]~28\ & VCC))
-- \state_machine0|delay0|counter[2]~30\ = CARRY((\state_machine0|delay0|counter\(2) & !\state_machine0|delay0|counter[1]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \state_machine0|delay0|counter\(2),
	datad => VCC,
	cin => \state_machine0|delay0|counter[1]~28\,
	combout => \state_machine0|delay0|counter[2]~29_combout\,
	cout => \state_machine0|delay0|counter[2]~30\);

-- Location: FF_X63_Y46_N13
\state_machine0|delay0|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock0|clk_local~clkctrl_outclk\,
	d => \state_machine0|delay0|counter[2]~29_combout\,
	sclr => \state_machine0|delay0|DONE~1_combout\,
	ena => \state_machine0|delay0|ALT_INV_DONE~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_machine0|delay0|counter\(2));

-- Location: LCCOMB_X63_Y46_N14
\state_machine0|delay0|counter[3]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_machine0|delay0|counter[3]~31_combout\ = (\state_machine0|delay0|counter\(3) & (!\state_machine0|delay0|counter[2]~30\)) # (!\state_machine0|delay0|counter\(3) & ((\state_machine0|delay0|counter[2]~30\) # (GND)))
-- \state_machine0|delay0|counter[3]~32\ = CARRY((!\state_machine0|delay0|counter[2]~30\) # (!\state_machine0|delay0|counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \state_machine0|delay0|counter\(3),
	datad => VCC,
	cin => \state_machine0|delay0|counter[2]~30\,
	combout => \state_machine0|delay0|counter[3]~31_combout\,
	cout => \state_machine0|delay0|counter[3]~32\);

-- Location: FF_X63_Y46_N15
\state_machine0|delay0|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock0|clk_local~clkctrl_outclk\,
	d => \state_machine0|delay0|counter[3]~31_combout\,
	sclr => \state_machine0|delay0|DONE~1_combout\,
	ena => \state_machine0|delay0|ALT_INV_DONE~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_machine0|delay0|counter\(3));

-- Location: LCCOMB_X63_Y46_N16
\state_machine0|delay0|counter[4]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_machine0|delay0|counter[4]~33_combout\ = (\state_machine0|delay0|counter\(4) & (\state_machine0|delay0|counter[3]~32\ $ (GND))) # (!\state_machine0|delay0|counter\(4) & (!\state_machine0|delay0|counter[3]~32\ & VCC))
-- \state_machine0|delay0|counter[4]~34\ = CARRY((\state_machine0|delay0|counter\(4) & !\state_machine0|delay0|counter[3]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \state_machine0|delay0|counter\(4),
	datad => VCC,
	cin => \state_machine0|delay0|counter[3]~32\,
	combout => \state_machine0|delay0|counter[4]~33_combout\,
	cout => \state_machine0|delay0|counter[4]~34\);

-- Location: FF_X63_Y46_N17
\state_machine0|delay0|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock0|clk_local~clkctrl_outclk\,
	d => \state_machine0|delay0|counter[4]~33_combout\,
	sclr => \state_machine0|delay0|DONE~1_combout\,
	ena => \state_machine0|delay0|ALT_INV_DONE~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_machine0|delay0|counter\(4));

-- Location: LCCOMB_X63_Y46_N18
\state_machine0|delay0|counter[5]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_machine0|delay0|counter[5]~35_combout\ = (\state_machine0|delay0|counter\(5) & (!\state_machine0|delay0|counter[4]~34\)) # (!\state_machine0|delay0|counter\(5) & ((\state_machine0|delay0|counter[4]~34\) # (GND)))
-- \state_machine0|delay0|counter[5]~36\ = CARRY((!\state_machine0|delay0|counter[4]~34\) # (!\state_machine0|delay0|counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \state_machine0|delay0|counter\(5),
	datad => VCC,
	cin => \state_machine0|delay0|counter[4]~34\,
	combout => \state_machine0|delay0|counter[5]~35_combout\,
	cout => \state_machine0|delay0|counter[5]~36\);

-- Location: FF_X63_Y46_N19
\state_machine0|delay0|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock0|clk_local~clkctrl_outclk\,
	d => \state_machine0|delay0|counter[5]~35_combout\,
	sclr => \state_machine0|delay0|DONE~1_combout\,
	ena => \state_machine0|delay0|ALT_INV_DONE~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_machine0|delay0|counter\(5));

-- Location: LCCOMB_X63_Y46_N20
\state_machine0|delay0|counter[6]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_machine0|delay0|counter[6]~37_combout\ = (\state_machine0|delay0|counter\(6) & (\state_machine0|delay0|counter[5]~36\ $ (GND))) # (!\state_machine0|delay0|counter\(6) & (!\state_machine0|delay0|counter[5]~36\ & VCC))
-- \state_machine0|delay0|counter[6]~38\ = CARRY((\state_machine0|delay0|counter\(6) & !\state_machine0|delay0|counter[5]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \state_machine0|delay0|counter\(6),
	datad => VCC,
	cin => \state_machine0|delay0|counter[5]~36\,
	combout => \state_machine0|delay0|counter[6]~37_combout\,
	cout => \state_machine0|delay0|counter[6]~38\);

-- Location: FF_X63_Y46_N21
\state_machine0|delay0|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock0|clk_local~clkctrl_outclk\,
	d => \state_machine0|delay0|counter[6]~37_combout\,
	sclr => \state_machine0|delay0|DONE~1_combout\,
	ena => \state_machine0|delay0|ALT_INV_DONE~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_machine0|delay0|counter\(6));

-- Location: LCCOMB_X63_Y46_N22
\state_machine0|delay0|counter[7]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_machine0|delay0|counter[7]~39_combout\ = (\state_machine0|delay0|counter\(7) & (!\state_machine0|delay0|counter[6]~38\)) # (!\state_machine0|delay0|counter\(7) & ((\state_machine0|delay0|counter[6]~38\) # (GND)))
-- \state_machine0|delay0|counter[7]~40\ = CARRY((!\state_machine0|delay0|counter[6]~38\) # (!\state_machine0|delay0|counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \state_machine0|delay0|counter\(7),
	datad => VCC,
	cin => \state_machine0|delay0|counter[6]~38\,
	combout => \state_machine0|delay0|counter[7]~39_combout\,
	cout => \state_machine0|delay0|counter[7]~40\);

-- Location: FF_X63_Y46_N23
\state_machine0|delay0|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock0|clk_local~clkctrl_outclk\,
	d => \state_machine0|delay0|counter[7]~39_combout\,
	sclr => \state_machine0|delay0|DONE~1_combout\,
	ena => \state_machine0|delay0|ALT_INV_DONE~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_machine0|delay0|counter\(7));

-- Location: LCCOMB_X63_Y46_N24
\state_machine0|delay0|counter[8]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_machine0|delay0|counter[8]~41_combout\ = (\state_machine0|delay0|counter\(8) & (\state_machine0|delay0|counter[7]~40\ $ (GND))) # (!\state_machine0|delay0|counter\(8) & (!\state_machine0|delay0|counter[7]~40\ & VCC))
-- \state_machine0|delay0|counter[8]~42\ = CARRY((\state_machine0|delay0|counter\(8) & !\state_machine0|delay0|counter[7]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \state_machine0|delay0|counter\(8),
	datad => VCC,
	cin => \state_machine0|delay0|counter[7]~40\,
	combout => \state_machine0|delay0|counter[8]~41_combout\,
	cout => \state_machine0|delay0|counter[8]~42\);

-- Location: FF_X63_Y46_N25
\state_machine0|delay0|counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock0|clk_local~clkctrl_outclk\,
	d => \state_machine0|delay0|counter[8]~41_combout\,
	sclr => \state_machine0|delay0|DONE~1_combout\,
	ena => \state_machine0|delay0|ALT_INV_DONE~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_machine0|delay0|counter\(8));

-- Location: LCCOMB_X63_Y46_N26
\state_machine0|delay0|counter[9]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_machine0|delay0|counter[9]~43_combout\ = (\state_machine0|delay0|counter\(9) & (!\state_machine0|delay0|counter[8]~42\)) # (!\state_machine0|delay0|counter\(9) & ((\state_machine0|delay0|counter[8]~42\) # (GND)))
-- \state_machine0|delay0|counter[9]~44\ = CARRY((!\state_machine0|delay0|counter[8]~42\) # (!\state_machine0|delay0|counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \state_machine0|delay0|counter\(9),
	datad => VCC,
	cin => \state_machine0|delay0|counter[8]~42\,
	combout => \state_machine0|delay0|counter[9]~43_combout\,
	cout => \state_machine0|delay0|counter[9]~44\);

-- Location: FF_X63_Y46_N27
\state_machine0|delay0|counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock0|clk_local~clkctrl_outclk\,
	d => \state_machine0|delay0|counter[9]~43_combout\,
	sclr => \state_machine0|delay0|DONE~1_combout\,
	ena => \state_machine0|delay0|ALT_INV_DONE~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_machine0|delay0|counter\(9));

-- Location: LCCOMB_X63_Y46_N28
\state_machine0|delay0|counter[10]~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_machine0|delay0|counter[10]~45_combout\ = (\state_machine0|delay0|counter\(10) & (\state_machine0|delay0|counter[9]~44\ $ (GND))) # (!\state_machine0|delay0|counter\(10) & (!\state_machine0|delay0|counter[9]~44\ & VCC))
-- \state_machine0|delay0|counter[10]~46\ = CARRY((\state_machine0|delay0|counter\(10) & !\state_machine0|delay0|counter[9]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \state_machine0|delay0|counter\(10),
	datad => VCC,
	cin => \state_machine0|delay0|counter[9]~44\,
	combout => \state_machine0|delay0|counter[10]~45_combout\,
	cout => \state_machine0|delay0|counter[10]~46\);

-- Location: FF_X63_Y46_N29
\state_machine0|delay0|counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock0|clk_local~clkctrl_outclk\,
	d => \state_machine0|delay0|counter[10]~45_combout\,
	sclr => \state_machine0|delay0|DONE~1_combout\,
	ena => \state_machine0|delay0|ALT_INV_DONE~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_machine0|delay0|counter\(10));

-- Location: LCCOMB_X63_Y46_N30
\state_machine0|delay0|counter[11]~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_machine0|delay0|counter[11]~47_combout\ = (\state_machine0|delay0|counter\(11) & (!\state_machine0|delay0|counter[10]~46\)) # (!\state_machine0|delay0|counter\(11) & ((\state_machine0|delay0|counter[10]~46\) # (GND)))
-- \state_machine0|delay0|counter[11]~48\ = CARRY((!\state_machine0|delay0|counter[10]~46\) # (!\state_machine0|delay0|counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \state_machine0|delay0|counter\(11),
	datad => VCC,
	cin => \state_machine0|delay0|counter[10]~46\,
	combout => \state_machine0|delay0|counter[11]~47_combout\,
	cout => \state_machine0|delay0|counter[11]~48\);

-- Location: LCCOMB_X63_Y45_N30
\state_machine0|delay0|counter[11]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_machine0|delay0|counter[11]~feeder_combout\ = \state_machine0|delay0|counter[11]~47_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state_machine0|delay0|counter[11]~47_combout\,
	combout => \state_machine0|delay0|counter[11]~feeder_combout\);

-- Location: FF_X63_Y45_N31
\state_machine0|delay0|counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock0|clk_local~clkctrl_outclk\,
	d => \state_machine0|delay0|counter[11]~feeder_combout\,
	sclr => \state_machine0|delay0|DONE~1_combout\,
	ena => \state_machine0|delay0|ALT_INV_DONE~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_machine0|delay0|counter\(11));

-- Location: LCCOMB_X63_Y45_N0
\state_machine0|delay0|counter[12]~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_machine0|delay0|counter[12]~49_combout\ = (\state_machine0|delay0|counter\(12) & (\state_machine0|delay0|counter[11]~48\ $ (GND))) # (!\state_machine0|delay0|counter\(12) & (!\state_machine0|delay0|counter[11]~48\ & VCC))
-- \state_machine0|delay0|counter[12]~50\ = CARRY((\state_machine0|delay0|counter\(12) & !\state_machine0|delay0|counter[11]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \state_machine0|delay0|counter\(12),
	datad => VCC,
	cin => \state_machine0|delay0|counter[11]~48\,
	combout => \state_machine0|delay0|counter[12]~49_combout\,
	cout => \state_machine0|delay0|counter[12]~50\);

-- Location: FF_X63_Y45_N1
\state_machine0|delay0|counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock0|clk_local~clkctrl_outclk\,
	d => \state_machine0|delay0|counter[12]~49_combout\,
	sclr => \state_machine0|delay0|DONE~1_combout\,
	ena => \state_machine0|delay0|ALT_INV_DONE~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_machine0|delay0|counter\(12));

-- Location: LCCOMB_X63_Y45_N2
\state_machine0|delay0|counter[13]~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_machine0|delay0|counter[13]~51_combout\ = (\state_machine0|delay0|counter\(13) & (!\state_machine0|delay0|counter[12]~50\)) # (!\state_machine0|delay0|counter\(13) & ((\state_machine0|delay0|counter[12]~50\) # (GND)))
-- \state_machine0|delay0|counter[13]~52\ = CARRY((!\state_machine0|delay0|counter[12]~50\) # (!\state_machine0|delay0|counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \state_machine0|delay0|counter\(13),
	datad => VCC,
	cin => \state_machine0|delay0|counter[12]~50\,
	combout => \state_machine0|delay0|counter[13]~51_combout\,
	cout => \state_machine0|delay0|counter[13]~52\);

-- Location: FF_X63_Y45_N3
\state_machine0|delay0|counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock0|clk_local~clkctrl_outclk\,
	d => \state_machine0|delay0|counter[13]~51_combout\,
	sclr => \state_machine0|delay0|DONE~1_combout\,
	ena => \state_machine0|delay0|ALT_INV_DONE~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_machine0|delay0|counter\(13));

-- Location: LCCOMB_X63_Y45_N4
\state_machine0|delay0|counter[14]~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_machine0|delay0|counter[14]~53_combout\ = (\state_machine0|delay0|counter\(14) & (\state_machine0|delay0|counter[13]~52\ $ (GND))) # (!\state_machine0|delay0|counter\(14) & (!\state_machine0|delay0|counter[13]~52\ & VCC))
-- \state_machine0|delay0|counter[14]~54\ = CARRY((\state_machine0|delay0|counter\(14) & !\state_machine0|delay0|counter[13]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \state_machine0|delay0|counter\(14),
	datad => VCC,
	cin => \state_machine0|delay0|counter[13]~52\,
	combout => \state_machine0|delay0|counter[14]~53_combout\,
	cout => \state_machine0|delay0|counter[14]~54\);

-- Location: FF_X63_Y45_N5
\state_machine0|delay0|counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock0|clk_local~clkctrl_outclk\,
	d => \state_machine0|delay0|counter[14]~53_combout\,
	sclr => \state_machine0|delay0|DONE~1_combout\,
	ena => \state_machine0|delay0|ALT_INV_DONE~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_machine0|delay0|counter\(14));

-- Location: LCCOMB_X63_Y45_N6
\state_machine0|delay0|counter[15]~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_machine0|delay0|counter[15]~55_combout\ = (\state_machine0|delay0|counter\(15) & (!\state_machine0|delay0|counter[14]~54\)) # (!\state_machine0|delay0|counter\(15) & ((\state_machine0|delay0|counter[14]~54\) # (GND)))
-- \state_machine0|delay0|counter[15]~56\ = CARRY((!\state_machine0|delay0|counter[14]~54\) # (!\state_machine0|delay0|counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \state_machine0|delay0|counter\(15),
	datad => VCC,
	cin => \state_machine0|delay0|counter[14]~54\,
	combout => \state_machine0|delay0|counter[15]~55_combout\,
	cout => \state_machine0|delay0|counter[15]~56\);

-- Location: FF_X63_Y45_N7
\state_machine0|delay0|counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock0|clk_local~clkctrl_outclk\,
	d => \state_machine0|delay0|counter[15]~55_combout\,
	sclr => \state_machine0|delay0|DONE~1_combout\,
	ena => \state_machine0|delay0|ALT_INV_DONE~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_machine0|delay0|counter\(15));

-- Location: LCCOMB_X63_Y45_N8
\state_machine0|delay0|counter[16]~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_machine0|delay0|counter[16]~57_combout\ = (\state_machine0|delay0|counter\(16) & (\state_machine0|delay0|counter[15]~56\ $ (GND))) # (!\state_machine0|delay0|counter\(16) & (!\state_machine0|delay0|counter[15]~56\ & VCC))
-- \state_machine0|delay0|counter[16]~58\ = CARRY((\state_machine0|delay0|counter\(16) & !\state_machine0|delay0|counter[15]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \state_machine0|delay0|counter\(16),
	datad => VCC,
	cin => \state_machine0|delay0|counter[15]~56\,
	combout => \state_machine0|delay0|counter[16]~57_combout\,
	cout => \state_machine0|delay0|counter[16]~58\);

-- Location: FF_X63_Y45_N9
\state_machine0|delay0|counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock0|clk_local~clkctrl_outclk\,
	d => \state_machine0|delay0|counter[16]~57_combout\,
	sclr => \state_machine0|delay0|DONE~1_combout\,
	ena => \state_machine0|delay0|ALT_INV_DONE~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_machine0|delay0|counter\(16));

-- Location: LCCOMB_X63_Y45_N10
\state_machine0|delay0|counter[17]~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_machine0|delay0|counter[17]~59_combout\ = (\state_machine0|delay0|counter\(17) & (!\state_machine0|delay0|counter[16]~58\)) # (!\state_machine0|delay0|counter\(17) & ((\state_machine0|delay0|counter[16]~58\) # (GND)))
-- \state_machine0|delay0|counter[17]~60\ = CARRY((!\state_machine0|delay0|counter[16]~58\) # (!\state_machine0|delay0|counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \state_machine0|delay0|counter\(17),
	datad => VCC,
	cin => \state_machine0|delay0|counter[16]~58\,
	combout => \state_machine0|delay0|counter[17]~59_combout\,
	cout => \state_machine0|delay0|counter[17]~60\);

-- Location: FF_X63_Y45_N11
\state_machine0|delay0|counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock0|clk_local~clkctrl_outclk\,
	d => \state_machine0|delay0|counter[17]~59_combout\,
	sclr => \state_machine0|delay0|DONE~1_combout\,
	ena => \state_machine0|delay0|ALT_INV_DONE~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_machine0|delay0|counter\(17));

-- Location: LCCOMB_X63_Y45_N12
\state_machine0|delay0|counter[18]~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_machine0|delay0|counter[18]~61_combout\ = (\state_machine0|delay0|counter\(18) & (\state_machine0|delay0|counter[17]~60\ $ (GND))) # (!\state_machine0|delay0|counter\(18) & (!\state_machine0|delay0|counter[17]~60\ & VCC))
-- \state_machine0|delay0|counter[18]~62\ = CARRY((\state_machine0|delay0|counter\(18) & !\state_machine0|delay0|counter[17]~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \state_machine0|delay0|counter\(18),
	datad => VCC,
	cin => \state_machine0|delay0|counter[17]~60\,
	combout => \state_machine0|delay0|counter[18]~61_combout\,
	cout => \state_machine0|delay0|counter[18]~62\);

-- Location: FF_X63_Y45_N13
\state_machine0|delay0|counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock0|clk_local~clkctrl_outclk\,
	d => \state_machine0|delay0|counter[18]~61_combout\,
	sclr => \state_machine0|delay0|DONE~1_combout\,
	ena => \state_machine0|delay0|ALT_INV_DONE~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_machine0|delay0|counter\(18));

-- Location: LCCOMB_X63_Y45_N14
\state_machine0|delay0|counter[19]~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_machine0|delay0|counter[19]~63_combout\ = (\state_machine0|delay0|counter\(19) & (!\state_machine0|delay0|counter[18]~62\)) # (!\state_machine0|delay0|counter\(19) & ((\state_machine0|delay0|counter[18]~62\) # (GND)))
-- \state_machine0|delay0|counter[19]~64\ = CARRY((!\state_machine0|delay0|counter[18]~62\) # (!\state_machine0|delay0|counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \state_machine0|delay0|counter\(19),
	datad => VCC,
	cin => \state_machine0|delay0|counter[18]~62\,
	combout => \state_machine0|delay0|counter[19]~63_combout\,
	cout => \state_machine0|delay0|counter[19]~64\);

-- Location: FF_X63_Y45_N15
\state_machine0|delay0|counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock0|clk_local~clkctrl_outclk\,
	d => \state_machine0|delay0|counter[19]~63_combout\,
	sclr => \state_machine0|delay0|DONE~1_combout\,
	ena => \state_machine0|delay0|ALT_INV_DONE~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_machine0|delay0|counter\(19));

-- Location: LCCOMB_X63_Y45_N16
\state_machine0|delay0|counter[20]~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_machine0|delay0|counter[20]~65_combout\ = (\state_machine0|delay0|counter\(20) & (\state_machine0|delay0|counter[19]~64\ $ (GND))) # (!\state_machine0|delay0|counter\(20) & (!\state_machine0|delay0|counter[19]~64\ & VCC))
-- \state_machine0|delay0|counter[20]~66\ = CARRY((\state_machine0|delay0|counter\(20) & !\state_machine0|delay0|counter[19]~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \state_machine0|delay0|counter\(20),
	datad => VCC,
	cin => \state_machine0|delay0|counter[19]~64\,
	combout => \state_machine0|delay0|counter[20]~65_combout\,
	cout => \state_machine0|delay0|counter[20]~66\);

-- Location: FF_X63_Y45_N17
\state_machine0|delay0|counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock0|clk_local~clkctrl_outclk\,
	d => \state_machine0|delay0|counter[20]~65_combout\,
	sclr => \state_machine0|delay0|DONE~1_combout\,
	ena => \state_machine0|delay0|ALT_INV_DONE~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_machine0|delay0|counter\(20));

-- Location: LCCOMB_X63_Y45_N18
\state_machine0|delay0|counter[21]~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_machine0|delay0|counter[21]~67_combout\ = (\state_machine0|delay0|counter\(21) & (!\state_machine0|delay0|counter[20]~66\)) # (!\state_machine0|delay0|counter\(21) & ((\state_machine0|delay0|counter[20]~66\) # (GND)))
-- \state_machine0|delay0|counter[21]~68\ = CARRY((!\state_machine0|delay0|counter[20]~66\) # (!\state_machine0|delay0|counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \state_machine0|delay0|counter\(21),
	datad => VCC,
	cin => \state_machine0|delay0|counter[20]~66\,
	combout => \state_machine0|delay0|counter[21]~67_combout\,
	cout => \state_machine0|delay0|counter[21]~68\);

-- Location: FF_X63_Y45_N19
\state_machine0|delay0|counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock0|clk_local~clkctrl_outclk\,
	d => \state_machine0|delay0|counter[21]~67_combout\,
	sclr => \state_machine0|delay0|DONE~1_combout\,
	ena => \state_machine0|delay0|ALT_INV_DONE~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_machine0|delay0|counter\(21));

-- Location: LCCOMB_X63_Y45_N20
\state_machine0|delay0|counter[22]~69\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_machine0|delay0|counter[22]~69_combout\ = (\state_machine0|delay0|counter\(22) & (\state_machine0|delay0|counter[21]~68\ $ (GND))) # (!\state_machine0|delay0|counter\(22) & (!\state_machine0|delay0|counter[21]~68\ & VCC))
-- \state_machine0|delay0|counter[22]~70\ = CARRY((\state_machine0|delay0|counter\(22) & !\state_machine0|delay0|counter[21]~68\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \state_machine0|delay0|counter\(22),
	datad => VCC,
	cin => \state_machine0|delay0|counter[21]~68\,
	combout => \state_machine0|delay0|counter[22]~69_combout\,
	cout => \state_machine0|delay0|counter[22]~70\);

-- Location: FF_X63_Y45_N21
\state_machine0|delay0|counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock0|clk_local~clkctrl_outclk\,
	d => \state_machine0|delay0|counter[22]~69_combout\,
	sclr => \state_machine0|delay0|DONE~1_combout\,
	ena => \state_machine0|delay0|ALT_INV_DONE~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_machine0|delay0|counter\(22));

-- Location: LCCOMB_X63_Y45_N22
\state_machine0|delay0|counter[23]~71\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_machine0|delay0|counter[23]~71_combout\ = (\state_machine0|delay0|counter\(23) & (!\state_machine0|delay0|counter[22]~70\)) # (!\state_machine0|delay0|counter\(23) & ((\state_machine0|delay0|counter[22]~70\) # (GND)))
-- \state_machine0|delay0|counter[23]~72\ = CARRY((!\state_machine0|delay0|counter[22]~70\) # (!\state_machine0|delay0|counter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \state_machine0|delay0|counter\(23),
	datad => VCC,
	cin => \state_machine0|delay0|counter[22]~70\,
	combout => \state_machine0|delay0|counter[23]~71_combout\,
	cout => \state_machine0|delay0|counter[23]~72\);

-- Location: FF_X63_Y45_N23
\state_machine0|delay0|counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock0|clk_local~clkctrl_outclk\,
	d => \state_machine0|delay0|counter[23]~71_combout\,
	sclr => \state_machine0|delay0|DONE~1_combout\,
	ena => \state_machine0|delay0|ALT_INV_DONE~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_machine0|delay0|counter\(23));

-- Location: LCCOMB_X63_Y45_N24
\state_machine0|delay0|counter[24]~73\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_machine0|delay0|counter[24]~73_combout\ = \state_machine0|delay0|counter\(24) $ (!\state_machine0|delay0|counter[23]~72\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \state_machine0|delay0|counter\(24),
	cin => \state_machine0|delay0|counter[23]~72\,
	combout => \state_machine0|delay0|counter[24]~73_combout\);

-- Location: FF_X63_Y45_N25
\state_machine0|delay0|counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock0|clk_local~clkctrl_outclk\,
	d => \state_machine0|delay0|counter[24]~73_combout\,
	sclr => \state_machine0|delay0|DONE~1_combout\,
	ena => \state_machine0|delay0|ALT_INV_DONE~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_machine0|delay0|counter\(24));

-- Location: LCCOMB_X63_Y45_N28
\state_machine0|delay0|DONE~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_machine0|delay0|DONE~2_combout\ = (\state_machine0|delay0|counter\(18) & (\state_machine0|delay0|counter\(21) & (\state_machine0|delay0|counter\(19) & \state_machine0|delay0|counter\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_machine0|delay0|counter\(18),
	datab => \state_machine0|delay0|counter\(21),
	datac => \state_machine0|delay0|counter\(19),
	datad => \state_machine0|delay0|counter\(20),
	combout => \state_machine0|delay0|DONE~2_combout\);

-- Location: LCCOMB_X63_Y46_N6
\state_machine0|delay0|DONE~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_machine0|delay0|DONE~6_combout\ = (\state_machine0|delay0|counter\(7)) # ((\state_machine0|delay0|counter\(8)) # ((\state_machine0|delay0|counter\(9)) # (\state_machine0|delay0|counter\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_machine0|delay0|counter\(7),
	datab => \state_machine0|delay0|counter\(8),
	datac => \state_machine0|delay0|counter\(9),
	datad => \state_machine0|delay0|counter\(6),
	combout => \state_machine0|delay0|DONE~6_combout\);

-- Location: LCCOMB_X63_Y45_N26
\state_machine0|delay0|DONE~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_machine0|delay0|DONE~3_combout\ = (\state_machine0|delay0|counter\(11) & (\state_machine0|delay0|counter\(12) & (\state_machine0|delay0|counter\(14) & \state_machine0|delay0|counter\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_machine0|delay0|counter\(11),
	datab => \state_machine0|delay0|counter\(12),
	datac => \state_machine0|delay0|counter\(14),
	datad => \state_machine0|delay0|counter\(13),
	combout => \state_machine0|delay0|DONE~3_combout\);

-- Location: LCCOMB_X63_Y46_N4
\state_machine0|delay0|DONE~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_machine0|delay0|DONE~4_combout\ = (\state_machine0|delay0|counter\(2) & (\state_machine0|delay0|counter\(3) & (\state_machine0|delay0|counter\(0) & \state_machine0|delay0|counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_machine0|delay0|counter\(2),
	datab => \state_machine0|delay0|counter\(3),
	datac => \state_machine0|delay0|counter\(0),
	datad => \state_machine0|delay0|counter\(1),
	combout => \state_machine0|delay0|DONE~4_combout\);

-- Location: LCCOMB_X64_Y46_N28
\state_machine0|delay0|DONE~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_machine0|delay0|DONE~5_combout\ = (\state_machine0|delay0|counter\(4) & (\state_machine0|delay0|counter\(5) & \state_machine0|delay0|DONE~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_machine0|delay0|counter\(4),
	datab => \state_machine0|delay0|counter\(5),
	datac => \state_machine0|delay0|DONE~4_combout\,
	combout => \state_machine0|delay0|DONE~5_combout\);

-- Location: LCCOMB_X64_Y46_N18
\state_machine0|delay0|DONE~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_machine0|delay0|DONE~7_combout\ = (\state_machine0|delay0|DONE~3_combout\ & ((\state_machine0|delay0|counter\(10)) # ((\state_machine0|delay0|DONE~6_combout\) # (\state_machine0|delay0|DONE~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_machine0|delay0|counter\(10),
	datab => \state_machine0|delay0|DONE~6_combout\,
	datac => \state_machine0|delay0|DONE~3_combout\,
	datad => \state_machine0|delay0|DONE~5_combout\,
	combout => \state_machine0|delay0|DONE~7_combout\);

-- Location: LCCOMB_X64_Y46_N24
\state_machine0|delay0|DONE~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_machine0|delay0|DONE~8_combout\ = (\state_machine0|delay0|counter\(17)) # ((\state_machine0|delay0|counter\(16) & ((\state_machine0|delay0|counter\(15)) # (\state_machine0|delay0|DONE~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_machine0|delay0|counter\(17),
	datab => \state_machine0|delay0|counter\(16),
	datac => \state_machine0|delay0|counter\(15),
	datad => \state_machine0|delay0|DONE~7_combout\,
	combout => \state_machine0|delay0|DONE~8_combout\);

-- Location: LCCOMB_X63_Y46_N0
\state_machine0|delay0|DONE~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_machine0|delay0|DONE~9_combout\ = (\state_machine0|delay0|counter\(23)) # ((\state_machine0|delay0|counter\(22) & (\state_machine0|delay0|DONE~2_combout\ & \state_machine0|delay0|DONE~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_machine0|delay0|counter\(22),
	datab => \state_machine0|delay0|counter\(23),
	datac => \state_machine0|delay0|DONE~2_combout\,
	datad => \state_machine0|delay0|DONE~8_combout\,
	combout => \state_machine0|delay0|DONE~9_combout\);

-- Location: LCCOMB_X63_Y46_N2
\state_machine0|delay0|DONE~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_machine0|delay0|DONE~11_combout\ = (\state_machine0|delay0|DONE~0_combout\ & (\state_machine0|delay0|DONE~10_combout\ & (\state_machine0|delay0|counter\(24) & \state_machine0|delay0|DONE~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_machine0|delay0|DONE~0_combout\,
	datab => \state_machine0|delay0|DONE~10_combout\,
	datac => \state_machine0|delay0|counter\(24),
	datad => \state_machine0|delay0|DONE~9_combout\,
	combout => \state_machine0|delay0|DONE~11_combout\);

-- Location: FF_X55_Y47_N31
\state_machine0|delay0|DONE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock0|clk_local~clkctrl_outclk\,
	asdata => \state_machine0|delay0|DONE~11_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_machine0|delay0|DONE~q\);

-- Location: LCCOMB_X57_Y47_N24
\state_machine0|Selector9~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_machine0|Selector9~1_combout\ = (\state_machine0|present_state.st15~q\ & (((\state_machine0|present_state.st25~q\ & !\state_machine0|delay0|DONE~q\)) # (!\state_machine0|next_state~2_combout\))) # (!\state_machine0|present_state.st15~q\ & 
-- (\state_machine0|present_state.st25~q\ & (!\state_machine0|delay0|DONE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_machine0|present_state.st15~q\,
	datab => \state_machine0|present_state.st25~q\,
	datac => \state_machine0|delay0|DONE~q\,
	datad => \state_machine0|next_state~2_combout\,
	combout => \state_machine0|Selector9~1_combout\);

-- Location: LCCOMB_X55_Y47_N14
\state_machine0|next_state~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_machine0|next_state~0_combout\ = ((\SW[0]~input_o\) # ((\SW[1]~input_o\) # (!\state_machine0|process_1~0_combout\))) # (!\SW[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[0]~input_o\,
	datac => \state_machine0|process_1~0_combout\,
	datad => \SW[1]~input_o\,
	combout => \state_machine0|next_state~0_combout\);

-- Location: LCCOMB_X57_Y47_N6
\state_machine0|Selector9~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_machine0|Selector9~2_combout\ = (\state_machine0|Selector9~0_combout\) # ((\state_machine0|Selector9~1_combout\) # ((!\state_machine0|present_state.st0~q\ & !\state_machine0|next_state~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_machine0|Selector9~0_combout\,
	datab => \state_machine0|present_state.st0~q\,
	datac => \state_machine0|Selector9~1_combout\,
	datad => \state_machine0|next_state~0_combout\,
	combout => \state_machine0|Selector9~2_combout\);

-- Location: FF_X57_Y47_N7
\state_machine0|present_state.st25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock0|clk_local~clkctrl_outclk\,
	d => \state_machine0|Selector9~2_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_machine0|present_state.st25~q\);

-- Location: LCCOMB_X57_Y47_N0
\state_machine0|Selector10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_machine0|Selector10~0_combout\ = (\state_machine0|present_state.st5~q\ & (((\state_machine0|present_state.st30~q\ & !\state_machine0|delay0|DONE~q\)) # (!\state_machine0|next_state~0_combout\))) # (!\state_machine0|present_state.st5~q\ & 
-- (\state_machine0|present_state.st30~q\ & (!\state_machine0|delay0|DONE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_machine0|present_state.st5~q\,
	datab => \state_machine0|present_state.st30~q\,
	datac => \state_machine0|delay0|DONE~q\,
	datad => \state_machine0|next_state~0_combout\,
	combout => \state_machine0|Selector10~0_combout\);

-- Location: LCCOMB_X57_Y47_N14
\state_machine0|Selector10~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_machine0|Selector10~1_combout\ = (\state_machine0|Selector10~0_combout\) # ((\state_machine0|present_state.st20~q\ & !\state_machine0|next_state~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state_machine0|Selector10~0_combout\,
	datac => \state_machine0|present_state.st20~q\,
	datad => \state_machine0|next_state~2_combout\,
	combout => \state_machine0|Selector10~1_combout\);

-- Location: FF_X57_Y47_N15
\state_machine0|present_state.st30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock0|clk_local~clkctrl_outclk\,
	d => \state_machine0|Selector10~1_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_machine0|present_state.st30~q\);

-- Location: LCCOMB_X57_Y47_N26
\state_machine0|Selector12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_machine0|Selector12~0_combout\ = (\state_machine0|delay0|DONE~q\ & (\state_machine0|present_state.st15~q\ & ((!\state_machine0|next_state~0_combout\)))) # (!\state_machine0|delay0|DONE~q\ & ((\state_machine0|present_state.st40~q\) # 
-- ((\state_machine0|present_state.st15~q\ & !\state_machine0|next_state~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_machine0|delay0|DONE~q\,
	datab => \state_machine0|present_state.st15~q\,
	datac => \state_machine0|present_state.st40~q\,
	datad => \state_machine0|next_state~0_combout\,
	combout => \state_machine0|Selector12~0_combout\);

-- Location: FF_X57_Y47_N27
\state_machine0|present_state.st40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock0|clk_local~clkctrl_outclk\,
	d => \state_machine0|Selector12~0_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_machine0|present_state.st40~q\);

-- Location: LCCOMB_X57_Y47_N4
\state_machine0|Selector13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_machine0|Selector13~0_combout\ = (\state_machine0|next_state~0_combout\ & (((\state_machine0|present_state.st45~q\ & !\state_machine0|delay0|DONE~q\)))) # (!\state_machine0|next_state~0_combout\ & ((\state_machine0|present_state.st20~q\) # 
-- ((\state_machine0|present_state.st45~q\ & !\state_machine0|delay0|DONE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_machine0|next_state~0_combout\,
	datab => \state_machine0|present_state.st20~q\,
	datac => \state_machine0|present_state.st45~q\,
	datad => \state_machine0|delay0|DONE~q\,
	combout => \state_machine0|Selector13~0_combout\);

-- Location: FF_X57_Y47_N5
\state_machine0|present_state.st45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock0|clk_local~clkctrl_outclk\,
	d => \state_machine0|Selector13~0_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_machine0|present_state.st45~q\);

-- Location: LCCOMB_X57_Y47_N2
\state_machine0|Selector11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_machine0|Selector11~0_combout\ = (\state_machine0|delay0|DONE~q\ & ((\state_machine0|present_state.st40~q\) # ((\state_machine0|present_state.st45~q\)))) # (!\state_machine0|delay0|DONE~q\ & (((\state_machine0|present_state.st35~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_machine0|delay0|DONE~q\,
	datab => \state_machine0|present_state.st40~q\,
	datac => \state_machine0|present_state.st35~q\,
	datad => \state_machine0|present_state.st45~q\,
	combout => \state_machine0|Selector11~0_combout\);

-- Location: LCCOMB_X57_Y47_N12
\state_machine0|Selector11~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_machine0|Selector11~1_combout\ = (\state_machine0|Selector11~0_combout\) # ((\state_machine0|present_state.st10~q\ & !\state_machine0|next_state~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_machine0|present_state.st10~q\,
	datac => \state_machine0|Selector11~0_combout\,
	datad => \state_machine0|next_state~0_combout\,
	combout => \state_machine0|Selector11~1_combout\);

-- Location: FF_X57_Y47_N13
\state_machine0|present_state.st35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock0|clk_local~clkctrl_outclk\,
	d => \state_machine0|Selector11~1_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_machine0|present_state.st35~q\);

-- Location: LCCOMB_X57_Y47_N16
\state_machine0|WideOr3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_machine0|WideOr3~0_combout\ = (!\state_machine0|present_state.st25~q\ & (!\state_machine0|present_state.st30~q\ & !\state_machine0|present_state.st35~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_machine0|present_state.st25~q\,
	datac => \state_machine0|present_state.st30~q\,
	datad => \state_machine0|present_state.st35~q\,
	combout => \state_machine0|WideOr3~0_combout\);

-- Location: LCCOMB_X55_Y47_N2
\state_machine0|Selector4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_machine0|Selector4~0_combout\ = (\state_machine0|next_state~1_combout\ & ((\state_machine0|WideOr3~0_combout\) # ((!\state_machine0|delay0|DONE~q\)))) # (!\state_machine0|next_state~1_combout\ & (\state_machine0|present_state.st0~q\ & 
-- ((\state_machine0|WideOr3~0_combout\) # (!\state_machine0|delay0|DONE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_machine0|next_state~1_combout\,
	datab => \state_machine0|WideOr3~0_combout\,
	datac => \state_machine0|present_state.st0~q\,
	datad => \state_machine0|delay0|DONE~q\,
	combout => \state_machine0|Selector4~0_combout\);

-- Location: FF_X55_Y47_N3
\state_machine0|present_state.st0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock0|clk_local~q\,
	d => \state_machine0|Selector4~0_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_machine0|present_state.st0~q\);

-- Location: LCCOMB_X55_Y47_N20
\state_machine0|Selector6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_machine0|Selector6~0_combout\ = (\state_machine0|present_state.st10~q\ & (((\state_machine0|present_state.st5~q\ & \state_machine0|process_1~1_combout\)) # (!\state_machine0|next_state~1_combout\))) # (!\state_machine0|present_state.st10~q\ & 
-- (\state_machine0|present_state.st5~q\ & (\state_machine0|process_1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_machine0|present_state.st10~q\,
	datab => \state_machine0|present_state.st5~q\,
	datac => \state_machine0|process_1~1_combout\,
	datad => \state_machine0|next_state~1_combout\,
	combout => \state_machine0|Selector6~0_combout\);

-- Location: LCCOMB_X55_Y47_N28
\state_machine0|Selector6~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_machine0|Selector6~1_combout\ = (\state_machine0|Selector6~0_combout\) # ((!\state_machine0|present_state.st0~q\ & !\state_machine0|next_state~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state_machine0|present_state.st0~q\,
	datac => \state_machine0|next_state~2_combout\,
	datad => \state_machine0|Selector6~0_combout\,
	combout => \state_machine0|Selector6~1_combout\);

-- Location: FF_X55_Y47_N29
\state_machine0|present_state.st10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock0|clk_local~q\,
	d => \state_machine0|Selector6~1_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_machine0|present_state.st10~q\);

-- Location: LCCOMB_X55_Y47_N18
\state_machine0|Selector8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_machine0|Selector8~0_combout\ = (\state_machine0|present_state.st15~q\ & ((\state_machine0|process_1~1_combout\) # ((\state_machine0|present_state.st20~q\ & !\state_machine0|next_state~1_combout\)))) # (!\state_machine0|present_state.st15~q\ & 
-- (\state_machine0|present_state.st20~q\ & ((!\state_machine0|next_state~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_machine0|present_state.st15~q\,
	datab => \state_machine0|present_state.st20~q\,
	datac => \state_machine0|process_1~1_combout\,
	datad => \state_machine0|next_state~1_combout\,
	combout => \state_machine0|Selector8~0_combout\);

-- Location: LCCOMB_X55_Y47_N6
\state_machine0|Selector8~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_machine0|Selector8~1_combout\ = (\state_machine0|Selector8~0_combout\) # ((\state_machine0|present_state.st10~q\ & !\state_machine0|next_state~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_machine0|present_state.st10~q\,
	datac => \state_machine0|next_state~2_combout\,
	datad => \state_machine0|Selector8~0_combout\,
	combout => \state_machine0|Selector8~1_combout\);

-- Location: FF_X55_Y47_N7
\state_machine0|present_state.st20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock0|clk_local~q\,
	d => \state_machine0|Selector8~1_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_machine0|present_state.st20~q\);

-- Location: LCCOMB_X55_Y47_N10
\state_machine0|delay0|DONE~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_machine0|delay0|DONE~1_combout\ = (\state_machine0|present_state.st20~q\) # ((\state_machine0|present_state.st10~q\) # (!\state_machine0|delay0|DONE~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_machine0|present_state.st20~q\,
	datac => \state_machine0|delay0|DONE~0_combout\,
	datad => \state_machine0|present_state.st10~q\,
	combout => \state_machine0|delay0|DONE~1_combout\);

-- Location: CLKCTRL_G12
\state_machine0|delay0|DONE~1clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \state_machine0|delay0|DONE~1clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \state_machine0|delay0|DONE~1clkctrl_outclk\);

-- Location: LCCOMB_X57_Y47_N28
\state_machine0|Selector3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_machine0|Selector3~0_combout\ = (\state_machine0|present_state.st30~q\) # (\state_machine0|present_state.st40~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state_machine0|present_state.st30~q\,
	datad => \state_machine0|present_state.st40~q\,
	combout => \state_machine0|Selector3~0_combout\);

-- Location: LCCOMB_X57_Y47_N30
\state_machine0|nickel_out\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_machine0|nickel_out~combout\ = (GLOBAL(\state_machine0|delay0|DONE~1clkctrl_outclk\) & ((\state_machine0|Selector3~0_combout\))) # (!GLOBAL(\state_machine0|delay0|DONE~1clkctrl_outclk\) & (\state_machine0|nickel_out~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_machine0|nickel_out~combout\,
	datac => \state_machine0|delay0|DONE~1clkctrl_outclk\,
	datad => \state_machine0|Selector3~0_combout\,
	combout => \state_machine0|nickel_out~combout\);

-- Location: LCCOMB_X57_Y47_N10
\state_machine0|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_machine0|Selector0~0_combout\ = (\state_machine0|present_state.st35~q\) # (\state_machine0|present_state.st45~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_machine0|present_state.st35~q\,
	datad => \state_machine0|present_state.st45~q\,
	combout => \state_machine0|Selector0~0_combout\);

-- Location: LCCOMB_X57_Y47_N20
\state_machine0|dime_out\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_machine0|dime_out~combout\ = (GLOBAL(\state_machine0|delay0|DONE~1clkctrl_outclk\) & ((\state_machine0|Selector0~0_combout\))) # (!GLOBAL(\state_machine0|delay0|DONE~1clkctrl_outclk\) & (\state_machine0|dime_out~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_machine0|dime_out~combout\,
	datac => \state_machine0|delay0|DONE~1clkctrl_outclk\,
	datad => \state_machine0|Selector0~0_combout\,
	combout => \state_machine0|dime_out~combout\);

-- Location: LCCOMB_X57_Y47_N22
\WideNor0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \WideNor0~0_combout\ = (\state_machine0|present_state.st5~q\) # ((\state_machine0|present_state.st15~q\) # ((\state_machine0|present_state.st35~q\) # (\state_machine0|present_state.st25~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_machine0|present_state.st5~q\,
	datab => \state_machine0|present_state.st15~q\,
	datac => \state_machine0|present_state.st35~q\,
	datad => \state_machine0|present_state.st25~q\,
	combout => \WideNor0~0_combout\);

-- Location: LCCOMB_X57_Y47_N8
WideNor0 : fiftyfivenm_lcell_comb
-- Equation(s):
-- \WideNor0~combout\ = (\WideNor0~0_combout\) # (\state_machine0|present_state.st45~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \WideNor0~0_combout\,
	datad => \state_machine0|present_state.st45~q\,
	combout => \WideNor0~combout\);

-- Location: LCCOMB_X56_Y47_N12
\WideOr1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \WideOr1~0_combout\ = (\state_machine0|present_state.st30~q\) # ((\state_machine0|present_state.st10~q\) # ((\state_machine0|present_state.st15~q\) # (\state_machine0|present_state.st35~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_machine0|present_state.st30~q\,
	datab => \state_machine0|present_state.st10~q\,
	datac => \state_machine0|present_state.st15~q\,
	datad => \state_machine0|present_state.st35~q\,
	combout => \WideOr1~0_combout\);

-- Location: LCCOMB_X56_Y47_N4
\present_state_dig1[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- present_state_dig1(2) = (\state_machine0|present_state.st45~q\) # (\state_machine0|present_state.st40~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state_machine0|present_state.st45~q\,
	datad => \state_machine0|present_state.st40~q\,
	combout => present_state_dig1(2));

-- Location: LCCOMB_X56_Y47_N18
\display3|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display3|Mux6~0_combout\ = (!\state_machine0|present_state.st20~q\ & (\state_machine0|WideOr3~0_combout\ & (\WideOr1~0_combout\ $ (present_state_dig1(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr1~0_combout\,
	datab => present_state_dig1(2),
	datac => \state_machine0|present_state.st20~q\,
	datad => \state_machine0|WideOr3~0_combout\,
	combout => \display3|Mux6~0_combout\);

-- Location: LCCOMB_X56_Y47_N10
\display3|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display3|Mux4~0_combout\ = (!\WideOr1~0_combout\ & (!present_state_dig1(2) & ((\state_machine0|present_state.st20~q\) # (!\state_machine0|WideOr3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr1~0_combout\,
	datab => present_state_dig1(2),
	datac => \state_machine0|present_state.st20~q\,
	datad => \state_machine0|WideOr3~0_combout\,
	combout => \display3|Mux4~0_combout\);

-- Location: LCCOMB_X56_Y47_N28
\display3|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display3|Mux3~0_combout\ = (\WideOr1~0_combout\ & (present_state_dig1(2) $ (((!\state_machine0|present_state.st20~q\ & \state_machine0|WideOr3~0_combout\))))) # (!\WideOr1~0_combout\ & (present_state_dig1(2) & (!\state_machine0|present_state.st20~q\ & 
-- \state_machine0|WideOr3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr1~0_combout\,
	datab => present_state_dig1(2),
	datac => \state_machine0|present_state.st20~q\,
	datad => \state_machine0|WideOr3~0_combout\,
	combout => \display3|Mux3~0_combout\);

-- Location: LCCOMB_X56_Y47_N24
\display3|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display3|Mux2~0_combout\ = (\WideOr1~0_combout\) # ((present_state_dig1(2) & (!\state_machine0|present_state.st20~q\ & \state_machine0|WideOr3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr1~0_combout\,
	datab => present_state_dig1(2),
	datac => \state_machine0|present_state.st20~q\,
	datad => \state_machine0|WideOr3~0_combout\,
	combout => \display3|Mux2~0_combout\);

-- Location: LCCOMB_X56_Y47_N26
\display3|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display3|Mux1~0_combout\ = (\WideOr1~0_combout\ & (((\state_machine0|present_state.st20~q\) # (!\state_machine0|WideOr3~0_combout\)) # (!present_state_dig1(2)))) # (!\WideOr1~0_combout\ & (!present_state_dig1(2) & ((\state_machine0|present_state.st20~q\) 
-- # (!\state_machine0|WideOr3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr1~0_combout\,
	datab => present_state_dig1(2),
	datac => \state_machine0|present_state.st20~q\,
	datad => \state_machine0|WideOr3~0_combout\,
	combout => \display3|Mux1~0_combout\);

-- Location: LCCOMB_X56_Y47_N22
\display3|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display3|Mux0~0_combout\ = (present_state_dig1(2) & (\WideOr1~0_combout\ & ((\state_machine0|present_state.st20~q\) # (!\state_machine0|WideOr3~0_combout\)))) # (!present_state_dig1(2) & (((!\state_machine0|present_state.st20~q\ & 
-- \state_machine0|WideOr3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr1~0_combout\,
	datab => present_state_dig1(2),
	datac => \state_machine0|present_state.st20~q\,
	datad => \state_machine0|WideOr3~0_combout\,
	combout => \display3|Mux0~0_combout\);

-- Location: LCCOMB_X57_Y47_N18
\state_machine0|candy_out\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_machine0|candy_out~combout\ = (GLOBAL(\state_machine0|delay0|DONE~1clkctrl_outclk\) & ((!\state_machine0|WideOr3~0_combout\))) # (!GLOBAL(\state_machine0|delay0|DONE~1clkctrl_outclk\) & (\state_machine0|candy_out~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state_machine0|candy_out~combout\,
	datac => \state_machine0|delay0|DONE~1clkctrl_outclk\,
	datad => \state_machine0|WideOr3~0_combout\,
	combout => \state_machine0|candy_out~combout\);

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

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_end_addr => -1,
	addr_range2_offset => -1,
	addr_range3_offset => -1,
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

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_HEX1(0) <= \HEX1[0]~output_o\;

ww_HEX1(1) <= \HEX1[1]~output_o\;

ww_HEX1(2) <= \HEX1[2]~output_o\;

ww_HEX1(3) <= \HEX1[3]~output_o\;

ww_HEX1(4) <= \HEX1[4]~output_o\;

ww_HEX1(5) <= \HEX1[5]~output_o\;

ww_HEX1(6) <= \HEX1[6]~output_o\;

ww_HEX2(0) <= \HEX2[0]~output_o\;

ww_HEX2(1) <= \HEX2[1]~output_o\;

ww_HEX2(2) <= \HEX2[2]~output_o\;

ww_HEX2(3) <= \HEX2[3]~output_o\;

ww_HEX2(4) <= \HEX2[4]~output_o\;

ww_HEX2(5) <= \HEX2[5]~output_o\;

ww_HEX2(6) <= \HEX2[6]~output_o\;

ww_HEX3(0) <= \HEX3[0]~output_o\;

ww_HEX3(1) <= \HEX3[1]~output_o\;

ww_HEX3(2) <= \HEX3[2]~output_o\;

ww_HEX3(3) <= \HEX3[3]~output_o\;

ww_HEX3(4) <= \HEX3[4]~output_o\;

ww_HEX3(5) <= \HEX3[5]~output_o\;

ww_HEX3(6) <= \HEX3[6]~output_o\;

ww_HEX4(0) <= \HEX4[0]~output_o\;

ww_HEX4(1) <= \HEX4[1]~output_o\;

ww_HEX4(2) <= \HEX4[2]~output_o\;

ww_HEX4(3) <= \HEX4[3]~output_o\;

ww_HEX4(4) <= \HEX4[4]~output_o\;

ww_HEX4(5) <= \HEX4[5]~output_o\;

ww_HEX4(6) <= \HEX4[6]~output_o\;

ww_HEX5(0) <= \HEX5[0]~output_o\;

ww_HEX5(1) <= \HEX5[1]~output_o\;

ww_HEX5(2) <= \HEX5[2]~output_o\;

ww_HEX5(3) <= \HEX5[3]~output_o\;

ww_HEX5(4) <= \HEX5[4]~output_o\;

ww_HEX5(5) <= \HEX5[5]~output_o\;

ww_HEX5(6) <= \HEX5[6]~output_o\;
END structure;


