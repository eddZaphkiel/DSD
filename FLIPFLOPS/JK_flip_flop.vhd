library ieee;
use ieee.std_logic_1164.all;

entity jk_flip_flop is
	port (
		j    : in  std_logic;
		k    : in  std_logic;
		clk  : in  std_logic;
		q0   : out std_logic
	);
end jk_flip_flop;

architecture flipflop of jk_flip_flop is
	signal q_int : std_logic := '0';
begin
	process (clk)
	begin
		if rising_edge(clk) then
			if j = '0' and k = '0' then
				q_int <= q_int; -- Hold state
			elsif j = '0' and k = '1' then
				q_int <= '0'; -- Reset
			elsif j = '1' and k = '0' then
				q_int <= '1'; -- Set
			elsif j = '1' and k = '1' then
				q_int <= not q_int; -- Toggle
			end if;
		end if;
	end process;

	q0 <= q_int;
end flipflop;