library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity calculation_tb is
end calculation_tb;

architecture Behavioral of calculation_tb is

    component calculation is
    Port (
          clock : in std_logic;
          reset : in std_logic;
          p00 : in std_logic_vector(7 downto 0);
          p01 : in std_logic_vector(7 downto 0);
          p02 : in std_logic_vector(7 downto 0);
          p10 : in std_logic_vector(7 downto 0);
          p11 : in std_logic_vector(7 downto 0);
          p12 : in std_logic_vector(7 downto 0);
          p20 : in std_logic_vector(7 downto 0);
          p21 : in std_logic_vector(7 downto 0);
          p22 : in std_logic_vector(7 downto 0);
          pline : in std_logic_vector(1 downto 0);
          pcolumn : in std_logic_vector(1 downto 0);
          R : out std_logic_vector(7 downto 0);
          G : out std_logic_vector(7 downto 0);
          B : out std_logic_vector(7 downto 0)
          );
    end component;

    signal clock_tb : std_logic := '0';
    signal reset_tb : std_logic := '0'; 
    signal p00_tb, p01_tb, p02_tb, p10_tb, p11_tb, p12_tb, p20_tb, p21_tb, p22_tb : std_logic_vector(7 downto 0);
    signal pline_tb, pcolumn_tb : std_logic_vector(1 downto 0);
    
    signal R_tb, G_tb, B_tb : std_logic_vector(7 downto 0);
    
    constant clock_period : time := 10ns;

    begin

    dut: calculation port map(
            clock => clock_tb,
            reset => reset_tb,
            pline => pline_tb,
            pcolumn => pcolumn_tb,
            p00 => p00_tb,
            p01 => p01_tb,
            p02 => p02_tb,
            p10 => p10_tb,
            p11 => p11_tb,
            p12 => p12_tb,
            p20 => p20_tb,
            p21 => p21_tb,
            p22 => p22_tb,
            R => R_tb,
            G => G_tb,
            B => B_tb
        );
        
    clock_process : process
    begin
        clock_tb <= '0';
        wait for clock_period/2;
        clock_tb <= '1';
        wait for clock_period/2;
    end process;
    
    testbench: process
    begin
        wait for clock_period/2;
            --reset_tb <= '1';        
            --wait for clock_period;
            --reset_tb <= '0'; 
            pline_tb <=  "00";
            pcolumn_tb <= "00";
            p00_tb <=  "00000001";
            p01_tb <=  "00000010";
            p02_tb <=  "00000011";
            p10_tb <=  "00000100";
            p11_tb <=  "00000101";
            p12_tb <=  "00000110";
            p20_tb <=  "00000111";
            p21_tb <=  "00001000";
            p22_tb <=  "00001001";
            wait for clock_period;
            
            pline_tb <= "00";  -- Row 0
            pcolumn_tb <= "00";  -- Column 0
            
            -- Pixel values for a corner location
            p00_tb <= "00000000";  
            p01_tb <= "00000000";
            p02_tb <= "00000000";
            p10_tb <= "00000000";
            p11_tb <= "00000000";
            p12_tb <= "00000000";
            p20_tb <= "00000000";
            p21_tb <= "00000000";
            p22_tb <= "11111111"; -- Top-left corner
            wait for clock_period;
            
            pline_tb <= "01";  -- Row 1
            pcolumn_tb <= "01";  -- Column 1
            
            -- Pixel values for an edge location
            p00_tb <= "00000000";
            p01_tb <= "00000000";
            p02_tb <= "00000000";
            p10_tb <= "00000000";
            p11_tb <= "00000000";
            p12_tb <= "00000000";
            p20_tb <= "00000000";
            p21_tb <= "11111111";  -- Middle of the top edge
            p22_tb <= "00000000";
            wait for clock_period;

            pline_tb <= "10";  -- Row 2
            pcolumn_tb <= "10";  -- Column 2
            
            -- Arbitrary pixel values at the specified location
            p00_tb <= "01010101";
            p01_tb <= "10101010";
            p02_tb <= "01010101";
            p10_tb <= "10101010";
            p11_tb <= "01010101";  -- Center pixel
            p12_tb <= "10101010";
            p20_tb <= "01010101";
            p21_tb <= "10101010";
            p22_tb <= "01010101";
            wait for clock_period;

            

            wait;
    end process;
end Behavioral;