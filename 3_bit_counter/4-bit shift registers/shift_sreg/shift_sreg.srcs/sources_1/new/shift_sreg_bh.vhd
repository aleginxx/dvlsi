----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/13/2024 02:26:09 PM
-- Design Name: 
-- Module Name: 4_bit_shift_register_with_parallel_load - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity shift_reg3 is
    Port ( 
        clk, rst, si, en, pl, dir : in std_logic;
        din : in std_logic_vector(3 downto 0);
        so : out std_logic
        );
end entity;

architecture rtl of shift_reg3 is
    signal dff : std_logic_vector(3 downto 0);

	begin
		edge : process(clk, rst)
		begin
			if rst='0' then
				dff<= (others => '0');
			elsif clk'event and clk='1' then 
				if pl='1' then 
					dff <= din;
				elsif en='1' then
					if dir='0' then -- right shift register
						dff <= si & dff(3 downto 1);
					elsif dir='1' then -- left shift register
						dff <= dff(2 downto 0) & si;
					end if;
				end if;
			end if;
		end process;
	
	with dir select so <= dff(0) when '0',
	                      dff(3) when others;
    

end rtl;
