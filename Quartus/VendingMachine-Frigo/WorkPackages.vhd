-- BEGIN VendingMachine
library ieee;
use ieee.std_logic_1164.all;
package vending_machine is
	type state is (st0, st5, st10, st15, st20, st25, st30, st35, st40, st45);
	component StateMachine is
		port(
			clk, rst, btn					: in std_logic;
			nickel_in, dime_in, quarter_in	: in std_logic;
			candy_out, nickel_out, dime_out	: out std_logic;
			present_state_out				: out state
		);
	end component;
end package;

package body vending_machine is end package body;
-- END VendingMachine

-- BEGIN TimeSystem
library ieee;
use ieee.std_logic_1164.all;
package time_system is
	component Clock is
		port(
			CLK_IN	: in std_logic;
			CLK_OUT	: out std_logic
		);
	end component;
	component Delay is
		port (
			CLK		: in  std_logic;
			RST		: in  std_logic;
			START	: in  std_logic;
			DONE	: out std_logic
		);
	end component;
end package;

package body time_system is end package body;
-- END TimeSystem

-- BEGIN DisplaySegment
library ieee;
use ieee.std_logic_1164.all;
package display_segment is
	component DisplayDecimal is
		port(
			EN	: in std_logic;
			DIG	: in std_logic_vector(3 downto 0);
			HEX	: out std_logic_vector(6 downto 0)
		);
	end component;
	component DisplayHexadecimal is
		port(
			EN	: in std_logic;
			DIG	: in std_logic_vector(3 downto 0);
			HEX	: out std_logic_vector(6 downto 0)
		);
	end component;
end package;

package body display_segment is end package body;
-- END DisplaySegment
