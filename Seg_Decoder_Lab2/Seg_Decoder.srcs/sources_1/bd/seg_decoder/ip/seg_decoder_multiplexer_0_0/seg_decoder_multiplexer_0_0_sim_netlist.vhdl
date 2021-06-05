-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Sat May 22 14:59:02 2021
-- Host        : DW-245 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               C:/vivado_workspace/Seg_Decoder_Lab2/Seg_Decoder.srcs/sources_1/bd/seg_decoder/ip/seg_decoder_multiplexer_0_0/seg_decoder_multiplexer_0_0_sim_netlist.vhdl
-- Design      : seg_decoder_multiplexer_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity seg_decoder_multiplexer_0_0_multiplexer is
  port (
    outseg : out STD_LOGIC_VECTOR ( 0 to 6 );
    anode : out STD_LOGIC_VECTOR ( 0 to 3 );
    sel : in STD_LOGIC_VECTOR ( 0 to 1 );
    reset : in STD_LOGIC;
    btn : in STD_LOGIC;
    seg1 : in STD_LOGIC_VECTOR ( 0 to 6 );
    seg0 : in STD_LOGIC_VECTOR ( 0 to 6 );
    seg3 : in STD_LOGIC_VECTOR ( 0 to 6 );
    seg2 : in STD_LOGIC_VECTOR ( 0 to 6 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of seg_decoder_multiplexer_0_0_multiplexer : entity is "multiplexer";
end seg_decoder_multiplexer_0_0_multiplexer;

architecture STRUCTURE of seg_decoder_multiplexer_0_0_multiplexer is
  signal tmp_seg : STD_LOGIC_VECTOR ( 0 to 6 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \anode[0]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \anode[1]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \anode[2]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \anode[3]_INST_0\ : label is "soft_lutpair0";
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of \tmp_seg_reg[0]\ : label is "MLO";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \tmp_seg_reg[0]\ : label is "LD";
  attribute OPT_MODIFIED of \tmp_seg_reg[1]\ : label is "MLO";
  attribute XILINX_LEGACY_PRIM of \tmp_seg_reg[1]\ : label is "LD";
  attribute OPT_MODIFIED of \tmp_seg_reg[2]\ : label is "MLO";
  attribute XILINX_LEGACY_PRIM of \tmp_seg_reg[2]\ : label is "LD";
  attribute OPT_MODIFIED of \tmp_seg_reg[3]\ : label is "MLO";
  attribute XILINX_LEGACY_PRIM of \tmp_seg_reg[3]\ : label is "LD";
  attribute OPT_MODIFIED of \tmp_seg_reg[4]\ : label is "MLO";
  attribute XILINX_LEGACY_PRIM of \tmp_seg_reg[4]\ : label is "LD";
  attribute OPT_MODIFIED of \tmp_seg_reg[5]\ : label is "MLO";
  attribute XILINX_LEGACY_PRIM of \tmp_seg_reg[5]\ : label is "LD";
  attribute OPT_MODIFIED of \tmp_seg_reg[6]\ : label is "MLO";
  attribute XILINX_LEGACY_PRIM of \tmp_seg_reg[6]\ : label is "LD";
begin
\anode[0]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => btn,
      I1 => reset,
      I2 => sel(1),
      I3 => sel(0),
      O => anode(0)
    );
\anode[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FD"
    )
        port map (
      I0 => sel(1),
      I1 => reset,
      I2 => sel(0),
      O => anode(1)
    );
\anode[2]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => sel(0),
      I1 => btn,
      I2 => sel(1),
      I3 => reset,
      O => anode(2)
    );
\anode[3]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF7"
    )
        port map (
      I0 => sel(1),
      I1 => sel(0),
      I2 => reset,
      I3 => btn,
      O => anode(3)
    );
\tmp_seg_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0',
      IS_G_INVERTED => '1'
    )
        port map (
      CLR => '0',
      D => tmp_seg(0),
      G => reset,
      GE => '1',
      Q => outseg(0)
    );
\tmp_seg_reg[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => seg1(0),
      I1 => seg0(0),
      I2 => seg3(0),
      I3 => sel(0),
      I4 => sel(1),
      I5 => seg2(0),
      O => tmp_seg(0)
    );
\tmp_seg_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0',
      IS_G_INVERTED => '1'
    )
        port map (
      CLR => '0',
      D => tmp_seg(1),
      G => reset,
      GE => '1',
      Q => outseg(1)
    );
