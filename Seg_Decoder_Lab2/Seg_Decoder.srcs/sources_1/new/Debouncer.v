`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/11/2020 06:47:14 PM
// Design Name: 
// Module Name: Debouncer
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


module Debouncer(btn_in, clkin, reset, btn_out);
input btn_in, clkin, reset;
output btn_out;

reg [20:0] count;
reg state = 0;

always @(posedge clkin)
if(reset == 1)
begin
    count <= 0;
    state <= 0;
end
else if(btn_in == 1)
begin
    count = count + 1;
    if(count[20] == 1)
        state = 1;
end
else
    state = 0;
    
assign btn_out = state;
endmodule
