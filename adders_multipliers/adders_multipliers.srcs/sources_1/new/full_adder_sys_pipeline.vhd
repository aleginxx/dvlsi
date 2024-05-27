library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity full_adder_sys_pipeline is
    Port ( a : in std_logic;
           b : in std_logic;
           cin : in std_logic;
           sin : in std_logic;
           clk : in std_logic;
           rst : in std_logic;
           sout : out std_logic;
           cout : out std_logic;
           D_horizontal : out std_logic;
           D_diagonal : out std_logic);
end full_adder_sys_pipeline;

architecture Structural of full_adder_sys_pipeline is

    component full_adder_bh is
        Port ( a : in std_logic;
               b : in std_logic;
               cin : in std_logic;
               clk : in std_logic;
               rst : in std_logic;
               sum : out std_logic;
               cout : out std_logic);
    end component;
    
    component dff is
        Port ( D : in std_logic;
               clk : in std_logic;
               rst : in std_logic;
               Q : out std_logic);
    end component;
    
    signal dff0, dff1 : std_logic;

begin

    dff0 <= (a and b);
    dff_horizontal : dff port map (D=>b, clk=>clk, rst=>rst, Q=>D_horizontal);
    dff_diagonal_1 : dff port map (D=>a, clk=>clk, rst=>rst, Q=>dff1);
    dff_diagonal_2 : dff port map (D=>dff1, clk=>clk, rst=>rst, Q=>D_diagonal);
    dff_adder : full_adder_bh port map (a=>dff0, b=>sin, cin=>cin, clk=>clk, rst=>rst, sum=>sout, cout=>cout);


end Structural;