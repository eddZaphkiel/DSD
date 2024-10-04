library ieee;
use ieee.std_logic_1164.all;

entity d_flip_flop is
	port (
		d    : in  std_logic;
		clk  : in  std_logic;
		q0   : out std_logic
	);
end d_flip_flop;

architecture flipflop of d_flip_flop is
	signal q_int : std_logic := '0';
begin
	process (clk)
	begin
		if rising_edge(clk) then
			q_int <= d;
		end if;
	end process;

	q0 <= q_int;
end flipflop;