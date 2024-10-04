library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity lcd is
    port(
        clk   : in  std_logic;
        rs    : out std_logic;
        rw    : out std_logic;
        e     : out std_logic;
        data  : out std_logic_vector(7 downto 0)
    );
end lcd;

architecture mensaje of lcd is
    constant freq        : integer := 50000000; -- Frecuencia del reloj de entrada
    constant delay_100ms : integer := freq / 10; -- Contador para 100ms

    type state_type is (
        init,
        function_set_1,
        function_set_2,
        function_set_3,
        function_set_4,
        display_on,
        clear_display,
        entry_mode_set,
        write_t,
        write_e,
        write_space,
        write_a,
        write_m,
        write_o,
        finish
    );

    signal state        : state_type := init;
    signal counter      : integer range 0 to delay_100ms := 0;
    signal e_pulse      : std_logic := '0';
begin

    process(clk)
    begin
        if rising_edge(clk) then
            if counter < delay_100ms then
                counter <= counter + 1;
            else
                counter <= 0;
                e_pulse <= '1';

                case state is
                    when init =>
                        rs <= '0';
                        rw <= '0';
                        data <= X"30"; -- Function Set command
                        state <= function_set_1;

                    when function_set_1 =>
                        rs <= '0';
                        rw <= '0';
                        data <= X"30";
                        state <= function_set_2;

                    when function_set_2 =>
                        rs <= '0';
                        rw <= '0';
                        data <= X"30";
                        state <= function_set_3;

                    when function_set_3 =>
                        rs <= '0';
                        rw <= '0';
                        data <= X"20"; -- Set to 4-bit mode
                        state <= function_set_4;

                    when function_set_4 =>
                        rs <= '0';
                        rw <= '0';
                        data <= X"28"; -- Function Set: 4-bit, 2 line, 5x8 dots
                        state <= display_on;

                    when display_on =>
                        rs <= '0';
                        rw <= '0';
                        data <= X"0C"; -- Display ON, Cursor OFF
                        state <= clear_display;

                    when clear_display =>
                        rs <= '0';
                        rw <= '0';
                        data <= X"01"; -- Clear Display
                        state <= entry_mode_set;

                    when entry_mode_set =>
                        rs <= '0';
                        rw <= '0';
                        data <= X"06"; -- Entry Mode Set
                        state <= write_t;

                    when write_t =>
                        rs <= '1';
                        rw <= '0';
                        data <= X"54"; -- ASCII 'T'
                        state <= write_e;

                    when write_e =>
                        rs <= '1';
                        rw <= '0';
                        data <= X"65"; -- ASCII 'e'
                        state <= write_space;

                    when write_space =>
                        rs <= '1';
                        rw <= '0';
                        data <= X"20"; -- ASCII space ' '
                        state <= write_a;

                    when write_a =>
                        rs <= '1';
                        rw <= '0';
                        data <= X"61"; -- ASCII 'a'
                        state <= write_m;

                    when write_m =>
                        rs <= '1';
                        rw <= '0';
                        data <= X"6D"; -- ASCII 'm'
                        state <= write_o;

                    when write_o =>
                        rs <= '1';
                        rw <= '0';
                        data <= X"6F"; -- ASCII 'o'
                        state <= finish;

                    when finish =>
                        rs <= '0';
                        rw <= '0';
                        data <= (others => '0'); -- Idle state
                        -- Aquí podrías reiniciar el proceso si lo deseas
                        -- state <= init;
                    when others =>
                        null;
                end case;

                e_pulse <= '0';
            end if;
        end if;
    end process;

    e <= e_pulse;

end mensaje;
