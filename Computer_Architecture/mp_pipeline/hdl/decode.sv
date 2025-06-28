module decode 
import rv32i_types::*;

(
    input logic           clk,
    input logic           rst,

    input logic           regf_we,
    input logic   [31:0]  rd_v,
    input logic   [4:0]   rd_s,

    input id_fetch_stage_reg_t   fetch_reg,

    output  logic      [31:0]   rs1_v,
    output  logic      [31:0]   rs2_v,

    output id_decode_stage_reg_t decode_reg
);

    logic [31:0] inst;
    assign inst = fetch_reg.instr;

    // Registers
    // logic   [31:0]  rs1_v;
    // logic   [31:0]  rs2_v;
    logic   [19:15] rs1_s;
    logic   [24:20] rs2_s;
    //Opcode Selection
    logic   [2:0]   funct3;
    logic   [6:0]   funct7;
    logic   [6:0]   opcode;
    //Immd
    logic   [31:0]  i_imm;  
    logic   [31:0]  s_imm;
    logic   [31:0]  b_imm;
    logic   [31:0]  u_imm;
    logic   [31:0]  j_imm;



    // Instruction Decoding
    assign funct3 = inst[14:12];
    assign funct7 = inst[31:25];
    assign opcode = inst[6:0];
    // Register Reading


    regfile regfile(
        .*
    );

    assign decode_reg.imem_rdata = fetch_reg.imem_rdata;


    always_comb begin : Opcode_Selection
        decode_reg.aluop     = '0;
        decode_reg.alusrc    = '0;
        decode_reg.memto_reg = '0;
        decode_reg.regf_we   = '0;
        decode_reg.mem_write = '0;
        decode_reg.branch_en = '0;
        decode_reg.tempflag  = '0;
        decode_reg.rd_v = '0;
        decode_reg.imm_output = '0;

        // Saving Registers
        // decode_reg.rs1_v = rs1_v;   // Reg Save Req
        // decode_reg.rs2_v = rs2_v;   // Reg Save Req
        decode_reg.rs1_s = rs1_s;
        decode_reg.rs2_s = rs2_s;
        decode_reg.rd_s  = inst[11:7];

        decode_reg.forward_instr = fetch_reg.forward_instr;

        //Saving PC
        decode_reg.pc_next = fetch_reg.pc_next; 
        decode_reg.pc = fetch_reg.pc;

        // Saving Funct3 Val
        decode_reg.funct3 = funct3;
        // Saving other REQ
        decode_reg.commit = fetch_reg.commit;
        decode_reg.order = fetch_reg.order;
        decode_reg.instr = fetch_reg.instr;
        decode_reg.opcode = opcode;          
        rs1_s  = inst[19:15];
        rs2_s  = inst[24:20];

        unique case (opcode)
        op_b_lui: begin
            decode_reg.rd_v = u_imm;
            decode_reg.regf_we = 1'b1; 
            decode_reg.tempflag = 1'b1;
            decode_reg.rs2_s = '0;
            decode_reg.rs1_s = '0;
            rs2_s = '0;
            rs1_s = '0;
        end

        op_b_auipc: begin
            decode_reg.regf_we = 1'b1;
            decode_reg.tempflag = 1'b1;
            decode_reg.rs2_s = '0;
            decode_reg.rs1_s = '0;
            rs2_s = '0;
            rs1_s = '0;
        end 
        
        // op_b_jal: begin
        //     decode_reg.rs1_v = fetch_reg.pc;
        //     decode_reg.alusrc = 1'b1;
        //     decode_reg.regf_we = 1'b1;
        //     decode_reg.imm_output = j_imm;
        //     decode_reg.rd_v = fetch_reg.pc + 'd4;
        // end

        // op_b_jalr: begin
        //     decode_reg.alusrc = 1'b1;
        //     decode_reg.regf_we = 1'b1;
        //     decode_reg.imm_output = i_imm;
        // end

        op_b_br: begin
            decode_reg.imm_output = b_imm;
        end

        op_b_load: begin
            decode_reg.imm_output = i_imm;
            if(decode_reg.commit) begin
                decode_reg.regf_we = 1'b1;
            end
            decode_reg.alusrc = 1'b1;
            decode_reg.memto_reg = 1'b1;
            rs2_s = '0;
        end

        op_b_store: begin
            decode_reg.imm_output = s_imm;
            decode_reg.alusrc    =  1'b1;
            decode_reg.mem_write =  1'b1;
            decode_reg.rd_s = '0;
        end

        op_b_imm: begin
            decode_reg.imm_output =    i_imm;
            decode_reg.regf_we    =    1'b1;
            decode_reg.alusrc     =    1'b1;
            rs2_s = '0;
        end
        op_b_reg: begin
            decode_reg.regf_we    = 1'b1;
            decode_reg.alusrc     = 1'b0;
        end

        default: begin
            decode_reg.rs1_s = '0;
            decode_reg.rs2_s = '0;
            decode_reg.regf_we = '0;
            decode_reg.imm_output = '0;
        end
        endcase
    end

    
    always_comb begin : Imm_Selection
        i_imm  = {{21{inst[31]}}, inst[30:20]};
        u_imm  = {inst[31:12], 12'h000};
        s_imm  = {{21{inst[31]}}, inst[30:25], inst[11:7]};
        b_imm  = {{20{inst[31]}}, inst[7], inst[30:25], inst[11:8], 1'b0};
        j_imm  = {{12{inst[31]}}, inst[19:12], inst[20], inst[30:21], 1'b0};        
    end


endmodule : decode





