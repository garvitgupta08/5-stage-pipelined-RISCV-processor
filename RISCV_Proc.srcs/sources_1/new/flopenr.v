`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.08.2020 20:09:10
// Design Name: 
// Module Name: flopenr
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
/////////////////////////////////////////////////////////////////////////////////
module flopenr#(parameter width=8)(
input clk,reset,we,
input [width-1:0] d,
output reg [width-1:0]q
);
    always@(posedge clk or posedge reset)
    begin
        if(reset) q<=0;
        else if(we)q<=d;
    end
endmodule
