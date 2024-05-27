--MAC
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity MAC is
    Port ( clk : in STD_LOGIC;
           rst : in STD_LOGIC;  
           rom_out : in STD_LOGIC_VECTOR (7 downto 0);
           ram_out : in STD_LOGIC_VECTOR (7 downto 0);
           mac_init : in STD_LOGIC;
--           valid_out: in STD_LOGIC;
           y : out STD_LOGIC_VECTOR (18 downto 0));
end entity MAC;

architecture Behavioral of MAC is
    signal  sum : STD_LOGIC_VECTOR (18 downto 0) := (others => '0');   

begin
    process (clk)
    begin
     if(rst = '1') then 
      sum <= (others => '0');
       elsif rising_edge(clk) then
            if mac_init = '1' then  
               sum <= (others => '0'); --Asing all '0's to my vector 
               sum(15 downto 0) <= rom_out*ram_out;
            else
               sum <=sum + rom_out*ram_out; -- Perform multiplication and addition;
         end if;
         y <= sum;
--         if valid_out = '1' then
--            y <= sum;  -- L = (2*N+1) bits 
--         else 
--            y <= (others => '0');
--        end if;
        end if; 
    end process;
end architecture;