library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.vending_machine.all;

entity StateMachine is
	port(
		CLOCK_50, clk, rst, tss	: in std_logic;
		coin							: in std_logic_vector(1 downto 0); -- 01 nickel, 10 dime, 11 quarter, 00 inválido
		present_state				: out state;
		candy_out					: out std_logic;
		nickel_out, dime_out		: out std_logic_vector(3 downto 0); -- Quantidade de cada moeda no troco
		return_coin					: out std_logic;
		led							: out std_logic_vector(2 downto 0)
	);
end StateMachine;

architecture StateMachine_ARCH of StateMachine is
	signal present_state_signal, next_state_signal	: state;
	signal tss_prev 											: std_logic := '0';
	signal toss_coin											: std_logic_vector(1 downto 0) := "00";
begin
	present_state <= present_state_signal;
	
	process (CLOCK_50)
	begin
		if (rising_edge(CLOCK_50)) then
			led <= tss & coin;
			if (tss = '1' and tss_prev = '0') then
				toss_coin <= coin;
			else
				toss_coin <= "00";
			end if;
			return_coin <= '0'; -- ignorar por enquanto
			tss_prev <= tss;
		end if;
	end process;

	-- Lower section of the FSM
	process (rst, clk)
	begin
		if (rst = '1') then
			present_state_signal <= st0;
		elsif (rising_edge(clk)) then
			present_state_signal <= next_state_signal;
		end if;
	end process;

	-- Upper section of the FSM
	process (present_state_signal, toss_coin)
		variable next_state	: state := st0;
	begin
		case present_state_signal is
			when st0 =>
				candy_out <= '0';
				nickel_out <= "0000";
				dime_out <= "0000";
				if (toss_coin = "01") then
					next_state := st5;
				elsif (toss_coin = "10") then
					next_state := st10;
				elsif (toss_coin = "11") then
					next_state := st25;
				end if;

			when st5 =>
				candy_out <= '0';
				nickel_out <= "0000";
				dime_out <= "0000";
				if (toss_coin = "01") then
					next_state := st10;
				elsif (toss_coin = "10") then
					next_state := st15;
				elsif (toss_coin = "11") then
					next_state := st30;
				end if;

			when st10 =>
				candy_out <= '0';
				nickel_out <= "0000";
				dime_out <= "0000";
				if (toss_coin = "01") then
					next_state := st15;
				elsif (toss_coin = "10") then
					next_state := st20;
				elsif (toss_coin = "11") then
					next_state := st35;
				end if;

			when st15 =>
				candy_out <= '0';
				nickel_out <= "0000";
				dime_out <= "0000";
				if (toss_coin = "01") then
					next_state := st20;
				elsif (toss_coin = "10") then
					next_state := st25;
				elsif (toss_coin = "11") then
					next_state := st40;
				end if;

			when st20 =>
				candy_out <= '0';
				nickel_out <= "0000";
				dime_out <= "0000";
				if (toss_coin = "01") then
					next_state := st25;
				elsif (toss_coin = "10") then
					next_state := st30;
				elsif (toss_coin = "11") then
					next_state := st45;
				end if;

			when st25 =>
				candy_out <= '1';
				nickel_out <= "0000";
				dime_out <= "0000";
				next_state := st0;

			when st30 =>
				candy_out <= '1';
				nickel_out <= "0001";
				dime_out <= "0000";
				next_state := st0;

			when st35 =>
				candy_out <= '1';
				nickel_out <= "0000";
				dime_out <= "0001";
				next_state := st0;

			when st40 =>
				candy_out <= '0';
				nickel_out <= "0001";
				dime_out <= "0000";
				next_state := st35;

			when st45 =>
				candy_out <= '0';
				nickel_out <= "0000";
				dime_out <= "0001";
				next_state := st35;
		end case;
		next_state_signal <= next_state;
	end process;

end StateMachine_ARCH;
