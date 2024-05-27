library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity count3_tb_rtl_nolimit is
end count3_tb_rtl_nolimit;

architecture rtl_nolimit of count3_tb_rtl_nolimit is
    component count3
        port(
            clk, resetn, count_en : in std_logic;
            sum : out std_logic_vector(2 downto 0);
            cout : out std_logic
        );
    end component;

    signal clk_tb : std_logic := '0';
    signal resetn_tb : std_logic := '1'; 
    signal count_en_tb : std_logic := '0';
    signal sum_tb : std_logic_vector(2 downto 0);
    signal cout_tb : std_logic;

    constant clk_period : time := 10 ns;
begin
    dut: count3
    port map (
        clk => clk_tb,
        resetn => resetn_tb,
        count_en => count_en_tb,
        sum => sum_tb,
        cout => cout_tb
    );

    clk_process: process
    begin
        while now < 1000 ns loop
            clk_tb <= not clk_tb;
            wait for clk_period / 2;
        end loop;
        wait;
    end process;
    
    stimulus_process: process
    begin
        resetn_tb <= '0';
        count_en_tb <= '0';
        
        wait for 20 ns;
        
        resetn_tb <= '1';
        count_en_tb <= '1';
        
        wait for 200 ns;
        
        count_en_tb <= '0';
        
        wait for 50 ns;
        
        count_en_tb <= '1';
        
        wait for 50 ns;
        
        resetn_tb <= '0';
        
        wait for 50 ns;
        
        resetn_tb <= '1';
        
        wait;
    end process;
end rtl_nolimit;
