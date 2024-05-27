library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;

entity count3 is
    port( 
        clk, resetn, count_en : in std_logic;
        sum : out std_logic_vector(2 downto 0);
        cout : out std_logic
    );
end;

architecture rtl_nolimit of count3 is
signal count: std_logic_vector(2 downto 0);
begin
    process(clk, resetn)
    begin
        if resetn='0' then
            count <= (others=>'0');
        elsif clk'event and clk='1' then
            if count_en='1' then
                count<=count+1;
            end if;
        end if;
    end process;

    sum <= count;
    cout <= '1' when count=7 and count_en='1' else '0';
end rtl_nolimit;

architecture rtl_limit of count3 is
signal count : std_logic_vector(2 downto 0);
begin
    process(clk, resetn)
    begin
        if resetn='0' then
        count <= (others=>'0');
        elsif clk'event and clk='1' then
            if count_en = '1' then
                if count/=5 then
                    count <= count+1;
                else
                    count<=(others=>'0');
                end if;
            end if;
        end if;
    end process;
    sum<= count;
    cout <= '1' when count=7 and count_en='1' else '0';
end;
