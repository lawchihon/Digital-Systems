`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:37:14 04/23/2015 
// Design Name: 
// Module Name:    CarryLookAheadAdder 
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
module CarryLookAheadAdder(
	input[3:0] a,
	input[3:0] b,
	input cin,
	output [3:0] sum,
	output cout,
	output overflow
);

	wire[2:0] ripple;
	wire[3:0] cg;
	wire[3:0] cp;
	
	assign cg[0] = a[0] & b[0];
	assign cg[1] = a[1] & b[1];
	assign cg[2] = a[2] & b[2];
	assign cg[3] = a[3] & b[3];

	xor(cp[0], a[0], b[0]);
	xor(cp[1], a[1], b[1]);
	xor(cp[2], a[2], b[2]);
	xor(cp[3], a[3], b[3]);

	assign ripple[0] = cg[0] | (cp[0] & cin);
	assign ripple[1] = cg[1] | (cp[1] &ripple[0]);
	assign ripple[2] = cg[2] | (cp[2] & ripple[1]);
	assign cout = cg[3] | (cp[3] & ripple[2]);

	xor(overflow, ripple[2], cout);

	xor(sum[0], cp[0], cin);
	xor(sum[1], cp[1], ripple[0]);
	xor(sum[2], cp[2], ripple[1]);
	xor(sum[3], cp[3], ripple[2]);

endmodule
