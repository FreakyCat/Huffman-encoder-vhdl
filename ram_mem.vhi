
-- VHDL Instantiation Created from source file ram_mem.vhd -- 19:19:28 08/02/2015
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT ram_mem
	PORT(
		clk : IN std_logic;
		address : IN std_logic_vector(7 downto 0);
		datain : IN std_logic_vector(7 downto 0);
		cs : IN std_logic;
		we : IN std_logic;
		oe : IN std_logic;          
		dataout : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;

	Inst_ram_mem: ram_mem PORT MAP(
		clk => ,
		address => ,
		datain => ,
		cs => ,
		we => ,
		oe => ,
		dataout => 
	);


