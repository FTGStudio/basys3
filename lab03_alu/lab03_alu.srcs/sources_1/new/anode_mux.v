`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/28/2021 04:30:10 PM
// Design Name: 
// Module Name: anode_mux
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


module anode_mux(sel, rst, en, anode_out);
input [1:0] sel;
input en, rst;
output [3:0] anode_out;

reg [3:0] anode_out;

always @(*)
begin
    if(rst)
        anode_out = 4'b1111;
    if(en) begin
        case(sel)
        2'b00: anode_out = 4'b1110;
        2'b01: anode_out = 4'b1101;
        2'b10: anode_out = 4'b1011;
        2'b11: anode_out = 4'b0111;
        default: anode_out = 4'b1111;
        endcase
    end
    else
        anode_out = 4'b1111;
end
endmodule
