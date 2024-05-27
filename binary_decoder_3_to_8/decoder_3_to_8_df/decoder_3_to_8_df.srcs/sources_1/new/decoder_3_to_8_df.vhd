----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/12/2024 12:39:18 PM
-- Design Name: 
-- Module Name: decoder_3_to_8_df - Dataflow
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

entity decoder_3_to_8_df is
    Port ( 
        enc : in std_logic_vector(2 downto 0);
        dec : out std_logic_vector(7 downto 0)
    );
    
end decoder_3_to_8_df;

architecture Dataflow of decoder_3_to_8_df is

begin
    dec(7) <= enc(2) and enc(1) and enc(0);
    dec(6) <= enc(2) and enc(1) and not enc(0);
    dec(5) <= enc(2) and not enc(1) and enc(0);
    dec(4) <= enc(2) and not enc(1) and not enc(0);
    dec(3) <= not enc(2) and enc(1) and enc(0);
    dec(2) <= not enc(2) and enc(1) and not enc(0);
    dec(1) <= not enc(2) and not enc(1) and enc(0);
    dec(0) <= not enc(2) and not enc(1) and not enc(0);

end Dataflow;
