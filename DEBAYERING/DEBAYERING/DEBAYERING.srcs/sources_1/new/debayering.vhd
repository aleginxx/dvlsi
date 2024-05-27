library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;
use ieee.math_real.all;


entity debayering is
    generic (N: integer := 8);
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
end debayering;

architecture Behavioral of debayering is

component s2p is
    generic (N: integer);
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

component calculation is
    generic (N: integer);
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
          pline : in std_logic_vector(integer(ceil(log2(real(N))))-1 downto 0);
          pcolumn : in std_logic_vector(integer(ceil(log2(real(N))))-1 downto 0);
          R : out std_logic_vector(7 downto 0);
          G : out std_logic_vector(7 downto 0);
          B : out std_logic_vector(7 downto 0)
          );
end component;

component controller is
    generic (N: integer);
    Port (
          clock : in std_logic;
          reset : in std_logic;
          new_image : in std_logic;
          start_debaying : in std_logic;
          pline : out std_logic_vector(integer(ceil(log2(real(N))))-1 downto 0);
          pcolumn : out std_logic_vector(integer(ceil(log2(real(N))))-1 downto 0);
          valid_out : out std_logic;
          image_finished : out std_logic
          );
end component;

signal clock_gate : std_logic;
signal valid : std_logic;
signal counter : std_logic_vector(20 downto 0) := (others => '0');
signal pix00, pix01, pix02, pix10, pix11, pix12, pix20, pix21, pix22 : std_logic_vector(7 downto 0) := (others => '0');
signal line_temp, column_temp : std_logic_vector(integer(ceil(log2(real(N))))-1 downto 0)  :=  (others => '0');
signal start : std_logic;
signal valid_out_temp : std_logic;
signal stop : std_logic := '0';


begin

ctrl : controller
    generic map (N => N)
    port map (
        clock => clock_gate,
        reset => reset,
        new_image => new_image,
        start_debaying => start,
        pline => line_temp,
        pcolumn => column_temp,
        valid_out => valid_out_temp,
        image_finished => image_finished
    ); 

calc : calculation
    generic map (N => N)
    port map (
        clock => clock_gate,
        reset => reset,
        p00 => pix00,
        p01 => pix01,
        p02 => pix02,
        p10 => pix10,
        p11 => pix11,
        p12 => pix12,
        p20 => pix20,
        p21 => pix21,
        p22 => pix22,
        pline => line_temp,
        pcolumn => column_temp,
        R => R,
        G => G,
        B => B
    );
    
serial_to_parallel : s2p
    generic map (N => N)
    port map (
        clock => clock_gate,
        reset => reset,
        pixel => pixel,
        valid_in => valid,
        p00 => pix00,
        p01 => pix01,
        p02 => pix02,
        p10 => pix10,
        p11 => pix11,
        p12 => pix12,
        p20 => pix20,
        p21 => pix21,
        p22 => pix22,
        valid_out => start
     );

process(clock)
begin
    if counter < N*N and valid_in = '1' then
        counter <= counter + 1;
    end if;
end process;

valid <= stop when counter = N*N else valid_in;
valid_out <= (valid_out_temp and stop) when counter = N*N else (valid_out_temp and valid_in);
clock_gate <= (clock and stop) when counter = N*N else (clock and valid_in);
--valid_out <= valid_out_temp and valid_in;
--clock_gate <= clock and valid_in;

end Behavioral;
