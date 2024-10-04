library ieee;
use ieee.std_logic_1164.all;

entity decoprioridad is
	port (
		clk	: in 	std_logic;
		ctrl	: in	std_logic_vector(3 downto 0);
		code	: out std_logic_vector(1 downto 0)
	);
end decoprioridad;

architecture decodificador of decoprioridad is
	signal code_int	:	std_logic_vector(1 downto 0) := "00";
begin

	process(clk)
    begin
        if rising_edge(clk) then
            if ctrl(3) = '1' then
                code_int <= "11";
            elsif ctrl(2) = '1' then
                code_int <= "10";
            elsif ctrl(1) = '1' then
                code_int <= "01";
            elsif ctrl(0) = '1' then
                code_int <= "00";
            else
                code_int <= code_int;
            end if;
        end if;
    end process;

	code <= code_int;
end decodificador;