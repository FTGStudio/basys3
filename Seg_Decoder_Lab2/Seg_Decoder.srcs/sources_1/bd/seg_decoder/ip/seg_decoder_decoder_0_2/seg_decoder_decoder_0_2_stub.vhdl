-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Sat May 22 13:19:26 2021
-- Host        : DW-245 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               C:/vivado_workspace/Seg_Decoder_Lab2/Seg_Decoder.srcs/sources_1/bd/seg_decoder/ip/seg_decoder_decoder_0_2/seg_decoder_decoder_0_2_stub.vhdl
-- Design      : seg_decoder_decoder_0_2
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity seg_decoder_decoder_0_2 is
  Port ( 
    btn_in : in STD_LOGIC;
    reset : in STD_LOGIC;
    switch : in STD_LOGIC_VECTOR ( 3 downto 0 );
    segment_out : out STD_LOGIC_VECTOR ( 6 downto 0 )
  );

end seg_decoder_decoder_0_2;

architecture stub of seg_decoder_decoder_0_2 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "btn_in,reset,switch[3:0],segment_out[6:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "decoder,Vivado 2019.2";
begin
end;
