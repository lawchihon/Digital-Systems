`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:23:22 04/15/2015
// Design Name:   FullAdder
// Module Name:   FullAdder_Test.v
// Project Name:  Lab2
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

module FullAdder_Test;

	// Inputs
	reg a;
	reg b;
	reg cin;

	// Outputs
	wire sum;
	wire cout;

	// Instantiate the Unit Under Test (UUT)
	FullAdder uut (
		.a(a), 
		.b(b), 
		.cin(cin), 
		.sum(sum), 
		.cout(cout)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		cin = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		a = 1;
		b = 0;
		cin = 0;
		
		#100;

		a = 0;
		b = 1;
		cin = 0;
		
		#100;

		a = 0;
		b = 0;
		cin = 1;
		
		#100;
		
		a = 1;
		b = 0;
		cin = 1;
		
		#100;
		
		a = 1;
		b = 1;
		cin = 0;
		
		#100;
		
		a = 1;
		b = 1;
		cin = 1;
		
		#100;
	end
      
endmodule

