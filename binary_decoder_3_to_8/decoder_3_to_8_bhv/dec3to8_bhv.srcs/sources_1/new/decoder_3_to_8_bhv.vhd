----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/12/2024 12:08:48 PM
-- Design Name: 
-- Module Name: decoder_3_to_8_bhv - Behavioral
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

entity decoder_3_to_8_bhv is
    Port ( 
        enc : in STD_LOGIC_VECTOR (2 downto 0);
        dec : out STD_LOGIC_VECTOR (7 downto 0)
    );
end decoder_3_to_8_bhv;

architecture Behavioral of decoder_3_to_8_bhv is

begin
    dec3to8 : process(enc)
    begin
        case enc is
            when "000" => dec <= "00000001";
            when "001" => dec <= "00000010";
            when "010" => dec <= "00000100";
            when "011" => dec <= "00001000";
            when "100" => dec <= "00010000";
            when "101" => dec <= "00100000";
            when "110" => dec <= "01000000";
            when "111" => dec <= "10000000";
            when others => dec <= "00000000";
        end case;
    end process; 

end Behavioral;
