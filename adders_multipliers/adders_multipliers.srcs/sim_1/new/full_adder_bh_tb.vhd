library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity full_adder_bh_tb is
--  Port ( );
end full_adder_bh_tb;

architecture bench of full_adder_bh_tb is
    component full_adder_bh is
        Port ( a : in STD_LOGIC;
               b : in STD_LOGIC;
               cin : in STD_LOGIC;
               clk : in STD_LOGIC;
               rst : in STD_LOGIC;
               sum : out STD_LOGIC;
               cout : out STD_LOGIC);
    end component;
    
    signal clk_tb, rst_tb, a_tb, b_tb, cin_tb : std_logic:='0';
    signal cout_tb, sum_tb : std_logic;
    
    constant clock : time := 10ns;

begin
    dut: full_adder_bh
        port map (
            a => a_tb,
            b => b_tb,
            cin => cin_tb,
            clk => clk_tb,
            rst => rst_tb,
            sum => sum_tb,
            cout => cout_tb
        );
    
    simulation : process
    begin
        rst_tb <= '1';
    
        a_tb <= '0';
        b_tb <= '0';
        cin_tb <= '0';
        wait for clock;
        
        a_tb <= '0';
        b_tb <= '0';
        cin_tb <= '1';
        wait for clock;
        
        a_tb <= '0';
        b_tb <= '1';
        cin_tb <= '0';
        wait for clock;
        
        a_tb <= '0';
        b_tb <= '1';
        cin_tb <= '1';
        wait for clock;
        
        a_tb <= '1';
        b_tb <= '0';
        cin_tb <= '0';
        wait for clock;
        
        a_tb <= '1';
        b_tb <= '0';
        cin_tb <= '1';
        wait for clock;
        
        a_tb <= '1';
        b_tb <= '1';
        cin_tb <= '0';
        wait for clock;
        
        a_tb <= '1';
        b_tb <= '1';
        cin_tb <= '1';
        wait for clock;
        
    end process;
        
    generate_clock : process
    begin
        clk_tb <= '0';
        wait for clock/2;
        clk_tb <= '1';
        wait for clock/2;
    end process;

end bench;
