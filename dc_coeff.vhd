----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:38:32 07/26/2015 
-- Design Name: 
-- Module Name:    dc_coeff - Behavioral 
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
---------------------------------------------------------------------------------
--Component dc_coeff  -o dredjuje da li je ac ili dc u pitanju
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity dc_coeff is
port(	clk: in std_logic;
		rst: in std_logic;
		--luma:in std_logic;-- bira se luma(=1) ili chroma coef(=1)
		category: in std_logic_vector(3 downto 0);
		rdy_in_dc: in std_logic;
		rdy_out_dc: out std_logic;
		code_word_dc:out std_logic_vector(15 downto 0);-- code_word_dc dobija se odgovarajuca duzina koda(codelength)
		codelength_dc:out std_logic_vector(3 downto 0)-- code_word_dc 0000000100 tada je codelen=3 tj 0011
);
end dc_coeff;

architecture Behavioral of dc_coeff is
begin
 PROCESS (CLK) 
   BEGIN 
		--rdy_out_dc<='0';
     -- IF (CLK'EVENT AND CLK = '1') THEN 
         IF (RST = '1') THEN 
            code_word_dc <= "0000000000000000";     
            codelength_dc <= "0000"; 
				rdy_out_dc<='0';
         ELSIF (CLK'EVENT AND CLK = '1') THEN  
            IF (rdy_in_dc = '1') THEN 
               --CASE luma IS 
                --  WHEN '1' => --luminance table 														--code_word_dc, code_len
                      CASE category IS 
                      WHEN "0000" => code_word_dc <= "0000000000000000"; codelength_dc <= "0010";  --00,2   
                      WHEN "0001" => code_word_dc <= "0000000000000010"; codelength_dc <= "0011";  --010,3							 
                      WHEN "0010" => code_word_dc <= "0000000000000011"; codelength_dc <= "0011";  --011,3
                      WHEN "0011" => code_word_dc <= "0000000000000100"; codelength_dc <= "0011";  --100,3   
                      WHEN "0100" => code_word_dc <= "0000000000000101"; codelength_dc <= "0011";  --101,3 
							 WHEN "0101" => code_word_dc <= "0000000000000110"; codelength_dc <= "0011";  --110,3 
                      WHEN "0110" => code_word_dc <= "0000000000001110"; codelength_dc <= "0100";  --1110,4
                      WHEN "0111" => code_word_dc <= "0000000000011110"; codelength_dc <= "0101";  --11110,5							 
                      WHEN "1000" => code_word_dc <= "0000000000111110"; codelength_dc <= "0110";  --111110,6  
                      WHEN "1001" => code_word_dc <= "0000000001111110"; codelength_dc <= "0111";  --1111110,7
                      WHEN "1010" => code_word_dc <= "0000000011111110"; codelength_dc <= "1000";  --11111110,8
                      WHEN "1011" => code_word_dc <= "0000000111111110"; codelength_dc <= "1001";  --111111110,9
                      WHEN OTHERS => code_word_dc <= "0000000000000000"; codelength_dc <= "0000";     
                      END CASE; 
--                  WHEN '0' => 
--                      CASE category IS --chrominance table
--                      WHEN "0000" => code_word_dc <= "00000000000"; codelength_dc <= "0010";  --00,2     
--                      WHEN "0001" => code_word_dc <= "00000000001"; codelength_dc <= "0010";  --01,2
--                      WHEN "0010" => code_word_dc <= "00000000010"; codelength_dc <= "0010";  --10,2   
--                      WHEN "0011" => code_word_dc <= "00000000110"; codelength_dc <= "0011";  --110,3   
--                      WHEN "0100" => code_word_dc <= "00000001110"; codelength_dc <= "0100";  --1110,4
--                      WHEN "0101" => code_word_dc <= "00000011110"; codelength_dc <= "0101";  --11110,5   
--                      WHEN "0110" => code_word_dc <= "00000111110"; codelength_dc <= "0110";  --111110,6   
--                      WHEN "0111" => code_word_dc <= "00001111110"; codelength_dc <= "0111";  --1111110,7   
--                      WHEN "1000" => code_word_dc <= "00011111110"; codelength_dc <= "1000";  --11111110,8   
--                      WHEN "1001" => code_word_dc <= "00111111110"; codelength_dc <= "1001";  --111111110,9   
--                      WHEN "1010" => code_word_dc <= "01111111110"; codelength_dc <= "1010";  --1111111110,10   
--                      WHEN "1011" => code_word_dc <= "11111111110"; codelength_dc <= "1011";  --11111111110,11   
--                      WHEN OTHERS => code_word_dc <= "00000000000"; codelength_dc <= "0000";     
--                      END CASE; 
--                  WHEN OTHERS => NULL; 
            --   END CASE; 
				rdy_out_dc<='1';
					ELSE
							code_word_dc <= "0000000000000000";     
							codelength_dc <= "0000"; 
							rdy_out_dc<='0';
					END IF; 	
         END IF; 
     -- END IF; 
   END PROCESS;


end Behavioral;