library ieee;
use ieee.std_logic_1164.all;

entity sr_flip_flop is
	port (
		s    : in  std_logic;
		r    : in  std_logic;
		clk  : in  std_logic;
		q0   : out std_logic
	);
end sr_flip_flop;

architecture flipflop of sr_flip_flop is
	signal q_int : std_logic := '0';
begin
	process (clk)
	begin
		if rising_edge(clk) then
			if s = '1' and r = '0' then
				q_int <= '1';
			elsif s = '0' and r = '1' then
				q_int <= '0';
			elsif s = '1' and r = '1' then 
				q_int <= 'X'; 
			end if; 
		end if;
	end process;

	q0 <= q_int;
end flipflop;