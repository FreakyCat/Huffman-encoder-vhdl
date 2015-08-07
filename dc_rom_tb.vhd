--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   23:06:05 07/26/2015
-- Design Name:   
-- Module Name:   D:/Workspace/Xlinx/huffman_26_7/dc_rom_tb.vhd
-- Project Name:  huffman_26_7
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: dc_rom
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
USE ieee.numeric_std.ALL; 

 
ENTITY dc_rom_tb IS
END dc_rom_tb;
 
ARCHITECTURE behavior OF dc_rom_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT dc_rom
    PORT(
         clk : IN  std_logic;
         dc_rom_addr : IN  std_logic_vector(4 downto 0);
         dc_rom_out : OUT  std_logic_vector(11 downto 0);
         oe : OUT  std_logic
        );
    END COMPONENT;
    
   shared VARIABLE i : INTEGER :=0;
   --Inputs
   signal clk : std_logic := '0';
   signal dc_rom_addr : std_logic_vector(4 downto 0) := (others => '0');

 	--Outputs
   signal dc_rom_out : std_logic_vector(11 downto 0);
   signal oe : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: dc_rom PORT MAP (
          clk => clk,
          dc_rom_addr => dc_rom_addr,
          dc_rom_out => dc_rom_out,
          oe => oe
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
		for i in 0 to 31 loop
			wait for clk_period;
			dc_rom_addr <= std_logic_vector(to_unsigned(i,5));
		end loop; 

      wait;
   end process;

END;
