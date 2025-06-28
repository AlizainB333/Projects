module cpu
import rv32i_types::*;
(
    input   logic           clk,
    input   logic           rst,

    output  logic   [31:0]  imem_addr,
    output  logic   [3:0]   imem_rmask,
    input   logic   [31:0]  imem_rdata,
    input   logic           imem_resp,

    output  logic   [31:0]  dmem_addr,
    output  logic   [3:0]   dmem_rmask,
    output  logic   [3:0]   dmem_wmask,
    input   logic   [31:0]  dmem_rdata,
    output  logic   [31:0]  dmem_wdata,
    input   logic           dmem_resp
);

    // Define Pipeline Registers
    id_fetch_stage_reg_t fetch_reg,fetch_reg_next;
    id_decode_stage_reg_t decode_reg,decode_reg_next;
    id_execute_stage_reg_t execute_reg, execute_reg_next;
    id_memory_stage_reg_t memory_reg,memory_reg_next;


    logic   [6:0]   funct7;
    logic   [31:0]  rd_v, pc_next, pc, rs1_v, rs2_v;
    logic   [4:0]   rd_s;
    logic   [63:0]  order;
    logic   [1:0]   forward_a_reg_sel, forward_b_reg_sel;
    logic           wr_en;
    logic           stallPipeline, load_stall;
    logic   [31:0]  branch_addr;
    logic           br_en;


    always_ff @(posedge clk) begin
        if(rst) begin
            fetch_reg   <=  '0;
            decode_reg  <=  '0;
            execute_reg <=  '0;
            memory_reg  <=  '0;
        end else if(load_stall) begin 
            fetch_reg <= fetch_reg;
            decode_reg  <=  '0;
        end
        else begin
            if(br_en) begin
                fetch_reg  <= '0;
                decode_reg <= '0;  
                execute_reg <= execute_reg_next;
                memory_reg <= memory_reg_next;
            end
            // Load and Store Stalling
            else if (stallPipeline) begin
                fetch_reg <= fetch_reg;
                decode_reg <= decode_reg;
                execute_reg <= execute_reg;
                memory_reg <= memory_reg;
            end 
            else if(!imem_resp) begin    // Stalling Fetch 
                fetch_reg  <= '0;
            end
            // Old logic should be same as else but works only some cases need to check
            else if (imem_resp) begin
                fetch_reg.pc <= pc;
                fetch_reg.pc_next <= pc_next;
                fetch_reg.instr <= imem_rdata;
                fetch_reg.commit <= imem_resp;
                fetch_reg.imem_rdata <= imem_rdata;
                decode_reg <= decode_reg_next;
                execute_reg <= execute_reg_next;
                memory_reg <= memory_reg_next;
            end else begin
                decode_reg <= decode_reg_next;
                execute_reg <= execute_reg_next;
                memory_reg <= memory_reg_next;
            end
        end
    end

        always_comb begin 
            load_stall = '0;
            if (decode_reg.opcode == op_b_load && decode_reg.rd_v != 0) begin 
                if(decode_reg.rd_s == fetch_reg.forward_instr[19:15] || 
                decode_reg.rd_s == fetch_reg.forward_instr[24:20]) begin 
                    load_stall = '1;
                end
            end
        end

    // Create Fetch module in Pipeline
    fetch fetch_stage (
        .clk(clk),
        .rst(rst),
        .imem_rdata(imem_rdata),
        .imem_resp(imem_resp),
        .stallPipeline(stallPipeline),
        .pc(pc),
        .pc_next(pc_next),
        .branch_addr(branch_addr),
        .br_en(br_en),
        .load_stall(load_stall),
        .imem_rmask(imem_rmask),    
        .imem_addr(imem_addr),  // Address where inst stored
        .fetch_reg(fetch_reg_next)
    );

    decode decode_state ( 
        .clk(clk),
        .rst(rst),
        .regf_we(wr_en),
        .rd_v(rd_v),
        .rd_s(rd_s),
        .fetch_reg(fetch_reg),
        .rs1_v(rs1_v),
        .rs2_v(rs2_v),
        .decode_reg(decode_reg_next)
    );

    // assign funct7 = fetch_reg.pc[31:25]; // bug

    execute execute_state (
        .decode_reg(decode_reg), 
        .forward_a_reg_sel(forward_a_reg_sel),
        // .forward_memory_rd_v(memory_reg_next.rd_v),
        .forward_memory_rd_v(execute_reg.rd_v),
        .forward_b_reg_sel(forward_b_reg_sel),
        .memory_reg(memory_reg),
        .rs1_v(rs1_v),
        .rs2_v(rs2_v),
        .branch_addr(branch_addr),
        .br_en(br_en),
        .dmem_rmask(dmem_rmask),     
        .dmem_wmask(dmem_wmask),            // Mask to select correct store size 
        .dmem_wdata(dmem_wdata),            // Data to write
        .dmem_addr(dmem_addr),
        .execute_reg(execute_reg_next)  
    );

    memory memory_state (
        .execute_reg(execute_reg),
        .dmem_rdata(dmem_rdata),
        .dmem_resp(dmem_resp),
        .memory_reg(memory_reg_next),
        .stallPipeline(stallPipeline)
    );

    write_back write_back (
        .memory_reg(memory_reg),
        .rd_v(rd_v),
        .wr_en(wr_en),
        .rd_s(rd_s)
    );

    forwarding forwarding (
        .decode_reg(decode_reg),
        .execute_reg(execute_reg),
        .memory_reg(memory_reg),
        .forward_a_reg_sel(forward_a_reg_sel),
        .forward_b_reg_sel(forward_b_reg_sel)
    );


    logic           monitor_valid;
    logic   [63:0]  monitor_order;
    logic   [31:0]  monitor_inst;
    logic   [4:0]   monitor_rs1_addr;
    logic   [4:0]   monitor_rs2_addr;
    logic   [31:0]  monitor_rs1_rdata;
    logic   [31:0]  monitor_rs2_rdata;
    logic           monitor_regf_we;
    logic   [4:0]   monitor_rd_addr;
    logic   [31:0]  monitor_rd_wdata;
    logic   [31:0]  monitor_pc_rdata;
    logic   [31:0]  monitor_pc_wdata;
    logic   [31:0]  monitor_mem_addr;
    logic   [3:0]   monitor_mem_rmask;
    logic   [3:0]   monitor_mem_wmask;
    logic   [31:0]  monitor_mem_rdata;
    logic   [31:0]  monitor_mem_wdata;

    always_ff @(posedge clk) begin
        if(rst) begin
            order <= '0;
        end
        else if(monitor_valid) begin
            order <= order + 'd1;
        end
    end

    assign monitor_valid     = memory_reg.commit;
    // assign monitor_order     = memory_reg.order;
    assign monitor_order     = order;
    assign monitor_inst      = memory_reg.instr;
    assign monitor_rs1_addr  = memory_reg.rs1_s;
    assign monitor_rs2_addr  = memory_reg.rs2_s;
    assign monitor_rs1_rdata = memory_reg.rs1_v;
    assign monitor_rs2_rdata = memory_reg.rs2_v;
    assign monitor_rd_addr   = (memory_reg.regf_we) ? memory_reg.rd_s : 5'd0;
    assign monitor_rd_wdata  = rd_v;
    assign monitor_pc_rdata  = memory_reg.pc;
    assign monitor_pc_wdata  = memory_reg.pc_next;
    assign monitor_mem_addr  = memory_reg.dmem_addr;
    assign monitor_mem_rmask = memory_reg.dmem_rmask;
    assign monitor_mem_wmask = memory_reg.dmem_wmask;
    assign monitor_mem_rdata = memory_reg.dmem_rdata;
    assign monitor_mem_wdata = memory_reg.dmem_wdata;





endmodule : cpu



    

    




 




