library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;

entity count3_mod is
    port( 
        clk : in std_logic;
        resetn : in std_logic;
        modulo : in std_logic_vector(2 downto 0);
        count_en : in std_logic;
        sum : out std_logic_vector(2 downto 0);
        cout : out std_logic);
end;

architecture rtl_limit of count3_mod is
    signal count : std_logic_vector(2 downto 0);
begin
    process(clk, resetn)
    begin
        if resetn = '0' then
            count <= (others => '0');
        elsif clk'event and clk = '1' then
            if count_en = '1' then
                if count = modulo then
                    count <= (others => '0');
                else
                    count <= count + 1;
                end if;
            end if;
        end if;
    end process;
    
    sum <= count;
    cout <= '1' when count = "111" and count_en = '1' else '0'; 
end architecture rtl_limit;
