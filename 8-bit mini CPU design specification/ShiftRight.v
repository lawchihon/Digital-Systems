`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    07:03:26 05/31/2015 
// Design Name: 
// Module Name:    ShiftRight 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module ShiftRight(
    input [7:0] A,
    output [7:0] Y
    );

	assign Y = A >> 1;

endmodule
