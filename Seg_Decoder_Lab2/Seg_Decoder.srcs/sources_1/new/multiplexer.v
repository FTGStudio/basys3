`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/13/2020 12:48:19 AM
// Design Name: 
// Module Name: multiplexer
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


module multiplexer(sel, btn, reset, seg0, seg1, seg2, seg3, anode, outseg);
input [0:6] seg0;
input [0:6] seg1;
input [0:6] seg2;
input [0:6] seg3;
input [0:1] sel;
input btn;
input reset;
output [0:3] anode;
output [0:6] outseg;

reg [0:3] tmp_anode;
reg [0:6] tmp_seg;

initial tmp_seg = 7'b0000000;

always @(*)
begin
    if(reset) begin
        tmp_anode = 4'b1111;
    end
    else if(btn) begin
        case(sel)
        2'b00:
        begin
            tmp_anode = 4'b0111;
            tmp_seg = seg0;
        end
        2'b01:
        begin
            tmp_anode = 4'b1011;
            tmp_seg = seg1;
        end
        2'b10:
        begin
            tmp_anode = 4'b1111;
            tmp_seg = seg2;
        end
        2'b11:
        begin
            tmp_anode = 4'b1111;
            tmp_seg = seg3;
        end
    endcase
    end
    else begin
        case(sel)
            2'b00:
            begin
                tmp_anode = 4'b1111;
                tmp_seg = seg0;
            end
            2'b01:
            begin
                tmp_anode = 4'b1011;
                tmp_seg = seg1;
            end
            2'b10:
            begin
                tmp_anode = 4'b1101;
                tmp_seg = seg2;
            end
            2'b11:
            begin
                tmp_anode = 4'b1110;
                tmp_seg = seg3;
            end
        endcase
    end
end

assign anode = tmp_anode;
assign outseg = tmp_seg;
endmodule