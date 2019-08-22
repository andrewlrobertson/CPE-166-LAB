LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
ENTITY hamming_tb IS
END hamming_tb;
ARCHITECTURE test OF hamming_tb IS
component hamming
PORT
(
		four_bit_in : in std_logic_vector(3 downto 0);
		seven_bit_out : out std_logic_vector(6 downto 0)
);
end component;

signal four_tb : STD_LOGIC_vector(3 downto 0);
signal seven_tb : STD_LOGIC_vector(6 downto 0);

BEGIN
uut: hamming port map (
four_bit_in => four_tb,
seven_bit_out => seven_tb
);

Process
Begin
four_tb <="1011";
Wait for 100 ns;
four_tb <="0001";
Wait for 100 ns;
four_tb <="0010";
Wait for 100 ns;
four_tb <="0011";
Wait for 100 ns;
four_tb <="0100";
Wait;
End process;

END test;