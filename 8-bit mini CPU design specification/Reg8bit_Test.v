`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:48:10 05/31/2015
// Design Name:   Reg8bit
// Module Name:   Reg8bit_Test.v
// Project Name:  8-bit mini CPU design specification
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Reg8bit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Reg8bit_Test;

	// Inputs
	reg [7:0] D;
	reg CLK;
	reg CLR;
	reg En;

	// Outputs
	wire [7:0] Q;

	// Instantiate the Unit Under Test (UUT)
	Reg8bit uut (
		.D(D), 
		.CLK(CLK), 
		.CLR(CLR), 
		.En(En), 
		.Q(Q)
	);
	
	always begin
		#5
		CLK = !CLK;
	end
	
	initial begin
		// Initialize Inputs
		CLK = 0;
		D = 0;
		CLR = 0;
		En = 0;

		// Wait 100 ns for global reset to finish
		#20;
        
		// Add stimulus here
		D = 10;
		CLR = 0;
		En = 3'b010;
		#100;
		D = 1;
		CLR = 1;
		En = 7;
	end
      
endmodule

