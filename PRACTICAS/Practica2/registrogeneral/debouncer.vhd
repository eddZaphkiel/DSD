library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity debouncer is
    generic (
        debounce_time : integer := 20000  -- Tiempo de antirrebote en microsegundos (20 ms)
    );
    port (
        clk        : in  std_logic;       -- Reloj del sistema (50 MHz)
        button_in  : in  std_logic;       -- Señal de entrada del botón o tecla
        button_out : out std_logic        -- Señal de salida filtrada
    );
end debouncer;

architecture behavioral of debouncer is
    constant clk_freq  : integer := 50000000;
    constant max_count : integer := (clk_freq / 1000000) * debounce_time;
    signal count       : integer range 0 to max_count := 0;
    signal button_reg  : std_logic := '0';
begin
    process (clk)
    begin
        if rising_edge(clk) then
            if button_in /= button_reg then
                count <= count + 1;
                if count >= max_count then
                    button_reg <= button_in;
                    button_out <= button_in;
                    count <= 0;
                end if;
            else
                count <= 0;
            end if;
        end if;
    end process;
end behavioral;
