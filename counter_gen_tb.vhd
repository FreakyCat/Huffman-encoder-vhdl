--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   21:28:56 08/02/2015
-- Design Name:   
-- Module Name:   D:/Workspace/Xlinx/huffma_8_2/counter_gen_tb.vhd
-- Project Name:  huffma_8_2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: count_gener
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
use IEEE.std_logic_unsigned.all;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY counter_gen_tb IS
END counter_gen_tb;
 
ARCHITECTURE behavior OF counter_gen_tb IS 
 
shared variable data_len:integer:=8;
shared variable max_count:integer:=63;
   -- Component Declaration for the Unit Under Test (UUT)
 
COMPONENT count_gener
 generic (
 		data_len:integer:=8;
		max_count_gen:integer:=63
    );
	PORT(
		clock : IN std_logic;
		clear_gen : IN std_logic;
		count_gen : IN std_logic;          
		Q_gen : OUT std_logic_vector(data_len-1 downto 0)
	);
    
END COMPONENT;
   --Inputs
   signal clock1 : std_logic := '0';
   signal clear_gen1 : std_logic := '0';
   signal count_gen1 : std_logic := '0';

 	--Outputs
   signal Q_gen1 : std_logic_vector(data_len-1 downto 0);

   -- Clock period definitions
   constant clock_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: count_gener
	generic map(
 		data_len => 8,
		max_count_gen => 63
	 )
	PORT MAP (
          clock => clock1,
          clear_gen => clear_gen1,
          count_gen => count_gen1,
          Q_gen => Q_gen1
        );

   -- Clock process definitions
   clock_process :process
   begin
		clock1 <= '0';
		wait for clock_period/2;
		clock1 <= '1';
		wait for clock_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.

      wait for clock_period*10;


		clear_gen1<='0';
      count_gen1<='1';wait for 100*clock_period;
		clear_gen1<='1';wait for 1*clock_period;
		clear_gen1<='0';

      wait;
   end process;

END;
