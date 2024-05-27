library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

entity s2p is
    generic (N: integer := 1024);
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
end s2p;

architecture Behavioral of s2p is

    component fifo_generator_0
    Port(
        clk : in std_logic;
        srst : in std_logic;
        din : in std_logic_vector(7 downto 0);
        wr_en : in std_logic;
        rd_en : in std_logic;
        dout : out std_logic_vector(7 downto 0);
        full : out std_logic;
        empty : out std_logic;
        valid : out std_logic;
        data_count : out std_logic_vector(9 downto 0)
        );
    end component;
    
    signal fout2, fout1, fout0 : std_logic_vector(7 downto 0) :=  (others => '0') ;
    signal full0, full1, full2, empty0, empty1, empty2, valid0, valid1, valid2 : std_logic;
    signal datacount0, datacount1, datacount2 : std_logic_vector(9 downto 0);
    signal counter : std_logic_vector(integer(ceil(log2(real(N*N)))) downto 0) :=  (others => '0') ;
    signal srst : std_logic := '0';


    signal  rd_en0: std_logic := '0';
    signal  rd_en1: std_logic := '0';
    signal  rd_en2: std_logic := '0';
    signal  wr_en0: std_logic := '1';
    signal  wr_en1: std_logic := '1';
    signal  wr_en2: std_logic := '1';
    
    type arr is array (2 downto 0) of std_logic_vector (7 downto 0);
    signal line0 : arr := (others => (others => '0'));
    signal line1 : arr := (others => (others => '0'));
    signal line2 : arr := (others => (others => '0'));
    
