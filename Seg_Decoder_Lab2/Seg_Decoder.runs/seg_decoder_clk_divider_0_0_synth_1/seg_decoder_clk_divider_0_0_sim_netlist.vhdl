-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Sat May 22 13:21:47 2021
-- Host        : DW-245 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ seg_decoder_clk_divider_0_0_sim_netlist.vhdl
-- Design      : seg_decoder_clk_divider_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clk_divider is
  port (
    clkout : out STD_LOGIC;
    clkin : in STD_LOGIC;
    reset : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clk_divider;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clk_divider is
  signal \^clkout\ : STD_LOGIC;
  signal clkout_i_1_n_0 : STD_LOGIC;
  signal clkout_i_2_n_0 : STD_LOGIC;
  signal clkout_i_3_n_0 : STD_LOGIC;
  signal clkout_i_4_n_0 : STD_LOGIC;
  signal clkout_i_5_n_0 : STD_LOGIC;
  signal clkout_i_6_n_0 : STD_LOGIC;
  signal clkout_i_7_n_0 : STD_LOGIC;
  signal clkout_i_8_n_0 : STD_LOGIC;
  signal count : STD_LOGIC_VECTOR ( 27 downto 0 );
  signal \count0_carry__0_n_0\ : STD_LOGIC;
  signal \count0_carry__0_n_1\ : STD_LOGIC;
  signal \count0_carry__0_n_2\ : STD_LOGIC;
  signal \count0_carry__0_n_3\ : STD_LOGIC;
  signal \count0_carry__1_n_0\ : STD_LOGIC;
  signal \count0_carry__1_n_1\ : STD_LOGIC;
  signal \count0_carry__1_n_2\ : STD_LOGIC;
  signal \count0_carry__1_n_3\ : STD_LOGIC;
  signal \count0_carry__2_n_0\ : STD_LOGIC;
  signal \count0_carry__2_n_1\ : STD_LOGIC;
  signal \count0_carry__2_n_2\ : STD_LOGIC;
  signal \count0_carry__2_n_3\ : STD_LOGIC;
  signal \count0_carry__3_n_0\ : STD_LOGIC;
  signal \count0_carry__3_n_1\ : STD_LOGIC;
  signal \count0_carry__3_n_2\ : STD_LOGIC;
  signal \count0_carry__3_n_3\ : STD_LOGIC;
  signal \count0_carry__4_n_0\ : STD_LOGIC;
  signal \count0_carry__4_n_1\ : STD_LOGIC;
  signal \count0_carry__4_n_2\ : STD_LOGIC;
  signal \count0_carry__4_n_3\ : STD_LOGIC;
  signal \count0_carry__5_n_2\ : STD_LOGIC;
  signal \count0_carry__5_n_3\ : STD_LOGIC;
  signal count0_carry_n_0 : STD_LOGIC;
  signal count0_carry_n_1 : STD_LOGIC;
  signal count0_carry_n_2 : STD_LOGIC;
  signal count0_carry_n_3 : STD_LOGIC;
  signal count_0 : STD_LOGIC_VECTOR ( 27 downto 0 );
  signal data0 : STD_LOGIC_VECTOR ( 27 downto 1 );
  signal \NLW_count0_carry__5_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_count0_carry__5_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of clkout_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \count[0]_i_1\ : label is "soft_lutpair0";
begin
  clkout <= \^clkout\;
clkout_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0001"
    )
        port map (
      I0 => count(0),
      I1 => clkout_i_2_n_0,
      I2 => clkout_i_3_n_0,
      I3 => clkout_i_4_n_0,
      I4 => \^clkout\,
      O => clkout_i_1_n_0
    );
clkout_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => count(16),
      I1 => count(17),
      I2 => count(14),
      I3 => count(15),
      I4 => clkout_i_5_n_0,
      O => clkout_i_2_n_0
    );
clkout_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFF7"
    )
        port map (
      I0 => count(8),
      I1 => count(9),
      I2 => count(6),
      I3 => count(7),
      I4 => clkout_i_6_n_0,
      O => clkout_i_3_n_0
    );
clkout_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => count(27),
      I1 => count(26),
      I2 => count(1),
      I3 => clkout_i_7_n_0,
      I4 => clkout_i_8_n_0,
      O => clkout_i_4_n_0
    );
clkout_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => count(19),
      I1 => count(18),
      I2 => count(21),
      I3 => count(20),
      O => clkout_i_5_n_0
    );
