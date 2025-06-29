import common::*;

module zoufu_database
    (
    input logic clk,
    input logic we,
    input logic [7: 0] addr,
    
    output zoufu_t dataOut[n_zoufus],
    input logic [31: 0] dataIn
    );
    
    // testing
    zoufu_t zoufus[n_zoufus] = {
        { 1'b1, 8'h00, 10'b0011001000, 10'b0011001000},
        { 1'b1, 8'h00, 10'b0010010000, 10'b0110010000},
        { 1'b1, 8'h00, 10'b0110010000, 10'b0110010000}
    };
    
    always_ff @ (posedge clk) begin
        if (we)
            zoufus[addr] <= dataIn;
    end
    
    assign dataOut = zoufus;
endmodule
