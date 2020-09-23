`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.08.2020 03:35:40
// Design Name: 
// Module Name: flopenrc
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

// synchronous clear and enable
module flopenrc#(parameter width=8)(
input clk,reset,en,clear,
input [width-1:0] d,
output reg [width-1:0] q
);

always@(posedge clk or posedge reset)
begin
    if(reset)q<=0;
    else if (clear)q<=0;
    else if(en)q<=d;
end
endmodule
