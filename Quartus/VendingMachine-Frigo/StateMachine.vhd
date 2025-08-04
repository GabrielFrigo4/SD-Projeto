library ieee;
use ieee.std_logic_1164.all;
use work.vending_machine.all;

entity StateMachine is
	port(
		clk, rst, btn					: in std_logic;
		nickel_in, dime_in, quarter_in	: in std_logic;
		candy_out, nickel_out, dime_out	: out std_logic;
		present_state_out				: out state
	);
end StateMachine;

architecture StateMachine_ARCH of StateMachine is
	signal present_state, next_state	: state;
	signal need_coin					: std_logic := '0';
begin
	with present_state select
		need_coin <=
			'1' when st0,
			'1' when st5,
			'1' when st10,
			'1' when st15,
			'1' when st20,
			'0' when others;

	process (rst, clk, btn, need_coin)
	begin
		if (rst = '1') then
			present_state <= st0;
		elsif (clk'event and clk = '1') then
			present_state <= next_state;
		--elsif (clk'event and clk = '1') then
		--	present_state <= next_state;
		end if;
		present_state_out <= present_state;
	end process;

	process (present_state, nickel_in, dime_in, quarter_in)
	begin
		case present_state is
			when st0 =>
				candy_out	<= '0';
				nickel_out	<= '0';
				dime_out	<= '0';
				if (nickel_in = '1') then
					next_state <= st5;
				elsif (dime_in = '1') then
					next_state <= st10;
				elsif (quarter_in = '1') then
					next_state <= st25;
				else
					next_state <= st0;
				end if;

			when st5 =>
				candy_out	<= '0';
				nickel_out	<= '0';
				dime_out	<= '0';
				if (nickel_in = '1') then
					next_state <= st10;
				elsif (dime_in = '1') then
					next_state <= st15;
				elsif (quarter_in = '1') then
					next_state <= st30;
				else
					next_state <= st5;
				end if;

			when st10 =>
				candy_out	<= '0';
				nickel_out	<= '0';
				dime_out	<= '0';
				if (nickel_in = '1') then
					next_state <= st15;
				elsif (dime_in = '1') then
					next_state <= st20;
				elsif (quarter_in = '1') then
					next_state <= st35;
				else
					next_state <= st10;
				end if;

			when st15 =>
				candy_out	<= '0';
				nickel_out	<= '0';
				dime_out	<= '0';
				if (nickel_in = '1') then
					next_state <= st20;
				elsif (dime_in = '1') then
					next_state <= st25;
				elsif (quarter_in = '1') then
					next_state <= st40;
				else
					next_state <= st15;
				end if;

			when st20 =>
				candy_out	<= '0';
				nickel_out	<= '0';
				dime_out	<= '0';
				if (nickel_in = '1') then
					next_state <= st25;
				elsif (dime_in = '1') then
					next_state <= st30;
				elsif (quarter_in = '1') then
					next_state <= st45;
				else
					next_state <= st20;
				end if;

			when st25 =>
				candy_out	<= '1';
				nickel_out	<= '0';
				dime_out	<= '0';
				next_state	<= st0;

			when st30 =>
				candy_out	<= '1';
				nickel_out	<= '1';
				dime_out	<= '0';
				next_state	<= st0;

			when st35 =>
				candy_out	<= '1';
				nickel_out	<= '0';
				dime_out	<= '1';
				next_state	<= st0;

			when st40 =>
				candy_out	<= '0';
				nickel_out	<= '1';
				dime_out	<= '0';
				next_state	<= st35;

			when st45 =>
				candy_out	<= '0';
				nickel_out	<= '0';
				dime_out	<= '1';
				next_state	<= st35;
		end case;
	end process;

end StateMachine_ARCH;