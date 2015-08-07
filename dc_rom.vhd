----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:39:34 07/26/2015 
-- Design Name: 
-- Module Name:    dc_rom - Behavioral 
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
--Component dc_rom  -koristi se za prepoznavanje vrednosti
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE ieee.numeric_std.ALL;
use IEEE.std_logic_1164.all; 
use IEEE.std_logic_signed.all;

entity dc_rom is
port(	clk:in std_logic;
		dc_rom_addr:in std_logic_vector(4 downto 0);
		dc_rom_out:out std_logic_vector(11 downto 0);
		oe:out std_logic
		);
end dc_rom;

architecture Behavioral of dc_rom is
signal dc_rom_out_prev:std_logic_vector(11 downto 0);
begin

 PROCESS (clk) 
   BEGIN 
      IF (CLK'EVENT AND CLK = '1') THEN 
	     CASE dc_rom_addr IS 
         WHEN  "00001" => dc_rom_out_prev  <= "111111111111";     
         WHEN  "00010" => dc_rom_out_prev <= "11111111110-";     
         WHEN  "00011" => dc_rom_out_prev	<= "1111111110--"; 
			WHEN  "00100" => dc_rom_out_prev	<= "111111110---"; 
			WHEN  "00101" => dc_rom_out_prev	<= "11111110----"; 
			WHEN  "00110" => dc_rom_out_prev	<= "1111110-----"; 
			WHEN  "00111" => dc_rom_out_prev	<= "111110------"; 
			WHEN  "01000" => dc_rom_out_prev	<= "11110-------"; 
			WHEN  "01001" => dc_rom_out_prev	<= "1110--------"; 
			WHEN  "01010" => dc_rom_out_prev	<= "110---------"; 
			WHEN  "01011" => dc_rom_out_prev	<= "10----------"; --11 mozemo size da dobijemo jedam levi shift
			WHEN 	"00000" => dc_rom_out_prev	<= "000000000000";
			WHEN  "10001" => dc_rom_out_prev <= "000000000001";     
         WHEN  "10010" => dc_rom_out_prev <= "00000000001-";     
         WHEN  "10011" => dc_rom_out_prev	<= "0000000001--"; 
			WHEN  "10100" => dc_rom_out_prev	<= "000000001---"; 
			WHEN  "10101" => dc_rom_out_prev	<= "00000001----"; 
			WHEN  "10110" => dc_rom_out_prev	<= "0000001-----"; 
			WHEN  "10111" => dc_rom_out_prev	<= "000001------"; 
			WHEN  "11000" => dc_rom_out_prev	<= "00001-------"; 
			WHEN  "11001" => dc_rom_out_prev	<= "0001--------"; 
			WHEN  "11010" => dc_rom_out_prev	<= "001---------"; 
			WHEN  "11011" => dc_rom_out_prev	<= "01----------"; --27
			WHEN 	others  => dc_rom_out_prev	<= "000000000000";	
			
         END CASE; 
			oe<='1';
      END IF; 
		dc_rom_out<=dc_rom_out_prev;
   END PROCESS; 
end Behavioral;