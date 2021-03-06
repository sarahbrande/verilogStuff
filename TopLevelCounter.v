`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: Pleasant
// Engineer:SarahB
//
// Create Date:   11:41:53 03/09/2019
// Design Name:   first_counter
// Module Name:   /home/ise/Play/FirstCounter.v
// Project Name:  Play
// Target Device:  
// Tool versions:  
// Description:   Top Level, provides stimulus & clock
//
// Verilog Test Fixture created by ISE for module: first_counter
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////



module TopLevelCounterStimulis;

	// Inputs
	reg clock;
	reg reset;
	reg enable;

	// Outputs
	wire [3:0] counter_out;

	// Instantiate the Unit Under Test (UUT)
	first_counter uut (
		.clock(clock), 
		.reset(reset), 
		.enable(enable), 
		.counter_out(counter_out)
	);

	initial begin
		// Initialize Inputs
		clock = 0;
		reset = 0;
		enable = 0;
                #10
		clock <= 1;
		reset <= 1;          // reset to make sure instantiated blocks are initialized.
		enable <= 0;
		// Wait 100 ns for global reset to finish
		#10;
		// stimulus here
                clock <= 0;
		reset <= 0;
		enable <= 1;
	
		#5 clock <= ~clock;
		#5 clock <= ~clock;
		#5 clock <= ~clock;
		#5 clock <= ~clock;
		#5 clock <= ~clock;
		#5 clock <= ~clock;
		#5 clock <= ~clock;
		#5 clock <= ~clock;
		#5 clock <= ~clock;
		#5 clock <= ~clock;
		#5 clock <= ~clock;
		#5 clock <= ~clock;
		#5 clock <= ~clock;
		#5 clock <= ~clock;
		#5 clock <= ~clock;
		#5 clock <= ~clock;
		#5 clock <= ~clock;
		#5 clock <= ~clock;
		#5 clock <= ~clock;
	end
      
endmodule


