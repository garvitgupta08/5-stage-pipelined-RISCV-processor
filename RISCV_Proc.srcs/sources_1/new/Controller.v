`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.08.2020 19:08:13
// Design Name: 
// Module Name: Controller
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
module Controller(
input clk,reset,
input flushE,
input[6:0]op,
input[2:0]width,
input[6:0] funct,
input equalD,
output reg_destE,            // for selecting the destination register to which data will be written in register file
output memtoregE,memtoregM,memtoregW,  //memtoreg is mux select signal to send the data either from ALU or from Data memeory
output memwriteM,  // mewwrite is write enable signal for data memory
output alusrcE,                 // selecting the second source from immediate or second register
output regwriteE,regwriteM,regwriteW,// write enable signal for register file
output pcsrcD,branchD,    // pcsrcD is the select signal for mux choosing between address for branch and pc+4
output [2:0]alucontrolE   // alucontrol for selecting the arithmetic instruction to be performed in ALU
);
    // these signals are declared as output for each phase of inst excecution cycle because they are inputs to hazard units in their respective phase
    //therefore there is no need of memwriteE
    // instantiate main decoder,aludecoder and registers for pipelining
    wire memtoregD,memwriteD,regwriteD,alusrcD,reg_destD;
    wire [1:0]aluop;
    main_dec decoder1(op,regwriteD,branchD,alusrcD,reg_destD,aluop, memwriteD,memtoregD);
    wire [2:0]alucontrolD;
    alu_dec decoder2(funct,width,aluop,alucontrolD );
   wire memwriteE;
    
    assign pcsrcD=branchD & equalD;
    // instantiation of pipeline registers floprc and flopr
    floprc #(8)regE(clk,reset,flushE,
                {memtoregD,memwriteD,regwriteD,alusrcD,reg_destD,alucontrolD},
                {memtoregE,memwriteE,regwriteE,alusrcE,reg_destE,alucontrolE});
                
    flopr #(3) regM(clk,reset,
                    {memwriteE,memtoregE,regwriteE},
                    {memwriteM,memtoregM,regwriteM});
                    
     flopr #(2) regW(clk,reset,
                    {memtoregM,regwriteM},
                    {memtoregW,regwriteW});
endmodule
