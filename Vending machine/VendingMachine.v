`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:06:55 05/10/2015 
// Design Name: 
// Module Name:    VendingMachine 
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
module VendingMachine(
    input [7:0] amount,
    input [2:0] selection,
    input clock,
    output reg[4:0] change_nickels = 0,
    output reg[3:0] change_dimes = 0,
    output reg[1:0] change_quarters = 0,
    output reg change_dollar = 0,
    output reg[2:0] item_dispensed = 0
    );

	reg[7:0] price = 0;
	reg[7:0] remain = 0;
	reg[7:0] keep = 0;
	parameter nickels=5, dimes=10, quarters=25;
	reg[7:0] dollar=100;
	integer i;

	always @ (posedge clock)
	begin // Block Name
		change_nickels = 0;
		change_dimes = 0;
		change_quarters = 0;
		change_dollar = 0;
		item_dispensed = selection;
		if (dollar >= amount)
		begin
			case (selection)
			0: price = 100;
			1: price = 85;
			2: price = 75;
			3: price = 50;
			4: price = 25;
			5: price = 15; 
			default: price = 0;
			endcase
			
			if (selection == 6)
			begin
				keep = keep + amount;
			end
			else if (price > keep + amount)
			begin
				item_dispensed = 6;
				keep = keep + amount;
			end 
			else
			begin
				remain = keep + amount - price;
				keep = 0;
			end
		end
		else
		begin 
			item_dispensed = 7;
			remain = amount;
		end
		if (remain >= 100)
		begin
			remain = remain - 8'b01100100;
			change_dollar = change_dollar + 1;
		end
		
		for (i=0;i<3;i=i+1)
		begin
		if (remain >= 25)
			begin
				remain = remain - 8'b00011001;
				change_quarters = change_quarters + 1;
			end
		end
		
		for (i=0;i<2;i=i+1)
		begin
		if (remain >= 10)
			begin
				remain = remain - 8'b00001010;
				change_dimes = change_dimes + 1;
			end
		end
		
		if (remain >= 5)
		begin
			remain = remain - 8'b00000101;
			change_nickels = change_nickels + 1;
		end
	end
endmodule
