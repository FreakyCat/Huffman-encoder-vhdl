----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:41:11 07/26/2015 
-- Design Name: 
-- Module Name:    counter - Behavioral 
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
--Component counter  -koristi se za prepoznavanje vrednosti, adresira dc rom
----------------------------------------------------------------------------------

library IEEE;
use ieee.std_logic_1164.all;
USE ieee.numeric_std.ALL;
use IEEE.std_logic_1164.all; 
use IEEE.std_logic_signed.all;



entity counter is
port(	clock:	in std_logic;
		clear:	in std_logic;
		count:	in std_logic;
		Q:	out std_logic_vector(4 downto 0)
);
end counter;

architecture Behavioral of counter is		 	  
	
    signal Pre_Q: std_logic_vector(4 downto 0):="00000";

begin
    process(clock, count, clear)
    begin
	if clear = '1' then
		Pre_Q <="00000";
	elsif (clock='1' and clock'event) then
			if count = '1' then
				if(Pre_Q ="01011") then -- broji od 0 do 11 i od 17 do 27 jer sam tako ubelezila tabelu
					Pre_Q <="10001";-- na 17
				elsif(Pre_Q ="11011") then -- dodje do 23
					Pre_Q <="00000";
				else
					Pre_Q <= Pre_Q + "00001";
				end if;
			end if;
	end if;
 end process;	
 Q <= Pre_Q;
	
end Behavioral;