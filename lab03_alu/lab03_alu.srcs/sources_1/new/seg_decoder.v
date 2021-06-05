`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/28/2021 01:02:52 PM
// Design Name: 
// Module Name: seg_decoder
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


module seg_decoder(clk, rst, update_en, val, segment_out);
input rst, clk, update_en;
input [3:0] val;
output [6:0] segment_out;

reg [6:0] segment_out;
reg [3:0] previous_val = 4'b0000;
reg [6:0] previous_seg = 7'b1000000;

parameter idle=0, update=1;
reg state=idle;


always @(state)
begin
    case(state)
    idle: begin
        segment_out=previous_seg;
    end
    update: begin
        case(val)
           4'b0000: segment_out = 7'b1000000;
           4'b0001: segment_out = 7'b1111001;
           4'b0010: segment_out = 7'b0100100; // "2" 
           4'b0011: segment_out = 7'b0110000; // "3" 
           4'b0100: segment_out = 7'b0011001; // "4" 
           4'b0101: segment_out = 7'b0010010; // "5" 
           4'b0110: segment_out = 7'b0000010; // "6" 
           4'b0111: segment_out = 7'b1111000; // "7" 
           4'b1000: segment_out = 7'b0000000; // "8"  
           4'b1001: segment_out = 7'b0010000; // "9"
           4'b1010: segment_out = 7'b0100000; // a
           4'b1011: segment_out = 7'b0000011; // b
           4'b1100: segment_out = 7'b1000110; // c
           4'b1101: segment_out = 7'b0100001; // d
           4'b1110: segment_out = 7'b0000110; // E
           4'b1111: segment_out = 7'b0001110; // F
           default: segment_out=7'b1000000; // "0"
        endcase
        previous_seg = segment_out;
    end
    endcase
end

always @(posedge clk)
begin
    case(state)
    idle: begin
        if(update_en)
            state=update;
        else
            state=idle;
    end
    update: state=idle;
    endcase
end

endmodule
