-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Mon Apr 22 13:52:51 2024
-- Host        : Gina running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ FIR_design_FIR_IP_v1_0_S00_AXI_0_0_sim_netlist.vhdl
-- Design      : FIR_design_FIR_IP_v1_0_S00_AXI_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MAC is
  port (
    CO : out STD_LOGIC_VECTOR ( 0 to 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 18 downto 0 );
    S_AXI_ACLK : in STD_LOGIC;
    rst : in STD_LOGIC;
    DI : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \sum[4]_i_9_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \sum[4]_i_9_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \sum[8]_i_9_0\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \sum[8]_i_9_1\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \sum_reg[3]_0\ : in STD_LOGIC;
    \sum_reg[11]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MAC;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MAC is
  signal \^co\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \multOp__0_carry__0_n_0\ : STD_LOGIC;
  signal \multOp__0_carry__0_n_1\ : STD_LOGIC;
  signal \multOp__0_carry__0_n_2\ : STD_LOGIC;
  signal \multOp__0_carry__0_n_3\ : STD_LOGIC;
  signal \multOp__0_carry__0_n_4\ : STD_LOGIC;
  signal \multOp__0_carry__0_n_5\ : STD_LOGIC;
  signal \multOp__0_carry__0_n_6\ : STD_LOGIC;
  signal \multOp__0_carry__0_n_7\ : STD_LOGIC;
  signal \multOp__0_carry__1_n_2\ : STD_LOGIC;
  signal \multOp__0_carry__1_n_3\ : STD_LOGIC;
  signal \multOp__0_carry__1_n_5\ : STD_LOGIC;
  signal \multOp__0_carry__1_n_6\ : STD_LOGIC;
  signal \multOp__0_carry__1_n_7\ : STD_LOGIC;
  signal \multOp__0_carry_n_0\ : STD_LOGIC;
  signal \multOp__0_carry_n_1\ : STD_LOGIC;
  signal \multOp__0_carry_n_2\ : STD_LOGIC;
  signal \multOp__0_carry_n_3\ : STD_LOGIC;
  signal \multOp__0_carry_n_4\ : STD_LOGIC;
  signal \multOp__0_carry_n_5\ : STD_LOGIC;
  signal \multOp__0_carry_n_6\ : STD_LOGIC;
  signal \multOp__0_carry_n_7\ : STD_LOGIC;
  signal \sum[0]_i_2_n_0\ : STD_LOGIC;
  signal \sum[0]_i_3_n_0\ : STD_LOGIC;
  signal \sum[0]_i_4_n_0\ : STD_LOGIC;
  signal \sum[0]_i_5_n_0\ : STD_LOGIC;
  signal \sum[0]_i_6_n_0\ : STD_LOGIC;
  signal \sum[0]_i_7_n_0\ : STD_LOGIC;
  signal \sum[0]_i_8_n_0\ : STD_LOGIC;
  signal \sum[0]_i_9_n_0\ : STD_LOGIC;
  signal \sum[12]_i_2_n_0\ : STD_LOGIC;
  signal \sum[12]_i_3_n_0\ : STD_LOGIC;
  signal \sum[12]_i_4_n_0\ : STD_LOGIC;
  signal \sum[12]_i_5_n_0\ : STD_LOGIC;
  signal \sum[16]_i_2_n_0\ : STD_LOGIC;
  signal \sum[16]_i_3_n_0\ : STD_LOGIC;
  signal \sum[16]_i_4_n_0\ : STD_LOGIC;
  signal \sum[4]_i_2_n_0\ : STD_LOGIC;
  signal \sum[4]_i_3_n_0\ : STD_LOGIC;
  signal \sum[4]_i_4_n_0\ : STD_LOGIC;
  signal \sum[4]_i_5_n_0\ : STD_LOGIC;
  signal \sum[4]_i_6_n_0\ : STD_LOGIC;
  signal \sum[4]_i_7_n_0\ : STD_LOGIC;
  signal \sum[4]_i_8_n_0\ : STD_LOGIC;
  signal \sum[4]_i_9_n_0\ : STD_LOGIC;
  signal \sum[8]_i_3_n_0\ : STD_LOGIC;
  signal \sum[8]_i_4_n_0\ : STD_LOGIC;
  signal \sum[8]_i_5_n_0\ : STD_LOGIC;
  signal \sum[8]_i_6_n_0\ : STD_LOGIC;
  signal \sum[8]_i_7_n_0\ : STD_LOGIC;
  signal \sum[8]_i_8_n_0\ : STD_LOGIC;
  signal \sum[8]_i_9_n_0\ : STD_LOGIC;
  signal sum_reg : STD_LOGIC_VECTOR ( 18 downto 0 );
  signal \sum_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \sum_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \sum_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \sum_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \sum_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \sum_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \sum_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \sum_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \sum_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \sum_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \sum_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \sum_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \sum_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \sum_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \sum_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \sum_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \sum_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \sum_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \sum_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \sum_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \sum_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \sum_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \sum_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \sum_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \sum_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \sum_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \sum_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \sum_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \sum_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \sum_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \sum_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \sum_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \sum_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \sum_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \sum_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \sum_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \sum_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \NLW_multOp__0_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 to 2 );
  signal \NLW_multOp__0_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_sum_reg[16]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_sum_reg[16]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
begin
  CO(0) <= \^co\(0);
  E(0) <= \^e\(0);
\multOp__0_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \multOp__0_carry_n_0\,
      CO(2) => \multOp__0_carry_n_1\,
      CO(1) => \multOp__0_carry_n_2\,
      CO(0) => \multOp__0_carry_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => DI(2 downto 0),
      DI(0) => '0',
      O(3) => \multOp__0_carry_n_4\,
      O(2) => \multOp__0_carry_n_5\,
      O(1) => \multOp__0_carry_n_6\,
      O(0) => \multOp__0_carry_n_7\,
      S(3 downto 0) => S(3 downto 0)
    );
\multOp__0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \multOp__0_carry_n_0\,
      CO(3) => \multOp__0_carry__0_n_0\,
      CO(2) => \multOp__0_carry__0_n_1\,
      CO(1) => \multOp__0_carry__0_n_2\,
      CO(0) => \multOp__0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \sum[4]_i_9_0\(3 downto 0),
      O(3) => \multOp__0_carry__0_n_4\,
      O(2) => \multOp__0_carry__0_n_5\,
      O(1) => \multOp__0_carry__0_n_6\,
      O(0) => \multOp__0_carry__0_n_7\,
      S(3 downto 0) => \sum[4]_i_9_1\(3 downto 0)
    );
\multOp__0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \multOp__0_carry__0_n_0\,
      CO(3) => \^co\(0),
      CO(2) => \NLW_multOp__0_carry__1_CO_UNCONNECTED\(2),
      CO(1) => \multOp__0_carry__1_n_2\,
      CO(0) => \multOp__0_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => \sum[8]_i_9_0\(2 downto 0),
      O(3) => \NLW_multOp__0_carry__1_O_UNCONNECTED\(3),
      O(2) => \multOp__0_carry__1_n_5\,
      O(1) => \multOp__0_carry__1_n_6\,
      O(0) => \multOp__0_carry__1_n_7\,
      S(3) => '1',
      S(2 downto 0) => \sum[8]_i_9_1\(2 downto 0)
    );
\ram_addr[2]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rst,
      O => \^e\(0)
    );
\sum[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \multOp__0_carry_n_4\,
      I1 => \sum_reg[3]_0\,
      O => \sum[0]_i_2_n_0\
    );
\sum[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \multOp__0_carry_n_5\,
      I1 => \sum_reg[3]_0\,
      O => \sum[0]_i_3_n_0\
    );
\sum[0]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \multOp__0_carry_n_6\,
      I1 => \sum_reg[3]_0\,
      O => \sum[0]_i_4_n_0\
    );
\sum[0]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \multOp__0_carry_n_7\,
      I1 => \sum_reg[3]_0\,
      O => \sum[0]_i_5_n_0\
    );
\sum[0]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D2"
    )
        port map (
      I0 => sum_reg(3),
      I1 => \sum_reg[3]_0\,
      I2 => \multOp__0_carry_n_4\,
      O => \sum[0]_i_6_n_0\
    );
\sum[0]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D2"
    )
        port map (
      I0 => sum_reg(2),
      I1 => \sum_reg[3]_0\,
      I2 => \multOp__0_carry_n_5\,
      O => \sum[0]_i_7_n_0\
    );
\sum[0]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D2"
    )
        port map (
      I0 => sum_reg(1),
      I1 => \sum_reg[3]_0\,
      I2 => \multOp__0_carry_n_6\,
      O => \sum[0]_i_8_n_0\
    );
\sum[0]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D2"
    )
        port map (
      I0 => sum_reg(0),
      I1 => \sum_reg[3]_0\,
      I2 => \multOp__0_carry_n_7\,
      O => \sum[0]_i_9_n_0\
    );
\sum[12]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sum_reg(15),
      I1 => \sum_reg[3]_0\,
      O => \sum[12]_i_2_n_0\
    );
\sum[12]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sum_reg(14),
      I1 => \sum_reg[3]_0\,
      O => \sum[12]_i_3_n_0\
    );
\sum[12]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sum_reg(13),
      I1 => \sum_reg[3]_0\,
      O => \sum[12]_i_4_n_0\
    );
\sum[12]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sum_reg(12),
      I1 => \sum_reg[3]_0\,
      O => \sum[12]_i_5_n_0\
    );
\sum[16]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sum_reg(18),
      I1 => \sum_reg[3]_0\,
      O => \sum[16]_i_2_n_0\
    );
\sum[16]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sum_reg(17),
      I1 => \sum_reg[3]_0\,
      O => \sum[16]_i_3_n_0\
    );
\sum[16]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sum_reg(16),
      I1 => \sum_reg[3]_0\,
      O => \sum[16]_i_4_n_0\
    );
\sum[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \multOp__0_carry__0_n_4\,
      I1 => \sum_reg[3]_0\,
      O => \sum[4]_i_2_n_0\
    );
\sum[4]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \multOp__0_carry__0_n_5\,
      I1 => \sum_reg[3]_0\,
      O => \sum[4]_i_3_n_0\
    );
\sum[4]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \multOp__0_carry__0_n_6\,
      I1 => \sum_reg[3]_0\,
      O => \sum[4]_i_4_n_0\
    );
\sum[4]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \multOp__0_carry__0_n_7\,
      I1 => \sum_reg[3]_0\,
      O => \sum[4]_i_5_n_0\
    );
\sum[4]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D2"
    )
        port map (
      I0 => sum_reg(7),
      I1 => \sum_reg[3]_0\,
      I2 => \multOp__0_carry__0_n_4\,
      O => \sum[4]_i_6_n_0\
    );
\sum[4]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D2"
    )
        port map (
      I0 => sum_reg(6),
      I1 => \sum_reg[3]_0\,
      I2 => \multOp__0_carry__0_n_5\,
      O => \sum[4]_i_7_n_0\
    );
\sum[4]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D2"
    )
        port map (
      I0 => sum_reg(5),
      I1 => \sum_reg[3]_0\,
      I2 => \multOp__0_carry__0_n_6\,
      O => \sum[4]_i_8_n_0\
    );
\sum[4]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D2"
    )
        port map (
      I0 => sum_reg(4),
      I1 => \sum_reg[3]_0\,
      I2 => \multOp__0_carry__0_n_7\,
      O => \sum[4]_i_9_n_0\
    );
\sum[8]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \multOp__0_carry__1_n_5\,
      I1 => \sum_reg[3]_0\,
      O => \sum[8]_i_3_n_0\
    );
\sum[8]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \multOp__0_carry__1_n_6\,
      I1 => \sum_reg[3]_0\,
      O => \sum[8]_i_4_n_0\
    );
\sum[8]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \multOp__0_carry__1_n_7\,
      I1 => \sum_reg[3]_0\,
      O => \sum[8]_i_5_n_0\
    );
\sum[8]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D2"
    )
        port map (
      I0 => sum_reg(11),
      I1 => \sum_reg[3]_0\,
      I2 => \^co\(0),
      O => \sum[8]_i_6_n_0\
    );
\sum[8]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D2"
    )
        port map (
      I0 => sum_reg(10),
      I1 => \sum_reg[3]_0\,
      I2 => \multOp__0_carry__1_n_5\,
      O => \sum[8]_i_7_n_0\
    );
\sum[8]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D2"
    )
        port map (
      I0 => sum_reg(9),
      I1 => \sum_reg[3]_0\,
      I2 => \multOp__0_carry__1_n_6\,
      O => \sum[8]_i_8_n_0\
    );
\sum[8]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D2"
    )
        port map (
      I0 => sum_reg(8),
      I1 => \sum_reg[3]_0\,
      I2 => \multOp__0_carry__1_n_7\,
      O => \sum[8]_i_9_n_0\
    );
\sum_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => rst,
      D => \sum_reg[0]_i_1_n_7\,
      Q => sum_reg(0)
    );
\sum_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \sum_reg[0]_i_1_n_0\,
      CO(2) => \sum_reg[0]_i_1_n_1\,
      CO(1) => \sum_reg[0]_i_1_n_2\,
      CO(0) => \sum_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \sum[0]_i_2_n_0\,
      DI(2) => \sum[0]_i_3_n_0\,
      DI(1) => \sum[0]_i_4_n_0\,
      DI(0) => \sum[0]_i_5_n_0\,
      O(3) => \sum_reg[0]_i_1_n_4\,
      O(2) => \sum_reg[0]_i_1_n_5\,
      O(1) => \sum_reg[0]_i_1_n_6\,
      O(0) => \sum_reg[0]_i_1_n_7\,
      S(3) => \sum[0]_i_6_n_0\,
      S(2) => \sum[0]_i_7_n_0\,
      S(1) => \sum[0]_i_8_n_0\,
      S(0) => \sum[0]_i_9_n_0\
    );
\sum_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => rst,
      D => \sum_reg[8]_i_1_n_5\,
      Q => sum_reg(10)
    );
\sum_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => rst,
      D => \sum_reg[8]_i_1_n_4\,
      Q => sum_reg(11)
    );
\sum_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => rst,
      D => \sum_reg[12]_i_1_n_7\,
      Q => sum_reg(12)
    );
\sum_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum_reg[8]_i_1_n_0\,
      CO(3) => \sum_reg[12]_i_1_n_0\,
      CO(2) => \sum_reg[12]_i_1_n_1\,
      CO(1) => \sum_reg[12]_i_1_n_2\,
      CO(0) => \sum_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \sum_reg[12]_i_1_n_4\,
      O(2) => \sum_reg[12]_i_1_n_5\,
      O(1) => \sum_reg[12]_i_1_n_6\,
      O(0) => \sum_reg[12]_i_1_n_7\,
      S(3) => \sum[12]_i_2_n_0\,
      S(2) => \sum[12]_i_3_n_0\,
      S(1) => \sum[12]_i_4_n_0\,
      S(0) => \sum[12]_i_5_n_0\
    );
\sum_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => rst,
      D => \sum_reg[12]_i_1_n_6\,
      Q => sum_reg(13)
    );
\sum_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => rst,
      D => \sum_reg[12]_i_1_n_5\,
      Q => sum_reg(14)
    );
\sum_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => rst,
      D => \sum_reg[12]_i_1_n_4\,
      Q => sum_reg(15)
    );
\sum_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => rst,
      D => \sum_reg[16]_i_1_n_7\,
      Q => sum_reg(16)
    );
\sum_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum_reg[12]_i_1_n_0\,
      CO(3 downto 2) => \NLW_sum_reg[16]_i_1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \sum_reg[16]_i_1_n_2\,
      CO(0) => \sum_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_sum_reg[16]_i_1_O_UNCONNECTED\(3),
      O(2) => \sum_reg[16]_i_1_n_5\,
      O(1) => \sum_reg[16]_i_1_n_6\,
      O(0) => \sum_reg[16]_i_1_n_7\,
      S(3) => '0',
      S(2) => \sum[16]_i_2_n_0\,
      S(1) => \sum[16]_i_3_n_0\,
      S(0) => \sum[16]_i_4_n_0\
    );
