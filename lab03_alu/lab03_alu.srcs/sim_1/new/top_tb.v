`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/27/2021 08:13:59 PM
// Design Name: 
// Module Name: top_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module top_tb();

reg clk, rst, btn_u, btn_d, btn_l, btn_r, btn_c, an_en;
reg [3:0] switch_0, switch_1, val;
reg [6:0] segment_0, segment_1;
reg [1:0] state;
wire ovf, b, eq;
wire [3:0] data_out;
wire [2:0] select;
wire [1:0] sel;
wire clk_out;
wire [6:0] segment_out;
wire [3:0] anode_out;
parameter idle = 0, delay_5s = 1, disp_op=2;

always
    #1 clk = ~clk;

btn_mux uut_btn (.clk(clk), .rst(rst), .btn_d(btn_d), .btn_u(btn_u), .btn_l(btn_l), .btn_r(btn_r), .btn_c(btn_c), .select(select));
alu uut_alu (.clk(clk), .data_a(switch_0), .data_b(switch_1), .rst(rst), .select(select), .ovf(ovf), .b(b), .eq(eq), .data_out(data_out));
clk_div_1mhz uut_clk_div_1mhz (.clk(clk), .rst(rst), .clk_out(clk_out));
two_bit_counter uut_two_bit_counter (.clk(clk), .rst(rst), .count(sel));
seg_decoder uut_seg_decoder(.rst(rst), .val(val), .segment_out(segment_out));
segment_mux uut_segment_mux (.sel(sel), .segment_0(segment_0), .segment_1(segment_1), .segment_out(segment_out));
anode_mux uut_anode_mux (.sel(sel), .en(an_en), .anode_out(anode_out));

initial begin
    val = 4'b0000;
    switch_0 = 4'b0001;
    switch_1 = 4'b0001;
    clk = 0;
    rst = 1;
    an_en = 1;
    #2
    rst = 0;
    btn_c = 1;
    #2
    btn_d =0;
 end
 
 always @(state)
 begin
    case (state)
        idle: an_en = 1;
        delay_5s: an_en = 0;
        default: an_en = 1;
    endcase
 end
 
 always @(posedge clk)
 begin
    case(state)
    idle: begin
        if(btn_c)
            state = delay_5s;
    end
    delay_5s: begin
        state = idle;
    end
    default:
        state = idle;
    endcase
 end

endmodule
