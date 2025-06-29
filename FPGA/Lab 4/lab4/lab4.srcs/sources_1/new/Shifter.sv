`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/24/2023 01:43:11 AM
// Design Name: 
// Module Name: Shifter
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


module Shifter(
    input logic [16:0] Din,
    input logic Shift_En,
    output logic [16:0] Dout
);
    always_comb
    begin
        Dout = Din;
        if(Shift_En)
            Dout = {Din[16], Din[16:1]};
    end
 
endmodule
