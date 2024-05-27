library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity full_adder_4bit_pipeline is
    Port ( A : in std_logic_vector (3 downto 0);
           B : in std_logic_vector (3 downto 0);
           Cin : in std_logic;
           Clk : in std_logic;
           Rst : in std_logic;
           Sum : out std_logic_vector (3 downto 0);
           Cout : out std_logic);
end full_adder_4bit_pipeline;

architecture Structural of full_adder_4bit_pipeline is

    component dff is
        Port ( D : in std_logic;
               clk : in std_logic;
               rst : in std_logic;
               Q : out std_logic);
    end component;
    
    component full_adder_bh is
        Port ( a : in std_logic;
               b : in std_logic;
               cin : in std_logic;
               clk : in std_logic;
               rst : in std_logic;
               sum : out std_logic;
               cout : out std_logic);
    end component;

    signal c0, c1, c2, dffA0, dffB0, dffS2 : std_logic;
    signal dffA1, dffB1, dffS1 : std_logic_vector(1 downto 0);
    signal dffA2, dffB2, dffS0 : std_logic_vector(2 downto 0);

begin

    FA0: full_adder_bh port map (a=>A(0), b=>B(0), cin=>Cin, clk=>Clk, rst=>Rst, sum=>dffS0(0), cout=>c0);
    dffS0_0: dff port map (D=>dffS0(0), clk=>clk, rst=>rst, Q=>dffS0(1));
    dffS0_1: dff port map (D=>dffS0(1), clk=>clk, rst=>rst, Q=>dffS0(2));
    dffS0_2: dff port map (D=>dffS0(2), clk=>clk, rst=>rst, Q=>Sum(0));
    
    regA0_0: dff port map (D=>A(1), clk=>clk, rst=>rst, Q=>dffA0);
    regB0_0: dff port map (D=>B(1), clk=>clk, rst=>rst, Q=>dffB0);
    FA1: full_adder_bh port map (a=>dffA0, b=>dffB0, cin=>c0, clk=>Clk, rst=>Rst, sum=>dffS1(0), cout=>c1);
    regS1_0: dff port map (D=>dffS1(0), clk=>clk, rst=>rst, Q=>dffS1(1));
    regS1_1: dff port map (D=>dffS1(1), clk=>clk, rst=>rst, Q=>Sum(1));
    
    regA1_0: dff port map (D=>A(2), clk=>clk, rst=>rst, Q=>dffA1(0));
    regB1_0: dff port map (D=>B(2), clk=>clk, rst=>rst, Q=>dffB1(0));
    regA1_1: dff port map (D=>dffA1(0), clk=>clk, rst=>rst, Q=>dffA1(1));
    regB1_1: dff port map (D=>dffB1(0), clk=>clk, rst=>rst, Q=>dffB1(1));
    FA2: full_adder_bh port map (a=>dffA1(1), b=>dffB1(1), cin=>c1, clk=>Clk, rst=>Rst, sum=>dffS2, cout=>c2);
    regS2_0: dff port map (D=>dffS2, clk=>clk, rst=>rst, Q=>Sum(2));
    
    regA3_0: dff port map (D=>A(3), clk=>clk, rst=>rst, Q=>dffA2(0));
    regB3_0: dff port map (D=>B(3), clk=>clk, rst=>rst, Q=>dffB2(0));
    regA3_1: dff port map (D=>dffA2(0), clk=>clk, rst=>rst, Q=>dffA2(1));
    regB3_1: dff port map (D=>dffB2(0), clk=>clk, rst=>rst, Q=>dffB2(1));
    regA3_2: dff port map (D=>dffA2(1), clk=>clk, rst=>rst, Q=>dffA2(2));
    regB3_2: dff port map (D=>dffB2(1), clk=>clk, rst=>rst, Q=>dffB2(2));
    FA3: full_adder_bh port map (a=>dffA2(2), b=>dffB2(2), cin=>c2, clk=>Clk, rst=>Rst, sum=>Sum(3), cout=>Cout);

end Structural;