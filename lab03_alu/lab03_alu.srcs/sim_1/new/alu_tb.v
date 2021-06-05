`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/27/2021 04:24:09 PM
// Design Name: 
// Module Name: alu_tb
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


module alu_tb();

reg clk, rst;
reg [2:0] select;
reg [3:0] data_a, data_b;
wire ovf, b, eq;
wire [3:0] data_out;

alu uut (.clk(clk), .data_a(data_a), .data_b(data_b), .rst(rst), .select(select), .ovf(ovf), .b(b), .eq(eq), .data_out(data_out));

always
    #1 clk = ~clk;

initial begin
    clk = 0;
    rst = 0;
    data_a = 1;
    data_b = 1;
    select = 4'b0001;
end

endmodule