\sum_reg[17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => rst,
      D => \sum_reg[16]_i_1_n_6\,
      Q => sum_reg(17)
    );
\sum_reg[18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => rst,
      D => \sum_reg[16]_i_1_n_5\,
      Q => sum_reg(18)
    );
\sum_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => rst,
      D => \sum_reg[0]_i_1_n_6\,
      Q => sum_reg(1)
    );
\sum_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => rst,
      D => \sum_reg[0]_i_1_n_5\,
      Q => sum_reg(2)
    );
\sum_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => rst,
      D => \sum_reg[0]_i_1_n_4\,
      Q => sum_reg(3)
    );
\sum_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => rst,
      D => \sum_reg[4]_i_1_n_7\,
      Q => sum_reg(4)
    );
\sum_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum_reg[0]_i_1_n_0\,
      CO(3) => \sum_reg[4]_i_1_n_0\,
      CO(2) => \sum_reg[4]_i_1_n_1\,
      CO(1) => \sum_reg[4]_i_1_n_2\,
      CO(0) => \sum_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \sum[4]_i_2_n_0\,
      DI(2) => \sum[4]_i_3_n_0\,
      DI(1) => \sum[4]_i_4_n_0\,
      DI(0) => \sum[4]_i_5_n_0\,
      O(3) => \sum_reg[4]_i_1_n_4\,
      O(2) => \sum_reg[4]_i_1_n_5\,
      O(1) => \sum_reg[4]_i_1_n_6\,
      O(0) => \sum_reg[4]_i_1_n_7\,
      S(3) => \sum[4]_i_6_n_0\,
      S(2) => \sum[4]_i_7_n_0\,
      S(1) => \sum[4]_i_8_n_0\,
      S(0) => \sum[4]_i_9_n_0\
    );
\sum_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => rst,
      D => \sum_reg[4]_i_1_n_6\,
      Q => sum_reg(5)
    );
\sum_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => rst,
      D => \sum_reg[4]_i_1_n_5\,
      Q => sum_reg(6)
    );
\sum_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => rst,
      D => \sum_reg[4]_i_1_n_4\,
      Q => sum_reg(7)
    );
\sum_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => rst,
      D => \sum_reg[8]_i_1_n_7\,
      Q => sum_reg(8)
    );
\sum_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum_reg[4]_i_1_n_0\,
      CO(3) => \sum_reg[8]_i_1_n_0\,
      CO(2) => \sum_reg[8]_i_1_n_1\,
      CO(1) => \sum_reg[8]_i_1_n_2\,
      CO(0) => \sum_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \sum_reg[11]_0\(0),
      DI(2) => \sum[8]_i_3_n_0\,
      DI(1) => \sum[8]_i_4_n_0\,
      DI(0) => \sum[8]_i_5_n_0\,
      O(3) => \sum_reg[8]_i_1_n_4\,
      O(2) => \sum_reg[8]_i_1_n_5\,
      O(1) => \sum_reg[8]_i_1_n_6\,
      O(0) => \sum_reg[8]_i_1_n_7\,
      S(3) => \sum[8]_i_6_n_0\,
      S(2) => \sum[8]_i_7_n_0\,
      S(1) => \sum[8]_i_8_n_0\,
      S(0) => \sum[8]_i_9_n_0\
    );
\sum_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => rst,
      D => \sum_reg[8]_i_1_n_6\,
      Q => sum_reg(9)
    );
\y_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \^e\(0),
      D => sum_reg(0),
      Q => Q(0),
      R => '0'
    );
\y_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \^e\(0),
      D => sum_reg(10),
      Q => Q(10),
      R => '0'
    );
\y_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \^e\(0),
      D => sum_reg(11),
      Q => Q(11),
      R => '0'
    );
\y_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \^e\(0),
      D => sum_reg(12),
      Q => Q(12),
      R => '0'
    );
\y_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \^e\(0),
      D => sum_reg(13),
      Q => Q(13),
      R => '0'
    );
\y_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \^e\(0),
      D => sum_reg(14),
      Q => Q(14),
      R => '0'
    );
\y_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \^e\(0),
      D => sum_reg(15),
      Q => Q(15),
      R => '0'
    );
\y_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \^e\(0),
      D => sum_reg(16),
      Q => Q(16),
      R => '0'
    );
\y_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \^e\(0),
      D => sum_reg(17),
      Q => Q(17),
      R => '0'
    );
\y_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \^e\(0),
      D => sum_reg(18),
      Q => Q(18),
      R => '0'
    );
\y_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \^e\(0),
      D => sum_reg(1),
      Q => Q(1),
      R => '0'
    );
\y_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \^e\(0),
      D => sum_reg(2),
      Q => Q(2),
      R => '0'
    );
\y_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \^e\(0),
      D => sum_reg(3),
      Q => Q(3),
      R => '0'
    );
\y_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \^e\(0),
      D => sum_reg(4),
      Q => Q(4),
      R => '0'
    );
\y_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \^e\(0),
      D => sum_reg(5),
      Q => Q(5),
      R => '0'
    );
\y_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \^e\(0),
      D => sum_reg(6),
      Q => Q(6),
      R => '0'
    );
\y_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \^e\(0),
      D => sum_reg(7),
      Q => Q(7),
      R => '0'
    );
\y_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \^e\(0),
      D => sum_reg(8),
      Q => Q(8),
      R => '0'
    );
