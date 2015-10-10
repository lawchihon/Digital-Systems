`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:29:31 04/22/2015 
// Design Name: 
// Module Name:    8bitAdderWithOverflow
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
module 8bitAdderWithOverflow(
	input[7:0] a,
	input[7:0] b,
	input op,
	output [7:0] sum,
	output overflow
);

	wire carry;
	wire[6:0] ripple;
	wire[7:0] bAfter;

	xor(bAfter[0], b[0], op);
	xor(bAfter[1], b[1], op);
	xor(bAfter[2], b[2], op);
	xor(bAfter[3], b[3], op);
	xor(bAfter[4], b[4], op);
	xor(bAfter[5], b[5], op);
	xor(bAfter[6], b[6], op);
	xor(bAfter[7], b[7], op);
  

	Full_Adder add0 (.a(a[3:0]), .b(bAfter[0]), .cin(op), .sum(sum[0]), .cout(ripple[0]));
	Full_Adder add1 (.a(a[1]), .b(bAfter[1]), .cin(ripple[0]), .sum(sum[1]), .cout(ripple[1]));
	Full_Adder add2 (.a(a[2]), .b(bAfter[2]), .cin(ripple[1]), .sum(sum[2]), .cout(ripple[2]));
	Full_Adder add3 (.a(a[3]), .b(bAfter[3]), .cin(ripple[2]), .sum(sum[3]), .cout(ripple[3]));
	Full_Adder add4 (.a(a[4]), .b(bAfter[4]), .cin(ripple[3]), .sum(sum[4]), .cout(ripple[4]));
	Full_Adder add5 (.a(a[5]), .b(bAfter[5]), .cin(ripple[4]), .sum(sum[5]), .cout(ripple[5]));
	Full_Adder add6 (.a(a[6]), .b(bAfter[6]), .cin(ripple[5]), .sum(sum[6]), .cout(ripple[6]));
	Full_Adder add7 (.a(a[7]), .b(bAfter[7]), .cin(ripple[6]), .sum(sum[7]), .cout(carry));
	
	xor(overflow, ripple[6], carry);
	
endmodule
