--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   22:48:32 07/26/2015
-- Design Name:   
-- Module Name:   D:/Workspace/Xlinx/huffman_26_7/counter_tb.vhd
-- Project Name:  huffman_26_7
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: counter
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
 
ENTITY counter_tb IS
END counter_tb;
 
ARCHITECTURE behavior OF counter_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT counter
    PORT(
         clock : IN  std_logic;
         clear : IN  std_logic;
         count : IN  std_logic;
         Q : OUT  std_logic_vector(4 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clock : std_logic := '0';
   signal clear : std_logic := '0';
   signal count : std_logic := '0';

 	--Outputs
   signal Q : std_logic_vector(4 downto 0);

   -- Clock period definitions
   constant clock_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: counter PORT MAP (
          clock => clock,
          clear => clear,
          count => count,
          Q => Q
        );

   -- Clock process definitions
   clock_process :process
   begin
		clock <= '0';
		wait for clock_period/2;
		clock <= '1';
		wait for clock_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clock_period*10;
		clear<='0';
      count<='1';wait for 100*clock_period;
		clear<='1';wait for 1*clock_period;
		clear<='0';
      wait;
   end process;

END;
