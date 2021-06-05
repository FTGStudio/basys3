// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Sat May 22 14:59:02 2021
// Host        : DW-245 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/vivado_workspace/Seg_Decoder_Lab2/Seg_Decoder.srcs/sources_1/bd/seg_decoder/ip/seg_decoder_multiplexer_0_0/seg_decoder_multiplexer_0_0_sim_netlist.v
// Design      : seg_decoder_multiplexer_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "seg_decoder_multiplexer_0_0,multiplexer,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "multiplexer,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module seg_decoder_multiplexer_0_0
   (sel,
    btn,
    reset,
    seg0,
    seg1,
    seg2,
    seg3,
    anode,
    outseg);
  input [0:1]sel;
  input btn;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input reset;
  input [0:6]seg0;
  input [0:6]seg1;
  input [0:6]seg2;
  input [0:6]seg3;
  output [0:3]anode;
  output [0:6]outseg;

  wire [0:3]anode;
  wire btn;
  wire [0:6]outseg;
  wire reset;
  wire [0:6]seg0;
  wire [0:6]seg1;
  wire [0:6]seg2;
  wire [0:6]seg3;
  wire [0:1]sel;

  seg_decoder_multiplexer_0_0_multiplexer inst
       (.anode(anode),
        .btn(btn),
        .outseg(outseg),
        .reset(reset),
        .seg0(seg0),
        .seg1(seg1),
        .seg2(seg2),
        .seg3(seg3),
        .sel(sel));
endmodule

(* ORIG_REF_NAME = "multiplexer" *) 
module seg_decoder_multiplexer_0_0_multiplexer
   (outseg,
    anode,
    sel,
    reset,
    btn,
    seg1,
    seg0,
    seg3,
    seg2);
  output [0:6]outseg;
  output [0:3]anode;
  input [0:1]sel;
  input reset;
  input btn;
  input [0:6]seg1;
  input [0:6]seg0;
  input [0:6]seg3;
  input [0:6]seg2;

  wire [0:3]anode;
  wire btn;
  wire [0:6]outseg;
  wire reset;
  wire [0:6]seg0;
  wire [0:6]seg1;
  wire [0:6]seg2;
  wire [0:6]seg3;
  wire [0:1]sel;
  wire [0:6]tmp_seg;

  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hFFFD)) 
    \anode[0]_INST_0 
       (.I0(btn),
        .I1(reset),
        .I2(sel[1]),
        .I3(sel[0]),
        .O(anode[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hFD)) 
    \anode[1]_INST_0 
       (.I0(sel[1]),
        .I1(reset),
        .I2(sel[0]),
        .O(anode[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hFFFD)) 
    \anode[2]_INST_0 
       (.I0(sel[0]),
        .I1(btn),
        .I2(sel[1]),
        .I3(reset),
        .O(anode[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hFFF7)) 
    \anode[3]_INST_0 
       (.I0(sel[1]),
        .I1(sel[0]),
        .I2(reset),
        .I3(btn),
        .O(anode[3]));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \tmp_seg_reg[0] 
       (.CLR(1'b0),
        .D(tmp_seg[0]),
        .G(reset),
        .GE(1'b1),
        .Q(outseg[0]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \tmp_seg_reg[0]_i_1 
       (.I0(seg1[0]),
        .I1(seg0[0]),
        .I2(seg3[0]),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(seg2[0]),
        .O(tmp_seg[0]));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \tmp_seg_reg[1] 
       (.CLR(1'b0),
        .D(tmp_seg[1]),
        .G(reset),
        .GE(1'b1),
        .Q(outseg[1]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \tmp_seg_reg[1]_i_1 
       (.I0(seg1[1]),
        .I1(seg0[1]),
        .I2(seg3[1]),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(seg2[1]),
        .O(tmp_seg[1]));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \tmp_seg_reg[2] 
       (.CLR(1'b0),
        .D(tmp_seg[2]),
        .G(reset),
        .GE(1'b1),
        .Q(outseg[2]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \tmp_seg_reg[2]_i_1 
       (.I0(seg1[2]),
        .I1(seg0[2]),
        .I2(seg3[2]),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(seg2[2]),
        .O(tmp_seg[2]));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \tmp_seg_reg[3] 
       (.CLR(1'b0),
        .D(tmp_seg[3]),
        .G(reset),
        .GE(1'b1),
        .Q(outseg[3]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \tmp_seg_reg[3]_i_1 
       (.I0(seg1[3]),
        .I1(seg0[3]),
        .I2(seg3[3]),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(seg2[3]),
        .O(tmp_seg[3]));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \tmp_seg_reg[4] 
       (.CLR(1'b0),
        .D(tmp_seg[4]),
        .G(reset),
        .GE(1'b1),
        .Q(outseg[4]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \tmp_seg_reg[4]_i_1 
       (.I0(seg1[4]),
        .I1(seg0[4]),
        .I2(seg3[4]),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(seg2[4]),
        .O(tmp_seg[4]));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \tmp_seg_reg[5] 
       (.CLR(1'b0),
        .D(tmp_seg[5]),
        .G(reset),
        .GE(1'b1),
        .Q(outseg[5]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \tmp_seg_reg[5]_i_1 
       (.I0(seg1[5]),
        .I1(seg0[5]),
        .I2(seg3[5]),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(seg2[5]),
        .O(tmp_seg[5]));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b1),
    .IS_G_INVERTED(1'b1)) 
    \tmp_seg_reg[6] 
       (.CLR(1'b0),
        .D(tmp_seg[6]),
        .G(reset),
        .GE(1'b1),
        .Q(outseg[6]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \tmp_seg_reg[6]_i_1 
       (.I0(seg1[6]),
        .I1(seg0[6]),
        .I2(seg3[6]),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(seg2[6]),
        .O(tmp_seg[6]));
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
