library ieee;
use ieee.std_logic_1164.all;

entity latchRS is
    port(
        clk     : in  std_logic;  -- Señal de reloj
        set_btn : in  std_logic;  -- Señal del botón SET
        clr_btn : in  std_logic;  -- Señal del botón CLR
        s       : out std_logic   -- Salida S
    );
end latchRS;

architecture seleccion of latchRS is
    signal q_reg : std_logic := '0';  -- Registro interno para almacenar el estado de S
begin
    process(clk)
    begin
        if rising_edge(clk) then
            if set_btn = '1' and clr_btn = '0' then
                q_reg <= '1';  -- Si SET = 1 y CLR = 0, S se establece en 1
            elsif clr_btn = '1' and set_btn = '0' then
                q_reg <= '0';  -- Si CLR = 1 y SET = 0, S se restablece a 0
            elsif set_btn = '1' and clr_btn = '1' then
                q_reg <= '1';  -- Si ambos son 1, S se establece en 1
            else  -- Ambos son 0
                q_reg <= q_reg;  -- Mantener el estado anterior de S
            end if;
        end if;
    end process;

    s <= q_reg;  -- Asignar el valor del registro a la salida
end seleccion;
