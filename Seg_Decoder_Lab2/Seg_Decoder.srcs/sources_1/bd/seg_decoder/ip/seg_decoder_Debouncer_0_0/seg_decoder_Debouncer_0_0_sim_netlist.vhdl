-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Sat May 22 13:19:26 2021
-- Host        : DW-245 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               C:/vivado_workspace/Seg_Decoder_Lab2/Seg_Decoder.srcs/sources_1/bd/seg_decoder/ip/seg_decoder_Debouncer_0_0/seg_decoder_Debouncer_0_0_sim_netlist.vhdl
-- Design      : seg_decoder_Debouncer_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity seg_decoder_Debouncer_0_0_Debouncer is
  port (
    btn_out : out STD_LOGIC;
    reset : in STD_LOGIC;
    btn_in : in STD_LOGIC;
    clkin : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of seg_decoder_Debouncer_0_0_Debouncer : entity is "Debouncer";
end seg_decoder_Debouncer_0_0_Debouncer;

architecture STRUCTURE of seg_decoder_Debouncer_0_0_Debouncer is
  signal \^btn_out\ : STD_LOGIC;
  signal \count[0]_i_2_n_0\ : STD_LOGIC;
  signal count_reg : STD_LOGIC_VECTOR ( 20 downto 0 );
  signal \count_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \count_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \count_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \count_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \count_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \count_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \count_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \count_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \count_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \count_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \count_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \count_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \count_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \count_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \count_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \count_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \count_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \count_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \count_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \count_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \count_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \count_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \count_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \count_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \count_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \count_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \count_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \count_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \count_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \count_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \count_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \count_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \count_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal state_i_1_n_0 : STD_LOGIC;
  signal state_reg_i_2_n_1 : STD_LOGIC;
  signal state_reg_i_2_n_2 : STD_LOGIC;
  signal state_reg_i_2_n_3 : STD_LOGIC;
  signal state_reg_i_3_n_0 : STD_LOGIC;
  signal state_reg_i_3_n_1 : STD_LOGIC;
  signal state_reg_i_3_n_2 : STD_LOGIC;
  signal state_reg_i_3_n_3 : STD_LOGIC;
  signal state_reg_i_4_n_0 : STD_LOGIC;
  signal state_reg_i_4_n_1 : STD_LOGIC;
  signal state_reg_i_4_n_2 : STD_LOGIC;
  signal state_reg_i_4_n_3 : STD_LOGIC;
  signal state_reg_i_5_n_0 : STD_LOGIC;
  signal state_reg_i_5_n_1 : STD_LOGIC;
  signal state_reg_i_5_n_2 : STD_LOGIC;
  signal state_reg_i_5_n_3 : STD_LOGIC;
  signal state_reg_i_6_n_0 : STD_LOGIC;
  signal state_reg_i_6_n_1 : STD_LOGIC;
  signal state_reg_i_6_n_2 : STD_LOGIC;
  signal state_reg_i_6_n_3 : STD_LOGIC;
  signal \NLW_count_reg[20]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_count_reg[20]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_state_reg_i_2_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_state_reg_i_2_O_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_state_reg_i_3_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_state_reg_i_4_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_state_reg_i_5_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_state_reg_i_6_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
  btn_out <= \^btn_out\;
\count[0]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_reg(0),
      O => \count[0]_i_2_n_0\
    );
\count_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clkin,
      CE => btn_in,
      D => \count_reg[0]_i_1_n_7\,
      Q => count_reg(0),
      R => reset
    );
\count_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \count_reg[0]_i_1_n_0\,
      CO(2) => \count_reg[0]_i_1_n_1\,
      CO(1) => \count_reg[0]_i_1_n_2\,
      CO(0) => \count_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \count_reg[0]_i_1_n_4\,
      O(2) => \count_reg[0]_i_1_n_5\,
      O(1) => \count_reg[0]_i_1_n_6\,
      O(0) => \count_reg[0]_i_1_n_7\,
      S(3 downto 1) => count_reg(3 downto 1),
      S(0) => \count[0]_i_2_n_0\
    );
\count_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clkin,
      CE => btn_in,
      D => \count_reg[8]_i_1_n_5\,
      Q => count_reg(10),
      R => reset
    );
\count_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clkin,
      CE => btn_in,
      D => \count_reg[8]_i_1_n_4\,
      Q => count_reg(11),
      R => reset
    );
\count_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clkin,
      CE => btn_in,
      D => \count_reg[12]_i_1_n_7\,
      Q => count_reg(12),
      R => reset
    );
