LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
USE work.vending_machine.ALL;

ENTITY StateMachine_tb IS
END StateMachine_tb;

ARCHITECTURE behavior OF StateMachine_tb IS

	-- Sinais para ligar ao DUT
	SIGNAL clk			: std_logic := '0';
	SIGNAL rst			: std_logic := '0';
	SIGNAL tss			: std_logic := '0';
	SIGNAL coin			: std_logic_vector(1 DOWNTO 0) := "00";

	-- Saídas do DUT
	SIGNAL present_state	: state;
	SIGNAL candy_out		: std_logic;
	SIGNAL nickel_out		: std_logic_vector(1 DOWNTO 0);
	SIGNAL dime_out		: std_logic_vector(1 DOWNTO 0);
	SIGNAL led				: std_logic_vector(2 DOWNTO 0);

	-- Clock period constant
	CONSTANT clk_period : time := 10 ns;

BEGIN

	-- Instancia o DUT
	dut: entity work.StateMachine
		PORT MAP (
			clk			=> clk,
			rst			=> rst,
			tss			=> tss,
			coin		=> coin,
			present_state => present_state,
			candy_out	=> candy_out,
			nickel_out	=> nickel_out,
			dime_out		=> dime_out,
			led			=> led
		);

	-- Clock generation
	clk_process : PROCESS
	BEGIN
		WHILE now < 500 ns LOOP
			clk <= '0';
			WAIT FOR clk_period/2;
			clk <= '1';
			WAIT FOR clk_period/2;
		END LOOP;
		WAIT;
	END PROCESS;

	-- Stimulus process
	stim_proc: PROCESS
	BEGIN
		-- Reset inicial
		rst <= '1';
		WAIT FOR clk_period;
		rst <= '0';
		WAIT FOR clk_period;

		-- Inserir nickel (01)
		coin <= "01";
		tss <= '1';
		WAIT FOR clk_period;
		tss <= '0';
		WAIT FOR clk_period;

		-- Inserir dime (10)
		coin <= "10";
		tss <= '1';
		WAIT FOR clk_period;
		tss <= '0';
		WAIT FOR clk_period;

		-- Inserir quarter (11)
		coin <= "11";
		tss <= '1';
		WAIT FOR clk_period;
		tss <= '0';
		WAIT FOR clk_period;

		-- Espera para observar saídas
		WAIT FOR 200 ns;

		-- Reset final
		rst <= '1';
		WAIT FOR clk_period;
		rst <= '0';

		WAIT;
	END PROCESS;

END behavior;
