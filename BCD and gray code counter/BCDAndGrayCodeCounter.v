`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:38:08 05/10/2015 
// Design Name: 
// Module Name:    BCDAndGrayCodeCounter 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module BCDAndGrayCodeCounter(
    input Clock,
    input Control,
    output reg[2:0] Counter,
	 output Flag
    );
	

	always @ (posedge Clock)
	begin : CounterBlock // Block Name
		case (Counter)
		0: Counter = 1;
		1: Counter = (Control==1) ? 3 : 2;
		2: Counter = (Control==1) ? 6 : 3;
		3: Counter = (Control==1) ? 2 : 4;
		4: Counter = (Control==1) ? 0 : 5;
		5: Counter = (Control==1) ? 4 : 6;
		6: Counter = 7;
		7: Counter = (Control==1) ? 5 : 0;
		default: Counter = 0;
		endcase
	end

	xor(Flag, Counter[0], Counter[1], Counter[2]);

endmodule
