library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity bcd_full_adder_tb is
end bcd_full_adder_tb;

architecture tb_arch of bcd_full_adder_tb is

  component bcd_full_adder is
    Port (
      X : in std_logic_vector(3 downto 0);
      Y : in std_logic_vector(3 downto 0);
      Cin_BCD : in std_logic;
      Sum_BCD: out std_logic_vector(3 downto 0);
      CarryOut_BCD : out std_logic
    );
  end component;

  signal X_tb, Y_tb : std_logic_vector(3 downto 0);
  signal Cin_BCD_tb : std_logic;

  signal Sum_BCD_tb : std_logic_vector(3 downto 0);
  signal CarryOut_BCD_tb : std_logic;

begin

  DUT : bcd_full_adder
    port map(
      X => X_tb,
      Y => Y_tb,
      Cin_BCD => Cin_BCD_tb,
      Sum_BCD => Sum_BCD_tb,
      CarryOut_BCD => CarryOut_BCD_tb
    );

  stimulus : process
  begin
    X_tb <= "0011";
    Y_tb <= "0001";
    Cin_BCD_tb <= '0';
    wait for 10 ns;

    X_tb <= "1001";
    Y_tb <= "0001";
    Cin_BCD_tb <= '0';
    wait for 10 ns;

    X_tb <= "0110";
    Y_tb <= "0010";
    Cin_BCD_tb <= '1';
    wait for 10 ns;

    X_tb <= "1010";
    Y_tb <= "0101";
    Cin_BCD_tb <= '0';
    wait for 10 ns;
    
    X_tb <= "0000";
    Y_tb <= "0000";
    Cin_BCD_tb <= '0';
    wait for 10 ns;
    
    X_tb <= "1111";
    Y_tb <= "0001";
    Cin_BCD_tb <= '1';
    wait for 10 ns;
    
    X_tb <= "0111";
    Y_tb <= "0111";
    Cin_BCD_tb <= '1';
    wait for 10 ns;


  end process stimulus;

end tb_arch;
