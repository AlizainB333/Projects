task verify_alu(output bit passed);
    bit [31:0] a_rand;
    bit [31:0] b_rand;
    bit [31:0] exp_f;

    passed = 1'b1;

    // TODO: Modify this code to cover all coverpoints in coverage.svh.
    for (int i = 0; i <= 750; ++i) begin
        std::randomize(a_rand);
        // TODO: Randomize b_rand using std::randomize.
        std::randomize(b_rand);
        // TODO: Call the sample_cg function with the right arguments.
        // This tells the covergroup about what stimulus you sent
        // to the DUT.

        sample_cg(a_rand,b_rand,i[2:0]);

        case (i[2:0])
            0: exp_f = a_rand & b_rand;
            1: exp_f = a_rand | b_rand;
            2: exp_f = ~a_rand;
            3: exp_f = a_rand + b_rand;
            4: exp_f = a_rand - b_rand;
            5: exp_f = a_rand << b_rand[4:0];
            6: exp_f = a_rand >> b_rand[4:0];
            default: exp_f = 'x;

            // TODO: Fill out the rest of the operations.
        endcase

        // TODO: Drive the operand and op to DUT
        // Make sure you use non-blocking assignment (<=)

        a <= a_rand;
        b <= b_rand;
        aluop <= i[2:0];
        valid_i <= 1'b1;

        // TODO: Wait one cycle for DUT to get the signal, then deassert valid

        @(posedge clk)
        valid_i <= 1'b0;

        // TODO: Wait for the valid_o signal to come out of the ALU 
        // and check the result with the expected value,
        // modify the function output
        // "passed" if needed to tell top_tb if the ALU failed

        @(posedge clk iff valid_o) begin
            if (f == exp_f) begin
                passed = 1'b1;
            end 
            else begin
                passed = 1'b0;
            end
        end

    end

endtask : verify_alu
