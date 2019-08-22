LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

ENTITY calc IS
PORT
(
B3, B4 : IN STD_LOGIC;
dout3, dout4 : IN STD_LOGIC_vector(1 downto 0);
F : OUT STD_LOGIC_vector(1 downto 0)
);
END calc;

ARCHITECTURE behavior OF calc IS
signal temp : std_logic_vector(1 downto 0);
BEGIN
	temp <= B3 & B4;
	process (temp, dout3, dout4)
	begin
		case (temp) is
			when "00" => if (dout4 > dout3) then
			             F <= "01";
			             else
			             F <= "00";
			             end if;
			when "01" => F <= (dout4 + dout3);
			when "10" => F <= (dout4 or dout3);
			when "11" => F <= (dout4 and dout3);
			when others => F <= "00";
		end case;
	end process;
END behavior;