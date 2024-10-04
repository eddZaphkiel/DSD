library ieee;
use ieee.std_logic_1164.all;

entity registro is
    port (
        d   : in	std_logic_vector(3 downto 0);
        clk : in	std_logic;
		  q	: out	std_logic_vector(3 downto 0);
        s   : in	std_logic_vector(1 downto 0)
    );
end registro;

architecture arreglo of registro is
	component D_flip_flop is
		 port (
			  D   : in  STD_LOGIC;
			  CLK : in  STD_LOGIC;
			  Q0  : out STD_LOGIC
		 );
	end component;

   signal q_int     	: 	std_logic_vector(3 downto 0) := (others => '0');
	signal inputs	  	: 	std_logic_vector(3 downto 0);
begin
	
	process(s, d, q_int)
	begin
		case s is
			when "00" => inputs <= d;
			when "01" => inputs <= q_int;
			when "10" => inputs <= q_int(2 downto 0) & q_int(3);
			when "11" => inputs <= q_int(0) & q_int(3 downto 1);
		end case;
	end process;
	
	U_flipflopsD: for i in 0 to 3 generate
		flipflopD_inst: D_flip_flop
			port map (
				D		=>		inputs(i),
				CLK	=>		clk,
				Q0		=>		q_int(i)
			);
	end generate;
	
	q <= q_int;
end arreglo;
