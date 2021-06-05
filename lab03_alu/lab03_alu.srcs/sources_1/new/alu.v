`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/27/2021 02:04:17 PM
// Design Name: 
// Module Name: alu
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


module alu(clk, rst, data_a, data_b, select, ovf, b, eq, data_out);
input clk, rst;
input [2:0] select;
input [3:0] data_a, data_b;
output ovf, b, eq;
output [3:0] data_out;

reg ovf, b, eq;
reg [3:0] data_out;
parameter add = 1, subtract=2, shift_left=3, compare=4, reset=5;

always @(posedge clk) begin
    case(select)
    add: begin
        data_out = data_a + data_b;
        ovf = data_out[3];
        b = 0;
        eq = 0;
    end
    subtract: begin
        data_out = data_a - data_b;
        ovf = 0;
        b = 1;
        eq = 0;
    end
    shift_left: begin
        data_out = data_a << 1;
        ovf = 0;
        b = 0;
        eq = 0;
    end
    compare: begin
        data_out = (data_a == data_b);
        ovf = 0;
        b = 0;
        if(data_out)
            eq = 1;
        else
            eq = 0;
    end
    reset: begin
        data_out = 4'b0000;
        ovf = 0;
        b = 0;
        eq = 0;
    end
    default: begin
        data_out = 4'b1111;
        ovf = 0;
        b = 0;
        eq = 0;
    end
    endcase
end
endmodule
