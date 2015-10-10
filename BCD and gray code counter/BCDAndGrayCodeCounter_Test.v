`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:42:08 05/10/2015
// Design Name:   BCDAndGrayCodeCounter
// Module Name:   BCDAndGrayCodeCounter_Test.v
// Project Name:  BCD and gray code counter
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: BCDAndGrayCodeCounter
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module BCDAndGrayCodeCounter_Test;

	// Inputs
	reg Clock;
	reg Control;

	// Outputs
	wire [2:0] Counter;
	wire Flag;

	// Instantiate the Unit Under Test (UUT)
	BCDAndGrayCodeCounter uut (
		.Clock(Clock), 
		.Control(Control), 
		.Counter(Counter), 
		.Flag(Flag)
	);

	always begin
		#5
		Clock = !Clock;
	end

	initial begin
		// Initialize Inputs
		Clock = 0;
		Control = 0;
        
		// Add stimulus here
		#10	Control = 1;
		#50	Control = 0;
		#60	Control = 1;
		#100	Control = 0;
		#150	$finish;


	end
      
endmodule

