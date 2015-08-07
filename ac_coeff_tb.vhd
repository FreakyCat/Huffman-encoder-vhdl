--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:45:17 07/26/2015
-- Design Name:   
-- Module Name:   D:/Workspace/Xlinx/huffman_26_7/ac_coeff_tb.vhd
-- Project Name:  huffman_26_7
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ac_coeff
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
 
ENTITY ac_coeff_tb IS
END ac_coeff_tb;
 
ARCHITECTURE behavior OF ac_coeff_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ac_coeff
    PORT(
         run : IN  std_logic_vector(3 downto 0);
         size : IN  std_logic_vector(3 downto 0);
         rst : IN  std_logic;
         clk : IN  std_logic;
         rdy_in_ac : IN  std_logic;
         rdy_out_ac : OUT  std_logic;
         code_word_ac : OUT  std_logic_vector(15 downto 0);
         code_length_ac : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal run : std_logic_vector(3 downto 0) := (others => '0');
   signal size : std_logic_vector(3 downto 0) := (others => '0');
   signal rst : std_logic := '0';
   signal clk : std_logic := '0';
   signal rdy_in_ac : std_logic := '0';

 	--Outputs
   signal rdy_out_ac : std_logic;
   signal code_word_ac : std_logic_vector(15 downto 0);
   signal code_length_ac : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ac_coeff PORT MAP (
          run => run,
          size => size,
          rst => rst,
          clk => clk,
          rdy_in_ac => rdy_in_ac,
          rdy_out_ac => rdy_out_ac,
          code_word_ac => code_word_ac,
          code_length_ac => code_length_ac
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


      wait for clk_period*10;
		rdy_in_ac<='1';
      run<="0001";
		size<="0001";

      wait for clk_period*10;

      wait;
   end process;

END;
