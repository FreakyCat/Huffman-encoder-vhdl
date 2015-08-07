----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:08:00 07/29/2015 
-- Design Name: 
-- Module Name:    proba - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library IEEE;
use IEEE.std_logic_1164.all;
--use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;
use work.all;-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity proba is
	port(
		size : IN std_logic_vector(3 downto 0);
		code: IN	std_logic_vector(15 downto 0);
		size_rdy : IN std_logic;
		clk : IN std_logic;
		rst : IN std_logic; 
		proba_out:OUT std_logic_vector(15 downto 0);
		proba_out_rdy:OUT std_logic
		);
end proba;

architecture Behavioral of proba is


	COMPONENT shift_component is
	port (
			codesize: in std_logic_vector(3 downto 0);
			codesize_rdy: in std_logic;
			clk: in std_logic;
			rst: in std_logic;
			count_bs: out std_logic_vector(5 downto 0);
			half_full_flag:out std_logic
			);
	END COMPONENT;

	
	COMPONENT bs_vhdl is
	port(
		datain : IN std_logic_vector(31 downto 0);
		bs_rdy_in : IN std_logic;
		clock : IN std_logic;
		count : IN std_logic_vector(5 downto 0);          
		dataout : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;
	
	COMPONENT barrel_reg is
	port(	
		br_in: in std_logic_vector(31 downto 0);
		br_in_rdy:in std_logic;
		clk : in std_logic;
		hf_in: in std_logic;
		count: in std_logic_vector(5 downto 0);
		br_out:out std_logic_vector(15 downto 0);
		br_rdy_out:out std_logic
		);
	END COMPONENT;


signal counting: std_logic_vector(5 downto 0):=(others => '0');
signal bs_out: std_logic_vector(31 downto 0);
signal proba_temp:std_logic_vector(15 downto 0);
signal hf:std_logic;
signal bs_in: std_logic_vector(31 downto 0):=(others => '0');

begin

bs_in (15 downto 0)<=code;
Inst_shift_component: shift_component PORT MAP(
		codesize => size ,
		codesize_rdy => size_rdy,
		clk => clk,
		rst => rst,
		count_bs => counting,
		half_full_flag => hf
		);
	
	
	Inst_barrel_reg: barrel_reg PORT MAP(
		br_in =>  bs_in,
		br_in_rdy => size_rdy,
		clk => clk,
		hf_in => hf ,
		count=> counting,
		br_out => proba_out,
		br_rdy_out => proba_out_rdy
	);

bs_in (15 downto 0)<=code;


end Behavioral;

