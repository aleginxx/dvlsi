----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/12/2024 12:48:02 PM
-- Design Name: 
-- Module Name: decoder_3_to_8_tb - Dataflow
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

entity decoder_3_to_8_tb is
--  Port ( );
end decoder_3_to_8_tb;

architecture Dataflow of decoder_3_to_8_tb is

component decoder_3_to_8_df is
    Port ( 
        enc : in std_logic_vector(2 downto 0);
        dec : out std_logic_vector(7 downto 0)
    );
    
end component;

constant clock : time := 10ns;

signal enc_tb : std_logic_vector(2 downto 0);
signal dec_tb : std_logic_vector(7 downto 0);

begin

    dut : decoder_3_to_8_df
        port map (
            enc => enc_tb,
            dec => dec_tb
        );
    
    simulation : process
    begin
        enc_tb <= "000";
        wait for clock;
        enc_tb <= "001";
        wait for clock;
        enc_tb <= "010";
        wait for clock;
        enc_tb <= "011";
        wait for clock;
        enc_tb <= "100";
        wait for clock;
        enc_tb <= "101";
        wait for clock;
        enc_tb <= "110";
        wait for clock;
        enc_tb <= "111";
        wait for clock;
    end process simulation;
        
end Dataflow;
