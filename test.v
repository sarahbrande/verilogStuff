`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 		 Pleasant	
// Engineer: 		 Sarahb
// 
// Create Date:    13:52:23 03/08/2019 
// Design Name:    Simple NAND gate
// Module Name:    test 
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
module test(
    input a,
    input b,
    output z
    );
assign z = ~(a & b); 

endmodule

