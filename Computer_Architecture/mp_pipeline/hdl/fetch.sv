module fetch
import rv32i_types::*;

(
    input logic               clk,
    input logic               rst,
    input logic               imem_resp,
    input logic               stallPipeline,
    input logic               load_stall,

    input   logic    [31:0]    imem_rdata,
    input   logic    [31:0]    branch_addr,
    input   logic              br_en,

    output logic     [31:0]    pc_next,
    // output logic     [63:0]    order,
    output logic     [31:0]    pc,

    output logic     [3:0]     imem_rmask,
    output logic     [31:0]    imem_addr,


    output id_fetch_stage_reg_t fetch_reg
);

   always_ff @(posedge clk) begin
        if (rst) begin
            pc    <= 32'h1eceb000;
            // order <= 64'b0;
        end else begin

            // if(stallPipeline) begin
            //     order   <= order;
            // end
            if(imem_resp) begin
                pc     <= pc_next;
                // order  <= order + 'd1;
            end else if(!imem_resp) begin
                pc <= pc;
                // order <= order;
            end
        end
    end

    
    // assign pc_next = (imem_resp && !stallPipeline && !load_stall) ?  pc + 'd4 : pc; // Incr Pc By 4
    assign imem_addr = pc_next;       // Get address to Pc
    assign fetch_reg.forward_instr = imem_rdata;

    always_comb begin
        if(br_en) begin
            pc_next = branch_addr;
        end else if (imem_resp && !stallPipeline && !load_stall) begin
            pc_next = pc + 'd4;
        end else begin
            pc_next = pc;
        end
    end


    // Logic for read mask
    always_comb begin 
        if (rst) begin
            imem_rmask = '1;
        end else begin
            if (imem_resp) begin
                imem_rmask = '1;
            end else begin
                imem_rmask = '0;
            end
        end
    end


endmodule : fetch













// module fetch
// import rv32i_types::*;

// (
//     // input logic               clk,
//     input logic               rst,
//     input logic     [31:0]   pc_init,
//     input logic               imem_resp,

//     input logic     [64:0]   order,

//     output logic     [31:0]   imem_addr,
//     input logic      [31:0]    imem_rdata,
//     output logic     [3:0]    imem_rmask,
//     input logic                stallPipeline,
//     output logic        imem_stall,

//     output logic     [31:0]   pc_next,



//     output id_fetch_stage_reg_t fetch_reg
// );


//         assign imem_stall =  !imem_resp;
//        assign fetch_reg.pc      = pc_init;
//        assign fetch_reg.pc_next = (imem_resp && !stallPipeline) ? pc_init + 32'd4 : pc_init;
//        assign fetch_reg.instr   = imem_rdata;
//        assign imem_addr         = fetch_reg.pc_next;       // Get address to Pc
//        assign fetch_reg.order   = order;


//     always_comb begin 
//         if (rst) begin
//             imem_rmask = '1;
//         end else begin
//             if (imem_resp) begin
//                 imem_rmask = '1;
//             end else begin
//                 imem_rmask = '0;
//             end
//         end
//     end
//     // assign fetch_reg.pc_next = fetch_reg.pc + 'd4; // Incr Pc By 4
//     // assign fetch_reg.commit  = imem_resp;
//     // assign fetch_reg.imem_rmask   = '1;          // Assert Read Signal
//     // assign imem_rmask = !imem_resp ? '0 : '1;



// endmodule : fetch