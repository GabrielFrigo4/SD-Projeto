library ieee;
use ieee.std_logic_1164.all;
use work.time_system.all;
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
	signal present_state	: state;
	signal next_state		: state;
    signal btn_prev			: std_logic := '0';
    signal btn_click		: std_logic := '0';
	signal delay_start		: std_logic := '0';
	signal delay_done		: std_logic := '0';
begin
	btn_click <= btn and (not btn_prev);
	delay0 : component Delay
		port map(
			CLK		=> clk,
			RST		=> '0',
			START	=> delay_start,
			DONE	=> delay_done
		);

	process (rst, clk)
	begin
		if (rst = '1') then
			present_state <= st0;
		elsif (rising_edge(clk)) then
			present_state <= next_state;
			btn_prev <= btn;
		end if;
		present_state_out <= present_state;
	end process;

	process (btn_click, delay_done, present_state)
	begin
		case present_state is
			when st0 =>
				delay_start	<= '0';
				candy_out	<= '0';
				nickel_out	<= '0';
				dime_out	<= '0';
				if (btn_click = '1' and nickel_in = '1') then
					next_state <= st5;
				elsif (btn_click = '1' and dime_in = '1') then
					next_state <= st10;
				elsif (btn_click = '1' and quarter_in = '1') then
					next_state <= st25;
				else
					next_state <= st0;
				end if;

			when st5 =>
				delay_start	<= '0';
				candy_out	<= '0';
				nickel_out	<= '0';
				dime_out	<= '0';
				if (btn_click = '1' and nickel_in = '1') then
					next_state <= st10;
				elsif (btn_click = '1' and dime_in = '1') then
					next_state <= st15;
				elsif (btn_click = '1' and quarter_in = '1') then
					next_state <= st30;
				else
					next_state <= st5;
				end if;

			when st10 =>
				delay_start	<= '0';
				candy_out	<= '0';
				nickel_out	<= '0';
				dime_out	<= '0';
				if (btn_click = '1' and nickel_in = '1') then
					next_state <= st15;
				elsif (btn_click = '1' and dime_in = '1') then
					next_state <= st20;
				elsif (btn_click = '1' and quarter_in = '1') then
					next_state <= st35;
				else
					next_state <= st10;
				end if;

			when st15 =>
				delay_start	<= '0';
				candy_out	<= '0';
				nickel_out	<= '0';
				dime_out	<= '0';
				if (btn_click = '1' and nickel_in = '1') then
					next_state <= st20;
				elsif (btn_click = '1' and dime_in = '1') then
					next_state <= st25;
				elsif (btn_click = '1' and quarter_in = '1') then
					next_state <= st40;
				else
					next_state <= st15;
				end if;

			when st20 =>
				delay_start	<= '0';
				candy_out	<= '0';
				nickel_out	<= '0';
				dime_out	<= '0';
				if (btn_click = '1' and nickel_in = '1') then
					next_state <= st25;
				elsif (btn_click = '1' and dime_in = '1') then
					next_state <= st30;
				elsif (btn_click = '1' and quarter_in = '1') then
					next_state <= st45;
				else
					next_state <= st20;
				end if;

			when st25 =>
				delay_start	<= '1';
				if (delay_done = '1') then
					candy_out	<= '1';
					nickel_out	<= '0';
					dime_out	<= '0';
					next_state	<= st0;
					delay_start	<= '0';
				else
					candy_out	<= '0';
					nickel_out	<= '0';
					dime_out	<= '0';
					next_state <= st25;
				end if;

			when st30 =>
				delay_start	<= '1';
				if (delay_done = '1') then
					candy_out	<= '1';
					nickel_out	<= '1';
					dime_out	<= '0';
					next_state	<= st0;
					delay_start	<= '0';
				else
					candy_out	<= '0';
					nickel_out	<= '0';
					dime_out	<= '0';
					next_state <= st30;
				end if;

			when st35 =>
				delay_start	<= '1';
				if (delay_done = '1') then
					candy_out	<= '1';
					nickel_out	<= '0';
					dime_out	<= '1';
					next_state	<= st0;
					delay_start	<= '0';
				else
					candy_out	<= '0';
					nickel_out	<= '0';
					dime_out	<= '0';
					next_state <= st35;
				end if;

			when st40 =>
				delay_start	<= '1';
				if (delay_done = '1') then
					candy_out	<= '0';
					nickel_out	<= '1';
					dime_out	<= '0';
					next_state	<= st35;
					delay_start	<= '0';
				else
					candy_out	<= '0';
					nickel_out	<= '0';
					dime_out	<= '0';
					next_state <= st40;
				end if;

			when st45 =>
				delay_start	<= '1';
				if (delay_done = '1') then
					candy_out	<= '0';
					nickel_out	<= '0';
					dime_out	<= '1';
					next_state	<= st35;
					delay_start	<= '0';
				else
					candy_out	<= '0';
					nickel_out	<= '0';
					dime_out	<= '0';
					next_state <= st45;
				end if;
		end case;
	end process;

end StateMachine_ARCH;
