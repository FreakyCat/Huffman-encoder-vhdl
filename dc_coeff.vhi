
-- VHDL Instantiation Created from source file dc_coeff.vhd -- 00:15:46 08/03/2015
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT dc_coeff
	PORT(
		clk : IN std_logic;
		rst : IN std_logic;
		category : IN std_logic_vector(3 downto 0);
		rdy_in_dc : IN std_logic;          
		rdy_out_dc : OUT std_logic;
		code_word_dc : OUT std_logic_vector(15 downto 0);
		codelength_dc : OUT std_logic_vector(3 downto 0)
		);
	END COMPONENT;

	Inst_dc_coeff: dc_coeff PORT MAP(
		clk => ,
		rst => ,
		category => ,
		rdy_in_dc => ,
		rdy_out_dc => ,
		code_word_dc => ,
		codelength_dc => 
	);


