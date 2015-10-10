`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:23:52 05/10/2015
// Design Name:   VendingMachine
// Module Name:   VendingMachine_Test.v
// Project Name:  Vending machine
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: VendingMachine
// 
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module VendingMachine_Test;

	// Inputs
	reg[7:0] amount;
	reg[2:0] selection;
	reg clock;

	// Outputs
	wire [4:0] change_nickels;
	wire [3:0] change_dimes;
	wire [1:0] change_quarters;
	wire change_dollar;	
	wire [2:0] item_dispensed;


	// Instantiate the Unit Under Test (UUT)
	VendingMachine uut (
		.amount(amount),
		.selection(selection),
		.clock(clock),
		.change_nickels(change_nickels),
		.change_dimes(change_dimes),
		.change_quarters(change_quarters),
		.change_dollar(change_dollar),
		.item_dispensed(item_dispensed)
	);

	always begin
		#5
		clock = !clock;
	end


	initial begin
		clock = 0;
		amount = 0;
		selection = 0;
        
		// Add stimulus here
		#10
		amount=5;
		selection=6;
		#10
		amount=5;
		selection=6;
		#10
		amount=5;
		selection=5;
		#10
		amount=25;
		selection=6;
		#10
		amount=5;
		selection=6;
		#10
		amount=10;
		selection=6;
		#10
		amount=10;
		selection=6;
		#10
		amount=10;
		selection=3;
		#10
		amount=25;
		selection=4;
		#10
		amount=100;
		selection=0;
		#10
		amount=80;
		selection=4;
		#10
		amount=100;
		selection=1;
		#10
		amount=20;
		selection=7;
		#10
		amount=20;
		selection=0;
		#10
		amount=25;
		selection=5;
		#10
		amount=90;
		selection=2;
		#10
		amount=105;
		selection=2; 
	end
      
endmodule

