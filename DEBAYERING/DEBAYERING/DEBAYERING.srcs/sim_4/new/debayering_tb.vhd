library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use std.TEXTIO.all;

entity debayering_tb is
end debayering_tb;

architecture Behavioral of debayering_tb is

    constant N : integer := 8;
    
    component debayering is
    generic (N: integer );
    Port (
          clock : in std_logic;
          reset : in std_logic;
          valid_in : in std_logic;
          pixel : in std_logic_vector(7 downto 0);
          new_image : in std_logic;
          R : out std_logic_vector(7 downto 0);
          G : out std_logic_vector(7 downto 0);
          B : out std_logic_vector(7 downto 0);
          valid_out : out std_logic;
          image_finished : out std_logic  
     );
    end component;
    
    signal clock_tb : std_logic := '0';
    signal reset_tb : std_logic := '0';
    signal valid_in_tb : std_logic := '0';
    signal pixel_tb : std_logic_vector(7 downto 0);
    signal new_image_tb : std_logic := '0';
    signal stop_tb : std_logic := '0';
    
    signal R_tb : std_logic_vector(7 downto 0);
    signal G_tb : std_logic_vector(7 downto 0);
    signal B_tb : std_logic_vector(7 downto 0);
    signal valid_out_tb : std_logic;
    signal image_finished_tb : std_logic;
    
    signal readstart : std_logic := '0';
    
    constant clock_period : time := 10ns;

begin 
    dut: debayering
    generic map(N => N)
    port map(
        clock => clock_tb,
        reset => reset_tb,
        valid_in => valid_in_tb,
        pixel => pixel_tb,
        new_image => new_image_tb,
        R => R_tb,
        G => G_tb,
        B => B_tb,
        valid_out => valid_out_tb,
        image_finished => image_finished_tb
        );
        
    clock_process : process
    begin
        clock_tb <= '0';
        wait for clock_period/2;
        clock_tb <= '1';
        wait for clock_period/2;
    end process;
    
    init : process
    begin
        wait for clock_period/2;
        reset_tb <= '0';
        readstart <='1';
        valid_in_tb <= '1';
        stop_tb <= '1';
        wait for 257*clock_period;
        valid_in_tb <= '0';
        wait for 10*clock_period;
        stop_tb <= '0';
        wait for 2*clock_period;
        stop_tb <= '1';
        wait; 
    end process ; -- init

    readFile : process(clock_tb, reset_tb)
    
    file inputFile : text open read_mode is "C:\Users\Zoe\OneDrive\Documents\ece\8thsemester\dvlsi\Lab6\bayer32x32.txt";
    variable rowRead : line;
    variable pixelRead : integer;
    variable pixelRowCounter : integer := 0;
    
    file outputFile : text open read_mode is "C:\Users\Zoe\OneDrive\Documents\ece\8thsemester\dvlsi\Lab6\outputDebayer32x32.txt";
    variable rowWrite : line;
    
    begin
        if (reset_tb = '1') then
            pixelRowCounter := 0;
            pixelRead := -1;
        elsif (clock_tb'event and clock_tb = '1') then
            if (readstart = '1') then
                if (not endfile(inputFile)) then
                    if (pixelRowCounter = 0) then
                        new_image_tb <= '1';
                    else 
                        if (pixelRowCounter = N*N - 1) then
                            pixelRowCounter := 0;
                        end if;
                        new_image_tb <= '0';
                    end if;
                    pixelRowCounter := pixelRowCounter +1;
                    readline(inputFile, rowRead);
                end if;
                read(rowRead, pixelRead); 
                valid_in_tb <= '1';
                pixel_tb <= std_logic_vector(to_unsigned(pixelRead,8));
            end if;
            if(valid_out_tb = '1') then
                write(rowWrite, to_integer(unsigned(R_tb)), left, 4);
                write(rowWrite, to_integer(unsigned(G_tb)), left, 4);
                write(rowWrite, to_integer(unsigned(B_tb)), left, 4);
            end if;
            if (image_finished_tb = '1') then
                write(rowWrite, string'("IMAGE DONE!"));
                writeline(outputFile, rowWrite);
            end if;
        end if;

    end process;
    
end Behavioral;