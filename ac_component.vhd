----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:54:02 08/03/2015 
-- Design Name: 
-- Module Name:    ac_component - Behavioral 
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

--use IEEE.NUMERIC_STD.ALL;



entity ac_component is
port(
		ac_com_rdy_in: in std_logic;
		ac_com_rst: in std_logic;
		clk: in std_logic;
		ac_com_we_oe: in std_logic_vector(1 downto 0);
		ac_com_in: in std_logic_vector(7 downto 0);
		ac_com_codeword: 	out std_logic_vector(15 downto 0);
		ac_com_codelen:	out std_logic_vector(3 downto 0);
		ac_com_rdy_out: 	out std_logic;
		ac_overflow:out std_logic
	);
end ac_component;

architecture Behavioral of ac_component is

--------------------------------------------------------------------
--
-------------------------------------------------------------------	

component ram_mem
generic (
        DATA_WIDTH :integer;
        ADDR_WIDTH :integer
    );
port(
		clk : IN std_logic;
		address : IN std_logic_vector(7 downto 0);
		datain : IN std_logic_vector(7 downto 0);
		cs : IN std_logic;
		we : IN std_logic;
		oe : IN std_logic;          
		dataout : OUT std_logic_vector(7 downto 0)
		);
end component;
--------------------------------------------------------------------
--
-------------------------------------------------------------------	

COMPONENT count_gener
 generic (
 		data_len:integer;
		max_count_gen:integer
    );
	PORT(
		clock : IN std_logic;
		clear_gen : IN std_logic;
		count_gen : IN std_logic;          
		Q_gen : OUT std_logic_vector(data_len-1 downto 0);
		overflow: out std_logic
	);
END COMPONENT;
--------------------------------------------------------------------
--
-------------------------------------------------------------------	

component ac_coeff is
port(	run: in std_logic_vector(3 downto 0);
		size: in std_logic_vector(3 downto 0);
		rst: in std_logic;
		clk:in std_logic;
		rdy_in_ac:in std_logic;
		rdy_out_ac:out std_logic;
		--luma: std_logic;
		code_word_ac: out std_logic_vector(15 downto 0);
		code_length_ac: out std_logic_vector(3 downto 0)
	);
end component;

--------------------------------------------------------------------
--SIGNAL DECLARATION
-------------------------------------------------------------------
signal dataout: std_logic_vector(7 downto 0);
signal ac_input: std_logic;
signal Q_gen1: std_logic_vector(7 downto 0);
signal overflow1:std_logic:='0';
--------------------------------------------------------------------
--ARCHITECTURE BEGIN
-------------------------------------------------------------------	
begin

INST_RAM_MEM: ram_mem
generic map(
		DATA_WIDTH => 8,
		ADDR_WIDTH => 8
	 )
	 port map(
		clk => 		clk,
		address =>	Q_gen1,
		datain => 	ac_com_in,
		cs => 		ac_com_rdy_in,
		we => 		ac_com_we_oe(1),
		oe => 		ac_com_we_oe(0),
		dataout => 	dataout
	);
	
--------------------------------------------------------------------
--
--kada je rdy_in_ac = 1 krece da broji
-------------------------------------------------------------------		
	INST_COUNT_GENER_AC_RAM: count_gener
	generic map(
 		data_len => 8,
		max_count_gen => 63
	 )
	PORT MAP(
		clock => clk,
		clear_gen => ac_com_rst,--ako je oe=1 onda ce cita memorija
		count_gen => ac_com_rdy_in,
		Q_gen => Q_gen1,
		overflow => ac_overflow
	);
--------------------------------------------------------------------
--
--u ac koeficijent se upisuje iz rama sa koeficijentima(citanje)
-------------------------------------------------------------------		
	
	Inst_ac_coeff: ac_coeff 
	PORT MAP(
		run => dataout(7 downto 4),
		size => dataout(3 downto 0),
		rst => ac_com_rst,
		clk => clk,
		rdy_in_ac => ac_com_we_oe(0), --ako je oe =1 onda se cita
		rdy_out_ac => ac_com_rdy_out,
		code_word_ac => ac_com_codeword,
		code_length_ac => ac_com_codelen
	);



end Behavioral;

