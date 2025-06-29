`timescale 1ns / 1ps
// Engineer: 
// 
// Create Date: 09/21/2023 07:31:48 PM
// Design Name: 
// Module Name: Shift_Registers
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module reg8(
    input logic [7:0] Din,
    input logic Clk, Load, Reset,
    output logic [7:0] Dout
    );
    
    always_ff @(posedge Clk)
    begin
        if(Load && ~Reset)
            Dout <= Din;
        else if(Reset)
            Dout <= 8'b00000000;
    end    
endmodule


module reg1(
    input logic Din, Load, Clk, Reset,
    output logic Dout
);
    always_ff @(posedge Clk)
    begin
        if(Load && ~Reset)
            Dout <= Din;
        else if(Reset)
            Dout <= 1'b0;
     end
endmodule

