
package common;

    typedef struct packed
    {
        logic [15:0] state_counter;
        enum logic [2:0] {DEAD, SPAWNING, ACTIVE} state;
        logic [5:0] speedX, speedY;
        logic [15:0] x, y;
        logic [3:0] health;

    } zoufu_t;
    
    typedef struct packed
    {
        logic [15:0] x, y, x_viewport, y_viewport;    
    } alizain_t;
    
    typedef struct packed
    {
        logic [15:0] x, y;
    } bulletcords_t;
    
    typedef struct packed
    {
        logic display;
    } bullet_t;
    
    localparam n_zoufus = 2;
    
    localparam y_max = 485;
    localparam logic [15:0] x_max = 16'd740;
       
    localparam zoufus_width = 16'd40;
    localparam zoufus_height = 16'd40;
    
    localparam n_bullets = 4;
    localparam bulletcords_t rbullet_cords[n_bullets] = {
        {16'd200, 16'd270},
        {16'd250, 16'd250},
        {16'd300, 16'd230},
        {16'd320, 16'd200}
    };
    
    localparam bulletcords_t lbullet_cords[n_bullets] = {
        {640 - 16'd200, 16'd270},
        {640 - 16'd250, 16'd250},
        {640 - 16'd300, 16'd230},
        {640 - 16'd320, 16'd200}
    };

    
//    localparam integer x_game2screen = 640/x_viewport; //7.11
//    localparam integer y_game2screen = 400/y_viewport; //4.44
    
//    localparam integer phi_screen2game = phi_viewport/640;
//    localparam integer theta_screen2game = theta_viewport/400;
endpackage
