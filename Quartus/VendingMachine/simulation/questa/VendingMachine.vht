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

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to   
-- suit user's needs .Comments are provided in each section to help the user  
-- fill out necessary details.                                                
-- ***************************************************************************
-- Generated on "08/09/2025 15:14:32"
                                                            
-- Vhdl Test Bench template for design  :  VendingMachine
-- 
-- Simulation tool : Questa Intel FPGA (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY VendingMachine_vhd_tst IS
END VendingMachine_vhd_tst;
ARCHITECTURE VendingMachine_arch OF VendingMachine_vhd_tst IS
-- constants                                            
CONSTANT CLOCK_PERIOD : TIME := 10 ns;
CONSTANT WAIT_TIME : TIME := 1000 ns;
-- signals                                                   
SIGNAL CLOCK_50 : STD_LOGIC;
SIGNAL HEX0 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL HEX1 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL HEX2 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL HEX3 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL HEX4 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL HEX5 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL KEY : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL SW : STD_LOGIC_VECTOR(3 DOWNTO 0);
COMPONENT VendingMachine
	PORT (
	CLOCK_50 : IN STD_LOGIC;
	HEX0 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	HEX1 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	HEX2 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	HEX3 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	HEX4 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	HEX5 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	KEY : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	SW : IN STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : VendingMachine
	PORT MAP (
-- list connections between master ports and signals
	CLOCK_50 => CLOCK_50,
	HEX0 => HEX0,
	HEX1 => HEX1,
	HEX2 => HEX2,
	HEX3 => HEX3,
	HEX4 => HEX4,
	HEX5 => HEX5,
	KEY => KEY,
	SW => SW
	);
	
	clk_process : PROCESS
	BEGIN
		 LOOP
			  CLOCK_50 <= '0';
			  WAIT FOR CLOCK_PERIOD / 2;
			  CLOCK_50 <= '1';
			  WAIT FOR CLOCK_PERIOD / 2;
		 END LOOP;
	END PROCESS;
	
init : PROCESS                                               
-- variable declarations
	PROCEDURE insert_coin(nickel, dime, quarter : BOOLEAN) IS
	BEGIN
		IF nickel THEN
			SW <= "0001";
		ELSIF dime THEN
			SW <= "0010";
		ELSIF quarter THEN
			SW <= "0100";
		ELSE
			SW <= "0000";
		END IF;
	END PROCEDURE;
	
	PROCEDURE press_btn IS
	BEGIN
		KEY(1) <= '0';
		WAIT FOR 100 ns;
		KEY(1) <= '1';
		WAIT FOR 100 ns;
	END PROCEDURE;
BEGIN
	KEY <= (OTHERS => '1');
	SW <= (OTHERS => '0');
	
	-- resetar
	KEY(0) <= '0';
	WAIT FOR 100 ns;
	KEY(0) <= '1';
	WAIT FOR 100 ns;
	
	-- 5 nickels (troco 0)
	insert_coin(TRUE, FALSE, FALSE);
	press_btn;
	insert_coin(TRUE, FALSE, FALSE);
	press_btn;
	insert_coin(TRUE, FALSE, FALSE);
	press_btn;
	insert_coin(TRUE, FALSE, FALSE);
	press_btn;
	insert_coin(TRUE, FALSE, FALSE);
	press_btn;
	WAIT FOR WAIT_TIME;
	
	-- 3 nickels + 1 dime (troco 0)
	insert_coin(TRUE, FALSE, FALSE);
	press_btn;
	insert_coin(TRUE, FALSE, FALSE);
	press_btn;
	insert_coin(TRUE, FALSE, FALSE);
	press_btn;
	insert_coin(FALSE, TRUE, FALSE);
	press_btn;
	WAIT FOR WAIT_TIME;
	
	-- 3 dimes (troco nickel)
	insert_coin(FALSE, TRUE, FALSE);
	press_btn;
	insert_coin(FALSE, TRUE, FALSE);
	press_btn;
	insert_coin(FALSE, TRUE, FALSE);
	press_btn;
	WAIT FOR WAIT_TIME;
	
	-- 2 dimes + 1 nickel (troco 0)
	insert_coin(FALSE, TRUE, FALSE);
	press_btn;
	insert_coin(FALSE, TRUE, FALSE);
	press_btn;
	insert_coin(TRUE, FALSE, FALSE);
	press_btn;
	WAIT FOR WAIT_TIME;
	
	-- 1 dime + 1 quarter (troco dime)
	insert_coin(FALSE, TRUE, FALSE);
	press_btn;
	insert_coin(FALSE, FALSE, TRUE);
	press_btn;
	WAIT FOR WAIT_TIME;
	
	-- 2 dimes + 1 quarter (troco dime + dime)
	insert_coin(FALSE, TRUE, FALSE);
	press_btn;
	insert_coin(FALSE, TRUE, FALSE);
	press_btn;
	insert_coin(FALSE, FALSE, TRUE);
	press_btn;
	WAIT FOR WAIT_TIME;
	
	-- 3 nickels + 1 quarter (troco nickel + dime)
	insert_coin(TRUE, FALSE, FALSE);
	press_btn;
	insert_coin(TRUE, FALSE, FALSE);
	press_btn;
	insert_coin(TRUE, FALSE, FALSE);
	press_btn;
	insert_coin(FALSE, FALSE, TRUE);
	press_btn;
	WAIT FOR WAIT_TIME;
	
	-- 4 nickels + 1 dime (troco nickel)
	insert_coin(TRUE, FALSE, FALSE);
	press_btn;
	insert_coin(TRUE, FALSE, FALSE);
	press_btn;
	insert_coin(TRUE, FALSE, FALSE);
	press_btn;
	insert_coin(TRUE, FALSE, FALSE);
	press_btn;
	insert_coin(FALSE, TRUE, FALSE);
	press_btn;
	WAIT FOR WAIT_TIME;
	
	-- 4 nickels + 1 quarter (troco dime + dime)
	insert_coin(TRUE, FALSE, FALSE);
	press_btn;
	insert_coin(TRUE, FALSE, FALSE);
	press_btn;
	insert_coin(TRUE, FALSE, FALSE);
	press_btn;
	insert_coin(TRUE, FALSE, FALSE);
	press_btn;
	insert_coin(FALSE, FALSE, TRUE);
	press_btn;
	WAIT FOR WAIT_TIME;
	
	WAIT;
END PROCESS init;                                           
always : PROCESS                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
BEGIN                                                         
        -- code executes for every event on sensitivity list  
WAIT;                                                        
END PROCESS always;                                          
END VendingMachine_arch;
