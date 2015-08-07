
-- VHDL Instantiation Created from source file fsm.vhd -- 00:00:00 08/07/2015
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

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

	Inst_fsm: fsm PORT MAP(
		fsm_dc_com_rdy_out => ,
		fsm_ac_com_rdy_out => ,
		fsm_huff_rdy_in => ,
		rst => ,
		clk => ,
		fsm_overflow => ,
		fsm_dc_com_rdy_in => ,
		fsm_ac_com_rdy_in => ,
		fsm_mux_s => ,
		fsm_proba_rdy_in => ,
		fsm_ac_com_we_oe => 
	);


