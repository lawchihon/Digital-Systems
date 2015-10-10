`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:21:00 04/08/2015
// Design Name:   7SegmentDisplay
// Module Name:   7SegmentDisplay_Test.v
// Project Name:  7 segment display
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: 7SegmentDisplay
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module 7SegmentDisplay_Test;

	// Inputs
	reg w;
	reg x;
	reg y;
	reg z;

	// Outputs
	wire a;
	wire b;
	wire c;
	wire d;
	wire e;
	wire f;
	wire g;

	// Instantiate the Unit Under Test (UUT)
	7SegmentDisplay uut (
		.w(w), 
		.x(x), 
		.y(y), 
		.z(z), 
		.a(a), 
		.b(b), 
		.c(c), 
		.d(d), 
		.e(e), 
		.f(f), 
		.g(g)
	);

	initial begin
		// Initialize Inputs
		w = 0;
		x = 0;
		y = 0;
		z = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

		w = 0;
		x = 0;
		y = 0;
		z = 1;
		
		#100;

		w = 0;
		x = 0;
		y = 1;
		z = 0;
		
		#100;
		
		w = 0;
		x = 0;
		y = 1;
		z = 1;
		
		#100;
		
		w = 0;
		x = 1;
		y = 0;
		z = 0;
		
		#100;
		
		w = 0;
		x = 1;
		y = 0;
		z = 1;
		
		#100;
		
		w = 0;
		x = 1;
		y = 1;
		z = 0;
		
		#100;
		
		w = 0;
		x = 1;
		y = 1;
		z = 1;
		
		#100;
		
		w = 1;
		x = 0;
		y = 0;
		z = 0;
		
		#100;
		
		w = 1;
		x = 0;
		y = 0;
		z = 1;
		
		#100;
		
	end
      
endmodule

