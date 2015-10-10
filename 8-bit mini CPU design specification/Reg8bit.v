`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    07:21:20 05/31/2015 
// Design Name: 
// Module Name:    Reg8bit 
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
module Reg8bit(
    input [7:0] D,
	 input CLK,
	 input CLR,
	 input En,
    output [7:0] Q
    );

	reg[7:0] tempQ;
	
	always @(posedge CLK)
	begin
		if (En)
		begin
			if (CLR)
				tempQ = 8'b00000000;
			else
				tempQ = D;
		end
	end
	
	assign Q = tempQ;

endmodule
