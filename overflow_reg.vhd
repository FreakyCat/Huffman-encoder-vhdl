----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:32:08 08/06/2015 
-- Design Name: 
-- Module Name:    overflow_reg - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity overflow_reg is
    Port ( oe_we_in : in  STD_LOGIC_VECTOR (2 downto 0);
           over : in  STD_LOGIC;
           oe_we_out : out  STD_LOGIC_VECTOR (2 downto 0));
end overflow_reg;

architecture Behavioral of overflow_reg is

begin


end Behavioral;

