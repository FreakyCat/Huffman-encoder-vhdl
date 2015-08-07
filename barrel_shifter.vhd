----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:48:33 07/28/2015 
-- Design Name: 
-- Module Name:    barrel_shifter - Behavioral 
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


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
--use IEEE.std_logic_arith.all; 
USE ieee.numeric_std.ALL;
--use IEEE.std_logic_signed.all;
use IEEE.std_logic_unsigned.all; 

entity bs_vhdl is
port ( 	
			datain: in std_logic_vector(31 downto 0);
			bs_rdy_in:in std_logic;
			clock: in std_logic;
			count: in std_logic_vector(5 downto 0);
			dataout: out std_logic_vector(31 downto 0)
			);
end bs_vhdl;


architecture behv of bs_vhdl is
-- SHIFT LEFT/RIGHT FUNCTION
--  Dir='1' onda pomera udesno za brojac;
--  Dir='0' onda pomera ulevo za brojac;
	signal rotation:std_logic:='0';
	signal direction:std_logic:='0';
	function barrel_shift(din: in std_logic_vector(31 downto 0);
		dir: in std_logic;
		cnt: in std_logic_vector(5 downto 0)) return std_logic_vector is
		begin
			if (dir = '1') then
				return std_logic_vector((SHIFT_RIGHT(unsigned(din),to_integer(unsigned(cnt))))); 
			else
				return std_logic_vector((SHIFT_LEFT(unsigned(din), to_integer(unsigned(cnt)))));
			end if;
	end barrel_shift;

	-- ROTATE LEFT/RIGHT FUNCTION
	--
	function barrel_rotate(din: in std_logic_vector(31 downto 0);
		dir: in std_logic;
		cnt: in std_logic_vector(5 downto 0)) return std_logic_vector is
		variable temp1, temp2: std_logic_vector(63 downto 0);
		begin
			case dir is
				when '1' => -- rotate right cnt times
					temp1 := din & din;
					temp2 := std_logic_vector(SHIFT_RIGHT(unsigned(temp1),to_integer(unsigned(cnt))));
					return temp2(31 downto 0);
				when others => -- rotate left cnt times
					temp1 := din & din;
					temp2 := std_logic_vector(SHIFT_LEFT(unsigned(temp1),to_integer(unsigned(cnt))));
					return temp2(63 downto 32);
			end case;
	end barrel_rotate;
	
--	signal data_out_next:std_logic_vector(31 downto 0));
begin

		P1: process (clock ,datain, direction, rotation, count)
		begin	
			rotation<='0';
			direction<='0';
			if (clock='1' and clock'event)then
				if (bs_rdy_in='1')then
					if (rotation = '0') then -- shift only
						dataout <= barrel_shift(datain, direction, count);
					else -- rotate only
						dataout <= barrel_rotate(datain, direction, count);
					end if;
				end if;
			end if;

		end process;
		
end behv;