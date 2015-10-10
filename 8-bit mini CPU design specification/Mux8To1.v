`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    07:44:31 05/31/2015 
// Design Name: 
// Module Name:    Mux8To1 
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
module Mux8To1(
    input[7:0]  A, B, C, D, E, F, G,
    input [3:0] Sel,
    output [7:0] Y
    );
	
	reg[7:0] tempY;
	
	always @(*)
	begin
		if (Sel == 4'b0100)
			 tempY  = A;
		else if (Sel == 4'b0101)
			  tempY  = B;
		else if (Sel == 4'b0110)
			  tempY  = C;
		else if (Sel == 4'b0111)
			  tempY = D;
		else if (Sel == 4'b1000)
			  tempY  = E;
		else if (Sel == 4'b1001)
			  tempY  = F;
		else
			  tempY = G;
	end

	assign Y = tempY;

endmodule
