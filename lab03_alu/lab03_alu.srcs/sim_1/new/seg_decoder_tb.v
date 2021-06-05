`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/28/2021 04:12:06 PM
// Design Name: 
// Module Name: seg_decoder_tb
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


module seg_decoder_tb();
reg rst, clk, update_en;
reg [3:0] val = 4'b0001;
wire [6:0] segment_out;

seg_decoder uut_seg_decoder (.clk(clk), .rst(rst), .update_en(update_en), .val(val), .segment_out(segment_out));

always
    #1 clk = ~clk;
    
initial begin
    clk = 0;
    rst = 1;
    #2
    rst = 0;
    update_en = 1;
    val = 4'b0010;
    #2
    update_en = 0;
    val = 4'b0001;
    #2
    update_en = 1;
    val = 4'b0100;
    #2
    update_en = 0;
    val = 4'b0001;

end

endmodule