\count_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[8]_i_1_n_0\,
      CO(3) => \count_reg[12]_i_1_n_0\,
      CO(2) => \count_reg[12]_i_1_n_1\,
      CO(1) => \count_reg[12]_i_1_n_2\,
      CO(0) => \count_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_reg[12]_i_1_n_4\,
      O(2) => \count_reg[12]_i_1_n_5\,
      O(1) => \count_reg[12]_i_1_n_6\,
      O(0) => \count_reg[12]_i_1_n_7\,
      S(3 downto 0) => count_reg(15 downto 12)
    );
\count_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clkin,
      CE => btn_in,
      D => \count_reg[12]_i_1_n_6\,
      Q => count_reg(13),
      R => reset
    );
\count_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clkin,
      CE => btn_in,
      D => \count_reg[12]_i_1_n_5\,
      Q => count_reg(14),
      R => reset
    );
\count_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clkin,
      CE => btn_in,
      D => \count_reg[12]_i_1_n_4\,
      Q => count_reg(15),
      R => reset
    );
\count_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clkin,
      CE => btn_in,
      D => \count_reg[16]_i_1_n_7\,
      Q => count_reg(16),
      R => reset
    );
\count_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[12]_i_1_n_0\,
      CO(3) => \count_reg[16]_i_1_n_0\,
      CO(2) => \count_reg[16]_i_1_n_1\,
      CO(1) => \count_reg[16]_i_1_n_2\,
      CO(0) => \count_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_reg[16]_i_1_n_4\,
      O(2) => \count_reg[16]_i_1_n_5\,
      O(1) => \count_reg[16]_i_1_n_6\,
      O(0) => \count_reg[16]_i_1_n_7\,
      S(3 downto 0) => count_reg(19 downto 16)
    );
\count_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clkin,
      CE => btn_in,
      D => \count_reg[16]_i_1_n_6\,
      Q => count_reg(17),
      R => reset
    );
\count_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clkin,
      CE => btn_in,
      D => \count_reg[16]_i_1_n_5\,
      Q => count_reg(18),
      R => reset
    );
\count_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clkin,
      CE => btn_in,
      D => \count_reg[16]_i_1_n_4\,
      Q => count_reg(19),
      R => reset
    );
\count_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clkin,
      CE => btn_in,
      D => \count_reg[0]_i_1_n_6\,
      Q => count_reg(1),
      R => reset
    );
\count_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clkin,
      CE => btn_in,
      D => \count_reg[20]_i_1_n_7\,
      Q => count_reg(20),
      R => reset
    );
\count_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[16]_i_1_n_0\,
      CO(3 downto 0) => \NLW_count_reg[20]_i_1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_count_reg[20]_i_1_O_UNCONNECTED\(3 downto 1),
      O(0) => \count_reg[20]_i_1_n_7\,
      S(3 downto 1) => B"000",
      S(0) => count_reg(20)
    );
\count_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clkin,
      CE => btn_in,
      D => \count_reg[0]_i_1_n_5\,
      Q => count_reg(2),
      R => reset
    );
\count_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clkin,
      CE => btn_in,
      D => \count_reg[0]_i_1_n_4\,
      Q => count_reg(3),
      R => reset
    );
\count_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clkin,
      CE => btn_in,
      D => \count_reg[4]_i_1_n_7\,
      Q => count_reg(4),
      R => reset
    );
\count_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[0]_i_1_n_0\,
      CO(3) => \count_reg[4]_i_1_n_0\,
      CO(2) => \count_reg[4]_i_1_n_1\,
      CO(1) => \count_reg[4]_i_1_n_2\,
      CO(0) => \count_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_reg[4]_i_1_n_4\,
      O(2) => \count_reg[4]_i_1_n_5\,
      O(1) => \count_reg[4]_i_1_n_6\,
      O(0) => \count_reg[4]_i_1_n_7\,
      S(3 downto 0) => count_reg(7 downto 4)
    );
\count_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clkin,
      CE => btn_in,
      D => \count_reg[4]_i_1_n_6\,
      Q => count_reg(5),
      R => reset
    );
\count_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clkin,
      CE => btn_in,
      D => \count_reg[4]_i_1_n_5\,
      Q => count_reg(6),
      R => reset
    );
\count_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clkin,
      CE => btn_in,
      D => \count_reg[4]_i_1_n_4\,
      Q => count_reg(7),
      R => reset
    );
\count_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clkin,
      CE => btn_in,
      D => \count_reg[8]_i_1_n_7\,
      Q => count_reg(8),
      R => reset
    );
