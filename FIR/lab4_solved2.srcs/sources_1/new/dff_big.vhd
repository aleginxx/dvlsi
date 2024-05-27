--DFFinput
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;

entity dff_big is
    Port ( d : in STD_LOGIC_VECTOR (7 downto 0);
           clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           q : out STD_LOGIC_VECTOR (7 downto 0));
end dff_big;

architecture Behavioral of dff_big is

begin
    process(clk, rst) begin
        if rst='1' then
            Q<="00000000";
        elsif rising_edge(clk) then
            Q<=D;
        end if;
    end process;
end Behavioral;