module alu
import rv32i_types::*;

(
    input logic [31:0] data_one,
    input logic [31:0] data_two,
    input logic [2:0]  aluop,
    
    output logic [31:0] aluout,
    output logic        zero
);

    // logic signed   [31:0] as;
    // assign as signed'(data_one);

    always_comb begin
        unique case (aluop)
            alu_op_add: aluout = data_one +   data_two;        
            alu_op_sll: aluout = data_one <<  data_two[4:0];
            alu_op_sra: aluout = unsigned'(data_one >>> data_two[4:0]);
            alu_op_sub: aluout = data_one -   data_two;
            alu_op_xor: aluout = data_one ^   data_two;
            alu_op_srl: aluout = data_one >>  data_two[4:0];
            alu_op_or : aluout = data_one |   data_two;
            alu_op_and: aluout = data_one &   data_two;
            default   : aluout = 'x;
        endcase
    end

    always_comb begin
        if(aluout == 0) begin
            zero = 1'b1;
        end else begin
            zero = 1'b0;
        end
    end

endmodule : alu