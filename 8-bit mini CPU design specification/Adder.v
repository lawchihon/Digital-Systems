`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    07:05:58 05/31/2015 
// Design Name: 
// Module Name:    Adder 
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
module Adder(
    input [7:0] A,
    input [7:0] B,
    output [7:0] Sum,
    output ov
    );

	reg[8:0] tempSum;
	reg tempOv;
	
	always @(*)
	begin
		tempSum = A + B;
		tempOv = tempSum[8];
	end

	assign Sum = tempSum[7:0];
	assign ov = tempOv;

endmodule
