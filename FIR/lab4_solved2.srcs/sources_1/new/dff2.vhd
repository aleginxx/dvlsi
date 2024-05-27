--DFF2
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity dff2 is
    port(
        d : in  std_logic;
        q : out  std_logic;
        clk : in std_logic;
        rst : in std_logic
       );
end dff2;

architecture structural of dff2 is
    component dff is
        port(
          d : in  std_logic;
          q : out  std_logic;
          clk : in std_logic;
          rst : in std_logic
         );
end component;

signal buffer_bit : std_logic;
  begin
    delay3 : dff
    port map (
        d => d,
        q => buffer_bit,
        clk => clk,
        rst => rst
    );
    delay4 : dff 
    port map (
        d => buffer_bit,
        q => q,
        clk => clk,
        rst => rst
    );
end architecture;
