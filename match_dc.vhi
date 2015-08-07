
-- VHDL Instantiation Created from source file match_dc.vhd -- 19:26:41 08/02/2015
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT match_dc
	PORT(
		rdy_in_match : IN std_logic;
		clk : IN std_logic;
		match_dc_in : IN std_logic_vector(11 downto 0);
		match_dc_rom : IN std_logic_vector(11 downto 0);          
		size : OUT std_logic_vector(3 downto 0);
		rdy_out_match : OUT std_logic
		);
	END COMPONENT;

	Inst_match_dc: match_dc PORT MAP(
		rdy_in_match => ,
		clk => ,
		match_dc_in => ,
		match_dc_rom => ,
		size => ,
		rdy_out_match => 
	);


