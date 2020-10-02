`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.08.2020 19:36:33
// Design Name: 
// Module Name: instr_mem
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
module instr_mem
(input [5:0]ra,
output [31:0]data);

reg [31:0] imem[63:0];

initial
begin
    $readmemh ("memfile.dat",imem);
end

assign data=imem[ra];
endmodule
