--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   00:31:53 08/03/2015
-- Design Name:   
-- Module Name:   D:/Workspace/Xlinx/huffma_8_2/dc_component_tb.vhd
-- Project Name:  huffma_8_2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: dc_component
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
 
ENTITY dc_component_tb IS
END dc_component_tb;
 
ARCHITECTURE behavior OF dc_component_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT dc_component
    PORT(
         dc_com_in : IN  std_logic_vector(11 downto 0);
         clk : IN  std_logic;
         dc_com_rdy_in : IN  std_logic;
         dc_com_rst : IN  std_logic;
        -- dc_com_we_oe : IN  std_logic_vector(1 downto 0);
         dc_com_codeword : OUT  std_logic_vector(15 downto 0);
         dc_com_codelen : OUT  std_logic_vector(3 downto 0);
         dc_com_rdy_out : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal dc_com_in : std_logic_vector(11 downto 0) := (others => '0');
   signal clk : std_logic := '0';
   signal dc_com_rdy_in : std_logic := '0';
   signal dc_com_rst : std_logic := '0';
   --signal dc_com_we_oe : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal dc_com_codeword : std_logic_vector(15 downto 0);
   signal dc_com_codelen : std_logic_vector(3 downto 0);
   signal dc_com_rdy_out : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: dc_component PORT MAP (
          dc_com_in => dc_com_in,
          clk => clk,
          dc_com_rdy_in => dc_com_rdy_in,
          dc_com_rst => dc_com_rst,
     --     dc_com_we_oe => dc_com_we_oe,
          dc_com_codeword => dc_com_codeword,
          dc_com_codelen => dc_com_codelen,
          dc_com_rdy_out => dc_com_rdy_out
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
			dc_com_in <= "011111111111";
         dc_com_rdy_in <= '1';
         dc_com_rst <='0';
        -- dc_com_we_oe 

      wait;
   end process;

END;
