//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/28/2023 12:38:04 AM
// Design Name: 
// Module Name: testbench
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module testbench( );
    timeunit 10ns;
   timeprecision 1ns;
   
   
   logic Clk =0;
   always begin: CLK_GEN
   #1 Clk = ~Clk;
   end
   
   
   initial begin: Clock_Initial
   Clk = 0;
   end

						
   logic [15:0] SW, LED;
   logic Reset, Run, Continue;
   logic [7:0] hex_seg, hex_segB;
   logic [3:0] hex_grid, hex_gridB;
   slc3_testtop s(.SW(SW), .LED(LED), .Clk(Clk), .Reset(Reset),
                    .Run(Run), .Continue(Continue), .*);
   logic[15:0] IR;
   logic [15:0] SR1OUT;
   logic [2:0] DRMUXOUT, SR1MUXOUT, SR1selector;
   logic BEN;
   initial begin: TEST_VECTORS
   assign IR = s.slc.DoutIR;

//   assign currentState = s.slc.state_controller.State;
//   #2 Reset = 1'b0;
//   #5 Reset = 1'b1;
   
   #5 SW = 16'h0003;
   
   #2 Continue = 1'b0;
   
   #2 Run = 1'b1;
   #5 Run = 1'b0;
   #50
   #50 Continue = 1'b1;
   
   #5 Continue = 1'b0;
   
   end

endmodule
