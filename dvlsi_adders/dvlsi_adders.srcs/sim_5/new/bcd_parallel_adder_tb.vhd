library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity bcd_parallel_adder_tb is
end bcd_parallel_adder_tb;

architecture tb_arch of bcd_parallel_adder_tb is

    component bcd_parallel_adder is
        Port (
            A: in std_logic_vector(15 downto 0);
            B: in std_logic_vector(15 downto 0);
            Cin_4BCD: in std_logic;
            Sum_4BCD: out std_logic_vector(15 downto 0);
            COut_4BCD: out std_logic
        );
    end component;
    
    signal A_tb, B_tb, Sum_4BCD_tb : std_logic_vector(15 downto 0);
    signal Cin_4BCD_tb, COut_4BCD_tb : std_logic;

begin

    dut: bcd_parallel_adder
        port map (
            A => A_tb,
            B => B_tb,
            Cin_4BCD => Cin_4BCD_tb,
            Sum_4BCD => Sum_4BCD_tb,
            COut_4BCD => COut_4BCD_tb
        );

    simulation : process
    begin 
        A_tb <= "0011001111001010";
        B_tb <= "0011110011010010";
        Cin_4BCD_tb <= '0';
        wait for 10 ns;
        -- Expected output: Sum_4BCD_tb = "0000010011111110" and COut_4BCD_tb = '0'  
        
        A_tb <= "0000001100100100";
        B_tb <= "0000000111011010";
        Cin_4BCD_tb <= '0';
        wait for 10 ns;
        -- Expected output: Sum_4BCD_tb = "0000010101100100" and COut_4BCD_tb = '0'  
        
        A_tb <= "0010110000111010";
        B_tb <= "0011101001101001";
        Cin_4BCD_tb <= '0';
        wait for 10 ns;
        -- Expected output: Sum_4BCD_tb = "0110110100001001" and COut_4BCD_tb = '0'  
        
        A_tb <= "0000100110010110";
        B_tb <= "0001001010111001";
        Cin_4BCD_tb <= '1';
        wait for 10 ns;
        -- Expected output: Sum_4BCD_tb = "0010001010110110" and COut_4BCD_tb = '0'  
    end process;

end tb_arch;