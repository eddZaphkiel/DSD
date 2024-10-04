library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity sincrono is
    port(
        CLK : in  std_logic;                   		-- Reloj de entrada (50 MHz)
        D   : in  std_logic_vector(1 downto 0);		-- Entradas para los flip-flops T
        Q   : out std_logic_vector(1 downto 0) 		-- Salidas de los flip-flops T
    );
end sincrono;

architecture registro of sincrono is
    component divisor is
        generic (
            input_freq   : integer := 50000000; -- Frecuencia de entrada en Hz
            desired_freq : integer := 1         -- Frecuencia deseada en Hz
        );
        port (
            clk_in  : in  std_logic;            -- Reloj de entrada
            clk_out : out std_logic             -- Reloj de salida dividido
        );
    end component;

    -- Componente Flip-Flop Tipo T
    component T_flip_flop is
        port (
            T   : in  std_logic; -- Entrada T
            CLK : in  std_logic; -- Reloj
            Q0  : out std_logic  -- Salida Q
        );
    end component;

    signal clk_div : std_logic;                   -- Reloj dividido
    signal Q_int   : std_logic_vector(1 downto 0);-- Señales internas de salida
begin

    -- Instanciación del Divisor de Frecuencia
    U_DIV: divisor
        generic map (
            input_freq   => 50000000, -- Frecuencia de entrada (50 MHz)
            desired_freq => 1         -- Frecuencia deseada (1 Hz)
        )
        port map (
            clk_in  => CLK,     -- Conectar al reloj de 50 MHz
            clk_out => clk_div  -- Salida del reloj dividido a 1 Hz
        );

    -- Instanciación del primer Flip-Flop Tipo T
    TFF0: T_flip_flop
        port map (
            T   => D(0),    -- Entrada T del flip-flop controlada por D(0)
            CLK => clk_div, -- Reloj dividido a 1 Hz
            Q0  => Q_int(0) -- Salida interna Q_int(0)
        );

    -- Instanciación del segundo Flip-Flop Tipo T
    TFF1: T_flip_flop
        port map (
            T   => D(1),    -- Entrada T del flip-flop controlada por D(1)
            CLK => clk_div, -- Reloj dividido a 1 Hz
            Q0  => Q_int(1) -- Salida interna Q_int(1)
        );

    -- Asignación de las salidas internas a las salidas de la entidad
    Q <= Q_int;

end registro;
