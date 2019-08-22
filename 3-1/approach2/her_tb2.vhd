LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
ENTITY up_down_counter_tb IS
END up_down_counter_tb;
ARCHITECTURE beh OF up_down_counter_tb IS
component up_down_counter
PORT
(
clk, up_down : in std_logic;
cnt : out std_logic_vector(3 downto 0)
);
end component;
signal TA : STD_LOGIC;
signal TB : STD_LOGIC;
signal TC: STD_LOGIC_VECTOR(3 downto 0);
BEGIN
uut: up_down_counter port map (
clk => TA,
up_down => TB,
cnt => TC
);

Process
Begin
TA <='0'; TB <='1';
Wait for 5 ns;
TA <='1';
Wait for 5 ns;
TA <='0';
Wait for 5 ns;
TA <='1';
Wait for 5 ns;
TA <='0';
Wait for 5 ns;
TA <='1';
Wait for 5 ns;
TA <='0'; TB <='0';
Wait for 5 ns;
TA <='1';
Wait for 5 ns;
TA <='0';
Wait for 5 ns;
TA <='1';
Wait for 5 ns;
TA <='0';
Wait for 5 ns;
TA <='1';
Wait for 5 ns;
End process;

END beh;