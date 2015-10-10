`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:33:07 05/31/2015 
// Design Name: 
// Module Name:    miniCPU 
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
module miniCPU(
    input [11:0] In,
    input Clock,
    output [7:0] Out,
    output Overflow,
	 output [7:0] r1,
	 output [7:0] r2,
	 output [3:0] BS1,
	 output [7:0] BS2
    );

	wire[7:0] dataPath;
	wire[7:0] save;
	reg[7:0] path1, path2;
	wire[3:0] Instruction;
	wire Clear;
	wire [2:0] En;
	wire [3:0] S;
	//wire [7:0] tempOut;
	wire[7:0]  A, B, C, D, E, F;


	BusSplit split (.A(In), .y1(dataPath), .y2(Instruction));
	InstructionDecoder decoder (.Instruction(Instruction), .CLR(Clear), .En(En), .S(S));

	
	assign BS1 = Instruction;
	assign BS2 = dataPath;
	
	//R1

	always @(En)
	begin
		case (En)
			3'b111: begin
						path1 = 0;
						path2 = 0;
					  end
			3'b100: path1 = dataPath;
			3'b010: begin
						if (S[3])
							path2 = Out;
						else
							path2 = dataPath;
					  end
						 
		endcase
	end 
		
	Reg8bit reg1(.D(path1), .CLK(Clock), .CLR(Clear), .En(En[2]), .Q(r1));
	Reg8bit reg2(.D(path2), .CLK(Clock), .CLR(Clear), .En(En[1]), .Q(r2));
	
	
	//ALU
	Adder add(.A(r1), .B(r2), .Sum(A), .ov(Overflow));
	ShiftLeft shiftleft(.A(r2), .Y(B), .ov(Overflow));
	ShiftRight shiftright(.A(r2), .Y(C));
	assign D = r1 & r2;
	assign E = r1 | r2;
	Comparator comparator(.A(r1), .B(r2), .Y(F));
	
	//8:1
	Mux8To1 mux(.A(A), .B(B), .C(C), .D(D), .E(E), .F(F), .G(8'b0), .Sel(Instruction), .Y(Out));
	
	//Rout
	
	//Reg8bit regOur(.D(Out), .CLK(Clock), .CLR(Clear), .En(En[0]), .Q(tempOut));
	
	//assign Out = tempOut;
	
endmodule
