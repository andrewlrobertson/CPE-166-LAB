LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
ENTITY dffa_tb IS
END dffa_tb;
ARCHITECTURE imp OF dffa_tb IS
component dffa
PORT
(
		load, clear, clk  : IN std_logic;
		din : IN std_logic_vector(3 downto 0);
       qout : OUT std_logic_vector(3 downto 0)
);
end component;
signal Tload, Tclear, Tclk : STD_LOGIC;
signal Tdin, Tqout : STD_LOGIC_VECTOR(3 downto 0) := "1010";

BEGIN
uut: dffa port map (
load => Tload,
clear => Tclear,
clk => Tclk,
din => Tdin,
qout => Tqout
);

Process
Begin
Tclk <='1';
Wait for 5 ns;
Tclk <='0';
Wait for 5 ns;
End process;

Process
Begin
Tload <= '0';
Tclear <= '1';
Wait for 20 ns;
Tclear <= '0';
Tload <= '1';
Wait for 20 ns;
End process;

END imp;