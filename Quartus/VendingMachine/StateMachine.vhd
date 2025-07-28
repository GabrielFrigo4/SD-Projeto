library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.vending_machine.all;

entity StateMachine is
	port(
		clk, rst, tss							: in std_logic;
		coin										: in std_logic_vector(1 downto 0); -- 01 nickel, 10 dime, 11 quarter, 00 inválido
		present_state							: out state;
		candy_out								: out std_logic;
		nickel_out, dime_out					: out std_logic_vector(1 downto 0) -- Quantidade de cada moeda no troco
	);
end StateMachine;

architecture StateMachine_ARCH of StateMachine is
	signal present_state_signal, next_state_signal	: state;
	signal toss_coin											: std_logic_vector(1 downto 0);
	signal nickel_out_signal, dime_out_signal			: std_logic_vector(1 downto 0) := "00";
begin
	present_state <= present_state_signal;
	nickel_out <= nickel_out_signal;
	dime_out <= dime_out_signal;

	-- Lower section of the FSM
	process (tss, rst, clk)
	begin
		if (tss = '1') then
			toss_coin <= coin;
		else
			toss_coin <= "00";
		end if;
		
		if (rst = '1') then
			present_state_signal <= st0;
		elsif (clk'event and clk = '1') then
			present_state_signal <= next_state_signal;
		end if;
	end process;

	-- Upper section of the FSM
	process (present_state_signal, toss_coin)
	begin
		case present_state_signal is
			when st0 =>
				candy_out <= '0';
				nickel_out_signal <= "00";
				dime_out_signal	<= "00";
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
				nickel_out_signal <= "00";
				dime_out_signal	<= "00";
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
				nickel_out_signal <= "00";
				dime_out_signal	<= "00";
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
				nickel_out_signal <= "00";
				dime_out_signal	<= "00";
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
				nickel_out_signal <= "00";
				dime_out_signal	<= "00";
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
				nickel_out_signal <= nickel_out_signal;
				dime_out_signal <= dime_out_signal;
				next_state_signal <= stcandy;

			when st30 =>
				candy_out <= '0'; -- Agora e 1 somente no stcandy
				nickel_out_signal <= std_logic_vector(unsigned(nickel_out_signal) + 1);
				dime_out_signal <= dime_out_signal;
				next_state_signal <= stcandy;

			when st35 =>
				candy_out <= '0'; -- Agora e 1 somente no stcandy
				nickel_out_signal <= nickel_out_signal;
				dime_out_signal <= std_logic_vector(unsigned(dime_out_signal) + 1);
				next_state_signal <= stcandy;

			when st40 =>
				candy_out <= '0';
				nickel_out_signal <= std_logic_vector(unsigned(nickel_out_signal) + 1);
				dime_out_signal <= dime_out_signal;
				next_state_signal <= st35;

			when st45 =>
				candy_out <= '0';
				nickel_out_signal <= nickel_out_signal;
				dime_out_signal <= std_logic_vector(unsigned(dime_out_signal) + 1);
				next_state_signal <= st35;

			when stcandy =>
				candy_out <= '1';
				nickel_out_signal <= nickel_out_signal;
				dime_out_signal <= dime_out_signal;
				if (toss_coin = "01") then
					next_state_signal <= st5;
				elsif (toss_coin = "10") then
					next_state_signal <= st10;
				elsif (toss_coin = "11") then
					next_state_signal <= st25;
				else
					next_state_signal <= stcandy;
				end if;
		end case;
	end process;

end StateMachine_ARCH;
