`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:23:57 05/10/2015 
// Design Name: 
// Module Name:    15SecondTimeBomb
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
module 15SecondTimeBomb(
    input Clock,
    input Start,
    input Reset,
	 input Stop,
    output reg[4:0] Counter_Out = 15,
    output reg Blow_Up = 0
    );
		
	always @ (posedge Clock)
	begin : CounterBlock // Block Name
		if (Reset == 1'b1) 
		begin
			Counter_Out <= 15;
		end
		else if (Stop == 1'b1)
		begin
			Counter_Out <= Counter_Out;
		end
		else if (Start == 1'b1) 
		begin
			Counter_Out <= Counter_Out - 1;
		end 
		if (!Counter_Out)
		begin
		  Blow_Up = 1;
		end
	end


endmodule
