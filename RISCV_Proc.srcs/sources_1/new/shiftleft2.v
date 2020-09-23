`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.08.2020 20:04:36
// Design Name: 
// Module Name: shiftleft2
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



module shiftleft2 (
input  [31:0] a,
output [31:0] y);
// shift left by 2
    assign y = {a[29:01], 2'b00};
endmodule

