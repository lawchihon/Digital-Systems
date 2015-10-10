`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:49:22 05/10/2015
// Design Name:   15SecondTimeBomb
// Module Name:   15SecondTimeBomb_Test.v
// Project Name:  15-second time bomb
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: 15SecondTimeBomb
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module 15SecondTimeBomb_Test;

	// Inputs
	reg Clock;
	reg Start;
	reg Reset;
	reg Stop;

	// Outputs
	wire [4:0] Counter_Out;
	wire Blow_Up;

	// Instantiate the Unit Under Test (UUT)
	15SecondTimeBomb uut (
		.Clock(Clock), 
		.Start(Start), 
		.Reset(Reset), 
		.Stop(Stop), 
		.Counter_Out(Counter_Out), 
		.Blow_Up(Blow_Up)
	);

	always begin
		#5
		Clock = !Clock;
	end
	
	initial begin
		// Initialize Inputs
		Clock = 1;
		Start = 0;
		Reset = 0;
		Stop = 0;

		// Add stimulus here
		#10		Reset = 0;
		#20	Start = 1;
		#50	Stop = 1;
		#60	Reset = 1;
		#70	Stop = 0;
		#70	Reset = 0;
		#150	Start = 0;
		#150	$finish;

	end
      
endmodule

