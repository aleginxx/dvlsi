library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;


entity s2p_tb is
--  Port ( );
end s2p_tb;

architecture Behavioral of s2p_tb is

    component s2p
        Port (
            clock : in std_logic;
            reset : in std_logic;
            pixel : in std_logic_vector(7 downto 0);
            valid_in : in std_logic;
            p00 : out std_logic_vector(7 downto 0); 
            p01 : out std_logic_vector(7 downto 0);
            p02 : out std_logic_vector(7 downto 0);
            p10 : out std_logic_vector(7 downto 0);
            p11 : out std_logic_vector(7 downto 0);
            p12 : out std_logic_vector(7 downto 0);
            p20 : out std_logic_vector(7 downto 0);
            p21 : out std_logic_vector(7 downto 0);
            p22 : out std_logic_vector(7 downto 0);
            valid_out : out std_logic 
     );
    end component;
    
    signal clock_tb : std_logic := '0';
    signal reset_tb : std_logic := '0';
    signal valid_in_tb : std_logic := '0';
    signal pixel_tb : std_logic_vector(7 downto 0);
    
    signal p00_tb, p01_tb, p02_tb, p10_tb, p11_tb, p12_tb, p20_tb, p21_tb, p22_tb : std_logic_vector(7 downto 0);
    signal valid_out_tb : std_logic;
    
    constant clock_period : time := 10ns;
    
