library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity full_adder_4_bit_tb is
--  Port ( );
end full_adder_4_bit_tb;

architecture Structural of full_adder_4_bit_tb is
    component full_adder_4_bit is
        Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
               B : in STD_LOGIC_VECTOR (3 downto 0);
               Cin : in STD_LOGIC;
               Cout : out STD_LOGIC;
               Sum : out STD_LOGIC_VECTOR (3 downto 0));
    end component;
    
    
    signal A_tb, B_tb, Sum_tb : std_logic_vector(3 downto 0);
    signal Cin_tb, Cout_tb : std_logic;

begin
    dut : full_adder_4_bit
        port map (
            A => A_tb,
            B => B_tb,
            Cin => Cin_tb,
            Cout => Cout_tb,
            Sum => Sum_tb
        );
        
        simulation : process
        begin
            A_tb <= "0000";
            B_tb <= "0001";
            Cin_tb <= '0';
            wait for 10 ns;
            
            A_tb <= "0001";
            B_tb <= "0011";
            Cin_tb <= '0';
            wait for 10 ns;
            
            A_tb <= "1011";
            B_tb <= "1100";
            Cin_tb <= '1';
            wait for 10 ns;
            
            A_tb <= "1110";
            B_tb <= "0110";
            Cin_tb <= '1';
            wait for 10 ns;
            
            A_tb <= "1010";
            B_tb <= "1010";
            Cin_tb <= '0';
            wait for 10 ns;
            
            A_tb <= "0101";
            B_tb <= "1010";
            Cin_tb <= '0';
            wait for 10 ns;
            
            A_tb <= "0101";
            B_tb <= "1010";
            Cin_tb <= '1';
            wait for 10 ns;
            
            wait;
            
        end process simulation;

end Structural;
