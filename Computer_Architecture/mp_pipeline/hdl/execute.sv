module execute
import rv32i_types::*;

(
    input  id_decode_stage_reg_t    decode_reg,
    
    input logic     [1:0]           forward_a_reg_sel,
    input logic     [1:0]           forward_b_reg_sel,

    input id_memory_stage_reg_t     memory_reg,

    input logic     [31:0]          forward_memory_rd_v,

    input logic     [31:0]          rs1_v,
    input logic     [31:0]          rs2_v,

    output  logic   [31:0]          branch_addr,
    output  logic                   br_en,


    output  logic   [3:0]          dmem_rmask,    
    output  logic   [3:0]          dmem_wmask,
    output  logic   [31:0]         dmem_wdata,
    output  logic   [31:0]         dmem_addr,


    output id_execute_stage_reg_t   execute_reg
);
    logic   [6:0]  funct7;
    logic   [31:0] alu_input_one;
    logic   [31:0] alu_input_two;
    logic   [2:0]  cmpop;
    logic   [2:0]  aluop;
    logic   [31:0]  a;
    logic   [31:0]  b;

    assign funct7 = decode_reg.instr[31:25];


    // ALU MUX1 Logic (With Forwarding) ------------------------------------------
    always_comb begin
        // Forwarding Reg 1
        unique case(forward_a_reg_sel) 
            2'b00: alu_input_one = rs1_v;
            2'b01: alu_input_one = forward_memory_rd_v;
            2'b10: alu_input_one = memory_reg.rd_v;
            default: alu_input_one = rs1_v;
        endcase
    
        // Forwarding Reg 2
        unique case(forward_b_reg_sel) 
            // If not required check if imm or reg source
            2'b00: begin 
                unique case (decode_reg.alusrc)
                    1'b1: begin
                        alu_input_two = decode_reg.imm_output;
                    end 
                    1'b0: begin
                        alu_input_two = rs2_v;
                    end
                    default: alu_input_two = '0;
                endcase
            end 
            2'b01: alu_input_two   = decode_reg.alusrc ? decode_reg.imm_output : forward_memory_rd_v;
            2'b10: alu_input_two   = decode_reg.alusrc ? decode_reg.imm_output : memory_reg.rd_v;
            default: alu_input_two = decode_reg.alusrc ? decode_reg.imm_output : rs2_v;
        endcase
    end


    alu alu_unit (
        .data_one(alu_input_one),
        .data_two(alu_input_two),
        .aluop(aluop),
        .aluout(execute_reg.aluout),
        .zero(execute_reg.zero)
    );

    // ALU Logic ENDS -----------------------------------------------------


    // Branching Logic Starts ---------------------------------------------

    
    logic signed   [31:0] as;
    logic signed   [31:0] bs;
    logic unsigned [31:0] au;
    logic unsigned [31:0] bu;

    assign as =   signed'(alu_input_one);
    assign bs =   signed'(alu_input_two);
    assign au = unsigned'(alu_input_one);
    assign bu = unsigned'(alu_input_two);

    branch branch_unit (
        .au(au),
        .as(as),
        .bu(bu),
        .bs(bs),
        .cmpop(cmpop),
        .opcode(execute_reg.opcode),
        .br_en(br_en)
    );

    always_comb begin
        branch_addr = (br_en) ? decode_reg.pc + decode_reg.imm_output : '0;
    end

    // End Branch Logic ------------------------------------------------


    always_comb begin
        execute_reg.dmem_addr =  dmem_addr;
        execute_reg.dmem_wmask = dmem_wmask;
        execute_reg.dmem_wdata = dmem_wdata;
        execute_reg.dmem_rmask = dmem_rmask;
    end

    always_comb begin
        //Instruction Related and PC
        execute_reg.commit  = decode_reg.commit;
        execute_reg.order   = decode_reg.order;
        execute_reg.instr   = decode_reg.instr;
        execute_reg.pc      = decode_reg.pc;
        // execute_reg.pc_next = (br_en) ? branch_addr : decode_reg.pc_next;
        execute_reg.pc_next = decode_reg.pc_next;

        execute_reg.forward_instr = decode_reg.forward_instr;

        // Registers 
        execute_reg.rs1_s = decode_reg.rs1_s;
        execute_reg.rs2_s = decode_reg.rs2_s;
        execute_reg.rs1_v = (forward_a_reg_sel == 2'b00) ? rs1_v : alu_input_one;
        execute_reg.rs2_v = (forward_b_reg_sel == 2'b00) ? rs2_v : alu_input_two;
        execute_reg.rd_s  = decode_reg.rd_s;

        execute_reg.aluout_one = alu_input_one;

        execute_reg.funct3 = decode_reg.funct3;

        // Propagating signals
        execute_reg.alusrc     = decode_reg.alusrc;
        execute_reg.memto_reg  = decode_reg.memto_reg;
        execute_reg.mem_write  = decode_reg.mem_write;
        execute_reg.branch_en  = decode_reg.branch_en;
        execute_reg.regf_we    = decode_reg.regf_we;
        execute_reg.opcode     = decode_reg.opcode;
        execute_reg.imm_output = decode_reg.imm_output;

        a = '0;
        b = '0;
        aluop = '0;
        cmpop = '0;
        dmem_wmask = '0;
        dmem_wdata ='0;
        dmem_rmask = '0;
        dmem_addr = '0;
        execute_reg.rd_v = decode_reg.rd_v;


        unique case (execute_reg.opcode) 

            op_b_lui, op_b_auipc: execute_reg.rd_v  = decode_reg.rd_v; 

            op_b_imm: begin 
                unique case (decode_reg.funct3)
                    arith_f3_slt: begin
                        a = execute_reg.rs1_v;
                        b = execute_reg.imm_output;
                        cmpop = branch_f3_blt;
                        execute_reg.rd_v = {31'd0, br_en};
                    end
                    arith_f3_sltu: begin
                        a = execute_reg.rs1_v;
                        b = execute_reg.imm_output;
                        cmpop = branch_f3_bltu;
                        execute_reg.rd_v = {31'd0, br_en};
                    end
                    arith_f3_add: begin
                        aluop = alu_op_add;
                        execute_reg.rd_v = execute_reg.aluout;
                    end
                    default: begin
                        execute_reg.rd_v = execute_reg.aluout;
                        aluop = decode_reg.funct3;
                        cmpop = '0;
                    end
                endcase
            end

            op_b_reg: begin
                unique case (decode_reg.funct3)
                    arith_f3_add: begin
                        if (funct7[5]) begin
                            aluop = alu_op_sub;
                            execute_reg.rd_v = execute_reg.aluout;
                        end else begin
                            aluop = alu_op_add;
                            execute_reg.rd_v = execute_reg.aluout;
                        end
                    end
                    arith_f3_sr: begin
                        if (funct7[5]) begin
                            aluop = alu_op_sra;
                            execute_reg.rd_v = execute_reg.aluout;

                        end else begin
                            aluop = alu_op_srl;
                            execute_reg.rd_v = execute_reg.aluout;

                        end
                    end 
                    arith_f3_slt: begin
                            a = execute_reg.rs1_v;
                            b = execute_reg.rs2_v;
                            cmpop = branch_f3_blt;
                            execute_reg.rd_v = {31'd0, br_en};
                        end
                    default: begin
                        execute_reg.rd_v = execute_reg.aluout;
                        aluop = decode_reg.funct3;
                        cmpop = '0;
                    end
                endcase
            end

            op_b_store: begin
                // dmem_addr = rs1_v + decode_reg.imm_output;
                dmem_addr = execute_reg.aluout;
                // Assign Mask to Select correct bits to write to in memory
                unique case (decode_reg.funct3)
                    store_f3_sb: dmem_wmask = 4'b0001 << dmem_addr[1:0];
                    store_f3_sh: dmem_wmask = 4'b0011 << dmem_addr[1:0]; 
                    store_f3_sw: dmem_wmask = 4'b1111;
                    default    : dmem_wmask = '1;
                endcase

                // Forwarding Logic for Store
                if(forward_b_reg_sel != 0) begin
                    execute_reg.rs2_v = forward_memory_rd_v;
                    unique case (decode_reg.funct3)
                        store_f3_sb: dmem_wdata[8 *dmem_addr[1:0] +: 8]  = forward_memory_rd_v[7 :0];
                        store_f3_sh: dmem_wdata[16*dmem_addr[1]   +: 16] = forward_memory_rd_v[15:0];
                        store_f3_sw: dmem_wdata = forward_memory_rd_v;
                        default    : dmem_wdata = '1;
                    endcase
                    dmem_addr[1:0] = 2'd0; 
                end else begin 
                    // Data to write to memory
                    unique case (decode_reg.funct3)
                        store_f3_sb: dmem_wdata[8 *dmem_addr[1:0] +: 8]  = execute_reg.rs2_v[7 :0];
                        store_f3_sh: dmem_wdata[16*dmem_addr[1]   +: 16] = execute_reg.rs2_v[15:0];
                        store_f3_sw: dmem_wdata = execute_reg.rs2_v;
                        default    : dmem_wdata = '1;
                    endcase
                    dmem_addr[1:0] = 2'd0;
                end


            end

            op_b_load: begin
                // dmem_addr = rs1_v + decode_reg.imm_output;
                dmem_addr = execute_reg.aluout;
                unique case (decode_reg.funct3)
                        load_f3_lb, load_f3_lbu: dmem_rmask = 4'b0001 << dmem_addr[1:0];
                        load_f3_lh, load_f3_lhu: dmem_rmask = 4'b0011 << dmem_addr[1:0];
                        load_f3_lw             : dmem_rmask = 4'b1111;
                        default                : dmem_rmask = 'x;
                endcase
                dmem_addr[1:0] = 2'd0;
            end

            op_b_br: begin
                execute_reg.pc_next = branch_addr;
                cmpop = execute_reg.funct3;
            end

            // op_b_jal: begin
            //     branch_addr = execute_reg.aluout;
            //     execute_reg.pc_next = branch_addr;
            //     // br_en = '1;
            // end

            // op_b_jalr: begin
            //     branch_addr = execute_reg.aluout & 32'hfffffffe;
            //     execute_reg.pc_next = branch_addr;
            //     // br_en = '1;
            // end

            default: begin
                dmem_addr = '0;
                execute_reg.rd_v = execute_reg.aluout;
                aluop            = decode_reg.funct3;
                cmpop            = '0;
            end
        endcase
    end

    


endmodule : execute
