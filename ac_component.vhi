
-- VHDL Instantiation Created from source file ac_component.vhd -- 20:48:04 08/06/2015
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT ac_component
	PORT(
		ac_com_rdy_in : IN std_logic;
		ac_com_rst : IN std_logic;
		clk : IN std_logic;
		ac_com_we_oe : IN std_logic_vector(1 downto 0);
		ac_com_in : IN std_logic_vector(7 downto 0);          
		ac_com_codeword : OUT std_logic_vector(15 downto 0);
		ac_com_codelen : OUT std_logic_vector(3 downto 0);
		ac_com_rdy_out : OUT std_logic
		);
	END COMPONENT;

	Inst_ac_component: ac_component PORT MAP(
		ac_com_rdy_in => ,
		ac_com_rst => ,
		clk => ,
		ac_com_we_oe => ,
		ac_com_in => ,
		ac_com_codeword => ,
		ac_com_codelen => ,
		ac_com_rdy_out => 
	);


