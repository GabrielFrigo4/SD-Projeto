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

-- DATE "08/04/2025 11:25:27"

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
	SW : IN std_logic_vector(1 DOWNTO 0);
	KEY : IN std_logic_vector(1 DOWNTO 0);
	HEX0 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX1 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX2 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX3 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX4 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX5 : BUFFER std_logic_vector(6 DOWNTO 0);
	LEDR : BUFFER std_logic_vector(2 DOWNTO 0)
	);
END VendingMachine;

-- Design Ports Information
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
-- LEDR[0]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL ww_SW : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(2 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \clock0|clk_1s_reg~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \clock0|Add0~0_combout\ : std_logic;
SIGNAL \clock0|Add0~1\ : std_logic;
SIGNAL \clock0|Add0~2_combout\ : std_logic;
SIGNAL \clock0|Add0~3\ : std_logic;
SIGNAL \clock0|Add0~4_combout\ : std_logic;
SIGNAL \clock0|Add0~5\ : std_logic;
SIGNAL \clock0|Add0~6_combout\ : std_logic;
SIGNAL \clock0|Add0~7\ : std_logic;
SIGNAL \clock0|Add0~8_combout\ : std_logic;
SIGNAL \clock0|Add0~9\ : std_logic;
SIGNAL \clock0|Add0~10_combout\ : std_logic;
SIGNAL \clock0|Add0~11\ : std_logic;
SIGNAL \clock0|Add0~12_combout\ : std_logic;
SIGNAL \clock0|Add0~13\ : std_logic;
SIGNAL \clock0|Add0~14_combout\ : std_logic;
SIGNAL \clock0|counter~4_combout\ : std_logic;
SIGNAL \clock0|Add0~15\ : std_logic;
SIGNAL \clock0|Add0~16_combout\ : std_logic;
SIGNAL \clock0|Add0~17\ : std_logic;
SIGNAL \clock0|Add0~18_combout\ : std_logic;
SIGNAL \clock0|Add0~19\ : std_logic;
SIGNAL \clock0|Add0~20_combout\ : std_logic;
SIGNAL \clock0|Add0~21\ : std_logic;
SIGNAL \clock0|Add0~22_combout\ : std_logic;
SIGNAL \clock0|Add0~23\ : std_logic;
SIGNAL \clock0|Add0~24_combout\ : std_logic;
SIGNAL \clock0|counter~3_combout\ : std_logic;
SIGNAL \clock0|Add0~25\ : std_logic;
SIGNAL \clock0|Add0~26_combout\ : std_logic;
SIGNAL \clock0|counter~2_combout\ : std_logic;
SIGNAL \clock0|Add0~27\ : std_logic;
SIGNAL \clock0|Add0~28_combout\ : std_logic;
SIGNAL \clock0|counter~1_combout\ : std_logic;
SIGNAL \clock0|Add0~29\ : std_logic;
SIGNAL \clock0|Add0~30_combout\ : std_logic;
SIGNAL \clock0|counter~0_combout\ : std_logic;
SIGNAL \clock0|Add0~31\ : std_logic;
SIGNAL \clock0|Add0~32_combout\ : std_logic;
SIGNAL \clock0|Add0~33\ : std_logic;
SIGNAL \clock0|Add0~34_combout\ : std_logic;
SIGNAL \clock0|counter~5_combout\ : std_logic;
SIGNAL \clock0|Add0~35\ : std_logic;
SIGNAL \clock0|Add0~36_combout\ : std_logic;
SIGNAL \clock0|Add0~37\ : std_logic;
SIGNAL \clock0|Add0~38_combout\ : std_logic;
SIGNAL \clock0|counter~6_combout\ : std_logic;
SIGNAL \clock0|Add0~39\ : std_logic;
SIGNAL \clock0|Add0~40_combout\ : std_logic;
SIGNAL \clock0|counter~7_combout\ : std_logic;
SIGNAL \clock0|Add0~41\ : std_logic;
SIGNAL \clock0|Add0~42_combout\ : std_logic;
SIGNAL \clock0|counter~8_combout\ : std_logic;
SIGNAL \clock0|Add0~43\ : std_logic;
SIGNAL \clock0|Add0~44_combout\ : std_logic;
SIGNAL \clock0|counter~9_combout\ : std_logic;
SIGNAL \clock0|Add0~45\ : std_logic;
SIGNAL \clock0|Add0~46_combout\ : std_logic;
SIGNAL \clock0|counter~10_combout\ : std_logic;
SIGNAL \clock0|Add0~47\ : std_logic;
SIGNAL \clock0|Add0~48_combout\ : std_logic;
SIGNAL \clock0|Add0~49\ : std_logic;
SIGNAL \clock0|Add0~50_combout\ : std_logic;
SIGNAL \clock0|counter~11_combout\ : std_logic;
SIGNAL \clock0|Equal0~7_combout\ : std_logic;
SIGNAL \clock0|Equal0~6_combout\ : std_logic;
SIGNAL \clock0|Equal0~5_combout\ : std_logic;
SIGNAL \clock0|Equal0~0_combout\ : std_logic;
SIGNAL \clock0|Equal0~1_combout\ : std_logic;
SIGNAL \clock0|Equal0~3_combout\ : std_logic;
SIGNAL \clock0|Equal0~2_combout\ : std_logic;
SIGNAL \clock0|Equal0~4_combout\ : std_logic;
SIGNAL \clock0|Equal0~8_combout\ : std_logic;
SIGNAL \clock0|clk_1s_reg~feeder_combout\ : std_logic;
SIGNAL \clock0|clk_1s_reg~q\ : std_logic;
SIGNAL \clock0|clk_1s_reg~clkctrl_outclk\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \state_machine0|tss_prev~0_combout\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \state_machine0|tss_prev~q\ : std_logic;
SIGNAL \state_machine0|toss_coin~1_combout\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \state_machine0|toss_coin~0_combout\ : std_logic;
SIGNAL \state_machine0|Selector3~0_combout\ : std_logic;
SIGNAL \state_machine0|Selector3~1_combout\ : std_logic;
SIGNAL \state_machine0|present_state_signal.st20~q\ : std_logic;
SIGNAL \state_machine0|present_state_signal.st0~0_combout\ : std_logic;
SIGNAL \state_machine0|present_state_signal.st0~q\ : std_logic;
SIGNAL \state_machine0|Selector4~0_combout\ : std_logic;
SIGNAL \state_machine0|Selector4~1_combout\ : std_logic;
SIGNAL \state_machine0|present_state_signal.st25~q\ : std_logic;
SIGNAL \state_machine0|Selector5~0_combout\ : std_logic;
SIGNAL \state_machine0|present_state_signal.st30~q\ : std_logic;
SIGNAL \state_machine0|next_state_signal.st45~0_combout\ : std_logic;
SIGNAL \state_machine0|present_state_signal.st45~q\ : std_logic;
SIGNAL \present_state_dig1[2]~0_combout\ : std_logic;
SIGNAL \state_machine0|Selector6~0_combout\ : std_logic;
SIGNAL \state_machine0|present_state_signal.st35~q\ : std_logic;
SIGNAL \state_machine0|candy_out~1_combout\ : std_logic;
SIGNAL \state_machine0|Selector7~0_combout\ : std_logic;
SIGNAL \state_machine0|present_state_signal.stcandy~q\ : std_logic;
SIGNAL \state_machine0|Selector1~1_combout\ : std_logic;
SIGNAL \state_machine0|Selector0~0_combout\ : std_logic;
SIGNAL \state_machine0|present_state_signal.st5~q\ : std_logic;
SIGNAL \state_machine0|Selector1~0_combout\ : std_logic;
SIGNAL \state_machine0|Selector1~2_combout\ : std_logic;
SIGNAL \state_machine0|present_state_signal.st10~q\ : std_logic;
SIGNAL \state_machine0|Selector2~0_combout\ : std_logic;
SIGNAL \state_machine0|Selector2~1_combout\ : std_logic;
SIGNAL \state_machine0|present_state_signal.st15~q\ : std_logic;
SIGNAL \state_machine0|next_state_signal.st40~0_combout\ : std_logic;
SIGNAL \state_machine0|present_state_signal.st40~q\ : std_logic;
SIGNAL \state_machine0|nickel_out[0]~2_combout\ : std_logic;
SIGNAL \WideNor1~0_combout\ : std_logic;
SIGNAL \WideOr0~0_combout\ : std_logic;
SIGNAL \WideOr1~0_combout\ : std_logic;
SIGNAL \display3|Mux6~0_combout\ : std_logic;
SIGNAL \display3|Mux4~0_combout\ : std_logic;
SIGNAL \display3|Mux3~0_combout\ : std_logic;
SIGNAL \display3|Mux2~0_combout\ : std_logic;
SIGNAL \display3|Mux1~0_combout\ : std_logic;
SIGNAL \display3|Mux0~0_combout\ : std_logic;
SIGNAL \state_machine0|led[0]~feeder_combout\ : std_logic;
SIGNAL \state_machine0|led[1]~feeder_combout\ : std_logic;
SIGNAL \state_machine0|led[2]~0_combout\ : std_logic;
SIGNAL \state_machine0|dime_out\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock0|counter\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \state_machine0|toss_coin\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \state_machine0|led\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \state_machine0|ALT_INV_candy_out~1_combout\ : std_logic;
SIGNAL \ALT_INV_WideNor1~0_combout\ : std_logic;
SIGNAL \state_machine0|ALT_INV_nickel_out[0]~2_combout\ : std_logic;

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
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\clock0|clk_1s_reg~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock0|clk_1s_reg~q\);

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);
\state_machine0|ALT_INV_candy_out~1_combout\ <= NOT \state_machine0|candy_out~1_combout\;
\ALT_INV_WideNor1~0_combout\ <= NOT \WideNor1~0_combout\;
\state_machine0|ALT_INV_nickel_out[0]~2_combout\ <= NOT \state_machine0|nickel_out[0]~2_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y52_N4
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
	i => \state_machine0|ALT_INV_nickel_out[0]~2_combout\,
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
	i => \state_machine0|ALT_INV_nickel_out[0]~2_combout\,
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
	i => \state_machine0|ALT_INV_nickel_out[0]~2_combout\,
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
	i => \state_machine0|ALT_INV_nickel_out[0]~2_combout\,
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
	i => \state_machine0|dime_out\(0),
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
	i => \state_machine0|dime_out\(0),
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
	i => \state_machine0|dime_out\(0),
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
	i => \state_machine0|dime_out\(0),
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
	i => \ALT_INV_WideNor1~0_combout\,
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
	i => \ALT_INV_WideNor1~0_combout\,
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
	i => \WideNor1~0_combout\,
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
	i => \state_machine0|ALT_INV_candy_out~1_combout\,
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
	i => \state_machine0|ALT_INV_candy_out~1_combout\,
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
	i => \state_machine0|ALT_INV_candy_out~1_combout\,
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
	i => \state_machine0|ALT_INV_candy_out~1_combout\,
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

