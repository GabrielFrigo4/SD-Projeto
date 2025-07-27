library ieee;
use ieee.std_logic_1164.all;

entity StateMachine is
	port(
		clk, rst									: in std_logic;
		nickel_in, dime_in, quarter_in	: in std_logic;
		candy_out, nickel_out, dime_out	: out std_logic
	);
end StateMachine;

architecture StateMachine_ARCH of StateMachine is
	type state is (st0, st5, st10, st15, st20, st25, st30, st35, st40, st45);
	signal present_state, next_state	: state;
begin
	-- Lower section of the FSM
	process (rst, clk)
	begin
		if (rst = '1') then
			present_state <= st0;
		elsif (clk'event and clk = '1') then
			present_state <= next_state;
		end if;
	end process;

	-- Upper section of the FSM
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
