//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
//Date        : Sat May 22 14:57:36 2021
//Host        : DW-245 running 64-bit major release  (build 9200)
//Command     : generate_target seg_decoder.bd
//Design      : seg_decoder
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "seg_decoder,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=seg_decoder,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=8,numReposBlks=8,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=8,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "seg_decoder.hwdef" *) 
module seg_decoder
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
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLKIN CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLKIN, ASSOCIATED_RESET reset, CLK_DOMAIN seg_decoder_clkin, FREQ_HZ 100000000, INSERT_VIP 0, PHASE 0.000" *) input clkin;
  output [0:6]outseg;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESET RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESET, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input reset;
  input [3:0]switch_0;
  input [3:0]switch_1;
  input [3:0]switch_2;
  input [3:0]switch_3;

  wire Debouncer_0_btn_out;
  wire btn_1;
  wire clk_divider_1khz_clkout;
  wire clkin_0_1;
  wire [6:0]decoder_0_segment_out;
  wire [6:0]decoder_1_segment_out;
  wire [6:0]decoder_2_segment_out;
  wire [6:0]decoder_3_segment_out;
  wire [0:3]multiplexer_0_anode;
  wire [0:6]multiplexer_0_outseg;
  wire reset_0_1;
  wire [3:0]switch_0;
  wire [3:0]switch_1;
  wire [3:0]switch_2;
  wire [3:0]switch_3;
  wire [1:0]two_bit_counter_0_count;

  assign anode[0:3] = multiplexer_0_anode;
  assign btn_1 = btn;
  assign clkin_0_1 = clkin;
  assign outseg[0:6] = multiplexer_0_outseg;
  assign reset_0_1 = reset;
  seg_decoder_Debouncer_0_0 Debouncer_0
       (.btn_in(btn_1),
        .btn_out(Debouncer_0_btn_out),
        .clkin(clkin_0_1),
        .reset(reset_0_1));
  seg_decoder_clk_divider_0_0 clk_divider_1khz
       (.clkin(clkin_0_1),
        .clkout(clk_divider_1khz_clkout),
        .reset(reset_0_1));
  seg_decoder_decoder_0_2 decoder0
       (.btn_in(Debouncer_0_btn_out),
        .reset(reset_0_1),
        .segment_out(decoder_2_segment_out),
        .switch(switch_0));
  seg_decoder_decoder_0_0 decoder1
       (.btn_in(Debouncer_0_btn_out),
        .reset(reset_0_1),
        .segment_out(decoder_0_segment_out),
        .switch(switch_1));
  seg_decoder_decoder_0_1 decoder2
       (.btn_in(Debouncer_0_btn_out),
        .reset(reset_0_1),
        .segment_out(decoder_1_segment_out),
        .switch(switch_2));
  seg_decoder_decoder_0_3 decoder3
       (.btn_in(Debouncer_0_btn_out),
        .reset(reset_0_1),
        .segment_out(decoder_3_segment_out),
        .switch(switch_3));
  seg_decoder_multiplexer_0_0 multiplexer_0
       (.anode(multiplexer_0_anode),
        .btn(Debouncer_0_btn_out),
        .outseg(multiplexer_0_outseg),
        .reset(reset_0_1),
        .seg0({decoder_2_segment_out[6],decoder_2_segment_out[5],decoder_2_segment_out[4],decoder_2_segment_out[3],decoder_2_segment_out[2],decoder_2_segment_out[1],decoder_2_segment_out[0]}),
        .seg1({decoder_0_segment_out[6],decoder_0_segment_out[5],decoder_0_segment_out[4],decoder_0_segment_out[3],decoder_0_segment_out[2],decoder_0_segment_out[1],decoder_0_segment_out[0]}),
        .seg2({decoder_1_segment_out[6],decoder_1_segment_out[5],decoder_1_segment_out[4],decoder_1_segment_out[3],decoder_1_segment_out[2],decoder_1_segment_out[1],decoder_1_segment_out[0]}),
        .seg3({decoder_3_segment_out[6],decoder_3_segment_out[5],decoder_3_segment_out[4],decoder_3_segment_out[3],decoder_3_segment_out[2],decoder_3_segment_out[1],decoder_3_segment_out[0]}),
        .sel({two_bit_counter_0_count[1],two_bit_counter_0_count[0]}));
  seg_decoder_two_bit_counter_0_0 two_bit_counter_0
       (.clk(clk_divider_1khz_clkout),
        .count(two_bit_counter_0_count),
        .reset(reset_0_1));
endmodule
