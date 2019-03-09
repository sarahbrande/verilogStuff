`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:10:39 03/08/2019
// Design Name:   test
// Module Name:   /home/ise/firstTest/firstTestFixture.v
// Project Name:  firstTest
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: test
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module firstTestFixture;

	                        // Inputs
	reg a;
	reg b;

	                       // Outputs
	wire z;

	                       // Instantiate the Unit Under Test (UUT)
	test uut (
		.a(a), 
		.b(b), 
		.z(z)
	);

	initial begin
		                   // Initialize Inputs
		a = 0;
		b = 0;                     
		#100;              // Wait 100 ns for global reset to finish     
        
		                   // Addin stimulus
      a=0; b=1;              //
		#100;a= 1; b=1;
		#100;a= 0; b=1;
		#100;a= 0; b=0;
	end
      
endmodule