\y_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \^e\(0),
      D => sum_reg(9),
      Q => Q(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dff is
  port (
    q_reg_0 : out STD_LOGIC;
    mac_init : in STD_LOGIC;
    S_AXI_ACLK : in STD_LOGIC;
    rst : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dff;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dff is
begin
q_reg: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => rst,
      D => mac_init,
      Q => q_reg_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dff_0 is
  port (
    q_reg_0 : out STD_LOGIC;
    q_reg_1 : in STD_LOGIC;
    S_AXI_ACLK : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dff_0 : entity is "dff";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dff_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dff_0 is
begin
q_reg: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => rst,
      D => q_reg_1,
      Q => q_reg_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dff_1 is
  port (
    valid_out_ip : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_ARESETN_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    q_reg_0 : in STD_LOGIC;
    S_AXI_ACLK : in STD_LOGIC;
    rst : in STD_LOGIC;
    \axi_rdata_reg[0]\ : in STD_LOGIC;
    S_AXI_ARVALID : in STD_LOGIC;
    \axi_rdata_reg[0]_0\ : in STD_LOGIC;
    S_AXI_ARESETN : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dff_1 : entity is "dff";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dff_1;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dff_1 is
  signal \^valid_out_ip\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \axi_rdata[31]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \slv_reg1[18]_i_1\ : label is "soft_lutpair4";
begin
  valid_out_ip <= \^valid_out_ip\;
\axi_rdata[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => \axi_rdata_reg[0]\,
      I1 => S_AXI_ARVALID,
      I2 => \axi_rdata_reg[0]_0\,
      I3 => \^valid_out_ip\,
      O => E(0)
    );
q_reg: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => rst,
      D => q_reg_0,
      Q => \^valid_out_ip\
    );
\slv_reg1[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => S_AXI_ARESETN,
      I1 => \^valid_out_ip\,
      O => S_AXI_ARESETN_0(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dff_10 is
  port (
    q_reg_0 : out STD_LOGIC;
    q_reg_1 : in STD_LOGIC;
    S_AXI_ACLK : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dff_10 : entity is "dff";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dff_10;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dff_10 is
begin
q_reg: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => rst,
      D => q_reg_1,
      Q => q_reg_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dff_11 is
  port (
    q_reg_0 : out STD_LOGIC;
    q_reg_1 : in STD_LOGIC;
    S_AXI_ACLK : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dff_11 : entity is "dff";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dff_11;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dff_11 is
begin
q_reg: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => rst,
      D => q_reg_1,
      Q => q_reg_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dff_12 is
  port (
    d : out STD_LOGIC;
    q_reg_0 : in STD_LOGIC;
    S_AXI_ACLK : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dff_12 : entity is "dff";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dff_12;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dff_12 is
begin
q_reg: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => rst,
      D => q_reg_0,
      Q => d
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dff_13 is
  port (
    q_reg_0 : out STD_LOGIC;
    d : in STD_LOGIC;
    S_AXI_ACLK : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dff_13 : entity is "dff";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dff_13;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dff_13 is
begin
q_reg: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => rst,
      D => d,
      Q => q_reg_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dff_6 is
  port (
    q_reg_0 : out STD_LOGIC;
    q_reg_1 : in STD_LOGIC;
    S_AXI_ACLK : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dff_6 : entity is "dff";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dff_6;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dff_6 is
begin
q_reg: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => rst,
      D => q_reg_1,
      Q => q_reg_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dff_7 is
  port (
    q_reg_0 : out STD_LOGIC;
    q_reg_1 : in STD_LOGIC;
    S_AXI_ACLK : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dff_7 : entity is "dff";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dff_7;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dff_7 is
begin
q_reg: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => rst,
      D => q_reg_1,
      Q => q_reg_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dff_8 is
  port (
    q_reg_0 : out STD_LOGIC;
    q_reg_1 : in STD_LOGIC;
    S_AXI_ACLK : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dff_8 : entity is "dff";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dff_8;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dff_8 is
begin
q_reg: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => rst,
      D => q_reg_1,
      Q => q_reg_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dff_9 is
  port (
    q_reg_0 : out STD_LOGIC;
    q_reg_1 : in STD_LOGIC;
    S_AXI_ACLK : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dff_9 : entity is "dff";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dff_9;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dff_9 is
begin
q_reg: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => rst,
      D => q_reg_1,
      Q => q_reg_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dff_big is
  port (
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    D : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_ACLK : in STD_LOGIC;
    rst : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dff_big;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dff_big is
begin
\q_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => rst,
      D => D(0),
      Q => Q(0)
    );
\q_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => rst,
      D => D(1),
      Q => Q(1)
    );
\q_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => rst,
      D => D(2),
      Q => Q(2)
    );
\q_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => rst,
      D => D(3),
      Q => Q(3)
    );
\q_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => rst,
      D => D(4),
      Q => Q(4)
    );
\q_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => rst,
      D => D(5),
      Q => Q(5)
    );
\q_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => rst,
      D => D(6),
      Q => Q(6)
    );
\q_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => rst,
      D => D(7),
      Q => Q(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mlab_ram is
  port (
    \do_reg[5]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \do_reg[2]_0\ : out STD_LOGIC;
    \do_reg[2]_1\ : out STD_LOGIC;
    \do_reg[3]_0\ : out STD_LOGIC;
    \do_reg[7]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \do_reg[4]_0\ : out STD_LOGIC;
    \do_reg[5]_1\ : out STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 1 downto 0 );
    DI : out STD_LOGIC_VECTOR ( 0 to 0 );
    \multOp__0_carry__1_i_6\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \multOp__0_carry__0\ : in STD_LOGIC;
    \multOp__0_carry__1\ : in STD_LOGIC;
    \RAM_reg[7][0]_0\ : in STD_LOGIC;
    \RAM_reg[0][7]_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_ACLK : in STD_LOGIC;
    rst : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \do_reg[0]_0\ : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mlab_ram;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mlab_ram is
  signal \^q\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \RAM_reg[0]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \RAM_reg[1]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \RAM_reg[2]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \RAM_reg[3]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \RAM_reg[4]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \RAM_reg[5]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \RAM_reg[6]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \RAM_reg[7]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \do[0]_i_1_n_0\ : STD_LOGIC;
  signal \do[0]_i_2_n_0\ : STD_LOGIC;
  signal \do[0]_i_3_n_0\ : STD_LOGIC;
  signal \do[1]_i_1_n_0\ : STD_LOGIC;
  signal \do[1]_i_2_n_0\ : STD_LOGIC;
  signal \do[1]_i_3_n_0\ : STD_LOGIC;
  signal \do[2]_i_1_n_0\ : STD_LOGIC;
  signal \do[2]_i_2_n_0\ : STD_LOGIC;
  signal \do[2]_i_3_n_0\ : STD_LOGIC;
  signal \do[3]_i_1_n_0\ : STD_LOGIC;
  signal \do[3]_i_2_n_0\ : STD_LOGIC;
  signal \do[3]_i_3_n_0\ : STD_LOGIC;
  signal \do[4]_i_1_n_0\ : STD_LOGIC;
  signal \do[4]_i_2_n_0\ : STD_LOGIC;
  signal \do[4]_i_3_n_0\ : STD_LOGIC;
  signal \do[5]_i_1_n_0\ : STD_LOGIC;
  signal \do[5]_i_2_n_0\ : STD_LOGIC;
  signal \do[5]_i_3_n_0\ : STD_LOGIC;
  signal \do[6]_i_1_n_0\ : STD_LOGIC;
  signal \do[6]_i_2_n_0\ : STD_LOGIC;
  signal \do[6]_i_3_n_0\ : STD_LOGIC;
  signal \do[7]_i_1_n_0\ : STD_LOGIC;
  signal \do[7]_i_2_n_0\ : STD_LOGIC;
  signal \do[7]_i_3_n_0\ : STD_LOGIC;
  signal \^do_reg[2]_0\ : STD_LOGIC;
  signal \^do_reg[4]_0\ : STD_LOGIC;
begin
  Q(7 downto 0) <= \^q\(7 downto 0);
  \do_reg[2]_0\ <= \^do_reg[2]_0\;
  \do_reg[4]_0\ <= \^do_reg[4]_0\;
\RAM_reg[0][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \RAM_reg[7][0]_0\,
      CLR => rst,
      D => \RAM_reg[0][7]_0\(0),
      Q => \RAM_reg[0]\(0)
    );
\RAM_reg[0][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \RAM_reg[7][0]_0\,
      CLR => rst,
      D => \RAM_reg[0][7]_0\(1),
      Q => \RAM_reg[0]\(1)
    );
\RAM_reg[0][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \RAM_reg[7][0]_0\,
      CLR => rst,
      D => \RAM_reg[0][7]_0\(2),
      Q => \RAM_reg[0]\(2)
    );
\RAM_reg[0][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \RAM_reg[7][0]_0\,
      CLR => rst,
      D => \RAM_reg[0][7]_0\(3),
      Q => \RAM_reg[0]\(3)
    );
\RAM_reg[0][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \RAM_reg[7][0]_0\,
      CLR => rst,
      D => \RAM_reg[0][7]_0\(4),
      Q => \RAM_reg[0]\(4)
    );
\RAM_reg[0][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \RAM_reg[7][0]_0\,
      CLR => rst,
      D => \RAM_reg[0][7]_0\(5),
      Q => \RAM_reg[0]\(5)
    );
\RAM_reg[0][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \RAM_reg[7][0]_0\,
      CLR => rst,
      D => \RAM_reg[0][7]_0\(6),
      Q => \RAM_reg[0]\(6)
    );
\RAM_reg[0][7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \RAM_reg[7][0]_0\,
      CLR => rst,
      D => \RAM_reg[0][7]_0\(7),
      Q => \RAM_reg[0]\(7)
    );
\RAM_reg[1][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \RAM_reg[7][0]_0\,
      CLR => rst,
      D => \RAM_reg[0]\(0),
      Q => \RAM_reg[1]\(0)
    );
\RAM_reg[1][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \RAM_reg[7][0]_0\,
      CLR => rst,
      D => \RAM_reg[0]\(1),
      Q => \RAM_reg[1]\(1)
    );
\RAM_reg[1][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \RAM_reg[7][0]_0\,
      CLR => rst,
      D => \RAM_reg[0]\(2),
      Q => \RAM_reg[1]\(2)
    );
\RAM_reg[1][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \RAM_reg[7][0]_0\,
      CLR => rst,
      D => \RAM_reg[0]\(3),
      Q => \RAM_reg[1]\(3)
    );
\RAM_reg[1][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \RAM_reg[7][0]_0\,
      CLR => rst,
      D => \RAM_reg[0]\(4),
      Q => \RAM_reg[1]\(4)
    );
\RAM_reg[1][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \RAM_reg[7][0]_0\,
      CLR => rst,
      D => \RAM_reg[0]\(5),
      Q => \RAM_reg[1]\(5)
    );
\RAM_reg[1][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \RAM_reg[7][0]_0\,
      CLR => rst,
      D => \RAM_reg[0]\(6),
      Q => \RAM_reg[1]\(6)
    );
\RAM_reg[1][7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \RAM_reg[7][0]_0\,
      CLR => rst,
      D => \RAM_reg[0]\(7),
      Q => \RAM_reg[1]\(7)
    );
\RAM_reg[2][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \RAM_reg[7][0]_0\,
      CLR => rst,
      D => \RAM_reg[1]\(0),
      Q => \RAM_reg[2]\(0)
    );
\RAM_reg[2][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \RAM_reg[7][0]_0\,
      CLR => rst,
      D => \RAM_reg[1]\(1),
      Q => \RAM_reg[2]\(1)
    );
\RAM_reg[2][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \RAM_reg[7][0]_0\,
      CLR => rst,
      D => \RAM_reg[1]\(2),
      Q => \RAM_reg[2]\(2)
    );
\RAM_reg[2][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \RAM_reg[7][0]_0\,
      CLR => rst,
      D => \RAM_reg[1]\(3),
      Q => \RAM_reg[2]\(3)
    );
\RAM_reg[2][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \RAM_reg[7][0]_0\,
      CLR => rst,
      D => \RAM_reg[1]\(4),
      Q => \RAM_reg[2]\(4)
    );
\RAM_reg[2][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \RAM_reg[7][0]_0\,
      CLR => rst,
      D => \RAM_reg[1]\(5),
      Q => \RAM_reg[2]\(5)
    );
\RAM_reg[2][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \RAM_reg[7][0]_0\,
      CLR => rst,
      D => \RAM_reg[1]\(6),
      Q => \RAM_reg[2]\(6)
    );
\RAM_reg[2][7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \RAM_reg[7][0]_0\,
      CLR => rst,
      D => \RAM_reg[1]\(7),
      Q => \RAM_reg[2]\(7)
    );
\RAM_reg[3][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \RAM_reg[7][0]_0\,
      CLR => rst,
      D => \RAM_reg[2]\(0),
      Q => \RAM_reg[3]\(0)
    );
\RAM_reg[3][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \RAM_reg[7][0]_0\,
      CLR => rst,
      D => \RAM_reg[2]\(1),
      Q => \RAM_reg[3]\(1)
    );
\RAM_reg[3][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \RAM_reg[7][0]_0\,
      CLR => rst,
      D => \RAM_reg[2]\(2),
      Q => \RAM_reg[3]\(2)
    );
\RAM_reg[3][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \RAM_reg[7][0]_0\,
      CLR => rst,
      D => \RAM_reg[2]\(3),
      Q => \RAM_reg[3]\(3)
    );
\RAM_reg[3][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \RAM_reg[7][0]_0\,
      CLR => rst,
      D => \RAM_reg[2]\(4),
      Q => \RAM_reg[3]\(4)
    );
\RAM_reg[3][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \RAM_reg[7][0]_0\,
      CLR => rst,
      D => \RAM_reg[2]\(5),
      Q => \RAM_reg[3]\(5)
    );
\RAM_reg[3][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \RAM_reg[7][0]_0\,
      CLR => rst,
      D => \RAM_reg[2]\(6),
      Q => \RAM_reg[3]\(6)
    );
\RAM_reg[3][7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \RAM_reg[7][0]_0\,
      CLR => rst,
      D => \RAM_reg[2]\(7),
      Q => \RAM_reg[3]\(7)
    );
\RAM_reg[4][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \RAM_reg[7][0]_0\,
      CLR => rst,
      D => \RAM_reg[3]\(0),
      Q => \RAM_reg[4]\(0)
    );
\RAM_reg[4][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \RAM_reg[7][0]_0\,
      CLR => rst,
      D => \RAM_reg[3]\(1),
      Q => \RAM_reg[4]\(1)
    );
\RAM_reg[4][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \RAM_reg[7][0]_0\,
      CLR => rst,
      D => \RAM_reg[3]\(2),
      Q => \RAM_reg[4]\(2)
    );
\RAM_reg[4][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \RAM_reg[7][0]_0\,
      CLR => rst,
      D => \RAM_reg[3]\(3),
      Q => \RAM_reg[4]\(3)
    );
\RAM_reg[4][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \RAM_reg[7][0]_0\,
      CLR => rst,
      D => \RAM_reg[3]\(4),
      Q => \RAM_reg[4]\(4)
    );
\RAM_reg[4][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \RAM_reg[7][0]_0\,
      CLR => rst,
      D => \RAM_reg[3]\(5),
      Q => \RAM_reg[4]\(5)
    );
\RAM_reg[4][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \RAM_reg[7][0]_0\,
      CLR => rst,
      D => \RAM_reg[3]\(6),
      Q => \RAM_reg[4]\(6)
    );
\RAM_reg[4][7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \RAM_reg[7][0]_0\,
      CLR => rst,
      D => \RAM_reg[3]\(7),
      Q => \RAM_reg[4]\(7)
    );
\RAM_reg[5][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \RAM_reg[7][0]_0\,
      CLR => rst,
      D => \RAM_reg[4]\(0),
      Q => \RAM_reg[5]\(0)
    );
\RAM_reg[5][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \RAM_reg[7][0]_0\,
      CLR => rst,
      D => \RAM_reg[4]\(1),
      Q => \RAM_reg[5]\(1)
    );
\RAM_reg[5][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \RAM_reg[7][0]_0\,
      CLR => rst,
      D => \RAM_reg[4]\(2),
      Q => \RAM_reg[5]\(2)
    );
\RAM_reg[5][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \RAM_reg[7][0]_0\,
      CLR => rst,
      D => \RAM_reg[4]\(3),
      Q => \RAM_reg[5]\(3)
    );
\RAM_reg[5][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \RAM_reg[7][0]_0\,
      CLR => rst,
      D => \RAM_reg[4]\(4),
      Q => \RAM_reg[5]\(4)
    );
\RAM_reg[5][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \RAM_reg[7][0]_0\,
      CLR => rst,
      D => \RAM_reg[4]\(5),
      Q => \RAM_reg[5]\(5)
    );
\RAM_reg[5][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \RAM_reg[7][0]_0\,
      CLR => rst,
      D => \RAM_reg[4]\(6),
      Q => \RAM_reg[5]\(6)
    );
\RAM_reg[5][7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \RAM_reg[7][0]_0\,
      CLR => rst,
      D => \RAM_reg[4]\(7),
      Q => \RAM_reg[5]\(7)
    );
\RAM_reg[6][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \RAM_reg[7][0]_0\,
      CLR => rst,
      D => \RAM_reg[5]\(0),
      Q => \RAM_reg[6]\(0)
    );
\RAM_reg[6][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \RAM_reg[7][0]_0\,
      CLR => rst,
      D => \RAM_reg[5]\(1),
      Q => \RAM_reg[6]\(1)
    );
\RAM_reg[6][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \RAM_reg[7][0]_0\,
      CLR => rst,
      D => \RAM_reg[5]\(2),
      Q => \RAM_reg[6]\(2)
    );
\RAM_reg[6][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \RAM_reg[7][0]_0\,
      CLR => rst,
      D => \RAM_reg[5]\(3),
      Q => \RAM_reg[6]\(3)
    );
\RAM_reg[6][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \RAM_reg[7][0]_0\,
      CLR => rst,
      D => \RAM_reg[5]\(4),
      Q => \RAM_reg[6]\(4)
    );
\RAM_reg[6][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \RAM_reg[7][0]_0\,
      CLR => rst,
      D => \RAM_reg[5]\(5),
      Q => \RAM_reg[6]\(5)
    );
\RAM_reg[6][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \RAM_reg[7][0]_0\,
      CLR => rst,
      D => \RAM_reg[5]\(6),
      Q => \RAM_reg[6]\(6)
    );
\RAM_reg[6][7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \RAM_reg[7][0]_0\,
      CLR => rst,
      D => \RAM_reg[5]\(7),
      Q => \RAM_reg[6]\(7)
    );
\RAM_reg[7][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \RAM_reg[7][0]_0\,
      CLR => rst,
      D => \RAM_reg[6]\(0),
      Q => \RAM_reg[7]\(0)
    );
\RAM_reg[7][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \RAM_reg[7][0]_0\,
      CLR => rst,
      D => \RAM_reg[6]\(1),
      Q => \RAM_reg[7]\(1)
    );
\RAM_reg[7][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \RAM_reg[7][0]_0\,
      CLR => rst,
      D => \RAM_reg[6]\(2),
      Q => \RAM_reg[7]\(2)
    );
\RAM_reg[7][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \RAM_reg[7][0]_0\,
      CLR => rst,
      D => \RAM_reg[6]\(3),
      Q => \RAM_reg[7]\(3)
    );
\RAM_reg[7][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \RAM_reg[7][0]_0\,
      CLR => rst,
      D => \RAM_reg[6]\(4),
      Q => \RAM_reg[7]\(4)
    );
\RAM_reg[7][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \RAM_reg[7][0]_0\,
      CLR => rst,
      D => \RAM_reg[6]\(5),
      Q => \RAM_reg[7]\(5)
    );
\RAM_reg[7][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \RAM_reg[7][0]_0\,
      CLR => rst,
      D => \RAM_reg[6]\(6),
      Q => \RAM_reg[7]\(6)
    );
\RAM_reg[7][7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \RAM_reg[7][0]_0\,
      CLR => rst,
      D => \RAM_reg[6]\(7),
      Q => \RAM_reg[7]\(7)
    );
\do[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACFC0"
    )
        port map (
      I0 => \RAM_reg[0][7]_0\(0),
      I1 => \do[0]_i_2_n_0\,
      I2 => \do_reg[0]_0\(2),
      I3 => \do[0]_i_3_n_0\,
      I4 => \RAM_reg[7][0]_0\,
      O => \do[0]_i_1_n_0\
    );
\do[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \RAM_reg[7]\(0),
      I1 => \RAM_reg[6]\(0),
      I2 => \do_reg[0]_0\(1),
      I3 => \RAM_reg[5]\(0),
      I4 => \do_reg[0]_0\(0),
      I5 => \RAM_reg[4]\(0),
      O => \do[0]_i_2_n_0\
    );
\do[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \RAM_reg[3]\(0),
      I1 => \RAM_reg[2]\(0),
      I2 => \do_reg[0]_0\(1),
      I3 => \RAM_reg[1]\(0),
      I4 => \do_reg[0]_0\(0),
      I5 => \RAM_reg[0]\(0),
      O => \do[0]_i_3_n_0\
    );
\do[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACFC0"
    )
        port map (
      I0 => \RAM_reg[0][7]_0\(1),
      I1 => \do[1]_i_2_n_0\,
      I2 => \do_reg[0]_0\(2),
      I3 => \do[1]_i_3_n_0\,
      I4 => \RAM_reg[7][0]_0\,
      O => \do[1]_i_1_n_0\
    );
\do[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \RAM_reg[7]\(1),
      I1 => \RAM_reg[6]\(1),
      I2 => \do_reg[0]_0\(1),
      I3 => \RAM_reg[5]\(1),
      I4 => \do_reg[0]_0\(0),
      I5 => \RAM_reg[4]\(1),
      O => \do[1]_i_2_n_0\
    );
\do[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \RAM_reg[3]\(1),
      I1 => \RAM_reg[2]\(1),
      I2 => \do_reg[0]_0\(1),
      I3 => \RAM_reg[1]\(1),
      I4 => \do_reg[0]_0\(0),
      I5 => \RAM_reg[0]\(1),
      O => \do[1]_i_3_n_0\
    );
\do[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACFC0"
    )
        port map (
      I0 => \RAM_reg[0][7]_0\(2),
      I1 => \do[2]_i_2_n_0\,
      I2 => \do_reg[0]_0\(2),
      I3 => \do[2]_i_3_n_0\,
      I4 => \RAM_reg[7][0]_0\,
      O => \do[2]_i_1_n_0\
    );
\do[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \RAM_reg[7]\(2),
      I1 => \RAM_reg[6]\(2),
      I2 => \do_reg[0]_0\(1),
      I3 => \RAM_reg[5]\(2),
      I4 => \do_reg[0]_0\(0),
      I5 => \RAM_reg[4]\(2),
      O => \do[2]_i_2_n_0\
    );
\do[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \RAM_reg[3]\(2),
      I1 => \RAM_reg[2]\(2),
      I2 => \do_reg[0]_0\(1),
      I3 => \RAM_reg[1]\(2),
      I4 => \do_reg[0]_0\(0),
      I5 => \RAM_reg[0]\(2),
      O => \do[2]_i_3_n_0\
    );
\do[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACFC0"
    )
        port map (
      I0 => \RAM_reg[0][7]_0\(3),
      I1 => \do[3]_i_2_n_0\,
      I2 => \do_reg[0]_0\(2),
      I3 => \do[3]_i_3_n_0\,
      I4 => \RAM_reg[7][0]_0\,
      O => \do[3]_i_1_n_0\
    );
\do[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \RAM_reg[7]\(3),
      I1 => \RAM_reg[6]\(3),
      I2 => \do_reg[0]_0\(1),
      I3 => \RAM_reg[5]\(3),
      I4 => \do_reg[0]_0\(0),
      I5 => \RAM_reg[4]\(3),
      O => \do[3]_i_2_n_0\
    );
\do[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \RAM_reg[3]\(3),
      I1 => \RAM_reg[2]\(3),
      I2 => \do_reg[0]_0\(1),
      I3 => \RAM_reg[1]\(3),
      I4 => \do_reg[0]_0\(0),
      I5 => \RAM_reg[0]\(3),
      O => \do[3]_i_3_n_0\
    );
\do[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACFC0"
    )
        port map (
      I0 => \RAM_reg[0][7]_0\(4),
      I1 => \do[4]_i_2_n_0\,
      I2 => \do_reg[0]_0\(2),
      I3 => \do[4]_i_3_n_0\,
      I4 => \RAM_reg[7][0]_0\,
      O => \do[4]_i_1_n_0\
    );
\do[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \RAM_reg[7]\(4),
      I1 => \RAM_reg[6]\(4),
      I2 => \do_reg[0]_0\(1),
      I3 => \RAM_reg[5]\(4),
      I4 => \do_reg[0]_0\(0),
      I5 => \RAM_reg[4]\(4),
      O => \do[4]_i_2_n_0\
    );
\do[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \RAM_reg[3]\(4),
      I1 => \RAM_reg[2]\(4),
      I2 => \do_reg[0]_0\(1),
      I3 => \RAM_reg[1]\(4),
      I4 => \do_reg[0]_0\(0),
      I5 => \RAM_reg[0]\(4),
      O => \do[4]_i_3_n_0\
    );
\do[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACFC0"
    )
        port map (
      I0 => \RAM_reg[0][7]_0\(5),
      I1 => \do[5]_i_2_n_0\,
      I2 => \do_reg[0]_0\(2),
      I3 => \do[5]_i_3_n_0\,
      I4 => \RAM_reg[7][0]_0\,
      O => \do[5]_i_1_n_0\
    );
\do[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \RAM_reg[7]\(5),
      I1 => \RAM_reg[6]\(5),
      I2 => \do_reg[0]_0\(1),
      I3 => \RAM_reg[5]\(5),
      I4 => \do_reg[0]_0\(0),
      I5 => \RAM_reg[4]\(5),
      O => \do[5]_i_2_n_0\
    );
\do[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \RAM_reg[3]\(5),
      I1 => \RAM_reg[2]\(5),
      I2 => \do_reg[0]_0\(1),
      I3 => \RAM_reg[1]\(5),
      I4 => \do_reg[0]_0\(0),
      I5 => \RAM_reg[0]\(5),
      O => \do[5]_i_3_n_0\
    );
\do[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACFC0"
    )
        port map (
      I0 => \RAM_reg[0][7]_0\(6),
      I1 => \do[6]_i_2_n_0\,
      I2 => \do_reg[0]_0\(2),
      I3 => \do[6]_i_3_n_0\,
      I4 => \RAM_reg[7][0]_0\,
      O => \do[6]_i_1_n_0\
    );
\do[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \RAM_reg[7]\(6),
      I1 => \RAM_reg[6]\(6),
      I2 => \do_reg[0]_0\(1),
      I3 => \RAM_reg[5]\(6),
      I4 => \do_reg[0]_0\(0),
      I5 => \RAM_reg[4]\(6),
      O => \do[6]_i_2_n_0\
    );
\do[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \RAM_reg[3]\(6),
      I1 => \RAM_reg[2]\(6),
      I2 => \do_reg[0]_0\(1),
      I3 => \RAM_reg[1]\(6),
      I4 => \do_reg[0]_0\(0),
      I5 => \RAM_reg[0]\(6),
      O => \do[6]_i_3_n_0\
    );
\do[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACFC0"
    )
        port map (
      I0 => \RAM_reg[0][7]_0\(7),
      I1 => \do[7]_i_2_n_0\,
      I2 => \do_reg[0]_0\(2),
      I3 => \do[7]_i_3_n_0\,
      I4 => \RAM_reg[7][0]_0\,
      O => \do[7]_i_1_n_0\
    );
\do[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \RAM_reg[7]\(7),
      I1 => \RAM_reg[6]\(7),
      I2 => \do_reg[0]_0\(1),
      I3 => \RAM_reg[5]\(7),
      I4 => \do_reg[0]_0\(0),
      I5 => \RAM_reg[4]\(7),
      O => \do[7]_i_2_n_0\
    );
\do[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \RAM_reg[3]\(7),
      I1 => \RAM_reg[2]\(7),
      I2 => \do_reg[0]_0\(1),
      I3 => \RAM_reg[1]\(7),
      I4 => \do_reg[0]_0\(0),
      I5 => \RAM_reg[0]\(7),
      O => \do[7]_i_3_n_0\
    );
\do_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => \do[0]_i_1_n_0\,
      Q => \^q\(0),
      R => '0'
    );
\do_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => \do[1]_i_1_n_0\,
      Q => \^q\(1),
      R => '0'
    );
\do_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => \do[2]_i_1_n_0\,
      Q => \^q\(2),
      R => '0'
    );
\do_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => \do[3]_i_1_n_0\,
      Q => \^q\(3),
      R => '0'
    );
\do_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => \do[4]_i_1_n_0\,
      Q => \^q\(4),
      R => '0'
    );
\do_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => \do[5]_i_1_n_0\,
      Q => \^q\(5),
      R => '0'
    );
\do_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => \do[6]_i_1_n_0\,
      Q => \^q\(6),
      R => '0'
    );
\do_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => \do[7]_i_1_n_0\,
      Q => \^q\(7),
      R => '0'
    );
