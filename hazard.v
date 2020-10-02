`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.08.2020 02:13:03
// Design Name: 
// Module Name: hazard
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
module hazard(
input [4:0]rsD,rtD,rsE,rtE,
input [4:0]writeregE,writeregM,writeregW,
input memtoregE,memtoregM,
input regwriteE,regwriteM,regwriteW,
input branchD,
output stallF,stallD,flushE,
output reg [1:0]forwardAD,forwardBD,
output reg [1:0]forwardAE,forwardBE
);
 
/////////////// forwarding logic //////////////
 always@(*)
 begin
    forwardAE=2'b00;
    forwardBE=2'b00;
    if(rsE!=0)
    begin
        if(rsE==writeregM & regwriteM)forwardAE=2'b01;
        else if(rsE==writeregW & regwriteW)forwardAE=2'b10;
     end
     if(rtE!=0)
    begin
        if(rtE==writeregM & regwriteM)forwardBE=2'b01;
        else if(rtE==writeregW & regwriteW)forwardBE=2'b10;
     end
 end
 
 always@(*)
 begin
    forwardAD=2'b00;
    forwardBD=2'b00;
    if(rsD!=0)
    begin
        if(rsD==writeregM & regwriteM)forwardAD=2'b01;
        else if(rsD==writeregW & regwriteW)forwardAD=2'b10;
     end
     if(rtD!=0)
    begin
        if(rtD==writeregM & regwriteM)forwardBD=2'b01;
        else if(rtD==writeregW & regwriteW)forwardBD=2'b10;
     end
 end
    
////////////////////// stalling logic //////////////////////// 
wire lwstallD,branchstallD;
assign lwstallD=(memtoregE & (rsD==writeregE| rtD==writeregE));
assign branchstallD= branchD & (regwriteE & (rsD==writeregE | rtD==writeregE) | memtoregM &(rsD==writeregM|rtD==writeregM));
assign flushE=lwstallD | branchstallD;
assign stallD=flushE;
assign stallF=stallD;
endmodule
