module foo(
    input   logic           clk,
    input   logic           rst,
    input   logic           req,
    input   logic   [3:0]   req_key,
    output  logic           ack
);

            logic   [3:0]   internal_counter;
            logic           ack_reg;

    always_ff @(posedge clk) begin
        if (rst) begin
            internal_counter <= '1;
        end else begin
            internal_counter <= internal_counter - 4'd1;
            // ack_reg <= req && (req_key == internal_counter);
        end
    end

    always_comb begin
        ack = req && (req_key == internal_counter);
    end

endmodule
