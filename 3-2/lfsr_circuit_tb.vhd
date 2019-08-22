LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
ENTITY lfsr_circuit_tb IS
END lfsr_circuit_tb;

ARCHITECTURE beh OF lfsr_circuit_tb IS
	component lfsr_circuit
	PORT
	(
		CLK: IN STD_LOGIC;
		rst: in std_logic;
		lfsr_out: OUT STD_LOGIC_VECTOR(3 DOWNTO 0) 
	);
	end component;

	signal clk_tb : STD_LOGIC :='0';
	signal rst_tb: STD_LOGIC;
	signal out_tb: STD_LOGIC_VECTOR(3 DOWNTO 0);
	BEGIN
	uut: lfsr_circuit port map (
		clk => clk_tb,
		rst => rst_tb,
		lfsr_out => out_tb
	);
	process begin 
		clk_tb <= NOT clk_tb;
		Wait for 1 ns;
	end process;
	Process	Begin
		rst_tb <='1';
		Wait for 1 ns;
		rst_tb <='0';
		Wait;
	End process;
END beh;