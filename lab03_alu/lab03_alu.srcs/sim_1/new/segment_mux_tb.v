`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/28/2021 04:33:46 PM
// Design Name: 
// Module Name: segment_mux_tb
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


module segment_mux_tb();
reg clk, rst;
reg [1:0] sel;
reg [7:0] segment_0, segment_1;
wire [7:0] segment_out;

segment_mux uut (.sel(sel), .segment_0(segment_0), .segment_1(segment_1), .segment_out(segment_out));

always
    #1 clk = ~clk;
    
initial begin
    clk = 0;
    rst = 1;
    #2
    rst = 0;
    sel = 2'b00;
    segment_0 = 7'b0000001;
    segment_1 = 7'b0000010;
    #2
    sel = 2'b01;
end
endmodule
