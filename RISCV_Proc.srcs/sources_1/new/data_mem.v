`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.08.2020 19:36:33
// Design Name: 
// Module Name: data_mem
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

module data_mem(input clk,input we,
input [31:0]addr,
input [31:0]wd,
output[31:0]out_data);

reg [31:0] dmem[63:0]; // here it only stores 64 words for prototyping but since addr is 32 bits it can store 2^30 word
assign out_data=dmem[addr[31:2]]; // word aligned

always@(posedge clk)
begin
    if (we)
        dmem[addr[31:2]] <= wd; // word aligned
end
endmodule
