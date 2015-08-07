--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   20:59:15 07/28/2015
-- Design Name:   
-- Module Name:   D:/Workspace/Xlinx/huffman_26_7/shift_component_tb.vhd
-- Project Name:  huffman_26_7
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: shift_component
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
use IEEE.std_logic_1164.all; 
--use IEEE.std_logic_arith.all; 
use IEEE.std_logic_unsigned.all; 
use IEEE.numeric_std.all; 


ENTITY shift_component_tb IS
END shift_component_tb;
 
ARCHITECTURE behavior OF shift_component_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT shift_component
    PORT(
			codesize: in std_logic_vector(3 downto 0);
			codesize_rdy: in std_logic;
			clk: in std_logic;
			rst: in std_logic;
			count_bs: out std_logic_vector(5 downto 0);
			half_full_flag:out std_logic
			);
    END COMPONENT;
    

   --Inputs
   signal codesize : std_logic_vector(3 downto 0) := (others => '0');
   signal codesize_rdy : std_logic := '0';
   signal clk : std_logic ;
   signal rst : std_logic := '0';

 	--Outputs
   signal count_bs :std_logic_vector(5 downto 0);
   signal half_full_flag : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: shift_component PORT MAP (
          codesize => codesize,
          codesize_rdy => codesize_rdy,
          clk => clk,
          rst => rst,
          count_bs => count_bs,
          half_full_flag => half_full_flag
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
			codesize<="0100";
			codesize_rdy<='1';
			rst<='0'; wait for  1*clk_period;
			codesize<="1110";
			codesize_rdy<='1';
			rst<='0'; wait for  1*clk_period;
			codesize<="1011";
			codesize_rdy<='1';
			rst<='0'; wait for  1*clk_period;
			codesize<="1100";
			codesize_rdy<='1';
			rst<='0'; wait for  1*clk_period;

      wait;
		
		
   end process;

END;
