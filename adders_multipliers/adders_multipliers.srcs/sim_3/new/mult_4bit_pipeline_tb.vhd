library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_unsigned.all;

entity mult_4bit_pipeline_tb is
-- Port()
end mult_4bit_pipeline_tb;

architecture bench of mult_4bit_pipeline_tb is 

    component mult_4bit_pipeline is
        Port ( A : in std_logic_vector (3 downto 0);
               B : in std_logic_vector (3 downto 0);
               clk : in std_logic;
               rst : in std_logic;
               Pout : out std_logic_vector (7 downto 0));
    end component;
    
    signal A_tb, B_tb : std_logic_vector (3 downto 0) := "1111";
    signal clk_tb, rst_tb : std_logic := '0';
    signal Pout_tb : std_logic_vector (7 downto 0);
    
    constant clock : time := 10 ps;
    
begin
    dut : mult_4bit_pipeline 
        port map (
            A=>A_tb,
            B=>B_tb,
            clk=>clk_tb,
            rst=>rst_tb,
            Pout=>Pout_tb
        );
        
    simulation : process
    begin
        for i in 0 to 1 loop
            rst_tb <= not rst_tb;
            for j in 0 to 15 loop
                A_tb<=A_tb + 1;
                for k in 0 to 15 loop
                    B_tb<=B_tb + 1;
                    wait for clock;
                end loop;
            end loop;
            wait for 10*clock;
        end loop;
    end process;
    
    generate_clock : process
    begin
        clk_tb <= '0';
        wait for clock/2;
        clk_tb <= '1';
        wait for clock/2;
    end process;
    
end bench;