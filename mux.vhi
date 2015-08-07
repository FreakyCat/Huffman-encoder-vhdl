
-- VHDL Instantiation Created from source file mux.vhd -- 23:42:16 08/05/2015
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT mux
	PORT(
		size1 : IN std_logic_vector(3 downto 0);
		size0 : IN std_logic_vector(3 downto 0);
		code1 : IN std_logic_vector(15 downto 0);
		code0 : IN std_logic_vector(15 downto 0);
		S : IN std_logic;          
		out_size : OUT std_logic_vector(3 downto 0);
		out_code : OUT std_logic_vector(15 downto 0);
		output_rdy : OUT std_logic
		);
	END COMPONENT;

	Inst_mux: mux PORT MAP(
		size1 => ,
		size0 => ,
		code1 => ,
		code0 => ,
		S => ,
		out_size => ,
		out_code => ,
		output_rdy => 
	);


