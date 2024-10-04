library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity decoregistro is
    port (
        CLK          : in  std_logic;
        -- Conexiones del teclado
        COLUMNAS     : in  std_logic_vector(3 downto 0);  -- Columnas del teclado (entradas)
        FILAS        : out std_logic_vector(3 downto 0);  -- Filas del teclado (salidas)
        -- Display de 7 segmentos
        SEGMENTOS    : out std_logic_vector(6 downto 0);
        KEY_PRESSED  : out std_logic;                     -- Indicador de tecla presionada
        SET          : in  std_logic;                     -- Señal del botón SET (crudo)
        CLR          : in  std_logic;                     -- Señal del botón CLR (crudo)
        SEGMENTO     : out std_logic;
        CTRL         : out std_logic
    );
end decoregistro;

architecture estructura of decoregistro is

    -- Declaración de Componentes
    component keypad
        port (
            CLK        : in  std_logic;
            COLUMNAS   : in  std_logic_vector(3 downto 0);
            FILAS      : out std_logic_vector(3 downto 0);
            BOTON_PRES : out std_logic_vector(7 downto 0);
            IND        : out std_logic
        );
    end component;

    component decoder
        port (
            key_pres : in  std_logic_vector(7 downto 0);
            key_7seg : out std_logic_vector(6 downto 0)
        );
    end component;

    component latchRS
        port(
            clk     : in  std_logic;  
            set_btn : in  std_logic;  
            clr_btn : in  std_logic;  
            s       : out std_logic
        );
    end component;

    component registro is
        port (
            d   : in  std_logic_vector(6 downto 0);
            clk : in  std_logic;
            s   : in  std_logic;
            q   : out std_logic_vector(6 downto 0)
        );
    end component;

    component debouncer
        generic (
            debounce_time : integer := 20000  -- Tiempo de antirrebote en microsegundos (20 ms)
        );
        port (
            clk        : in  std_logic;       -- Reloj del sistema (50 MHz)
            button_in  : in  std_logic;       -- Señal de entrada del botón
            button_out : out std_logic        -- Señal de salida filtrada
        );
    end component;

    -- Señales internas
    signal BOTON_PRES    : std_logic_vector(7 downto 0);
    signal key_7seg      : std_logic_vector(6 downto 0);
    signal selection     : std_logic;
    signal numero        : std_logic_vector(6 downto 0);
    signal set_btn_deb   : std_logic;  -- Señal SET filtrada
    signal clr_btn_deb   : std_logic;  -- Señal CLR filtrada

begin

    -- Instancia del Componente del Teclado
    keypad_inst: keypad
        port map (
            CLK        => CLK,
            COLUMNAS   => COLUMNAS,
            FILAS      => FILAS,
            BOTON_PRES => BOTON_PRES,
            IND        => KEY_PRESSED
        );

    -- Instancia del Componente del Decodificador
    decoder_inst: decoder
        port map (
            key_pres => BOTON_PRES,
            key_7seg => numero
        );

    -- Instancia del Debouncer para SET
    debouncer_set_inst: debouncer
        generic map (
            debounce_time => 200000  -- 20 ms
        )
        port map (
            clk        => CLK,
            button_in  => SET,
            button_out => set_btn_deb
        );

    -- Instancia del Debouncer para CLR
    debouncer_clr_inst: debouncer
        generic map (
            debounce_time => 20000  -- 20 ms
        )
        port map (
            clk        => CLK,
            button_in  => CLR,
            button_out => clr_btn_deb
        );

    -- Instancia del Componente del Latch RS con Señales Filtradas
    controler_inst: latchRS
        port map (
            clk     => CLK,
            set_btn => set_btn_deb,  -- Conexión a la señal SET filtrada
            clr_btn => clr_btn_deb,  -- Conexión a la señal CLR filtrada
            s       => selection
        );

    -- Instancia del Componente Registro
    registro_inst: registro
        port map (
            d   => numero,
            clk => CLK,
            s   => selection,
            q   => SEGMENTOS
        );

    -- Asignación Adicional
    SEGMENTO <= '0';
    CTRL <= selection;
end estructura;
