LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.all;

entity top is								--port list for top
port(clk, switch0, switch1, switch2, switch3:  in std_logic;
lfsr_display : out std_logic_vector(3 downto 0);
calc_display : out std_logic_vector(1 downto 0));
end top;

architecture arch of top is					--define structures (lower level)
											--define signals to connect together
signal clk2: std_logic;
signal reset: std_logic;
signal load: std_logic;
signal lfsr_o: std_logic_vector(3 downto 0);
signal dff_out: std_logic_vector(3 downto 0);

											--define components

component dffa is

port ( load, clear, clk  : IN std_logic;
		din : IN std_logic_vector(3 downto 0);
       qout : OUT std_logic_vector(3 downto 0) );

end component;

component clock_div IS

PORT ( clk : IN STD_LOGIC;
	clkout : OUT STD_LOGIC);

END component;

component fsm IS
PORT(
		SW0, SW1, CLK : in std_logic;
		CLR, LD : out std_logic
);
END component;

component lfsr_circuit IS
PORT (
    CLK: IN STD_LOGIC;
    rst: in std_logic;
    lfsr_out: OUT STD_LOGIC_VECTOR(3 DOWNTO 0) 
    );
end component;

component calc IS
PORT
(
B3, B4 : IN STD_LOGIC;
dout3, dout4 : IN STD_LOGIC_vector(1 downto 0);
F : OUT STD_LOGIC_vector(1 downto 0)
);
END component;

											
begin	
lfsr_display <= dff_out;									--define chip
dffa1: dffa port map(load, reset, clk2, lfsr_o, dff_out);
clock_div1: clock_div port map(clk, clk2);
fsm1: fsm port map(switch0, switch1, clk2, reset, load);
lfsr_circuit1: lfsr_circuit port map(clk2, reset, lfsr_o);
calc1: calc port map(switch2, switch3, dff_out(1 downto 0), dff_out(3 downto 2), calc_display);

end arch;
