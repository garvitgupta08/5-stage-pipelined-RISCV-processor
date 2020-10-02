`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.08.2020 09:17:23
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


module alu(
input [31:0] srca,srcb,
input [2:0] alucontrol,
output reg [31:0]aluout
);

always@(*)
begin
    case(alucontrol)
    3'b010: aluout=srca+srcb;
    3'b110: aluout=srca-srcb;
    3'b000: aluout=srca&srcb;
    3'b001: aluout=srca | srcb;
    default: aluout=32'bx;
    endcase
end

endmodule
