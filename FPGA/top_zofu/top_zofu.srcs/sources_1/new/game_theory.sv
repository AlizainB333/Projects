import common::*;

module game_theory(
    input game_clk,
    input clk,
    
    input w, a, s, d,
    input up, down,
    input shoot,
    
    output zoufu_t zoufus_data[n_zoufus],
    output alizain_t az_data,
    output bullet_t bullets_r[n_bullets], bullets_l[n_bullets]
    
    );
    
//    logic [9:0] box_location = 16'h0EFF - 320;
                   //x      y   x_viewport  y_viewport
    alizain_t az = {16'd0, 16'd0, 16'd640,  16'd480};

    zoufu_t zoufus[n_zoufus] = {
      //counter state speedx speedY     X         Y         health
        {16'd0, ACTIVE, 6'd0, 6'd0,   az.x + az.x_viewport/2, az.y + az.y_viewport / 2, 4'h5},
        {16'd0, ACTIVE, 6'd0, 6'd0,   az.x + az.x_viewport, az.y + az.y_viewport, 4'h5}
    };
    logic [5:0] bullet_counter = 0;

    always_ff @ (posedge game_clk) begin
        for(integer i = 0; i < n_zoufus; i+=1) begin
            if (zoufus[i].state == DEAD && zoufus[i].state_counter >= 250) begin
                zoufus[i].state <= SPAWNING;
                zoufus[i].state_counter <= 16'd0;
            end
            else if (zoufus[i].state == SPAWNING && zoufus[i].state_counter >= 250) begin
                zoufus[i].state <= ACTIVE;
                zoufus[i].state_counter <= 16'd0;
            end
            else if (zoufus[i].state == ACTIVE) begin
                if (zoufus[i].health < 1) begin
                    zoufus[i].state <= DEAD;
                    zoufus[i].health <= 4'h5; // different type zoufus have diff helath
                    zoufus[i].state_counter <= 16'd0;
                end
                else if (shoot && bullet_counter >= 10) begin
                    if (zoufus[i].state != DEAD && 
                        zoufus[i].x >= az.x && zoufus[i].x < (az.x + az.x_viewport+ 1) &&
                        zoufus[i].y >= az.y && zoufus[i].y < (az.y + az.y_viewport + 1)
                        ) begin
                        if (zoufus[i].x - az.x < 321 && zoufus[i].x - az.x + zoufus_width >= 320 &&
                            zoufus[i].y - az.y < 201 && zoufus[i].y - az.y + zoufus_height >= 200) begin
                           if (zoufus[i].health > 0)
                                zoufus[i].health <= zoufus[i].health - 1;
                        end
                     end
                end                
            end
            zoufus[i].state_counter <= zoufus[i].state_counter + 1;
        end
    end
    
// TODO SPAWning
//    always_ff @ (posedge game_clk) begin
//        for(integer i = 0; i < n_zoufus; i+=1) begin
//            if (zoufus[i].state == SPAWNING) begin
//                zoufus[i].speedX <= ~(16'd2) + 1;
//            end
//            else begin
//                zoufus[i].speedX <= 0;
//            end
//        end
//    end
    

    
    enum logic [2:0] {b1=0, b2=1, b3=2, b4=3} bullet_cur;
    
    always_ff @ (posedge game_clk) begin
        bullet_counter <= bullet_counter + 1;
        
        if(bullet_counter >= 10) begin
            if (bullet_cur == b1)
                bullet_cur <= b2;
            else if (bullet_cur == b2)
                bullet_cur <= b3;
            else if (bullet_cur == b3)
                bullet_cur <= b4;
            else if (bullet_cur == b4)
                bullet_cur <= b1;
            bullet_counter <= 6'd0;
        end
    end
    
    always_comb begin
        if(shoot) begin
            for(integer i = 0; i < n_bullets; i+=1) begin
                if(bullet_cur == i) begin
                    bullets_r[i].display = 1'b1;
                    bullets_l[i].display = 1'b1;
                 end
                 else begin
                    bullets_r[i].display = 1'b0;
                    bullets_l[i].display = 1'b0;
                 end
            end
        end
        else begin
            for(integer i = 0; i < n_bullets; i+=1) begin
                bullets_r[i].display = 1'b0;
                bullets_l[i].display = 1'b0;
            end
        end
    end
    
//    always_ff @ (bullet_counter[2]) begin
//        for(integer i = 0; i < n_zoufus; i+=1) begin
//            end
//    end
                
    
    
    always_ff @ (posedge game_clk) begin
        
        for(integer i = 0; i < n_zoufus; i+=1) begin
//            if(zoufus[i].state == DEAD) begin
//                zoufus[i].x <= az.x + x_viewport + zoufus_width;
//                zoufus[i].y <= az.y;
//            end
//            else begin
                zoufus[i].x <= zoufus[i].x + zoufus[i].speedX;
                zoufus[i].y <= zoufus[i].y + zoufus[i].speedY;
//            end
        end
    end
    
    always_ff @ (posedge game_clk) begin
        if (w) begin
            if (az.y > 3)
                az.y <= az.y - 3;
            else
                az.y <= 0;
        end
        else if (s) begin
            if (az.y + az.y_viewport + 3 < y_max) 
                az.y <= az.y + 3;
            else
                az.y <= y_max - az.y_viewport;
        end
  
        if (a) begin
            if (az.x > 5)
                az.x <= az.x - 5;
            else
                az.x <= 0;
        end
        else if (d) begin
            if (az.x + 5 + az.x_viewport < x_max)
                az.x <= az.x + 5;
            else
                az.x <= x_max - az.x_viewport;
        end
    end
    
    assign zoufus_data = zoufus;
    assign az_data = az;

endmodule
