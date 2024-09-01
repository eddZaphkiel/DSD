library ieee;
use ieee.std_logic_1164.all;

entity divisor is
    port (
        clk_in : in std_logic;  -- Entrada del cristal oscilador de la FPGA
        led_1hz : buffer std_logic; -- LED a 1hz (pin)
        led_4hz : buffer std_logic -- Salida para el LED de 4Hz
    );
end entity divisor;

architecture behavior of divisor is
    constant clk_in_frequency : integer := 50000000; -- Define la frecuencia de entrada aquí (ejemplo: 50MHz)
    signal contador_1hz : integer range 0 to (clk_in_frequency / 2) - 1; -- Contador para 1Hz
    signal contador_4hz : integer range 0 to (clk_in_frequency / 8) - 1; -- Contador para 4Hz
begin
    process(clk_in)
    begin
        if rising_edge(clk_in) then -- Este if solamente se ejecuta ene l flanco de subida del pulso de entrada
            if contador_1hz = (clk_in_frequency / 2) - 1 then
                contador_1hz <= 0;
                led_1hz <= not led_1hz;
            else
                contador_1hz <= contador_1hz + 1;
            end if;

            if contador_4hz = (clk_in_frequency / 8) - 1 then
                contador_4hz <= 0;
                led_4hz <= not led_4hz;
            else
                contador_4hz <= contador_4hz + 1;
            end if;
        end if;
    end process;
end architecture behavior;