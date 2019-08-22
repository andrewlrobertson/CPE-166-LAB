LIBRARY IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.std_logic_arith.all;
ENTITY lab3Part4_tb IS
END lab3Part4_tb;
ARCHITECTURE beh OF lab3Part4_tb IS
component fsm
PORT
(
    clk, reset : IN std_logic;
    R, G, Y : OUT std_logic
);
end component;
signal CLKC : STD_LOGIC := '0';
signal RESETC: STD_LOGIC;
signal RC : STD_LOGIC;
signal GC: STD_LOGIC;
signal YC : STD_LOGIC;
BEGIN
uut: fsm port map (
    clk => CLKC,
    reset => RESETC,
    R => RC,
    G => GC,
    Y => YC
);

Process
    Begin
    CLKC <= not CLKC;
    wait for 1ns;
End process;

Process
    Begin
    RESETC <='1';
    Wait for 6 ns;
    RESETC <= '0';
    wait;
End process;

END beh;