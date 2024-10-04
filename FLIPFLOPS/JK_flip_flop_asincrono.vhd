library ieee;
use ieee.std_logic_1164.all;

entity jk_flip_flop_async is
  port (
    j    : in  std_logic;
    k    : in  std_logic;
    clk  : in  std_logic;
    set_n : in  std_logic;
    clr_n : in  std_logic;
    q0   : out std_logic
  );
end jk_flip_flop_async;

architecture flipflop of jk_flip_flop_async is
begin
  process (clk, set_n, clr_n)
  begin
    if clr_n = '1' then
      q0 <= '0';
    elsif set_n = '1' then
      q0 <= '1';
    elsif rising_edge(clk) then
      if j = '0' and k = '0' then
        q0 <= q0; 
      elsif j = '0' and k = '1' then
        q0 <= '0'; 
      elsif j = '1' and k = '0' then
        q0 <= '1'; 
      elsif j = '1' and k = '1' then
        q0 <= not q0; 
      end if;
    end if;
  end process;
end flipflop;