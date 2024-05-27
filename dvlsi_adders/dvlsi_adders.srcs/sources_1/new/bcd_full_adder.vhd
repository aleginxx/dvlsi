library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity bcd_full_adder is
  Port (
    X : in std_logic_vector(3 downto 0);
    Y : in std_logic_vector(3 downto 0);
    Cin_BCD : in std_logic;
    Sum_BCD: out std_logic_vector(3 downto 0);
    CarryOut_BCD : out std_logic
   );
end bcd_full_adder;

architecture structural of bcd_full_adder is

  component full_adder_4_bit is
    Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
           B : in STD_LOGIC_VECTOR (3 downto 0);
           Cin : in STD_LOGIC;
           Cout : out STD_LOGIC;
           Sum : out STD_LOGIC_VECTOR (3 downto 0));
  end component;

  signal C0, C, C1 : std_logic;
  signal S0, X0 : std_logic_vector(3 downto 0);

begin

  u0 : full_adder_4_bit port map(A => X, B => Y, Cin => Cin_BCD, Cout => C0, Sum => S0);
  C <= (S0(3) and S0(2)) or (S0(3) and S0(1)) or C0;
  CarryOut_BCD <= C;
  X0 <= '0' & C & C & '0';
  u1 : full_adder_4_bit port map(A => X0, B => S0, Cin => '0', Cout => C1, Sum => Sum_BCD);

end structural;
