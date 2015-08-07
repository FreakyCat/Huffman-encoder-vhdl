--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   00:50:34 07/29/2015
-- Design Name:   
-- Module Name:   D:/Workspace/Xlinx/Huff_pom/proba_tb.vhd
-- Project Name:  Huff_pom
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: proba
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
 
ENTITY proba_tb IS
END proba_tb;
 
ARCHITECTURE behavior OF proba_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT proba
    PORT(
      size : IN std_logic_vector(3 downto 0);
		code: IN	std_logic_vector(15 downto 0);
		size_rdy : IN std_logic;
		clk : IN std_logic;
		rst : IN std_logic; 
		proba_out:OUT std_logic_vector(15 downto 0);
		proba_out_rdy:OUT std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal size : std_logic_vector(3 downto 0) := (others => '0');
   signal code : std_logic_vector(15 downto 0) := (others => '0');
   signal size_rdy : std_logic := '0';
   signal clk : std_logic := '0';
   signal rst : std_logic := '0';
	

 	--Outputs
   signal proba_out : std_logic_vector(15 downto 0);
	signal proba_out_rdy : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: proba PORT MAP (
          size => size,
          code => code,
          size_rdy => size_rdy,
          clk => clk,
          rst => rst,
          proba_out => proba_out,
			 proba_out_rdy => proba_out_rdy
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
		size_rdy <='1';
		size <="1010";
      code <="0000001111110110";
     
		wait for clk_period*1;
		size <="1011";
      code <="0000011110000111";
      size_rdy <='1';
		wait for clk_period*1;
		size <="0011";
      code <="0000000000000111";
      size_rdy <='1';
		wait for clk_period*1;
		size <="1100";
      code <="0000111011101100";
      size_rdy <='1';
		wait for clk_period*10;
		code <="0000000000000000";
		size_rdy <='0';
		wait for clk_period*10;
		size <="0011";
		code <="0000000000000111";
		size_rdy <='1';
      wait;
   end process;

END;
