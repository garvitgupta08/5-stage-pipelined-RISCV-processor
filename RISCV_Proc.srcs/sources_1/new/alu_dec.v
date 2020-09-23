`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.08.2020 01:57:22
// Design Name: 
// Module Name: alu_dec
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

module alu_dec(
input [6:0] funct,
input [2:0] width,
input [1:0]aluop,
output reg [2:0]alucontrol);

always@(*)
begin
case(aluop)
2'b00: alucontrol<=3'b010;  // add
2'b01: alucontrol<=3'b110;  // sub
default: case({funct,width})
        10'b0000000000: alucontrol<=3'b010;  // ADD
        10'b0100000000: alucontrol<=3'b110;  // SUB
        10'b0000000111: alucontrol<=3'b000; // AND
        10'b0000000110: alucontrol<=3'b001; // OR
        default: alucontrol<=3'bxxx;
        endcase
endcase
end
endmodule
