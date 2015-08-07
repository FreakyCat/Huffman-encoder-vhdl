----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:40:27 07/26/2015 
-- Design Name: 
-- Module Name:    match_dc - Behavioral 
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
--Component match  -koristi se za prepoznavanje vrednosti
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity match_dc is
port( 
		rdy_in_match:in std_logic;
		clk: in std_logic;
		match_dc_in:in std_logic_vector(11 downto 0);
		match_dc_rom: in std_logic_vector(11 downto 0);
		size: out std_logic_vector(3 downto 0);
		rdy_out_match: out std_logic
		);
end match_dc;

architecture Behavioral of match_dc is
shared variable size_temp  : std_logic_vector(3 DOWNTO 0); 
signal size_signal  : std_logic_vector(3 DOWNTO 0); 
begin

	process(clk)
	 begin
		if (clk='1' and clk'event) then
			if(rdy_in_match='1') then
				if  (std_match(match_dc_in,match_dc_rom) and ((match_dc_rom="111111111111") or (match_dc_rom="000000000001" ))) then
						size_temp := "0001";
				elsif(std_match(match_dc_in,match_dc_rom)and ((match_dc_rom="11111111110-") or (match_dc_rom="00000000001-" ))) then
						size_temp := "0010";
				elsif(std_match(match_dc_in,match_dc_rom)and ((match_dc_rom="1111111110--") or (match_dc_rom="0000000001--" ))) then
						size_temp := "0011";
				elsif(std_match(match_dc_in,match_dc_rom)and ((match_dc_rom="111111110---") or (match_dc_rom="000000001---" ))) then
						size_temp := "0100";
				elsif(std_match(match_dc_in,match_dc_rom)and ((match_dc_rom="11111110----") or (match_dc_rom="00000001----" ))) then
						size_temp := "0101";
				elsif(std_match(match_dc_in,match_dc_rom)and ((match_dc_rom="1111110-----") or (match_dc_rom="0000001-----" ))) then
						size_temp := "0110";
				elsif(std_match(match_dc_in,match_dc_rom)and ((match_dc_rom="111110------") or (match_dc_rom="000001------" ))) then
						size_temp := "0111";
				elsif(std_match(match_dc_in,match_dc_rom)and ((match_dc_rom="11110-------") or (match_dc_rom="00001-------" ))) then
						size_temp := "1000";
				elsif(std_match(match_dc_in,match_dc_rom)and ((match_dc_rom="1110--------") or (match_dc_rom="0001--------" ))) then
						size_temp := "1001";
				elsif(std_match(match_dc_in,match_dc_rom)and ((match_dc_rom="110---------") or (match_dc_rom="001---------" ))) then
						size_temp := "1010";
				elsif(std_match(match_dc_in,match_dc_rom)and ((match_dc_rom="10----------") or (match_dc_rom="01----------"))) then
						size_temp := "1011";
				else 
						size_temp:="0000";
				end if;
			end if;
		end if;
		
		size <= size_temp;
		size_signal<= size_temp;
	end process;

	process(clk,size_signal)
	begin
		if (size_signal="0000") then
			rdy_out_match<='0';
		elsif(size_signal="UUUU") then
			rdy_out_match<='0';
		else
			rdy_out_match<='1';
		end if;
	end process;
end Behavioral;