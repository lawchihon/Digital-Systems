`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:24:24 05/31/2015
// Design Name:   Mux8To1
// Module Name:   Mux8To1_Test.v
// Project Name:  8-bit mini CPU design specification
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Mux8To1
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Mux8To1_Test;

	// Inputs
	reg [7:0] A;
	reg [7:0] B;
	reg [7:0] C;
	reg [7:0] D;
	reg [7:0] E;
	reg [7:0] F;
	reg [7:0] G;
	reg [2:0] Sel;

	// Outputs
	wire [7:0] Y;

	// Instantiate the Unit Under Test (UUT)
	Mux8To1 uut (
		.A(A), 
		.B(B), 
		.C(C), 
		.D(D), 
		.E(E), 
		.F(F), 
		.G(G), 
		.Sel(Sel), 
		.Y(Y)
	);

	initial begin
		// Initialize Inputs
		A = 0;
		B = 1;
		C = 2;
		D = 3;
		E = 4;
		F = 5;
		G = 6;
		Sel = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		Sel = 1;
		#100;
		Sel = 2;
		#100;
		Sel = 3;
		#100;
		Sel = 4;
		#100;
		Sel = 5;
		#100;
		Sel = 6;
		#100;
		
	end
      
endmodule

