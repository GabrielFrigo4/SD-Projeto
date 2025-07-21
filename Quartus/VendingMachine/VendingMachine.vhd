library ieee;
use ieee.std_logic_1164.all;

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
			SW  : in  std_logic_vector(3 downto 0);
			HEX : out std_logic_vector(6 downto 0)
		);
	end component DisplayHexadecimal;
begin
	display0 : component DisplayHexadecimal
		port map(
			SW   => SW,
			HEX => HEX0
		);
	display5 : component DisplayHexadecimal
		port map(
			SW   => SW,
			HEX => HEX5
		);
end VendingMachine_ARCH;