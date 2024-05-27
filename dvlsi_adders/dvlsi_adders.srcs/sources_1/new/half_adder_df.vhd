library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity half_adder_df is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           cout : out STD_LOGIC;
           sum : out STD_LOGIC);
end half_adder_df;

architecture Dataflow of half_adder_df is

begin
    
    sum <= (a xor b);
    cout <= (a and b);

end Dataflow;