-- Location: IOOBUF_X46_Y54_N2
\LEDR[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \state_machine0|led\(0),
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
	i => \state_machine0|led\(1),
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
	i => \state_machine0|led\(2),
	devoe => ww_devoe,
	o => \LEDR[2]~output_o\);

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

-- Location: CLKCTRL_G19
\CLOCK_50~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50~inputclkctrl_outclk\);

-- Location: LCCOMB_X46_Y33_N6
\clock0|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock0|Add0~0_combout\ = \clock0|counter\(0) $ (VCC)
-- \clock0|Add0~1\ = CARRY(\clock0|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock0|counter\(0),
	datad => VCC,
	combout => \clock0|Add0~0_combout\,
	cout => \clock0|Add0~1\);

-- Location: FF_X46_Y33_N7
\clock0|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clock0|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock0|counter\(0));

-- Location: LCCOMB_X46_Y33_N8
\clock0|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock0|Add0~2_combout\ = (\clock0|counter\(1) & (!\clock0|Add0~1\)) # (!\clock0|counter\(1) & ((\clock0|Add0~1\) # (GND)))
-- \clock0|Add0~3\ = CARRY((!\clock0|Add0~1\) # (!\clock0|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock0|counter\(1),
	datad => VCC,
	cin => \clock0|Add0~1\,
	combout => \clock0|Add0~2_combout\,
	cout => \clock0|Add0~3\);

-- Location: FF_X46_Y33_N9
\clock0|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clock0|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock0|counter\(1));

-- Location: LCCOMB_X46_Y33_N10
\clock0|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock0|Add0~4_combout\ = (\clock0|counter\(2) & (\clock0|Add0~3\ $ (GND))) # (!\clock0|counter\(2) & (!\clock0|Add0~3\ & VCC))
-- \clock0|Add0~5\ = CARRY((\clock0|counter\(2) & !\clock0|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock0|counter\(2),
	datad => VCC,
	cin => \clock0|Add0~3\,
	combout => \clock0|Add0~4_combout\,
	cout => \clock0|Add0~5\);

-- Location: FF_X46_Y33_N11
\clock0|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clock0|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock0|counter\(2));

-- Location: LCCOMB_X46_Y33_N12
\clock0|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock0|Add0~6_combout\ = (\clock0|counter\(3) & (!\clock0|Add0~5\)) # (!\clock0|counter\(3) & ((\clock0|Add0~5\) # (GND)))
-- \clock0|Add0~7\ = CARRY((!\clock0|Add0~5\) # (!\clock0|counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock0|counter\(3),
	datad => VCC,
	cin => \clock0|Add0~5\,
	combout => \clock0|Add0~6_combout\,
	cout => \clock0|Add0~7\);

-- Location: FF_X46_Y33_N13
\clock0|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clock0|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock0|counter\(3));

-- Location: LCCOMB_X46_Y33_N14
\clock0|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock0|Add0~8_combout\ = (\clock0|counter\(4) & (\clock0|Add0~7\ $ (GND))) # (!\clock0|counter\(4) & (!\clock0|Add0~7\ & VCC))
-- \clock0|Add0~9\ = CARRY((\clock0|counter\(4) & !\clock0|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock0|counter\(4),
	datad => VCC,
	cin => \clock0|Add0~7\,
	combout => \clock0|Add0~8_combout\,
	cout => \clock0|Add0~9\);

-- Location: FF_X46_Y33_N15
\clock0|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clock0|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock0|counter\(4));

