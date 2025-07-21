library ieee;
use ieee.std_logic_1164.all;

entity DisplayDecimal is
	port(
		EN  : in std_logic;
		DIG : in std_logic_vector(3 downto 0);
		HEX : out std_logic_vector(6 downto 0)
	);
end DisplayDecimal;

architecture DisplayDecimal_ARCH of DisplayDecimal is
begin
	process(EN, DIG)
	begin
		if EN = '0' then
			HEX <= "1111111";
		else
			case DIG is
				when "0000" => HEX <= "1000000"; -- 0
				when "0001" => HEX <= "1111001"; -- 1
				when "0010" => HEX <= "0100100"; -- 2
				when "0011" => HEX <= "0110000"; -- 3
				when "0100" => HEX <= "0011001"; -- 4
				when "0101" => HEX <= "0010010"; -- 5
				when "0110" => HEX <= "0000010"; -- 6
				when "0111" => HEX <= "1111000"; -- 7
				when "1000" => HEX <= "0000000"; -- 8
				when "1001" => HEX <= "0010000"; -- 9
				when others => HEX <= "1111111"; -- Blank
			end case;
		end if;
	end process;
end DisplayDecimal_ARCH;