\count_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[4]_i_1_n_0\,
      CO(3) => \count_reg[8]_i_1_n_0\,
      CO(2) => \count_reg[8]_i_1_n_1\,
      CO(1) => \count_reg[8]_i_1_n_2\,
      CO(0) => \count_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_reg[8]_i_1_n_4\,
      O(2) => \count_reg[8]_i_1_n_5\,
      O(1) => \count_reg[8]_i_1_n_6\,
      O(0) => \count_reg[8]_i_1_n_7\,
      S(3 downto 0) => count_reg(11 downto 8)
    );
\count_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clkin,
      CE => btn_in,
      D => \count_reg[8]_i_1_n_6\,
      Q => count_reg(9),
      R => reset
    );
state_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E0"
    )
        port map (
      I0 => \^btn_out\,
      I1 => p_0_in,
      I2 => btn_in,
      I3 => reset,
      O => state_i_1_n_0
    );
state_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkin,
      CE => '1',
      D => state_i_1_n_0,
      Q => \^btn_out\,
      R => '0'
    );
state_reg_i_2: unisim.vcomponents.CARRY4
     port map (
      CI => state_reg_i_3_n_0,
      CO(3) => NLW_state_reg_i_2_CO_UNCONNECTED(3),
      CO(2) => state_reg_i_2_n_1,
      CO(1) => state_reg_i_2_n_2,
      CO(0) => state_reg_i_2_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => p_0_in,
      O(2 downto 0) => NLW_state_reg_i_2_O_UNCONNECTED(2 downto 0),
      S(3 downto 0) => count_reg(20 downto 17)
    );
state_reg_i_3: unisim.vcomponents.CARRY4
     port map (
      CI => state_reg_i_4_n_0,
      CO(3) => state_reg_i_3_n_0,
      CO(2) => state_reg_i_3_n_1,
      CO(1) => state_reg_i_3_n_2,
      CO(0) => state_reg_i_3_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_state_reg_i_3_O_UNCONNECTED(3 downto 0),
      S(3 downto 0) => count_reg(16 downto 13)
    );
state_reg_i_4: unisim.vcomponents.CARRY4
     port map (
      CI => state_reg_i_5_n_0,
      CO(3) => state_reg_i_4_n_0,
      CO(2) => state_reg_i_4_n_1,
      CO(1) => state_reg_i_4_n_2,
      CO(0) => state_reg_i_4_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_state_reg_i_4_O_UNCONNECTED(3 downto 0),
      S(3 downto 0) => count_reg(12 downto 9)
    );
state_reg_i_5: unisim.vcomponents.CARRY4
     port map (
      CI => state_reg_i_6_n_0,
      CO(3) => state_reg_i_5_n_0,
      CO(2) => state_reg_i_5_n_1,
      CO(1) => state_reg_i_5_n_2,
      CO(0) => state_reg_i_5_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_state_reg_i_5_O_UNCONNECTED(3 downto 0),
      S(3 downto 0) => count_reg(8 downto 5)
    );
state_reg_i_6: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => state_reg_i_6_n_0,
      CO(2) => state_reg_i_6_n_1,
      CO(1) => state_reg_i_6_n_2,
      CO(0) => state_reg_i_6_n_3,
      CYINIT => count_reg(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_state_reg_i_6_O_UNCONNECTED(3 downto 0),
      S(3 downto 0) => count_reg(4 downto 1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity seg_decoder_Debouncer_0_0 is
  port (
    btn_in : in STD_LOGIC;
    clkin : in STD_LOGIC;
    reset : in STD_LOGIC;
    btn_out : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of seg_decoder_Debouncer_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of seg_decoder_Debouncer_0_0 : entity is "seg_decoder_Debouncer_0_0,Debouncer,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of seg_decoder_Debouncer_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of seg_decoder_Debouncer_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of seg_decoder_Debouncer_0_0 : entity is "Debouncer,Vivado 2019.2";
end seg_decoder_Debouncer_0_0;

architecture STRUCTURE of seg_decoder_Debouncer_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clkin : signal is "xilinx.com:signal:clock:1.0 clkin CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clkin : signal is "XIL_INTERFACENAME clkin, ASSOCIATED_RESET reset, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN seg_decoder_clkin, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of reset : signal is "xilinx.com:signal:reset:1.0 reset RST";
  attribute X_INTERFACE_PARAMETER of reset : signal is "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
inst: entity work.seg_decoder_Debouncer_0_0_Debouncer
     port map (
      btn_in => btn_in,
      btn_out => btn_out,
      clkin => clkin,
      reset => reset
    );
end STRUCTURE;
