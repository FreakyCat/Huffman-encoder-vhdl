--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:06:04 08/02/2015
-- Design Name:   
-- Module Name:   D:/Workspace/Xlinx/huffman_26_7/ram_tb.vhd
-- Project Name:  huffman_26_7
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ram_mem
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
 
ENTITY ram_tb IS
END ram_tb;
 
ARCHITECTURE behavior OF ram_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ram_mem
    PORT(
		  clk     :in    std_logic;                                 -- Clock Input
        address :in    std_logic_vector (7 downto 0);  -- address Input
        datain  :in 		std_logic_vector (7 downto 0);  -- data bi-directional
        cs      :in    std_logic;                                 -- Chip Select
        we      :in    std_logic;                                 -- Write Enable/Read Enable
        oe      :in    std_logic; 
		  dataout :out   std_logic_vector (7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal address : std_logic_vector(7 downto 0) := (others => '0');
   signal cs : std_logic := '0';
   signal we : std_logic := '0';
   signal oe : std_logic := '0';
	signal datain : std_logic_vector(7 downto 0) := (others => '0');

	--OUT
   signal dataout : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ram_mem PORT MAP (
          clk => clk,
          address => address,
          datain => datain,
          cs => cs,
          we => we,
          oe => oe,
			 dataout => dataout
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
      cs <='1';
		we<='1';
		oe<='0';-- hold reset state for 100 ns.
		for i in 0 to 31 loop
			wait for clk_period;
			address <= std_logic_vector(to_unsigned(i,8));
			datain<=std_logic_vector(to_unsigned(i,8));
		end loop; 
		cs <='1';
		we<='0';
		oe<='1';
		for i in 0 to 31 loop
			wait for clk_period;
			address <= std_logic_vector(to_unsigned(i,8));
			--data<=std_logic_vector(to_unsigned(i,8));
		end loop; 
      wait;
   end process;

END;
