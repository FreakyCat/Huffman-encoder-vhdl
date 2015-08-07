
-- VHDL Instantiation Created from source file dc_component.vhd -- 23:36:48 08/05/2015
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

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

	Inst_dc_component: dc_component PORT MAP(
		dc_com_in => ,
		clk => ,
		dc_com_rdy_in => ,
		dc_com_rst => ,
		dc_com_codeword => ,
		dc_com_codelen => ,
		dc_com_rdy_out => 
	);


