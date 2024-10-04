library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity keypad is
    generic(
        FREQ_CLK : INTEGER := 50000000  -- Frecuencia de la tarjeta
    );
    port(
        CLK        : IN  STD_LOGIC;                        -- Reloj
        COLUMNAS   : IN  STD_LOGIC_VECTOR(3 DOWNTO 0);     -- Conectado a las columnas del teclado
        FILAS      : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);     -- Conectado a las filas del teclado
        BOTON_PRES : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);     -- Salida de filas y columnas de la tecla presionada
        IND        : OUT STD_LOGIC                         -- Bandera que indica si una tecla está presionada
    );
end keypad;

architecture controlador of keypad is

    -- Declaración del componente divisor
    component divisor is
        generic (
            input_freq   : INTEGER := 50000000;  -- Frecuencia de entrada en Hz
            desired_freq : INTEGER := 1          -- Frecuencia deseada en Hz
        );
        port (
            clk_in  : in  STD_LOGIC;             -- Reloj de entrada
            clk_out : out STD_LOGIC              -- Reloj de salida dividido
        );
    end component;

    -- Señales para los divisores de frecuencia
    signal clk_1ms  : STD_LOGIC;
    signal clk_10ms : STD_LOGIC;

    -- Declaración de tipos de arreglos
    type reg_array_type is array (0 to 15) of STD_LOGIC_VECTOR(7 downto 0);

    -- Declaración de arreglos para registros de anti-rebote
    signal REG_B : reg_array_type := (others => (others => '0'));

    -- Señales internas
    signal FILA_REG_S : STD_LOGIC_VECTOR(3 DOWNTO 0) := (OTHERS => '0');
    signal FILA       : INTEGER RANGE 0 TO 3 := 0;

begin

    FILAS <= FILA_REG_S;

    -- Instanciación del divisor para generar un pulso cada 1 ms
    Div1ms: divisor
        generic map (
            input_freq   => FREQ_CLK,
            desired_freq => 1000       -- 1 ms = 1 kHz
        )
        port map (
            clk_in  => CLK,
            clk_out => clk_1ms
        );

    -- Instanciación del divisor para generar un pulso cada 10 ms
    Div10ms: divisor
        generic map (
            input_freq   => FREQ_CLK,
            desired_freq => 100        -- 10 ms = 100 Hz
        )
        port map (
            clk_in  => CLK,
            clk_out => clk_10ms
        );

    -- Proceso que activa cada fila cada 10 ms
    process(clk_10ms)
    begin
        if rising_edge(clk_10ms) then
            FILA <= FILA + 1;
            if FILA = 4 then
                FILA <= 0;
            end if;
        end if;
    end process;

    -- Selección de la fila activa
    with FILA select
        FILA_REG_S <= "1000" when 0,
                      "0100" when 1,
                      "0010" when 2,
                      "0001" when others;

    -- Proceso que evita el efecto rebote de las teclas utilizando arreglos
    process(clk_1ms)
        variable key_index : integer;
    begin
        if rising_edge(clk_1ms) then
            for col in 0 to 3 loop
                key_index := FILA * 4 + (3 - col);  -- Calcula el índice de la tecla
                REG_B(key_index) <= REG_B(key_index)(6 downto 0) & COLUMNAS(col);
            end loop;
        end if;
    end process;

    -- Detección de tecla presionada y actualización de BOTON_PRES e IND
    process(CLK)
        variable key_found : boolean;
        variable row_bits  : STD_LOGIC_VECTOR(3 downto 0);
        variable col_bits  : STD_LOGIC_VECTOR(3 downto 0);
        variable row_index : integer;
        variable col_index : integer;
    begin
        if rising_edge(CLK) then
            key_found := false;
            for i in 0 to 15 loop
                if REG_B(i) = "11111111" then
                    -- Calcular índices de fila y columna
                    row_index := i / 4;  -- División entera
                    col_index := 3 - (i mod 4);
                    -- Convertir row_index a código one-hot
                    case row_index is
                        when 0 => row_bits := "1000";
                        when 1 => row_bits := "0100";
                        when 2 => row_bits := "0010";
                        when others => row_bits := "0001";  -- cuando es 3
                    end case;
                    -- Convertir col_index a código one-hot
                    case col_index is
                        when 0 => col_bits := "0001";
                        when 1 => col_bits := "0010";
                        when 2 => col_bits := "0100";
                        when others => col_bits := "1000";  -- cuando es 3
                    end case;
                    -- Asignar a BOTON_PRES
                    BOTON_PRES <= row_bits & col_bits;
                    IND <= '1';
                    key_found := true;
                    exit;  -- Salir del bucle cuando se encuentra una tecla presionada
                end if;
            end loop;
            if not key_found then
                BOTON_PRES <= (others => '0');
                IND <= '0';
            end if;
        end if;
    end process;

end controlador;
