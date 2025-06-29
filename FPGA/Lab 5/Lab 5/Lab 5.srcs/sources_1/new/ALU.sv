//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/30/2023 08:33:03 PM
// Design Name: 
// Module Name: ALU
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


module ALU(
    input logic [15:0] SR2MUXOUT,SR1OUT,
    input logic [1:0] sel,
    output logic [15:0] ALUOUT
);

    always_comb
        begin
            unique case (sel)
            
            2'b00 :
                ALUOUT = SR2MUXOUT + SR1OUT;
            2'b01 :
                ALUOUT = SR2MUXOUT & SR1OUT;
            2'b10 :
                ALUOUT = ~SR1OUT;
            2'b11 :
                ALUOUT = SR1OUT;
            endcase
         end
endmodule
