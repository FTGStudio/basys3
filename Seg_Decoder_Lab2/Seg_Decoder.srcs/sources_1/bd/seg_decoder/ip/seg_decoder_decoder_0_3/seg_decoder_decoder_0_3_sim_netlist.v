// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Sat May 22 13:19:05 2021
// Host        : DW-245 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/vivado_workspace/Seg_Decoder_Lab2/Seg_Decoder.srcs/sources_1/bd/seg_decoder/ip/seg_decoder_decoder_0_3/seg_decoder_decoder_0_3_sim_netlist.v
// Design      : seg_decoder_decoder_0_3
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "seg_decoder_decoder_0_3,decoder,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "decoder,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module seg_decoder_decoder_0_3
   (btn_in,
    reset,
    switch,
    segment_out);
  input btn_in;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input reset;
  input [3:0]switch;
  output [6:0]segment_out;

  wire btn_in;
  wire reset;
  wire [6:0]segment_out;
  wire [3:0]switch;

  seg_decoder_decoder_0_3_decoder inst
       (.btn_in(btn_in),
        .reset(reset),
        .segment_out(segment_out),
        .switch(switch));
endmodule

(* ORIG_REF_NAME = "decoder" *) 
module seg_decoder_decoder_0_3_decoder
   (segment_out,
    switch,
    btn_in,
    reset);
  output [6:0]segment_out;
  input [3:0]switch;
  input btn_in;
  input reset;

  wire btn_in;
  wire reset;
  wire [6:0]segment_out;
  wire [3:0]switch;
  wire [6:0]tmp_out;

  LUT4 #(
    .INIT(16'h4025)) 
    \tmp_out[0]_i_1 
       (.I0(switch[3]),
        .I1(switch[0]),
        .I2(switch[2]),
        .I3(switch[1]),
        .O(tmp_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h5390)) 
    \tmp_out[1]_i_1 
       (.I0(switch[3]),
        .I1(switch[2]),
        .I2(switch[0]),
        .I3(switch[1]),
        .O(tmp_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h5710)) 
    \tmp_out[2]_i_1 
       (.I0(switch[3]),
        .I1(switch[1]),
        .I2(switch[2]),
        .I3(switch[0]),
        .O(tmp_out[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hC014)) 
    \tmp_out[3]_i_1 
       (.I0(switch[3]),
        .I1(switch[2]),
        .I2(switch[0]),
        .I3(switch[1]),
        .O(tmp_out[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hA210)) 
    \tmp_out[4]_i_1 
       (.I0(switch[3]),
        .I1(switch[0]),
        .I2(switch[1]),
        .I3(switch[2]),
        .O(tmp_out[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hAC48)) 
    \tmp_out[5]_i_1 
       (.I0(switch[3]),
        .I1(switch[2]),
        .I2(switch[0]),
        .I3(switch[1]),
        .O(tmp_out[5]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h2094)) 
    \tmp_out[6]_i_1 
       (.I0(switch[3]),
        .I1(switch[2]),
        .I2(switch[0]),
        .I3(switch[1]),
        .O(tmp_out[6]));
  FDPE \tmp_out_reg[0] 
       (.C(btn_in),
        .CE(1'b1),
        .D(tmp_out[0]),
        .PRE(reset),
        .Q(segment_out[0]));
  FDCE \tmp_out_reg[1] 
       (.C(btn_in),
        .CE(1'b1),
        .CLR(reset),
        .D(tmp_out[1]),
        .Q(segment_out[1]));
  FDCE \tmp_out_reg[2] 
       (.C(btn_in),
        .CE(1'b1),
        .CLR(reset),
        .D(tmp_out[2]),
        .Q(segment_out[2]));
  FDCE \tmp_out_reg[3] 
       (.C(btn_in),
        .CE(1'b1),
        .CLR(reset),
        .D(tmp_out[3]),
        .Q(segment_out[3]));
  FDCE \tmp_out_reg[4] 
       (.C(btn_in),
        .CE(1'b1),
        .CLR(reset),
        .D(tmp_out[4]),
        .Q(segment_out[4]));
  FDCE \tmp_out_reg[5] 
       (.C(btn_in),
        .CE(1'b1),
        .CLR(reset),
        .D(tmp_out[5]),
        .Q(segment_out[5]));
  FDCE \tmp_out_reg[6] 
       (.C(btn_in),
        .CE(1'b1),
        .CLR(reset),
        .D(tmp_out[6]),
        .Q(segment_out[6]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
