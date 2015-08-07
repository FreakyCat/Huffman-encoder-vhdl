----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:42:01 07/26/2015 
-- Design Name: 
-- Module Name:    mux - Behavioral 
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
--Component mux  -koristi se za prepoznavanje vrednosti, adresira dc rom
----------------------------------------------------------------------------------
library IEEE;
use ieee.std_logic_1164.all;
USE ieee.numeric_std.ALL;

entity mux is
port(
		size1: 	in std_logic_vector(3 downto 0);
		size0: 	in std_logic_vector(3 downto 0);
		code1:	in std_logic_vector(15 downto 0);
		code0:	in std_logic_vector(15 downto 0);
		S:	in std_logic;
		out_size:	out std_logic_vector(3 downto 0);
		out_code:	out std_logic_vector(15 downto 0);
		output_rdy:out std_logic
);
end mux;  

-------------------------------------------------

architecture Behavioral of mux is
begin
    process(size1,size0,code1,code0)
    begin
   case S is
	    when '0' =>
			out_size <= size0;
			out_code<=code0; 
			output_rdy<='1';
	    when '1' =>	
			out_size <= size1;
			out_code<=code1;
			output_rdy<='1';
	    when others => output_rdy<='0';
	end case;

    end process;
end Behavioral;
