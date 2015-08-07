----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:52:44 08/02/2015 
-- Design Name: 
-- Module Name:    ram_memory - Behavioral 
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
---------------------------------------------------------------------------------- -------------------------------------------------------
library ieee;
    use ieee.std_logic_1164.all;
    use ieee.std_logic_unsigned.all;

entity ram_mem is
    generic (
        DATA_WIDTH :integer:=12;
        ADDR_WIDTH :integer:=1
    );
    port (
        clk     :in    std_logic;                                 -- Clock Input
        address :in    std_logic_vector (ADDR_WIDTH-1 downto 0);  -- address Input
        datain  :in 		std_logic_vector (DATA_WIDTH-1 downto 0);  -- data bi-directional
        cs      :in    std_logic;                                 -- Chip Select
        we      :in    std_logic;                                 -- Write Enable/Read Enable
        oe      :in    std_logic; 
		  dataout :out   std_logic_vector (DATA_WIDTH-1 downto 0)

    );
end entity;
architecture rtl of ram_mem is
    ----------------Internal variables----------------
    constant RAM_DEPTH :integer := 2**ADDR_WIDTH;

    signal data_out :std_logic_vector (DATA_WIDTH-1 downto 0);

    type RAM is array (integer range <>)of std_logic_vector (DATA_WIDTH-1 downto 0);
    signal mem : RAM (0 to RAM_DEPTH-1);
begin

    ----------------Code Starts Here------------------
    -- Tri-State Buffer control
    -- output : When we = 0, oe = 1, cs = 1
  --  data <= data_out when (cs = '1' and oe = '1' and we = '0') else (others=>'Z');

    -- Memory Write Block
    -- Write Operation : When we = 1, oe=0, cs = 1
    MEM_WRITE:
    process (clk) begin
        if (clk='1' and clk'event) then
            if (cs = '1' and we = '1' and oe = '0') then
                mem(conv_integer(address)) <= datain;
            end if;
        end if;
    end process;

    -- Memory Read Block
    -- Read Operation : When we = 0, oe = 1, cs = 1
    MEM_READ:
    process (clk) begin
        if (clk='1' and clk'event) then
            if (cs = '1' and we = '0' and oe = '1') then
                 dataout <= mem(conv_integer(address));
			   else
						dataout <=(others=>'Z');
            end if;
        end if;
    end process;

end architecture;