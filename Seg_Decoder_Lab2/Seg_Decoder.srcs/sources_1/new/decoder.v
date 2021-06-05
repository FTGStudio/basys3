`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/12/2020 11:25:26 PM
// Design Name: 
// Module Name: decoder
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


module decoder(btn_in, reset, switch, segment_out);
input btn_in;
input reset;
input [3:0] switch;
output [6:0] segment_out;

reg [6:0] tmp_out;

always @(posedge btn_in or posedge reset)
begin
    if(reset)
        tmp_out = 7'b0000000;
    else
    begin
    case(switch)
       4'b0000: tmp_out = 7'b0000001;
       4'b0001: tmp_out = 7'b1001111;
       4'b0010: tmp_out = 7'b0010010; // "2" 
       4'b0011: tmp_out = 7'b0000110; // "3" 
       4'b0100: tmp_out = 7'b1001100; // "4" 
       4'b0101: tmp_out = 7'b0100100; // "5" 
       4'b0110: tmp_out = 7'b0100000; // "6" 
       4'b0111: tmp_out = 7'b0001111; // "7" 
       4'b1000: tmp_out = 7'b0000000; // "8"  
       4'b1001: tmp_out = 7'b0000100; // "9"
       4'b1010: tmp_out = 7'b0000010; // a
       4'b1011: tmp_out = 7'b1100000; // b
       4'b1100: tmp_out = 7'b0110001; // c
       4'b1101: tmp_out = 7'b1000010; // d
       4'b1110: tmp_out = 7'b0110000; // E
       4'b1111: tmp_out = 7'b0111000; // F
       default: tmp_out = 7'b0000001; // "0"
    endcase
    end
end

assign segment_out = tmp_out;


endmodule
