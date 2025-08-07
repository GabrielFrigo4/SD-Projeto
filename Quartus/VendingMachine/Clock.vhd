library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Clock is
	port(
		CLK_IN	: in std_logic;
		CLK_OUT	: out std_logic
	);
end entity Clock;

architecture Clock_ARCH of Clock is
	constant CLOCK_CYCLES	: integer := 1;
	signal contador 		: integer range 0 to CLOCK_CYCLES - 1 := 0;
	signal clk_local		: std_logic := '0';
begin
	process(CLK_IN)
	begin
		if rising_edge(CLK_IN) then
			if contador = CLOCK_CYCLES - 1 then
				clk_local <= not clk_local;
				contador <= 0;
			else
				contador <= contador + 1;
			end if;
		end if;
	end process;
	CLK_OUT <= clk_local;
end architecture Clock_ARCH;
