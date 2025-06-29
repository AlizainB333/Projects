import common::*;

module toplevel (
    input logic Clk,
//    input logic reset_rtl_0,
    
    input logic w, a, s ,d,
    
    //HDMI
    output logic hdmi_tmds_clk_n,
    output logic hdmi_tmds_clk_p,
    output logic [2:0]hdmi_tmds_data_n,
    output logic [2:0]hdmi_tmds_data_p
    );
    
     
//    logic [31:0] keycode0_gpio, keycode1_gpio;
    logic clk_25MHz, clk_125MHz, clk, clk_100MHz;
    logic locked;
    logic [9:0] drawX, drawY; //ballxsig, ballysig, ballsizesig;

    logic hsync, vsync, vde;
    logic [3:0] red, green, blue;
    logic reset_ah;
    
    assign reset_ah = 1'b0;
    
 
    //clock wizard configured with a 1x and 5x clock for HDMI
    clk_wiz_0 clk_wiz (
        .clk_out1(clk_25MHz),
        .clk_out2(clk_125MHz),
        .reset(reset_ah),
        .locked(locked),
        .clk_in1(Clk)
    );
    
    //VGA Sync signal generator
    vga_controller vga (
        .pixel_clk(clk_25MHz),
        .reset(reset_ah),
        .hs(hsync),
        .vs(vsync),
        .active_nblank(vde),
        .drawX(drawX),
        .drawY(drawY)
    );    

    //Real Digital VGA to HDMI converter
    hdmi_tx_0 vga_to_hdmi (
        //Clocking and Reset
        .pix_clk(clk_25MHz),
        .pix_clkx5(clk_125MHz),
        .pix_clk_locked(locked),
        //Reset is active high
        .rst(reset_ah),
        //Color and Sync Signals
        .red(red),
        .green(green),
        .blue(blue),
        .hsync(hsync),
        .vsync(vsync),
        .vde(vde),
        
        //aux Data (unused)
        .aux0_din(4'b0),
        .aux1_din(4'b0),
        .aux2_din(4'b0),
        .ade(1'b0),
        
        //Differential outputs
        .TMDS_CLK_P(hdmi_tmds_clk_p),          
        .TMDS_CLK_N(hdmi_tmds_clk_n),          
        .TMDS_DATA_P(hdmi_tmds_data_p),         
        .TMDS_DATA_N(hdmi_tmds_data_n)          
    );

    
    zoufu_t zoufus_data[n_zoufus];
    alizain_t az;
    logic [9:0] box_location;
    bullet_t bulletr[n_bullets], bullletl[n_bullets];
    //Color Mapper Module   
    color_mapper color_instance(
        .DrawX(drawX),
        .DrawY(drawY),
        .clk(vsync),
        .red(red),
        .green(green),
        .blue(blue),
        
        .zoufus_data(zoufus_data),
        .az(az),
        .bullets_r(bulletr), .bullets_l(bullletl)
        
    );
    
    game_theory game(
    .game_clk(vsync),
    .w(w), .a(a), .s(s), .d(d), .shoot(1'b1),
    .zoufus_data(zoufus_data),
    .bullets_r(bulletr), .bullets_l(bullletl),
    .az_data(az)
    );
    
    background_example background(
    .vga_clk(clk_25MHz),
    .DrawX(drawX),
    .DrawY(drawY),
    .blank(),
    .red(red),
    .green(green),
    .blue(blue)
    );  
           
//    blk_mem_gen_0 blockram (.clka(clk), .addra(), .dina(), .douta(), .wea());
endmodule
