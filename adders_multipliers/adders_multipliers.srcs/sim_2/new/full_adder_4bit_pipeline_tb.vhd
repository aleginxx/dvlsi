library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_unsigned.all;

entity full_adder_4bit_pipeline_tb is
--  Port ( );
end full_adder_4bit_pipeline_tb;

architecture bench of full_adder_4bit_pipeline_tb is

    constant clk1_period: time := 270ps;
    
    component full_adder_4bit_pipeline is
        Port ( A : in std_logic_vector (3 downto 0);
               B : in std_logic_vector (3 downto 0);
               Cin : in std_logic;
               Clk : in std_logic;
               Rst : in std_logic;
               Sum : out std_logic_vector (3 downto 0);
               Cout : out std_logic);
    end component;
    
    signal clk_tb, rst_tb, cin_tb : std_logic := '0';
    signal cout_tb : std_logic;
    signal A_tb, B_tb : std_logic_vector(3 downto 0) := "1111";
    signal Sum_tb :std_logic_vector(3 downto 0);
    
    constant clock : time := 10 ps ;
    
begin
     dut: full_adder_4bit_pipeline
        port map(
            A=>A_tb,
            B=>B_tb,
            Cin => cin_tb,
            Clk=>clk_tb,
            Rst=>rst_tb,
            Sum=>Sum_tb,
            Cout=>cout_tb
            );
    simulation : process 
    begin
        for i in 0 to 1 loop
            rst_tb <= not rst_tb;
            for l in 0 to 1 loop
                cin_tb <= not cin_tb;
                for j in 0 to 15 loop
                    A_tb<= A_tb + 1;
                    for k in 0 to 15 loop
                        B_tb <= B_tb + 1;
                        wait for clock;
                    end loop;
                end loop;
            end loop;
        end loop;
        wait;
    end process;
    
    generate_clock : process 
    begin
            clk_tb <= '0';
            wait for clock/2;
            clk_tb <= '1';
            wait for clock/2;
    end process;


end bench;