\multOp__0_carry__0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F880808088000000"
    )
        port map (
      I0 => \^q\(2),
      I1 => \multOp__0_carry__1_i_6\(2),
      I2 => \^q\(3),
      I3 => \multOp__0_carry__1_i_6\(3),
      I4 => \^q\(1),
      I5 => \multOp__0_carry__1_i_6\(1),
      O => \^do_reg[2]_0\
    );
\multOp__0_carry__0_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888800080008000"
    )
        port map (
      I0 => \^q\(4),
      I1 => \multOp__0_carry__1_i_6\(2),
      I2 => \^q\(3),
      I3 => \multOp__0_carry__1_i_6\(3),
      I4 => \^q\(5),
      I5 => \multOp__0_carry__1_i_6\(1),
      O => \^do_reg[4]_0\
    );
\multOp__0_carry__0_i_17\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^q\(2),
      I1 => \multOp__0_carry__1_i_6\(1),
      O => \do_reg[2]_1\
    );
\multOp__0_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F880"
    )
        port map (
      I0 => \^q\(5),
      I1 => \multOp__0_carry__1_i_6\(0),
      I2 => \multOp__0_carry__0\,
      I3 => \^do_reg[2]_0\,
      O => \do_reg[5]_0\(0)
    );
\multOp__0_carry__1_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F880"
    )
        port map (
      I0 => \^q\(7),
      I1 => \multOp__0_carry__1_i_6\(0),
      I2 => \multOp__0_carry__1\,
      I3 => \^do_reg[4]_0\,
      O => \do_reg[7]_0\(0)
    );
\multOp__0_carry__1_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^q\(5),
      I1 => \multOp__0_carry__1_i_6\(2),
      O => \do_reg[5]_1\
    );
\multOp__0_carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(1),
      I1 => \multOp__0_carry__1_i_6\(0),
      O => DI(0)
    );
\multOp__0_carry_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8777788878887888"
    )
        port map (
      I0 => \^q\(0),
      I1 => \multOp__0_carry__1_i_6\(2),
      I2 => \^q\(1),
      I3 => \multOp__0_carry__1_i_6\(1),
      I4 => \multOp__0_carry__1_i_6\(0),
      I5 => \^q\(2),
      O => S(1)
    );
\multOp__0_carry_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(0),
      I1 => \multOp__0_carry__1_i_6\(0),
      O => S(0)
    );
\multOp__0_carry_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^q\(3),
      I1 => \multOp__0_carry__1_i_6\(0),
      O => \do_reg[3]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mlab_rom is
  port (
    DI : out STD_LOGIC_VECTOR ( 1 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \do_reg[6]\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \rom_out_reg[1]_0\ : out STD_LOGIC;
    \rom_out_reg[1]_1\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \rom_out_reg[1]_2\ : out STD_LOGIC;
    q_reg : out STD_LOGIC_VECTOR ( 0 to 0 );
    S : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \do_reg[7]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \rom_out_reg[2]_0\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \multOp__0_carry__1_i_6_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \multOp__0_carry__1\ : in STD_LOGIC;
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    \sum_reg[11]\ : in STD_LOGIC;
    \multOp__0_carry\ : in STD_LOGIC;
    \multOp__0_carry__0\ : in STD_LOGIC;
    \multOp__0_carry__0_0\ : in STD_LOGIC;
    \multOp__0_carry__0_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \multOp__0_carry__1_0\ : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_ACLK : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mlab_rom;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mlab_rom is
  signal \^q\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^do_reg[6]\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \multOp__0_carry__0_i_10_n_0\ : STD_LOGIC;
  signal \multOp__0_carry__0_i_13_n_0\ : STD_LOGIC;
  signal \multOp__0_carry__0_i_14_n_0\ : STD_LOGIC;
  signal \multOp__0_carry__0_i_9_n_0\ : STD_LOGIC;
  signal \multOp__0_carry__1_i_10_n_0\ : STD_LOGIC;
  signal \multOp__0_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \multOp__0_carry__1_i_9_n_0\ : STD_LOGIC;
  signal \multOp__0_carry_i_8_n_0\ : STD_LOGIC;
  signal \^rom_out_reg[1]_0\ : STD_LOGIC;
  signal \^rom_out_reg[1]_1\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^rom_out_reg[1]_2\ : STD_LOGIC;
begin
  Q(3 downto 0) <= \^q\(3 downto 0);
  \do_reg[6]\(2 downto 0) <= \^do_reg[6]\(2 downto 0);
  \rom_out_reg[1]_0\ <= \^rom_out_reg[1]_0\;
  \rom_out_reg[1]_1\(1 downto 0) <= \^rom_out_reg[1]_1\(1 downto 0);
  \rom_out_reg[1]_2\ <= \^rom_out_reg[1]_2\;
\multOp__0_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F880"
    )
        port map (
      I0 => \multOp__0_carry__1_i_6_0\(6),
      I1 => \^q\(0),
      I2 => \multOp__0_carry__0_i_9_n_0\,
      I3 => \multOp__0_carry__0_i_10_n_0\,
      O => \^do_reg[6]\(2)
    );
\multOp__0_carry__0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F880808088000000"
    )
        port map (
      I0 => \^q\(2),
      I1 => \multOp__0_carry__1_i_6_0\(3),
      I2 => \multOp__0_carry__1_i_6_0\(2),
      I3 => \^q\(1),
      I4 => \multOp__0_carry__1_i_6_0\(4),
      I5 => \^q\(3),
      O => \multOp__0_carry__0_i_10_n_0\
    );
\multOp__0_carry__0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8777788878887888"
    )
        port map (
      I0 => \^q\(1),
      I1 => \multOp__0_carry__1_i_6_0\(4),
      I2 => \multOp__0_carry__1_i_6_0\(3),
      I3 => \^q\(2),
      I4 => \multOp__0_carry__1_i_6_0\(2),
      I5 => \^q\(3),
      O => \^rom_out_reg[1]_0\
    );
\multOp__0_carry__0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \^q\(0),
      I1 => \multOp__0_carry__1_i_6_0\(3),
      I2 => \^q\(2),
      I3 => \multOp__0_carry__1_i_6_0\(1),
      I4 => \multOp__0_carry__1_i_6_0\(0),
      I5 => \^q\(1),
      O => \multOp__0_carry__0_i_13_n_0\
    );
\multOp__0_carry__0_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8777788878887888"
    )
        port map (
      I0 => \^q\(1),
      I1 => \multOp__0_carry__1_i_6_0\(3),
      I2 => \^q\(3),
      I3 => \multOp__0_carry__1_i_6_0\(1),
      I4 => \multOp__0_carry__1_i_6_0\(2),
      I5 => \^q\(2),
      O => \multOp__0_carry__0_i_14_n_0\
    );
\multOp__0_carry__0_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8777788878887888"
    )
        port map (
      I0 => \^q\(1),
      I1 => \multOp__0_carry__1_i_6_0\(6),
      I2 => \multOp__0_carry__1_i_6_0\(5),
      I3 => \^q\(2),
      I4 => \multOp__0_carry__1_i_6_0\(4),
      I5 => \^q\(3),
      O => \^rom_out_reg[1]_2\
    );
\multOp__0_carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F0C"
    )
        port map (
      I0 => \^q\(0),
      I1 => \multOp__0_carry__1_i_6_0\(4),
      I2 => \multOp__0_carry__0_i_13_n_0\,
      I3 => \multOp__0_carry__0_i_14_n_0\,
      O => \^do_reg[6]\(1)
    );
\multOp__0_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6999"
    )
        port map (
      I0 => \multOp__0_carry__0_i_13_n_0\,
      I1 => \multOp__0_carry__0_i_14_n_0\,
      I2 => \multOp__0_carry__1_i_6_0\(4),
      I3 => \^q\(0),
      O => \^do_reg[6]\(0)
    );
\multOp__0_carry__0_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6A95956A"
    )
        port map (
      I0 => \^do_reg[6]\(2),
      I1 => \multOp__0_carry__1_i_6_0\(7),
      I2 => \^q\(0),
      I3 => \multOp__0_carry__1_0\,
      I4 => \^rom_out_reg[1]_2\,
      O => \do_reg[7]\(3)
    );
\multOp__0_carry__0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6A95956A"
    )
        port map (
      I0 => \multOp__0_carry__0_1\(0),
      I1 => \multOp__0_carry__1_i_6_0\(6),
      I2 => \^q\(0),
      I3 => \multOp__0_carry__0_i_10_n_0\,
      I4 => \multOp__0_carry__0_i_9_n_0\,
      O => \do_reg[7]\(2)
    );
\multOp__0_carry__0_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6A95956A"
    )
        port map (
      I0 => \^do_reg[6]\(1),
      I1 => \multOp__0_carry__1_i_6_0\(5),
      I2 => \^q\(0),
      I3 => \multOp__0_carry__0_0\,
      I4 => \^rom_out_reg[1]_0\,
      O => \do_reg[7]\(1)
    );
\multOp__0_carry__0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6A55AA6AAA6AAA6A"
    )
        port map (
      I0 => \^do_reg[6]\(0),
      I1 => \multOp__0_carry__1_i_6_0\(0),
      I2 => \^q\(3),
      I3 => \multOp__0_carry__0\,
      I4 => \^q\(2),
      I5 => \multOp__0_carry__1_i_6_0\(1),
      O => \do_reg[7]\(0)
    );
\multOp__0_carry__0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8777788878887888"
    )
        port map (
      I0 => \^q\(1),
      I1 => \multOp__0_carry__1_i_6_0\(5),
      I2 => \multOp__0_carry__1_i_6_0\(3),
      I3 => \^q\(3),
      I4 => \multOp__0_carry__1_i_6_0\(4),
      I5 => \^q\(2),
      O => \multOp__0_carry__0_i_9_n_0\
    );
\multOp__0_carry__1_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8A0C00080000000"
    )
        port map (
      I0 => \^q\(1),
      I1 => \multOp__0_carry__1_i_6_0\(5),
      I2 => \multOp__0_carry__1_i_6_0\(6),
      I3 => \^q\(3),
      I4 => \multOp__0_carry__1_i_6_0\(7),
      I5 => \^q\(2),
      O => \^rom_out_reg[1]_1\(1)
    );
\multOp__0_carry__1_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F880808088000000"
    )
        port map (
      I0 => \^q\(2),
      I1 => \multOp__0_carry__1_i_6_0\(5),
      I2 => \multOp__0_carry__1_i_6_0\(6),
      I3 => \^q\(3),
      I4 => \multOp__0_carry__1_i_6_0\(4),
      I5 => \^q\(1),
      O => \multOp__0_carry__1_i_10_n_0\
    );
\multOp__0_carry__1_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"80000000A888A000"
    )
        port map (
      I0 => \multOp__0_carry__1_i_7_n_0\,
      I1 => \^q\(1),
      I2 => \multOp__0_carry__1_i_6_0\(4),
      I3 => \^q\(3),
      I4 => \multOp__0_carry__1_i_6_0\(6),
      I5 => \multOp__0_carry__1\,
      O => \^rom_out_reg[1]_1\(0)
    );
\multOp__0_carry__1_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1777880080800000"
    )
        port map (
      I0 => \^q\(2),
      I1 => \multOp__0_carry__1_i_6_0\(6),
      I2 => \multOp__0_carry__1_i_6_0\(5),
      I3 => \^q\(1),
      I4 => \^q\(3),
      I5 => \multOp__0_carry__1_i_6_0\(7),
      O => \rom_out_reg[2]_0\(2)
    );
\multOp__0_carry__1_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6A959595956A6A6A"
    )
        port map (
      I0 => \^rom_out_reg[1]_1\(0),
      I1 => \^q\(2),
      I2 => \multOp__0_carry__1_i_6_0\(7),
      I3 => \^q\(3),
      I4 => \multOp__0_carry__1_i_6_0\(6),
      I5 => \multOp__0_carry__1_i_9_n_0\,
      O => \rom_out_reg[2]_0\(1)
    );
\multOp__0_carry__1_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E88817771777E888"
    )
        port map (
      I0 => \multOp__0_carry__1_0\,
      I1 => \^rom_out_reg[1]_2\,
      I2 => \^q\(0),
      I3 => \multOp__0_carry__1_i_6_0\(7),
      I4 => \multOp__0_carry__1_i_7_n_0\,
      I5 => \multOp__0_carry__1_i_10_n_0\,
      O => \rom_out_reg[2]_0\(0)
    );
