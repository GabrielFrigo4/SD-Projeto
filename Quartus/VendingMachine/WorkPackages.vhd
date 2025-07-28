-- BEGIN VendingMachine
library ieee;
use ieee.std_logic_1164.all;
package vending_machine is
	type state is (st0, st5, st10, st15, st20, st25, st30, st35, st40, st45, stcandy);
	component StateMachine is
		port(
			clk, rst, tss							: in std_logic;
			coin										: in std_logic_vector(1 downto 0);
			present_state							: out state;
			candy_out								: out std_logic;
			nickel_out, dime_out					: out std_logic_vector(1 downto 0)
		);
	end component;
end package;

package body vending_machine is end package body;
-- END VendingMachine

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
	component DisplayHexdecimal is
		port(
			EN	: in std_logic;
			DIG	: in std_logic_vector(3 downto 0);
			HEX	: out std_logic_vector(6 downto 0)
		);
	end component;
end package;

package body display_segment is end package body;
-- END DisplaySegment
