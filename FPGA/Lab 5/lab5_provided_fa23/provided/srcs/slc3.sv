//------------------------------------------------------------------------------
// Company: 		 UIUC ECE Dept.
// Engineer:		 Stephen Kempf
//
// Create Date:    
// Design Name:    ECE 385 Given Code - SLC-3 core
// Module Name:    SLC3
//
// Comments:
//    Revised 03-22-2007
//    Spring 2007 Distribution
//    Revised 07-26-2013
//    Spring 2015 Distribution
//    Revised 09-22-2015 
//    Revised 06-09-2020
//	  Revised 03-02-2021
//    Xilinx vivado
//    Revised 07-25-2023 
//------------------------------------------------------------------------------


module slc3(
	input logic [15:0] SW,
	input logic	Clk, Reset, Run, Continue,
	output logic [15:0] LED,
	input logic [15:0] Data_from_SRAM,
	output logic OE, WE,
	output logic [7:0] hex_seg,
	output logic [3:0] hex_grid,
	output logic [7:0] hex_segB,
	output logic [3:0] hex_gridB,
	output logic [15:0] ADDR,
	output logic [15:0] Data_to_SRAM
);

// Internal connections
logic LD_MAR, LD_MDR, LD_IR, LD_BEN, LD_CC, LD_REG, LD_PC, LD_LED;
logic GatePC, GateMDR, GateALU, GateMARMUX;
logic SR2MUX, ADDR1MUX, MARMUX;
logic BEN, MIO_EN;
logic [1:0] PCMUX, ADDR2MUX, ALUK;
logic [15:0] MDR_In;
logic [15:0] MAR, MDR, IR;
//logic [3:0] hex_41[3:0], hex_42[3:0], hex_43[3:0], hex_44[3:0]; 
logic [1:0] SR1MUX_selector, DRMUX_selector;
logic [3:0] hex_4[3:0]; 

HexDriver HexA (
    .clk(Clk),
    .reset(Reset),
    .in({hex_4[3][3:0],  hex_4[2][3:0], hex_4[1][3:0], hex_4[0][3:0]}),
    .hex_seg(hex_seg),
    .hex_grid(hex_grid)
);

//HexDriver HexA (
//    .clk(Clk),
//    .reset(Reset),
//    .in({DoutMDR[15:12],DoutMDR[11:8],DoutMDR[7:4],DoutMDR[3:0]}),
//    .hex_seg(hex_seg),
//    .hex_grid(hex_grid)
//);

// You may use the second (right) HEX driver to display additional debug information
// For example, Prof. Cheng's solution code has PC being displayed on the right HEX


HexDriver HexB(
    .clk(Clk),
    .reset(Reset),
    .in({DoutIR[15:12],  DoutIR[11:8], DoutIR[7:4], DoutIR[3:0]}),
    .hex_seg(hex_segB),
    .hex_grid(hex_gridB)
);




// Connect MAR to ADDR, which is also connected as an input into MEM2IO
//	MEM2IO will determine what gets put onto Data_CPU (which serves as a potential
//	input into MDR)
assign ADDR = MAR; 
assign MIO_EN = OE;

// Instantiate the rest of your modules here according to the block diagram of the SLC-3
// including your register file, ALU, etc..



//Creating PC
    logic [15:0] pc_In,pc_Out; 
    logic Reset_PC;
  
    registers PC(.Din(pc_In), .Load(LD_PC),.Clk(Clk), .Dout(pc_Out), .Reset(Reset_PC));    
    always_comb
    begin
        pc_In = 16'hZZZZ;
            unique case(PCMUX)
        
        2'b00: pc_In = pc_Out+1;
        2'b01: pc_In = BUS;
        2'b10: pc_In = ADDROUT; 
    
            endcase
     end
  
//Gate selects 
   
   logic [15:0] BUS;
   logic [4:0] GateSelect;
   
   
   // gate mux
   always_comb 
   begin
   GateSelect = {GatePC, GateMDR, GateALU, GateMARMUX};
   BUS = 16'hABCD;
    case(GateSelect)
        4'b1000: BUS = pc_Out;
        4'b0100: BUS = DoutMDR;
        4'b0010: BUS = ALUOUT;
        4'b0001: BUS = ADDROUT;   
   endcase
   end
   
   // mdr mux
   always_comb
   begin 
   DinMDR = 16'hXXXX;
    case(MIO_EN)
        1'b0: DinMDR = BUS;
        1'b1: DinMDR = MDR_In;
        
   endcase
   end
   
   logic [15:0] DoutMAR;
   logic [15:0] DoutMDR;
   logic [15:0] DinMDR;
   logic [15:0] DoutIR;
   
   registers MARreg(.Din(BUS), .Load(LD_MAR), .Clk(Clk), .Reset(Reset),  .Dout(MAR));
   registers MDRreg(.Din(DinMDR), .Load(LD_MDR),.Clk(Clk), .Reset(Reset), .Dout(DoutMDR));
   registers IRreg(.Din(BUS), .Load(LD_IR),.Clk(Clk), .Reset(Reset), .Dout(DoutIR));
   
   // After Fetch Stage IR passed to check SEXT bits
   
   logic [15:0] sextOut6,sextOut9,sextOut11;
   logic [15:0] ADDR2MUXOUT;


   
   SEXT6  sext6(.IR(DoutIR[5:0]), .Dout(sextOut6));
   SEXT9  sext9(.IR(DoutIR[8:0]), .Dout(sextOut9));
   SEXT11 sext11(.IR(DoutIR[10:0]), .Dout(sextOut11));
   
 
   
   always_comb 
    begin
        unique case(ADDR2MUX)
            2'b00 :
                ADDR2MUXOUT = 4'h0000;
            2'b01 :
                ADDR2MUXOUT = sextOut6;
            2'b10 :
                ADDR2MUXOUT = sextOut9;
            2'b11 :
                ADDR2MUXOUT = sextOut11;
          endcase
      end

