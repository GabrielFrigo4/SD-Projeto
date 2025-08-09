library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Delay is
	port (
		CLK		: in  std_logic;
		RST		: in  std_logic;
		START	: in  std_logic;
		DONE	: out std_logic
	);
end entity Delay;

architecture Delay_ARCH of Delay is
	constant DELAY_CYCLES	: integer := 25;
	signal counter			: integer range 0 to DELAY_CYCLES;
begin
	process(CLK, RST)
	begin
		if (RST = '1') then
			counter <= 0;
			DONE  <= '0';
		elsif (rising_edge(CLK)) then
			if (START = '1') then
				if (counter < DELAY_CYCLES - 1) then
					counter <= counter + 1;
					DONE  <= '0';
				else
					DONE <= '1';
				end if;
			else
				counter <= 0;
				DONE  <= '0';
			end if;
		end if;
	end process;
end architecture Delay_ARCH;