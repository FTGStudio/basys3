`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/15/2021 04:10:45 PM
// Design Name: 
// Module Name: Seven_Segment_tb
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


module Seven_Segment_tb();
    reg [3:0] bcd;
    wire [6:0] seg;
    integer i;
    
    Seven_Segment uut (.bcd(bcd), .seg(seg));
    
    initial begin
        for(i=0; i<10; i=i+1) begin
            bcd = i;
            #1;
        end
    end
endmodule