-- Location: LCCOMB_X46_Y33_N16
\clock0|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock0|Add0~10_combout\ = (\clock0|counter\(5) & (!\clock0|Add0~9\)) # (!\clock0|counter\(5) & ((\clock0|Add0~9\) # (GND)))
-- \clock0|Add0~11\ = CARRY((!\clock0|Add0~9\) # (!\clock0|counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock0|counter\(5),
	datad => VCC,
	cin => \clock0|Add0~9\,
	combout => \clock0|Add0~10_combout\,
	cout => \clock0|Add0~11\);

-- Location: FF_X46_Y33_N17
\clock0|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clock0|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock0|counter\(5));

-- Location: LCCOMB_X46_Y33_N18
\clock0|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock0|Add0~12_combout\ = (\clock0|counter\(6) & (\clock0|Add0~11\ $ (GND))) # (!\clock0|counter\(6) & (!\clock0|Add0~11\ & VCC))
-- \clock0|Add0~13\ = CARRY((\clock0|counter\(6) & !\clock0|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock0|counter\(6),
	datad => VCC,
	cin => \clock0|Add0~11\,
	combout => \clock0|Add0~12_combout\,
	cout => \clock0|Add0~13\);

-- Location: FF_X46_Y33_N19
\clock0|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clock0|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock0|counter\(6));

-- Location: LCCOMB_X46_Y33_N20
\clock0|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock0|Add0~14_combout\ = (\clock0|counter\(7) & (!\clock0|Add0~13\)) # (!\clock0|counter\(7) & ((\clock0|Add0~13\) # (GND)))
-- \clock0|Add0~15\ = CARRY((!\clock0|Add0~13\) # (!\clock0|counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock0|counter\(7),
	datad => VCC,
	cin => \clock0|Add0~13\,
	combout => \clock0|Add0~14_combout\,
	cout => \clock0|Add0~15\);

-- Location: LCCOMB_X46_Y33_N0
\clock0|counter~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock0|counter~4_combout\ = (!\clock0|Equal0~8_combout\ & \clock0|Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clock0|Equal0~8_combout\,
	datad => \clock0|Add0~14_combout\,
	combout => \clock0|counter~4_combout\);

-- Location: FF_X46_Y33_N1
\clock0|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clock0|counter~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock0|counter\(7));

-- Location: LCCOMB_X46_Y33_N22
\clock0|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock0|Add0~16_combout\ = (\clock0|counter\(8) & (\clock0|Add0~15\ $ (GND))) # (!\clock0|counter\(8) & (!\clock0|Add0~15\ & VCC))
-- \clock0|Add0~17\ = CARRY((\clock0|counter\(8) & !\clock0|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock0|counter\(8),
	datad => VCC,
	cin => \clock0|Add0~15\,
	combout => \clock0|Add0~16_combout\,
	cout => \clock0|Add0~17\);

-- Location: FF_X46_Y33_N23
\clock0|counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clock0|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock0|counter\(8));

-- Location: LCCOMB_X46_Y33_N24
\clock0|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock0|Add0~18_combout\ = (\clock0|counter\(9) & (!\clock0|Add0~17\)) # (!\clock0|counter\(9) & ((\clock0|Add0~17\) # (GND)))
-- \clock0|Add0~19\ = CARRY((!\clock0|Add0~17\) # (!\clock0|counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock0|counter\(9),
	datad => VCC,
	cin => \clock0|Add0~17\,
	combout => \clock0|Add0~18_combout\,
	cout => \clock0|Add0~19\);

-- Location: FF_X46_Y33_N25
\clock0|counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clock0|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock0|counter\(9));

-- Location: LCCOMB_X46_Y33_N26
\clock0|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock0|Add0~20_combout\ = (\clock0|counter\(10) & (\clock0|Add0~19\ $ (GND))) # (!\clock0|counter\(10) & (!\clock0|Add0~19\ & VCC))
-- \clock0|Add0~21\ = CARRY((\clock0|counter\(10) & !\clock0|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock0|counter\(10),
	datad => VCC,
	cin => \clock0|Add0~19\,
	combout => \clock0|Add0~20_combout\,
	cout => \clock0|Add0~21\);

-- Location: FF_X46_Y33_N27
\clock0|counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clock0|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock0|counter\(10));

-- Location: LCCOMB_X46_Y33_N28
\clock0|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock0|Add0~22_combout\ = (\clock0|counter\(11) & (!\clock0|Add0~21\)) # (!\clock0|counter\(11) & ((\clock0|Add0~21\) # (GND)))
-- \clock0|Add0~23\ = CARRY((!\clock0|Add0~21\) # (!\clock0|counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock0|counter\(11),
	datad => VCC,
	cin => \clock0|Add0~21\,
	combout => \clock0|Add0~22_combout\,
	cout => \clock0|Add0~23\);

-- Location: FF_X46_Y33_N29
\clock0|counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clock0|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock0|counter\(11));

-- Location: LCCOMB_X46_Y33_N30
\clock0|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock0|Add0~24_combout\ = (\clock0|counter\(12) & (\clock0|Add0~23\ $ (GND))) # (!\clock0|counter\(12) & (!\clock0|Add0~23\ & VCC))
-- \clock0|Add0~25\ = CARRY((\clock0|counter\(12) & !\clock0|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock0|counter\(12),
	datad => VCC,
	cin => \clock0|Add0~23\,
	combout => \clock0|Add0~24_combout\,
	cout => \clock0|Add0~25\);

-- Location: LCCOMB_X45_Y32_N0
\clock0|counter~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock0|counter~3_combout\ = (!\clock0|Equal0~8_combout\ & \clock0|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clock0|Equal0~8_combout\,
	datad => \clock0|Add0~24_combout\,
	combout => \clock0|counter~3_combout\);

-- Location: FF_X45_Y32_N1
\clock0|counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clock0|counter~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock0|counter\(12));

-- Location: LCCOMB_X46_Y32_N0
\clock0|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock0|Add0~26_combout\ = (\clock0|counter\(13) & (!\clock0|Add0~25\)) # (!\clock0|counter\(13) & ((\clock0|Add0~25\) # (GND)))
-- \clock0|Add0~27\ = CARRY((!\clock0|Add0~25\) # (!\clock0|counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock0|counter\(13),
	datad => VCC,
	cin => \clock0|Add0~25\,
	combout => \clock0|Add0~26_combout\,
	cout => \clock0|Add0~27\);

-- Location: LCCOMB_X45_Y32_N10
\clock0|counter~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock0|counter~2_combout\ = (\clock0|Add0~26_combout\ & !\clock0|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clock0|Add0~26_combout\,
	datad => \clock0|Equal0~8_combout\,
	combout => \clock0|counter~2_combout\);

-- Location: FF_X45_Y32_N11
\clock0|counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clock0|counter~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock0|counter\(13));

-- Location: LCCOMB_X46_Y32_N2
\clock0|Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock0|Add0~28_combout\ = (\clock0|counter\(14) & (\clock0|Add0~27\ $ (GND))) # (!\clock0|counter\(14) & (!\clock0|Add0~27\ & VCC))
-- \clock0|Add0~29\ = CARRY((\clock0|counter\(14) & !\clock0|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock0|counter\(14),
	datad => VCC,
	cin => \clock0|Add0~27\,
	combout => \clock0|Add0~28_combout\,
	cout => \clock0|Add0~29\);

-- Location: LCCOMB_X46_Y32_N30
\clock0|counter~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock0|counter~1_combout\ = (!\clock0|Equal0~8_combout\ & \clock0|Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clock0|Equal0~8_combout\,
	datad => \clock0|Add0~28_combout\,
	combout => \clock0|counter~1_combout\);

-- Location: FF_X46_Y32_N31
\clock0|counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clock0|counter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock0|counter\(14));

