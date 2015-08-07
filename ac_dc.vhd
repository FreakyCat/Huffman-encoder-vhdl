----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:36:34 07/26/2015 
-- Design Name: 
-- Module Name:    ac_dc - Behavioral 
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
--Component ac_dc  -o dredjuje da li je ac ili dc u pitanju
----------------------------------------------------------------------------------
library IEEE;
use ieee.std_logic_1164.all;

entity ac_dc is
port(
		cntr64: in std_logic_vector(6 downto 0);
		ac_out:out std_logic;
		dc_out:out std_logic
	);
end ac_dc ;

architecture Behavioral of ac_dc  is

begin
	process(cntr64)
	begin
		if  (cntr64 = "0000001") then
			ac_out<='0';
			dc_out<='1';
		elsif (cntr64 = "0000000") then
			ac_out<='0';
			dc_out<='0';
		else
			ac_out<='1';
			dc_out<='0';
		end if;
	end process;

end Behavioral;


