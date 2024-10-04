library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity divisor1hz4hz is
	port(
		CLK	:	in std_logic;
		HZ1	:	out std_logic;
		HZ4	:	out std_logic
	);
end divisor1hz4hz;

architecture dividir of divisor1hz4hz is
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
	
	signal signal_1hz	:	std_logic;
	signal signal_4hz	:	std_logic;
begin

	U_DIV1HZ	:	divisor
		generic map(
			input_freq => 50000000,
			desired_freq => 1
		)
		port map(
			clk_in => CLK,
			clk_out => signal_1hz
		);
		
	U_DIV4HZ	:	divisor
		generic map(
			input_freq => 50000000,
			desired_freq => 4
		)
		port map(
			clk_in => CLK,
			clk_out => signal_4hz
		);
		
	HZ1 <= signal_1hz;
	HZ4 <= signal_4hz;
end dividir;
	