`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:20:40 04/08/2015
// Design Name:   Garycodedecoder
// Module Name:   GarycodedecoderTest.v
// Project Name:  Gary code decoder
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Garycodedecoder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module GarycodedecoderTest;

	// Inputs
	reg w;
	reg x;
	reg y;

	// Outputs
	wire e;
	wire f;
	wire g;

	// Instantiate the Unit Under Test (UUT)
	Garycodedecoder uut (
		.w(w), 
		.x(x), 
		.y(y), 
		.e(e), 
		.f(f), 
		.g(g)
	);

	initial begin
		// Initialize Inputs
		w = 0;
		x = 0;
		y = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		
		w = 0;
		x = 0;
		y = 1;
		
		#100;
		
		w = 0;
		x = 1;
		y = 1;
		
		#100;
		
		w = 0;
		x = 1;
		y = 0;
		
		#100;
		
		w = 1;
		x = 1;
		y = 0;
		
		#100;
		
		w = 1;
		x = 1;
		y = 1;
		
		#100;
		
		w = 1;
		x = 0;
		y = 1;
		
		#100;
		
		w = 1;
		x = 0;
		y = 0;
		
		#100;

	end
      
endmodule

