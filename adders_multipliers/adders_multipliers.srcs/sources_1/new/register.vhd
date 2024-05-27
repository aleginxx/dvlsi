library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity dff is
    Port ( D : in STD_LOGIC;
           clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           Q : out STD_LOGIC);
end dff;

architecture Behavioral of dff is

begin

    process(clk, rst) begin
        if rst='0' then
            Q<='0';
        elsif rising_edge(clk) then
            Q<=D;
        end if;
    end process;
    
end Behavioral;
