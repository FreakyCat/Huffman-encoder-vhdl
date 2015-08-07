----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:21:20 08/02/2015 
-- Design Name: 
-- Module Name:    count_gener_gen - Behavioral 
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
library IEEE;
use ieee.std_logic_1164.all;
USE ieee.numeric_std.ALL;
use IEEE.std_logic_unsigned.all;

entity count_gener is
generic(
		data_len:integer := 8;
		max_count_gen:integer:=63
		);
port(	clock:	in std_logic;
		clear_gen:	in std_logic;
		count_gen:	in std_logic;
		Q_gen:	out std_logic_vector(data_len-1 downto 0);
		overflow: out std_logic
);
end count_gener;

architecture Behavioral of count_gener is		 	  
	
    signal Pre_Q_gen: std_logic_vector(data_len-1 downto 0):=(others =>'0');

begin
    process(clock, count_gen, clear_gen)
    begin
	if clear_gen = '1' then
		Pre_Q_gen <=std_logic_vector(to_unsigned(0,data_len));
	elsif (clock='1' and clock'event) then
			if count_gen = '1' then
				if(Pre_Q_gen =std_logic_vector(to_unsigned(max_count_gen,data_len))) then 
					Pre_Q_gen <= std_logic_vector(to_unsigned(0,data_len));
					overflow <='1';
				else
					Pre_Q_gen <= Pre_Q_gen + std_logic_vector(to_unsigned(1,data_len));
					overflow <='0';
				end if;
			end if;
	end if;
 end process;	
 Q_gen <= Pre_Q_gen;
	
end Behavioral;