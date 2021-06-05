`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/28/2021 12:54:50 PM
// Design Name: 
// Module Name: two_bit_counter
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


module two_bit_counter(clk, rst, count);
input clk, rst;
output [1:0] count;

reg [1:0] count = 0;

always @(posedge clk)
begin
    if(rst)
        count = 0;
    else
        count = count + 1;
end

endmodule
