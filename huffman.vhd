----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:43:41 07/26/2015 
-- Design Name: 
-- Module Name:    huffman - Behavioral 
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
--component huffman  -koristi se za prepoznavanje vrednosti, adresira dc rom
----------------------------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;
use work.all;

entity huffman is
    port(	rst, clk,  rdy_in_huff: in std_logic;
				cntr64:in std_logic_vector(6 downto 0);
				dc: in std_logic_vector(11 downto 0);
				ac: in std_logic_vector(7 downto 0);
				huff: out std_logic_vector(15 downto 0);
				rdy_out_huff: out std_logic
    );
end huffman;

architecture huffman_arc of huffman is

--------------------------------------------------------------------
--
-------------------------------------------------------------------	

component ac_dc is
port(
			cntr64: in std_logic_vector(6 downto 0);
			ac_out:out std_logic;
			dc_out:out std_logic
			);
end component;

--------------------------------------------------------------------
--
-------------------------------------------------------------------	

	COMPONENT mux
	PORT(
		size1 : IN std_logic_vector(3 downto 0);
		size0 : IN std_logic_vector(3 downto 0);
		code1 : IN std_logic_vector(15 downto 0);
		code0 : IN std_logic_vector(15 downto 0);
		S : IN std_logic;          
		out_size : OUT std_logic_vector(3 downto 0);
		out_code : OUT std_logic_vector(15 downto 0);
		output_rdy : OUT std_logic
		);
	END COMPONENT;
--------------------------------------------------------------------
--
-------------------------------------------------------------------	


--------------------------------------------------------------------
--
-------------------------------------------------------------------	
	COMPONENT proba
		PORT(
			size : IN std_logic_vector(3 downto 0);
			code : IN std_logic_vector(15 downto 0);
			size_rdy : IN std_logic;
			clk : IN std_logic;
			rst : IN std_logic;          
			proba_out : OUT std_logic_vector(15 downto 0);
			proba_out_rdy : OUT std_logic
			);
	END COMPONENT;
--------------------------------------------------------------------
--
-------------------------------------------------------------------
COMPONENT dc_component
	PORT(
		dc_com_in : IN std_logic_vector(11 downto 0);
		clk : IN std_logic;
		dc_com_rdy_in : IN std_logic;
		dc_com_rst : IN std_logic;          
		dc_com_codeword : OUT std_logic_vector(15 downto 0);
		dc_com_codelen : OUT std_logic_vector(3 downto 0);
		dc_com_rdy_out : OUT std_logic
		);
END COMPONENT;

--------------------------------------------------------------------
--
-------------------------------------------------------------------

	COMPONENT ac_component
	PORT(
		ac_com_rdy_in : IN std_logic;
		ac_com_rst : IN std_logic;
		clk : IN std_logic;
		ac_com_we_oe : IN std_logic_vector(1 downto 0);
		ac_com_in : IN std_logic_vector(7 downto 0);          
		ac_com_codeword : OUT std_logic_vector(15 downto 0);
		ac_com_codelen : OUT std_logic_vector(3 downto 0);
		ac_com_rdy_out: 	out std_logic;
		ac_overflow:out std_logic
		);
	END COMPONENT;
--------------------------------------------------------------------
--
-------------------------------------------------------------------	
	

--8.2. signals
--signal rdy_out_ac:std_logic;
--signal dc_input: std_logic_vector(11 downto 0);
--signal dc_rom_addr: std_logic_vector(4 downto 0);
--signal size: std_logic_vector(3 downto 0);
--signal dc_rom_out:std_logic_vector(11 downto 0);
--signal ac_input:std_logic_vector(7 downto 0);
--signal dc_adress:std_logic_vector(0 downto 0):="1";


--------------------------------------------------------------------
--
-------------------------------------------------------------------



	COMPONENT fsm
	PORT(
		fsm_dc_com_rdy_out : IN std_logic;
		fsm_ac_com_rdy_out : IN std_logic;
		fsm_huff_rdy_in : IN std_logic;
		rst : IN std_logic;
		clk : IN std_logic;
		fsm_overflow : IN std_logic;          
		fsm_dc_com_rdy_in : OUT std_logic;
		fsm_ac_com_rdy_in : OUT std_logic;
		fsm_mux_s : OUT std_logic;
		fsm_proba_rdy_in : OUT std_logic;
		fsm_ac_com_we_oe : OUT std_logic_vector(1 downto 0)
		);
	END COMPONENT;

	