clkout_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => count(10),
      I1 => count(11),
      I2 => count(13),
      I3 => count(12),
      O => clkout_i_6_n_0
    );
clkout_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => count(23),
      I1 => count(22),
      I2 => count(25),
      I3 => count(24),
      O => clkout_i_7_n_0
    );
clkout_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => count(3),
      I1 => count(2),
      I2 => count(4),
      I3 => count(5),
      O => clkout_i_8_n_0
    );
clkout_reg: unisim.vcomponents.FDCE
     port map (
      C => clkin,
      CE => '1',
      CLR => reset,
      D => clkout_i_1_n_0,
      Q => \^clkout\
    );
count0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => count0_carry_n_0,
      CO(2) => count0_carry_n_1,
      CO(1) => count0_carry_n_2,
      CO(0) => count0_carry_n_3,
      CYINIT => count(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(4 downto 1),
      S(3 downto 0) => count(4 downto 1)
    );
\count0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => count0_carry_n_0,
      CO(3) => \count0_carry__0_n_0\,
      CO(2) => \count0_carry__0_n_1\,
      CO(1) => \count0_carry__0_n_2\,
      CO(0) => \count0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(8 downto 5),
      S(3 downto 0) => count(8 downto 5)
    );
\count0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count0_carry__0_n_0\,
      CO(3) => \count0_carry__1_n_0\,
      CO(2) => \count0_carry__1_n_1\,
      CO(1) => \count0_carry__1_n_2\,
      CO(0) => \count0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(12 downto 9),
      S(3 downto 0) => count(12 downto 9)
    );
\count0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \count0_carry__1_n_0\,
      CO(3) => \count0_carry__2_n_0\,
      CO(2) => \count0_carry__2_n_1\,
      CO(1) => \count0_carry__2_n_2\,
      CO(0) => \count0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(16 downto 13),
      S(3 downto 0) => count(16 downto 13)
    );
\count0_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \count0_carry__2_n_0\,
      CO(3) => \count0_carry__3_n_0\,
      CO(2) => \count0_carry__3_n_1\,
      CO(1) => \count0_carry__3_n_2\,
      CO(0) => \count0_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(20 downto 17),
      S(3 downto 0) => count(20 downto 17)
    );
\count0_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \count0_carry__3_n_0\,
      CO(3) => \count0_carry__4_n_0\,
      CO(2) => \count0_carry__4_n_1\,
      CO(1) => \count0_carry__4_n_2\,
      CO(0) => \count0_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(24 downto 21),
      S(3 downto 0) => count(24 downto 21)
    );
\count0_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \count0_carry__4_n_0\,
      CO(3 downto 2) => \NLW_count0_carry__5_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \count0_carry__5_n_2\,
      CO(0) => \count0_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_count0_carry__5_O_UNCONNECTED\(3),
      O(2 downto 0) => data0(27 downto 25),
      S(3) => '0',
      S(2 downto 0) => count(27 downto 25)
    );
\count[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00FE"
    )
        port map (
      I0 => clkout_i_4_n_0,
      I1 => clkout_i_3_n_0,
      I2 => clkout_i_2_n_0,
      I3 => count(0),
      O => count_0(0)
    );
\count[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => count(0),
      I1 => clkout_i_2_n_0,
      I2 => clkout_i_3_n_0,
      I3 => clkout_i_4_n_0,
      I4 => data0(10),
      O => count_0(10)
    );
\count[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => count(0),
      I1 => clkout_i_2_n_0,
      I2 => clkout_i_3_n_0,
      I3 => clkout_i_4_n_0,
      I4 => data0(11),
      O => count_0(11)
    );
\count[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => count(0),
      I1 => clkout_i_2_n_0,
      I2 => clkout_i_3_n_0,
      I3 => clkout_i_4_n_0,
      I4 => data0(12),
      O => count_0(12)
    );
\count[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => count(0),
      I1 => clkout_i_2_n_0,
      I2 => clkout_i_3_n_0,
      I3 => clkout_i_4_n_0,
      I4 => data0(13),
      O => count_0(13)
    );
\count[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => count(0),
      I1 => clkout_i_2_n_0,
      I2 => clkout_i_3_n_0,
      I3 => clkout_i_4_n_0,
      I4 => data0(14),
      O => count_0(14)
    );
\count[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => count(0),
      I1 => clkout_i_2_n_0,
      I2 => clkout_i_3_n_0,
      I3 => clkout_i_4_n_0,
      I4 => data0(15),
      O => count_0(15)
    );
