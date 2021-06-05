`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/27/2021 07:47:06 PM
// Design Name: 
// Module Name: btn_mux
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


module btn_mux(clk, rst, btn_u, btn_d, btn_l, btn_r, btn_c, select);
input clk, rst, btn_u, btn_d, btn_l, btn_r, btn_c;
output [2:0] select;

reg [2:0] select;

always @(posedge clk)
begin
    if(rst)
        select = 3'b000;
    else begin
        if(btn_u)
            select = 3'b001;
        else if(btn_r)
            select = 3'b010;
        else if(btn_d)
            select = 3'b011;
        else if(btn_l)
            select = 3'b100;
        else if(btn_c)
            select = 3'b101;
        else
            select = 3'b000;
        end
     end
endmodule
