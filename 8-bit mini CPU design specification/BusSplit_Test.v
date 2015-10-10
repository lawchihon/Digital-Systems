`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:05:01 05/31/2015
// Design Name:   BusSplit
// Module Name:   BusSplit_Test.v
// Project Name:  8-bit mini CPU design specification
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: BusSplit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module BusSplit_Test;

	// Inputs
	reg [11:0] A;

	// Outputs
	wire [7:0] y1;
	wire [3:0] y2;

	// Instantiate the Unit Under Test (UUT)
	BusSplit uut (
		.A(A), 
		.y1(y1), 
		.y2(y2)
	);

	initial begin
		// Initialize Inputs
		A = 950;

		// Wait 100 ns for global reset to finish
		#100;
        
		A = 5;
		// Add stimulus here

	end
      
endmodule