\multOp__0_carry__1_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8777788878887888"
    )
        port map (
      I0 => \^q\(1),
      I1 => \multOp__0_carry__1_i_6_0\(7),
      I2 => \multOp__0_carry__1_i_6_0\(6),
      I3 => \^q\(2),
      I4 => \multOp__0_carry__1_i_6_0\(5),
      I5 => \^q\(3),
      O => \multOp__0_carry__1_i_7_n_0\
    );
\multOp__0_carry__1_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F880808088000000"
    )
        port map (
      I0 => \^q\(2),
      I1 => \multOp__0_carry__1_i_6_0\(6),
      I2 => \multOp__0_carry__1_i_6_0\(5),
      I3 => \^q\(1),
      I4 => \multOp__0_carry__1_i_6_0\(7),
      I5 => \^q\(3),
      O => \multOp__0_carry__1_i_9_n_0\
    );
\multOp__0_carry_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8777788878887888"
    )
        port map (
      I0 => \^q\(1),
      I1 => \multOp__0_carry__1_i_6_0\(2),
      I2 => \^q\(2),
      I3 => \multOp__0_carry__1_i_6_0\(1),
      I4 => \^q\(3),
      I5 => \multOp__0_carry__1_i_6_0\(0),
      O => DI(1)
    );
\multOp__0_carry_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7888"
    )
        port map (
      I0 => \^q\(1),
      I1 => \multOp__0_carry__1_i_6_0\(1),
      I2 => \^q\(2),
      I3 => \multOp__0_carry__1_i_6_0\(0),
      O => DI(0)
    );
\multOp__0_carry_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AC0653F953F9AC0"
    )
        port map (
      I0 => \^q\(3),
      I1 => \multOp__0_carry__1_i_6_0\(2),
      I2 => \^q\(1),
      I3 => \multOp__0_carry__1_i_6_0\(0),
      I4 => \multOp__0_carry_i_8_n_0\,
      I5 => \multOp__0_carry\,
      O => S(1)
    );
\multOp__0_carry_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7888"
    )
        port map (
      I0 => \^q\(0),
      I1 => \multOp__0_carry__1_i_6_0\(1),
      I2 => \^q\(1),
      I3 => \multOp__0_carry__1_i_6_0\(0),
      O => S(0)
    );
\multOp__0_carry_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^q\(2),
      I1 => \multOp__0_carry__1_i_6_0\(1),
      O => \multOp__0_carry_i_8_n_0\
    );
\rom_out_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => D(0),
      Q => \^q\(0),
      R => '0'
    );
\rom_out_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => D(1),
      Q => \^q\(1),
      R => '0'
    );
\rom_out_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => D(2),
      Q => \^q\(2),
      R => '0'
    );
\rom_out_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => D(3),
      Q => \^q\(3),
      R => '0'
    );
\sum[8]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => CO(0),
      I1 => \sum_reg[11]\,
      O => q_reg(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dff2 is
  port (
    valid_out_ip : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_ARESETN_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    q_reg : in STD_LOGIC;
    S_AXI_ACLK : in STD_LOGIC;
    rst : in STD_LOGIC;
    \axi_rdata_reg[0]\ : in STD_LOGIC;
    S_AXI_ARVALID : in STD_LOGIC;
    \axi_rdata_reg[0]_0\ : in STD_LOGIC;
    S_AXI_ARESETN : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dff2;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dff2 is
  signal delay3_n_0 : STD_LOGIC;
begin
delay3: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dff_0
     port map (
      S_AXI_ACLK => S_AXI_ACLK,
      q_reg_0 => delay3_n_0,
      q_reg_1 => q_reg,
      rst => rst
    );
delay4: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dff_1
     port map (
      E(0) => E(0),
      S_AXI_ACLK => S_AXI_ACLK,
      S_AXI_ARESETN => S_AXI_ARESETN,
      S_AXI_ARESETN_0(0) => S_AXI_ARESETN_0(0),
      S_AXI_ARVALID => S_AXI_ARVALID,
      \axi_rdata_reg[0]\ => \axi_rdata_reg[0]\,
      \axi_rdata_reg[0]_0\ => \axi_rdata_reg[0]_0\,
      q_reg_0 => delay3_n_0,
      rst => rst,
      valid_out_ip => valid_out_ip
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dff2_2 is
  port (
    q_reg : out STD_LOGIC;
    q_reg_0 : in STD_LOGIC;
    S_AXI_ACLK : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dff2_2 : entity is "dff2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dff2_2;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dff2_2 is
  signal d : STD_LOGIC;
begin
delay3: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dff_12
     port map (
      S_AXI_ACLK => S_AXI_ACLK,
      d => d,
      q_reg_0 => q_reg_0,
      rst => rst
    );
delay4: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dff_13
     port map (
      S_AXI_ACLK => S_AXI_ACLK,
      d => d,
      q_reg_0 => q_reg,
      rst => rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dff2_3 is
  port (
    q_reg : out STD_LOGIC;
    q_reg_0 : in STD_LOGIC;
    S_AXI_ACLK : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dff2_3 : entity is "dff2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dff2_3;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dff2_3 is
  signal delay3_n_0 : STD_LOGIC;
begin
delay3: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dff_10
     port map (
      S_AXI_ACLK => S_AXI_ACLK,
      q_reg_0 => delay3_n_0,
      q_reg_1 => q_reg_0,
      rst => rst
    );
delay4: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dff_11
     port map (
      S_AXI_ACLK => S_AXI_ACLK,
      q_reg_0 => q_reg,
      q_reg_1 => delay3_n_0,
      rst => rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dff2_4 is
  port (
    q_reg : out STD_LOGIC;
    q_reg_0 : in STD_LOGIC;
    S_AXI_ACLK : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dff2_4 : entity is "dff2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dff2_4;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dff2_4 is
  signal delay3_n_0 : STD_LOGIC;
begin
delay3: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dff_8
     port map (
      S_AXI_ACLK => S_AXI_ACLK,
      q_reg_0 => delay3_n_0,
      q_reg_1 => q_reg_0,
      rst => rst
    );
delay4: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dff_9
     port map (
      S_AXI_ACLK => S_AXI_ACLK,
      q_reg_0 => q_reg,
      q_reg_1 => delay3_n_0,
      rst => rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dff2_5 is
  port (
    q_reg : out STD_LOGIC;
    q_reg_0 : in STD_LOGIC;
    S_AXI_ACLK : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dff2_5 : entity is "dff2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dff2_5;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dff2_5 is
  signal delay3_n_0 : STD_LOGIC;
begin
delay3: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dff_6
     port map (
      S_AXI_ACLK => S_AXI_ACLK,
      q_reg_0 => delay3_n_0,
      q_reg_1 => q_reg_0,
      rst => rst
    );
delay4: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dff_7
     port map (
      S_AXI_ACLK => S_AXI_ACLK,
      q_reg_0 => q_reg,
      q_reg_1 => delay3_n_0,
      rst => rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Control_Unit is
  port (
    we_reg_0 : out STD_LOGIC;
    q_reg : out STD_LOGIC;
    mac_init : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 2 downto 0 );
    D : out STD_LOGIC_VECTOR ( 3 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_ACLK : in STD_LOGIC;
    rst : in STD_LOGIC;
    valid_in : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Control_Unit;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Control_Unit is
  signal \^q\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal calculate : STD_LOGIC;
  signal calculate_i_1_n_0 : STD_LOGIC;
  signal count_reg : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \count_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \count_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \count_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal eqOp : STD_LOGIC;
  signal flag : STD_LOGIC;
  signal flag_i_1_n_0 : STD_LOGIC;
  signal flag_i_2_n_0 : STD_LOGIC;
  signal valid_out_deff1_n_0 : STD_LOGIC;
  signal valid_out_deff2_n_0 : STD_LOGIC;
  signal valid_out_deff3_n_0 : STD_LOGIC;
  signal valid_out_temp : STD_LOGIC;
  signal valid_out_temp_reg_n_0 : STD_LOGIC;
  signal we_i_1_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count_reg[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \count_reg[2]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of flag_i_2 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \rom_out[0]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \rom_out[1]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \rom_out[2]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \rom_out[3]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of valid_out_temp_i_1 : label is "soft_lutpair0";
begin
  Q(2 downto 0) <= \^q\(2 downto 0);
calculate_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000002"
    )
        port map (
      I0 => valid_in,
      I1 => count_reg(2),
      I2 => count_reg(1),
      I3 => count_reg(0),
      I4 => rst,
      I5 => calculate,
      O => calculate_i_1_n_0
    );
calculate_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => calculate_i_1_n_0,
      Q => calculate,
      R => '0'
    );
\count_reg[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => flag,
      I1 => count_reg(0),
      O => \count_reg[0]_i_1_n_0\
    );
\count_reg[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => flag,
      I1 => count_reg(0),
      I2 => count_reg(1),
      O => \count_reg[1]_i_1_n_0\
    );
\count_reg[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7080"
    )
        port map (
      I0 => count_reg(1),
      I1 => count_reg(0),
      I2 => flag,
      I3 => count_reg(2),
      O => \count_reg[2]_i_1_n_0\
    );
\count_reg_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => rst,
      D => \count_reg[0]_i_1_n_0\,
      Q => count_reg(0)
    );
\count_reg_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => rst,
      D => \count_reg[1]_i_1_n_0\,
      Q => count_reg(1)
    );
\count_reg_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => rst,
      D => \count_reg[2]_i_1_n_0\,
      Q => count_reg(2)
    );
flag_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF7F0000"
    )
        port map (
      I0 => count_reg(0),
      I1 => count_reg(1),
      I2 => count_reg(2),
      I3 => rst,
      I4 => flag_i_2_n_0,
      O => flag_i_1_n_0
    );
flag_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF04"
    )
        port map (
      I0 => calculate,
      I1 => valid_in,
      I2 => rst,
      I3 => flag,
      O => flag_i_2_n_0
    );
flag_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => flag_i_1_n_0,
      Q => flag,
      R => '0'
    );
mac_init_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => count_reg(0),
      I1 => count_reg(1),
      I2 => count_reg(2),
      O => eqOp
    );
mac_init_reg: unisim.vcomponents.FDPE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => eqOp,
      PRE => rst,
      Q => mac_init
    );
\ram_addr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => count_reg(0),
      Q => \^q\(0),
      R => '0'
    );
\ram_addr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => count_reg(1),
      Q => \^q\(1),
      R => '0'
    );
\ram_addr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => count_reg(2),
      Q => \^q\(2),
      R => '0'
    );
\rom_out[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => D(0)
    );
\rom_out[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => D(1)
    );
\rom_out[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6C"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(2),
      I2 => \^q\(0),
      O => D(2)
    );
\rom_out[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(2),
      I2 => \^q\(0),
      O => D(3)
    );
valid_out_deff1: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dff2_2
     port map (
      S_AXI_ACLK => S_AXI_ACLK,
      q_reg => valid_out_deff1_n_0,
      q_reg_0 => valid_out_temp_reg_n_0,
      rst => rst
    );
valid_out_deff2: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dff2_3
     port map (
      S_AXI_ACLK => S_AXI_ACLK,
      q_reg => valid_out_deff2_n_0,
      q_reg_0 => valid_out_deff1_n_0,
      rst => rst
    );
valid_out_deff3: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dff2_4
     port map (
      S_AXI_ACLK => S_AXI_ACLK,
      q_reg => valid_out_deff3_n_0,
      q_reg_0 => valid_out_deff2_n_0,
      rst => rst
    );
valid_out_deff4: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dff2_5
     port map (
      S_AXI_ACLK => S_AXI_ACLK,
      q_reg => q_reg,
      q_reg_0 => valid_out_deff3_n_0,
      rst => rst
    );
valid_out_temp_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => count_reg(2),
      I1 => count_reg(1),
      I2 => count_reg(0),
      I3 => calculate,
      O => valid_out_temp
    );
valid_out_temp_reg: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => rst,
      D => valid_out_temp,
      Q => valid_out_temp_reg_n_0
    );
we_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => count_reg(2),
      I1 => count_reg(1),
      I2 => count_reg(0),
      I3 => valid_in,
      O => we_i_1_n_0
    );
we_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      D => we_i_1_n_0,
      Q => we_reg_0,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_FIR is
  port (
    valid_out_ip : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_ARESETN_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 18 downto 0 );
    S_AXI_ACLK : in STD_LOGIC;
    rst : in STD_LOGIC;
    valid_in : in STD_LOGIC;
    \axi_rdata_reg[0]\ : in STD_LOGIC;
    S_AXI_ARVALID : in STD_LOGIC;
    \axi_rdata_reg[0]_0\ : in STD_LOGIC;
    S_AXI_ARESETN : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_FIR;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_FIR is
  signal control_n_0 : STD_LOGIC;
  signal control_n_1 : STD_LOGIC;
  signal control_n_3 : STD_LOGIC;
  signal control_n_4 : STD_LOGIC;
  signal control_n_5 : STD_LOGIC;
  signal do : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal mac_init : STD_LOGIC;
  signal mac_init_reg_n_0 : STD_LOGIC;
  signal macc_n_0 : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal ram_n_0 : STD_LOGIC;
  signal ram_n_10 : STD_LOGIC;
  signal ram_n_11 : STD_LOGIC;
  signal ram_n_12 : STD_LOGIC;
  signal ram_n_13 : STD_LOGIC;
  signal ram_n_14 : STD_LOGIC;
  signal ram_n_15 : STD_LOGIC;
  signal ram_n_16 : STD_LOGIC;
  signal ram_n_17 : STD_LOGIC;
  signal ram_n_9 : STD_LOGIC;
  signal rdata : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal rom_n_0 : STD_LOGIC;
  signal rom_n_1 : STD_LOGIC;
  signal rom_n_10 : STD_LOGIC;
  signal rom_n_11 : STD_LOGIC;
  signal rom_n_12 : STD_LOGIC;
  signal rom_n_13 : STD_LOGIC;
  signal rom_n_14 : STD_LOGIC;
  signal rom_n_15 : STD_LOGIC;
  signal rom_n_16 : STD_LOGIC;
  signal rom_n_17 : STD_LOGIC;
  signal rom_n_18 : STD_LOGIC;
  signal rom_n_19 : STD_LOGIC;
  signal rom_n_20 : STD_LOGIC;
  signal rom_n_21 : STD_LOGIC;
  signal rom_n_22 : STD_LOGIC;
  signal rom_n_6 : STD_LOGIC;
  signal rom_n_7 : STD_LOGIC;
  signal rom_n_8 : STD_LOGIC;
  signal rom_n_9 : STD_LOGIC;
  signal rom_out : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal x_reg_n_0 : STD_LOGIC;
  signal x_reg_n_1 : STD_LOGIC;
  signal x_reg_n_2 : STD_LOGIC;
  signal x_reg_n_3 : STD_LOGIC;
  signal x_reg_n_4 : STD_LOGIC;
  signal x_reg_n_5 : STD_LOGIC;
  signal x_reg_n_6 : STD_LOGIC;
  signal x_reg_n_7 : STD_LOGIC;
begin
control: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Control_Unit
     port map (
      D(3 downto 0) => rdata(3 downto 0),
      E(0) => p_1_in,
      Q(2) => control_n_3,
      Q(1) => control_n_4,
      Q(0) => control_n_5,
      S_AXI_ACLK => S_AXI_ACLK,
      mac_init => mac_init,
      q_reg => control_n_1,
      rst => rst,
      valid_in => valid_in,
      we_reg_0 => control_n_0
    );
mac_init_reg: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dff
     port map (
      S_AXI_ACLK => S_AXI_ACLK,
      mac_init => mac_init,
      q_reg_0 => mac_init_reg_n_0,
      rst => rst
    );