-- Location: LCCOMB_X46_Y32_N4
\clock0|Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock0|Add0~30_combout\ = (\clock0|counter\(15) & (!\clock0|Add0~29\)) # (!\clock0|counter\(15) & ((\clock0|Add0~29\) # (GND)))
-- \clock0|Add0~31\ = CARRY((!\clock0|Add0~29\) # (!\clock0|counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock0|counter\(15),
	datad => VCC,
	cin => \clock0|Add0~29\,
	combout => \clock0|Add0~30_combout\,
	cout => \clock0|Add0~31\);

-- Location: LCCOMB_X45_Y32_N8
\clock0|counter~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock0|counter~0_combout\ = (!\clock0|Equal0~8_combout\ & \clock0|Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clock0|Equal0~8_combout\,
	datad => \clock0|Add0~30_combout\,
	combout => \clock0|counter~0_combout\);

-- Location: FF_X45_Y32_N9
\clock0|counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clock0|counter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock0|counter\(15));

-- Location: LCCOMB_X46_Y32_N6
\clock0|Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock0|Add0~32_combout\ = (\clock0|counter\(16) & (\clock0|Add0~31\ $ (GND))) # (!\clock0|counter\(16) & (!\clock0|Add0~31\ & VCC))
-- \clock0|Add0~33\ = CARRY((\clock0|counter\(16) & !\clock0|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock0|counter\(16),
	datad => VCC,
	cin => \clock0|Add0~31\,
	combout => \clock0|Add0~32_combout\,
	cout => \clock0|Add0~33\);

-- Location: FF_X46_Y32_N7
\clock0|counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clock0|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock0|counter\(16));

-- Location: LCCOMB_X46_Y32_N8
\clock0|Add0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock0|Add0~34_combout\ = (\clock0|counter\(17) & (!\clock0|Add0~33\)) # (!\clock0|counter\(17) & ((\clock0|Add0~33\) # (GND)))
-- \clock0|Add0~35\ = CARRY((!\clock0|Add0~33\) # (!\clock0|counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock0|counter\(17),
	datad => VCC,
	cin => \clock0|Add0~33\,
	combout => \clock0|Add0~34_combout\,
	cout => \clock0|Add0~35\);

-- Location: LCCOMB_X45_Y32_N2
\clock0|counter~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock0|counter~5_combout\ = (\clock0|Add0~34_combout\ & !\clock0|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clock0|Add0~34_combout\,
	datad => \clock0|Equal0~8_combout\,
	combout => \clock0|counter~5_combout\);

-- Location: FF_X45_Y32_N3
\clock0|counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clock0|counter~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock0|counter\(17));

-- Location: LCCOMB_X46_Y32_N10
\clock0|Add0~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock0|Add0~36_combout\ = (\clock0|counter\(18) & (\clock0|Add0~35\ $ (GND))) # (!\clock0|counter\(18) & (!\clock0|Add0~35\ & VCC))
-- \clock0|Add0~37\ = CARRY((\clock0|counter\(18) & !\clock0|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock0|counter\(18),
	datad => VCC,
	cin => \clock0|Add0~35\,
	combout => \clock0|Add0~36_combout\,
	cout => \clock0|Add0~37\);

-- Location: FF_X46_Y32_N11
\clock0|counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clock0|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock0|counter\(18));

-- Location: LCCOMB_X46_Y32_N12
\clock0|Add0~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock0|Add0~38_combout\ = (\clock0|counter\(19) & (!\clock0|Add0~37\)) # (!\clock0|counter\(19) & ((\clock0|Add0~37\) # (GND)))
-- \clock0|Add0~39\ = CARRY((!\clock0|Add0~37\) # (!\clock0|counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock0|counter\(19),
	datad => VCC,
	cin => \clock0|Add0~37\,
	combout => \clock0|Add0~38_combout\,
	cout => \clock0|Add0~39\);

-- Location: LCCOMB_X45_Y32_N26
\clock0|counter~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock0|counter~6_combout\ = (\clock0|Add0~38_combout\ & !\clock0|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clock0|Add0~38_combout\,
	datad => \clock0|Equal0~8_combout\,
	combout => \clock0|counter~6_combout\);

-- Location: FF_X45_Y32_N27
\clock0|counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clock0|counter~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock0|counter\(19));

-- Location: LCCOMB_X46_Y32_N14
\clock0|Add0~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock0|Add0~40_combout\ = (\clock0|counter\(20) & (\clock0|Add0~39\ $ (GND))) # (!\clock0|counter\(20) & (!\clock0|Add0~39\ & VCC))
-- \clock0|Add0~41\ = CARRY((\clock0|counter\(20) & !\clock0|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock0|counter\(20),
	datad => VCC,
	cin => \clock0|Add0~39\,
	combout => \clock0|Add0~40_combout\,
	cout => \clock0|Add0~41\);

-- Location: LCCOMB_X46_Y32_N28
\clock0|counter~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock0|counter~7_combout\ = (!\clock0|Equal0~8_combout\ & \clock0|Add0~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock0|Equal0~8_combout\,
	datac => \clock0|Add0~40_combout\,
	combout => \clock0|counter~7_combout\);

-- Location: FF_X46_Y32_N29
\clock0|counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clock0|counter~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock0|counter\(20));

-- Location: LCCOMB_X46_Y32_N16
\clock0|Add0~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock0|Add0~42_combout\ = (\clock0|counter\(21) & (!\clock0|Add0~41\)) # (!\clock0|counter\(21) & ((\clock0|Add0~41\) # (GND)))
-- \clock0|Add0~43\ = CARRY((!\clock0|Add0~41\) # (!\clock0|counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock0|counter\(21),
	datad => VCC,
	cin => \clock0|Add0~41\,
	combout => \clock0|Add0~42_combout\,
	cout => \clock0|Add0~43\);

-- Location: LCCOMB_X45_Y32_N6
\clock0|counter~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock0|counter~8_combout\ = (!\clock0|Equal0~8_combout\ & \clock0|Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clock0|Equal0~8_combout\,
	datad => \clock0|Add0~42_combout\,
	combout => \clock0|counter~8_combout\);

-- Location: FF_X45_Y32_N7
\clock0|counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clock0|counter~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock0|counter\(21));

-- Location: LCCOMB_X46_Y32_N18
\clock0|Add0~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock0|Add0~44_combout\ = (\clock0|counter\(22) & (\clock0|Add0~43\ $ (GND))) # (!\clock0|counter\(22) & (!\clock0|Add0~43\ & VCC))
-- \clock0|Add0~45\ = CARRY((\clock0|counter\(22) & !\clock0|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock0|counter\(22),
	datad => VCC,
	cin => \clock0|Add0~43\,
	combout => \clock0|Add0~44_combout\,
	cout => \clock0|Add0~45\);

-- Location: LCCOMB_X46_Y32_N26
\clock0|counter~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock0|counter~9_combout\ = (!\clock0|Equal0~8_combout\ & \clock0|Add0~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clock0|Equal0~8_combout\,
	datad => \clock0|Add0~44_combout\,
	combout => \clock0|counter~9_combout\);

-- Location: FF_X46_Y32_N27
\clock0|counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clock0|counter~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock0|counter\(22));

