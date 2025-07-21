library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity VendingMachine is
	port(
		SW   : in  std_logic_vector(3 downto 0);
		HEX0 : out std_logic_vector(6 downto 0);
		HEX1 : out std_logic_vector(6 downto 0);
		HEX2 : out std_logic_vector(6 downto 0);
		HEX3 : out std_logic_vector(6 downto 0);
		HEX4 : out std_logic_vector(6 downto 0);
		HEX5 : out std_logic_vector(6 downto 0)
	);
end VendingMachine;

architecture VendingMachine_ARCH of VendingMachine is
	component DisplayHexadecimal is
		port(
			EN  : in std_logic;
			DIG : in std_logic_vector(3 downto 0);
			HEX : out std_logic_vector(6 downto 0)
		);
	end component DisplayHexadecimal;
	component DisplayDecimal is
		port(
			EN  : in std_logic;
			DIG : in std_logic_vector(3 downto 0);
			HEX : out std_logic_vector(6 downto 0)
		);
	end component DisplayDecimal;
begin
	display0 : component DisplayDecimal
		port map(
			EN  => '1',
			DIG => SW,
			HEX => HEX0
		);
	display1 : component DisplayDecimal
		port map(
			EN  => '1',
			DIG => SW,
			HEX => HEX1
		);
	display2 : component DisplayDecimal
		port map(
			EN  => '0',
			DIG => std_logic_vector(to_unsigned(1, 4)),
			HEX => HEX2
		);
	display3 : component DisplayDecimal
		port map(
			EN  => '0',
			DIG => std_logic_vector(to_unsigned(2, 4)),
			HEX => HEX3
		);
	display4 : component DisplayDecimal
		port map(
			EN  => '0',
			DIG => std_logic_vector(to_unsigned(4, 4)),
			HEX => HEX4
		);
	display5 : component DisplayDecimal
		port map(
			EN  => '0',
			DIG => std_logic_vector(to_unsigned(8, 4)),
			HEX => HEX5
		);
end VendingMachine_ARCH;
