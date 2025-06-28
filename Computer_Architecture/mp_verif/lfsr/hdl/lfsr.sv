module lfsr #(
    parameter bit   [15:0]  SEED_VALUE = 'hECEB
) (
    input   logic           clk,
    input   logic           rst,
    input   logic           en,
    output  logic           rand_bit,
    output  logic   [15:0]  shift_reg
);

    // TODO: Fill this out!
    logic tapBitOutput;

    always_ff @(posedge clk ) begin : shift_regCode
        if(rst) begin
            shift_reg <= SEED_VALUE;
        end

        else if(en) begin
            rand_bit <= shift_reg[0];   // RandBit is first bit in shift register
            shift_reg <= (shift_reg >> 1);  // Shift all bits to the right by 1 and move tapbit into bit 15
            shift_reg[15] <= tapBitOutput;
        end
    end
    
    assign tapBitOutput = ((shift_reg[0] ^ shift_reg[2]) ^ shift_reg[3]) ^ shift_reg[5]; 

endmodule : lfsr
