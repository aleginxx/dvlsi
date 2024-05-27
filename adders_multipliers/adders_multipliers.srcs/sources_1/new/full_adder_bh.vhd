library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity full_adder_bh is
    Port ( a : in std_logic;
           b : in std_logic;
           cin : in std_logic;
           clk : in std_logic;
           rst : in std_logic;
           sum : out std_logic;
           cout : out std_logic);
end full_adder_bh;

architecture Behavioral of full_adder_bh is

begin
    process(clk, rst)
    begin
        if rst='0' then 
            sum <= '0';
            cout <= '0';
        elsif rising_edge(clk) then
            if((a='1' and b='1' and cin='0') or (a='0' and b='1' and cin='1') or (a='1' and b='0' and cin='1') or (a='1' and b='1' and cin='1')) then 
                cout <= '1';
            else 
                cout <= '0';
            end if;
            
            if ((a='1' and b='0' and cin='0') or (a='0' and b='1' and cin='0') or (a='0' and b='0' and cin='1') or (a='1' and b='1' and cin='1')) then
                sum <= '1';
            else
                sum <= '0';
            end if;
        end if;
    end process;

end Behavioral;
