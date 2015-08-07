----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:58:06 07/28/2015 
-- Design Name: 
-- Module Name:    shift_component - Behavioral 
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
use IEEE.std_logic_1164.all; 
--use IEEE.std_logic_arith.all; 
use IEEE.std_logic_unsigned.all; 
use IEEE.numeric_std.all; 

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity shift_component is
port (
			codesize: in std_logic_vector(3 downto 0);
			codesize_rdy: in std_logic;
			clk: in std_logic;
			rst: in std_logic;
			count_bs: out std_logic_vector(5 downto 0);
			half_full_flag:out std_logic
		);
end shift_component;

architecture Behavioral of shift_component is

signal code_sum_prev: unsigned(5 downto 0):="000000";
signal code_sum_prev1: unsigned(5 downto 0);
signal code_sum: unsigned(5 downto 0):= "100000";
signal codesize_temp:std_logic_vector(5 downto 0);
signal size:unsigned(5 downto 0);
signal hff_curr, hff_prev:std_logic;
begin
					
		codesize_temp <= "00"&codesize;
		size<=unsigned(codesize_temp);
PROCESS (clk, rst,codesize_rdy, hff_prev, code_sum_prev,codesize,code_sum_prev1,size,code_sum) 
   BEGIN 
      IF (rst = '1') THEN 
         code_sum <= "100000";     
         code_sum_prev<= "000000";         
         half_full_flag <= '0';     
      ELSIF (clk'EVENT AND clk = '1') THEN 
         IF (codesize_rdy = '1') THEN 
				IF (code_sum_prev<="100000" AND code_sum_prev>= "010000")  THEN 
                  code_sum_prev<= size + (code_sum_prev1-  --slobodna mesta u sifteru    
                  "010000");     
                  code_sum <= "100000" - code_sum_prev;     
                  hff_prev  <= '1';	--koliko se mesta siftuje  
            ELSE
               code_sum_prev<= size  + code_sum_prev1; --slobodna mesta u sifteru    
               code_sum <= "100000"- code_sum_prev;  --koliko se mesta siftuje    
               hff_prev  <= '0';
				END IF; 
         END IF; 
		
      END IF; 
	      half_full_flag<=hff_prev;
		count_bs<=std_logic_vector(code_sum);
		code_sum_prev1<=code_sum_prev;	
   END PROCESS;

--	
--	
--PROCESS (hff_prev, clk)
--	BEGIN 
--		if (clk'EVENT AND clk = '1')then 		
--			--hff_curr<=hff_prev;
--			code_sum_prev1<=code_sum_prev;
--		end if;
--
--   END PROCESS;


end Behavioral;

