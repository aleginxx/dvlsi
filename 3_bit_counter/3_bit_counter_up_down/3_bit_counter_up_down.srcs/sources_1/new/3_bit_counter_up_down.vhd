library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;

entity count3_updown is
    port( 
        clk, resetn, updown : in std_logic;
        count_en : in std_logic;
        sum : out std_logic_vector(2 downto 0);
        cout : out std_logic
    );
end;

architecture rtl_nolimit of count3_updown is
signal count: std_logic_vector(2 downto 0);
begin
    process(clk, resetn)
    begin
        if resetn='0' then
            count <= (others=>'0');
        elsif clk'event and clk='1' then
            if count_en='1' then
                case updown is 
                    when '0' => count<=count-1;
                    when '1' => count<=count+1;
                    when others => null;
                end case;
            end if;
        end if;
    end process;

    sum <= count;
    cout <= '1' when count=7 and count_en='1' else '0';
    
end;

