`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/28/2021 04:41:29 PM
// Design Name: 
// Module Name: anode_mux_tb
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


module anode_mux_tb();
reg clk, rst, an_en;
reg [1:0] sel;
wire [3:0] anode_out;

anode_mux uut (.sel(sel), .en(an_en), .anode_out(anode_out));

always
    #1 clk = ~clk;

initial begin
    rst = 1;
    clk = 0;
    an_en = 1;
    #2
    rst = 0;
    sel = 2'b00;
    #2
    an_en = 0;
    sel = 2'b01;
    #2
    sel = 2'b10;
    #2
    an_en = 1;
    sel = 2'b11;
    #4
    an_en = 0;
    #4
    an_en = 1;
end

endmodule
