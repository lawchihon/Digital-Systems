`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:13:43 04/08/2015 
// Design Name: 
// Module Name:    7segmentdisplay 
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
module 7segmentdisplay(
    input w,
    input x,
    input y,
    input z,
    output a,
    output b,
    output c,
    output d,
    output e,
    output f,
    output g
    );
	
	assign a = ((!w)&(!x)&(!y)&(!z)) | ((!w)&(!x)&y&(!z)) | ((!w)&(!x)&y&z) | ((!w)&x&(!y)&z) | ((!w)&x&y&(!z)) | ((!w)&x&y&z) | (w&(!x)&(!y)&(!z)) | (w&(!x)&(!y)&z);
	assign b = ((!w)&(!x)&(!y)&(!z)) | ((!w)&(!x)&(!y)&z) | ((!w)&(!x)&y&(!z)) | ((!w)&(!x)&y&z) | ((!w)&x&(!y)&(!z)) | ((!w)&x&y&z) | (w&(!x)&(!y)&(!z)) | (w&(!x)&(!y)&z);
	assign c = ((!w)&(!x)&(!y)&(!z)) | ((!w)&(!x)&(!y)&z) | ((!w)&(!x)&y&z) | ((!w)&x&(!y)&(!z)) |  ((!w)&x&(!y)&z) | ((!w)&x&y&(!z)) | ((!w)&x&y&z) | (w&(!x)&(!y)&(!z)) | (w&(!x)&(!y)&z);
	assign d = ((!w)&(!x)&(!y)&(!z)) | ((!w)&(!x)&y&(!z)) | ((!w)&(!x)&y&z) | ((!w)&x&(!y)&z) | ((!w)&x&y&(!z)) | (w&(!x)&(!y)&(!z)) | (w&(!x)&(!y)&z);
	assign e = ((!w)&(!x)&(!y)&(!z)) | ((!w)&(!x)&y&(!z)) | ((!w)&x&y&(!z)) | (w&(!x)&(!y)&(!z));
	assign f = ((!w)&(!x)&(!y)&(!z)) | ((!w)&x&(!y)&(!z)) | ((!w)&x&(!y)&z) | ((!w)&x&y&(!z)) | (w&(!x)&(!y)&(!z)) | (w&(!x)&(!y)&z);
	assign g = ((!w)&(!x)&y&(!z)) | ((!w)&(!x)&y&z) | ((!w)&x&(!y)&(!z)) |  ((!w)&x&(!y)&z) | ((!w)&x&y&(!z)) | (w&(!x)&(!y)&(!z)) | (w&(!x)&(!y)&z);

endmodule
