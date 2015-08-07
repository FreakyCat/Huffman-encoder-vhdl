--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   01:34:13 08/03/2015
-- Design Name:   
-- Module Name:   D:/Workspace/Xlinx/huffma_8_2/ac_component_tb.vhd
-- Project Name:  huffma_8_2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ac_component
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
 
ENTITY ac_component_tb IS
END ac_component_tb;
 
ARCHITECTURE behavior OF ac_component_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ac_component
    PORT(
         ac_com_rdy_in : IN  std_logic;
         ac_com_rst : IN  std_logic;
         clk : IN  std_logic;
         ac_com_we_oe : IN  std_logic_vector(1 downto 0);
         ac_com_in : IN  std_logic_vector(7 downto 0);
         ac_com_codeword : OUT  std_logic_vector(15 downto 0);
         ac_com_codelen : OUT  std_logic_vector(3 downto 0);
         ac_com_rdy_out : OUT  std_logic;
			ac_overflow:out std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal ac_com_rdy_in : std_logic := '0';
   signal ac_com_rst : std_logic := '0';
   signal clk : std_logic := '0';
   signal ac_com_we_oe : std_logic_vector(1 downto 0) := (others => '0');
   signal ac_com_in : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal ac_com_codeword : std_logic_vector(15 downto 0);
   signal ac_com_codelen : std_logic_vector(3 downto 0);
   signal ac_com_rdy_out : std_logic;
	signal ac_overflow: std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ac_component PORT MAP (
          ac_com_rdy_in => ac_com_rdy_in,
          ac_com_rst => ac_com_rst,
          clk => clk,
          ac_com_we_oe => ac_com_we_oe,
          ac_com_in => ac_com_in,
          ac_com_codeword => ac_com_codeword,
          ac_com_codelen => ac_com_codelen,
          ac_com_rdy_out => ac_com_rdy_out,
			 ac_overflow => ac_overflow
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
         ac_com_rdy_in <='1';
         ac_com_rst <='0';
         ac_com_we_oe <="10";
			
			for i in 0 to 63 loop
			wait for clk_period;
			ac_com_in <= std_logic_vector(to_unsigned(i,8));
		   end loop; 
			wait for clk_period;
			ac_com_rdy_in <='1';
         ac_com_rst <='0';
         ac_com_we_oe <="01";

      -- insert stimulus here 

      wait;
   end process;

END;