\count[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => count(0),
      I1 => clkout_i_2_n_0,
      I2 => clkout_i_3_n_0,
      I3 => clkout_i_4_n_0,
      I4 => data0(16),
      O => count_0(16)
    );
\count[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => count(0),
      I1 => clkout_i_2_n_0,
      I2 => clkout_i_3_n_0,
      I3 => clkout_i_4_n_0,
      I4 => data0(17),
      O => count_0(17)
    );
\count[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => count(0),
      I1 => clkout_i_2_n_0,
      I2 => clkout_i_3_n_0,
      I3 => clkout_i_4_n_0,
      I4 => data0(18),
      O => count_0(18)
    );
\count[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => count(0),
      I1 => clkout_i_2_n_0,
      I2 => clkout_i_3_n_0,
      I3 => clkout_i_4_n_0,
      I4 => data0(19),
      O => count_0(19)
    );
\count[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => count(0),
      I1 => clkout_i_2_n_0,
      I2 => clkout_i_3_n_0,
      I3 => clkout_i_4_n_0,
      I4 => data0(1),
      O => count_0(1)
    );
\count[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => count(0),
      I1 => clkout_i_2_n_0,
      I2 => clkout_i_3_n_0,
      I3 => clkout_i_4_n_0,
      I4 => data0(20),
      O => count_0(20)
    );
\count[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => count(0),
      I1 => clkout_i_2_n_0,
      I2 => clkout_i_3_n_0,
      I3 => clkout_i_4_n_0,
      I4 => data0(21),
      O => count_0(21)
    );
\count[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => count(0),
      I1 => clkout_i_2_n_0,
      I2 => clkout_i_3_n_0,
      I3 => clkout_i_4_n_0,
      I4 => data0(22),
      O => count_0(22)
    );
\count[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => count(0),
      I1 => clkout_i_2_n_0,
      I2 => clkout_i_3_n_0,
      I3 => clkout_i_4_n_0,
      I4 => data0(23),
      O => count_0(23)
    );
\count[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => count(0),
      I1 => clkout_i_2_n_0,
      I2 => clkout_i_3_n_0,
      I3 => clkout_i_4_n_0,
      I4 => data0(24),
      O => count_0(24)
    );
\count[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => count(0),
      I1 => clkout_i_2_n_0,
      I2 => clkout_i_3_n_0,
      I3 => clkout_i_4_n_0,
      I4 => data0(25),
      O => count_0(25)
    );
\count[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => count(0),
      I1 => clkout_i_2_n_0,
      I2 => clkout_i_3_n_0,
      I3 => clkout_i_4_n_0,
      I4 => data0(26),
      O => count_0(26)
    );
\count[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => count(0),
      I1 => clkout_i_2_n_0,
      I2 => clkout_i_3_n_0,
      I3 => clkout_i_4_n_0,
      I4 => data0(27),
      O => count_0(27)
    );
\count[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => count(0),
      I1 => clkout_i_2_n_0,
      I2 => clkout_i_3_n_0,
      I3 => clkout_i_4_n_0,
      I4 => data0(2),
      O => count_0(2)
    );
\count[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => count(0),
      I1 => clkout_i_2_n_0,
      I2 => clkout_i_3_n_0,
      I3 => clkout_i_4_n_0,
      I4 => data0(3),
      O => count_0(3)
    );
\count[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => count(0),
      I1 => clkout_i_2_n_0,
      I2 => clkout_i_3_n_0,
      I3 => clkout_i_4_n_0,
      I4 => data0(4),
      O => count_0(4)
    );
\count[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => count(0),
      I1 => clkout_i_2_n_0,
      I2 => clkout_i_3_n_0,
      I3 => clkout_i_4_n_0,
      I4 => data0(5),
      O => count_0(5)
    );
\count[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => count(0),
      I1 => clkout_i_2_n_0,
      I2 => clkout_i_3_n_0,
      I3 => clkout_i_4_n_0,
      I4 => data0(6),
      O => count_0(6)
    );
\count[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => count(0),
      I1 => clkout_i_2_n_0,
      I2 => clkout_i_3_n_0,
      I3 => clkout_i_4_n_0,
      I4 => data0(7),
      O => count_0(7)
    );
