`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.08.2020 19:08:13
// Design Name: 
// Module Name: mips_proc
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
//////////////////// processor gets input from instrn and data memory and sends output to data memory //////////
module mips_proc(
input clk,reset,
input [31:0]readdataM, 
input [31:0]instrF,
output [31:0]pcF,
output [31:0]aluoutM,writedataM,
output memwriteM
);
    wire flushE;
    wire [6:0]op,funct;
    wire [2:0]width;
    wire equalD;
    wire regwriteE,regwriteM,regwriteW;
    wire reg_destE,alusrcE,pcsrcD,branchD;
    wire memtoregE,memtoregM,memtoregW;
    wire [2:0] alucontrolE;
    
   Controller c(clk,reset,flushE,op, width,funct,equalD,reg_destE,memtoregE,memtoregM,memtoregW, memwriteM,alusrcE,regwriteE,regwriteM,regwriteW,pcsrcD,branchD,alucontrolE);
   Datapath d(clk,reset,memtoregE,memtoregM,memtoregW,pcsrcD,branchD,alusrcE,reg_destE,regwriteE,regwriteM,regwriteW,alucontrolE,equalD,pcF,instrF,aluoutM,writedataM,readdataM,op,funct,width,flushE);   
endmodule
