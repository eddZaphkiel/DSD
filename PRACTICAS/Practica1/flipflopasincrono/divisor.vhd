library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity divisor is
	generic (
		input_freq  : integer := 50000000;  -- Frecuencia de entrada en Hz
      desired_freq : integer := 1         -- Frecuencia deseada en Hz
   );
   port (
      clk_in  : in  std_logic;            -- Reloj de entrada
      clk_out : out std_logic             -- Reloj de salida dividido
    );
end divisor;


architecture division of divisor is
   constant max_count  : integer := input_freq / (2 * desired_freq);
   signal count        : integer range 0 to max_count := 0;
   signal clk_reg      : std_logic := '0';
begin
   process (clk_in)
   begin
		if rising_edge(clk_in) then
			if count < max_count - 1 then
				count <= count + 1;
         else
            count <= 0;
            clk_reg <= not clk_reg;
         end if;
      end if;
   end process;

   clk_out <= clk_reg;
end division;