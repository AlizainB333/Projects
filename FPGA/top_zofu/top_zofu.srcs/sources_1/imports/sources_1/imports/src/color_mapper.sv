import common::*;

module  color_mapper
    ( input  logic [9:0] DrawX, DrawY,
      output logic [3:0]  red, green, blue,
      input clk,

      input alizain_t az,
      input zoufu_t zoufus_data[n_zoufus],
      input bullet_t bullets_r[n_bullets], bullets_l[n_bullets]

     );
   
     
    zoufu_t zoufu;
    logic [7:0] tilt = 0;
    logic [3:0] cat;
    
    always_comb begin
        // 0: background
        // 1: Zoufus
        // 2: Border
        // 3: bullets
        // 4: HUD background
        // 5: Speed
        // 6: Altitude
        // 7: Missle Selecton
        // 8: Missle Selection 2
        // 9: Missle Type


        cat = 0;

        // if (DrawX >= 315 && DrawX < 326 && 
        //     DrawY >= 195 && DrawY < 206) begin
        //     cat = 2; 
        // end
        
        // borders
        
       if (az.x + DrawX >= x_max - 5 || az.x + DrawX < 6 || az.y + DrawY >= y_max - 5 || az.y + DrawY < 6)
           cat = 2;

    
        // draw bullets

        for(integer i = 0; i < n_bullets; i+=1) begin
            if(bullets_r[i] == 1'b1) begin
                if(DrawX >= rbullet_cords[i].x && DrawX < (rbullet_cords[i].x + 6) &&
                   DrawY >= rbullet_cords[i].y && DrawY < rbullet_cords[i].y + 6
                ) begin
                    cat = 3;
                end
            end
            
            if(bullets_l[i] == 1'b1) begin
                if(DrawX >= lbullet_cords[i].x && DrawX < (lbullet_cords[i].x + 6) &&
                   DrawY >= lbullet_cords[i].y && DrawY < lbullet_cords[i].y + 6
                ) begin
                    cat = 3;
                end
            end
        end
        
        // draw zoufus
        for(integer i = 0; i < n_zoufus; i+=1) begin
            zoufu = zoufus_data[i];
            if (zoufu.state != DEAD && 
                zoufu.x >= az.x && zoufu.x < (az.x + az.x_viewport + 1) &&
                zoufu.y >= az.y && zoufu.y < (az.y + az.y_viewport + 1)
                ) begin
                
                if (DrawX >= (zoufu.x - az.x) && DrawX < (zoufu.x + zoufus_width - az.x + 1) &&
                    DrawY >= (zoufu.y - az.y) && DrawY < (zoufu.y - az.y + zoufus_height + 1)) begin
                        cat = 1;
                    
                end
            end
        end

        //HUD
        if (DrawY >= 207) begin
            cat = 4;
        end
        //Speed Box 
        if((DrawX >= 22 && DrawY >= 233) && (DrawX < 122 && DrawY < 256)) begin
            cat = 5;
        end
        //Altitude Box
        if((DrawX >= 22 && DrawY >= 270) && (DrawX < 122 && DrawY < 291)) begin 
            cat = 6;
        end
        //Missle Selection
        if((DrawX >= 522 && DrawY >= 237) && (DrawX < 557 && DrawY < 267)) begin
            cat = 7;
        end
        //Missle Selection 2
        if((DrawX >= 561 && DrawY >= 237) && (DrawX < 595 && DrawY < 267)) begin
            cat = 8;
        end
        //Missle Type
        if((DrawX >= 520 && DrawY >= 271) && (DrawX < 598 && DrawY < 288)) begin
            cat = 9;
        end
    end



    //Cat color selector /check
    
    logic [3:0] palette_red, palette_green, palette_blue;

    always_ff @ (posedge clk) begin
        if (cat == 0) begin
            if ((DrawY + az.y) < tilt*(DrawX + az.x) + (y_max / 2)) begin
                red <= 4'h5;
                blue <= 4'hF;
                green <= 4'h1;
            end
            else begin
                    red <= 4'h0;
                    blue <= 4'h0;
                    green <= 4'hF;
            end
        end
        else if (cat == 1) begin
            red <= 4'hF;
            blue <= 4'h0;
            green <= 4'h0;
        end 
        
        else if (cat == 3) begin
            red <= 4'hF;
            blue <= 4'h0;
            green <= 4'hF;
        end
        else if (cat == 2) begin
            red <= 4'hF;
            blue <= 4'd0;
            green <= 4'd0;
        end
        else if (cat == 4) begin
            red <= palette_red;
            green <= palette_green;
            blue <= palette_blue;
        end
     end   



    //Images 
    assign rom_address = ((DrawX * 640) / 640) + ((((DrawY - (az.y_viewport - 207)) * 207) / 480) * 640);
//    logic [17:0] rom_address;
    logic [3:0] rom_q;

    HUD_rom HUD_rom (
        .clock   (~clk),
        .address (rom_address),
        .q       (rom_q)
    );

    HUD_palette HUD_p (
        .index (rom_q),
        .red   (palette_red),
        .green (palette_green),
        .blue  (palette_blue)
    );   

endmodule