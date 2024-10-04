library ieee;
use ieee.std_logic_1164.all;

entity d_flip_flop_async is
	port (
		d    : in  std_logic;
		clk  : in  std_logic;
		set_n : in  std_logic;
		clr_n : in  std_logic;
		q0   : out std_logic
	);
end d_flip_flop_async;

architecture flipflop of d_flip_flop_async is
begin
	process (clk, set_n, clr_n)
	begin
		if clr_n = '1' then
			q0 <= '0';
		elsif set_n = '1' then
			q0 <= '1';
		elsif rising_edge(clk) then
			q0 <= d;
		end if;
	end process;
end flipflop;