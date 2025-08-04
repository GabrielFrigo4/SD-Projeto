library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.vending_machine.all;

entity StateMachine is
	port(
		clk, rst, tss			: in std_logic;
		coin						: in std_logic_vector(1 downto 0); -- 01 nickel, 10 dime, 11 quarter, 00 inválido
		present_state			: out state;
		candy_out				: out std_logic;
		nickel_out, dime_out	: out std_logic_vector(3 downto 0); -- Quantidade de cada moeda no troco
		led						: out std_logic_vector(2 downto 0)
	);
end StateMachine;

architecture StateMachine_ARCH of StateMachine is
	signal present_state_signal, next_state_signal	: state;
	signal tss_prev 											: std_logic := '0';
	signal toss_coin											: std_logic_vector(1 downto 0) := "00";
begin
	present_state <= present_state_signal;

	-- Lower section of the FSM
	process (rst, clk)
	begin
		if (rst = '1') then
			present_state_signal <= st0;
		elsif (rising_edge(clk)) then
			present_state_signal <= next_state_signal;
			led <= tss & coin;
			if (tss = '1' and tss_prev = '0') then
				toss_coin <= coin;
			else
				toss_coin <= "00";
			end if;
			tss_prev <= tss;
		end if;
	end process;

	-- Upper section of the FSM
	process (present_state_signal, toss_coin)
	begin
		case present_state_signal is
			when st0 =>
				candy_out <= '0';
				nickel_out <= "0000";
				dime_out <= "0000";
				if (toss_coin = "01") then
					next_state_signal <= st5;
				elsif (toss_coin = "10") then
					next_state_signal <= st10;
				elsif (toss_coin = "11") then
					next_state_signal <= st25;
				else
					next_state_signal <= st0;
				end if;

			when st5 =>
				candy_out <= '0';
				nickel_out <= "0000";
				dime_out <= "0000";
				if (toss_coin = "01") then
					next_state_signal <= st10;
				elsif (toss_coin = "10") then
					next_state_signal <= st15;
				elsif (toss_coin = "11") then
					next_state_signal <= st30;
				else
					next_state_signal <= st5;
				end if;

			when st10 =>
				candy_out <= '0';
				nickel_out <= "0000";
				dime_out <= "0000";
				if (toss_coin = "01") then
					next_state_signal <= st15;
				elsif (toss_coin = "10") then
					next_state_signal <= st20;
				elsif (toss_coin = "11") then
					next_state_signal <= st35;
				else
					next_state_signal <= st10;
				end if;

			when st15 =>
				candy_out <= '0';
				nickel_out <= "0000";
				dime_out <= "0000";
				if (toss_coin = "01") then
					next_state_signal <= st20;
				elsif (toss_coin = "10") then
					next_state_signal <= st25;
				elsif (toss_coin = "11") then
					next_state_signal <= st40;
				else
					next_state_signal <= st15;
				end if;

			when st20 =>
				candy_out <= '0';
				nickel_out <= "0000";
				dime_out <= "0000";
				if (toss_coin = "01") then
					next_state_signal <= st25;
				elsif (toss_coin = "10") then
					next_state_signal <= st30;
				elsif (toss_coin = "11") then
					next_state_signal <= st45;
				else
					next_state_signal <= st20;
				end if;

			when st25 =>
				candy_out <= '0'; -- Agora e 1 somente no stcandy
				nickel_out <= "0000";
				dime_out <= "0000";
				next_state_signal <= stcandy;

			when st30 =>
				candy_out <= '0'; -- Agora e 1 somente no stcandy
				nickel_out <= "0001";
				dime_out <= "0000";
				next_state_signal <= stcandy;

			when st35 =>
				candy_out <= '0'; -- Agora e 1 somente no stcandy
				nickel_out <= "0000";
				dime_out <= "0001";
				next_state_signal <= stcandy;

			when st40 =>
				candy_out <= '0';
				nickel_out <= "0001";
				dime_out <= "0000";
				next_state_signal <= st35;

			when st45 =>
				candy_out <= '0';
				nickel_out <= "0000";
				dime_out <= "0001";
				next_state_signal <= st35;

			when stcandy =>
				if (toss_coin = "01") then
					candy_out <= '0';
					nickel_out <= "0000";
					dime_out <= "0000";
					next_state_signal <= st5;
				elsif (toss_coin = "10") then
					candy_out <= '0';
					nickel_out <= "0000";
					dime_out <= "0000";
					next_state_signal <= st10;
				elsif (toss_coin = "11") then
					candy_out <= '0';
					nickel_out <= "0000";
					dime_out <= "0000";
					next_state_signal <= st25;
				else
					candy_out <= '1';
					nickel_out <= "0000";
					dime_out <= "0000";
					next_state_signal <= stcandy;
				end if;
		end case;
	end process;

end StateMachine_ARCH;