//ADDR1MUX Logic //2 inputs pc_out and Sr1OUT [15:0] both 0->PC and 1->SR1OUT
    logic [15:0] ADDR1MUXOUT;

    always_comb
        begin
            unique case(ADDR1MUX)
              1'b0 :
                ADDR1MUXOUT = pc_Out;
              1'b1 :
                ADDR1MUXOUT = SR1OUT; 
             endcase
         end       
         
//Adds both ADDR1 and ADDR2 to get output for PC MUX and GATE
    logic [15:0] ADDROUT;
    assign ADDROUT = ADDR1MUXOUT + ADDR2MUXOUT;
////



//SR2MUX and ALU Computations
//IR first sign extended [4:0]

  logic [15:0] sextOut5;
  logic [15:0] SR2MUXOUT;
  
  SEXT5  sext5(.IR(DoutIR), .Dout(sextOut5));
  
  always_comb
    begin
        unique case (SR2MUX)
   
        1'b0 :
            SR2MUXOUT = SR2OUT; 
        1'b1 :
            SR2MUXOUT = sextOut5;
        endcase
     end
     
//ALU Section 4 differnt functions
    logic [15:0] ALUOUT;
     
ALU  alu(.SR2MUXOUT(SR2MUXOUT), .SR1OUT(), .sel(ALUK), .ALUOUT(ALUOUT));


//Register File SR1MUX and DRMUX and SR2 selecter bits 
//Input SR1MUX DoutIR, Selecter bit SR1MUX and output SR1MUXOUT
//Input DRMUX Dout IR,Selcter DRMUX and output DRMUXOUT

logic [2:0] sr1muxOut,drmuxOut;

SR1MUX  sr1mux(.IR_REG(DoutIR), .SR1(SR1MUX_selector), .SR1MUXOUT(sr1muxOut));
DRMUX drmux(.IR_REG(DoutIR), .DR(DRMUX_selector), .DRMUXOUT(drmuxOut));

//REG_FILE with inputs from SR1mux and DRMUX and SR2

logic [15:0] SR1OUT,SR2OUT;

REG_FILE  regfile(.BUS(BUS),.IR(DoutIR),.DRMUXOUT(drmuxOut),.SR1MUXOUT(sr1muxOut),.LD_REG(LD_REG),.Clk(Clk),.Reset(Reset),
                  .SR2OUT(SR2OUT),.SR1OUT(SR1OUT));


//Ben Output and NZP Registers Inputs Three 1 bit registers N,Z,P and Ben label assigned

    logic [2:0] nzp_temp;
    logic Br_temp;

    always_comb 
        begin
            if(BUS == 16'h0000)
                nzp_temp = 3'b010;
            else if(BUS[15] == 1'b0)
                nzp_temp = 3'b001;
                
            else
                nzp_temp = 3'b100;
          end
          
logic N_cc_out, P_cc_out, Z_cc_out;
registers  #(.N(0)) N_reg(.Din(nzp_temp[2]), .Load(LD_CC), .Clk(Clk), .Reset(Reset), .Dout(N_cc_out));
registers  #(.N(0)) Z_reg(.Din(nzp_temp[1]), .Load(LD_CC), .Clk(Clk), .Reset(Reset), .Dout(Z_cc_out));
registers  #(.N(0)) P_reg(.Din(nzp_temp[0]), .Load(LD_CC), .Clk(Clk), .Reset(Reset), .Dout(P_cc_out));
assign tmp_Ben_Out = ((DoutIR[11]&N_cc_out) | (DoutIR[10]&P_cc_out) | (DoutIR[9]&Z_cc_out));

//Creating Ben Registers
logic Ben_out;

registers #(.N(0)) Ben_reg(.Din(tmp_Ben_Out), .Load(LD_BEN), .Clk(Clk), .Reset(Reset), .Dout(Ben_out));

always_ff @ (posedge Clk)
		begin
			
			if(LD_LED)
				begin
					LED <= DoutIR [9:0];
				end
			else
			  begin
					LED <= 10'b0000000000;
				end
		end

// Our I/O controller (note, this plugs into MDR/MAR)

Mem2IO memory_subsystem(
    .*, .Reset(Reset), .ADDR(ADDR), .Switches(SW),
   .HEX0(hex_4[0][3:0]), .HEX1(hex_4[1][3:0]), .HEX2(hex_4[2][3:0]), .HEX3(hex_4[3][3:0]), 
    .Data_from_CPU(DoutMDR), .Data_to_CPU(MDR_In),
    .Data_from_SRAM(Data_from_SRAM), .Data_to_SRAM(Data_to_SRAM)
);

// State machine, you need to fill in the code here as well
ISDU state_controller(
	.*, .Reset(Reset), .Run(Run), .Continue(Continue),
	.Opcode(DoutIR[15:12]), .IR_5(DoutIR[5]), .IR_11(DoutIR[11]),
	.Reset_PC(Reset_PC),
   .Mem_OE(OE), .Mem_WE(WE),.BEN(Ben_out),
   .SR1MUX_sel(SR1MUX_selector), .DRMUX(DRMUX_selector)
   
);
	
endmodule
