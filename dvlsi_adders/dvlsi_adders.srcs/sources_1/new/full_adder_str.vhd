library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity full_adder_str is
    Port ( fa : in STD_LOGIC;
           fb : in STD_LOGIC;
           fcin : in STD_LOGIC;
           fcout : out STD_LOGIC;
           fsum : out STD_LOGIC);
end full_adder_str;

architecture Structural of full_adder_str is

    component half_adder_df is
        Port ( a : in STD_LOGIC;
               b : in STD_LOGIC;
               cout : out STD_LOGIC;
               sum : out STD_LOGIC);
    end component;
    
    signal s1, c1, c2 : std_logic;

begin
u1: half_adder_df port map (a => fa, b => fb, cout => c1, sum => s1);
u2: half_adder_df port map (a => fcin, b => s1, cout => c2, sum => fsum);
fcout <= (c1 or c2);


end Structural;
