`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    07:04:14 05/31/2015 
// Design Name: 
// Module Name:    ShiftLeft 
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
module ShiftLeft(
    input [7:0] A,
    output [7:0] Y,
    output ov
    );

	assign ov = A[7];
	assign Y = A << 1;

endmodule
