--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   00:15:28 08/07/2015
-- Design Name:   
-- Module Name:   D:/Workspace/Xlinx/huffma_8_2/huffman_tb.vhd
-- Project Name:  huffma_8_2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: huffman
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
use ieee.std_logic_unsigned.all;
 
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY huffman_tb IS
END huffman_tb;
 
ARCHITECTURE behavior OF huffman_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT huffman
    PORT(
         rst : IN  std_logic;
         clk : IN  std_logic;
         rdy_in_huff : IN  std_logic;
         cntr64 : IN  std_logic_vector(6 downto 0);
         dc : IN  std_logic_vector(11 downto 0);
         ac : IN  std_logic_vector(7 downto 0);
         huff : OUT  std_logic_vector(15 downto 0);
         rdy_out_huff : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal rst : std_logic := '0';
   signal clk : std_logic := '0';
   signal rdy_in_huff : std_logic := '0';
   signal cntr64 : std_logic_vector(6 downto 0) := (others => '0');
   signal dc : std_logic_vector(11 downto 0) := (others => '0');
   signal ac : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal huff : std_logic_vector(15 downto 0);
   signal rdy_out_huff : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: huffman PORT MAP (
          rst => rst,
          clk => clk,
          rdy_in_huff => rdy_in_huff,
          cntr64 => cntr64,
          dc => dc,
          ac => ac,
          huff => huff,
          rdy_out_huff => rdy_out_huff
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
		
         rdy_in_huff <='1';
         dc <="011111111111";
			for i in 0 to 63 loop
			wait for 2*clk_period;
			ac <= std_logic_vector(to_unsigned(i,8));
		   end loop; 

      -- insert stimulus here 

      wait;
   end process;

END;
