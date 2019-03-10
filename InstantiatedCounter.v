//////////////////////////////////////////////////////////////////////////////////
// Company:        Pleasant
// Engineer:       SarahB
// Create Date:    03:17:43 03/09/2019 
// Design Name: 
// Module Name:    BlockPlay 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description:    This is the instantiated file
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////module first_counter (
module first_counter (
clock ,             // Clock input of the design
reset ,             // active high, synchronous Reset input
enable ,            // Active high enable signal for counter
counter_out         // 4 bit vector output of the counter
);                  // End of port list
//-------------Input Ports-----------------------------
input clock ;
input reset ;
input enable ;
//-------------Output Ports----------------------------
output [3:0] counter_out ;
//-------------Input ports Data Type-------------------
                    // By rule all the input ports should be wires   
wire clock ;
wire reset ;
wire enable ;
//-------------Output Ports Data Type------------------
                                  // Output port can be a storage element (reg) or a wire
reg [3:0] counter_out ;

//------------Code Starts Here-------------------------

                                 /*Since this counter is a positive edge trigged one, We trigger the below block with respect to positive edge of the clock.*/ 

always @ (posedge clock)
begin : COUNTER                  // Block Name
                                 // At every rising edge of clock we check if reset is active
                                 // If active, we load the counter output with 4'b0000
  if (reset == 1'b1) begin
    counter_out <= #1 4'b0000;
  end
                                 // If enable is active, then we increment the counter
  else if (enable == 1'b1) begin
    counter_out <= #1 counter_out + 1;
  end
end                              // End of Block COUNTER

endmodule                        // End of Module counter
