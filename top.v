`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.08.2020 19:08:13
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
////////////////////////////////////////////////////////////////////////////////////////////
module top
(input clk,reset,
output [31:0]writedataM,aluoutM,
output memwriteM
);
    
wire [31:0] readdataM,instrF,pcF;
instr_mem imem(pcF,instrF);
mips_proc RISCV(clk,reset,readdataM,instrF,pcF,aluoutM,writedataM,memwriteM);  // processor
data_mem dmem(clk,memwriteM,aluoutM,writedataM,readdataM);
endmodule