macc: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MAC
     port map (
      CO(0) => macc_n_0,
      DI(2) => rom_n_0,
      DI(1) => rom_n_1,
      DI(0) => ram_n_17,
      E(0) => p_1_in,
      Q(18 downto 0) => Q(18 downto 0),
      S(3) => rom_n_14,
      S(2) => ram_n_15,
      S(1) => rom_n_15,
      S(0) => ram_n_16,
      S_AXI_ACLK => S_AXI_ACLK,
      rst => rst,
      \sum[4]_i_9_0\(3) => rom_n_6,
      \sum[4]_i_9_0\(2) => ram_n_0,
      \sum[4]_i_9_0\(1) => rom_n_7,
      \sum[4]_i_9_0\(0) => rom_n_8,
      \sum[4]_i_9_1\(3) => rom_n_16,
      \sum[4]_i_9_1\(2) => rom_n_17,
      \sum[4]_i_9_1\(1) => rom_n_18,
      \sum[4]_i_9_1\(0) => rom_n_19,
      \sum[8]_i_9_0\(2) => rom_n_10,
      \sum[8]_i_9_0\(1) => rom_n_11,
      \sum[8]_i_9_0\(0) => ram_n_12,
      \sum[8]_i_9_1\(2) => rom_n_20,
      \sum[8]_i_9_1\(1) => rom_n_21,
      \sum[8]_i_9_1\(0) => rom_n_22,
      \sum_reg[11]_0\(0) => rom_n_13,
      \sum_reg[3]_0\ => mac_init_reg_n_0
    );
ram: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mlab_ram
     port map (
      DI(0) => ram_n_17,
      E(0) => p_1_in,
      Q(7 downto 0) => do(7 downto 0),
      \RAM_reg[0][7]_0\(7) => x_reg_n_0,
      \RAM_reg[0][7]_0\(6) => x_reg_n_1,
      \RAM_reg[0][7]_0\(5) => x_reg_n_2,
      \RAM_reg[0][7]_0\(4) => x_reg_n_3,
      \RAM_reg[0][7]_0\(3) => x_reg_n_4,
      \RAM_reg[0][7]_0\(2) => x_reg_n_5,
      \RAM_reg[0][7]_0\(1) => x_reg_n_6,
      \RAM_reg[0][7]_0\(0) => x_reg_n_7,
      \RAM_reg[7][0]_0\ => control_n_0,
      S(1) => ram_n_15,
      S(0) => ram_n_16,
      S_AXI_ACLK => S_AXI_ACLK,
      \do_reg[0]_0\(2) => control_n_3,
      \do_reg[0]_0\(1) => control_n_4,
      \do_reg[0]_0\(0) => control_n_5,
      \do_reg[2]_0\ => ram_n_9,
      \do_reg[2]_1\ => ram_n_10,
      \do_reg[3]_0\ => ram_n_11,
      \do_reg[4]_0\ => ram_n_13,
      \do_reg[5]_0\(0) => ram_n_0,
      \do_reg[5]_1\ => ram_n_14,
      \do_reg[7]_0\(0) => ram_n_12,
      \multOp__0_carry__0\ => rom_n_9,
      \multOp__0_carry__1\ => rom_n_12,
      \multOp__0_carry__1_i_6\(3 downto 0) => rom_out(3 downto 0),
      rst => rst
    );
rom: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mlab_rom
     port map (
      CO(0) => macc_n_0,
      D(3 downto 0) => rdata(3 downto 0),
      DI(1) => rom_n_0,
      DI(0) => rom_n_1,
      Q(3 downto 0) => rom_out(3 downto 0),
      S(1) => rom_n_14,
      S(0) => rom_n_15,
      S_AXI_ACLK => S_AXI_ACLK,
      \do_reg[6]\(2) => rom_n_6,
      \do_reg[6]\(1) => rom_n_7,
      \do_reg[6]\(0) => rom_n_8,
      \do_reg[7]\(3) => rom_n_16,
      \do_reg[7]\(2) => rom_n_17,
      \do_reg[7]\(1) => rom_n_18,
      \do_reg[7]\(0) => rom_n_19,
      \multOp__0_carry\ => ram_n_11,
      \multOp__0_carry__0\ => ram_n_10,
      \multOp__0_carry__0_0\ => ram_n_9,
      \multOp__0_carry__0_1\(0) => ram_n_0,
      \multOp__0_carry__1\ => ram_n_14,
      \multOp__0_carry__1_0\ => ram_n_13,
      \multOp__0_carry__1_i_6_0\(7 downto 0) => do(7 downto 0),
      q_reg(0) => rom_n_13,
      \rom_out_reg[1]_0\ => rom_n_9,
      \rom_out_reg[1]_1\(1) => rom_n_10,
      \rom_out_reg[1]_1\(0) => rom_n_11,
      \rom_out_reg[1]_2\ => rom_n_12,
      \rom_out_reg[2]_0\(2) => rom_n_20,
      \rom_out_reg[2]_0\(1) => rom_n_21,
      \rom_out_reg[2]_0\(0) => rom_n_22,
      \sum_reg[11]\ => mac_init_reg_n_0
    );
valid_out_reg: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dff2
     port map (
      E(0) => E(0),
      S_AXI_ACLK => S_AXI_ACLK,
      S_AXI_ARESETN => S_AXI_ARESETN,
      S_AXI_ARESETN_0(0) => S_AXI_ARESETN_0(0),
      S_AXI_ARVALID => S_AXI_ARVALID,
      \axi_rdata_reg[0]\ => \axi_rdata_reg[0]\,
      \axi_rdata_reg[0]_0\ => \axi_rdata_reg[0]_0\,
      q_reg => control_n_1,
      rst => rst,
      valid_out_ip => valid_out_ip
    );
x_reg: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dff_big
     port map (
      D(7 downto 0) => D(7 downto 0),
      Q(7) => x_reg_n_0,
      Q(6) => x_reg_n_1,
      Q(5) => x_reg_n_2,
      Q(4) => x_reg_n_3,
      Q(3) => x_reg_n_4,
      Q(2) => x_reg_n_5,
      Q(1) => x_reg_n_6,
      Q(0) => x_reg_n_7,
      S_AXI_ACLK => S_AXI_ACLK,
      rst => rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_FIR_IP_v1_0_S00_AXI is
  port (
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    axi_rvalid_reg_0 : out STD_LOGIC;
    S_AXI_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_BVALID : out STD_LOGIC;
    S_AXI_AWADDR : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_WVALID : in STD_LOGIC;
    S_AXI_AWVALID : in STD_LOGIC;
    S_AXI_ACLK : in STD_LOGIC;
    S_AXI_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_ARADDR : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_ARVALID : in STD_LOGIC;
    S_AXI_ARESETN : in STD_LOGIC;
    S_AXI_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_BREADY : in STD_LOGIC;
    S_AXI_RREADY : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_FIR_IP_v1_0_S00_AXI;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_FIR_IP_v1_0_S00_AXI is
  signal FIR_bb_n_2 : STD_LOGIC;
  signal \^s_axi_arready\ : STD_LOGIC;
  signal \^s_axi_awready\ : STD_LOGIC;
  signal \^s_axi_bvalid\ : STD_LOGIC;
  signal \^s_axi_wready\ : STD_LOGIC;
  signal axi_araddr : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \axi_araddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[3]_i_1_n_0\ : STD_LOGIC;
  signal axi_arready0 : STD_LOGIC;
  signal axi_awaddr : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \axi_awaddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr[3]_i_1_n_0\ : STD_LOGIC;
  signal axi_awready0 : STD_LOGIC;
  signal axi_awready_i_1_n_0 : STD_LOGIC;
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal axi_rdata : STD_LOGIC;
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal \^axi_rvalid_reg_0\ : STD_LOGIC;
  signal axi_wready0 : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 31 downto 7 );
  signal p_2_in : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal reg_data_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal rst : STD_LOGIC;
  signal \slv_reg0[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[8]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[8]_i_2_n_0\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[0]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[10]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[11]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[12]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[13]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[14]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[15]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[16]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[17]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[18]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[19]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[1]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[20]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[21]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[22]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[23]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[24]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[25]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[26]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[27]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[28]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[29]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[2]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[30]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[31]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[3]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[4]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[5]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[6]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[7]\ : STD_LOGIC;
  signal slv_reg1 : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal \slv_reg1[19]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg2 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg2[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg3 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg_wren__2\ : STD_LOGIC;
  signal valid_in : STD_LOGIC;
  signal valid_out_ip : STD_LOGIC;
  signal y : STD_LOGIC_VECTOR ( 18 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of axi_arready_i_1 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \axi_awaddr[3]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of axi_awready_i_2 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of axi_rvalid_i_1 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of axi_wready_i_1 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \slv_reg0[31]_i_2\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \slv_reg0[8]_i_2\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \slv_reg2[0]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \slv_reg2[10]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \slv_reg2[11]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \slv_reg2[12]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \slv_reg2[13]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \slv_reg2[14]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \slv_reg2[15]_i_2\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \slv_reg2[16]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \slv_reg2[17]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \slv_reg2[18]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \slv_reg2[19]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \slv_reg2[1]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \slv_reg2[20]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \slv_reg2[21]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \slv_reg2[22]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \slv_reg2[23]_i_2\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \slv_reg2[24]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \slv_reg2[25]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \slv_reg2[26]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \slv_reg2[27]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \slv_reg2[28]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \slv_reg2[29]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \slv_reg2[2]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \slv_reg2[30]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \slv_reg2[31]_i_2\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \slv_reg2[3]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \slv_reg2[4]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \slv_reg2[5]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \slv_reg2[6]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \slv_reg2[8]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \slv_reg2[9]_i_1\ : label is "soft_lutpair12";
begin
  S_AXI_ARREADY <= \^s_axi_arready\;
  S_AXI_AWREADY <= \^s_axi_awready\;
  S_AXI_BVALID <= \^s_axi_bvalid\;
  S_AXI_WREADY <= \^s_axi_wready\;
  axi_rvalid_reg_0 <= \^axi_rvalid_reg_0\;
FIR_bb: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_FIR
     port map (
      D(7) => \slv_reg0_reg_n_0_[7]\,
      D(6) => \slv_reg0_reg_n_0_[6]\,
      D(5) => \slv_reg0_reg_n_0_[5]\,
      D(4) => \slv_reg0_reg_n_0_[4]\,
      D(3) => \slv_reg0_reg_n_0_[3]\,
      D(2) => \slv_reg0_reg_n_0_[2]\,
      D(1) => \slv_reg0_reg_n_0_[1]\,
      D(0) => \slv_reg0_reg_n_0_[0]\,
      E(0) => axi_rdata,
      Q(18 downto 0) => y(18 downto 0),
      S_AXI_ACLK => S_AXI_ACLK,
      S_AXI_ARESETN => S_AXI_ARESETN,
      S_AXI_ARESETN_0(0) => FIR_bb_n_2,
      S_AXI_ARVALID => S_AXI_ARVALID,
      \axi_rdata_reg[0]\ => \^axi_rvalid_reg_0\,
      \axi_rdata_reg[0]_0\ => \^s_axi_arready\,
      rst => rst,
      valid_in => valid_in,
      valid_out_ip => valid_out_ip
    );
\axi_araddr[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => S_AXI_ARADDR(0),
      I1 => S_AXI_ARVALID,
      I2 => \^s_axi_arready\,
      I3 => axi_araddr(2),
      O => \axi_araddr[2]_i_1_n_0\
    );
\axi_araddr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => S_AXI_ARADDR(1),
      I1 => S_AXI_ARVALID,
      I2 => \^s_axi_arready\,
      I3 => axi_araddr(3),
      O => \axi_araddr[3]_i_1_n_0\
    );
\axi_araddr_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \axi_araddr[2]_i_1_n_0\,
      Q => axi_araddr(2),
      S => axi_awready_i_1_n_0
    );
\axi_araddr_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \axi_araddr[3]_i_1_n_0\,
      Q => axi_araddr(3),
      S => axi_awready_i_1_n_0
    );
axi_arready_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => S_AXI_ARVALID,
      I1 => \^s_axi_arready\,
      O => axi_arready0
    );
axi_arready_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => axi_arready0,
      Q => \^s_axi_arready\,
      R => axi_awready_i_1_n_0
    );
\axi_awaddr[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => S_AXI_AWADDR(0),
      I1 => S_AXI_WVALID,
      I2 => S_AXI_AWVALID,
      I3 => \^s_axi_awready\,
      I4 => axi_awaddr(2),
      O => \axi_awaddr[2]_i_1_n_0\
    );
\axi_awaddr[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => S_AXI_AWADDR(1),
      I1 => S_AXI_WVALID,
      I2 => S_AXI_AWVALID,
      I3 => \^s_axi_awready\,
      I4 => axi_awaddr(3),
      O => \axi_awaddr[3]_i_1_n_0\
    );
\axi_awaddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \axi_awaddr[2]_i_1_n_0\,
      Q => axi_awaddr(2),
      R => axi_awready_i_1_n_0
    );
\axi_awaddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \axi_awaddr[3]_i_1_n_0\,
      Q => axi_awaddr(3),
      R => axi_awready_i_1_n_0
    );
axi_awready_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => S_AXI_ARESETN,
      O => axi_awready_i_1_n_0
    );
axi_awready_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => S_AXI_WVALID,
      I1 => S_AXI_AWVALID,
      I2 => \^s_axi_awready\,
      O => axi_awready0
    );
axi_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => axi_awready0,
      Q => \^s_axi_awready\,
      R => axi_awready_i_1_n_0
    );
axi_bvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFF80008000"
    )
        port map (
      I0 => S_AXI_AWVALID,
      I1 => \^s_axi_awready\,
      I2 => \^s_axi_wready\,
      I3 => S_AXI_WVALID,
      I4 => S_AXI_BREADY,
      I5 => \^s_axi_bvalid\,
      O => axi_bvalid_i_1_n_0
    );
axi_bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => axi_bvalid_i_1_n_0,
      Q => \^s_axi_bvalid\,
      R => axi_awready_i_1_n_0
    );
\axi_rdata[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => slv_reg2(0),
      I1 => slv_reg3(0),
      I2 => \slv_reg0_reg_n_0_[0]\,
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg1(0),
      O => reg_data_out(0)
    );
\axi_rdata[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => slv_reg2(10),
      I1 => slv_reg3(10),
      I2 => \slv_reg0_reg_n_0_[10]\,
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg1(10),
      O => reg_data_out(10)
    );
\axi_rdata[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => slv_reg2(11),
      I1 => slv_reg3(11),
      I2 => \slv_reg0_reg_n_0_[11]\,
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg1(11),
      O => reg_data_out(11)
    );
\axi_rdata[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => slv_reg2(12),
      I1 => slv_reg3(12),
      I2 => \slv_reg0_reg_n_0_[12]\,
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg1(12),
      O => reg_data_out(12)
    );
\axi_rdata[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => slv_reg2(13),
      I1 => slv_reg3(13),
      I2 => \slv_reg0_reg_n_0_[13]\,
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg1(13),
      O => reg_data_out(13)
    );
\axi_rdata[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => slv_reg2(14),
      I1 => slv_reg3(14),
      I2 => \slv_reg0_reg_n_0_[14]\,
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg1(14),
      O => reg_data_out(14)
    );
\axi_rdata[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => slv_reg2(15),
      I1 => slv_reg3(15),
      I2 => \slv_reg0_reg_n_0_[15]\,
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg1(15),
      O => reg_data_out(15)
    );
\axi_rdata[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => slv_reg2(16),
      I1 => slv_reg3(16),
      I2 => \slv_reg0_reg_n_0_[16]\,
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg1(16),
      O => reg_data_out(16)
    );
