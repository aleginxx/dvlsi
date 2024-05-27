----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/13/2024 02:40:22 PM
-- Design Name: 
-- Module Name: rshift_reg3_tb - bench
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity lshift_reg3_tb is
--  Port ( );
end lshift_reg3_tb;

architecture bench of lshift_reg3_tb is
    component lshift_reg3 is
        Port ( 
            clk, rst, si, en, pl : in std_logic;
            din : in std_logic_vector(3 downto 0);
            so : out std_logic
            );
    end component;
    
    signal clk_tb, so_tb : std_logic;
    signal rst_tb, si_tb, en_tb, pl_tb : std_logic := '0';
    signal din_tb : std_logic_vector(3 downto 0) := (others => '0');
    
    constant clock : time := 10 ns;

begin
    dut : lshift_reg3
        port map (
            clk => clk_tb,
            rst => rst_tb,
            si => si_tb,
            en => en_tb,
            pl => pl_tb,
            din => din_tb,
            so => so_tb
        );
    
    simulation : process
    begin 
        -- Initialization
        rst_tb <= '0';
        pl_tb <= '0';
        en_tb <= '0';
        si_tb <= '0';
        din_tb <= "0000"; 
        wait for clock;
        
        -- Test parallel load
        rst_tb <= '1';
        pl_tb <= '1';
        en_tb <= '1';
        si_tb <= '0';
        din_tb <= "0101"; 
        wait for clock;
        
        -- Reset parallel load
        -- The new input should not be printed in the output
        rst_tb <= '1';
        pl_tb <= '0';
        en_tb <= '1';
        si_tb <= '0';
        din_tb <= "1111";
        wait for 4*clock;
        
        -- Test enable bit
        rst_tb <= '1';
        pl_tb <= '1';
        en_tb <= '1';
        si_tb <= '1';
        din_tb <= "1101"; 
        wait for clock;
        pl_tb <= '0';
        en_tb <= '0';
        wait for clock;
        en_tb <= '1';
        wait for 4*clock;
        
        -- Test reset
        rst_tb <= '0';
        pl_tb <= '0';
        en_tb <= '1';
        si_tb <= '0';
        wait for 4*clock;
        
    end process;
    
    generate_clock : process
        begin
            clk_tb <= '0';
            wait for clock/2;
            clk_tb <= '1';
            wait for clock/2;
    end process ;
         
end bench;
