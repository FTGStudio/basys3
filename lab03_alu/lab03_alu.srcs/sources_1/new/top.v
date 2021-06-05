`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/28/2021 04:55:02 PM
// Design Name: 
// Module Name: top
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


module top(clk, rst, btn_u, btn_r, btn_d, btn_l, switch_0, switch_1, outseg, anode, leds);
input clk, rst, btn_u, btn_r, btn_d, btn_l;
input [3:0] switch_0, switch_1;
output [6:0] outseg;
output [3:0] anode;
output [2:0] leds;
wire [2:0] leds;
wire [6:0] segment_0, segment_1;
wire clk_out;
wire [1:0] count;
wire [6:0] outseg;
wire [3:0] anode;
wire [2:0] select;
wire [3:0] data_out;
wire ovf;
wire b;
wire eq;
wire delay_trigger;
reg [3:0] data_stored;
reg an_en, timer_en, update_en;
parameter idle=0, display_off=1, display_on=2, delay=3;
reg [1:0] state = idle;
clk_div_1mhz clk_1mhz (.clk(clk), .rst(rst), .clk_out(clk_out));
two_bit_counter tbc (.clk(clk_out), .rst(rst), .count(count));
btn_mux btn_mx(.clk(clk), .rst(rst), .btn_u(btn_u), .btn_d(btn_d), .btn_l(btn_l), .btn_c(rst), .btn_r(btn_r), .select(select));
alu alu_0 (.clk(clk), .rst(rst), .data_a(switch_0), .data_b(switch_1), .select(select), .ovf(ovf), .b(b), .eq(eq), .data_out(data_out));
anode_mux anmx (.sel(count), .en(an_en), .anode_out(anode));
seg_decoder seg_dec_0 (.clk(clk), .rst(rst), .update_en(update_en), .val(data_out), .segment_out(segment_0));
seg_decoder seg_dec_1 (.clk(clk), .rst(rst), .update_en(update_en), .val(data_stored), .segment_out(segment_1));
segment_mux seg_mx (.sel(count), .segment_0(segment_0), .segment_1(segment_1), .segment_out(outseg));
timer_delay td(.en(timer_en), .clk(clk), .rst(rst), .trigger(delay_trigger));
led_mux led_mx(.ovf(ovf), .b(b), .eq(eq), .leds(leds));


always @(state)
 begin
    case (state)
        idle: begin 
            an_en = 0;
            timer_en = 0;
            update_en = 0;
        end
        display_off: begin
            an_en = 0;
            update_en = 0;
        end
        display_on: begin 
            an_en = 1;
            update_en = 1;
        end
        delay: begin
            timer_en = 1;
            update_en = 0;
        end
    endcase
 end
 
always @(posedge clk)
 begin
    case(state)
    idle: begin
        if(rst)
            state = idle;
        else if(btn_d) 
            state = display_on;
        else if(btn_l)
            state = display_on;
        else if(btn_r)
            state = display_on;
        else if(btn_u)
            state = display_on;
        else
            state = display_off;
    end
    display_off: begin
        if(rst)
            state = idle;
        else if(btn_d)
            state = display_on;
        else if(btn_l)
            state = display_on;
        else if(btn_r)
            state = display_on;
        else if(btn_u)
            state = display_on;
        else
            state = display_off;
    end
    display_on: begin
        if(rst)
            state = idle;
        else
            state = delay;
        data_stored = data_out;            
    end
    delay: begin
        if(delay_trigger)
            state = idle;
        else if(rst)
            state = idle;
        else
            state = delay;
    end
    default:
        state = idle;
    endcase
 end

endmodule
