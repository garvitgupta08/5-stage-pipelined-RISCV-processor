`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.08.2020 19:08:13
// Design Name: 
// Module Name: Datapath
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
module Datapath(
input clk,reset,
input memtoregE,memtoregM,memtoregW,
input pcsrcD,branchD,
input alusrcE,reg_destE,
input regwriteE,regwriteM,regwriteW,
input [2:0]alucontrolE,
output equalD,
output [31:0]pcF,
input [31:0]instrF,
output[31:0]aluoutM,writedataM,
input [31:0] readdataM,
output [6:0]op,funct,
output [2:0]width,
output flushE
 );
 wire [1:0]forwardAD,forwardBD;
 wire [1:0]forwardAE,forwardBE;
 wire [4:0] rsD,rtD,rdD,rsE,rtE,rdE;
 wire [4:0] writeregE,writeregM,writeregW;
 wire [31:0] srcaD,srca2D,srcaE,srca2E;
 wire [31:0] srcbD,srcb2D,srcbE,srcb2E,srcb3E;
 wire [31:0]signimmD1,signimmD2,signimmE,signimmE1,signimmE2,signimmshD;
 wire [31:0]pcplus4F,pcplus4D,instrD;
 wire [31:0]pcbranchD;
 wire[31:0] pcnextbrfd;
 wire [31:0]aluoutE,aluoutW;
 wire [31:0] readdataW,resultW;
 //hazard signals
 wire stallF,stallD,flushD;
 
 //hazard unit
 hazard hz(rsD,rtD,rsE,rtE,writeregE,writeregM,writeregW,memtoregE,memtoregM,regwriteE,regwriteM,regwriteW,branchD,stallF,stallD,flushE,forwardAD,forwardBD,forwardAE,forwardBE);

 ///////////////////////////////////// / fetch phase  ///////////////////////////////////////
 mux2 #(32) pcbrmux(pcplus4F,pcbranchD,pcsrcD,pcnextbrfd);
 // fetch pipeline register
 flopenr#(32) f1(clk,reset,~stallF,pcnextbrfd,pcF);
 adder a1(pcF,32'b100,pcplus4F);
 
 ////////////////////////////// fetch to decode phase pipeline registers /////////////////////////////
 assign flushD=pcsrcD;
 flopenrc#(32)f2(clk,reset,~stallD,flushD,instrF,instrD); 
 flopenr#(32)f3(clk,reset,~stallD,pcplus4F, pcplus4D);
 
 /////////////////////////////////////// Decode phase///////////////////////////////////////// 
 assign op=instrD[6:0];
 assign width=instrD[14:12];
 assign funct=instrD[31:25];
 assign rsD=instrD[24:20];
 assign rtD=instrD[19:15];
 assign rdD=instrD[11:7];
 register_file rf(clk,regwriteW,rsD,rtD,writeregW,resultW,srcaD,srcbD);
 // sign extension
 signext signextension1 (instrD[31:20],signimmD1);
 signext signextension2 ({instrD[31:25],instrD[11:7]},signimmD2);
 // muxes for forwarding logic
 mux3 #(32) srcamux(srcaD,aluoutM,resultW,forwardAD,srca2D);
 mux3 #(32) srcbmux(srcbD,aluoutM,resultW,forwardBD,srcb2D);
 // comparator for branch instruction
 eqcmp cmp(srca2D,srcb2D,equalD);
 shiftleft2 sl2(signimmD2,signimmshD);
 adder a2(signimmshD,pcplus4D,pcbranchD);
 
 ////////////////////// decode to execute phase pipeline register ///////////////////////////
 ////////////////////////////// total 6 signals //////////////////////////////////
 floprc #(32) r1E(clk,reset,flushE,srcaD,srcaE);
 floprc #(32) r2E(clk,reset,flushE,srcbD,srcaE);
 floprc #(32) r3E(clk,reset,flushE,signimmD1,signimmE1);
 floprc #(32) r4E(clk,reset,flushE,signimmD2,signimmE2);
 floprc #(32) r5E(clk,reset,flushE,rsD,rsE);
 floprc #(32) r6E(clk,reset,flushE,rtD,rtE);
 floprc #(32) r7E(clk,reset,flushE,rdD,rdE);
 
 //////////////////////////////////////////// Execute Phase //////////////////////////////////////
 mux2 #(5) wrmux(rtE,rdE,reg_destE,writeregE);
 mux3 #(32) forwardaemux(srcaE,aluoutM,resultW,forwardAE,srca2E);
 mux3 #(32) forwardbemux(srcbE,aluoutM,resultW,forwardBE,srcb2E);
 mux2 #(32) extended_decide_value(signimmE2,signimmE1,reg_destE,signimmE);
 mux2 #(5) srcbmux2(srcb2E,signimmE,alusrcE,srcb3E);
 alu a(srca2E,srcb3E,alucontrolE,aluoutE);
 
 ///////////////////////// Pipeline registers execute to memory ////////////////////////////////
 /////////////////////////////  3 signals /////////////////////////
 flopr #(32)r1m(clk,reset,aluoutE,aluoutM);
 flopr #(32)r2m(clk,reset,srcb2E,writedataM); // value to be written during store instruction
 flopr #(5)r3m(clk,reset,writeregE,writeregM);
 
 //////////////////////////// writeback phase //////////////////////////////////////
 flopr #(32)r1w(clk,reset,readdataM,readdataW);
 flopr #(32)r2w(clk,reset,aluoutM,aluoutW);
 flopr #(5)r3w(clk,reset,writeregM,writeregW);
 mux2 #(32)resmux(aluoutW,readdataW,memtoregW,resultW);

endmodule
