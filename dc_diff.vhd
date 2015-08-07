--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   20:45:47 07/26/2015
-- Design Name:   
-- Module Name:   D:/Workspace/Xlinx/huffman_26_7/dc_diff.vhd
-- Project Name:  huffman_26_7
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: dc_coeff
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
 
ENTITY dc_diff IS
END dc_diff;
 
ARCHITECTURE behavior OF dc_diff IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT dc_coeff
    PORT(
         clk : IN  std_logic;
         rst : IN  std_logic;
         category : IN  std_logic_vector(3 downto 0);
         rdy_in_dc : IN  std_logic;
         rdy_out_dc : OUT  std_logic;
         code_word_dc : OUT  std_logic_vector(15 downto 0);
         codelength_dc : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal rst : std_logic := '0';
   signal category : std_logic_vector(3 downto 0) := (others => '0');
   signal rdy_in_dc : std_logic := '0';

 	--Outputs
   signal rdy_out_dc : std_logic;
   signal code_word_dc : std_logic_vector(15 downto 0);
   signal codelength_dc : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: dc_coeff PORT MAP (
          clk => clk,
          rst => rst,
          category => category,
          rdy_in_dc => rdy_in_dc,
          rdy_out_dc => rdy_out_dc,
          code_word_dc => code_word_dc,
          codelength_dc => codelength_dc
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
      wait for 100 ns;	

      wait for clk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
