library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity full_adder_4_bit is
    Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
           B : in STD_LOGIC_VECTOR (3 downto 0);
           Cin : in STD_LOGIC;
           Cout : out STD_LOGIC;
           Sum : out STD_LOGIC_VECTOR (3 downto 0));
end full_adder_4_bit;

architecture Structural of full_adder_4_bit is
    component full_adder_str is
        Port ( fa : in STD_LOGIC;
               fb : in STD_LOGIC;
               fcin : in STD_LOGIC;
               fcout : out STD_LOGIC;
               fsum : out STD_LOGIC);
    end component;
    
    signal c0, c1, c2 : std_logic;

begin
u0: full_adder_str port map (fa => A(0), fb => B(0), fcin => Cin, fcout => c0, fsum => Sum(0));
u1: full_adder_str port map (fa => A(1), fb => B(1), fcin => c0, fcout => c1, fsum => Sum(1)); 
u2: full_adder_str port map (fa => A(2), fb => B(2), fcin => c1, fcout => c2, fsum => Sum(2)); 
u3: full_adder_str port map (fa => A(3), fb => B(3), fcin => c2, fcout => Cout, fsum => Sum(3)); 


end Structural;
