//------------------------------------------------------------------------------
// Company:          UIUC ECE Dept.
// Engineer:         Stephen Kempf
//
// Create Date:    17:44:03 10/08/06
// Design Name:    ECE 385 Given Code - Incomplete ISDU for SLC-3
// Module Name:    ISDU - Behavioral
//
// Comments:
//    Revised 03-22-2007
//    Spring 2007 Distribution
//    Revised 07-26-2013
//    Spring 2015 Distribution
//    Revised 02-13-2017
//    Spring 2017 Distribution
//    Revised 07-25-2023
//    Xilinx Vivado
//------------------------------------------------------------------------------


module ISDU (   input logic         Clk, 
									Reset,
									Run,
									Continue,
									
				input logic[3:0]    Opcode, 
				input logic         IR_5,
				input logic         IR_11,
				input logic         BEN, 
				  
				output logic        LD_MAR,
									LD_MDR,
									LD_IR,
									LD_BEN,
									LD_CC,
									LD_REG,
									LD_PC,
									LD_LED, // for PAUSE instruction
									
				output logic        GatePC,
									GateMDR,
									GateALU,
									GateMARMUX,
									
				output logic [1:0]  PCMUX,DRMUX,SR1MUX_sel,
				output logic        SR2MUX,
									ADDR1MUX,
				output logic [1:0]  ADDR2MUX,
									ALUK,
				output logic        Reset_PC,
				output logic        Mem_OE,
									Mem_WE
				);

	enum logic [4:0] {  Halted, 
						PauseIR1, 
						PauseIR2, 
						S_18, 
						S_33_1,S_33_2,S_33_3,
						S_35, 
						S_32, 
						S_01,
						S_05,
						S_09,
						S_06,
						S_25_1,
						S_27,
						S_07,
						S_23,
						S_16_1,
						S_16_2, S_16_3,
						S_04,
						S_21,
						S_12,
						S_22,
						S_00,
						S_25_2, S_25_3}   State, Next_state;   // Internal state logic
		
	always_ff @ (posedge Clk)
	begin
		if (Reset) 
			State <= Halted;
		else 
			State <= Next_state;
	end
   
	always_comb
	begin 
		// Default next state is staying at current state
		Next_state = State;
		
		// Default controls signal values
		LD_MAR = 1'b0;
		LD_MDR = 1'b0;
		LD_IR = 1'b0;
		LD_BEN = 1'b0;
		LD_CC = 1'b0;
		LD_REG = 1'b0;
		LD_PC = 1'b0;
		LD_LED = 1'b0;
		 
		GatePC = 1'b0;
		GateMDR = 1'b0;
		GateALU = 1'b0;
		GateMARMUX = 1'b0;
		 
		ALUK = 2'b00;
		 
		PCMUX = 2'b00;
		DRMUX = 2'b00;
		SR1MUX_sel = 2'b00;
		SR2MUX = 1'b0;
		ADDR1MUX = 1'b0;
		ADDR2MUX = 2'b00;
		 
		Reset_PC = 1'b0;
		Mem_OE = 1'b0;
		Mem_WE = 1'b0;
	
		// Assign next state
		unique case (State)
			Halted : 
				if (Run) 
					Next_state = S_18;
			S_18 : 
				Next_state = S_33_1; //Notice that we usually have 'R' here, but you will need to add extra states instead 
			S_33_1 : Next_state = S_33_2;             //e.g. S_33_2, etc. How many? As a hint, note that the BRAM is synchronous, in addition, 
			S_33_2 : Next_state = S_33_3;
			S_33_3 : Next_state = S_35;				
				   //it has an additional output register. 
				   
				   
			S_35 : 
				Next_state = S_32;
			// PauseIR1 and PauseIR2 are only for Week 1 such that TAs can see 
			// the values in IR.
			PauseIR1 : 
				if (~Continue) 
					Next_state = PauseIR1;
				else 
					Next_state = PauseIR2;
			PauseIR2 : 
				if (Continue) 
					Next_state = PauseIR2;
				else 
					Next_state = S_18;
			S_32 : 
				case (Opcode)
					4'b0001 : 
						Next_state = S_01;
				    4'b0101 :
				        Next_state = S_05;
				    4'b1001 :
				        Next_state = S_09;
				    4'b0110 :
				        Next_state = S_06;
				    4'b0111 :
				        Next_state = S_07;
				    4'b0100 :
				        Next_state = S_04;
				    4'b1100 :
				        Next_state = S_12;
				    4'b0000 :
				        Next_state = S_00;
				    4'b1101 :
				        Next_state = PauseIR1;
				   
					
					// You need to finish the rest of opcodes.....

					default : 
						Next_state = S_18;
				endcase
			S_01 : 
				Next_state = S_18;
		    S_05 :
		        Next_state = S_18;
		    S_09 :
		        Next_state = S_18;
		    S_06 :
		        Next_state = S_25_1;
		    S_25_1 :
		        Next_state = S_25_2;
		    S_25_2 :
		        Next_state = S_25_3;
		    S_25_3 :
		      Next_state = S_27;
		    S_27 :
		        Next_state = S_18;
		    S_07 :
		        Next_state = S_23;
		    S_23 :
		        Next_state = S_16_1;
		    S_16_1 :
		        Next_state = S_16_2;
		    S_16_3 : 
		        Next_state = S_16_3;
		    S_16_3 :
		      Next_state = S_18;
		    S_04 :
		        Next_state = S_21;
		    S_21 :
		        Next_state = S_18;
		    S_12 :
		        Next_state = S_18;
		    S_00 :
		        if(BEN)
		          Next_state = S_22;
		        else
		          Next_state = S_18;
		    S_22 :
		        Next_state = S_18;
		              
			// You need to finish the rest of states.....
			
			default :;

		endcase
		
		// Assign control signals based on current state
		case (State)
			Halted: Reset_PC = 1'b1; 
			S_18 : 
				begin 
					GatePC = 1'b1;
					LD_MAR = 1'b1;
					PCMUX = 2'b00;
					LD_PC = 1'b1;
					Mem_OE = 1'b0;
					Mem_WE = 1'b0;
				end
			S_33_1, S_33_2, S_33_3 : //You may have to think about this as well to adapt to RAM with wait-states
				begin
					Mem_OE = 1'b1;
					LD_MDR = 1'b1;
				end
			S_35 : 
				begin 
					GateMDR = 1'b1;
					LD_IR = 1'b1;
				end
			PauseIR1: LD_LED = 1'b1; 
			PauseIR2: LD_LED = 1'b1;  
			S_32 : 
				LD_BEN = 1'b1;
			S_01 : 
				begin 
				    SR1MUX_sel = 2'b01;
					SR2MUX = IR_5;
					ALUK = 2'b00;
					GateALU = 1'b1;
					LD_REG = 1'b1;
					LD_CC = 1'b1;
					DRMUX = 1'b0;
					// incomplete...
				end
		   S_05 :
		      begin 
		           SR2MUX = IR_5;
		           ALUK = 2'b01;
		           GateALU = 1'b1;
		           LD_REG = 1'b1;
		           LD_CC = 1'b1;
		           SR1MUX_sel = 2'b01;
		           DRMUX = 1'b0;
		      end
		  S_09 :
		      begin
		          ALUK = 2'b10;
		          GateALU = 1'b1;
		          LD_REG = 1'b1;
		          LD_CC = 1'b1;
		          SR1MUX_sel = 1'b01;
		          DRMUX = 1'b0;
		      end
		  S_06 :
		      begin
		          ADDR1MUX = 1'b1;
		          ADDR2MUX = 2'b01;
		          SR1MUX_sel = 1'b01;
		          GateMARMUX = 1'b1;
		          LD_MAR = 1'b1;
		      end
		  S_25_1 :
		      begin
		          Mem_OE = 1'b1;
		          LD_MDR = 1'b1;
		      end
		  S_25_2 :
		      begin
		          Mem_OE = 1'b1;
		          LD_MDR = 1'b1;
		      end
		  S_25_3 :
		      begin
		          Mem_OE = 1'b1;
		          LD_MDR = 1'b1;
		      end
		  S_27 :
		      begin
		          GateMDR = 1'b1;
                  LD_REG = 1'b1;
                  DRMUX = 2'b00;		          
		          LD_CC = 1'b1;
		      end
		  S_07 :
		      begin
		          ADDR1MUX = 1'b1;
		          ADDR2MUX = 2'b01;
		          SR1MUX_sel = 2'b00;
		          GateMARMUX = 1'b1;
		          LD_MAR = 1'b1;
		      end
		  S_23 :
		      begin
		          LD_MDR = 1'b1;
		          SR1MUX_sel = 2'b00;
		          ALUK = 2'b11;
		          GateALU = 1'b1;
		      end
		  S_16_1, S_16_2, S_16_3 :
		      begin
		          Mem_WE = 1'b1;
		          Mem_OE = 1'b1;
		      end		  
		S_04 :
		      begin
		          GatePC = 1'b1;
		          LD_PC = 1'b1;
		          LD_REG = 1'b1;
		      end
		 S_21 :
		      begin 
		          ADDR2MUX =  2'b11;
		          ADDR1MUX = 2'b00;
		          LD_PC = 1'b1;
		          PCMUX = 2'b10;
		      end
		 S_12 :
		      begin
		          LD_PC = 1'b1;
		          SR1MUX_sel = 2'b01;
		          ADDR2MUX = 2'b00;
		          ADDR1MUX = 1'b1;
		          PCMUX = 2'b10;
		      end  
		 S_00 : ;
		 
		 S_22 :
		      begin
		          LD_PC = 1'b1;
		          ADDR2MUX = 2'b10;
		          ADDR1MUX = 1'b0;
		          PCMUX = 2'b10;
		      end
		    




			// You need to finish the rest of states..... 

			default : ;
		endcase
	end 

	
endmodule
