`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:30:38 04/22/2015
// Design Name:   8bitAdderWithOverflow
// Module Name:   8bitAdderWithOverflow_Test.v
// Project Name:  8-bit adder with overflow
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: 8bitAdderWithOverflow
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module 8bitAdderWithOverflow_Test;

	// Inputs
	reg [7:0] a;
	reg [7:0] b;
	reg op;

	// Outputs
	wire [7:0] sum;
	wire overflow;

	// Instantiate the Unit Under Test (UUT)
	8bitAdderWithOverflow uut (
		.a(a), 
		.b(b), 
		.op(op), 
		.sum(sum), 
		.overflow(overflow)
	);

	initial begin
		//8 different test cases
		//pos + pos
		a = 13;
		b = 12;
		op = 0;

		#100;
		
		//pos + neg
		a = 13;
		b = -12;
		op = 0;
		
		#100;

		//neg + pos
		a = -13;
		b = 12;
		op = 0;
		
		#100;

		//neg + neg
		a = -13;
		b = -12;
		op = 0;
		
		#100;
		
		//pos - pos
		a = 13;
		b = 12;
		op = 1;
		
		#100;

		//pos - neg
		a = 13;
		b = -12;
		op = 1;
		
		#100;
		
		//neg - pos
		a = -13;
		b = 12;
		op = 1;
		
		#100;
		
		//neg - neg
		a = -13;
		b = -12;
		op = 1;
		
		#100;
		
		//2 overflow test cases
		//pos + pos
		a = 127;
		b = 127;
		op = 0;
		
		#100;
		
		//neg + neg
		a = -127;
		b = -127;
		op = 0;
		
		#100;
		
	end
      
endmodule

