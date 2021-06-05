// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Sat May 22 13:19:24 2021
// Host        : DW-245 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ seg_decoder_Debouncer_0_0_sim_netlist.v
// Design      : seg_decoder_Debouncer_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Debouncer
   (btn_out,
    reset,
    btn_in,
    clkin);
  output btn_out;
  input reset;
  input btn_in;
  input clkin;

  wire btn_in;
  wire btn_out;
  wire clkin;
  wire \count[0]_i_2_n_0 ;
  wire [20:0]count_reg;
  wire \count_reg[0]_i_1_n_0 ;
  wire \count_reg[0]_i_1_n_1 ;
  wire \count_reg[0]_i_1_n_2 ;
  wire \count_reg[0]_i_1_n_3 ;
  wire \count_reg[0]_i_1_n_4 ;
  wire \count_reg[0]_i_1_n_5 ;
  wire \count_reg[0]_i_1_n_6 ;
  wire \count_reg[0]_i_1_n_7 ;
  wire \count_reg[12]_i_1_n_0 ;
  wire \count_reg[12]_i_1_n_1 ;
  wire \count_reg[12]_i_1_n_2 ;
  wire \count_reg[12]_i_1_n_3 ;
  wire \count_reg[12]_i_1_n_4 ;
  wire \count_reg[12]_i_1_n_5 ;
  wire \count_reg[12]_i_1_n_6 ;
  wire \count_reg[12]_i_1_n_7 ;
  wire \count_reg[16]_i_1_n_0 ;
  wire \count_reg[16]_i_1_n_1 ;
  wire \count_reg[16]_i_1_n_2 ;
  wire \count_reg[16]_i_1_n_3 ;
  wire \count_reg[16]_i_1_n_4 ;
  wire \count_reg[16]_i_1_n_5 ;
  wire \count_reg[16]_i_1_n_6 ;
  wire \count_reg[16]_i_1_n_7 ;
  wire \count_reg[20]_i_1_n_7 ;
  wire \count_reg[4]_i_1_n_0 ;
  wire \count_reg[4]_i_1_n_1 ;
  wire \count_reg[4]_i_1_n_2 ;
  wire \count_reg[4]_i_1_n_3 ;
  wire \count_reg[4]_i_1_n_4 ;
  wire \count_reg[4]_i_1_n_5 ;
  wire \count_reg[4]_i_1_n_6 ;
  wire \count_reg[4]_i_1_n_7 ;
  wire \count_reg[8]_i_1_n_0 ;
  wire \count_reg[8]_i_1_n_1 ;
  wire \count_reg[8]_i_1_n_2 ;
  wire \count_reg[8]_i_1_n_3 ;
  wire \count_reg[8]_i_1_n_4 ;
  wire \count_reg[8]_i_1_n_5 ;
  wire \count_reg[8]_i_1_n_6 ;
  wire \count_reg[8]_i_1_n_7 ;
  wire p_0_in;
  wire reset;
  wire state_i_1_n_0;
  wire state_reg_i_2_n_1;
  wire state_reg_i_2_n_2;
  wire state_reg_i_2_n_3;
  wire state_reg_i_3_n_0;
  wire state_reg_i_3_n_1;
  wire state_reg_i_3_n_2;
  wire state_reg_i_3_n_3;
  wire state_reg_i_4_n_0;
  wire state_reg_i_4_n_1;
  wire state_reg_i_4_n_2;
  wire state_reg_i_4_n_3;
  wire state_reg_i_5_n_0;
  wire state_reg_i_5_n_1;
  wire state_reg_i_5_n_2;
  wire state_reg_i_5_n_3;
  wire state_reg_i_6_n_0;
  wire state_reg_i_6_n_1;
  wire state_reg_i_6_n_2;
  wire state_reg_i_6_n_3;
  wire [3:0]\NLW_count_reg[20]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_count_reg[20]_i_1_O_UNCONNECTED ;
  wire [3:3]NLW_state_reg_i_2_CO_UNCONNECTED;
  wire [2:0]NLW_state_reg_i_2_O_UNCONNECTED;
  wire [3:0]NLW_state_reg_i_3_O_UNCONNECTED;
  wire [3:0]NLW_state_reg_i_4_O_UNCONNECTED;
  wire [3:0]NLW_state_reg_i_5_O_UNCONNECTED;
  wire [3:0]NLW_state_reg_i_6_O_UNCONNECTED;

  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_2 
       (.I0(count_reg[0]),
        .O(\count[0]_i_2_n_0 ));
  FDRE \count_reg[0] 
       (.C(clkin),
        .CE(btn_in),
        .D(\count_reg[0]_i_1_n_7 ),
        .Q(count_reg[0]),
        .R(reset));
  CARRY4 \count_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\count_reg[0]_i_1_n_0 ,\count_reg[0]_i_1_n_1 ,\count_reg[0]_i_1_n_2 ,\count_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\count_reg[0]_i_1_n_4 ,\count_reg[0]_i_1_n_5 ,\count_reg[0]_i_1_n_6 ,\count_reg[0]_i_1_n_7 }),
        .S({count_reg[3:1],\count[0]_i_2_n_0 }));
  FDRE \count_reg[10] 
       (.C(clkin),
        .CE(btn_in),
        .D(\count_reg[8]_i_1_n_5 ),
        .Q(count_reg[10]),
        .R(reset));
  FDRE \count_reg[11] 
       (.C(clkin),
        .CE(btn_in),
        .D(\count_reg[8]_i_1_n_4 ),
        .Q(count_reg[11]),
        .R(reset));
  FDRE \count_reg[12] 
       (.C(clkin),
        .CE(btn_in),
        .D(\count_reg[12]_i_1_n_7 ),
        .Q(count_reg[12]),
        .R(reset));
  CARRY4 \count_reg[12]_i_1 
       (.CI(\count_reg[8]_i_1_n_0 ),
        .CO({\count_reg[12]_i_1_n_0 ,\count_reg[12]_i_1_n_1 ,\count_reg[12]_i_1_n_2 ,\count_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[12]_i_1_n_4 ,\count_reg[12]_i_1_n_5 ,\count_reg[12]_i_1_n_6 ,\count_reg[12]_i_1_n_7 }),
        .S(count_reg[15:12]));
  FDRE \count_reg[13] 
       (.C(clkin),
        .CE(btn_in),
        .D(\count_reg[12]_i_1_n_6 ),
        .Q(count_reg[13]),
        .R(reset));
  FDRE \count_reg[14] 
       (.C(clkin),
        .CE(btn_in),
        .D(\count_reg[12]_i_1_n_5 ),
        .Q(count_reg[14]),
        .R(reset));
  FDRE \count_reg[15] 
       (.C(clkin),
        .CE(btn_in),
        .D(\count_reg[12]_i_1_n_4 ),
        .Q(count_reg[15]),
        .R(reset));
  FDRE \count_reg[16] 
       (.C(clkin),
        .CE(btn_in),
        .D(\count_reg[16]_i_1_n_7 ),
        .Q(count_reg[16]),
        .R(reset));
  CARRY4 \count_reg[16]_i_1 
       (.CI(\count_reg[12]_i_1_n_0 ),
        .CO({\count_reg[16]_i_1_n_0 ,\count_reg[16]_i_1_n_1 ,\count_reg[16]_i_1_n_2 ,\count_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[16]_i_1_n_4 ,\count_reg[16]_i_1_n_5 ,\count_reg[16]_i_1_n_6 ,\count_reg[16]_i_1_n_7 }),
        .S(count_reg[19:16]));
  FDRE \count_reg[17] 
       (.C(clkin),
        .CE(btn_in),
        .D(\count_reg[16]_i_1_n_6 ),
        .Q(count_reg[17]),
        .R(reset));
  FDRE \count_reg[18] 
       (.C(clkin),
        .CE(btn_in),
        .D(\count_reg[16]_i_1_n_5 ),
        .Q(count_reg[18]),
        .R(reset));
  FDRE \count_reg[19] 
       (.C(clkin),
        .CE(btn_in),
        .D(\count_reg[16]_i_1_n_4 ),
        .Q(count_reg[19]),
        .R(reset));
  FDRE \count_reg[1] 
       (.C(clkin),
        .CE(btn_in),
        .D(\count_reg[0]_i_1_n_6 ),
        .Q(count_reg[1]),
        .R(reset));
  FDRE \count_reg[20] 
       (.C(clkin),
        .CE(btn_in),
        .D(\count_reg[20]_i_1_n_7 ),
        .Q(count_reg[20]),
        .R(reset));
  CARRY4 \count_reg[20]_i_1 
       (.CI(\count_reg[16]_i_1_n_0 ),
        .CO(\NLW_count_reg[20]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_count_reg[20]_i_1_O_UNCONNECTED [3:1],\count_reg[20]_i_1_n_7 }),
        .S({1'b0,1'b0,1'b0,count_reg[20]}));
  FDRE \count_reg[2] 
       (.C(clkin),
        .CE(btn_in),
        .D(\count_reg[0]_i_1_n_5 ),
        .Q(count_reg[2]),
        .R(reset));
  FDRE \count_reg[3] 
       (.C(clkin),
        .CE(btn_in),
        .D(\count_reg[0]_i_1_n_4 ),
        .Q(count_reg[3]),
        .R(reset));
  FDRE \count_reg[4] 
       (.C(clkin),
        .CE(btn_in),
        .D(\count_reg[4]_i_1_n_7 ),
        .Q(count_reg[4]),
        .R(reset));
  CARRY4 \count_reg[4]_i_1 
       (.CI(\count_reg[0]_i_1_n_0 ),
        .CO({\count_reg[4]_i_1_n_0 ,\count_reg[4]_i_1_n_1 ,\count_reg[4]_i_1_n_2 ,\count_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[4]_i_1_n_4 ,\count_reg[4]_i_1_n_5 ,\count_reg[4]_i_1_n_6 ,\count_reg[4]_i_1_n_7 }),
        .S(count_reg[7:4]));
  FDRE \count_reg[5] 
       (.C(clkin),
        .CE(btn_in),
        .D(\count_reg[4]_i_1_n_6 ),
        .Q(count_reg[5]),
        .R(reset));
  FDRE \count_reg[6] 
       (.C(clkin),
        .CE(btn_in),
        .D(\count_reg[4]_i_1_n_5 ),
        .Q(count_reg[6]),
        .R(reset));
  FDRE \count_reg[7] 
       (.C(clkin),
        .CE(btn_in),
        .D(\count_reg[4]_i_1_n_4 ),
        .Q(count_reg[7]),
        .R(reset));
  FDRE \count_reg[8] 
       (.C(clkin),
        .CE(btn_in),
        .D(\count_reg[8]_i_1_n_7 ),
        .Q(count_reg[8]),
        .R(reset));
  CARRY4 \count_reg[8]_i_1 
       (.CI(\count_reg[4]_i_1_n_0 ),
        .CO({\count_reg[8]_i_1_n_0 ,\count_reg[8]_i_1_n_1 ,\count_reg[8]_i_1_n_2 ,\count_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[8]_i_1_n_4 ,\count_reg[8]_i_1_n_5 ,\count_reg[8]_i_1_n_6 ,\count_reg[8]_i_1_n_7 }),
        .S(count_reg[11:8]));
  FDRE \count_reg[9] 
       (.C(clkin),
        .CE(btn_in),
        .D(\count_reg[8]_i_1_n_6 ),
        .Q(count_reg[9]),
        .R(reset));
  LUT4 #(
    .INIT(16'h00E0)) 
    state_i_1
       (.I0(btn_out),
        .I1(p_0_in),
        .I2(btn_in),
        .I3(reset),
        .O(state_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    state_reg
       (.C(clkin),
        .CE(1'b1),
        .D(state_i_1_n_0),
        .Q(btn_out),
        .R(1'b0));
  CARRY4 state_reg_i_2
       (.CI(state_reg_i_3_n_0),
        .CO({NLW_state_reg_i_2_CO_UNCONNECTED[3],state_reg_i_2_n_1,state_reg_i_2_n_2,state_reg_i_2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({p_0_in,NLW_state_reg_i_2_O_UNCONNECTED[2:0]}),
        .S(count_reg[20:17]));
  CARRY4 state_reg_i_3
       (.CI(state_reg_i_4_n_0),
        .CO({state_reg_i_3_n_0,state_reg_i_3_n_1,state_reg_i_3_n_2,state_reg_i_3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_state_reg_i_3_O_UNCONNECTED[3:0]),
        .S(count_reg[16:13]));
  CARRY4 state_reg_i_4
       (.CI(state_reg_i_5_n_0),
        .CO({state_reg_i_4_n_0,state_reg_i_4_n_1,state_reg_i_4_n_2,state_reg_i_4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_state_reg_i_4_O_UNCONNECTED[3:0]),
        .S(count_reg[12:9]));
  CARRY4 state_reg_i_5
       (.CI(state_reg_i_6_n_0),
        .CO({state_reg_i_5_n_0,state_reg_i_5_n_1,state_reg_i_5_n_2,state_reg_i_5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_state_reg_i_5_O_UNCONNECTED[3:0]),
        .S(count_reg[8:5]));
  CARRY4 state_reg_i_6
       (.CI(1'b0),
        .CO({state_reg_i_6_n_0,state_reg_i_6_n_1,state_reg_i_6_n_2,state_reg_i_6_n_3}),
        .CYINIT(count_reg[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_state_reg_i_6_O_UNCONNECTED[3:0]),
        .S(count_reg[4:1]));
endmodule

(* CHECK_LICENSE_TYPE = "seg_decoder_Debouncer_0_0,Debouncer,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "Debouncer,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (btn_in,
    clkin,
    reset,
    btn_out);
  input btn_in;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clkin CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clkin, ASSOCIATED_RESET reset, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN seg_decoder_clkin, INSERT_VIP 0" *) input clkin;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input reset;
  output btn_out;

  wire btn_in;
  wire btn_out;
  wire clkin;
  wire reset;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Debouncer inst
       (.btn_in(btn_in),
        .btn_out(btn_out),
        .clkin(clkin),
        .reset(reset));
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
