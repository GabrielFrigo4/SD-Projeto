library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity VendingMachine is
	port(
		clk	: in std_logic;
		SW		: in  std_logic_vector(2 downto 0); -- TODO: ver se funciona
		KEY: in std_logic_vector(1 downto 0);
		HEX0	: out std_logic_vector(6 downto 0);
		HEX1	: out std_logic_vector(6 downto 0);
		HEX2	: out std_logic_vector(6 downto 0);
		HEX3	: out std_logic_vector(6 downto 0);
		HEX4	: out std_logic_vector(6 downto 0);
		HEX5	: out std_logic_vector(6 downto 0)
	);
end VendingMachine;

architecture VendingMachine_ARCH of VendingMachine is
	signal candy_out, nickel_out, dime_out	: std_logic;
	signal candy_out_dig							: std_logic_vector(3 downto 0);
	component StateMachine is
		port(
			clk, rst									: in std_logic;
			nickel_in, dime_in, quarter_in	: in std_logic;
			candy_out, nickel_out, dime_out	: out std_logic
		);
	end component;
	component DisplayHexadecimal is
		port(
			EN  : in std_logic;
			DIG : in std_logic_vector(3 downto 0);
			HEX : out std_logic_vector(6 downto 0)
		);
	end component;
	component DisplayDecimal is
		port(
			EN  : in std_logic;
			DIG : in std_logic_vector(3 downto 0);
			HEX : out std_logic_vector(6 downto 0)
		);
	end component;
begin
	state_machine : component StateMachine
		port map(
			clk => clk,
			rst => not KEY(1), -- TODO: ver se e not mesmo
			nickel_in => SW(0),
			dime_in => SW(1),
			quarter_in => SW(2),
			candy_out => candy_out,
			nickel_out => nickel_out,
			dime_out => dime_out
		);
		
	-- Display do docinho
	display0 : component DisplayDecimal
		port map(
			EN  => '1',
			DIG => candy_out_dig,
			HEX => HEX0
		);
		
	-- Display nao utilizado
	display1 : component DisplayDecimal
		port map(
			EN  => '0',
			DIG => "0000",
			HEX => HEX1
		);
		
	-- Display das moedas inseridas (parte decimal)
	display2 : component DisplayDecimal
		port map(
			EN  => '0',
			DIG => std_logic_vector(to_unsigned(1, 4)),
			HEX => HEX2
		);
		
	-- Display das moedas inseridas (parte unitaria)
	display3 : component DisplayDecimal
		port map(
			EN  => '0',
			DIG => std_logic_vector(to_unsigned(2, 4)),
			HEX => HEX3
		);
		
	-- Display do troco devido (parte decimal)
	display4 : component DisplayDecimal
		port map(
			EN  => '0',
			DIG => std_logic_vector(to_unsigned(4, 4)),
			HEX => HEX4
		);
		
	-- Display do troco devido (parte unitaria)
	display5 : component DisplayDecimal
		port map(
			EN  => '0',
			DIG => std_logic_vector(to_unsigned(8, 4)),
			HEX => HEX5
		);
		
	candy_out_dig <= "0001" when candy_out = '1' else "0000";
end VendingMachine_ARCH;
