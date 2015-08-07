----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:46:51 07/29/2015 
-- Design Name: 
-- Module Name:    barrel_reg - Behavioral 
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
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.std_logic_unsigned.all;

entity barrel_reg is
port(	br_in: in std_logic_vector(31 downto 0);
		br_in_rdy:in std_logic;
		clk : in std_logic;
		hf_in: in std_logic;
		count: in std_logic_vector(5 downto 0);
		br_out:out std_logic_vector(15 downto 0);
		br_rdy_out:out std_logic
		);
end barrel_reg;

architecture Behavioral of barrel_reg is
signal dataout,br_in1,br_in2:std_logic_vector(31 downto 0):=(others=>'0');
signal upper,upper1, middle, middle1,middle2, br_out_temp:std_logic_vector(15 downto 0):=(others=>'0');
signal br_rdy_out_temp,hf1,hf2:std_logic:='0';
signal br_in_rdy1, br_in_rdy2, br_in_rdy3, br_in_rdy4, br_in_rdy5:std_logic;
signal count1: std_logic_vector(5 downto 0);

--SHIFT LEFT/RIGHT FUNCTION
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
begin

----------------------------------------------------------------------------

	
--	signal data_out_next:std_logic_vector(31 downto 0));

		P1: process (clk ,br_in2,count,dataout)
		begin	
			rotation<='0';
			direction<='0';
			if (clk='1' and clk'event)then
					if (rotation = '0') then -- shift only
						dataout <= barrel_shift(br_in2, direction, count);
					else -- rotate only
						dataout <= barrel_rotate(br_in2, direction, count);
					end if;
			end if;

		end process;
----------------------------------------------------------------------------
	process(clk, hf_in, hf1 ,br_in2, br_in1, br_in,br_in_rdy1,br_in_rdy2, br_in_rdy3, br_in_rdy4, br_in_rdy5, count)
	begin
		if (clk='1' and clk'event) then
			hf1<=hf_in or '0';
			hf2<=hf1;
 		   br_in1<=br_in;
			br_in2<=br_in1;
			br_in_rdy1<=br_in_rdy; 
			br_in_rdy2<=br_in_rdy1;
			br_in_rdy3<=br_in_rdy2;
			br_in_rdy4<=br_in_rdy3;
			br_in_rdy5<=br_in_rdy4;
		end if;		
	end process;
--			
--
	process(hf1, middle, upper, dataout, br_rdy_out_temp, clk,br_rdy_out_temp, br_in_rdy5)
	begin

	if (clk='1' and clk'event) then
	
			upper<=dataout(31 downto 16);
			middle<=dataout(15 downto 0);
			if (hf1='0') then
				middle<=dataout(31 downto 16)or middle or dataout(15 downto 0);
				br_rdy_out_temp<='0';
			else
				
				upper<=dataout(31 downto 16) or middle;
				middle<=dataout(15 downto 0);
				br_rdy_out_temp<='1';
			end if;
			if(br_rdy_out_temp='1') then
				br_out_temp<=upper;
			else
				br_out_temp<=br_out_temp;
			end if;
	end if;
	if (br_in_rdy5='1')then
	br_out<=br_out_temp;
	br_rdy_out<=br_rdy_out_temp;
	else
	br_out<=(others=>'0');
	br_rdy_out<='0';
	end if;
	end process;


end Behavioral;