-- Location: LCCOMB_X46_Y32_N20
\clock0|Add0~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock0|Add0~46_combout\ = (\clock0|counter\(23) & (!\clock0|Add0~45\)) # (!\clock0|counter\(23) & ((\clock0|Add0~45\) # (GND)))
-- \clock0|Add0~47\ = CARRY((!\clock0|Add0~45\) # (!\clock0|counter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock0|counter\(23),
	datad => VCC,
	cin => \clock0|Add0~45\,
	combout => \clock0|Add0~46_combout\,
	cout => \clock0|Add0~47\);

-- Location: LCCOMB_X45_Y32_N14
\clock0|counter~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock0|counter~10_combout\ = (\clock0|Add0~46_combout\ & !\clock0|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clock0|Add0~46_combout\,
	datad => \clock0|Equal0~8_combout\,
	combout => \clock0|counter~10_combout\);

-- Location: FF_X45_Y32_N15
\clock0|counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clock0|counter~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock0|counter\(23));

-- Location: LCCOMB_X46_Y32_N22
\clock0|Add0~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock0|Add0~48_combout\ = (\clock0|counter\(24) & (\clock0|Add0~47\ $ (GND))) # (!\clock0|counter\(24) & (!\clock0|Add0~47\ & VCC))
-- \clock0|Add0~49\ = CARRY((\clock0|counter\(24) & !\clock0|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock0|counter\(24),
	datad => VCC,
	cin => \clock0|Add0~47\,
	combout => \clock0|Add0~48_combout\,
	cout => \clock0|Add0~49\);

-- Location: FF_X46_Y32_N23
\clock0|counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clock0|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock0|counter\(24));

-- Location: LCCOMB_X46_Y32_N24
\clock0|Add0~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock0|Add0~50_combout\ = \clock0|Add0~49\ $ (\clock0|counter\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \clock0|counter\(25),
	cin => \clock0|Add0~49\,
	combout => \clock0|Add0~50_combout\);

-- Location: LCCOMB_X45_Y32_N12
\clock0|counter~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock0|counter~11_combout\ = (!\clock0|Equal0~8_combout\ & \clock0|Add0~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clock0|Equal0~8_combout\,
	datad => \clock0|Add0~50_combout\,
	combout => \clock0|counter~11_combout\);

-- Location: FF_X45_Y32_N13
\clock0|counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clock0|counter~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock0|counter\(25));

