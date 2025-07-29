library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.clock_system.all;
use work.vending_machine.all;
use work.display_segment.all;

entity VendingMachine is
	port(
		CLOCK_50	: in std_logic;
		SW			: in std_logic_vector(1 downto 0); -- TODO: ver se funciona
		KEY		: in std_logic_vector(1 downto 0);
		HEX0		: out std_logic_vector(6 downto 0);
		HEX1		: out std_logic_vector(6 downto 0);
		HEX2		: out std_logic_vector(6 downto 0);
		HEX3		: out std_logic_vector(6 downto 0);
		HEX4		: out std_logic_vector(6 downto 0);
		HEX5		: out std_logic_vector(6 downto 0);
		LEDR		: out std_logic_vector(2 downto 0)
	);
end VendingMachine;

architecture VendingMachine_ARCH of VendingMachine is
	signal clk													: std_logic;
	signal present_state										: state;
	signal candy_out											: std_logic;
	signal nickel_out, dime_out							: std_logic_vector(3 downto 0);
	signal present_state_dig0, present_state_dig1	: std_logic_vector(3 downto 0);
	signal candy_out_dig										: std_logic_vector(3 downto 0);
begin
	-- Clock
	clock0 : component Clock
		port map(
			CLK_IN	=> CLOCK_50,
			CLK_OUT	=> clk
		);

	-- State Machine
	state_machine0 : component StateMachine
		port map(
			clk				=> clk,
			rst				=> not KEY(1),
			tss				=> not KEY(0),
			coin				=> SW,
			present_state	=> present_state,
			candy_out		=> candy_out,
			nickel_out		=> nickel_out,
			dime_out 		=> dime_out,
			led				=> LEDR
		);

	-- Display nao utilizado (DEBUG)
	display5 : component DisplayHexadecimal
		port map(
			EN		=> '0',
			DIG	=> "0" & SW(1) & SW(0) & clk,
			HEX	=> HEX5
		);

	-- Display do docinho
	display4 : component DisplayDecimal
		port map(
			EN		=> '1',
			DIG	=> candy_out_dig,
			HEX	=> HEX4
		);

	-- Display das moedas inseridas (parte decimal)
	display3 : component DisplayDecimal
		port map(
			EN	=> '1',
			DIG	=> present_state_dig1,
			HEX	=> HEX3
		);

	-- Display das moedas inseridas (parte unitaria)
	display2 : component DisplayDecimal
		port map(
			EN	=> '1',
			DIG	=> present_state_dig0,
			HEX	=> HEX2
		);

	-- Display do numero de dimes devolvidos
	display1 : component DisplayDecimal
		port map(
			EN		=> '1',
			DIG	=> dime_out,
			HEX	=> HEX1
		);

	-- Display do numero de nickels devolvidos
	display0 : component DisplayDecimal
		port map(
			EN		=> '1',
			DIG	=> nickel_out,
			HEX	=> HEX0
		);

	with present_state select
		present_state_dig1 <=
			"0001" when st10,
			"0001" when st15,
			"0010" when st20,
			"0010" when st25,
			"0010" when stcandy,
			"0011" when st30,
			"0011" when st35,
			"0100" when st40,
			"0100" when st45,
			"0000" when others;
	with present_state select 
		present_state_dig0 <=	
			"0101" when st5,
			"0101" when st15,
			"0101" when st25,
			"0101" when stcandy,
			"0101" when st35,
			"0101" when st45,
			"0000" when others;
	candy_out_dig <= "0001" when candy_out = '1' else "0000";
end VendingMachine_ARCH;
