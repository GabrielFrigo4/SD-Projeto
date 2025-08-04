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
	constant MAX_COUNT : unsigned(25 downto 0) := to_unsigned(99999999, 26); -- 50M - 1
	signal counter     : unsigned(25 downto 0) := (others => '0');
   signal clk_1s_reg  : STD_LOGIC := '0';
begin
	process(CLK_IN)
    begin
		if rising_edge(CLK_IN) then
			if counter = MAX_COUNT then
				counter    <= (others => '0');
				clk_1s_reg <= '1';  -- Pulso alto por 1 ciclo
			else
				counter    <= counter + 1;
				clk_1s_reg <= '0';
			end if;
		end if;
    end process;

    CLK_OUT <= clk_1s_reg;
end architecture Clock_ARCH;