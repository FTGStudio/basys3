`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/11/2020 05:49:27 PM
// Design Name: 
// Module Name: clk_divider
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


module clk_divider(clkin, reset, clkout);
input clkin, reset;
output clkout;

reg [27:0]count;
reg clkout;

always @(posedge clkin or posedge reset)
begin
    if(reset)
        begin
            count <= 0;
            clkout <= 1'b0;
        end
    else if(count == 10000)
        begin
            count <= 0;
            clkout <= ~clkout;
        end
    else
        count <= (count + 1);
end
endmodule
