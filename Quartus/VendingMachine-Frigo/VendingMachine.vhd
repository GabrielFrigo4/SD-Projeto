library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.clock_system.all;
use work.vending_machine.all;
use work.display_segment.all;

entity VendingMachine is
	port(
		CLOCK_50	: in std_logic;
		SW			: in std_logic_vector(9 downto 0);
		KEY			: in std_logic_vector(1 downto 0);
		HEX0		: out std_logic_vector(6 downto 0);
		HEX1		: out std_logic_vector(6 downto 0);
		HEX2		: out std_logic_vector(6 downto 0);
		HEX3		: out std_logic_vector(6 downto 0);
		HEX4		: out std_logic_vector(6 downto 0);
		HEX5		: out std_logic_vector(6 downto 0);
		LEDR		: out std_logic_vector(9 downto 0)
	);
end VendingMachine;

architecture VendingMachine_ARCH of VendingMachine is
	signal clk										: std_logic;
	signal present_state							: state;
	signal candy_out								: std_logic;
	signal nickel_out, dime_out						: std_logic;
	signal present_state_dig0, present_state_dig1	: std_logic_vector(3 downto 0);
	signal candy_out_dig							: std_logic_vector(3 downto 0);
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
			clk					=> clk,
			rst					=> not KEY(0),
			btn					=> KEY(1),
			nickel_in			=> SW(0),
			dime_in				=> SW(1),
			quarter_in			=> SW(2),
			candy_out			=> candy_out,
			nickel_out			=> nickel_out,
			dime_out			=> dime_out,
			present_state_out	=> present_state
		);

	-- Led
	LEDR <= dime_out & "00011000" & nickel_out;

	-- Display nao utilizado (DEBUG)
	display5 : component DisplayHexadecimal
		port map(
			EN	=> '0',
			DIG	=> std_logic_vector(to_unsigned(0, 4)),
			HEX	=> HEX5
		);

	-- Display do docinho
	display4 : component DisplayDecimal
		port map(
			EN	=> '1',
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
			EN	=> '1',
			DIG	=> "000" & dime_out,
			HEX	=> HEX1
		);

	-- Display do numero de nickels devolvidos
	display0 : component DisplayDecimal
		port map(
			EN	=> '1',
			DIG	=> "000" & nickel_out,
			HEX	=> HEX0
		);

	with present_state select
		present_state_dig1 <=
			std_logic_vector(to_unsigned(1, 4)) when st10,
			std_logic_vector(to_unsigned(1, 4)) when st15,
			std_logic_vector(to_unsigned(2, 4)) when st20,
			std_logic_vector(to_unsigned(2, 4)) when st25,
			std_logic_vector(to_unsigned(3, 4)) when st30,
			std_logic_vector(to_unsigned(3, 4)) when st35,
			std_logic_vector(to_unsigned(4, 4)) when st40,
			std_logic_vector(to_unsigned(4, 4)) when st45,
			std_logic_vector(to_unsigned(0, 4)) when others;
	with present_state select
		present_state_dig0 <=
			std_logic_vector(to_unsigned(5, 4)) when st5,
			std_logic_vector(to_unsigned(5, 4)) when st15,
			std_logic_vector(to_unsigned(5, 4)) when st25,
			std_logic_vector(to_unsigned(5, 4)) when st35,
			std_logic_vector(to_unsigned(5, 4)) when st45,
			std_logic_vector(to_unsigned(0, 4)) when others;
	candy_out_dig <= "0001" when candy_out = '1' else "0000";
end VendingMachine_ARCH;
