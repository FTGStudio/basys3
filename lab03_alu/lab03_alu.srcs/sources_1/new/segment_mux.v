`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/28/2021 04:24:24 PM
// Design Name: 
// Module Name: segment_mux
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


module segment_mux(sel, segment_0, segment_1, segment_out);
input [1:0] sel;
input [6:0] segment_0, segment_1;
output [6:0] segment_out;

reg [6:0] segment_out;

always @(*)
begin
    case(sel)
    2'b00: segment_out = segment_0;
    2'b01: segment_out = segment_1;
    default: segment_out = 7'b1111111;
    endcase
end

endmodule
