library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity full_adder_tb_str is
--  Port ( );
end full_adder_tb_str;

architecture Structural of full_adder_tb_str is
    component full_adder_str is
        Port ( fa : in STD_LOGIC;
               fb : in STD_LOGIC;
               fcin : in STD_LOGIC;
               fcout : out STD_LOGIC;
               fsum : out STD_LOGIC);
    end component;
    
    
    signal fa_tb, fb_tb, fcin_tb, fcout_tb, fsum_tb : std_logic;

begin
    dut : full_adder_str
        port map (
            fa => fa_tb,
            fb => fb_tb,
            fcin => fcin_tb,
            fcout => fcout_tb,
            fsum => fsum_tb
        );
        
        simulation : process
        begin
            fa_tb <= '0';
            fb_tb <= '0';
            fcin_tb <= '0';
            wait for 10 ns;
            
            fa_tb <= '0';
            fb_tb <= '0';
            fcin_tb <= '1';
            wait for 10 ns;
            
            fa_tb <= '0';
            fb_tb <= '1';
            fcin_tb <= '0';
            wait for 10 ns;
            
            fa_tb <= '0';
            fb_tb <= '1';
            fcin_tb <= '1';
            wait for 10 ns;
            
            fa_tb <= '1';
            fb_tb <= '0';
            fcin_tb <= '0';
            wait for 10 ns;
            
            fa_tb <= '1';
            fb_tb <= '0';
            fcin_tb <= '1';
            wait for 10 ns;
            
            fa_tb <= '1';
            fb_tb <= '1';
            fcin_tb <= '0';
            wait for 10 ns;
            
            fa_tb <= '1';
            fb_tb <= '1';
            fcin_tb <= '1';
            wait for 10 ns;
            
        end process simulation;

end Structural;
