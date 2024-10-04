library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux is
    Port (
        s : in  std_logic_vector(1 downto 0);
        a : in  std_logic;
        b : in  std_logic;
        c : in  std_logic;
        d : in  std_logic;
        y : out std_logic
    );
end mux;

architecture seleccion of mux is
begin
    process(s, a, b, c, d)
    begin
        case s is
            when "00" => y <= a;
            when "01" => y <= b;
            when "10" => y <= c;
            when "11" => y <= d;
            when others => y <= '0';
        end case;
    end process;
end seleccion;
