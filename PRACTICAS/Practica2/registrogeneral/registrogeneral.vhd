library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity registrogeneral is
	port(
		CLK		: 	in		std_logic;
		INPUT 	:	in 	std_logic_vector(3 downto 0);
		CTRL		: 	in		std_logic_vector(3 downto 0);
		BITS		:	out	std_logic_vector(3 downto 0)
	);
end registrogeneral;

architecture controlador of registrogeneral is
	component registro is
		 port (
			  d   : in  std_logic_vector(3 downto 0);
			  clk : in  std_logic;
			  q	: out 	std_logic_vector(3 downto 0);
			  s   : in std_logic_vector(1 downto 0)
		 );
	end component;
	
	component decoprioridad is
		port (
			clk	: in 	std_logic;
			ctrl	: in	std_logic_vector(3 downto 0);
			code	: out std_logic_vector(1 downto 0)
		);
	end component;
	
	component debouncer is
		 generic (
			  debounce_time : integer := 20000  
		 );
		 port (
			  clk        : in  std_logic;       
			  button_in  : in  std_logic;       
			  button_out : out std_logic        
		 );
	end component;
	
	component divisor is
		 generic (
			  input_freq  : integer := 50000000;  -- Frecuencia de entrada en Hz
			  desired_freq : integer := 1         -- Frecuencia deseada en Hz
		 );
		 port (
			  clk_in  : in  std_logic;            -- Reloj de entrada
			  clk_out : out std_logic             -- Reloj de salida dividido
		 );
	end component;
	
	signal db_ctrl		: std_logic_vector(3 downto 0);
	signal clk_div		: std_logic;
	signal q_out		: std_logic_vector(3 downto 0);
	signal seleccion	: std_logic_vector(1 downto 0);
begin
	U_DIVISOR 	:	divisor
		generic map (
			input_freq  	=> 50000000,  
			desired_freq 	=> 2         
		)
		port map (
			clk_in  =>	CLK,           
			clk_out =>	clk_div             
		);
	
	U_DEBOUNCERS	:	for i in 3 downto 0 generate
		INST_DEBOUNCER	:	debouncer
			generic map (
				debounce_time	=>	20000
			)
			port map (
				clk			=> CLK,
				button_in   =>	CTRL(i),
				button_out  =>	db_ctrl(i)
			);
	end generate;

	U_DECOPRIORIDAD	:	decoprioridad
		port map (
			clk	=>	CLK,
			ctrl	=>	db_ctrl,
			code	=>	seleccion
		);
		
	U_REGISTRO	:	registro
		port map (
			d   	=>	INPUT,
			clk 	=>	clk_div,
			q		=>	q_out,
			s   	=> seleccion
		);
	
	BITS <= q_out;
end controlador;