-- Location: LCCOMB_X45_Y32_N30
\clock0|Equal0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock0|Equal0~7_combout\ = (\clock0|counter\(25) & !\clock0|counter\(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock0|counter\(25),
	datac => \clock0|counter\(24),
	combout => \clock0|Equal0~7_combout\);

-- Location: LCCOMB_X45_Y32_N18
\clock0|Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock0|Equal0~6_combout\ = (\clock0|counter\(21) & (\clock0|counter\(22) & (\clock0|counter\(23) & \clock0|counter\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock0|counter\(21),
	datab => \clock0|counter\(22),
	datac => \clock0|counter\(23),
	datad => \clock0|counter\(20),
	combout => \clock0|Equal0~6_combout\);

-- Location: LCCOMB_X45_Y32_N4
\clock0|Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock0|Equal0~5_combout\ = (\clock0|counter\(19) & (\clock0|counter\(17) & (!\clock0|counter\(18) & \clock0|counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock0|counter\(19),
	datab => \clock0|counter\(17),
	datac => \clock0|counter\(18),
	datad => \clock0|counter\(0),
	combout => \clock0|Equal0~5_combout\);

-- Location: LCCOMB_X45_Y32_N22
\clock0|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock0|Equal0~0_combout\ = (\clock0|counter\(13) & (\clock0|counter\(15) & (\clock0|counter\(14) & !\clock0|counter\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock0|counter\(13),
	datab => \clock0|counter\(15),
	datac => \clock0|counter\(14),
	datad => \clock0|counter\(16),
	combout => \clock0|Equal0~0_combout\);

-- Location: LCCOMB_X45_Y32_N28
\clock0|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock0|Equal0~1_combout\ = (!\clock0|counter\(11) & (\clock0|counter\(12) & (!\clock0|counter\(10) & !\clock0|counter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock0|counter\(11),
	datab => \clock0|counter\(12),
	datac => \clock0|counter\(10),
	datad => \clock0|counter\(9),
	combout => \clock0|Equal0~1_combout\);

-- Location: LCCOMB_X46_Y33_N4
\clock0|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock0|Equal0~3_combout\ = (\clock0|counter\(2) & (\clock0|counter\(4) & (\clock0|counter\(3) & \clock0|counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock0|counter\(2),
	datab => \clock0|counter\(4),
	datac => \clock0|counter\(3),
	datad => \clock0|counter\(1),
	combout => \clock0|Equal0~3_combout\);

-- Location: LCCOMB_X46_Y33_N2
\clock0|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock0|Equal0~2_combout\ = (!\clock0|counter\(8) & (!\clock0|counter\(7) & (\clock0|counter\(5) & \clock0|counter\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock0|counter\(8),
	datab => \clock0|counter\(7),
	datac => \clock0|counter\(5),
	datad => \clock0|counter\(6),
	combout => \clock0|Equal0~2_combout\);

-- Location: LCCOMB_X45_Y32_N20
\clock0|Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock0|Equal0~4_combout\ = (\clock0|Equal0~0_combout\ & (\clock0|Equal0~1_combout\ & (\clock0|Equal0~3_combout\ & \clock0|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock0|Equal0~0_combout\,
	datab => \clock0|Equal0~1_combout\,
	datac => \clock0|Equal0~3_combout\,
	datad => \clock0|Equal0~2_combout\,
	combout => \clock0|Equal0~4_combout\);

-- Location: LCCOMB_X45_Y32_N16
\clock0|Equal0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock0|Equal0~8_combout\ = (\clock0|Equal0~7_combout\ & (\clock0|Equal0~6_combout\ & (\clock0|Equal0~5_combout\ & \clock0|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock0|Equal0~7_combout\,
	datab => \clock0|Equal0~6_combout\,
	datac => \clock0|Equal0~5_combout\,
	datad => \clock0|Equal0~4_combout\,
	combout => \clock0|Equal0~8_combout\);

-- Location: LCCOMB_X45_Y32_N24
\clock0|clk_1s_reg~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock0|clk_1s_reg~feeder_combout\ = \clock0|Equal0~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \clock0|Equal0~8_combout\,
	combout => \clock0|clk_1s_reg~feeder_combout\);

-- Location: FF_X45_Y32_N25
\clock0|clk_1s_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clock0|clk_1s_reg~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock0|clk_1s_reg~q\);

-- Location: CLKCTRL_G12
\clock0|clk_1s_reg~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock0|clk_1s_reg~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock0|clk_1s_reg~clkctrl_outclk\);

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

-- Location: LCCOMB_X55_Y52_N2
\state_machine0|tss_prev~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_machine0|tss_prev~0_combout\ = !\KEY[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY[0]~input_o\,
	combout => \state_machine0|tss_prev~0_combout\);

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

-- Location: FF_X55_Y52_N3
\state_machine0|tss_prev\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock0|clk_1s_reg~clkctrl_outclk\,
	d => \state_machine0|tss_prev~0_combout\,
	ena => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_machine0|tss_prev~q\);

-- Location: LCCOMB_X55_Y52_N12
\state_machine0|toss_coin~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_machine0|toss_coin~1_combout\ = (!\KEY[0]~input_o\ & (\SW[0]~input_o\ & !\state_machine0|tss_prev~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \state_machine0|tss_prev~q\,
	combout => \state_machine0|toss_coin~1_combout\);

-- Location: FF_X55_Y52_N13
\state_machine0|toss_coin[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock0|clk_1s_reg~clkctrl_outclk\,
	d => \state_machine0|toss_coin~1_combout\,
	ena => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_machine0|toss_coin\(0));

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

-- Location: LCCOMB_X55_Y52_N18
\state_machine0|toss_coin~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_machine0|toss_coin~0_combout\ = (!\KEY[0]~input_o\ & (\SW[1]~input_o\ & !\state_machine0|tss_prev~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datac => \SW[1]~input_o\,
	datad => \state_machine0|tss_prev~q\,
	combout => \state_machine0|toss_coin~0_combout\);

-- Location: FF_X55_Y52_N19
\state_machine0|toss_coin[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock0|clk_1s_reg~clkctrl_outclk\,
	d => \state_machine0|toss_coin~0_combout\,
	ena => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_machine0|toss_coin\(1));

-- Location: LCCOMB_X55_Y52_N0
\state_machine0|Selector3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_machine0|Selector3~0_combout\ = (!\state_machine0|toss_coin\(0) & ((\state_machine0|toss_coin\(1) & (\state_machine0|present_state_signal.st10~q\)) # (!\state_machine0|toss_coin\(1) & ((\state_machine0|present_state_signal.st20~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_machine0|toss_coin\(0),
	datab => \state_machine0|toss_coin\(1),
	datac => \state_machine0|present_state_signal.st10~q\,
	datad => \state_machine0|present_state_signal.st20~q\,
	combout => \state_machine0|Selector3~0_combout\);

-- Location: LCCOMB_X55_Y52_N10
\state_machine0|Selector3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_machine0|Selector3~1_combout\ = (\state_machine0|Selector3~0_combout\) # ((!\state_machine0|toss_coin\(1) & (\state_machine0|toss_coin\(0) & \state_machine0|present_state_signal.st15~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_machine0|toss_coin\(1),
	datab => \state_machine0|toss_coin\(0),
	datac => \state_machine0|present_state_signal.st15~q\,
	datad => \state_machine0|Selector3~0_combout\,
	combout => \state_machine0|Selector3~1_combout\);

-- Location: FF_X55_Y52_N11
\state_machine0|present_state_signal.st20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock0|clk_1s_reg~clkctrl_outclk\,
	d => \state_machine0|Selector3~1_combout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_machine0|present_state_signal.st20~q\);

-- Location: LCCOMB_X56_Y52_N18
\state_machine0|present_state_signal.st0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_machine0|present_state_signal.st0~0_combout\ = (\state_machine0|toss_coin\(0)) # ((\state_machine0|present_state_signal.st0~q\) # (\state_machine0|toss_coin\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_machine0|toss_coin\(0),
	datac => \state_machine0|present_state_signal.st0~q\,
	datad => \state_machine0|toss_coin\(1),
	combout => \state_machine0|present_state_signal.st0~0_combout\);

-- Location: FF_X56_Y52_N19
\state_machine0|present_state_signal.st0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock0|clk_1s_reg~clkctrl_outclk\,
	d => \state_machine0|present_state_signal.st0~0_combout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_machine0|present_state_signal.st0~q\);

-- Location: LCCOMB_X56_Y52_N2
\state_machine0|Selector4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_machine0|Selector4~0_combout\ = (\state_machine0|toss_coin\(0) & ((\state_machine0|present_state_signal.stcandy~q\) # ((!\state_machine0|present_state_signal.st0~q\)))) # (!\state_machine0|toss_coin\(0) & 
-- (((\state_machine0|present_state_signal.st15~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_machine0|toss_coin\(0),
	datab => \state_machine0|present_state_signal.stcandy~q\,
	datac => \state_machine0|present_state_signal.st0~q\,
	datad => \state_machine0|present_state_signal.st15~q\,
	combout => \state_machine0|Selector4~0_combout\);

-- Location: LCCOMB_X56_Y52_N22
\state_machine0|Selector4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_machine0|Selector4~1_combout\ = (\state_machine0|toss_coin\(1) & (((\state_machine0|Selector4~0_combout\)))) # (!\state_machine0|toss_coin\(1) & (\state_machine0|present_state_signal.st20~q\ & (\state_machine0|toss_coin\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_machine0|present_state_signal.st20~q\,
	datab => \state_machine0|toss_coin\(1),
	datac => \state_machine0|toss_coin\(0),
	datad => \state_machine0|Selector4~0_combout\,
	combout => \state_machine0|Selector4~1_combout\);

-- Location: FF_X56_Y52_N23
\state_machine0|present_state_signal.st25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock0|clk_1s_reg~clkctrl_outclk\,
	d => \state_machine0|Selector4~1_combout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_machine0|present_state_signal.st25~q\);

-- Location: LCCOMB_X55_Y52_N24
\state_machine0|Selector5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_machine0|Selector5~0_combout\ = (\state_machine0|toss_coin\(1) & ((\state_machine0|toss_coin\(0) & ((\state_machine0|present_state_signal.st5~q\))) # (!\state_machine0|toss_coin\(0) & (\state_machine0|present_state_signal.st20~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_machine0|present_state_signal.st20~q\,
	datab => \state_machine0|toss_coin\(0),
	datac => \state_machine0|present_state_signal.st5~q\,
	datad => \state_machine0|toss_coin\(1),
	combout => \state_machine0|Selector5~0_combout\);

-- Location: FF_X55_Y52_N25
\state_machine0|present_state_signal.st30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock0|clk_1s_reg~clkctrl_outclk\,
	d => \state_machine0|Selector5~0_combout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_machine0|present_state_signal.st30~q\);

-- Location: LCCOMB_X55_Y52_N30
\state_machine0|next_state_signal.st45~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_machine0|next_state_signal.st45~0_combout\ = (\state_machine0|present_state_signal.st20~q\ & (\state_machine0|toss_coin\(0) & \state_machine0|toss_coin\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_machine0|present_state_signal.st20~q\,
	datac => \state_machine0|toss_coin\(0),
	datad => \state_machine0|toss_coin\(1),
	combout => \state_machine0|next_state_signal.st45~0_combout\);

-- Location: FF_X55_Y52_N31
\state_machine0|present_state_signal.st45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock0|clk_1s_reg~clkctrl_outclk\,
	d => \state_machine0|next_state_signal.st45~0_combout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_machine0|present_state_signal.st45~q\);

-- Location: LCCOMB_X55_Y52_N14
\present_state_dig1[2]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \present_state_dig1[2]~0_combout\ = (!\state_machine0|present_state_signal.st45~q\ & !\state_machine0|present_state_signal.st40~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state_machine0|present_state_signal.st45~q\,
	datad => \state_machine0|present_state_signal.st40~q\,
	combout => \present_state_dig1[2]~0_combout\);

-- Location: LCCOMB_X55_Y52_N16
\state_machine0|Selector6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_machine0|Selector6~0_combout\ = ((\state_machine0|toss_coin\(0) & (\state_machine0|toss_coin\(1) & \state_machine0|present_state_signal.st10~q\))) # (!\present_state_dig1[2]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_machine0|toss_coin\(0),
	datab => \state_machine0|toss_coin\(1),
	datac => \present_state_dig1[2]~0_combout\,
	datad => \state_machine0|present_state_signal.st10~q\,
	combout => \state_machine0|Selector6~0_combout\);

-- Location: FF_X55_Y52_N17
\state_machine0|present_state_signal.st35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock0|clk_1s_reg~clkctrl_outclk\,
	d => \state_machine0|Selector6~0_combout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_machine0|present_state_signal.st35~q\);

-- Location: LCCOMB_X56_Y52_N10
\state_machine0|candy_out~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_machine0|candy_out~1_combout\ = (\state_machine0|toss_coin\(0)) # ((\state_machine0|toss_coin\(1)) # (!\state_machine0|present_state_signal.stcandy~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_machine0|toss_coin\(0),
	datac => \state_machine0|present_state_signal.stcandy~q\,
	datad => \state_machine0|toss_coin\(1),
	combout => \state_machine0|candy_out~1_combout\);

-- Location: LCCOMB_X56_Y52_N8
\state_machine0|Selector7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_machine0|Selector7~0_combout\ = (\state_machine0|present_state_signal.st25~q\) # ((\state_machine0|present_state_signal.st30~q\) # ((\state_machine0|present_state_signal.st35~q\) # (!\state_machine0|candy_out~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_machine0|present_state_signal.st25~q\,
	datab => \state_machine0|present_state_signal.st30~q\,
	datac => \state_machine0|present_state_signal.st35~q\,
	datad => \state_machine0|candy_out~1_combout\,
	combout => \state_machine0|Selector7~0_combout\);

-- Location: FF_X56_Y52_N9
\state_machine0|present_state_signal.stcandy\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock0|clk_1s_reg~clkctrl_outclk\,
	d => \state_machine0|Selector7~0_combout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_machine0|present_state_signal.stcandy~q\);

-- Location: LCCOMB_X56_Y52_N4
\state_machine0|Selector1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_machine0|Selector1~1_combout\ = (\state_machine0|present_state_signal.stcandy~q\) # (!\state_machine0|present_state_signal.st0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state_machine0|present_state_signal.stcandy~q\,
	datad => \state_machine0|present_state_signal.st0~q\,
	combout => \state_machine0|Selector1~1_combout\);

-- Location: LCCOMB_X55_Y52_N26
\state_machine0|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_machine0|Selector0~0_combout\ = (!\state_machine0|toss_coin\(1) & ((\state_machine0|toss_coin\(0) & ((\state_machine0|Selector1~1_combout\))) # (!\state_machine0|toss_coin\(0) & (\state_machine0|present_state_signal.st5~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_machine0|toss_coin\(0),
	datab => \state_machine0|toss_coin\(1),
	datac => \state_machine0|present_state_signal.st5~q\,
	datad => \state_machine0|Selector1~1_combout\,
	combout => \state_machine0|Selector0~0_combout\);

-- Location: FF_X55_Y52_N27
\state_machine0|present_state_signal.st5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock0|clk_1s_reg~clkctrl_outclk\,
	d => \state_machine0|Selector0~0_combout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_machine0|present_state_signal.st5~q\);

-- Location: LCCOMB_X55_Y52_N22
\state_machine0|Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_machine0|Selector1~0_combout\ = (!\state_machine0|toss_coin\(1) & ((\state_machine0|toss_coin\(0) & (\state_machine0|present_state_signal.st5~q\)) # (!\state_machine0|toss_coin\(0) & ((\state_machine0|present_state_signal.st10~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_machine0|toss_coin\(0),
	datab => \state_machine0|toss_coin\(1),
	datac => \state_machine0|present_state_signal.st5~q\,
	datad => \state_machine0|present_state_signal.st10~q\,
	combout => \state_machine0|Selector1~0_combout\);

-- Location: LCCOMB_X55_Y52_N8
\state_machine0|Selector1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_machine0|Selector1~2_combout\ = (\state_machine0|Selector1~0_combout\) # ((!\state_machine0|toss_coin\(0) & (\state_machine0|toss_coin\(1) & \state_machine0|Selector1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_machine0|toss_coin\(0),
	datab => \state_machine0|toss_coin\(1),
	datac => \state_machine0|Selector1~0_combout\,
	datad => \state_machine0|Selector1~1_combout\,
	combout => \state_machine0|Selector1~2_combout\);

-- Location: FF_X55_Y52_N9
\state_machine0|present_state_signal.st10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock0|clk_1s_reg~clkctrl_outclk\,
	d => \state_machine0|Selector1~2_combout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_machine0|present_state_signal.st10~q\);

-- Location: LCCOMB_X55_Y52_N4
\state_machine0|Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_machine0|Selector2~0_combout\ = (!\state_machine0|toss_coin\(0) & ((\state_machine0|toss_coin\(1) & (\state_machine0|present_state_signal.st5~q\)) # (!\state_machine0|toss_coin\(1) & ((\state_machine0|present_state_signal.st15~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_machine0|toss_coin\(0),
	datab => \state_machine0|toss_coin\(1),
	datac => \state_machine0|present_state_signal.st5~q\,
	datad => \state_machine0|present_state_signal.st15~q\,
	combout => \state_machine0|Selector2~0_combout\);

-- Location: LCCOMB_X55_Y52_N20
\state_machine0|Selector2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_machine0|Selector2~1_combout\ = (\state_machine0|Selector2~0_combout\) # ((\state_machine0|toss_coin\(0) & (\state_machine0|present_state_signal.st10~q\ & !\state_machine0|toss_coin\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_machine0|toss_coin\(0),
	datab => \state_machine0|present_state_signal.st10~q\,
	datac => \state_machine0|Selector2~0_combout\,
	datad => \state_machine0|toss_coin\(1),
	combout => \state_machine0|Selector2~1_combout\);

-- Location: FF_X55_Y52_N21
\state_machine0|present_state_signal.st15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock0|clk_1s_reg~clkctrl_outclk\,
	d => \state_machine0|Selector2~1_combout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_machine0|present_state_signal.st15~q\);

-- Location: LCCOMB_X55_Y52_N6
\state_machine0|next_state_signal.st40~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_machine0|next_state_signal.st40~0_combout\ = (\state_machine0|toss_coin\(0) & (\state_machine0|toss_coin\(1) & \state_machine0|present_state_signal.st15~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_machine0|toss_coin\(0),
	datac => \state_machine0|toss_coin\(1),
	datad => \state_machine0|present_state_signal.st15~q\,
	combout => \state_machine0|next_state_signal.st40~0_combout\);

-- Location: FF_X55_Y52_N7
\state_machine0|present_state_signal.st40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock0|clk_1s_reg~clkctrl_outclk\,
	d => \state_machine0|next_state_signal.st40~0_combout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_machine0|present_state_signal.st40~q\);

-- Location: LCCOMB_X56_Y52_N20
\state_machine0|nickel_out[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_machine0|nickel_out[0]~2_combout\ = (!\state_machine0|present_state_signal.st40~q\ & !\state_machine0|present_state_signal.st30~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state_machine0|present_state_signal.st40~q\,
	datad => \state_machine0|present_state_signal.st30~q\,
	combout => \state_machine0|nickel_out[0]~2_combout\);

-- Location: LCCOMB_X55_Y52_N28
\state_machine0|dime_out[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_machine0|dime_out\(0) = (\state_machine0|present_state_signal.st45~q\) # (\state_machine0|present_state_signal.st35~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_machine0|present_state_signal.st45~q\,
	datad => \state_machine0|present_state_signal.st35~q\,
	combout => \state_machine0|dime_out\(0));

-- Location: LCCOMB_X56_Y52_N0
\WideNor1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \WideNor1~0_combout\ = (\state_machine0|present_state_signal.st20~q\) # ((\state_machine0|present_state_signal.st10~q\) # ((!\state_machine0|nickel_out[0]~2_combout\) # (!\state_machine0|present_state_signal.st0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_machine0|present_state_signal.st20~q\,
	datab => \state_machine0|present_state_signal.st10~q\,
	datac => \state_machine0|present_state_signal.st0~q\,
	datad => \state_machine0|nickel_out[0]~2_combout\,
	combout => \WideNor1~0_combout\);

-- Location: LCCOMB_X56_Y52_N12
\WideOr0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \WideOr0~0_combout\ = (\state_machine0|present_state_signal.st35~q\) # ((\state_machine0|present_state_signal.st30~q\) # ((\state_machine0|present_state_signal.st25~q\) # (\state_machine0|present_state_signal.st20~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_machine0|present_state_signal.st35~q\,
	datab => \state_machine0|present_state_signal.st30~q\,
	datac => \state_machine0|present_state_signal.st25~q\,
	datad => \state_machine0|present_state_signal.st20~q\,
	combout => \WideOr0~0_combout\);

-- Location: LCCOMB_X56_Y52_N26
\WideOr1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \WideOr1~0_combout\ = (\state_machine0|present_state_signal.st30~q\) # ((\state_machine0|present_state_signal.st10~q\) # ((\state_machine0|present_state_signal.st35~q\) # (\state_machine0|present_state_signal.st15~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_machine0|present_state_signal.st30~q\,
	datab => \state_machine0|present_state_signal.st10~q\,
	datac => \state_machine0|present_state_signal.st35~q\,
	datad => \state_machine0|present_state_signal.st15~q\,
	combout => \WideOr1~0_combout\);

-- Location: LCCOMB_X56_Y52_N30
\display3|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display3|Mux6~0_combout\ = (!\WideOr0~0_combout\ & (!\state_machine0|present_state_signal.stcandy~q\ & (\WideOr1~0_combout\ $ (!\present_state_dig1[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr0~0_combout\,
	datab => \state_machine0|present_state_signal.stcandy~q\,
	datac => \WideOr1~0_combout\,
	datad => \present_state_dig1[2]~0_combout\,
	combout => \display3|Mux6~0_combout\);

-- Location: LCCOMB_X56_Y52_N24
\display3|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display3|Mux4~0_combout\ = (!\WideOr1~0_combout\ & (\present_state_dig1[2]~0_combout\ & ((\WideOr0~0_combout\) # (\state_machine0|present_state_signal.stcandy~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr0~0_combout\,
	datab => \state_machine0|present_state_signal.stcandy~q\,
	datac => \WideOr1~0_combout\,
	datad => \present_state_dig1[2]~0_combout\,
	combout => \display3|Mux4~0_combout\);

-- Location: LCCOMB_X56_Y52_N14
\display3|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display3|Mux3~0_combout\ = (\WideOr1~0_combout\ & (\present_state_dig1[2]~0_combout\ $ (((\WideOr0~0_combout\) # (\state_machine0|present_state_signal.stcandy~q\))))) # (!\WideOr1~0_combout\ & (!\WideOr0~0_combout\ & 
-- (!\state_machine0|present_state_signal.stcandy~q\ & !\present_state_dig1[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr0~0_combout\,
	datab => \state_machine0|present_state_signal.stcandy~q\,
	datac => \WideOr1~0_combout\,
	datad => \present_state_dig1[2]~0_combout\,
	combout => \display3|Mux3~0_combout\);

-- Location: LCCOMB_X56_Y52_N16
\display3|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display3|Mux2~0_combout\ = (\WideOr1~0_combout\) # ((!\WideOr0~0_combout\ & (!\state_machine0|present_state_signal.stcandy~q\ & !\present_state_dig1[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr0~0_combout\,
	datab => \state_machine0|present_state_signal.stcandy~q\,
	datac => \WideOr1~0_combout\,
	datad => \present_state_dig1[2]~0_combout\,
	combout => \display3|Mux2~0_combout\);

-- Location: LCCOMB_X56_Y52_N6
\display3|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display3|Mux1~0_combout\ = (\WideOr1~0_combout\ & ((\WideOr0~0_combout\) # ((\state_machine0|present_state_signal.stcandy~q\) # (\present_state_dig1[2]~0_combout\)))) # (!\WideOr1~0_combout\ & (\present_state_dig1[2]~0_combout\ & ((\WideOr0~0_combout\) # 
-- (\state_machine0|present_state_signal.stcandy~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr0~0_combout\,
	datab => \state_machine0|present_state_signal.stcandy~q\,
	datac => \WideOr1~0_combout\,
	datad => \present_state_dig1[2]~0_combout\,
	combout => \display3|Mux1~0_combout\);

-- Location: LCCOMB_X56_Y52_N28
\display3|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display3|Mux0~0_combout\ = (\present_state_dig1[2]~0_combout\ & (!\WideOr0~0_combout\ & (!\state_machine0|present_state_signal.stcandy~q\))) # (!\present_state_dig1[2]~0_combout\ & (\WideOr1~0_combout\ & ((\WideOr0~0_combout\) # 
-- (\state_machine0|present_state_signal.stcandy~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr0~0_combout\,
	datab => \state_machine0|present_state_signal.stcandy~q\,
	datac => \WideOr1~0_combout\,
	datad => \present_state_dig1[2]~0_combout\,
	combout => \display3|Mux0~0_combout\);

-- Location: LCCOMB_X51_Y52_N24
\state_machine0|led[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_machine0|led[0]~feeder_combout\ = \SW[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[0]~input_o\,
	combout => \state_machine0|led[0]~feeder_combout\);

-- Location: FF_X51_Y52_N25
\state_machine0|led[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock0|clk_1s_reg~clkctrl_outclk\,
	d => \state_machine0|led[0]~feeder_combout\,
	ena => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_machine0|led\(0));

-- Location: LCCOMB_X51_Y52_N2
\state_machine0|led[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_machine0|led[1]~feeder_combout\ = \SW[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[1]~input_o\,
	combout => \state_machine0|led[1]~feeder_combout\);

-- Location: FF_X51_Y52_N3
\state_machine0|led[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock0|clk_1s_reg~clkctrl_outclk\,
	d => \state_machine0|led[1]~feeder_combout\,
	ena => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_machine0|led\(1));

-- Location: LCCOMB_X52_Y52_N16
\state_machine0|led[2]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_machine0|led[2]~0_combout\ = !\KEY[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \KEY[0]~input_o\,
	combout => \state_machine0|led[2]~0_combout\);

-- Location: FF_X52_Y52_N17
\state_machine0|led[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock0|clk_1s_reg~clkctrl_outclk\,
	d => \state_machine0|led[2]~0_combout\,
	ena => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_machine0|led\(2));

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

ww_LEDR(0) <= \LEDR[0]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;
END structure;


