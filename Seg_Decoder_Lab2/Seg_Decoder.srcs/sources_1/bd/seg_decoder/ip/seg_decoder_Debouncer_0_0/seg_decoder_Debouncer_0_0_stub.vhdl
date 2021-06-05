-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Sat May 22 13:19:26 2021
-- Host        : DW-245 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               C:/vivado_workspace/Seg_Decoder_Lab2/Seg_Decoder.srcs/sources_1/bd/seg_decoder/ip/seg_decoder_Debouncer_0_0/seg_decoder_Debouncer_0_0_stub.vhdl
-- Design      : seg_decoder_Debouncer_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity seg_decoder_Debouncer_0_0 is
  Port ( 
    btn_in : in STD_LOGIC;
    clkin : in STD_LOGIC;
    reset : in STD_LOGIC;
    btn_out : out STD_LOGIC
  );

end seg_decoder_Debouncer_0_0;

architecture stub of seg_decoder_Debouncer_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "btn_in,clkin,reset,btn_out";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "Debouncer,Vivado 2019.2";
begin
end;
