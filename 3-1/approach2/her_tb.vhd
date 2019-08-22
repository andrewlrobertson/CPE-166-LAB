LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
ENTITY clock_div_tb IS
END clock_div_tb;
ARCHITECTURE beh OF clock_div_tb IS
component clock_div
PORT
(
    clk : IN STD_LOGIC;
    clkout : OUT STD_LOGIC
);
end component;
signal TA : STD_LOGIC;
signal TC: STD_LOGIC;
BEGIN
uut: clock_div port map (
clk => TA,
clkout => TC
);
Process
Begin
TA <='1';
Wait for 5 ns;
TA <='0';
Wait for 5 ns;
End process;

END beh;