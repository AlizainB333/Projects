
module audio(
    input logic clk,
    input logic reset,
    output logic audioLeft,
    output logic audioRight
    );
    
    parameter integer SAMPLE_RATE = 10000;
    parameter integer DIVISOR = 100000000 / SAMPLE_RATE / 2;
    parameter integer COUNT_DEPTH = $clog2(DIVISOR);

    logic [17:0] curr_byte_addr = 0;
    logic [7:0] nstates;
    rom music(.add(curr_byte_addr), .data(nstates));  
    
    logic slow_clk;
    logic [COUNT_DEPTH - 1:0] clk_counter;

    always_ff @ (posedge clk) begin
        if (reset) begin
            clk_counter <= 0;
            slow_clk <= 0;
        end
        else if (clk_counter >= DIVISOR - 1) begin
            slow_clk <= ~slow_clk;
            clk_counter <= 0;
        end
        else
            clk_counter <= clk_counter + 1;
    end

    logic sig = 0;
    logic [7:0] counter = 1;
    always_ff @ (posedge slow_clk) begin
        if (nstates == 8'h69) begin
            curr_byte_addr <= 0;
            sig <= 0;
            counter <= 1;
        end
        if (counter >= nstates) begin
            sig <= ~sig;
            curr_byte_addr <= curr_byte_addr + 1;
            counter <= 1;
        end
        
        else begin
            counter <= counter + 1;
        end
    end
    
    assign audioLeft = sig;
    assign audioRight = sig;
endmodule
