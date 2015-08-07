
-- VHDL Instantiation Created from source file dc_rom.vhd -- 19:31:36 08/02/2015
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT dc_rom
	PORT(
		clk : IN std_logic;
		dc_rom_addr : IN std_logic_vector(4 downto 0);          
		dc_rom_out : OUT std_logic_vector(11 downto 0);
		oe : OUT std_logic
		);
	END COMPONENT;

	Inst_dc_rom: dc_rom PORT MAP(
		clk => ,
		dc_rom_addr => ,
		dc_rom_out => ,
		oe => 
	);


