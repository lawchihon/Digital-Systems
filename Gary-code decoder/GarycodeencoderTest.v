`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:05:02 04/08/2015
// Design Name:   Garycodeencoder
// Module Name:   GarycodeencoderTest.v
// Project Name:  Gary code encoder
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Garycodeencoder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module GarycodeencoderTest;

	// Inputs
	reg a;
	reg b;
	reg c;

	// Outputs
	wire w;
	wire x;
	wire y;

	// Instantiate the Unit Under Test (UUT)
	Garycodeencoder uut (
		.a(a), 
		.b(b), 
		.c(c), 
		.w(w), 
		.x(x), 
		.y(y)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		c = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		// Add stimulus here

		a = 0;
		b = 0;
		c = 1;
		
		#100;
		
		a = 0;
		b = 1;
		c = 0;
		
		#100;
		
		a = 0;
		b = 1;
		c = 1;
		
		#100;
		
		a = 1;
		b = 0;
		c = 0;
		
		#100;
		
		a = 1;
		b = 0;
		c = 1;
		
		#100;
		
		a = 1;
		b = 1;
		c = 0;
		
		#100;
		
		a = 1;
		b = 1;
		c = 1;
		
		#100;

	end
      
endmodule

