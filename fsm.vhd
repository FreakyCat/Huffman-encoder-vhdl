----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:42:44 07/26/2015 
-- Design Name: 
-- Module Name:    fsm - Behavioral 
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
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity fsm is
    port(	
		fsm_dc_com_rdy_out, fsm_ac_com_rdy_out, fsm_huff_rdy_in,rst, clk, fsm_overflow: in std_logic;
		fsm_dc_com_rdy_in, fsm_ac_com_rdy_in, fsm_mux_s, fsm_proba_rdy_in: out std_logic;
		fsm_ac_com_we_oe: out std_logic_vector(1 downto 0)
		);
end fsm;

architecture fsm_arc of fsm is
-------------------------------------------------
-- s0 - write ac and dc input
-- s1 - start dc_comp
-- s2 - start ac_compo generate codelen and codeword, out
-----------------------------------------------
    type states is ( init, s0 , s1, s2);
    signal nState, cState: states;
	
begin
    process( rst, clk )
    begin
			if( rst = '1' ) then 
				 cState <= init;
			elsif( clk'event and clk = '1' ) then 
				 cState <= nState;
			end if;
	end process;

	process(cState, fsm_dc_com_rdy_out, fsm_ac_com_rdy_out, fsm_huff_rdy_in)
	begin
			case cState is 
				
			when init =>	

			if (fsm_huff_rdy_in='1') then
				fsm_dc_com_rdy_in<='0';
				fsm_ac_com_rdy_in<='1';
				fsm_mux_s<='0';
				fsm_ac_com_we_oe<="00";
				fsm_proba_rdy_in<='0';
				nState<=s0;
				
			else
				fsm_dc_com_rdy_in<='0';
				fsm_ac_com_rdy_in<='0';
				fsm_mux_s<='0';
				fsm_ac_com_we_oe<="00";
				fsm_proba_rdy_in<='0';
				nState<=init;
			end if;
			
			when s0 =>	
				
				if (fsm_overflow='0')then  --upis u ac ram za kasniju obradu do ne dodje do 64
						fsm_dc_com_rdy_in<='0';
						fsm_ac_com_rdy_in<='1';
						fsm_mux_s<='0';
						fsm_ac_com_we_oe<="10";
						fsm_proba_rdy_in<='0';
						nState<=s0;
				else
						fsm_dc_com_rdy_in<='0';
						fsm_ac_com_rdy_in<='0';
						fsm_mux_s<='0';
						fsm_ac_com_we_oe<="00";
						fsm_proba_rdy_in<='0';
						nState<=s1;
					
				end if;
			when s1 =>	--obrada dc i ispis
				 if(fsm_dc_com_rdy_out='1')then --nadjen match
					fsm_dc_com_rdy_in<='0';
					fsm_ac_com_rdy_in<='0';
					fsm_mux_s<='1';
					fsm_ac_com_we_oe<="00";
					fsm_proba_rdy_in<='1';
					nState<=s2;
				else	
					fsm_dc_com_rdy_in<='1';
					fsm_ac_com_rdy_in<='0';
					fsm_mux_s<='1';
					fsm_ac_com_we_oe<="00";
					fsm_proba_rdy_in<='0';
					nState<=s1;
				end if;
				
			when s2 =>	--obrada ac
				if(fsm_overflow='0')then 
					fsm_dc_com_rdy_in<='0';
					fsm_ac_com_rdy_in<='1';
					fsm_mux_s<='0';
					fsm_ac_com_we_oe<="01";
					fsm_proba_rdy_in<='1';
					nState<=s2;
				else	
					fsm_dc_com_rdy_in<='0';
					fsm_ac_com_rdy_in<='1';
					fsm_mux_s<='0';
					fsm_ac_com_we_oe<="00";
					fsm_proba_rdy_in<='0';
					nState<=init;
				end if;
	
	
			when others =>
				   fsm_dc_com_rdy_in<='0';
					fsm_ac_com_rdy_in<='0';
					fsm_mux_s<='0';
					fsm_ac_com_we_oe<="00";
					fsm_proba_rdy_in<='0';
					nState<=init;
					
		 end case;
	
    end process;
	
end fsm_arc;