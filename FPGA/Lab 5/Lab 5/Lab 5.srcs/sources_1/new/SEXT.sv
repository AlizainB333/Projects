`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/01/2023 09:26:28 PM
// Design Name: 
// Module Name: SEXT
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
module SEXT5(
    input logic [4:0] IR,
    output logic [15:0] Dout
);
    always_comb
        begin 
            if(IR[4] == 1'b1)
                begin
                    Dout = {11'b11111111111,IR};
                 end
            else 
                begin
                    Dout = {11'b00000000000,IR};
                end
        end
endmodule

module SEXT6(
    input logic [5:0] IR,
    output logic [15:0] Dout
);

    always_comb
        begin
            if(IR[5] == 1'b1)
                begin
                    Dout = {10'b1111111111,IR};
                end
             else
                begin
                    Dout = {10'b0000000000,IR};
                end
          end
endmodule

module SEXT9(
    input logic [8:0] IR,
    output logic [15:0] Dout
);

    always_comb 
        begin 
            if(IR[8] == 1'b1)
                begin
                    Dout = {7'b1111111,IR};
                end
            else
                begin
                    Dout = {7'b0000000,IR};
                 end
         end
endmodule


module SEXT11(
    input logic [10:0] IR,
    output logic [15:0] Dout
);

    always_comb
        begin
            if(IR[10] == 1'b1)
                begin
                    Dout = {5'b11111,IR};
                end
             else
                begin
                    Dout = {5'b00000,IR};
                end
         end
endmodule

