`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:17:57 05/31/2015
// Design Name:   Comparator
// Module Name:   Comparator_Test.v
// Project Name:  8-bit mini CPU design specification
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Comparator
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Comparator_Test;

	// Inputs
	reg [7:0] A;
	reg [7:0] B;

	// Outputs
	wire [7:0] Y;

	// Instantiate the Unit Under Test (UUT)
	Comparator uut (
		.A(A), 
		.B(B), 
		.Y(Y)
	);

	initial begin
		// Initialize Inputs
		A = 0;
		B = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		A = 1;
		B = 0;
		#100;
		A = 0;
		B = 1;
		#100;
	end
      
endmodule

