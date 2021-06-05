`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/27/2021 07:58:00 PM
// Design Name: 
// Module Name: btn_mux_tb
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


module btn_mux_tb();

reg clk, rst, btn_u, btn_d, btn_l, btn_r, btn_c;
wire [2:0] select;

btn_mux uut (.clk(clk), .rst(rst), .btn_d(btn_d), .btn_u(btn_u), .btn_l(btn_l), .btn_r(btn_r), .btn_c(btn_c), .select(select));

always
    #1 clk = ~clk;
    
 initial begin
    clk = 0;
    rst = 0;
    #2
    btn_u = 1;
    #2
    btn_u = 0;
    btn_d = 1;
    #2
    btn_d = 0;
    btn_l = 1;
    #2
    btn_l = 0;
    btn_r = 1;
    #2
    btn_r = 0;
    btn_c = 1;
    #2
    btn_c = 0;
 end
endmodule
