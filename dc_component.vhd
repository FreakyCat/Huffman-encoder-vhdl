----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:02:23 08/03/2015 
-- Design Name: 
-- Module Name:    dc_component - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity dc_component is
port(		
		dc_com_in: 			in std_logic_vector(11 downto 0);
		clk:					in std_logic;
		dc_com_rdy_in: 	in std_logic;
		dc_com_rst: 	in std_logic;
	--	dc_com_we_oe: 	in std_logic_vector(1 downto 0);
		dc_com_codeword: 	out std_logic_vector(15 downto 0);
		dc_com_codelen:	out std_logic_vector(3 downto 0);
		dc_com_rdy_out: 	out std_logic
		
);


end dc_component;

architecture Behavioral of dc_component is

--------------------------------------------------------------------
--
-------------------------------------------------------------------	
--component ram_mem
--generic (
--        DATA_WIDTH :integer:=12;
--        ADDR_WIDTH :integer:=1
--    );
--port(
--		clk : IN std_logic;
--		address : IN std_logic_vector(ADDR_WIDTH-1 downto 0);
--		datain : IN std_logic_vector(DATA_WIDTH-1 downto 0);
--		cs : IN std_logic;
--		we : IN std_logic;
--		oe : IN std_logic;          
--		dataout : OUT std_logic_vector(DATA_WIDTH-1 downto 0)
--		);
--end component;
--------------------------------------------------------------------
--
-------------------------------------------------------------------	
component dc_coeff is
port(	clk: in std_logic;
		rst: in std_logic;
		--luma:in std_logic;-- bira se luma(=1) ili chroma coef(=1)
		category: in std_logic_vector(3 downto 0);
		rdy_in_dc: in std_logic;
		rdy_out_dc: out std_logic;
		code_word_dc:out std_logic_vector(15 downto 0);-- code_word_dc dobija se odgovarajuca duzina koda(codelength)
		codelength_dc:out std_logic_vector(3 downto 0)-- code_word_dc 0000000100 tada je codelen=3 tj 0011

);
end component;

--------------------------------------------------------------------
--
-------------------------------------------------------------------	
signal dc_input: std_logic_vector(11 downto 0);
signal dc_rom_addr: std_logic_vector(4 downto 0);
signal size: std_logic_vector(3 downto 0);
signal dc_rom_out:std_logic_vector(11 downto 0);
signal ac_input:std_logic_vector(7 downto 0);
signal dc_adress:std_logic_vector(0 downto 0):="1";
signal rdy_out_dc: std_logic;
signal rdy_out_match: std_logic;
signal dc_rom_oe: std_logic;
signal cs1:std_logic:='1';
signal oe1: std_logic;
signal adress1:std_logic_vector(0 downto 0):="1";
--------------------------------------------------------------------
--
-------------------------------------------------------------------
component  dc_rom is
port(	clk:in std_logic;
		dc_rom_addr:in std_logic_vector(4 downto 0);
		dc_rom_out:out std_logic_vector(11 downto 0);
		oe:out std_logic
		);
end component;

--------------------------------------------------------------------
--
-------------------------------------------------------------------	

component counter is
port(	clock:	in std_logic;
		clear:	in std_logic;
		count:	in std_logic;
		Q:	out std_logic_vector(4 downto 0)
);
end component;

--------------------------------------------------------------------
--
-------------------------------------------------------------------	

component  match_dc is
port( 
		rdy_in_match:in std_logic;
		clk: in std_logic;
		match_dc_in:in std_logic_vector(11 downto 0);
		match_dc_rom: in std_logic_vector(11 downto 0);
		size: out std_logic_vector(3 downto 0);
		rdy_out_match: out std_logic
		);
end component;

--------------------------------------------------------------------
--ARCHITECTURE BEGIN
-------------------------------------------------------------------	
begin

--------------------------------------------------------------------
--INSTATIATIONS
-------------------------------------------------------------------			 
--	 INST_RAM_MEM_DC: ram_mem 
--	 generic map(
--		DATA_WIDTH => 12,
--		ADDR_WIDTH => 1
--	 )
--	 port map(
--		clk => 		clk,
--		address =>	adress1,
--		datain => 	dc_com_in,
--		cs => 		cs1,
--		we => 		rdy_out_match,
--		oe => 		dc_com_we_oe(0),
--		dataout => 	dc_input
--	);
--------------------------------------------------------------------
--
-------------------------------------------------------------------		 
	INST_MATCH_DC: match_dc
	PORT MAP(
		rdy_in_match => 	dc_rom_oe,
		clk => 				clk,
		match_dc_in => 	dc_com_in,
		match_dc_rom => 	dc_rom_out,
		size => 				size,
		rdy_out_match => 	rdy_out_match 
	);
--------------------------------------------------------------------
--
-------------------------------------------------------------------		
	INST_DC_ROM_COUNTER: counter
	PORT MAP(
		clock => clk,
		clear => dc_com_rst,
		count => dc_com_rdy_in,
		Q => dc_rom_addr
	);
--------------------------------------------------------------------
--
-------------------------------------------------------------------		
	INST_DC_ROM_MEM: dc_rom
	PORT MAP(
		clk => clk,
		dc_rom_addr => dc_rom_addr,
		dc_rom_out => dc_rom_out,
		oe => dc_rom_oe
	);
	
--------------------------------------------------------------------
--
--
-------------------------------------------------------------------			 
	 Inst_dc_coeff: dc_coeff
	 PORT MAP(
		clk => clk ,
		rst => dc_com_rst ,
		category => size ,
		rdy_in_dc => rdy_out_match ,
		rdy_out_dc => dc_com_rdy_out,
		code_word_dc => dc_com_codeword,
		codelength_dc =>dc_com_codelen 
	);
 
end Behavioral;

