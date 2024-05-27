library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity mult_4bit_pipeline is
    Port ( A : in std_logic_vector (3 downto 0);
           B : in std_logic_vector (3 downto 0);
           clk : in std_logic;
           rst : in std_logic;
           Pout : out std_logic_vector (7 downto 0));
end mult_4bit_pipeline;

architecture Structural of mult_4bit_pipeline is

    component full_adder_sys_pipeline is
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
    end component;
    
    component dff is
        Port ( D : in std_logic;
               clk : in std_logic;
               rst : in std_logic;
               Q : out std_logic);
    end component;
    
    signal result_first_row, carry_first_row, horizontal_first_row, diagonal_first_row : std_logic_vector(3 downto 0);
    signal carry_buf_first_row, carry_buf_second_row, carry_buf_third_row : std_logic;
    signal result_second_row, carry_second_row, horizontal_second_row, diagonal_second_row : std_logic_vector(3 downto 0);
    signal result_third_row, carry_third_row, horizontal_third_row, diagonal_third_row : std_logic_vector(3 downto 0);
    signal dffP0 : std_logic_vector(8 downto 0);
    signal carry_fourth_row, horizontal_fourth_row : std_logic_vector(3 downto 0);
    signal dontcare : std_logic;
    
    signal b1_buf: std_logic_vector(1 downto 0);
    signal b2_buf: std_logic_vector(3 downto 0);
    signal b3_buf: std_logic_vector(5 downto 0);
    
    signal dffP1 : std_logic_vector(6 downto 0);
    signal dffP2 : std_logic_vector(4 downto 0);
    signal dffP3 : std_logic_vector(2 downto 0);
    signal dffP4 : std_logic_vector(1 downto 0);
    signal dffP5 : std_logic;
    
    signal a1_buf: std_logic;
    signal a2_buf: std_logic_vector(1 downto 0);
    signal a3_buf: std_logic_vector(2 downto 0);

begin

FIRST_ROW_FIRST: full_adder_sys_pipeline port map(a=>A(0), b=>B(0), cin=>'0', sin=>'0', clk=>clk, rst=>rst, sout=>dffP0(0), cout=>carry_first_row(0), D_horizontal=>horizontal_first_row(0), D_diagonal=>diagonal_first_row(0));

dffA1_0: dff port map (D=>A(1), clk=>clk, rst=>rst, Q=>a1_buf);

FIRST_ROW_SECOND: full_adder_sys_pipeline port map(a=>a1_buf, b=>horizontal_first_row(0), cin=>carry_first_row(0), sin=>'0', clk=>clk, rst=>rst, sout=>result_first_row(1), cout=>carry_first_row(1), D_horizontal=>horizontal_first_row(1), D_diagonal=>diagonal_first_row(1));

dffA2_0: dff port map (D=>A(2), clk=>clk, rst=>rst, Q=>a2_buf(0));
dffA2_1: dff port map (D=>a2_buf(0), clk=>clk, rst=>rst, Q=>a2_buf(1));

FIRST_ROW_THIRD: full_adder_sys_pipeline port map(a=>a2_buf(1), b=>horizontal_first_row(1), cin=>carry_first_row(1), sin=>'0', clk=>clk, rst=>rst, sout=>result_first_row(2), cout=>carry_first_row(2), D_horizontal=>horizontal_first_row(2), D_diagonal=>diagonal_first_row(2));

dffA3_0: dff port map (D=>A(3), clk=>clk, rst=>rst, Q=>a3_buf(0));
dffA3_1: dff port map (D=>a3_buf(0), clk=>clk, rst=>rst, Q=>a3_buf(1));
dffA3_2: dff port map (D=>a3_buf(1), clk=>clk, rst=>rst, Q=>a3_buf(2));

FIRST_ROW_FOURTH: full_adder_sys_pipeline port map(a=>a3_buf(2), b=>horizontal_first_row(2), cin=>carry_first_row(2), sin=>'0', clk=>clk, rst=>rst, sout=>result_first_row(3), cout=>carry_first_row(3), D_horizontal=>horizontal_first_row(3), D_diagonal=>diagonal_first_row(3));

dffCoutFirstRow: dff port map (D=>carry_first_row(3), clk=>clk, rst=>rst, Q=>carry_buf_first_row);

