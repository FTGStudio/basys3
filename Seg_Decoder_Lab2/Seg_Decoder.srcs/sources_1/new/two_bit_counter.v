`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/13/2020 12:35:27 AM
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


module two_bit_counter(clk, reset, count);
input clk, reset;
output [1:0] count;

reg [1:0] tmp_count = 0;
always @(posedge clk)
begin
    if(reset == 1)
        tmp_count = 0;
    else
        tmp_count = tmp_count + 1;
end

assign count = tmp_count;
endmodule
