`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:47:58 04/22/2015 
// Design Name: 
// Module Name:    8bitCarryLookAheadAdder 
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
module 8bitCarryLookAheadAdder(
	input[7:0] a,
	input[7:0] b,
	input op,
	output [7:0] sum,
	output overflow
);
	wire[7:0] bAfter;
	wire cout;
  
	xor(bAfter[0], b[0], op);
	xor(bAfter[1], b[1], op);
	xor(bAfter[2], b[2], op);
	xor(bAfter[3], b[3], op);
	xor(bAfter[4], b[4], op);
	xor(bAfter[5], b[5], op);
	xor(bAfter[6], b[6], op);
	xor(bAfter[7], b[7], op);

	CarryLookAheadAdder cla0 (.a(a[3:0]), .b(bAfter[3:0]), .cin(op), .sum(sum[3:0]), .cout(cout));
	CarryLookAheadAdder cla1 (.a(a[7:4]), .b(bAfter[7:4]), .cin(cout), .sum(sum[7:4]), .overflow(overflow));
	

endmodule
