`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    07:13:19 05/31/2015 
// Design Name: 
// Module Name:    Comparator 
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
module Comparator(
    input [7:0] A,
    input [7:0] B,
    output [7:0] Y
    );

	reg[7:0] tempY;
	
	always @(*)
	begin
		if (A == B)
			tempY = 8'b00000000;
		else if (A > B)
			tempY = 8'b00000001;
		else
			tempY = 8'b11111111;
	end
	
	assign Y = tempY;

endmodule