\count[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => count(0),
      I1 => clkout_i_2_n_0,
      I2 => clkout_i_3_n_0,
      I3 => clkout_i_4_n_0,
      I4 => data0(8),
      O => count_0(8)
    );
\count[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => count(0),
      I1 => clkout_i_2_n_0,
      I2 => clkout_i_3_n_0,
      I3 => clkout_i_4_n_0,
      I4 => data0(9),
      O => count_0(9)
    );
\count_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clkin,
      CE => '1',
      CLR => reset,
      D => count_0(0),
      Q => count(0)
    );
\count_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clkin,
      CE => '1',
      CLR => reset,
      D => count_0(10),
      Q => count(10)
    );
\count_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clkin,
      CE => '1',
      CLR => reset,
      D => count_0(11),
      Q => count(11)
    );
\count_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clkin,
      CE => '1',
      CLR => reset,
      D => count_0(12),
      Q => count(12)
    );
\count_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clkin,
      CE => '1',
      CLR => reset,
      D => count_0(13),
      Q => count(13)
    );
\count_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clkin,
      CE => '1',
      CLR => reset,
      D => count_0(14),
      Q => count(14)
    );
\count_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clkin,
      CE => '1',
      CLR => reset,
      D => count_0(15),
      Q => count(15)
    );
\count_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clkin,
      CE => '1',
      CLR => reset,
      D => count_0(16),
      Q => count(16)
    );
\count_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clkin,
      CE => '1',
      CLR => reset,
      D => count_0(17),
      Q => count(17)
    );
\count_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clkin,
      CE => '1',
      CLR => reset,
      D => count_0(18),
      Q => count(18)
    );
\count_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clkin,
      CE => '1',
      CLR => reset,
      D => count_0(19),
      Q => count(19)
    );
\count_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clkin,
      CE => '1',
      CLR => reset,
      D => count_0(1),
      Q => count(1)
    );
\count_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => clkin,
      CE => '1',
      CLR => reset,
      D => count_0(20),
      Q => count(20)
    );
\count_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => clkin,
      CE => '1',
      CLR => reset,
      D => count_0(21),
      Q => count(21)
    );
\count_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => clkin,
      CE => '1',
      CLR => reset,
      D => count_0(22),
      Q => count(22)
    );
\count_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => clkin,
      CE => '1',
      CLR => reset,
      D => count_0(23),
      Q => count(23)
    );
\count_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => clkin,
      CE => '1',
      CLR => reset,
      D => count_0(24),
      Q => count(24)
    );
\count_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => clkin,
      CE => '1',
      CLR => reset,
      D => count_0(25),
      Q => count(25)
    );
\count_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => clkin,
      CE => '1',
      CLR => reset,
      D => count_0(26),
      Q => count(26)
    );
\count_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => clkin,
      CE => '1',
      CLR => reset,
      D => count_0(27),
      Q => count(27)
    );
\count_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clkin,
      CE => '1',
      CLR => reset,
      D => count_0(2),
      Q => count(2)
    );
\count_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clkin,
      CE => '1',
      CLR => reset,
      D => count_0(3),
      Q => count(3)
    );
\count_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clkin,
      CE => '1',
      CLR => reset,
      D => count_0(4),
      Q => count(4)
    );
\count_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clkin,
      CE => '1',
      CLR => reset,
      D => count_0(5),
      Q => count(5)
    );
\count_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clkin,
      CE => '1',
      CLR => reset,
      D => count_0(6),
      Q => count(6)
    );
\count_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clkin,
      CE => '1',
      CLR => reset,
      D => count_0(7),
      Q => count(7)
    );
\count_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clkin,
      CE => '1',
      CLR => reset,
      D => count_0(8),
      Q => count(8)
    );
\count_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clkin,
      CE => '1',
      CLR => reset,
      D => count_0(9),
      Q => count(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    clkin : in STD_LOGIC;
    reset : in STD_LOGIC;
    clkout : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "seg_decoder_clk_divider_0_0,clk_divider,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "clk_divider,Vivado 2019.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clkin : signal is "xilinx.com:signal:clock:1.0 clkin CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clkin : signal is "XIL_INTERFACENAME clkin, ASSOCIATED_RESET reset, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN seg_decoder_clkin, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of reset : signal is "xilinx.com:signal:reset:1.0 reset RST";
  attribute X_INTERFACE_PARAMETER of reset : signal is "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clk_divider
     port map (
      clkin => clkin,
      clkout => clkout,
      reset => reset
    );
end STRUCTURE;
