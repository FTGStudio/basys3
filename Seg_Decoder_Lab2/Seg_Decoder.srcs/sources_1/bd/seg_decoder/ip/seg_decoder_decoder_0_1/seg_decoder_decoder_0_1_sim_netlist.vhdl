-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Sat May 22 13:21:46 2021
-- Host        : DW-245 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               C:/vivado_workspace/Seg_Decoder_Lab2/Seg_Decoder.srcs/sources_1/bd/seg_decoder/ip/seg_decoder_decoder_0_1/seg_decoder_decoder_0_1_sim_netlist.vhdl
-- Design      : seg_decoder_decoder_0_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity seg_decoder_decoder_0_1_decoder is
  port (
    segment_out : out STD_LOGIC_VECTOR ( 6 downto 0 );
    switch : in STD_LOGIC_VECTOR ( 3 downto 0 );
    btn_in : in STD_LOGIC;
    reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of seg_decoder_decoder_0_1_decoder : entity is "decoder";
end seg_decoder_decoder_0_1_decoder;

architecture STRUCTURE of seg_decoder_decoder_0_1_decoder is
  signal tmp_out : STD_LOGIC_VECTOR ( 6 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \tmp_out[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \tmp_out[2]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \tmp_out[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \tmp_out[4]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \tmp_out[5]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \tmp_out[6]_i_1\ : label is "soft_lutpair2";
begin
\tmp_out[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4025"
    )
        port map (
      I0 => switch(3),
      I1 => switch(0),
      I2 => switch(2),
      I3 => switch(1),
      O => tmp_out(0)
    );
\tmp_out[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5390"
    )
        port map (
      I0 => switch(3),
      I1 => switch(2),
      I2 => switch(0),
      I3 => switch(1),
      O => tmp_out(1)
    );
\tmp_out[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5710"
    )
        port map (
      I0 => switch(3),
      I1 => switch(1),
      I2 => switch(2),
      I3 => switch(0),
      O => tmp_out(2)
    );
\tmp_out[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C014"
    )
        port map (
      I0 => switch(3),
      I1 => switch(2),
      I2 => switch(0),
      I3 => switch(1),
      O => tmp_out(3)
    );
\tmp_out[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A210"
    )
        port map (
      I0 => switch(3),
      I1 => switch(0),
      I2 => switch(1),
      I3 => switch(2),
      O => tmp_out(4)
    );
\tmp_out[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AC48"
    )
        port map (
      I0 => switch(3),
      I1 => switch(2),
      I2 => switch(0),
      I3 => switch(1),
      O => tmp_out(5)
    );
\tmp_out[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2094"
    )
        port map (
      I0 => switch(3),
      I1 => switch(2),
      I2 => switch(0),
      I3 => switch(1),
      O => tmp_out(6)
    );
\tmp_out_reg[0]\: unisim.vcomponents.FDPE
     port map (
      C => btn_in,
      CE => '1',
      D => tmp_out(0),
      PRE => reset,
      Q => segment_out(0)
    );
\tmp_out_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => btn_in,
      CE => '1',
      CLR => reset,
      D => tmp_out(1),
      Q => segment_out(1)
    );
\tmp_out_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => btn_in,
      CE => '1',
      CLR => reset,
      D => tmp_out(2),
      Q => segment_out(2)
    );
\tmp_out_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => btn_in,
      CE => '1',
      CLR => reset,
      D => tmp_out(3),
      Q => segment_out(3)
    );
\tmp_out_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => btn_in,
      CE => '1',
      CLR => reset,
      D => tmp_out(4),
      Q => segment_out(4)
    );
\tmp_out_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => btn_in,
      CE => '1',
      CLR => reset,
      D => tmp_out(5),
      Q => segment_out(5)
    );
\tmp_out_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => btn_in,
      CE => '1',
      CLR => reset,
      D => tmp_out(6),
      Q => segment_out(6)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity seg_decoder_decoder_0_1 is
  port (
    btn_in : in STD_LOGIC;
    reset : in STD_LOGIC;
    switch : in STD_LOGIC_VECTOR ( 3 downto 0 );
    segment_out : out STD_LOGIC_VECTOR ( 6 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of seg_decoder_decoder_0_1 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of seg_decoder_decoder_0_1 : entity is "seg_decoder_decoder_0_1,decoder,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of seg_decoder_decoder_0_1 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of seg_decoder_decoder_0_1 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of seg_decoder_decoder_0_1 : entity is "decoder,Vivado 2019.2";
end seg_decoder_decoder_0_1;

architecture STRUCTURE of seg_decoder_decoder_0_1 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of reset : signal is "xilinx.com:signal:reset:1.0 reset RST";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of reset : signal is "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
inst: entity work.seg_decoder_decoder_0_1_decoder
     port map (
      btn_in => btn_in,
      reset => reset,
      segment_out(6 downto 0) => segment_out(6 downto 0),
      switch(3 downto 0) => switch(3 downto 0)
    );
end STRUCTURE;
