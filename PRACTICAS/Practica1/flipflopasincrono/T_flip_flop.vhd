library ieee;
use ieee.std_logic_1164.all;

entity t_flip_flop is
	port (
		t    	: 	in  std_logic;
		clk  	: 	in  std_logic;
		q0   	: 	out std_logic
	);
end t_flip_flop;

architecture flipflop of t_flip_flop is
	signal q_int : std_logic := '0';
begin
	process (clk)
	begin
		if rising_edge(clk) then
			if t = '1' then
				q_int <= not q_int;
			end if;
		end if;
	end process;

	q0 <= q_int;
end flipflop;