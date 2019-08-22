LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
ENTITY fsm IS
PORT(
		SW0, SW1, SW2, CLK : in std_logic;
		CLR, LDA, LDB, MUX : out std_logic
);
END fsm;

ARCHITECTURE finite OF fsm IS
TYPE state IS (s0, s1, s2, s3);
signal cs, ns: state := s0;

BEGIN

process (cs, SW0, SW1, SW2)							--ns block
begin
case cs is
  when s0 =>
	if (SW1 = '1') then
	  ns <= s1;
	else
	  ns <= s0; 
    end if;
  when s1 =>
	if (SW1 = '0') then
	  ns <= s2;
	else
      ns <= s1; 
	end if;
  when s2 =>
	if (SW2 = '1') then
      ns <= s3;
	else
      ns <= s2; 
    end if;
  when s3 =>
	if (SW0 = '1') then
      ns <= s0;
	else
      ns <= s3; 
    end if;
  when others => ns <= s0;
end case;
end process;

process (clk)					--cs block
begin
if(rising_edge(clk)) then
	if (SW0 = '1') then
		cs <= s0;
	else
		cs <= ns;
	end if;
end if;
end process;

process	(cs)						--signal block
begin
case cs is
  when s0 =>
	CLR <='1';
	MUX <='0';
	LDA <='0';
	LDB <='0';
  when s1 =>
	CLR <='0';
	MUX <='0';
	LDA <='1';
	LDB <='0';
  when s2 =>
	CLR <='0';
	MUX <='0';
	LDA <='0';
	LDB <='0';
  when s3 =>
	CLR <='0';
	MUX <='1';
	LDA <='0';
	LDB <='1';
  when others =>
 	CLR <='1';
	MUX <='0';
	LDA <='0';
	LDB <='0';
end case;
end process;

END finite;