\tmp_seg_reg[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => seg1(1),
      I1 => seg0(1),
      I2 => seg3(1),
      I3 => sel(0),
      I4 => sel(1),
      I5 => seg2(1),
      O => tmp_seg(1)
    );
\tmp_seg_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0',
      IS_G_INVERTED => '1'
    )
        port map (
      CLR => '0',
      D => tmp_seg(2),
      G => reset,
      GE => '1',
      Q => outseg(2)
    );
\tmp_seg_reg[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => seg1(2),
      I1 => seg0(2),
      I2 => seg3(2),
      I3 => sel(0),
      I4 => sel(1),
      I5 => seg2(2),
      O => tmp_seg(2)
    );
\tmp_seg_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0',
      IS_G_INVERTED => '1'
    )
        port map (
      CLR => '0',
      D => tmp_seg(3),
      G => reset,
      GE => '1',
      Q => outseg(3)
    );
\tmp_seg_reg[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => seg1(3),
      I1 => seg0(3),
      I2 => seg3(3),
      I3 => sel(0),
      I4 => sel(1),
      I5 => seg2(3),
      O => tmp_seg(3)
    );
\tmp_seg_reg[4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0',
      IS_G_INVERTED => '1'
    )
        port map (
      CLR => '0',
      D => tmp_seg(4),
      G => reset,
      GE => '1',
      Q => outseg(4)
    );
\tmp_seg_reg[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => seg1(4),
      I1 => seg0(4),
      I2 => seg3(4),
      I3 => sel(0),
      I4 => sel(1),
      I5 => seg2(4),
      O => tmp_seg(4)
    );
\tmp_seg_reg[5]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0',
      IS_G_INVERTED => '1'
    )
        port map (
      CLR => '0',
      D => tmp_seg(5),
      G => reset,
      GE => '1',
      Q => outseg(5)
    );
\tmp_seg_reg[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => seg1(5),
      I1 => seg0(5),
      I2 => seg3(5),
      I3 => sel(0),
      I4 => sel(1),
      I5 => seg2(5),
      O => tmp_seg(5)
    );
\tmp_seg_reg[6]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '1',
      IS_G_INVERTED => '1'
    )
        port map (
      CLR => '0',
      D => tmp_seg(6),
      G => reset,
      GE => '1',
      Q => outseg(6)
    );
\tmp_seg_reg[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => seg1(6),
      I1 => seg0(6),
      I2 => seg3(6),
      I3 => sel(0),
      I4 => sel(1),
      I5 => seg2(6),
      O => tmp_seg(6)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity seg_decoder_multiplexer_0_0 is
  port (
    sel : in STD_LOGIC_VECTOR ( 0 to 1 );
    btn : in STD_LOGIC;
    reset : in STD_LOGIC;
    seg0 : in STD_LOGIC_VECTOR ( 0 to 6 );
    seg1 : in STD_LOGIC_VECTOR ( 0 to 6 );
    seg2 : in STD_LOGIC_VECTOR ( 0 to 6 );
    seg3 : in STD_LOGIC_VECTOR ( 0 to 6 );
    anode : out STD_LOGIC_VECTOR ( 0 to 3 );
    outseg : out STD_LOGIC_VECTOR ( 0 to 6 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of seg_decoder_multiplexer_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of seg_decoder_multiplexer_0_0 : entity is "seg_decoder_multiplexer_0_0,multiplexer,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of seg_decoder_multiplexer_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of seg_decoder_multiplexer_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of seg_decoder_multiplexer_0_0 : entity is "multiplexer,Vivado 2019.2";
end seg_decoder_multiplexer_0_0;

architecture STRUCTURE of seg_decoder_multiplexer_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of reset : signal is "xilinx.com:signal:reset:1.0 reset RST";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of reset : signal is "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
inst: entity work.seg_decoder_multiplexer_0_0_multiplexer
     port map (
      anode(0 to 3) => anode(0 to 3),
      btn => btn,
      outseg(0 to 6) => outseg(0 to 6),
      reset => reset,
      seg0(0 to 6) => seg0(0 to 6),
      seg1(0 to 6) => seg1(0 to 6),
      seg2(0 to 6) => seg2(0 to 6),
      seg3(0 to 6) => seg3(0 to 6),
      sel(0 to 1) => sel(0 to 1)
    );
end STRUCTURE;