begin

    dut: s2p port map(
            clock => clock_tb,
            reset => reset_tb,
            pixel => pixel_tb,
            valid_in => valid_in_tb,
            p00 => p00_tb,
            p01 => p01_tb,
            p02 => p02_tb,
            p10 => p10_tb,
            p11 => p11_tb,
            p12 => p12_tb,
            p20 => p20_tb,
            p21 => p21_tb,
            p22 => p22_tb,
            valid_out => valid_out_tb
        );
        
    clock_process : process
    begin
        clock_tb <= '0';
        wait for clock_period/2;
        clock_tb <= '1';
        wait for clock_period/2;
    end process;
    
    testbench : process
        begin
        
        reset_tb <= '0';
        
        valid_in_tb <= '1';
        pixel_tb <= "01100111"; wait for clock_period;
        pixel_tb <= "11000110"; wait for clock_period;
        pixel_tb <= "01101001"; wait for clock_period;
        pixel_tb <= "00000000"; wait for clock_period;
        pixel_tb <= "01010001"; wait for clock_period;
        pixel_tb <= "11111111"; wait for clock_period;
        pixel_tb <= "01001010"; wait for clock_period;
        pixel_tb <= "11101100"; wait for clock_period;
        pixel_tb <= "00101001"; wait for clock_period;
        pixel_tb <= "11001101"; wait for clock_period;
        pixel_tb <= "10111010"; wait for clock_period;
        pixel_tb <= "00000000"; wait for clock_period;
        pixel_tb <= "11110010"; wait for clock_period;
        pixel_tb <= "11111011"; wait for clock_period;
        pixel_tb <= "11100011"; wait for clock_period;
        pixel_tb <= "01000110"; wait for clock_period;
        pixel_tb <= "01111100"; wait for clock_period;
        pixel_tb <= "11000010"; wait for clock_period;
        pixel_tb <= "00001001"; wait for clock_period;
        pixel_tb <= "11101000"; wait for clock_period;
        pixel_tb <= "11100111"; wait for clock_period;
        pixel_tb <= "10001101"; wait for clock_period;
        pixel_tb <= "01110110"; wait for clock_period;
        pixel_tb <= "01011010"; wait for clock_period;
        pixel_tb <= "00101110"; wait for clock_period;
        pixel_tb <= "01100011"; wait for clock_period;
        pixel_tb <= "00110011"; wait for clock_period;
        pixel_tb <= "10011111"; wait for clock_period;
        pixel_tb <= "11001001"; wait for clock_period;
        pixel_tb <= "10011010"; wait for clock_period;
        pixel_tb <= "00110010"; wait for clock_period;
        pixel_tb <= "00001101"; wait for clock_period;
        pixel_tb <= "10110111"; wait for clock_period;
        pixel_tb <= "00110001"; wait for clock_period;
        pixel_tb <= "01011000"; wait for clock_period;
        pixel_tb <= "10100011"; wait for clock_period;
        pixel_tb <= "01011010"; wait for clock_period;
        pixel_tb <= "00100101"; wait for clock_period;
        pixel_tb <= "00010101"; wait for clock_period;
        pixel_tb <= "00011000"; wait for clock_period;
        pixel_tb <= "11101001"; wait for clock_period;
        pixel_tb <= "01011110"; wait for clock_period;
        pixel_tb <= "11011101"; wait for clock_period;
        pixel_tb <= "10111010"; wait for clock_period;
        pixel_tb <= "10110100"; wait for clock_period;
        pixel_tb <= "11001101"; wait for clock_period;
        pixel_tb <= "11001011"; wait for clock_period;
        pixel_tb <= "11010101"; wait for clock_period;
        pixel_tb <= "00010001"; wait for clock_period;
        pixel_tb <= "00001110"; wait for clock_period;
        pixel_tb <= "10000010"; wait for clock_period;
        pixel_tb <= "01110100"; wait for clock_period;
        pixel_tb <= "01000001"; wait for clock_period;
        pixel_tb <= "00100001"; wait for clock_period;
        pixel_tb <= "00100001"; wait for clock_period;
        pixel_tb <= "00111101"; wait for clock_period;
        pixel_tb <= "11011100"; wait for clock_period;
        pixel_tb <= "10010111"; wait for clock_period;
        pixel_tb <= "01000010"; wait for clock_period;
        pixel_tb <= "01011000"; wait for clock_period;
        pixel_tb <= "10100011"; wait for clock_period;
        pixel_tb <= "00000000"; wait for clock_period;
        pixel_tb <= "00001001"; wait for clock_period;
        pixel_tb <= "11110000"; wait for clock_period;
        pixel_tb <= "11100000"; wait for clock_period;
        pixel_tb <= "10101001"; wait for clock_period;
        pixel_tb <= "11111100"; wait for clock_period;
        pixel_tb <= "11001001"; wait for clock_period;
        pixel_tb <= "10110100"; wait for clock_period;
        pixel_tb <= "00001101"; wait for clock_period;
        pixel_tb <= "11000010"; wait for clock_period;
        pixel_tb <= "01101010"; wait for clock_period;
        pixel_tb <= "11110001"; wait for clock_period;
        pixel_tb <= "01110001"; wait for clock_period;
        pixel_tb <= "00010001"; wait for clock_period;
        pixel_tb <= "10001000"; wait for clock_period;
        pixel_tb <= "00010000"; wait for clock_period;
        pixel_tb <= "00001100"; wait for clock_period;
        pixel_tb <= "00000001"; wait for clock_period;
        pixel_tb <= "10000001"; wait for clock_period;
        pixel_tb <= "10101001"; wait for clock_period;
        pixel_tb <= "01011100"; wait for clock_period;
        pixel_tb <= "11010001"; wait for clock_period;
        pixel_tb <= "10111111"; wait for clock_period;
        pixel_tb <= "01011011"; wait for clock_period;
        pixel_tb <= "10000000"; wait for clock_period;
        pixel_tb <= "00000010"; wait for clock_period;
        pixel_tb <= "00000001"; wait for clock_period;
        pixel_tb <= "01100010"; wait for clock_period;
        pixel_tb <= "11101011"; wait for clock_period;
        pixel_tb <= "10101010"; wait for clock_period;
        pixel_tb <= "01101010"; wait for clock_period;
        pixel_tb <= "00010000"; wait for clock_period;
        pixel_tb <= "00001000"; wait for clock_period;
        pixel_tb <= "00010100"; wait for clock_period;
        pixel_tb <= "11111100"; wait for clock_period;
        pixel_tb <= "11100000"; wait for clock_period;
        pixel_tb <= "11110011"; wait for clock_period;
        pixel_tb <= "00101010"; wait for clock_period;
        pixel_tb <= "10100011"; wait for clock_period;
        pixel_tb <= "00011000"; wait for clock_period;
        pixel_tb <= "11111110"; wait for clock_period;
        pixel_tb <= "00001110"; wait for clock_period;
        pixel_tb <= "00101001"; wait for clock_period;
        pixel_tb <= "00000011"; wait for clock_period;
        pixel_tb <= "10101100"; wait for clock_period;
        pixel_tb <= "10100001"; wait for clock_period;
        pixel_tb <= "00000101"; wait for clock_period;
        pixel_tb <= "00000001"; wait for clock_period;
        pixel_tb <= "11010010"; wait for clock_period;
        pixel_tb <= "00000001"; wait for clock_period;
        pixel_tb <= "01111110"; wait for clock_period;
        pixel_tb <= "10010111"; wait for clock_period;
        pixel_tb <= "11101100"; wait for clock_period;
        pixel_tb <= "01111100"; wait for clock_period;
        pixel_tb <= "11010100"; wait for clock_period;
        pixel_tb <= "10011011"; wait for clock_period;
        pixel_tb <= "11010010"; wait for clock_period;
        pixel_tb <= "01011110"; wait for clock_period;
        pixel_tb <= "00000000"; wait for clock_period;
        pixel_tb <= "00010000"; wait for clock_period;
        pixel_tb <= "10001000"; wait for clock_period;
        pixel_tb <= "01000000"; wait for clock_period;
        pixel_tb <= "00111110"; wait for clock_period;
        pixel_tb <= "01011110"; wait for clock_period;
        pixel_tb <= "01101111"; wait for clock_period;
        pixel_tb <= "01001011"; wait for clock_period;
        pixel_tb <= "11111111"; wait for clock_period;
        pixel_tb <= "11111111"; wait for clock_period;
        pixel_tb <= "11111111"; wait for clock_period;
        pixel_tb <= "00000000"; wait for clock_period;
        pixel_tb <= "11110010"; wait for clock_period;
        pixel_tb <= "11011101"; wait for clock_period;
        pixel_tb <= "10011010"; wait for clock_period;
        pixel_tb <= "01000010"; wait for clock_period;
        pixel_tb <= "11110010"; wait for clock_period;
        pixel_tb <= "11111010"; wait for clock_period;
        pixel_tb <= "11011111"; wait for clock_period;
        pixel_tb <= "00001111"; wait for clock_period;
        pixel_tb <= "00111110"; wait for clock_period;
        pixel_tb <= "01010110"; wait for clock_period;
        pixel_tb <= "00000000"; wait for clock_period;
        pixel_tb <= "11111001"; wait for clock_period;
        pixel_tb <= "11100001"; wait for clock_period;
        pixel_tb <= "10111000"; wait for clock_period;
        pixel_tb <= "01101000"; wait for clock_period;
        pixel_tb <= "01100000"; wait for clock_period;
        pixel_tb <= "00000001"; wait for clock_period;
        pixel_tb <= "00001100"; wait for clock_period;
        pixel_tb <= "10001001"; wait for clock_period;
        pixel_tb <= "00010011"; wait for clock_period;
        pixel_tb <= "11101000"; wait for clock_period;
        pixel_tb <= "11110111"; wait for clock_period;
        pixel_tb <= "01110111"; wait for clock_period;
        pixel_tb <= "01110100"; wait for clock_period;
        pixel_tb <= "01001001"; wait for clock_period;
        pixel_tb <= "10000011"; wait for clock_period;
        
        wait;
    end process;
end Behavioral;
