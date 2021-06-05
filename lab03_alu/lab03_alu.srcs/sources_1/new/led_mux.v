`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/02/2021 04:06:17 PM
// Design Name: 
// Module Name: led_mux
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


module led_mux(ovf, b, eq, leds);
input ovf, b, eq;
output [2:0] leds;

reg [2:0] leds;

always @(ovf, b, eq)
begin
    if(ovf)
        leds[0] = 1;
    else
        leds[0] = 0;
    
    if(b)
        leds[1] = 1;
    else
        leds[1] = 0;
        
    if(eq)
        leds[2] = 1;
    else
        leds[2] = 0;
end
endmodule
