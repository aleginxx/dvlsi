---- Control Unit previous
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Control_Unit is
    Port ( clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           valid_in : in STD_logic;
           mac_init: out STD_LOGIC;
           ram_addr : out STD_LOGIC_VECTOR (2 downto 0);
           rom_addr : out STD_LOGIC_VECTOR (2 downto 0);
           counter: out STD_LOGIC_VECTOR (2 downto 0);
           we: out STD_LOGIC;  --to we twn RAM/ROM
           valid_out: out STD_LOGIC
           );
end entity Control_Unit;

architecture Behavioral of Control_Unit is
    signal count_reg : STD_LOGIC_VECTOR (2 downto 0) := (others => '1');  
    signal flag, waitt : std_logic ;  
 
begin
    process (clk, rst)
    begin
       if rst = '1' then
          count_reg <= (others => '0');
          valid_out<='0';
          mac_init<='1'; 
       elsif rising_edge(clk) then
         if waitt='1' then 
           valid_out <= '0';
           if valid_in='1' then --stop the wait condition
               we<='1';
               mac_init<='1';
               waitt<='0';
           end if;
         else
       if count_reg=0 then --new ouput
           valid_out<='1';
           if valid_in='1' then --start new calculation
               we<='1';
               mac_init<='1'; --initialize mac
           else
               waitt<='1'; --not valid input (wait again)
           end if;
       else --still calculating
           valid_out<='0';
           we<='0';
           mac_init<='0';
       end if;
   end if;
   count_reg <= count_reg + 1;
   ram_addr <= count_reg;
  rom_addr <= count_reg;
  counter <= count_reg;
  end if;
  end process; 
end architecture;


-- Control Unit
--library IEEE;
--use IEEE.STD_LOGIC_1164.ALL;
--use IEEE.STD_LOGIC_ARITH.ALL;
--use IEEE.STD_LOGIC_UNSIGNED.ALL;

--entity Control_Unit is
--    Port ( clk : in STD_LOGIC;
--           rst : in STD_LOGIC;
--           valid_in : in STD_logic;
--           mac_init: out STD_LOGIC;
--           ram_addr : out STD_LOGIC_VECTOR (2 downto 0);
--           rom_addr : out STD_LOGIC_VECTOR (2 downto 0);
--           we: out STD_LOGIC ; --to we twn RAM/ROM
--           counter: out STD_LOGIC_VECTOR (2 downto 0);
--           valid_out: out STD_LOGIC
--           );
--end entity Control_Unit;

--architecture Behavioral of Control_Unit is
--    signal count_reg : STD_LOGIC_VECTOR (2 downto 0) := "000";  
--    signal we_temp ,flag : std_logic ;  
 
--begin
--    process (clk)
--    begin
--       if rst = '1' then
--          count_reg <= (others => '0');
--          valid_out<='0';
--           we_temp <= '0';
--           mac_init<='1'; 
--       elsif rising_edge(clk) then
--         -- we <= valid_in; 
--          if ( count_reg = "111") then 
--             mac_init <= '1';
--             valid_out<='1';
--             we_temp<='1'; --new
--             we <=  we_temp;
--             count_reg <= "000"; --new
--          else 
--             we_temp <= '0';
--             mac_init <= '0';
--             valid_out<='0';
--          end if; 
--  ram_addr <= count_reg;
--  rom_addr <= count_reg;
--  count_reg <=  count_reg + 1;
--  counter <= count_reg;
--  we <=  we_temp;
--  end if;
--  end process; 
--end architecture;
