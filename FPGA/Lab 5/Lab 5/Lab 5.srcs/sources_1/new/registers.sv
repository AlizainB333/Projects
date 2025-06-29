//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/27/2023 07:42:22 PM
// Design Name: 
// Module Name: registers
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


module registers #(N = 15)(
    input logic [N:0] Din,
    input logic Load, // load
    input logic Clk, Reset,
    output logic [N:0] Dout
    
);
    always_ff @(posedge Clk)
    begin
        if(Load)
            Dout <= Din;
        else if(Reset === 1'b1)
            Dout <= 0;
    end     
        
endmodule

