`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/30/2023 09:01:11 PM
// Design Name: 
// Module Name: REG_FILE
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


module REG_FILE(
    input logic [15:0] BUS,IR,
    input logic [2:0] DRMUXOUT, SR1MUXOUT,
    input logic LD_REG,Clk,Reset,
    output logic [15:0] SR2OUT,SR1OUT
);


    logic [15:0] R0,R1,R2,R3,R4,R5,R6,R7;
    logic LD_0,LD_1,LD_2,LD_3,LD_4,LD_5,LD_6,LD_7;
    registers R0_REG(.Din(BUS),.Load(LD_0),.Clk(Clk),.Reset(Reset),.Dout(R0));
    registers R1_REG(.Din(BUS),.Load(LD_1),.Clk(Clk),.Reset(Reset),.Dout(R1));
    registers R2_REG(.Din(BUS),.Load(LD_2),.Clk(Clk),.Reset(Reset),.Dout(R2));
    registers R3_REG(.Din(BUS),.Load(LD_3),.Clk(Clk),.Reset(Reset),.Dout(R3));
    registers R4_REG(.Din(BUS),.Load(LD_4),.Clk(Clk),.Reset(Reset),.Dout(R4));
    registers R5_REG(.Din(BUS),.Load(LD_5),.Clk(Clk),.Reset(Reset),.Dout(R5));
    registers R6_REG(.Din(BUS),.Load(LD_6),.Clk(Clk),.Reset(Reset),.Dout(R6));
    registers R7_REG(.Din(BUS),.Load(LD_7),.Clk(Clk),.Reset(Reset),.Dout(R7));

    //Checking output from SR1 MUX and then taking output from Reg -> SR1OUT
       
    always_comb
        begin
            SR1OUT = 16'hZZZZ;
             unique case(SR1MUXOUT)
                3'b000 :
                    SR1OUT = R0;
                3'b001 :
                    SR1OUT = R1;
                3'b010 : 
                    SR1OUT = R2;
                3'b011 :
                    SR1OUT = R3;
                3'b100 :
                    SR1OUT = R4;
                3'b101 :
                    SR1OUT = R5;
                3'b110 :
                    SR1OUT = R6;
                3'b111 :
                    SR1OUT = R7;
           endcase
        end

        
//Setting the Output for SR2 depending on which select is used
//   logic [3:0] SR2;
//    assign SR2 = IR[2:0];
     
    always_comb
        begin
            SR2OUT = 16'hZZZZ;
            unique case (IR[2:0])
                3'b000 :
                    SR2OUT = R0;
                3'b001 :
                    SR2OUT = R1;
                3'b010 : 
                    SR2OUT = R2;
                3'b011 :
                    SR2OUT = R3;
                3'b100 :
                    SR2OUT = R4;
                3'b101 :
                    SR2OUT = R5;
                3'b110 :
                    SR2OUT = R6;
                3'b111 :
                    SR2OUT = R7;
              endcase
          end
          
 //Checking for Reset and LD signals 
 //if Reset all Reg == 0
 //if LD Take output from BUS depending on Dr MUX Out  
 
  
 
    always_comb 
        begin
        {LD_0,LD_1,LD_2,LD_3,LD_4,LD_5,LD_6,LD_7} = 8'h00;
          if(LD_REG)
            begin
                unique case (DRMUXOUT)
                  3'b000:
                    LD_0 = 1'b1;
                  3'b001:
                     LD_1 = 1'b1;
                 3'b010:
                    LD_2 = 1'b1;
                 3'b011:
                    LD_3 = 1'b1;
                 3'b100:
                    LD_4 = 1'b1;
                 3'b101:
                    LD_5 = 1'b1;
                 3'b110:
                    LD_6 = 1'b1;
                 3'b111:
                    LD_7 = 1'b1;
                endcase

            end

                
            
        
        end  
        
endmodule

   


module SR1MUX(
    input logic [15:0] IR_REG,
    input logic [1:0] SR1,
    output logic [2:0] SR1MUXOUT
);

    always_comb
        begin
            SR1MUXOUT = 2'bZZ;
            unique case (SR1)
                2'b00 :
                    SR1MUXOUT = IR_REG[11:9];
                2'b01 :
                    SR1MUXOUT = IR_REG[8:6];
                2'b10 :
                    SR1MUXOUT = 3'b110;
              endcase
        end
endmodule 


module DRMUX(
    input logic [15:0] IR_REG,
    input logic [1:0] DR,
    output logic [2:0] DRMUXOUT
);

    always_comb
        begin 
            DRMUXOUT = 3'bZZ;
            unique case (DR)
                2'b00 :
                    DRMUXOUT = IR_REG[11:9];
                2'b01 :
                    DRMUXOUT = 3'b111;
                2'b10 :
                    DRMUXOUT = 3'b110;
             endcase
         end         
endmodule