\axi_rdata[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => slv_reg2(17),
      I1 => slv_reg3(17),
      I2 => \slv_reg0_reg_n_0_[17]\,
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg1(17),
      O => reg_data_out(17)
    );
\axi_rdata[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => slv_reg2(18),
      I1 => slv_reg3(18),
      I2 => \slv_reg0_reg_n_0_[18]\,
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg1(18),
      O => reg_data_out(18)
    );
\axi_rdata[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => slv_reg2(19),
      I1 => slv_reg3(19),
      I2 => \slv_reg0_reg_n_0_[19]\,
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg1(19),
      O => reg_data_out(19)
    );
\axi_rdata[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => slv_reg2(1),
      I1 => slv_reg3(1),
      I2 => \slv_reg0_reg_n_0_[1]\,
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg1(1),
      O => reg_data_out(1)
    );
\axi_rdata[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FC0A0C0A"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[20]\,
      I1 => slv_reg2(20),
      I2 => axi_araddr(2),
      I3 => axi_araddr(3),
      I4 => slv_reg3(20),
      O => reg_data_out(20)
    );
\axi_rdata[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FC0A0C0A"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[21]\,
      I1 => slv_reg2(21),
      I2 => axi_araddr(2),
      I3 => axi_araddr(3),
      I4 => slv_reg3(21),
      O => reg_data_out(21)
    );
\axi_rdata[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FC0A0C0A"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[22]\,
      I1 => slv_reg2(22),
      I2 => axi_araddr(2),
      I3 => axi_araddr(3),
      I4 => slv_reg3(22),
      O => reg_data_out(22)
    );
\axi_rdata[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FC0A0C0A"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[23]\,
      I1 => slv_reg2(23),
      I2 => axi_araddr(2),
      I3 => axi_araddr(3),
      I4 => slv_reg3(23),
      O => reg_data_out(23)
    );
\axi_rdata[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FC0A0C0A"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[24]\,
      I1 => slv_reg2(24),
      I2 => axi_araddr(2),
      I3 => axi_araddr(3),
      I4 => slv_reg3(24),
      O => reg_data_out(24)
    );
\axi_rdata[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FC0A0C0A"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[25]\,
      I1 => slv_reg2(25),
      I2 => axi_araddr(2),
      I3 => axi_araddr(3),
      I4 => slv_reg3(25),
      O => reg_data_out(25)
    );
\axi_rdata[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FC0A0C0A"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[26]\,
      I1 => slv_reg2(26),
      I2 => axi_araddr(2),
      I3 => axi_araddr(3),
      I4 => slv_reg3(26),
      O => reg_data_out(26)
    );
\axi_rdata[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FC0A0C0A"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[27]\,
      I1 => slv_reg2(27),
      I2 => axi_araddr(2),
      I3 => axi_araddr(3),
      I4 => slv_reg3(27),
      O => reg_data_out(27)
    );
\axi_rdata[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FC0A0C0A"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[28]\,
      I1 => slv_reg2(28),
      I2 => axi_araddr(2),
      I3 => axi_araddr(3),
      I4 => slv_reg3(28),
      O => reg_data_out(28)
    );
\axi_rdata[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FC0A0C0A"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[29]\,
      I1 => slv_reg2(29),
      I2 => axi_araddr(2),
      I3 => axi_araddr(3),
      I4 => slv_reg3(29),
      O => reg_data_out(29)
    );
\axi_rdata[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => slv_reg2(2),
      I1 => slv_reg3(2),
      I2 => \slv_reg0_reg_n_0_[2]\,
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg1(2),
      O => reg_data_out(2)
    );
\axi_rdata[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FC0A0C0A"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[30]\,
      I1 => slv_reg2(30),
      I2 => axi_araddr(2),
      I3 => axi_araddr(3),
      I4 => slv_reg3(30),
      O => reg_data_out(30)
    );
\axi_rdata[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FC0A0C0A"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[31]\,
      I1 => slv_reg2(31),
      I2 => axi_araddr(2),
      I3 => axi_araddr(3),
      I4 => slv_reg3(31),
      O => reg_data_out(31)
    );
\axi_rdata[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => slv_reg2(3),
      I1 => slv_reg3(3),
      I2 => \slv_reg0_reg_n_0_[3]\,
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg1(3),
      O => reg_data_out(3)
    );
\axi_rdata[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => slv_reg2(4),
      I1 => slv_reg3(4),
      I2 => \slv_reg0_reg_n_0_[4]\,
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg1(4),
      O => reg_data_out(4)
    );
\axi_rdata[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => slv_reg2(5),
      I1 => slv_reg3(5),
      I2 => \slv_reg0_reg_n_0_[5]\,
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg1(5),
      O => reg_data_out(5)
    );
\axi_rdata[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => slv_reg2(6),
      I1 => slv_reg3(6),
      I2 => \slv_reg0_reg_n_0_[6]\,
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg1(6),
      O => reg_data_out(6)
    );
\axi_rdata[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => slv_reg2(7),
      I1 => slv_reg3(7),
      I2 => \slv_reg0_reg_n_0_[7]\,
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg1(7),
      O => reg_data_out(7)
    );
\axi_rdata[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => slv_reg2(8),
      I1 => slv_reg3(8),
      I2 => valid_in,
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg1(8),
      O => reg_data_out(8)
    );
\axi_rdata[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => slv_reg2(9),
      I1 => slv_reg3(9),
      I2 => rst,
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg1(9),
      O => reg_data_out(9)
    );
\axi_rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_rdata,
      D => reg_data_out(0),
      Q => S_AXI_RDATA(0),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_rdata,
      D => reg_data_out(10),
      Q => S_AXI_RDATA(10),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_rdata,
      D => reg_data_out(11),
      Q => S_AXI_RDATA(11),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_rdata,
      D => reg_data_out(12),
      Q => S_AXI_RDATA(12),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_rdata,
      D => reg_data_out(13),
      Q => S_AXI_RDATA(13),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_rdata,
      D => reg_data_out(14),
      Q => S_AXI_RDATA(14),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_rdata,
      D => reg_data_out(15),
      Q => S_AXI_RDATA(15),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_rdata,
      D => reg_data_out(16),
      Q => S_AXI_RDATA(16),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_rdata,
      D => reg_data_out(17),
      Q => S_AXI_RDATA(17),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_rdata,
      D => reg_data_out(18),
      Q => S_AXI_RDATA(18),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_rdata,
      D => reg_data_out(19),
      Q => S_AXI_RDATA(19),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_rdata,
      D => reg_data_out(1),
      Q => S_AXI_RDATA(1),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_rdata,
      D => reg_data_out(20),
      Q => S_AXI_RDATA(20),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_rdata,
      D => reg_data_out(21),
      Q => S_AXI_RDATA(21),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_rdata,
      D => reg_data_out(22),
      Q => S_AXI_RDATA(22),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_rdata,
      D => reg_data_out(23),
      Q => S_AXI_RDATA(23),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_rdata,
      D => reg_data_out(24),
      Q => S_AXI_RDATA(24),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_rdata,
      D => reg_data_out(25),
      Q => S_AXI_RDATA(25),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_rdata,
      D => reg_data_out(26),
      Q => S_AXI_RDATA(26),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_rdata,
      D => reg_data_out(27),
      Q => S_AXI_RDATA(27),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_rdata,
      D => reg_data_out(28),
      Q => S_AXI_RDATA(28),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_rdata,
      D => reg_data_out(29),
      Q => S_AXI_RDATA(29),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_rdata,
      D => reg_data_out(2),
      Q => S_AXI_RDATA(2),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_rdata,
      D => reg_data_out(30),
      Q => S_AXI_RDATA(30),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_rdata,
      D => reg_data_out(31),
      Q => S_AXI_RDATA(31),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_rdata,
      D => reg_data_out(3),
      Q => S_AXI_RDATA(3),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_rdata,
      D => reg_data_out(4),
      Q => S_AXI_RDATA(4),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_rdata,
      D => reg_data_out(5),
      Q => S_AXI_RDATA(5),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_rdata,
      D => reg_data_out(6),
      Q => S_AXI_RDATA(6),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_rdata,
      D => reg_data_out(7),
      Q => S_AXI_RDATA(7),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_rdata,
      D => reg_data_out(8),
      Q => S_AXI_RDATA(8),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_rdata,
      D => reg_data_out(9),
      Q => S_AXI_RDATA(9),
      R => axi_awready_i_1_n_0
    );
axi_rvalid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08F8"
    )
        port map (
      I0 => S_AXI_ARVALID,
      I1 => \^s_axi_arready\,
      I2 => \^axi_rvalid_reg_0\,
      I3 => S_AXI_RREADY,
      O => axi_rvalid_i_1_n_0
    );
axi_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => axi_rvalid_i_1_n_0,
      Q => \^axi_rvalid_reg_0\,
      R => axi_awready_i_1_n_0
    );
axi_wready_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => S_AXI_WVALID,
      I1 => S_AXI_AWVALID,
      I2 => \^s_axi_wready\,
      O => axi_wready0
    );
axi_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => axi_wready0,
      Q => \^s_axi_wready\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => axi_awaddr(3),
      I2 => axi_awaddr(2),
      I3 => S_AXI_WSTRB(1),
      O => \slv_reg0[15]_i_1_n_0\
    );
\slv_reg0[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => axi_awaddr(3),
      I2 => axi_awaddr(2),
      I3 => S_AXI_WSTRB(2),
      O => \slv_reg0[23]_i_1_n_0\
    );
\slv_reg0[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => axi_awaddr(3),
      I2 => axi_awaddr(2),
      I3 => S_AXI_WSTRB(3),
      O => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg0[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => S_AXI_AWVALID,
      I1 => \^s_axi_awready\,
      I2 => \^s_axi_wready\,
      I3 => S_AXI_WVALID,
      O => \slv_reg_wren__2\
    );
\slv_reg0[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => axi_awaddr(3),
      I2 => axi_awaddr(2),
      I3 => S_AXI_WSTRB(0),
      O => \slv_reg0[7]_i_1_n_0\
    );
\slv_reg0[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EA2A000000000000"
    )
        port map (
      I0 => valid_in,
      I1 => \slv_reg0[8]_i_2_n_0\,
      I2 => S_AXI_WSTRB(1),
      I3 => S_AXI_WDATA(8),
      I4 => S_AXI_ARESETN,
      I5 => \slv_reg_wren__2\,
      O => \slv_reg0[8]_i_1_n_0\
    );
\slv_reg0[8]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => axi_awaddr(2),
      O => \slv_reg0[8]_i_2_n_0\
    );
\slv_reg0_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => S_AXI_WDATA(0),
      Q => \slv_reg0_reg_n_0_[0]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => S_AXI_WDATA(10),
      Q => \slv_reg0_reg_n_0_[10]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => S_AXI_WDATA(11),
      Q => \slv_reg0_reg_n_0_[11]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => S_AXI_WDATA(12),
      Q => \slv_reg0_reg_n_0_[12]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => S_AXI_WDATA(13),
      Q => \slv_reg0_reg_n_0_[13]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => S_AXI_WDATA(14),
      Q => \slv_reg0_reg_n_0_[14]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => S_AXI_WDATA(15),
      Q => \slv_reg0_reg_n_0_[15]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => S_AXI_WDATA(16),
      Q => \slv_reg0_reg_n_0_[16]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => S_AXI_WDATA(17),
      Q => \slv_reg0_reg_n_0_[17]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => S_AXI_WDATA(18),
      Q => \slv_reg0_reg_n_0_[18]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => S_AXI_WDATA(19),
      Q => \slv_reg0_reg_n_0_[19]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => S_AXI_WDATA(1),
      Q => \slv_reg0_reg_n_0_[1]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => S_AXI_WDATA(20),
      Q => \slv_reg0_reg_n_0_[20]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => S_AXI_WDATA(21),
      Q => \slv_reg0_reg_n_0_[21]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => S_AXI_WDATA(22),
      Q => \slv_reg0_reg_n_0_[22]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => S_AXI_WDATA(23),
      Q => \slv_reg0_reg_n_0_[23]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => S_AXI_WDATA(24),
      Q => \slv_reg0_reg_n_0_[24]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => S_AXI_WDATA(25),
      Q => \slv_reg0_reg_n_0_[25]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => S_AXI_WDATA(26),
      Q => \slv_reg0_reg_n_0_[26]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => S_AXI_WDATA(27),
      Q => \slv_reg0_reg_n_0_[27]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => S_AXI_WDATA(28),
      Q => \slv_reg0_reg_n_0_[28]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => S_AXI_WDATA(29),
      Q => \slv_reg0_reg_n_0_[29]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => S_AXI_WDATA(2),
      Q => \slv_reg0_reg_n_0_[2]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => S_AXI_WDATA(30),
      Q => \slv_reg0_reg_n_0_[30]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => S_AXI_WDATA(31),
      Q => \slv_reg0_reg_n_0_[31]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => S_AXI_WDATA(3),
      Q => \slv_reg0_reg_n_0_[3]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => S_AXI_WDATA(4),
      Q => \slv_reg0_reg_n_0_[4]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => S_AXI_WDATA(5),
      Q => \slv_reg0_reg_n_0_[5]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => S_AXI_WDATA(6),
      Q => \slv_reg0_reg_n_0_[6]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => S_AXI_WDATA(7),
      Q => \slv_reg0_reg_n_0_[7]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \slv_reg0[8]_i_1_n_0\,
      Q => valid_in,
      R => '0'
    );
\slv_reg0_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => S_AXI_WDATA(9),
      Q => rst,
      R => axi_awready_i_1_n_0
    );
\slv_reg1[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF7FAAAA0000"
    )
        port map (
      I0 => S_AXI_ARESETN,
      I1 => \^s_axi_arready\,
      I2 => S_AXI_ARVALID,
      I3 => \^axi_rvalid_reg_0\,
      I4 => valid_out_ip,
      I5 => slv_reg1(19),
      O => \slv_reg1[19]_i_1_n_0\
    );
\slv_reg1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => FIR_bb_n_2,
      D => y(0),
      Q => slv_reg1(0),
      R => '0'
    );
\slv_reg1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => FIR_bb_n_2,
      D => y(10),
      Q => slv_reg1(10),
      R => '0'
    );
\slv_reg1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => FIR_bb_n_2,
      D => y(11),
      Q => slv_reg1(11),
      R => '0'
    );
\slv_reg1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => FIR_bb_n_2,
      D => y(12),
      Q => slv_reg1(12),
      R => '0'
    );
\slv_reg1_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => FIR_bb_n_2,
      D => y(13),
      Q => slv_reg1(13),
      R => '0'
    );
\slv_reg1_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => FIR_bb_n_2,
      D => y(14),
      Q => slv_reg1(14),
      R => '0'
    );
\slv_reg1_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => FIR_bb_n_2,
      D => y(15),
      Q => slv_reg1(15),
      R => '0'
    );
\slv_reg1_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => FIR_bb_n_2,
      D => y(16),
      Q => slv_reg1(16),
      R => '0'
    );
\slv_reg1_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => FIR_bb_n_2,
      D => y(17),
      Q => slv_reg1(17),
      R => '0'
    );
\slv_reg1_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => FIR_bb_n_2,
      D => y(18),
      Q => slv_reg1(18),
      R => '0'
    );
\slv_reg1_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \slv_reg1[19]_i_1_n_0\,
      Q => slv_reg1(19),
      R => '0'
    );
\slv_reg1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => FIR_bb_n_2,
      D => y(1),
      Q => slv_reg1(1),
      R => '0'
    );
\slv_reg1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => FIR_bb_n_2,
      D => y(2),
      Q => slv_reg1(2),
      R => '0'
    );
