LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

entity up_down_counter is
port(
clk, up_down : in std_logic;
cnt : out std_logic_vector(3 downto 0));
end up_down_counter;
architecture arch of up_down_counter is
signal tmp: std_logic_vector(3 downto 0):="0000";
begin

process (clk)
begin
if (rising_edge(clk)) then
    if (up_down = '1') then
        tmp <= tmp + 1;
        if (tmp = "1001") then
            tmp <= "0000";
        end if;
    else
        tmp <= tmp - 1;
        if (tmp = "0000") then
            tmp <= "1001";
        end if;
    end if;
end if;
end process;

cnt <= tmp;
end arch;