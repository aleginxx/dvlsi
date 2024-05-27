library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity bcd_parallel_adder is
    Port (
        A: in std_logic_vector(15 downto 0);
        B: in std_logic_vector(15 downto 0);
        Cin_4BCD: in std_logic;
        Sum_4BCD: out std_logic_vector(15 downto 0);
        COut_4BCD: out std_logic
    );
end bcd_parallel_adder;

architecture Structural of bcd_parallel_adder is

    component bcd_full_adder is
      Port (
        X : in std_logic_vector(3 downto 0);
        Y : in std_logic_vector(3 downto 0);
        Cin_BCD : in std_logic;
        Sum_BCD: out std_logic_vector(3 downto 0);
        CarryOut_BCD : out std_logic
       );
    end component;
    
    signal c0, c1, c2: std_logic;


begin

    u0: bcd_full_adder port map (X => A(3 downto 0), Y => B(3 downto 0), Cin_BCD => Cin_4BCD, Sum_BCD => Sum_4BCD(3 downto 0), CarryOut_BCD => c0);
    u1: bcd_full_adder port map (X => A(7 downto 4), Y => B(7 downto 4), Cin_BCD => c0, Sum_BCD => Sum_4BCD(7 downto 4), CarryOut_BCD => c1);
    u2: bcd_full_adder port map (X => A(11 downto 8), Y => B(11 downto 8), Cin_BCD => c1, Sum_BCD => Sum_4BCD(11 downto 8), CarryOut_BCD => c2);
    u3: bcd_full_adder port map (X => A(15 downto 12), Y => B(15 downto 12), Cin_BCD => c2, Sum_BCD => Sum_4BCD(15 downto 12), CarryOut_BCD => COut_4BCD);

end Structural;
