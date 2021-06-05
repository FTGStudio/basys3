`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/15/2021 09:24:36 PM
// Design Name: 
// Module Name: Seven_Segement_III_tb
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


module Seven_Segement_III_tb();

reg [16:0] sw;
reg rst;
reg BTN;
reg clk;
wire [6:0] seg;
wire [3:0] an;
integer i;

Seven_Segment_III uut(.sw(sw), .BTN(BTN), .rst(rst), .clk(clk), .seg(seg), .an(an));

always
    #1 clk = ~clk;

initial begin
    clk = 0;
    rst = 1;
    #10
    rst = 0;
    BTN = 0;
    #10
    BTN = 1;
    #10
    BTN = 0;
    sw[16:5] = 0;
    
    for(i=0; i<10; i=i+1) begin
        sw[4:0] = i;
        #2;
    end
end

endmodule
