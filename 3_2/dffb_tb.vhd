LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
ENTITY dffb_tb IS
END dffb_tb;
ARCHITECTURE imp OF dffb_tb IS
component dffb
PORT
(
		load, clear, clk  : IN std_logic;
		din : IN std_logic_vector(7 downto 1);
       qout : OUT std_logic_vector(7 downto 1)
);
end component;
signal Tload, Tclear, Tclk : STD_LOGIC;
signal Tdin, Tqout : STD_LOGIC_VECTOR(7 downto 1) := "0001010";

BEGIN
uut: dffb port map (
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