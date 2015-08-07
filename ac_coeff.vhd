----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:38:03 07/26/2015 
-- Design Name: 
-- Module Name:    ac_coeff - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
----------------------------------------------------------------------------------
--Component ac_coeff  - ac koeficijenti slike
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity ac_coeff is
port(	run: in std_logic_vector(3 downto 0);
		size: in std_logic_vector(3 downto 0);
		rst: in std_logic;
		clk:in std_logic;
		rdy_in_ac:in std_logic;
		rdy_out_ac:out std_logic;
		--luma: std_logic;
		code_word_ac: out std_logic_vector(15 downto 0);
		code_length_ac: out std_logic_vector(3 downto 0)
	);
end ac_coeff;

architecture Behavioral of ac_coeff is
signal code_word_ac1:std_logic_vector(15 downto 0);
begin
 process(clk, rst)
 begin
	--	if (clk='1' and clk'event) then 
			if (rst='1') then
				code_word_ac<=(others=>'0');
				code_length_ac<=(others=>'0');
				rdy_out_ac<='0';
			elsif(clk='1' and clk'event) then
			
				if (rdy_in_ac='1') then
					case (run) is
						when "0000" => --run 0
							if (size = "0000") then --size 0 EOB
								code_word_ac<="0000000000001010";--(CODELEN, duzina vectora (4 po def))
								code_length_ac<=std_logic_vector(to_unsigned(4,4));
								
							elsif(size = "0001")then --size 1
								code_word_ac<="0000000000000000";
								code_length_ac<=std_logic_vector(to_unsigned(2,4));
								
							elsif(size = "0010")then--size 2
								code_word_ac<="0000000000000001";
								code_length_ac<=std_logic_vector(to_unsigned(2,4));
								
							elsif(size = "0011")then--size 3
								code_word_ac<="0000000000000100";
								code_length_ac<=std_logic_vector(to_unsigned(3,4));
								
							elsif(size = "0100")then--size 4
								code_word_ac<="0000000000001011";
								code_length_ac<=std_logic_vector(to_unsigned(4,4));
								
							elsif(size = "0101")then--size 5
								code_word_ac<="0000000000011010";
								code_length_ac<=std_logic_vector(to_unsigned(5,4));
								
							elsif(size = "0110")then--size 6
								code_word_ac<="0000000001111000";
								code_length_ac<=std_logic_vector(to_unsigned(7,4));
								
							elsif(size = "0111")then--size 7
								code_word_ac<="0000000011111000";
								code_length_ac<=std_logic_vector(to_unsigned(8,4));
								
							elsif(size = "1000")then--size 8
								code_word_ac<="0000001111110110";
								code_length_ac<=std_logic_vector(to_unsigned(10,4));
							elsif(size = "1001")then--size 9
								code_word_ac<="0000000000001010";
								
								code_length_ac<=std_logic_vector(to_unsigned(16,4));
							elsif(size = "1010")then--size 10
								code_word_ac<="1111111110000010";
								code_length_ac<=std_logic_vector(to_unsigned(16,4));
								
							else 
								code_word_ac<="1111111110000011";
								code_length_ac<=std_logic_vector(to_unsigned(0,4));
							end if;
							
						when "0001" => --run 1
							if(size = "0001")then --size 1
								code_word_ac<="0000000000001100";
								code_length_ac<=std_logic_vector(to_unsigned(4,4));
								
							elsif(size = "0010")then--size 2
								code_word_ac<="0000000000011011";
								code_length_ac<=std_logic_vector(to_unsigned(5,4));
								
							elsif(size = "0011")then--size 3
								code_word_ac<="0000000001111001";
								code_length_ac<=std_logic_vector(to_unsigned(7,4));
								
							elsif(size = "0100")then--size 4
								code_word_ac<="0000000111110110";
								code_length_ac<=std_logic_vector(to_unsigned(9,4));
								
							elsif(size = "0101")then--size 5
								code_word_ac<="0000011111110110";
								code_length_ac<=std_logic_vector(to_unsigned(11,4));
								
							elsif(size = "0110")then--size 6
								code_word_ac<="1111111110000100";
								code_length_ac<=std_logic_vector(to_unsigned(16,4));
								
							elsif(size = "0111")then--size 7
								code_word_ac<="1111111110000101";
								code_length_ac<=std_logic_vector(to_unsigned(16,4));
								
							elsif(size = "1000")then--size 8
								code_word_ac<="1111111110000110";
								code_length_ac<=std_logic_vector(to_unsigned(16,4));
								
							elsif(size = "1001")then--size 9
								code_word_ac<="1111111110000111";
								code_length_ac<=std_logic_vector(to_unsigned(16,4));
								
							elsif(size = "1010")then--size 10
								code_word_ac<="1111111110001000";
								code_length_ac<=std_logic_vector(to_unsigned(16,4));
								
							else 
								code_word_ac<="0000000000000000";
								code_length_ac<=std_logic_vector(to_unsigned(0,4));
							end if;
						
						when "0010" => --run 2
							if(size = "0001")then --size 1
								code_word_ac<="0000000000011100";
								code_length_ac<=std_logic_vector(to_unsigned(5,4));
								
							elsif(size = "0010")then--size 2
								code_word_ac<="0000000011111001";
								code_length_ac<=std_logic_vector(to_unsigned(8,4));
								
							elsif(size = "0011")then--size 3
								code_word_ac<="0000001111110111";
								code_length_ac<=std_logic_vector(to_unsigned(10,4));
								
							elsif(size = "0100")then--size 4
								code_word_ac<="0000111111110100";
								code_length_ac<=std_logic_vector(to_unsigned(12,4));
								
							elsif(size = "0101")then--size 5
								code_word_ac<="1111111110001001";
								code_length_ac<=std_logic_vector(to_unsigned(16,4));
								
							elsif(size = "0110")then--size 6
								code_word_ac<="1111111110001010";
								code_length_ac<=std_logic_vector(to_unsigned(16,4));
								
							elsif(size = "0111")then--size 7
								code_word_ac<="1111111110001011";
								code_length_ac<=std_logic_vector(to_unsigned(16,4));
								
							elsif(size = "1000")then--size 8
								code_word_ac<="1111111110001100";
								code_length_ac<=std_logic_vector(to_unsigned(16,4));
								
							elsif(size = "1001")then--size 9
								code_word_ac<="1111111110001101";
								code_length_ac<=std_logic_vector(to_unsigned(16,4));
								
							elsif(size = "1010")then--size 10
								code_word_ac<="1111111110001110";
								code_length_ac<=std_logic_vector(to_unsigned(16,4));
								
							else 
								code_word_ac<="0000000000000000";
								code_length_ac<=std_logic_vector(to_unsigned(0,4));
							end if;
							
						when "0011" =>		--run 3				
							if(size = "0001")then --size 1
								code_word_ac<="0000000000111010";
								code_length_ac<=std_logic_vector(to_unsigned(5,4));
								
							elsif(size = "0010")then--size 2
								code_word_ac<="0000000111110111";
								code_length_ac<=std_logic_vector(to_unsigned(8,4));
								
							elsif(size = "0011")then--size 3
								code_word_ac<="0000111111110101";
								code_length_ac<=std_logic_vector(to_unsigned(12,4));
								
							elsif(size = "0100")then--size 4
								code_word_ac<="1111111110001111";
								code_length_ac<=std_logic_vector(to_unsigned(16,4));
								
							elsif(size = "0101")then--size 5
								code_word_ac<="1111111110010000";
								code_length_ac<=std_logic_vector(to_unsigned(16,4));
								
							elsif(size = "0110")then--size 6
								code_word_ac<="1111111110010001";
								code_length_ac<=std_logic_vector(to_unsigned(16,4));
								
							elsif(size = "0111")then--size 7
								code_word_ac<="1111111110010010";
								code_length_ac<=std_logic_vector(to_unsigned(16,4));
								
							elsif(size = "1000")then--size 8
								code_word_ac<="1111111110010011";
								code_length_ac<=std_logic_vector(to_unsigned(16,4));
								
							elsif(size = "1001")then--size 9
								code_word_ac<="1111111110010100";
								code_length_ac<=std_logic_vector(to_unsigned(16,4));
								
							elsif(size = "1010")then--size 10
								code_word_ac<="1111111110010101";
								code_length_ac<=std_logic_vector(to_unsigned(16,4));
								
							else 
								code_word_ac<="0000000000000000";
								code_length_ac<=std_logic_vector(to_unsigned(0,4));
							end if;
							
						when "0100" => --run 4
						if(size = "0001")then --size 1
								code_word_ac<="0000000000111011";
								code_length_ac<=std_logic_vector(to_unsigned(6,4));
								
							elsif(size = "0010")then--size 2
								code_word_ac<="0000000000111011";
								code_length_ac<=std_logic_vector(to_unsigned(10,4));
								
							elsif(size = "0011")then--size 3
								code_word_ac<="1111111110010110";
								code_length_ac<=std_logic_vector(to_unsigned(16,4));
								
							elsif(size = "0100")then--size 4
								code_word_ac<="1111111110010111";
								code_length_ac<=std_logic_vector(to_unsigned(16,4));
								
							elsif(size = "0101")then--size 5
								code_word_ac<="1111111110011000";
								code_length_ac<=std_logic_vector(to_unsigned(16,4));
								
							elsif(size = "0110")then--size 6
								code_word_ac<="1111111110011001";
								code_length_ac<=std_logic_vector(to_unsigned(16,4));
								
							elsif(size = "0111")then--size 7
								code_word_ac<="1111111110011010";
								code_length_ac<=std_logic_vector(to_unsigned(16,4));
								
							elsif(size = "1000")then--size 8
								code_word_ac<="1111111110011011";
								code_length_ac<=std_logic_vector(to_unsigned(16,4));
								
							elsif(size = "1001")then--size 9
								code_word_ac<="1111111110011100";
								code_length_ac<=std_logic_vector(to_unsigned(16,4));
								
							elsif(size = "1010")then--size 10
								code_word_ac<="1111111110011101";
								code_length_ac<=std_logic_vector(to_unsigned(16,4));
								
							else 
								code_word_ac<="0000000000000000";
								code_length_ac<=std_logic_vector(to_unsigned(0,4));
							end if;
							
						when "0101" =>--run 5
							if(size = "0001")then --size 1
								code_word_ac<="0000000001111010";
								code_length_ac<=std_logic_vector(to_unsigned(7,4));
								
							elsif(size = "0010")then--size 2
								code_word_ac<="0000011111110111";
								code_length_ac<=std_logic_vector(to_unsigned(11,4));
								
							elsif(size = "0011")then--size 3
								code_word_ac<="1111111110011110";
								code_length_ac<=std_logic_vector(to_unsigned(16,4));
								
							elsif(size = "0100")then--size 4
								code_word_ac<="1111111110011111";
								code_length_ac<=std_logic_vector(to_unsigned(16,4));
								
							elsif(size = "0101")then--size 5
								code_word_ac<="1111111110100000";
								code_length_ac<=std_logic_vector(to_unsigned(16,4));
								
							elsif(size = "0110")then--size 6
								code_word_ac<="1111111110100001";
								code_length_ac<=std_logic_vector(to_unsigned(16,4));
								
							elsif(size = "0111")then--size 7
								code_word_ac<="1111111110100010";
								code_length_ac<=std_logic_vector(to_unsigned(16,4));
								
							elsif(size = "1000")then--size 8
								code_word_ac<="1111111110100011";
								code_length_ac<=std_logic_vector(to_unsigned(16,4));
								
							elsif(size = "1001")then--size 9
								code_word_ac<="1111111110100100";
								code_length_ac<=std_logic_vector(to_unsigned(16,4));
								
							elsif(size = "1010")then--size 10
								code_word_ac<="1111111110100101";
								code_length_ac<=std_logic_vector(to_unsigned(16,4));
								
							else 
								code_word_ac<="0000000000000000";
								code_length_ac<=std_logic_vector(to_unsigned(0,4));
							end if;
							
						when "0110" => --run 6
							if(size = "0001")then --size 1
								code_word_ac<="0000000001111011";
								code_length_ac<=std_logic_vector(to_unsigned(7,4));
								
							elsif(size = "0010")then--size 2
								code_word_ac<="0000111111110110";
								code_length_ac<=std_logic_vector(to_unsigned(12,4));
								
							elsif(size = "0011")then--size 3
								code_word_ac<="1111111110100110";
								code_length_ac<=std_logic_vector(to_unsigned(16,4));
								
							elsif(size = "0100")then--size 4
								code_word_ac<="1111111110100111";
								code_length_ac<=std_logic_vector(to_unsigned(16,4));
								
							elsif(size = "0101")then--size 5
								code_word_ac<="1111111110101000";
								code_length_ac<=std_logic_vector(to_unsigned(16,4));
								
							elsif(size = "0110")then--size 6
								code_word_ac<="1111111110101001";
								code_length_ac<=std_logic_vector(to_unsigned(16,4));
								
							elsif(size = "0111")then--size 7
								code_word_ac<="1111111110101010";
								code_length_ac<=std_logic_vector(to_unsigned(16,4));
								
							elsif(size = "1000")then--size 8
								code_word_ac<="1111111110101011";
								code_length_ac<=std_logic_vector(to_unsigned(16,4));
								
							elsif(size = "1001")then--size 9
								code_word_ac<="1111111110101100";
								code_length_ac<=std_logic_vector(to_unsigned(16,4));
								
							elsif(size = "1010")then--size 10
								code_word_ac<="1111111110101101";
								code_length_ac<=std_logic_vector(to_unsigned(16,4));
								
							else 
								code_word_ac<="0000000000000000";
								code_length_ac<=std_logic_vector(to_unsigned(0,4));
							end if;
							
						when "0111" =>
							if(size = "0001")then --size 1
								code_word_ac<="0000000011111010";
								code_length_ac<=std_logic_vector(to_unsigned(8,4));
								
							elsif(size = "0010")then--size 2
								code_word_ac<="0000111111110111";
								code_length_ac<=std_logic_vector(to_unsigned(12,4));
								
							elsif(size = "0011")then--size 3
								code_word_ac<="1111111110101110";
								code_length_ac<=std_logic_vector(to_unsigned(16,4));
								
							elsif(size = "0100")then--size 4
								code_word_ac<="1111111110101111";
								code_length_ac<=std_logic_vector(to_unsigned(16,4));
								
							elsif(size = "0101")then--size 5
								code_word_ac<="1111111110110000";
								code_length_ac<=std_logic_vector(to_unsigned(16,4));
								
							elsif(size = "0110")then--size 6
								code_word_ac<="1111111110110001";
								code_length_ac<=std_logic_vector(to_unsigned(16,4));
								
							elsif(size = "0111")then--size 7
								code_word_ac<="1111111110110010";
								code_length_ac<=std_logic_vector(to_unsigned(16,4));
								
							elsif(size = "1000")then--size 8
								code_word_ac<="1111111110110011";
								code_length_ac<=std_logic_vector(to_unsigned(16,4));
								
							elsif(size = "1001")then--size 9
								code_word_ac<="1111111110110100";
								code_length_ac<=std_logic_vector(to_unsigned(16,4));
								
							elsif(size = "1010")then--size 10
								code_word_ac<="1111111110110101";
								code_length_ac<=std_logic_vector(to_unsigned(16,4));
								
							else 
								code_word_ac<="0000000000000000";
								code_length_ac<=std_logic_vector(to_unsigned(0,4));
							end if;
							
						when "1000"=>
							if(size = "0001")then --size 1
								code_word_ac<="0000000111111000";
								code_length_ac<=std_logic_vector(to_unsigned(9,4));
								
							elsif(size = "0010")then--size 2
								code_word_ac<="0111111111000000";
								code_length_ac<=std_logic_vector(to_unsigned(15,4));
								
							elsif(size = "0011")then--size 3
								code_word_ac<="1111111110110110";
								code_length_ac<=std_logic_vector(to_unsigned(16,4));
								
							elsif(size = "0100")then--size 4
								code_word_ac<="1111111110110111";
								code_length_ac<=std_logic_vector(to_unsigned(16,4));
								
							elsif(size = "0101")then--size 5
								code_word_ac<="1111111110111000";
								code_length_ac<=std_logic_vector(to_unsigned(16,4));
								
							elsif(size = "0110")then--size 6
								code_word_ac<="1111111110111001";
								code_length_ac<=std_logic_vector(to_unsigned(16,4));
								
							elsif(size = "0111")then--size 7
								code_word_ac<="1111111110111010";
								code_length_ac<=std_logic_vector(to_unsigned(16,4));
								
							elsif(size = "1000")then--size 8
								code_word_ac<="1111111110111011";
								code_length_ac<=std_logic_vector(to_unsigned(16,4));
								
							elsif(size = "1001")then--size 9
								code_word_ac<="1111111110111100";
								code_length_ac<=std_logic_vector(to_unsigned(16,4));
								
							elsif(size = "1010")then--size 10
								code_word_ac<="1111111110111101";
								code_length_ac<=std_logic_vector(to_unsigned(16,4));
								
							else 
								code_word_ac<="0000000000000000";
								code_length_ac<=std_logic_vector(to_unsigned(0,4));
							end if;
							
						when "1001" =>		--run 9				
							if(size = "0001")then --size 1
								code_word_ac<="0000000111111001";
								code_length_ac<=std_logic_vector(to_unsigned(9,4));
								
							elsif(size = "0010")then--size 2
								code_word_ac<="1111111110111110";
								code_length_ac<=std_logic_vector(to_unsigned(16,4));
								
							elsif(size = "0011")then--size 3
								code_word_ac<="1111111110111111";
								code_length_ac<=std_logic_vector(to_unsigned(16,4));
								
							elsif(size = "0100")then--size 4
								code_word_ac<="1111111111000000";
								code_length_ac<=std_logic_vector(to_unsigned(16,4));
								
							elsif(size = "0101")then--size 5
								code_word_ac<="1111111111000001";
								code_length_ac<=std_logic_vector(to_unsigned(16,4));
								
							elsif(size = "0110")then--size 6
								code_word_ac<="1111111111000010";
								code_length_ac<=std_logic_vector(to_unsigned(16,4));
								
							elsif(size = "0111")then--size 7
								code_word_ac<="1111111111000011";
								code_length_ac<=std_logic_vector(to_unsigned(16,4));
								
							elsif(size = "1000")then--size 8
								code_word_ac<="1111111111000100";
								code_length_ac<=std_logic_vector(to_unsigned(16,4));
								
							elsif(size = "1001")then--size 9
								code_word_ac<="1111111111000101";
								code_length_ac<=std_logic_vector(to_unsigned(16,4));
								
							elsif(size = "1010")then--size 10
								code_word_ac<="1111111111000110";
								code_length_ac<=std_logic_vector(to_unsigned(16,4));
								
							else 
								code_word_ac<="0000000000000000";
								code_length_ac<=std_logic_vector(to_unsigned(0,4));
							end if;				
							
						when "1010"=> --run 10
							if(size = "0001")then --size 1
								code_word_ac<="0000000111111010";
								code_length_ac<=std_logic_vector(to_unsigned(9,4));
								
							elsif(size = "0010")then--size 2
								code_word_ac<="1111111111000111";
								code_length_ac<=std_logic_vector(to_unsigned(16,4));
								
							elsif(size = "0011")then--size 3
								code_word_ac<="1111111111001000";
								code_length_ac<=std_logic_vector(to_unsigned(16,4));
								
							elsif(size = "0100")then--size 4
								code_word_ac<="1111111111001001";
								code_length_ac<=std_logic_vector(to_unsigned(16,4));
								
							elsif(size = "0101")then--size 5
								code_word_ac<="1111111111001010";
								code_length_ac<=std_logic_vector(to_unsigned(16,4));
								
							elsif(size = "0110")then--size 6
								code_word_ac<="1111111111001011";
								code_length_ac<=std_logic_vector(to_unsigned(16,4));
								
							elsif(size = "0111")then--size 7
								code_word_ac<="1111111111001100";
								code_length_ac<=std_logic_vector(to_unsigned(16,4));
								
							elsif(size = "1000")then--size 8
								code_word_ac<="1111111111001101";
								code_length_ac<=std_logic_vector(to_unsigned(16,4));
								
							elsif(size = "1001")then--size 9
								code_word_ac<="1111111111001110";
								code_length_ac<=std_logic_vector(to_unsigned(16,4));
								
							elsif(size = "1010")then--size 10
								code_word_ac<="1111111111001111";
								code_length_ac<=std_logic_vector(to_unsigned(16,4));
								
							else 
								code_word_ac<="0000000000000000";
								code_length_ac<=std_logic_vector(to_unsigned(0,4));
							end if;
							
						when "1011" => --run 11
							if(size = "0001")then --size 1
								code_word_ac<="0000001111111001";
								code_length_ac<=std_logic_vector(to_unsigned(10,4));
								
							elsif(size = "0010")then--size 2
								code_word_ac<="1111111111010000";
								code_length_ac<=std_logic_vector(to_unsigned(16,4));
								
							elsif(size = "0011")then--size 3
								code_word_ac<="1111111111010001";
								code_length_ac<=std_logic_vector(to_unsigned(16,4));
								
							elsif(size = "0100")then--size 4
								code_word_ac<="1111111111010010";
								code_length_ac<=std_logic_vector(to_unsigned(16,4));
								
							elsif(size = "0101")then--size 5
								code_word_ac<="1111111111010011";
								code_length_ac<=std_logic_vector(to_unsigned(16,4));
								
							elsif(size = "0110")then--size 6
								code_word_ac<="1111111111010100";
								code_length_ac<=std_logic_vector(to_unsigned(16,4));
								
							elsif(size = "0111")then--size 7
								code_word_ac<="1111111111010101";
								code_length_ac<=std_logic_vector(to_unsigned(16,4));
								
							elsif(size = "1000")then--size 8
								code_word_ac<="1111111111010110";
								code_length_ac<=std_logic_vector(to_unsigned(16,4));
								
							elsif(size = "1001")then--size 9
								code_word_ac<="1111111111010111";
								code_length_ac<=std_logic_vector(to_unsigned(16,4));
								
							elsif(size = "1010")then--size 10
								code_word_ac<="1111111111011000";
								code_length_ac<=std_logic_vector(to_unsigned(16,4));
								
							else 
								code_word_ac<="0000000000000000";
								code_length_ac<=std_logic_vector(to_unsigned(10,4));
							end if;
							
						when "1100" => --run 12
							if(size = "0001")then --size 1
								code_word_ac<="0000001111111010";
								code_length_ac<=std_logic_vector(to_unsigned(16,4));
								
							elsif(size = "0010")then--size 2
								code_word_ac<="0000000000000000";
								code_length_ac<=std_logic_vector(to_unsigned(16,4));
								
							elsif(size = "0011")then--size 3
								code_word_ac<="1111111111011001";
								code_length_ac<=std_logic_vector(to_unsigned(16,4));
								
							elsif(size = "0100")then--size 4
								code_word_ac<="1111111111011011";
								code_length_ac<=std_logic_vector(to_unsigned(16,4));
								
							elsif(size = "0101")then--size 5
								code_word_ac<="1111111111011100";
								code_length_ac<=std_logic_vector(to_unsigned(16,4));
								
							elsif(size = "0110")then--size 6
								code_word_ac<="1111111111011101";
								code_length_ac<=std_logic_vector(to_unsigned(16,4));
								
							elsif(size = "0111")then--size 7
								code_word_ac<="1111111111011110";
								code_length_ac<=std_logic_vector(to_unsigned(16,4));
								
							elsif(size = "1000")then--size 8
								code_word_ac<="1111111111011111";
								code_length_ac<=std_logic_vector(to_unsigned(16,4));
								
							elsif(size = "1001")then--size 9
								code_word_ac<="1111111111100000";
								code_length_ac<=std_logic_vector(to_unsigned(16,4));
								
							elsif(size = "1010")then--size 10
								code_word_ac<="1111111111100001";
								code_length_ac<=std_logic_vector(to_unsigned(16,4));
								
							else 
								code_word_ac<="0000000000000000";
								code_length_ac<=std_logic_vector(to_unsigned(0,4));
							end if;
						when "1101"=> --run 13
							if(size = "0001")then --size 1
								code_word_ac<="0000011111111000";
								code_length_ac<=std_logic_vector(to_unsigned(11,4));
								
							elsif(size = "0010")then--size 2
								code_word_ac<="1111111111100010";
								code_length_ac<=std_logic_vector(to_unsigned(16,4));
								
							elsif(size = "0011")then--size 3
								code_word_ac<="1111111111100011";
								code_length_ac<=std_logic_vector(to_unsigned(16,4));
								
							elsif(size = "0100")then--size 4
								code_word_ac<="1111111111100100";
								code_length_ac<=std_logic_vector(to_unsigned(16,4));
								
							elsif(size = "0101")then--size 5
								code_word_ac<="1111111111100101";
								code_length_ac<=std_logic_vector(to_unsigned(16,4));
								
							elsif(size = "0110")then--size 6
								code_word_ac<="1111111111100110";
								code_length_ac<=std_logic_vector(to_unsigned(16,4));
								
							elsif(size = "0111")then--size 7
								code_word_ac<="1111111111100111";
								code_length_ac<=std_logic_vector(to_unsigned(16,4));
								
							elsif(size = "1000")then--size 8
								code_word_ac<="1111111111101000";
								code_length_ac<=std_logic_vector(to_unsigned(16,4));
								
							elsif(size = "1001")then--size 9
								code_word_ac<="1111111111101001";
								code_length_ac<=std_logic_vector(to_unsigned(16,4));
								
							elsif(size = "1010")then--size 10
								code_word_ac<="1111111111101010";
								code_length_ac<=std_logic_vector(to_unsigned(16,4));
								
							else 
								code_word_ac<="0000000000000000";
								code_length_ac<=std_logic_vector(to_unsigned(0,4));
							end if;
							
						when "1110" => --run 14
							if(size = "0001")then --size 1
								code_word_ac<="1111111111101011";
								code_length_ac<=std_logic_vector(to_unsigned(16,4));
								
							elsif(size = "0010")then--size 2
								code_word_ac<="1111111111101100";
								code_length_ac<=std_logic_vector(to_unsigned(16,4));
								
							elsif(size = "0011")then--size 3
								code_word_ac<="1111111111101101";
								code_length_ac<=std_logic_vector(to_unsigned(16,4));
								
							elsif(size = "0100")then--size 4
								code_word_ac<="1111111111101110";
								code_length_ac<=std_logic_vector(to_unsigned(16,4));
								
							elsif(size = "0101")then--size 5
								code_word_ac<="1111111111101111";
								code_length_ac<=std_logic_vector(to_unsigned(16,4));
								
							elsif(size = "0110")then--size 6
								code_word_ac<="1111111111110000";
								code_length_ac<=std_logic_vector(to_unsigned(16,4));
								
							elsif(size = "0111")then--size 7
								code_word_ac<="1111111111110001";
								code_length_ac<=std_logic_vector(to_unsigned(16,4));
								
							elsif(size = "1000")then--size 8
								code_word_ac<="1111111111110010";
								code_length_ac<=std_logic_vector(to_unsigned(16,4));
								
							elsif(size = "1001")then--size 9
								code_word_ac<="1111111111110011";
								code_length_ac<=std_logic_vector(to_unsigned(16,4));
								
							elsif(size = "1010")then--size 10
								code_word_ac<="1111111111110100";
								code_length_ac<=std_logic_vector(to_unsigned(16,4));
								
							else 
								code_word_ac<="0000000000000000";
								code_length_ac<=std_logic_vector(to_unsigned(0,4));
							end if;
							
						when "1111" => --run 15
						
							if(size = "0000")then --size 0
								code_word_ac<="0000011111111001";
								code_length_ac<=std_logic_vector(to_unsigned(11,4));
								
							elsif(size = "0001")then --size 1
								code_word_ac<="1111111111110101";
								code_length_ac<=std_logic_vector(to_unsigned(16,4));
								
							elsif(size = "0010")then--size 2
								code_word_ac<="1111111111110110";
								code_length_ac<=std_logic_vector(to_unsigned(16,4));
								
							elsif(size = "0011")then--size 3
								code_word_ac<="1111111111110111";
								code_length_ac<=std_logic_vector(to_unsigned(16,4));
								
							elsif(size = "0100")then--size 4
								code_word_ac<="1111111111111000";
								code_length_ac<=std_logic_vector(to_unsigned(16,4));
								
							elsif(size = "0101")then--size 5
								code_word_ac<="1111111111111001";
								code_length_ac<=std_logic_vector(to_unsigned(16,4));
								
							elsif(size = "0110")then--size 6
								code_word_ac<="1111111111111010";
								code_length_ac<=std_logic_vector(to_unsigned(16,4));
								
							elsif(size = "0111")then--size 7
								code_word_ac<="1111111111111011";
								code_length_ac<=std_logic_vector(to_unsigned(16,4));
								
							elsif(size = "1000")then--size 8
								code_word_ac<="1111111111111100";
								code_length_ac<=std_logic_vector(to_unsigned(16,4));
								
							elsif(size = "1001")then--size 9
								code_word_ac<="1111111111111101";
								code_length_ac<=std_logic_vector(to_unsigned(16,4));
								
							elsif(size = "1010")then--size 10
								code_word_ac<="1111111111111110";
								code_length_ac<=std_logic_vector(to_unsigned(16,4));
								
							else 
								code_word_ac<="0000000000000000";
								code_length_ac<=std_logic_vector(to_unsigned(0,4));
							end if;
							

						when others =>
							null;
					end case;
					rdy_out_ac<='1';
				else --if not rdy_in<='1'
					code_word_ac<=code_word_ac1;
					code_length_ac<=std_logic_vector(to_unsigned(0,4));
					rdy_out_ac<='0';
				end if;
			end if;
		--end if;
 end process;
--code_word_ac1<=code_word_ac;
end Behavioral;
