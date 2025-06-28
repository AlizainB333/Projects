module memory
import rv32i_types::*;

(
    input id_execute_stage_reg_t execute_reg, 

    input logic    [31:0]   dmem_rdata,
    input logic             dmem_resp,

    output id_memory_stage_reg_t memory_reg,

    output logic stallPipeline
);

    logic    [31:0]         dmem_addr_full;
    
    always_comb begin
        memory_reg.dmem_addr  = execute_reg.dmem_addr;
        memory_reg.dmem_wmask = execute_reg.dmem_wmask;
        memory_reg.dmem_wdata = execute_reg.dmem_wdata;
        memory_reg.dmem_rmask = execute_reg.dmem_rmask;
        memory_reg.dmem_rdata = dmem_rdata;
    end

    always_comb begin
        memory_reg.commit = execute_reg.commit;
        memory_reg.order = execute_reg.order;
        memory_reg.instr = execute_reg.instr;
        memory_reg.rs1_s = execute_reg.rs1_s;
        memory_reg.rs2_s = execute_reg.rs2_s;
        memory_reg.rs1_v = execute_reg.rs1_v;
        memory_reg.rs2_v = execute_reg.rs2_v;
        memory_reg.pc = execute_reg.pc;
        memory_reg.pc_next = execute_reg.pc_next;

        // Propagating Signals
        memory_reg.alusrc = execute_reg.alusrc;
        memory_reg.memto_reg = execute_reg.memto_reg;
        memory_reg.mem_write = execute_reg.mem_write;
        memory_reg.branch_en = execute_reg.branch_en;
        memory_reg.regf_we = execute_reg.regf_we;
        // Propgate Reg
        memory_reg.rd_s = execute_reg.rd_s;
        memory_reg.opcode = execute_reg.opcode;

        memory_reg.aluout_one = execute_reg.aluout_one;
    end

    // Load Logic
    always_comb begin
        memory_reg.rd_v = execute_reg.rd_v;

        stallPipeline = 1'b0;

        if (execute_reg.opcode == op_b_load) begin
            if (dmem_resp) begin
                stallPipeline = 1'b0;
                dmem_addr_full = execute_reg.rs1_v + execute_reg.imm_output;

                unique case (execute_reg.funct3)
                    load_f3_lb : memory_reg.rd_v = {{24{dmem_rdata[7 +8 *dmem_addr_full[1:0]]}}, dmem_rdata[8 *dmem_addr_full[1:0] +: 8 ]};
                    load_f3_lbu: memory_reg.rd_v = {{24{1'b0}},    dmem_rdata[8 *dmem_addr_full[1:0] +: 8 ]};
                    load_f3_lh : memory_reg.rd_v = {{16{dmem_rdata[15+16*dmem_addr_full[1]  ]}}, dmem_rdata[16*dmem_addr_full[1] +: 16]};
                    load_f3_lhu: memory_reg.rd_v = {{16{1'b0}},    dmem_rdata[16*dmem_addr_full[1] +: 16]};
                    load_f3_lw : memory_reg.rd_v = dmem_rdata;
                    default    : memory_reg.rd_v = 'x;
                endcase
            end else begin
                stallPipeline = 1'b1;
            end
        end

        else if (execute_reg.opcode == op_b_store) begin 
            if (dmem_resp) begin
                stallPipeline = 1'b0;
            end else begin
                stallPipeline = 1'b1;
            end
        end

        else if(execute_reg.opcode == op_b_jal || execute_reg.opcode == op_b_jalr) begin
            memory_reg.rd_v = execute_reg.pc + 'd4;
        end
    end


endmodule : memory

