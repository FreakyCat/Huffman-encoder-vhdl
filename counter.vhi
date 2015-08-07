
-- VHDL Instantiation Created from source file counter.vhd -- 21:17:24 08/02/2015
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT counter
	PORT(
		clock : IN std_logic;
		clear : IN std_logic;
		count : IN std_logic;          
		Q : OUT std_logic_vector(4 downto 0)
		);
	END COMPONENT;

	Inst_counter: counter PORT MAP(
		clock => ,
		clear => ,
		count => ,
		Q => 
	);


