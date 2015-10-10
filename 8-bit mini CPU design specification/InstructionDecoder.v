`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    07:35:37 05/31/2015 
// Design Name: 
// Module Name:    InstructionDecoder 
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
module InstructionDecoder(
    input [3:0] Instruction,
	 output CLR,
    output [2:0] En,
	 output [3:0] S
    );

	reg[7:0] temp;

	always @(Instruction)
	begin
		if (Instruction == 4'b0000)
			temp = 8'b1111XXXX;
		else if (Instruction == 4'b0001)
			temp = 8'b0100XXXX;
		else if (Instruction == 4'b0010)
			temp = 8'b00100XXX;
		else if (Instruction == 4'b0011)
			temp = 8'b00101XXX;
		else if (Instruction == 4'b0100)
			temp = 8'b0001X000;
		else if (Instruction == 4'b1010)
			temp = 8'b0001X001;
		else if (Instruction == 4'b0110)
			temp = 8'b0001X010;
		else if (Instruction == 4'b0111)
			temp = 8'b0001X011;
		else if (Instruction == 4'b1000)
			temp = 8'b0001X100;
		else if (Instruction == 4'b1001)
			temp = 8'b0001X101;			
		else
			temp = 8'b0000XXXX;
	end

	assign CLR = temp[7];
	assign En = temp[6:4];
	assign S = temp[3:0];
	
endmodule
