`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:18:40 04/08/2015 
// Design Name: 
// Module Name:    Garycodedecoder 
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
module Garycodedecoder(
    input w,
    input x,
    input y,
    output e,
    output f,
    output g
    );
	 
	 assign e = w;
	 assign f = w ^ x;
	 assign g = w ^ x ^ y;

endmodule
