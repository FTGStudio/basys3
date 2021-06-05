// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Sat May 22 14:59:02 2021
// Host        : DW-245 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               C:/vivado_workspace/Seg_Decoder_Lab2/Seg_Decoder.srcs/sources_1/bd/seg_decoder/ip/seg_decoder_multiplexer_0_0/seg_decoder_multiplexer_0_0_stub.v
// Design      : seg_decoder_multiplexer_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "multiplexer,Vivado 2019.2" *)
module seg_decoder_multiplexer_0_0(sel, btn, reset, seg0, seg1, seg2, seg3, anode, outseg)
/* synthesis syn_black_box black_box_pad_pin="sel[0:1],btn,reset,seg0[0:6],seg1[0:6],seg2[0:6],seg3[0:6],anode[0:3],outseg[0:6]" */;
  input [0:1]sel;
  input btn;
  input reset;
  input [0:6]seg0;
  input [0:6]seg1;
  input [0:6]seg2;
  input [0:6]seg3;
  output [0:3]anode;
  output [0:6]outseg;
endmodule
