
-- VHDL Instantiation Created from source file ac_dc.vhd -- 19:23:43 08/02/2015
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT ac_dc
	PORT(
		cntr64 : IN std_logic_vector(6 downto 0);          
		ac_out : OUT std_logic;
		dc_out : OUT std_logic
		);
	END COMPONENT;

	Inst_ac_dc: ac_dc PORT MAP(
		cntr64 => ,
		ac_out => ,
		dc_out => 
	);


