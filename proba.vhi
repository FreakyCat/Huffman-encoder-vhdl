
-- VHDL Instantiation Created from source file proba.vhd -- 23:40:10 08/05/2015
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

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

	Inst_proba: proba PORT MAP(
		size => ,
		code => ,
		size_rdy => ,
		clk => ,
		rst => ,
		proba_out => ,
		proba_out_rdy => 
	);


