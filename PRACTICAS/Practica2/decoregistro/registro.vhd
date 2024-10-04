library ieee;
use ieee.std_logic_1164.all;

entity registro is
    port (
        d   : in  std_logic_vector(6 downto 0);
        clk : in  std_logic;
        s   : in  std_logic;  -- Señal para control de retroalimentación
        q   : out std_logic_vector(6 downto 0)
    );
end registro;

architecture behavioral of registro is
    signal q_int     : std_logic_vector(6 downto 0) := (others => '0');
begin
    process (clk)
    begin
        if rising_edge(clk) then
            if s = '1' then
                -- Retroalimentación: cuando s es 1, la salida q se retroalimenta a la entrada d
                q_int <= q_int;
            else
                -- Cuando s es 0, la entrada d controla la salida
                q_int <= d;
            end if;
        end if;
    end process;

    q <= q_int;  -- La salida q sigue el valor almacenado en q_int
end behavioral;
