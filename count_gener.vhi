
-- VHDL Instantiation Created from source file count_gener.vhd -- 00:57:23 08/03/2015
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT count_gener
	PORT(
		clock : IN std_logic;
		clear_gen : IN std_logic;
		count_gen : IN std_logic;          
		Q_gen : OUT std_logic
		);
	END COMPONENT;

	Inst_count_gener: count_gener PORT MAP(
		clock => ,
		clear_gen => ,
		count_gen => ,
		Q_gen => 
	);