begin

    RAM_FIFO_0 : fifo_generator_0
    PORT MAP (
        clk => clock,
        srst => srst,
        din => pixel,
        wr_en => wr_en0,
        rd_en => rd_en0,
        dout => fout0,
        full => full0,
        empty => empty0,
        valid => valid0,
        data_count => datacount0
    );
    
    RAM_FIFO_1 : fifo_generator_0
    PORT MAP (
        clk => clock,
        srst => srst,
        din => fout0,
        wr_en => wr_en1,
        rd_en => rd_en1,
        dout => fout1,
        full => full1,
        empty => empty1,
        valid => valid1,
        data_count => datacount1
    );
    
    RAM_FIFO_2 : fifo_generator_0
    PORT MAP (
        clk => clock,
        srst => srst,
        din => fout1,
        wr_en => wr_en2,
        rd_en => rd_en2,
        dout => fout2,
        full => full2,
        empty => empty2,
        valid => valid2,
        data_count => datacount2
    );
    
    process(clock, reset, datacount0)
    begin
    
        if reset = '0' then
            rd_en0 <= '0';
            rd_en1 <= '0';
            rd_en2 <= '0';
            valid_out <= '0';
            counter <= (others => '0');
            p00 <= (others => '0');
            p01 <= (others => '0');
            p02 <= (others => '0');
            p10 <= (others => '0');
            p11 <= (others => '0');
            p12 <= (others => '0');
            p20 <= (others => '0');
            p21 <= (others => '0');
            p22 <= (others => '0');
            srst <= '1';
        elsif (clock'event and clock = '1') then
            srst <= '0';
            if valid_in = '1' then
                counter <= counter + 1;
                if to_integer(unsigned(counter)) = 2*N+3 then
                    valid_out <= '1';
                end if;
                if to_integer(unsigned(datacount0)) = N-2 then
                    rd_en0 <= '1';
                    rd_en1 <= '1';
                    rd_en2 <= '1';
                end if;
                line0 <= line0(1 downto 0) & fout0;
                line1 <= line1(1 downto 0) & fout1;
                line2 <= line2(1 downto 0) & fout2;
                p00 <= line0(0);
                p01 <= line0(1);
                p02 <= line0(2);
                p10 <= line1(0);
                p11 <= line1(1);
                p12 <= line1(2);
                p20 <= line2(0);
                p21 <= line2(1);
                p22 <= line2(2);
                if counter > N*N+2*N+3 then
                    valid_out <= '0';
                end if;
            end if;
        end if;
    end process;
                        
    
end Behavioral;

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;
use ieee.math_real.all;


entity calculation is
    generic (N: integer := 1024);
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
end calculation;

architecture Behavioral of calculation is

    signal x, up, down, left, right, upleft, upright, downleft, downright : std_logic_vector(7 downto 0);
    signal sum_row, sum_column, sum_cross, sum_outer : std_logic_vector(7 downto 0);
    signal temp0, temp1 : std_logic_vector(9 downto 0);
    signal temp2, temp3 : std_logic_vector(8 downto 0);

    begin
    
    upleft <= p22 when to_integer(unsigned(pline)) /= 0 and to_integer(unsigned(pcolumn)) /= 0 else (others => '0');
    up <= p21 when to_integer(unsigned(pline)) /= 0 else (others => '0');
    upright <= p20 when to_integer(unsigned(pline)) /= 0 and to_integer(unsigned(pcolumn)) /= N-1 else (others => '0');
    left <= p12 when to_integer(unsigned(pcolumn)) /= 0 else (others => '0');
    x <= p11;
    right <= p10 when to_integer(unsigned(pcolumn)) /= N-1 else (others => '0');
    downleft <= p02 when to_integer(unsigned(pline)) /= N-1 and to_integer(unsigned(pcolumn)) /= 0 else (others => '0');
    down <= p01 when to_integer(unsigned(pline)) /= N-1 else (others => '0');
    downright <= p00 when to_integer(unsigned(pline)) /= N-1 and to_integer(unsigned(pcolumn)) /= N-1 else (others => '0');    

    temp0 <= ("00" & left) + ("00" & right) + ("00" & up) + ("00" & down);
    sum_cross <= temp0(9 downto 2);
    
    temp1 <= ("00" & upleft) + ("00" & upright) + ("00" & downleft) + ("00" & downright);
    sum_outer <= temp1(9 downto 2);
    
    temp2 <= ('0' & up) + ('0' & down);
    sum_column <= temp2(8 downto 1);
    
    temp3 <= ('0' & left) + ('0' & right);
    sum_row <= temp3(8 downto 1);
    
    process(clock, reset)
    begin
        if reset = '0' then
            R <= (others => '0');
            G <= (others => '0');
            B <= (others => '0');
        elsif (clock'event and clock = '1') then
            if pline(0) = '0' and pcolumn(0) ='0' then      -- periptwsh (ii)
                R <= sum_column;
                G <= x;
                B <= sum_row;
            elsif pline(0) = '0' and pcolumn(0) = '1' then  --periptwsh (iv)
                R <= sum_outer;
                G <= sum_cross;
                B <= x;
            elsif pline(0) = '1' and pcolumn(0) = '0' then  --periptwsh (iii)
                R <= x;
                G <= sum_cross;
                B <= sum_outer;
            elsif pline(0) = '1' and pcolumn(0) = '1' then  --periptwsh (i)
                R <= sum_row;
                G <= x;
                B <= sum_column;
            end if;
        end if;
    end process;
    
end Behavioral;

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

entity controller is
    generic (N: integer := 1024);
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
end controller;

architecture Behavioral of controller is

    signal column_temp, line_temp : std_logic_vector(integer(ceil(log2(real(N))))-1 downto 0) := (others => '0');
    signal image_finished_temp : std_logic := '0';

begin

    pcolumn <= column_temp;
    pline <= line_temp;
    
    process(clock, reset)
    begin
    
        if reset = '0' then
            column_temp <= (others => '0');
            line_temp <= (others => '0');
            valid_out <= '0';
            image_finished <= '0';
            image_finished_temp <= '0';
        elsif (clock'event and clock = '1') then
            valid_out <= '0';
            if start_debaying = '1' then
                valid_out <= '1';
                column_temp <= column_temp + 1;
                if to_integer(unsigned(column_temp)) = N-1 then
                    line_temp <= line_temp + 1;
                end if;
            end if;
            if (image_finished_temp = '1') then
                valid_out <= '0';
                image_finished_temp <= '0';

            end if;
            if (to_integer(unsigned(line_temp)) = N-1 and to_integer(unsigned(column_temp)) = N-1) then
                image_finished <= '1';
                image_finished_temp <= '1';
            else 
                image_finished <= '0';
            end if;
        end if;
    end process;


end Behavioral;

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;
use ieee.math_real.all;


entity debayering is
    generic (N: integer := 1024);
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
signal valid : std_logic := '0';
signal counter_out : std_logic_vector(20 downto 0) := (others => '0');
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

    if reset = '0' then
        counter_out <= (others => '0');
    elsif (clock'event and clock = '1') then
        if (counter_out < 2*N*N and valid_in = '1') then
            counter_out <= counter_out + 1;
        end if;
    end if;
end process;

valid <= stop when counter_out = N*N else valid_in;
valid_out <= (valid_out_temp and stop) when counter_out > N*N+2*N+4 else (valid_out_temp and valid_in);

clock_gate <= (clock and stop) when counter_out = N*N else (clock and valid_in);
--valid_out <= valid_out_temp and valid_in;
--clock_gate <= clock and valid_in;

end Behavioral;
