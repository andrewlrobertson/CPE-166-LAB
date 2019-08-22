LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

entity top is								--port list for top
port(clk, switch0, switch1, switch2:  in std_logic;
out_display : out std_logic_vector(7 downto 1);
end top;

architecture arch of top is					--define structures (lower level)
											--define signals to connect together
signal clk2: std_logic;
signal reset: std_logic;
signal loada: std_logic;
signal loadb: std_logic;
signal mux_s: std_logic;
signal lfsr_o: std_logic_vector(3 downto 0);
signal hamming_out: std_logic_vector(7 downto 1);
signal dffa_out: std_logic_vector(3 downto 0);
signal dffb_out: std_logic_vector(7 downto 1);


											--define components

component dffa is

port ( load, clear, clk  : IN std_logic;
		din : IN std_logic_vector(3 downto 0);
       qout : OUT std_logic_vector(3 downto 0) );

end component;

component dffb is

port ( load, clear, clk  : IN std_logic;
		din : IN std_logic_vector(7 downto 1);
       qout : OUT std_logic_vector(7 downto 1) );

end component;

component clock_div IS

PORT ( clk : IN STD_LOGIC;
	clkout : OUT STD_LOGIC);

END component;

component fsm IS
PORT(
		SW0, SW1, SW2, CLK : in std_logic;
		CLR, LDA, LDB, MUX : out std_logic
);
END component;

component hamming IS
PORT(
		four_bit_in : in std_logic_vector(3 downto 0);
		seven_bit_out : out std_logic_vector(6 downto 0)
);
END component;

component lfsr_circuit IS
PORT (
    CLK: IN STD_LOGIC;
    rst: in std_logic;
    lfsr_out: OUT STD_LOGIC_VECTOR(3 DOWNTO 0) 
    );
end component;

component MUX is

port (
		S: IN std_logic;
		D0 : IN STD_LOGIC_VECTOR(4 downto 1);
		D1 : IN STD_LOGIC_VECTOR(7 downto 1);	   
	    muxOut : OUT std_logic_VECTOR(7 downto 1) 
	   );
end component;

											
begin										--define chip
dffa1: dffa port map(loada, reset, clk2, lfsr_o, dffa_out);
dffb1: dffb port map(loadb, reset, clk2, hamming_out, dffb_out);
clock_div1: clock_div port map(clk, clk2);
fsm1: fsm port map(switch0, switch1, switch2, clk2, reset, loada, loadb, mux_s);
hamming1: hamming port map(dffa_out, hamming_out);
lfsr_circuit1: lfsr_circuit port map(clk2, reset, lfsr_o);
MUX1: MUX port map(mux_s, dffa_out, dffb_out, out_display);
end arch;