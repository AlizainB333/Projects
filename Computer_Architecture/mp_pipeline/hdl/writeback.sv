module write_back
import rv32i_types::*;

(
    input  id_memory_stage_reg_t memory_reg,
    output logic [31:0] rd_v,
    output logic [4:0]  rd_s,
    output logic wr_en
    // output logic rd_sel
);


    always_comb begin
        rd_v = '0;
        wr_en = '0;
        rd_s = '0;
        // if (memory_reg.commit) begin
        unique case (memory_reg.opcode)
            op_b_auipc: rd_v = memory_reg.rd_v;
            op_b_lui:   rd_v = memory_reg.rd_v;
            op_b_imm: rd_v = memory_reg.rd_v;
            op_b_reg: rd_v = memory_reg.rd_v;
            op_b_load: rd_v = memory_reg.rd_v;
            op_b_store: rd_v = memory_reg.rd_v;
            default: begin end
        endcase
        wr_en = memory_reg.regf_we;
        rd_s = memory_reg.rd_s;
        // end
    end



endmodule : write_back