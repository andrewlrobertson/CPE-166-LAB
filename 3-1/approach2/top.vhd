LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

entity top is								--port list for top
port(clk, up_d:  in std_logic;
out_display : out std_logic_vector(7 downto 0);
board_display: out std_logic_vector(7 downto 0):="11111110");
end top;

architecture arch of top is					--define structures (lower level)
											--define signals to connect together
signal clk2: std_logic:='0';
signal count: std_logic_vector(3 downto 0):="0000";

											--define components
component up_down_counter
	port(clk, up_down : in std_logic;
		cnt : out std_logic_vector(3 downto 0));
end component;

component clock_div
	port(clk : IN STD_LOGIC;
		clkout : OUT STD_LOGIC);
end component;

component seven_segment
	port(int_num : IN STD_LOGIC_VECTOR(3 downto 0);
		seven_num : OUT STD_LOGIC_VECTOR(7 downto 0));
end component;
											
begin										--define chip
up_down_counter1: up_down_counter port map(clk2,up_d,count);
clock_div1: clock_div port map(clk, clk2);
seven_segment1: seven_segment port map(count, out_display);
end arch;