dffP0_0: dff port map (D=>dffP0(0), clk=>clk, rst=>rst, Q=>dffP0(1));
dffP0_1: dff port map (D=>dffP0(1), clk=>clk, rst=>rst, Q=>dffP0(2));
dffP0_2: dff port map (D=>dffP0(2), clk=>clk, rst=>rst, Q=>dffP0(3));
dffP0_3: dff port map (D=>dffP0(3), clk=>clk, rst=>rst, Q=>dffP0(4));
dffP0_4: dff port map (D=>dffP0(4), clk=>clk, rst=>rst, Q=>dffP0(5));
dffP0_5: dff port map (D=>dffP0(5), clk=>clk, rst=>rst, Q=>dffP0(6));
dffP0_6: dff port map (D=>dffP0(6), clk=>clk, rst=>rst, Q=>dffP0(7));
dffP0_7: dff port map (D=>dffP0(7), clk=>clk, rst=>rst, Q=>dffP0(8));
dffP0_8: dff port map (D=>dffP0(8), clk=>clk, rst=>rst, Q=>Pout(0));

dffB1_0: dff port map (D=>B(1), clk=>clk, rst=>rst, Q=>b1_buf(0));
dffB1_1: dff port map (D=>b1_buf(0), clk=>clk, rst=>rst, Q=>b1_buf(1));

SECOND_ROW_FIRST: full_adder_sys_pipeline port map(a=>diagonal_first_row(0), b=>b1_buf(1), cin=>'0', sin=>result_first_row(1), clk=>clk, rst=>rst, sout=>dffP1(0), cout=>carry_second_row(0), D_horizontal=>horizontal_second_row(0), D_diagonal=>diagonal_second_row(0));
SECOND_ROW_SECOND: full_adder_sys_pipeline port map(a=>diagonal_first_row(1), b=>horizontal_second_row(0), cin=>carry_second_row(0), sin=>result_first_row(2), clk=>clk, rst=>rst, sout=>result_second_row(1), cout=>carry_second_row(1), D_horizontal=>horizontal_second_row(1), D_diagonal=>diagonal_second_row(1));
SECOND_ROW_THIRD: full_adder_sys_pipeline port map(a=>diagonal_first_row(2), b=>horizontal_second_row(1), cin=>carry_second_row(1), sin=>result_first_row(3), clk=>clk, rst=>rst, sout=>result_second_row(2), cout=>carry_second_row(2), D_horizontal=>horizontal_second_row(2), D_diagonal=>diagonal_second_row(2));
SECOND_ROW_FOURTH: full_adder_sys_pipeline port map(a=>diagonal_first_row(3), b=>horizontal_second_row(2), cin=>carry_second_row(2), sin=>carry_buf_first_row, clk=>clk, rst=>rst, sout=>result_second_row(3), cout=>carry_second_row(3), D_horizontal=>horizontal_second_row(3), D_diagonal=>diagonal_second_row(3));

dffCoutSecondRow: dff port map (D=>carry_second_row(3), clk=>clk, rst=>rst, Q=>carry_buf_second_row);

dffP1_0: dff port map (D=>dffP1(0), clk=>clk, rst=>rst, Q=>dffP1(1));
dffP1_1: dff port map (D=>dffP1(1), clk=>clk, rst=>rst, Q=>dffP1(2));
dffP1_2: dff port map (D=>dffP1(2), clk=>clk, rst=>rst, Q=>dffP1(3));
dffP1_3: dff port map (D=>dffP1(3), clk=>clk, rst=>rst, Q=>dffP1(4));
dffP1_4: dff port map (D=>dffP1(4), clk=>clk, rst=>rst, Q=>dffP1(5));
dffP1_5: dff port map (D=>dffP1(5), clk=>clk, rst=>rst, Q=>dffP1(6));
dffP1_6: dff port map (D=>dffP1(6), clk=>clk, rst=>rst, Q=>Pout(1));

dffB2_0: dff port map (D=>B(2), clk=>clk, rst=>rst, Q=>b2_buf(0));
dffB2_1: dff port map (D=>b2_buf(0), clk=>clk, rst=>rst, Q=>b2_buf(1));
dffB2_2: dff port map (D=>b2_buf(1), clk=>clk, rst=>rst, Q=>b2_buf(2));
dffB2_3: dff port map (D=>b2_buf(2), clk=>clk, rst=>rst, Q=>b2_buf(3));

