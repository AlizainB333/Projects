`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/24/2023 12:53:49 AM
// Design Name: 
// Module Name: Adder
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


module Adder(
    input logic a,b,cin,
    output logic sum,cout 
    );
    
    logic c1,c2,c3;
    
    assign sum = a ^ b ^ cin;
    assign cout = (a&b) | (a&cin) | (b&cin);
endmodule

module Adder_9(
    input logic [8:0] A,B,
    input logic c_in,
    output logic [8:0] S,
    output logic c_out
);

    logic c0,c1,c2,c3,c4,c5,c6,c7;
    
    Adder FA0(.a(A[0]), .b(B[0]), .cin(c_in), .sum(S[0]), .cout(c0));
    Adder FA1(.a(A[1]), .b(B[1]), .cin(c0), .sum(S[1]), .cout(c1));
    Adder FA2(.a(A[2]), .b(B[2]), .cin(c1), .sum(S[2]), .cout(c2));
    Adder FA3(.a(A[3]), .b(B[3]), .cin(c2), .sum(S[3]), .cout(c3));
    Adder FA4(.a(A[4]), .b(B[4]), .cin(c3), .sum(S[4]), .cout(c4));
    Adder FA5(.a(A[5]), .b(B[5]), .cin(c4), .sum(S[5]), .cout(c5));
    Adder FA6(.a(A[6]), .b(B[6]), .cin(c5), .sum(S[6]), .cout(c6));
    Adder FA7(.a(A[7]), .b(B[7]), .cin(c6), .sum(S[7]), .cout(c7));
    Adder FA8(.a(A[8]), .b(B[8]), .cin(c7), .sum(S[8]), .cout(c_out));


endmodule


module Converter_2s(
    input logic [8:0] Din,
    output logic [8:0] Dout
);

    assign inverted  = ~Din;
    logic add1 = 8'b000000001;
    Adder_9 complement2(.A(inverted),.B(add1), .cin(0), .S(Dout), .cout(Z));
    
endmodule


module Adder_Unit(
    input logic [7:0] A,B,SW,
    input logic X,Sub,
    output logic [7:0] Dout_A,
    output logic Dout_X
);


    logic sign_extendSW = {SW[7], SW[7:1]};
    logic sign_extendA = {A[7], A[7:1]};
    logic [8:0] sumASW;
    logic [8:0] subASW;
    
    logic [8:0] invertedSW;
    
    Converter_2s S_2s(.Din(SW), .Dout(invertedSW));
    
    
    
    
    
//    logic AdderInput1;
//     AdderInput2;
    
    Adder_9 Sum_ASW(.A(sign_extendA),.B(sign_extendSW), .cin(0), .S(sumASW), .cout());
    Adder_9 Sub_ASW(.A(sign_extendA),.B(invertedSW), .cin(0), .S(subASW), .cout(Z));
    

    always_comb
    begin 
        if(B[0] == 1'b1)
        begin
            Dout_X = sumASW[8];
            Dout_A = sumASW[7:0];
        end
        else
        begin 
            Dout_A = A;
            Dout_X = X;
        
        end
        
        if(Sub & B[0] == 1'b1)
        
        begin
        Dout_X = subASW[8];
        Dout_A = subASW[7:0];
        end
        
 
            
    end


endmodule