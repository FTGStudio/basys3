`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/27/2021 08:43:11 PM
// Design Name: 
// Module Name: clk_div_1mhz
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


module clk_div_1mhz(clk, rst, clk_out);
input clk, rst;
output clk_out;

reg [27:0]count;
reg clk_out;

always @(posedge clk or posedge rst)
begin
    if(rst)
        begin
            count <= 0;
            clk_out <= 1'b0;
        end
    else if(count == 10000)
        begin
            count <= 0;
            clk_out <= ~clk_out;
        end
    else
        count <= (count + 1);
end
endmodule
