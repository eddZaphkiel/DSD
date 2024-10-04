library ieee;
use ieee.std_logic_1164.all;

entity sr_flip_flop_async is
  port (
    s    : in  std_logic;
    r    : in  std_logic;
    clk  : in  std_logic;
    set_n : in  std_logic;
    clr_n : in  std_logic;
    q0   : out std_logic
  );
end sr_flip_flop_async;

architecture flipflop of sr_flip_flop_async is
begin
  process (clk, set_n, clr_n)
  begin
    if clr_n = '1' then
      q0 <= '0';
    elsif set_n = '1' then
      q0 <= '1';
    elsif rising_edge(clk) then
      if s = '1' and r = '0' then
        q0 <= '1';
      elsif s = '0' and r = '1' then
        q0 <= '0';
      elsif s = '1' and r = '1' then 
        q0 <= 'X'; 
      end if; 
    end if;
  end process;
end flipflop;