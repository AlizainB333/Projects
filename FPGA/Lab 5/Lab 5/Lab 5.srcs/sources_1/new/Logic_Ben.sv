`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/05/2023 01:21:46 PM
// Design Name: 
// Module Name: Logic_Ben
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


module Logic_Ben(
    input logic [15:0] BUS, IR, 
    input LD_CC,
    output logic Ben_Out
    );
    
    logic [2:0] nzp_temp;
    logic Br_temp;
    
    registers N_cc(#N=1)(.Din(nzp_temp[2]), .Load());
    
    always_comb 
        begin
            if(BUS == 16'h0000)
                nzp_temp = 3'b010;
            else if(BUS[15] == 1'b0)
                nzp_temp = 3'b001;
            else
                nzp_temp = 3'b100;
          end
          
    assign Ben_Out = ((IR[11]&nzp_temp[2]) | (IR[10]&nzp_temp[1]) | (IR[9]&nzp_temp[0]));
    
    
          
          
          
     
     
     
          
      
    
    
endmodule

