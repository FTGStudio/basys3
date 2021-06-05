`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/15/2021 05:44:32 PM
// Design Name: 
// Module Name: seven_segment_bcd_tb
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


module seven_segment_bcd_tb();

reg [3:0] bcd;
reg rst;
reg btnC;
reg clk;
wire [6:0] seg;
wire [3:0] an;
integer i;

Seven_Segment_II uut (.sw(bcd), .rst(rst), .btnC(btnC), .clk(clk), .seg(seg), .an(an));

always
    #1 clk = ~clk;

initial begin
    clk = 0;
    rst = 0;
    btnC = 1;
    for(i=0; i<10; i=i+1) begin
        bcd = i;
        #2;
    end
    btnC = 0;
end

endmodule
