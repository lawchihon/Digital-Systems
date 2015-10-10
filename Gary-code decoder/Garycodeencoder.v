`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:59:27 04/08/2015 
// Design Name: 
// Module Name:    Garycodeencoder 
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
module Garycodeencoder(
    input a,
    input b,
    input c,
    output w,
    output x,
    output y
    );
	 
	 assign w = a;
	 assign x = a^b;
	 assign y = b^c;
    
endmodule
