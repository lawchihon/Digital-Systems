`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:53:03 04/08/2015
// Design Name:   FullAdder
// Module Name:   FullAdderTest.v
// Project Name:  Full Adder
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: FullAdder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module FullAdderTest;

	// Inputs
	reg A;
	reg B;
	reg C;

	// Outputs
	wire Sum;
	wire Cout;

	// Instantiate the Unit Under Test (UUT)
	FullAdder uut (
		.A(A), 
		.B(B), 
		.C(C), 
		.Sum(Sum), 
		.Cout(Cout)
	);

	initial begin
		// Initialize Inputs
		A = 0;
		B = 0;
		C = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

		A = 0;
		B = 0;
		C = 1;
		
		#100;
		
		A = 0;
		B = 1;
		C = 0;
		
		#100;

		A = 0;
		B = 1;
		C = 1;
		
		#100;
		
		A = 1;
		B = 0;
		C = 0;
		
		#100;
		
		A = 1;
		B = 0;
		C = 1;
		
		#100;
		
		A = 1;
		B = 1;
		C = 0;
		
		#100;
		
		A = 1;
		B = 1;
		C = 1;
		
		#100;

	end
      
endmodule

