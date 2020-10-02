`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.08.2020 23:13:27
// Design Name: 
// Module Name: main_dec
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

module main_dec(
   input[6:0]op,
   output regwriteD,
   output branchD,
   output alusrcD,
   output reg_destD,
   output[1:0]aluop, 
   output memwriteD,
   output memtoregD);

 reg [7:0] controls;
 assign {regwriteD,reg_destD,alusrcD,branchD,memwriteD,memtoregD,aluop}=controls;
 
 always@(*)
 begin
    case(op)
    7'b0110011: controls<=8'b10010010;  // Rtype
    7'b0010011: controls<=8'b10100000;  // addi
    7'b0000011: controls<=8'b10100100;  // LW
    7'b0100011: controls<=8'b00101000;  // SW
    7'b1100011: controls<=8'b00010001;  // Beq
    default:    controls<=8'bxxxxxxxx;   // ???
    endcase
 end
endmodule
