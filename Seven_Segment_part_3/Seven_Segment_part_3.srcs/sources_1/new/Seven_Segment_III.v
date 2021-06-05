`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/15/2021 08:26:19 PM
// Design Name: 
// Module Name: Seven_Segment_III
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


module Seven_Segment_III(sw, BTN, clk, rst, seg, an);

input [15:0] sw;
input BTN;
input rst;
input clk;

output [6:0] seg;
output [3:0] an;

reg [6:0] seg;
reg [3:0] an;
reg [1:0] count;

always @(posedge clk or posedge rst)
begin
    if(rst)
    begin
        seg <= 7'b1111111;
        an <= 4'b1111;
    end
    else
    begin
        if(BTN)
        begin
           case(count)
            2'b00:
            begin
                seg = sw[3:0];
                an = 4'b0111;
            end
            2'b01:
            begin
                seg = sw[7:4];
                an = 4'b1011;
            end
            2'b10:
            begin
                 seg = sw[11:8];
                 an = 4'b1111;
            end
            2'b11:
            begin
                 seg = sw[15:12];
                 an = 4'b1111;
            end
            endcase
        end
        else
        begin
            case(count)
            2'b00:
            begin
                seg = sw[3:0];
                an = 4'b1111;
            end
            2'b01:
            begin
                seg = sw[7:4];
                an = 4'b1011;
            end
            2'b10:
            begin
                 seg = sw[11:8];
                 an = 4'b1101;
            end
            2'b11:
            begin
                 seg = sw[15:12];
                 an = 4'b1110;
            end
            endcase
        end
    end
end

always @(posedge clk)
begin
    if(rst)
        count <= 0;
    else
        count <= count + 1;
end

endmodule
