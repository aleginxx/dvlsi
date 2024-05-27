library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;
use IEEE.NUMERIC_STD.ALL;


entity FIR_tb is
end FIR_tb;

architecture Behavioral of FIR_tb is

    -- Constants
    constant CLK_PERIOD : time := 10 ns;
    constant CLK_PERIOD_ALL: time:=8*CLK_PERIOD;

    -- Signals
    signal clk : std_logic := '0';
    signal rst : std_logic := '1';
    signal en_ram_rom : std_logic := '0';
    signal x : std_logic_vector(7 downto 0) := (others => '0');
    signal y_final : std_logic_vector(18 downto 0);
    signal rom_out, ram_out: std_logic_vector(7 downto 0);
    -- signal RAM_IN: std_logic_vector(7 downto 0);
    signal rom_add, ram_add, counter_control : std_logic_vector(2 downto 0);
    signal mac_init : std_logic;
    signal valid_out : std_logic;
    signal we_out : std_logic := '1';
    signal valid_in: std_logic := '0';

begin

    -- Instantiate the DUT
    DUT: entity work.FIR
    Port map (
        clk => clk,
        rst => rst,
        en_ram_rom => en_ram_rom,
        x => x,
        y_final => y_final,
        rom_out => rom_out,
        ram_out => ram_out,
        rom_add => rom_add,
        ram_add => ram_add,
        we_out => we_out,
        mac_init => mac_init,
        valid_in => valid_in,
        valid_out => valid_out,
        counter_control => counter_control
     -- RAM_IN => RAM_IN
    );

--     Clock Process
    clk_process : process
    begin
        while now < 10000 ns loop
            clk <= '0';
            wait for CLK_PERIOD/2;
            clk <= '1';
            wait for CLK_PERIOD/2;
        end loop;
        wait;
    end process clk_process;

    -- validin Process
    validin_process : process
    begin
        while now < 10000 ns loop
            valid_in <= '1';
            wait for 1*CLK_PERIOD;
            valid_in <= '0';
            wait for 20*CLK_PERIOD;
        end loop;
    end process validin_process;
   

    -- Stimulus Process
    stim_process : process
    begin
        rst <= '0';
        en_ram_rom <= '1';
        
        rst <= '1';
        valid_in<='0';
        x <= "00000000";
        wait for CLK_PERIOD_ALL;
        rst <= '0';
        valid_in<='0';
        x <= "00000000";
        wait for CLK_PERIOD_ALL;
        rst <= '1';
        valid_in<='0';
        x <= "00000000";
        wait for CLK_PERIOD_ALL;
        rst <= '0';
        valid_in<='1';
        x <= "11010000";
        wait for CLK_PERIOD_ALL ;
        rst <= '0';
        valid_in<='1';
        x <= "11100111";
        wait for CLK_PERIOD_ALL;
        rst <= '0';
        valid_in<='1';
        x <= "00100000";
        wait for CLK_PERIOD_ALL;
        rst <= '0';
        valid_in<='1';
        x <= "11101001";
        wait for CLK_PERIOD_ALL ;
        rst <= '0';
        valid_in<='1';
        x <= "10100001";
        wait for CLK_PERIOD_ALL;
        rst <= '0';
        valid_in<='1';
        x <= "00011000";
        wait for CLK_PERIOD_ALL;
        rst <= '0';
        valid_in<='1';
        x <= "01000111";
        wait for CLK_PERIOD_ALL ;
        rst <= '0';
        valid_in<='1';
        x <= "10001100";
        wait for CLK_PERIOD_ALL;
        rst <= '0';
        valid_in<='1';
        x <= "11110101";
        wait for CLK_PERIOD_ALL;
        rst <= '0';
        valid_in<='1';
        x <= "11110111";
        wait for CLK_PERIOD_ALL;
        rst <= '0';
        valid_in<='1';
        x <= "00101000";
        wait for CLK_PERIOD_ALL;
        rst <= '0';
        valid_in<='1';
        x <= "11111000";
        wait for CLK_PERIOD_ALL;
        rst <= '0';
        valid_in<='1';
        x <= "11110101";
        wait for CLK_PERIOD_ALL;
        rst <= '0';
        valid_in<='1';
        x <= "01111100";
        wait for CLK_PERIOD_ALL;
        rst <= '0';
        valid_in<='1';
        x <= "11001100";
        wait for CLK_PERIOD_ALL;
        rst <= '0';
        valid_in<='1';
        x <= "00100100";
        wait for CLK_PERIOD_ALL;
        rst <= '0';
        valid_in<='1';
        x <= "01101011";
        wait for CLK_PERIOD_ALL;
        rst <= '0';
        valid_in<='1';
        x <= "11101010";
        wait for CLK_PERIOD_ALL;
        rst <= '0';
        valid_in<='1';
        x <= "11001010";
        wait for CLK_PERIOD_ALL;
        rst <= '0';
        valid_in<='1';
        x <= "11110101";
        wait for CLK_PERIOD_ALL;
        rst <= '0';
        valid_in<='1';
        x <= "00000000";
        wait for CLK_PERIOD_ALL;
                                                 
        wait;
    end process stim_process;
end Behavioral;