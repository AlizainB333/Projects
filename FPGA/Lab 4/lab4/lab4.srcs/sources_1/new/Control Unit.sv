`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/21/2023 06:12:27 PM
// Design Name: 
// Module Name: Control Unit
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


module Control_Unit(
    input logic Clk, Execute, LDR,
    output logic Load_A, Load_B, Reset, Shift, Add, Sub
);
    enum logic [4:0] {start,halt,CAX,CAX_LB,s1,s2,s3,s4,s5,s6,s7,s8} curr_state, next_state;
    
    always_ff @(posedge Clk)
    begin
        if(~Execute && curr_state == halt) 
          curr_state <= start;
        else
            next_state = curr_state;
          
    end
    
        always_comb
        begin
        
    unique case(curr_state)
        
        start: if(Execute)
            next_state = CAX;
        start: if(LDR)
            next_state = CAX_LB;
         CAX,CAX_LB: if(Execute)
            next_state = s1;
         s1: next_state = s2; 
         s2: next_state = s3;
         s3: next_state = s4;
         s4: next_state = s5;
         s5: next_state = s6;
         s6: next_state = s7;
         s7: next_state = s8;
         s8: next_state = halt;
         halt: if(~Execute) 
                next_state = start;
         endcase
     end 
     
     always_comb
     begin 
        case(curr_state)
            CAX:
            begin
                Reset = 1'b1;
            end
            CAX_LB:
            begin
                Reset = 1'b1;
                Load_B = 1'b1;
            end
            
            default:
                begin 
                    Reset = 1'b0;
                    Load_A = 1'b0;
                    Load_B = 1'b0;
                    Shift = 1'b0;
                    Sub = 1'b0;
                    Add = 1'b0;
                end 
                s1,s2,s3,s4,s5,s6,s7,s8:
                begin
                    Shift = 1'b1;
                end
            
        endcase 
     
      end
    
endmodule     
        


