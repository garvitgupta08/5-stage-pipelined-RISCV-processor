`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.08.2020 19:08:13
// Design Name: 
// Module Name: register_file
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
module register_file(
input clk,input we,
input [4:0]ra1,ra2,
input[4:0]wa1,
input [31:0]wd,
output[31:0]rd1,rd2);

reg[31:0] regfile[31:0];

assign rd1=(ra1!=0)?(regfile[ra1]):0;
assign rd2=(ra2!=0)?(regfile[ra2]):0;

always@(posedge clk)
begin
    if(we)
    regfile[wa1]<=wd;
end
endmodule
