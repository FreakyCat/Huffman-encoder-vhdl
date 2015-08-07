
-- VHDL Instantiation Created from source file ac_coeff.vhd -- 01:00:51 08/03/2015
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT ac_coeff
	PORT(
		run : IN std_logic_vector(3 downto 0);
		size : IN std_logic_vector(3 downto 0);
		rst : IN std_logic;
		clk : IN std_logic;
		rdy_in_ac : IN std_logic;          
		rdy_out_ac : OUT std_logic;
		code_word_ac : OUT std_logic_vector(15 downto 0);
		code_length_ac : OUT std_logic_vector(3 downto 0)
		);
	END COMPONENT;

	Inst_ac_coeff: ac_coeff PORT MAP(
		run => ,
		size => ,
		rst => ,
		clk => ,
		rdy_in_ac => ,
		rdy_out_ac => ,
		code_word_ac => ,
		code_length_ac => 
	);


