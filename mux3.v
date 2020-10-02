`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.08.2020 19:35:38
// Design Name: 
// Module Name: mux3
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
module mux3#(width =8)(
input [width-1:0] d0,d1,d2,
input [1:0]s,
output reg [width-1:0] y
);

always@(*)
begin
    case(s)
    2'b00: y=d0;
    2'b01: y=d1;
    2'b10: y=d2;
    default: y=32'bx;
    endcase
end
endmodule
