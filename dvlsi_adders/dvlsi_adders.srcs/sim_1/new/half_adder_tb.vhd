library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity half_adder_tb is
--  Port ( );
end half_adder_tb;

architecture Dataflow of half_adder_tb is

    component half_adder_df is
        Port ( a : in STD_LOGIC;
               b : in STD_LOGIC;
               cout : out STD_LOGIC;
               sum : out STD_LOGIC);
    end component;
    
    signal a_tb, b_tb, cout_tb, sum_tb : std_logic;

begin
    dut : half_adder_df
        port map(
            a => a_tb,
            b => b_tb,
            cout => cout_tb,
            sum => sum_tb
        );
        
        simulation : process
        begin
            a_tb <= '0';
            b_tb <= '0';
            wait for 10 ns;
            
            a_tb <= '0';
            b_tb <= '1';
            wait for 10 ns;
            
            a_tb <= '1';
            b_tb <= '0';
            wait for 10 ns;
            
            a_tb <= '1';
            b_tb <= '1';
            wait for 10 ns;
          
        end process simulation;

end Dataflow;
