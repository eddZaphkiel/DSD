library ieee;
use ieee.std_logic_1164.all;

entity decoder is
	port (
		key_pres : in  std_logic_vector(7 downto 0);
		key_7seg : out std_logic_vector(6 downto 0)
   );
end decoder;

architecture combinacional of decoder is
begin
    process (key_pres)
    begin
        case key_pres is
            -- Fila 1 ("1000")
            when "10001000" => key_7seg <= "1111001"; -- '1'
            when "10000100" => key_7seg <= "0100100"; -- '2'
            when "10000010" => key_7seg <= "0110000"; -- '3'
            when "10000001" => key_7seg <= "0001000"; -- 'a'
            
            -- Fila 2 ("0100")
            when "01001000" => key_7seg <= "0011001"; -- '4'
            when "01000100" => key_7seg <= "0010010"; -- '5'
            when "01000010" => key_7seg <= "0000010"; -- '6'
            when "01000001" => key_7seg <= "0000011"; -- 'b'
            
            -- Fila 3 ("0010")
            when "00101000" => key_7seg <= "0111000"; -- '7'
            when "00100100" => key_7seg <= "0000000"; -- '8'
            when "00100010" => key_7seg <= "0010000"; -- '9'
            when "00100001" => key_7seg <= "1000110"; -- 'c'
            
            -- Fila 4 ("0001")
            when "00011000" => key_7seg <= "0000110"; -- '*'
            when "00010100" => key_7seg <= "1000000"; -- '0'
            when "00010010" => key_7seg <= "0001110"; -- '#'
            when "00010001" => key_7seg <= "0100001"; -- 'd'
            
            when others => key_7seg <= "1111111"; -- Display apagado por defecto
        end case;
    end process;
end combinacional;
