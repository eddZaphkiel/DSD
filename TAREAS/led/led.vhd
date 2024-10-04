-- Descripción de una compuerta AND en VHDL

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity led is
    Port ( A : in STD_LOGIC;
           S : out STD_LOGIC);
end led;

architecture Behavioral of led is
begin
    S <= A; 
end Behavioral;