\slv_reg1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => FIR_bb_n_2,
      D => y(3),
      Q => slv_reg1(3),
      R => '0'
    );
\slv_reg1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => FIR_bb_n_2,
      D => y(4),
      Q => slv_reg1(4),
      R => '0'
    );
\slv_reg1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => FIR_bb_n_2,
      D => y(5),
      Q => slv_reg1(5),
      R => '0'
    );
\slv_reg1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => FIR_bb_n_2,
      D => y(6),
      Q => slv_reg1(6),
      R => '0'
    );
\slv_reg1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => FIR_bb_n_2,
      D => y(7),
      Q => slv_reg1(7),
      R => '0'
    );
\slv_reg1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => FIR_bb_n_2,
      D => y(8),
      Q => slv_reg1(8),
      R => '0'
    );
\slv_reg1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => FIR_bb_n_2,
      D => y(9),
      Q => slv_reg1(9),
      R => '0'
    );
\slv_reg2[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => S_AXI_WDATA(0),
      O => p_2_in(0)
    );
\slv_reg2[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => S_AXI_WDATA(10),
      O => p_2_in(10)
    );
\slv_reg2[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => S_AXI_WDATA(11),
      O => p_2_in(11)
    );
\slv_reg2[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => S_AXI_WDATA(12),
      O => p_2_in(12)
    );
\slv_reg2[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => S_AXI_WDATA(13),
      O => p_2_in(13)
    );
\slv_reg2[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => S_AXI_WDATA(14),
      O => p_2_in(14)
    );
\slv_reg2[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0A80"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => S_AXI_WSTRB(1),
      I2 => axi_awaddr(3),
      I3 => axi_awaddr(2),
      O => \slv_reg2[15]_i_1_n_0\
    );
\slv_reg2[15]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => S_AXI_WDATA(15),
      O => p_2_in(15)
    );
\slv_reg2[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => S_AXI_WDATA(16),
      O => p_2_in(16)
    );
\slv_reg2[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => S_AXI_WDATA(17),
      O => p_2_in(17)
    );
\slv_reg2[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => S_AXI_WDATA(18),
      O => p_2_in(18)
    );
\slv_reg2[19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => S_AXI_WDATA(19),
      O => p_2_in(19)
    );
\slv_reg2[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => S_AXI_WDATA(1),
      O => p_2_in(1)
    );
\slv_reg2[20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => S_AXI_WDATA(20),
      O => p_2_in(20)
    );
\slv_reg2[21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => S_AXI_WDATA(21),
      O => p_2_in(21)
    );
\slv_reg2[22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => S_AXI_WDATA(22),
      O => p_2_in(22)
    );
\slv_reg2[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0A80"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => S_AXI_WSTRB(2),
      I2 => axi_awaddr(3),
      I3 => axi_awaddr(2),
      O => \slv_reg2[23]_i_1_n_0\
    );
\slv_reg2[23]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => S_AXI_WDATA(23),
      O => p_2_in(23)
    );
\slv_reg2[24]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => S_AXI_WDATA(24),
      O => p_2_in(24)
    );
\slv_reg2[25]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => S_AXI_WDATA(25),
      O => p_2_in(25)
    );
\slv_reg2[26]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => S_AXI_WDATA(26),
      O => p_2_in(26)
    );
\slv_reg2[27]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => S_AXI_WDATA(27),
      O => p_2_in(27)
    );
\slv_reg2[28]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => S_AXI_WDATA(28),
      O => p_2_in(28)
    );
\slv_reg2[29]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => S_AXI_WDATA(29),
      O => p_2_in(29)
    );
\slv_reg2[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => S_AXI_WDATA(2),
      O => p_2_in(2)
    );
\slv_reg2[30]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => S_AXI_WDATA(30),
      O => p_2_in(30)
    );
\slv_reg2[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0A80"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => S_AXI_WSTRB(3),
      I2 => axi_awaddr(3),
      I3 => axi_awaddr(2),
      O => \slv_reg2[31]_i_1_n_0\
    );
\slv_reg2[31]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => S_AXI_WDATA(31),
      O => p_2_in(31)
    );
\slv_reg2[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => S_AXI_WDATA(3),
      O => p_2_in(3)
    );
\slv_reg2[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => S_AXI_WDATA(4),
      O => p_2_in(4)
    );
\slv_reg2[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => S_AXI_WDATA(5),
      O => p_2_in(5)
    );
\slv_reg2[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => S_AXI_WDATA(6),
      O => p_2_in(6)
    );
\slv_reg2[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0A80"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => S_AXI_WSTRB(0),
      I2 => axi_awaddr(3),
      I3 => axi_awaddr(2),
      O => \slv_reg2[7]_i_1_n_0\
    );
\slv_reg2[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => S_AXI_WDATA(7),
      O => p_2_in(7)
    );
\slv_reg2[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => S_AXI_WDATA(8),
      O => p_2_in(8)
    );
\slv_reg2[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => S_AXI_WDATA(9),
      O => p_2_in(9)
    );
\slv_reg2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => p_2_in(0),
      Q => slv_reg2(0),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => p_2_in(10),
      Q => slv_reg2(10),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => p_2_in(11),
      Q => slv_reg2(11),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => p_2_in(12),
      Q => slv_reg2(12),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => p_2_in(13),
      Q => slv_reg2(13),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => p_2_in(14),
      Q => slv_reg2(14),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => p_2_in(15),
      Q => slv_reg2(15),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => p_2_in(16),
      Q => slv_reg2(16),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => p_2_in(17),
      Q => slv_reg2(17),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => p_2_in(18),
      Q => slv_reg2(18),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => p_2_in(19),
      Q => slv_reg2(19),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => p_2_in(1),
      Q => slv_reg2(1),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => p_2_in(20),
      Q => slv_reg2(20),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => p_2_in(21),
      Q => slv_reg2(21),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => p_2_in(22),
      Q => slv_reg2(22),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => p_2_in(23),
      Q => slv_reg2(23),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => p_2_in(24),
      Q => slv_reg2(24),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => p_2_in(25),
      Q => slv_reg2(25),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => p_2_in(26),
      Q => slv_reg2(26),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => p_2_in(27),
      Q => slv_reg2(27),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => p_2_in(28),
      Q => slv_reg2(28),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => p_2_in(29),
      Q => slv_reg2(29),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => p_2_in(2),
      Q => slv_reg2(2),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => p_2_in(30),
      Q => slv_reg2(30),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => p_2_in(31),
      Q => slv_reg2(31),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => p_2_in(3),
      Q => slv_reg2(3),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => p_2_in(4),
      Q => slv_reg2(4),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => p_2_in(5),
      Q => slv_reg2(5),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => p_2_in(6),
      Q => slv_reg2(6),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => p_2_in(7),
      Q => slv_reg2(7),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => p_2_in(8),
      Q => slv_reg2(8),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => p_2_in(9),
      Q => slv_reg2(9),
      R => axi_awready_i_1_n_0
    );
\slv_reg3[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => S_AXI_WSTRB(1),
      I2 => axi_awaddr(2),
      I3 => axi_awaddr(3),
      O => p_1_in(15)
    );
\slv_reg3[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => S_AXI_WSTRB(2),
      I2 => axi_awaddr(2),
      I3 => axi_awaddr(3),
      O => p_1_in(23)
    );
\slv_reg3[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => S_AXI_WSTRB(3),
      I2 => axi_awaddr(2),
      I3 => axi_awaddr(3),
      O => p_1_in(31)
    );
\slv_reg3[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => S_AXI_WSTRB(0),
      I2 => axi_awaddr(2),
      I3 => axi_awaddr(3),
      O => p_1_in(7)
    );
\slv_reg3_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => p_1_in(7),
      D => S_AXI_WDATA(0),
      Q => slv_reg3(0),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => p_1_in(15),
      D => S_AXI_WDATA(10),
      Q => slv_reg3(10),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => p_1_in(15),
      D => S_AXI_WDATA(11),
      Q => slv_reg3(11),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => p_1_in(15),
      D => S_AXI_WDATA(12),
      Q => slv_reg3(12),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => p_1_in(15),
      D => S_AXI_WDATA(13),
      Q => slv_reg3(13),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => p_1_in(15),
      D => S_AXI_WDATA(14),
      Q => slv_reg3(14),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => p_1_in(15),
      D => S_AXI_WDATA(15),
      Q => slv_reg3(15),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => p_1_in(23),
      D => S_AXI_WDATA(16),
      Q => slv_reg3(16),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => p_1_in(23),
      D => S_AXI_WDATA(17),
      Q => slv_reg3(17),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => p_1_in(23),
      D => S_AXI_WDATA(18),
      Q => slv_reg3(18),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => p_1_in(23),
      D => S_AXI_WDATA(19),
      Q => slv_reg3(19),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => p_1_in(7),
      D => S_AXI_WDATA(1),
      Q => slv_reg3(1),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => p_1_in(23),
      D => S_AXI_WDATA(20),
      Q => slv_reg3(20),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => p_1_in(23),
      D => S_AXI_WDATA(21),
      Q => slv_reg3(21),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => p_1_in(23),
      D => S_AXI_WDATA(22),
      Q => slv_reg3(22),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => p_1_in(23),
      D => S_AXI_WDATA(23),
      Q => slv_reg3(23),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => p_1_in(31),
      D => S_AXI_WDATA(24),
      Q => slv_reg3(24),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => p_1_in(31),
      D => S_AXI_WDATA(25),
      Q => slv_reg3(25),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => p_1_in(31),
      D => S_AXI_WDATA(26),
      Q => slv_reg3(26),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => p_1_in(31),
      D => S_AXI_WDATA(27),
      Q => slv_reg3(27),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => p_1_in(31),
      D => S_AXI_WDATA(28),
      Q => slv_reg3(28),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => p_1_in(31),
      D => S_AXI_WDATA(29),
      Q => slv_reg3(29),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => p_1_in(7),
      D => S_AXI_WDATA(2),
      Q => slv_reg3(2),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => p_1_in(31),
      D => S_AXI_WDATA(30),
      Q => slv_reg3(30),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => p_1_in(31),
      D => S_AXI_WDATA(31),
      Q => slv_reg3(31),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => p_1_in(7),
      D => S_AXI_WDATA(3),
      Q => slv_reg3(3),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => p_1_in(7),
      D => S_AXI_WDATA(4),
      Q => slv_reg3(4),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => p_1_in(7),
      D => S_AXI_WDATA(5),
      Q => slv_reg3(5),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => p_1_in(7),
      D => S_AXI_WDATA(6),
      Q => slv_reg3(6),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => p_1_in(7),
      D => S_AXI_WDATA(7),
      Q => slv_reg3(7),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => p_1_in(15),
      D => S_AXI_WDATA(8),
      Q => slv_reg3(8),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => p_1_in(15),
      D => S_AXI_WDATA(9),
      Q => slv_reg3(9),
      R => axi_awready_i_1_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    S_AXI_ACLK : in STD_LOGIC;
    S_AXI_ARESETN : in STD_LOGIC;
    S_AXI_AWADDR : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_AWPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_AWVALID : in STD_LOGIC;
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_WVALID : in STD_LOGIC;
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_BVALID : out STD_LOGIC;
    S_AXI_BREADY : in STD_LOGIC;
    S_AXI_ARADDR : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_ARPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_ARVALID : in STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    S_AXI_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_RVALID : out STD_LOGIC;
    S_AXI_RREADY : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "FIR_design_FIR_IP_v1_0_S00_AXI_0_0,FIR_IP_v1_0_S00_AXI,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "package_project";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "FIR_IP_v1_0_S00_AXI,Vivado 2018.3";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const0>\ : STD_LOGIC;
  attribute x_interface_info : string;
  attribute x_interface_info of S_AXI_ACLK : signal is "xilinx.com:signal:clock:1.0 S_AXI_ACLK CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of S_AXI_ACLK : signal is "XIL_INTERFACENAME S_AXI_ACLK, ASSOCIATED_BUSIF S_AXI, ASSOCIATED_RESET S_AXI_ARESETN, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN FIR_design_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute x_interface_info of S_AXI_ARESETN : signal is "xilinx.com:signal:reset:1.0 S_AXI_ARESETN RST";
  attribute x_interface_parameter of S_AXI_ARESETN : signal is "XIL_INTERFACENAME S_AXI_ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of S_AXI_ARREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARREADY";
  attribute x_interface_info of S_AXI_ARVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARVALID";
  attribute x_interface_info of S_AXI_AWREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWREADY";
  attribute x_interface_info of S_AXI_AWVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWVALID";
  attribute x_interface_info of S_AXI_BREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI BREADY";
  attribute x_interface_info of S_AXI_BVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXI BVALID";
  attribute x_interface_info of S_AXI_RREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI RREADY";
  attribute x_interface_info of S_AXI_RVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXI RVALID";
  attribute x_interface_info of S_AXI_WREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI WREADY";
  attribute x_interface_info of S_AXI_WVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXI WVALID";
  attribute x_interface_info of S_AXI_ARADDR : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARADDR";
  attribute x_interface_info of S_AXI_ARPROT : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARPROT";
  attribute x_interface_info of S_AXI_AWADDR : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWADDR";
  attribute x_interface_parameter of S_AXI_AWADDR : signal is "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN FIR_design_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 4, NUM_WRITE_THREADS 4, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute x_interface_info of S_AXI_AWPROT : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWPROT";
  attribute x_interface_info of S_AXI_BRESP : signal is "xilinx.com:interface:aximm:1.0 S_AXI BRESP";
  attribute x_interface_info of S_AXI_RDATA : signal is "xilinx.com:interface:aximm:1.0 S_AXI RDATA";
  attribute x_interface_info of S_AXI_RRESP : signal is "xilinx.com:interface:aximm:1.0 S_AXI RRESP";
  attribute x_interface_info of S_AXI_WDATA : signal is "xilinx.com:interface:aximm:1.0 S_AXI WDATA";
  attribute x_interface_info of S_AXI_WSTRB : signal is "xilinx.com:interface:aximm:1.0 S_AXI WSTRB";
begin
  S_AXI_BRESP(1) <= \<const0>\;
  S_AXI_BRESP(0) <= \<const0>\;
  S_AXI_RRESP(1) <= \<const0>\;
  S_AXI_RRESP(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_FIR_IP_v1_0_S00_AXI
     port map (
      S_AXI_ACLK => S_AXI_ACLK,
      S_AXI_ARADDR(1 downto 0) => S_AXI_ARADDR(3 downto 2),
      S_AXI_ARESETN => S_AXI_ARESETN,
      S_AXI_ARREADY => S_AXI_ARREADY,
      S_AXI_ARVALID => S_AXI_ARVALID,
      S_AXI_AWADDR(1 downto 0) => S_AXI_AWADDR(3 downto 2),
      S_AXI_AWREADY => S_AXI_AWREADY,
      S_AXI_AWVALID => S_AXI_AWVALID,
      S_AXI_BREADY => S_AXI_BREADY,
      S_AXI_BVALID => S_AXI_BVALID,
      S_AXI_RDATA(31 downto 0) => S_AXI_RDATA(31 downto 0),
      S_AXI_RREADY => S_AXI_RREADY,
      S_AXI_WDATA(31 downto 0) => S_AXI_WDATA(31 downto 0),
      S_AXI_WREADY => S_AXI_WREADY,
      S_AXI_WSTRB(3 downto 0) => S_AXI_WSTRB(3 downto 0),
      S_AXI_WVALID => S_AXI_WVALID,
      axi_rvalid_reg_0 => S_AXI_RVALID
    );
end STRUCTURE;
