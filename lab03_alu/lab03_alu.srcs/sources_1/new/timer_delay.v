`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/29/2021 09:36:08 PM
// Design Name: 
// Module Name: timer_delay
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


module timer_delay(en, clk, rst, trigger);
input en, clk, rst;
output trigger;

reg trigger;
reg [31:0] count = 0;
reg [31:0] second_count = 0;
always @(posedge clk)
    if (rst) begin
        count = 0;
        second_count = 0;
    end
    else begin
        if (en) begin
            if(count == 100000000) begin
                second_count = second_count + 1;
                count = 0;
                if(second_count == 5) begin
                    trigger = 1;
                    second_count = 0;
                end
                else
                    trigger = 0;
            end
            else begin
                count = count + 1;
                trigger = 0;
            end
        end
    end
begin

end

endmodule
