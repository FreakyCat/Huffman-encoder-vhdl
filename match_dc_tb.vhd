--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   20:46:48 07/26/2015
-- Design Name:   
-- Module Name:   D:/Workspace/Xlinx/huffman_26_7/match_dc_tb.vhd
-- Project Name:  huffman_26_7
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: match_dc
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY match_dc_tb IS
END match_dc_tb;
 
ARCHITECTURE behavior OF match_dc_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT match_dc
    PORT(
         rdy_in_match : IN  std_logic;
         clk : IN  std_logic;
         match_dc_in : IN  std_logic_vector(11 downto 0);
         match_dc_rom : IN  std_logic_vector(11 downto 0);
         size : OUT  std_logic_vector(3 downto 0);
         rdy_out_match : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal rdy_in_match : std_logic := '0';
   signal clk : std_logic := '0';
   signal match_dc_in : std_logic_vector(11 downto 0) := (others => '0');
   signal match_dc_rom : std_logic_vector(11 downto 0) := (others => '0');

 	--Outputs
   signal size : std_logic_vector(3 downto 0);
   signal rdy_out_match : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: match_dc PORT MAP (
          rdy_in_match => rdy_in_match,
          clk => clk,
          match_dc_in => match_dc_in,
          match_dc_rom => match_dc_rom,
          size => size,
          rdy_out_match => rdy_out_match
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		rdy_in_match<='1';
     match_dc_in <="111101111011";
	match_dc_rom  <= "111111111111";wait for 1*clk_period;     
	match_dc_rom  <= "11111111110-";wait for 1*clk_period;     
   match_dc_rom	<= "1111111110--";wait for 1*clk_period; 
	match_dc_rom	<= "111111110---";wait for 1*clk_period; 
	match_dc_rom	<= "11111110----";wait for 1*clk_period; 
	match_dc_rom	<= "1111110-----";wait for 1*clk_period; 
	match_dc_rom	<= "111110------";wait for 1*clk_period; 
	match_dc_rom	<= "11110-------";wait for 1*clk_period; 
	match_dc_rom	<= "1110--------";wait for 1*clk_period; 
	match_dc_rom	<= "110---------";wait for 1*clk_period; 
	match_dc_rom	<= "10----------";wait for 1*clk_period; --11 mozemo size da dobijemo jedam levi shift
	match_dc_rom	<= "000000000000";wait for 1*clk_period;
	match_dc_rom  <= "000000000001";wait for 1*clk_period;     
	match_dc_rom  <= "00000000001-";wait for 1*clk_period;     
	match_dc_rom	<= "0000000001--";wait for 1*clk_period; 
	match_dc_rom	<= "000000001---";wait for 1*clk_period; 
	match_dc_rom	<= "00000001----";wait for 1*clk_period; 
	match_dc_rom	<= "0000001-----";wait for 1*clk_period; 
	match_dc_rom	<= "000001------";wait for 1*clk_period; 
	match_dc_rom	<= "00001-------";wait for 1*clk_period; 
	match_dc_rom	<= "0001--------";wait for 1*clk_period; 
	match_dc_rom	<= "001---------";wait for 1*clk_period; 
	match_dc_rom	<= "01----------";wait for 1*clk_period; --27
	match_dc_rom	<= "000000000000";wait for 1*clk_period;	

      wait;
   end process;

END;
