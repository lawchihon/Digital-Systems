`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:08:31 05/31/2015
// Design Name:   InstructionDecoder
// Module Name:   InstructionDecoder_Test.v
// Project Name:  8-bit mini CPU design specification
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: InstructionDecoder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module InstructionDecoder_Test;

	// Inputs
	reg [3:0] Instruction;

	// Outputs
	wire CLR;
	wire [2:0] En;
	wire [2:0] S;

	// Instantiate the Unit Under Test (UUT)
	InstructionDecoder uut (
		.Instruction(Instruction), 
		.CLR(CLR), 
		.En(En), 
		.S(S)
	);

	initial begin
		// Initialize Inputs
		Instruction = 0;

		// Wait 100 ns for global reset to finish
		#50;
      
		// Add stimulus here
		Instruction = 4'b0000;
		#50;
		Instruction = 4'b0000;
		#50;
		Instruction = 4'b0000;
		#50;
		Instruction = 4'b0000;
		#50;
		Instruction = 4'b0000;
		#50;
		Instruction = 4'b0000;
		#50;
		Instruction = 4'b0000;
		#50;
		Instruction = 4'b0000;
		#50;
		Instruction = 4'b0000;
		#50;
		Instruction = 4'b0000;
		#50;
		Instruction = 4'b0000;
		#50;
		Instruction = 4'b0000;
		#50;
		Instruction = 13;
		#50;

	end
      
endmodule

