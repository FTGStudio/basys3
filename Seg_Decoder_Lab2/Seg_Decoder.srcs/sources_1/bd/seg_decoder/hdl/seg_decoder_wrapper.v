//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
//Date        : Sat May 22 14:57:36 2021
//Host        : DW-245 running 64-bit major release  (build 9200)
//Command     : generate_target seg_decoder_wrapper.bd
//Design      : seg_decoder_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module seg_decoder_wrapper
   (anode,
    btn,
    clkin,
    outseg,
    reset,
    switch_0,
    switch_1,
    switch_2,
    switch_3);
  output [0:3]anode;
  input btn;
  input clkin;
  output [0:6]outseg;
  input reset;
  input [3:0]switch_0;
  input [3:0]switch_1;
  input [3:0]switch_2;
  input [3:0]switch_3;

  wire [0:3]anode;
  wire btn;
  wire clkin;
  wire [0:6]outseg;
  wire reset;
  wire [3:0]switch_0;
  wire [3:0]switch_1;
  wire [3:0]switch_2;
  wire [3:0]switch_3;

  seg_decoder seg_decoder_i
       (.anode(anode),
        .btn(btn),
        .clkin(clkin),
        .outseg(outseg),
        .reset(reset),
        .switch_0(switch_0),
        .switch_1(switch_1),
        .switch_2(switch_2),
        .switch_3(switch_3));
endmodule
