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
	reg clock2;
	reg reset;
	reg enable;
	reg counting;

	// Outputs
	wire [3:0] counter_out;
	wire [3:0] counter_out2;
	
	// Instantiate the Unit Under Test (UUT)
	first_counter counter1 (
		.clock(clock), 
		.reset(reset), 
		.enable(enable), 
		.counter_out(counter_out)
	);
	first_counter counter2 (
		.clock(clock2), 
		.reset(reset), 
		.enable(enable), 
		.counter_out(counter_out2)
	);
	
	initial begin
		// Initialize Inputs
		clock = 0;
		clock2 <= 0;
		reset = 0;
		enable = 0;
		counting<=0;
      #10
		clock <= 1;
		clock2 <= 1;
		reset <= 1;
		enable <= 0;
		// Wait 100 ns for global reset to finish
		#10;
      clock <= 0;
		reset <= 0;
		enable <= 1;
		counting<=1;
		// Add stimulus here

		
	    while(counter_out!=4'b1111)
		 begin
		   //  if(counter_out==4'b1111)  
		   //     #5 counting<=0;
		   //  else 
		    //    counting <=1;                       
		        #5 clock <= ~clock;
		        #1 clock2 <= clock;  
		  end                              //while
	end
      
endmodule