--------------------------------------------------------------------
--signals
-------------------------------------------------------------------
signal  rdy_out_dc,  rdy_out_ac : std_logic;
signal fsm_ac_out1 : std_logic;
signal fsm_dc_out1 : std_logic;
signal fsm_dc_com_rdy_out1 : std_logic;
signal fsm_ac_com_rdy_out1 : std_logic;
signal fsm_huff_rdy_in1 : std_logic;
signal fsm_dc_com_rdy_in1 : std_logic;
signal fsm_ac_com_rdy_in1 : std_logic;
signal fsm_overflow1 : std_logic:='0';
signal mux_s : std_logic;
signal size_rdy1 : std_logic;
signal fsm_ac_com_we_oe1 : std_logic_vector(1 downto 0);
signal mux_size1:std_logic_vector(3 downto 0);
signal mux_code1:std_logic_vector(15 downto 0);
signal mux_size0:std_logic_vector(3 downto 0);
signal mux_code0:std_logic_vector(15 downto 0);
signal mux_size:std_logic_vector(3 downto 0);
signal mux_code:std_logic_vector(15 downto 0);
signal fsm_proba_rdy_in1:std_logic;
signal huff1: std_logic_vector(15 downto 0);
signal rdy_out_huff1: std_logic;

--------------------------------------------------------------------
--
-------------------------------------------------------------------	
begin
--------------------------------------------------------------------
--
-------------------------------------------------------------------		 
--	INST_AC_DC_SET: ac_dc
--	PORT MAP(
--		cntr64 => cntr64,
--		ac_out => fsm_ac_out1,
--		dc_out => fsm_dc_out1
--	);

--------------------------------------------------------------------
--
-------------------------------------------------------------------	

Inst_mux: mux PORT MAP(
		size1 => mux_size1,
		size0 => mux_size0,
		code1 => mux_code1,
		code0 => mux_code0,
		S => mux_s,
		out_size => mux_size,
		out_code => mux_code,
		output_rdy =>open
	);
--------------------------------------------------------------------
--
-------------------------------------------------------------------	
  Inst_dc_component: dc_component PORT MAP(
		dc_com_in => dc,
		clk => clk,
		dc_com_rdy_in => fsm_dc_com_rdy_in1,
		dc_com_rst => rst,
		dc_com_codeword => mux_code1,
		dc_com_codelen => mux_size1,
		dc_com_rdy_out => fsm_dc_com_rdy_out1
	);


--------------------------------------------------------------------
--
-------------------------------------------------------------------	

	Inst_ac_component: ac_component PORT MAP(
		ac_com_rdy_in => fsm_ac_com_rdy_in1,
		ac_com_rst => rst,
		clk => clk ,
		ac_com_we_oe => fsm_ac_com_we_oe1,
		ac_com_in => ac,
		ac_com_codeword => mux_code0,
		ac_com_codelen => mux_size0,
		ac_com_rdy_out =>fsm_ac_com_rdy_out1, 
		ac_overflow =>fsm_overflow1 
	);

--------------------------------------------------------------------
--
-------------------------------------------------------------------	
	Inst_proba: proba PORT MAP(
		size => mux_size,
		code => mux_code,
		size_rdy => fsm_proba_rdy_in1,
		clk => clk ,
		rst => rst,
		proba_out => huff1,
		proba_out_rdy => rdy_out_huff1
	);


--------------------------------------------------------------------
--
-------------------------------------------------------------------

	Inst_fsm: fsm PORT MAP(
		fsm_dc_com_rdy_out => fsm_dc_com_rdy_out1,
		fsm_ac_com_rdy_out => fsm_ac_com_rdy_out1,
		fsm_huff_rdy_in => rdy_in_huff,
		rst => rst,
		clk => clk,
		fsm_overflow => fsm_overflow1 ,
		fsm_dc_com_rdy_in => fsm_dc_com_rdy_in1 ,
		fsm_ac_com_rdy_in => fsm_ac_com_rdy_in1,
		fsm_mux_s => mux_s,
		fsm_proba_rdy_in => fsm_proba_rdy_in1,
		fsm_ac_com_we_oe => fsm_ac_com_we_oe1
	);

--------------------------------------------------------------------
--
-------------------------------------------------------------------
huff <= huff1;

rdy_out_huff1 <= rdy_out_huff1;
	
end huffman_arc;