THIRD_ROW_FIRST: full_adder_sys_pipeline port map(a=>diagonal_second_row(0), b=>b2_buf(3), cin=>'0', sin=>result_second_row(1), clk=>clk, rst=>rst, sout=>dffP2(0), cout=>carry_third_row(0), D_horizontal=>horizontal_third_row(0), D_diagonal=>diagonal_third_row(0));
THIRD_ROW_SECOND: full_adder_sys_pipeline port map(a=>diagonal_second_row(1), b=>horizontal_third_row(0), cin=>carry_third_row(0), sin=>result_second_row(2), clk=>clk, rst=>rst, sout=>result_third_row(1), cout=>carry_third_row(1), D_horizontal=>horizontal_third_row(1), D_diagonal=>diagonal_third_row(1));
THIRD_ROW_THIRD: full_adder_sys_pipeline port map(a=>diagonal_second_row(2), b=>horizontal_third_row(1), cin=>carry_third_row(1), sin=>result_second_row(3), clk=>clk, rst=>rst, sout=>result_third_row(2), cout=>carry_third_row(2), D_horizontal=>horizontal_third_row(2), D_diagonal=>diagonal_third_row(2));
THIRD_ROW_FOURTH: full_adder_sys_pipeline port map(a=>diagonal_second_row(3), b=>horizontal_third_row(2), cin=>carry_third_row(2), sin=>carry_buf_second_row, clk=>clk, rst=>rst, sout=>result_third_row(3), cout=>carry_third_row(3), D_horizontal=>horizontal_third_row(3), D_diagonal=>diagonal_third_row(3));

dffCoutThirdRow: dff port map (D=>carry_third_row(3), clk=>clk, rst=>rst, Q=>carry_buf_third_row);

dffP2_0: dff port map (D=>dffP2(0), clk=>clk, rst=>rst, Q=>dffP2(1));
dffP2_1: dff port map (D=>dffP2(1), clk=>clk, rst=>rst, Q=>dffP2(2));
dffP2_2: dff port map (D=>dffP2(2), clk=>clk, rst=>rst, Q=>dffP2(3));
dffP2_3: dff port map (D=>dffP2(3), clk=>clk, rst=>rst, Q=>dffP2(4));
dffP2_4: dff port map (D=>dffP2(4), clk=>clk, rst=>rst, Q=>Pout(2));

dffB3_0: dff port map (D=>B(3), clk=>clk, rst=>rst, Q=>b3_buf(0));
dffB3_1: dff port map (D=>b3_buf(0), clk=>clk, rst=>rst, Q=>b3_buf(1));
dffB3_2: dff port map (D=>b3_buf(1), clk=>clk, rst=>rst, Q=>b3_buf(2));
dffB3_3: dff port map (D=>b3_buf(2), clk=>clk, rst=>rst, Q=>b3_buf(3));
dffB3_4: dff port map (D=>b3_buf(3), clk=>clk, rst=>rst, Q=>b3_buf(4));
dffB3_5: dff port map (D=>b3_buf(4), clk=>clk, rst=>rst, Q=>b3_buf(5));

FOURTH_ROW_FIRST: full_adder_sys_pipeline port map(a=>diagonal_third_row(0), b=>b3_buf(5), cin=>'0', sin=>result_third_row(1), clk=>clk, rst=>rst, sout=>dffP3(0), cout=>carry_fourth_row(0), D_horizontal=>horizontal_fourth_row(0), D_diagonal=>dontcare);

dffP3_0: dff port map (D=>dffP3(0), clk=>clk, rst=>rst, Q=>dffP3(1));
dffP3_1: dff port map (D=>dffP3(1), clk=>clk, rst=>rst, Q=>dffP3(2));
dffP3_2: dff port map (D=>dffP3(2), clk=>clk, rst=>rst, Q=>Pout(3));

FOURTH_ROW_SECOND: full_adder_sys_pipeline port map(a=>diagonal_third_row(1), b=>horizontal_fourth_row(0), cin=>carry_fourth_row(0), sin=>result_third_row(2), clk=>clk, rst=>rst, sout=>dffP4(0), cout=>carry_fourth_row(1), D_horizontal=>horizontal_fourth_row(1), D_diagonal=>dontcare);

dffP4_0: dff port map (D=>dffP4(0), clk=>clk, rst=>rst, Q=>dffP4(1));
dffP4_1: dff port map (D=>dffP4(1), clk=>clk, rst=>rst, Q=>Pout(4));

FOURTH_ROW_THIRD: full_adder_sys_pipeline port map(a=>diagonal_third_row(2), b=>horizontal_fourth_row(1), cin=>carry_fourth_row(1), sin=>result_third_row(3), clk=>clk, rst=>rst, sout=>dffP5, cout=>carry_fourth_row(2), D_horizontal=>horizontal_fourth_row(2), D_diagonal=>dontcare);

dffP5_0: dff port map (D=>dffP5, clk=>clk, rst=>rst, Q=>Pout(5));

FOURTH_ROW_FOURTH: full_adder_sys_pipeline port map(a=>diagonal_third_row(3), b=>horizontal_fourth_row(2), cin=>carry_fourth_row(2), sin=>carry_buf_third_row, clk=>clk, rst=>rst, sout=>Pout(6), cout=>Pout(7), D_horizontal=>horizontal_fourth_row(3), D_diagonal=>dontcare);


end Structural;
