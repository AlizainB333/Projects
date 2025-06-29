import common::*;

module t1 (
    input logic [7:0] addr,
    output logic [31:0] data
    );
    always_comb begin
        case(addr)
            8'h00: data = { 8'h01, 1'b1,  3'b001, 10'b0011001000, 10'b0011001000};
            8'h01: data = { 8'h02, 1'b1,  3'b001, 10'b0010010000, 10'b0110010000};
            8'h02: data = { 8'h03, 1'b1,  3'b001, 10'b0110010000, 10'b0110010000};
        endcase
    end
endmodule

module cm();
    timeunit 10ns;
    
    logic [9:0] drawX, drawY;
    logic [3:0] red, green, blue;
//    logic [31:0] zoufus_data[n_zoufus];
    logic [31:0] reg_dataOut;

    zoufu_t zoufus[n_zoufus] = {
        { 1'b1, 6'b000000, 6'b000000, 10'b0011001000, 10'b0011001000, 10'b0011001000, 9'b010110100, 9'b010110100}
//        { 1'b1, 8'h00, 10'b0010010000, 10'b0110010000},
//        { 1'b1, 8'h00, 10'b0110010000, 10'b0110010000}
    };
    
    alizain_t az = {9'b010110100, 9'b010010100};

    color_mapper #(3) cm(
        .DrawX(drawX),
        .DrawY(drawY),
        .red(red),
        .green(green),
        .blue(blue),
        
        .zoufus_data(zoufus),
        .az(az)
    );
    
    initial begin
        for(integer x = 0; x < 250; x+=1) begin
            #5
            drawX = 300;
            drawY = x;
            
        end
    end
endmodule

module gt();

logic clk;

always begin
    #5 clk = 0;
    #5 clk = 1;
end

zoufu_t zoufus_data[n_zoufus];
alizain_t az;
logic w, a, s, d;

game_theory game(
    .game_clk(clk),
    
    .w(w), .a(a), .s(s), .d(d),
    .zoufus_data(zoufus_data),
    .az_data(az)
    );

initial begin
    #10 w = 1;
    
    #10 d = 1;
    
end
endmodule

