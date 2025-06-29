// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Thu Oct  5 22:02:44 2023
// Host        : DESKTOP-D46B4R0 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file {C:/Users/Azain/Documents/College/Fall 2023/ECE 385/Lab
//               5/Lab 5/Lab 5.sim/sim_1/synth/func/xsim/testbench_func_synth.v}
// Design      : slc3_sramtop
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7s50csga324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module HexDriver
   (p_0_in,
    \Dout_reg[3] ,
    \counter_reg[15]_0 ,
    hex_gridB_OBUF,
    \counter_reg[16]_0 ,
    hex_segB_OBUF,
    Clk_IBUF_BUFG,
    DoutIR);
  output [1:0]p_0_in;
  output \Dout_reg[3] ;
  output \counter_reg[15]_0 ;
  output [3:0]hex_gridB_OBUF;
  output \counter_reg[16]_0 ;
  input [0:0]hex_segB_OBUF;
  input Clk_IBUF_BUFG;
  input [3:0]DoutIR;

  wire Clk_IBUF_BUFG;
  wire [3:0]DoutIR;
  wire \Dout_reg[3] ;
  wire \counter[0]_i_2_n_0 ;
  wire \counter_reg[0]_i_1_n_0 ;
  wire \counter_reg[0]_i_1_n_1 ;
  wire \counter_reg[0]_i_1_n_2 ;
  wire \counter_reg[0]_i_1_n_3 ;
  wire \counter_reg[0]_i_1_n_4 ;
  wire \counter_reg[0]_i_1_n_5 ;
  wire \counter_reg[0]_i_1_n_6 ;
  wire \counter_reg[0]_i_1_n_7 ;
  wire \counter_reg[12]_i_1_n_0 ;
  wire \counter_reg[12]_i_1_n_1 ;
  wire \counter_reg[12]_i_1_n_2 ;
  wire \counter_reg[12]_i_1_n_3 ;
  wire \counter_reg[12]_i_1_n_4 ;
  wire \counter_reg[12]_i_1_n_5 ;
  wire \counter_reg[12]_i_1_n_6 ;
  wire \counter_reg[12]_i_1_n_7 ;
  wire \counter_reg[15]_0 ;
  wire \counter_reg[16]_0 ;
  wire \counter_reg[16]_i_1_n_7 ;
  wire \counter_reg[4]_i_1_n_0 ;
  wire \counter_reg[4]_i_1_n_1 ;
  wire \counter_reg[4]_i_1_n_2 ;
  wire \counter_reg[4]_i_1_n_3 ;
  wire \counter_reg[4]_i_1_n_4 ;
  wire \counter_reg[4]_i_1_n_5 ;
  wire \counter_reg[4]_i_1_n_6 ;
  wire \counter_reg[4]_i_1_n_7 ;
  wire \counter_reg[8]_i_1_n_0 ;
  wire \counter_reg[8]_i_1_n_1 ;
  wire \counter_reg[8]_i_1_n_2 ;
  wire \counter_reg[8]_i_1_n_3 ;
  wire \counter_reg[8]_i_1_n_4 ;
  wire \counter_reg[8]_i_1_n_5 ;
  wire \counter_reg[8]_i_1_n_6 ;
  wire \counter_reg[8]_i_1_n_7 ;
  wire \counter_reg_n_0_[0] ;
  wire \counter_reg_n_0_[10] ;
  wire \counter_reg_n_0_[11] ;
  wire \counter_reg_n_0_[12] ;
  wire \counter_reg_n_0_[13] ;
  wire \counter_reg_n_0_[14] ;
  wire \counter_reg_n_0_[1] ;
  wire \counter_reg_n_0_[2] ;
  wire \counter_reg_n_0_[3] ;
  wire \counter_reg_n_0_[4] ;
  wire \counter_reg_n_0_[5] ;
  wire \counter_reg_n_0_[6] ;
  wire \counter_reg_n_0_[7] ;
  wire \counter_reg_n_0_[8] ;
  wire \counter_reg_n_0_[9] ;
  wire [3:0]hex_gridB_OBUF;
  wire [0:0]hex_segB_OBUF;
  wire [1:0]p_0_in;
  wire [3:0]\NLW_counter_reg[16]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_counter_reg[16]_i_1_O_UNCONNECTED ;

  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_2 
       (.I0(\counter_reg_n_0_[0] ),
        .O(\counter[0]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[0]_i_1_n_7 ),
        .Q(\counter_reg_n_0_[0] ),
        .R(hex_segB_OBUF));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\counter_reg[0]_i_1_n_0 ,\counter_reg[0]_i_1_n_1 ,\counter_reg[0]_i_1_n_2 ,\counter_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\counter_reg[0]_i_1_n_4 ,\counter_reg[0]_i_1_n_5 ,\counter_reg[0]_i_1_n_6 ,\counter_reg[0]_i_1_n_7 }),
        .S({\counter_reg_n_0_[3] ,\counter_reg_n_0_[2] ,\counter_reg_n_0_[1] ,\counter[0]_i_2_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[10] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1_n_5 ),
        .Q(\counter_reg_n_0_[10] ),
        .R(hex_segB_OBUF));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[11] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1_n_4 ),
        .Q(\counter_reg_n_0_[11] ),
        .R(hex_segB_OBUF));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[12] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[12]_i_1_n_7 ),
        .Q(\counter_reg_n_0_[12] ),
        .R(hex_segB_OBUF));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[12]_i_1 
       (.CI(\counter_reg[8]_i_1_n_0 ),
        .CO({\counter_reg[12]_i_1_n_0 ,\counter_reg[12]_i_1_n_1 ,\counter_reg[12]_i_1_n_2 ,\counter_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[12]_i_1_n_4 ,\counter_reg[12]_i_1_n_5 ,\counter_reg[12]_i_1_n_6 ,\counter_reg[12]_i_1_n_7 }),
        .S({p_0_in[0],\counter_reg_n_0_[14] ,\counter_reg_n_0_[13] ,\counter_reg_n_0_[12] }));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[13] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[12]_i_1_n_6 ),
        .Q(\counter_reg_n_0_[13] ),
        .R(hex_segB_OBUF));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[14] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[12]_i_1_n_5 ),
        .Q(\counter_reg_n_0_[14] ),
        .R(hex_segB_OBUF));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[15] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[12]_i_1_n_4 ),
        .Q(p_0_in[0]),
        .R(hex_segB_OBUF));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[16] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1_n_7 ),
        .Q(p_0_in[1]),
        .R(hex_segB_OBUF));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[16]_i_1 
       (.CI(\counter_reg[12]_i_1_n_0 ),
        .CO(\NLW_counter_reg[16]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_counter_reg[16]_i_1_O_UNCONNECTED [3:1],\counter_reg[16]_i_1_n_7 }),
        .S({1'b0,1'b0,1'b0,p_0_in[1]}));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[0]_i_1_n_6 ),
        .Q(\counter_reg_n_0_[1] ),
        .R(hex_segB_OBUF));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[0]_i_1_n_5 ),
        .Q(\counter_reg_n_0_[2] ),
        .R(hex_segB_OBUF));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[0]_i_1_n_4 ),
        .Q(\counter_reg_n_0_[3] ),
        .R(hex_segB_OBUF));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[4]_i_1_n_7 ),
        .Q(\counter_reg_n_0_[4] ),
        .R(hex_segB_OBUF));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[4]_i_1 
       (.CI(\counter_reg[0]_i_1_n_0 ),
        .CO({\counter_reg[4]_i_1_n_0 ,\counter_reg[4]_i_1_n_1 ,\counter_reg[4]_i_1_n_2 ,\counter_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[4]_i_1_n_4 ,\counter_reg[4]_i_1_n_5 ,\counter_reg[4]_i_1_n_6 ,\counter_reg[4]_i_1_n_7 }),
        .S({\counter_reg_n_0_[7] ,\counter_reg_n_0_[6] ,\counter_reg_n_0_[5] ,\counter_reg_n_0_[4] }));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[5] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[4]_i_1_n_6 ),
        .Q(\counter_reg_n_0_[5] ),
        .R(hex_segB_OBUF));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[6] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[4]_i_1_n_5 ),
        .Q(\counter_reg_n_0_[6] ),
        .R(hex_segB_OBUF));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[7] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[4]_i_1_n_4 ),
        .Q(\counter_reg_n_0_[7] ),
        .R(hex_segB_OBUF));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[8] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1_n_7 ),
        .Q(\counter_reg_n_0_[8] ),
        .R(hex_segB_OBUF));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[8]_i_1 
       (.CI(\counter_reg[4]_i_1_n_0 ),
        .CO({\counter_reg[8]_i_1_n_0 ,\counter_reg[8]_i_1_n_1 ,\counter_reg[8]_i_1_n_2 ,\counter_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[8]_i_1_n_4 ,\counter_reg[8]_i_1_n_5 ,\counter_reg[8]_i_1_n_6 ,\counter_reg[8]_i_1_n_7 }),
        .S({\counter_reg_n_0_[11] ,\counter_reg_n_0_[10] ,\counter_reg_n_0_[9] ,\counter_reg_n_0_[8] }));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[9] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1_n_6 ),
        .Q(\counter_reg_n_0_[9] ),
        .R(hex_segB_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \hex_grid_OBUF[0]_inst_i_1 
       (.I0(p_0_in[1]),
        .I1(p_0_in[0]),
        .I2(hex_segB_OBUF),
        .O(hex_gridB_OBUF[0]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hFB)) 
    \hex_grid_OBUF[1]_inst_i_1 
       (.I0(hex_segB_OBUF),
        .I1(p_0_in[0]),
        .I2(p_0_in[1]),
        .O(hex_gridB_OBUF[1]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \hex_grid_OBUF[2]_inst_i_1 
       (.I0(hex_segB_OBUF),
        .I1(p_0_in[0]),
        .I2(p_0_in[1]),
        .O(hex_gridB_OBUF[2]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \hex_grid_OBUF[3]_inst_i_1 
       (.I0(p_0_in[0]),
        .I1(hex_segB_OBUF),
        .I2(p_0_in[1]),
        .O(hex_gridB_OBUF[3]));
  LUT6 #(
    .INIT(64'h000075FB00000000)) 
    \hex_seg_OBUF[2]_inst_i_3 
       (.I0(DoutIR[2]),
        .I1(DoutIR[1]),
        .I2(DoutIR[0]),
        .I3(DoutIR[3]),
        .I4(\counter_reg[15]_0 ),
        .I5(p_0_in[1]),
        .O(\Dout_reg[3] ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \hex_seg_OBUF[2]_inst_i_6 
       (.I0(p_0_in[1]),
        .I1(p_0_in[0]),
        .I2(hex_segB_OBUF),
        .O(\counter_reg[16]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \hex_seg_OBUF[2]_inst_i_7 
       (.I0(hex_segB_OBUF),
        .I1(p_0_in[0]),
        .O(\counter_reg[15]_0 ));
endmodule

module ISDU
   (\FSM_sequential_State_reg[1]_0 ,
    Q,
    \FSM_sequential_State_reg[0]_0 ,
    \FSM_sequential_State_reg[4]_0 ,
    D,
    \FSM_sequential_State_reg[1]_1 ,
    ADDR1MUXOUT,
    \FSM_sequential_State_reg[2]_0 ,
    \Dout_reg[11] ,
    \FSM_sequential_State_reg[1]_2 ,
    \FSM_sequential_State_reg[3]_0 ,
    \FSM_sequential_State_reg[1]_3 ,
    \FSM_sequential_State_reg[2]_1 ,
    \Dout_reg[9] ,
    \Dout_reg[10] ,
    \FSM_sequential_State_reg[2]_2 ,
    ena,
    wea,
    S,
    \Dout_reg[5] ,
    \Dout_reg[0] ,
    \Dout_reg[0]_0 ,
    \Dout_reg[0]_1 ,
    \Dout_reg[0]_2 ,
    \Dout_reg[8] ,
    \Dout_reg[8]_0 ,
    \Dout_reg[8]_1 ,
    \Dout_reg[8]_2 ,
    \Dout_reg[12] ,
    \Dout_reg[12]_0 ,
    \Dout_reg[12]_1 ,
    \Dout_reg[12]_2 ,
    \FSM_sequential_State_reg[0]_1 ,
    \FSM_sequential_State_reg[4]_1 ,
    \FSM_sequential_State_reg[4]_2 ,
    \FSM_sequential_State_reg[4]_3 ,
    \FSM_sequential_State_reg[4]_4 ,
    \FSM_sequential_State_reg[4]_5 ,
    \FSM_sequential_State_reg[4]_6 ,
    \FSM_sequential_State_reg[4]_7 ,
    \FSM_sequential_State_reg[4]_8 ,
    \FSM_sequential_State_reg[4]_9 ,
    \FSM_sequential_State_reg[4]_10 ,
    \FSM_sequential_State_reg[4]_11 ,
    \FSM_sequential_State_reg[4]_12 ,
    \FSM_sequential_State_reg[4]_13 ,
    \FSM_sequential_State_reg[4]_14 ,
    \FSM_sequential_State_reg[4]_15 ,
    \FSM_sequential_State_reg[4]_16 ,
    \FSM_sequential_State_reg[4]_17 ,
    \FSM_sequential_State_reg[1]_4 ,
    \FSM_sequential_State_reg[1]_5 ,
    \FSM_sequential_State_reg[4]_18 ,
    DoutIR,
    hex_segB_OBUF,
    \R6_reg[0] ,
    data3,
    \R6_reg[1] ,
    \R6_reg[2] ,
    \R6_reg[3] ,
    \R6_reg[4] ,
    \R6_reg[5] ,
    \R6_reg[6] ,
    \R6_reg[7] ,
    \R6_reg[8] ,
    \R6_reg[9] ,
    \R6_reg[10] ,
    \R6_reg[11] ,
    \R6_reg[12] ,
    \R6_reg[13] ,
    \R6_reg[14] ,
    \R7_reg[15] ,
    ADDROUT_carry,
    ADDROUT_carry_0,
    ADDROUT_carry_1,
    ADDROUT_carry_2,
    ADDROUT_carry_3,
    ADDROUT_carry_4,
    ADDROUT_carry_5,
    ADDROUT_carry_6,
    ADDROUT_carry__0,
    ADDROUT_carry__0_0,
    ADDROUT_carry__0_1,
    ADDROUT_carry__0_2,
    ADDROUT_carry__0_3,
    ADDROUT_carry__0_4,
    ADDROUT_carry__0_5,
    ADDROUT_carry__0_6,
    ADDROUT_carry__1,
    ADDROUT_carry__1_0,
    ADDROUT_carry__1_1,
    ADDROUT_carry__1_2,
    ADDROUT_carry__1_3,
    ADDROUT_carry__1_4,
    ADDROUT_carry__1_5,
    ADDROUT_carry__1_6,
    ADDROUT_carry__2,
    ADDROUT_carry__2_0,
    ADDROUT_carry__2_1,
    ADDROUT_carry__2_2,
    ADDROUT_carry__2_3,
    ADDROUT_carry__2_4,
    \R6_reg[0]_0 ,
    \R6_reg[1]_0 ,
    \R6_reg[2]_0 ,
    \R6_reg[3]_0 ,
    \R6_reg[4]_0 ,
    \R6_reg[5]_0 ,
    \R6_reg[6]_0 ,
    \R6_reg[7]_0 ,
    \R6_reg[8]_0 ,
    \R6_reg[9]_0 ,
    \R6_reg[10]_0 ,
    \R6_reg[11]_0 ,
    \R6_reg[12]_0 ,
    \R6_reg[13]_0 ,
    \R6_reg[14]_0 ,
    \R7_reg[15]_0 ,
    \FSM_sequential_State_reg[4]_19 ,
    \FSM_sequential_State_reg[1]_6 ,
    Run_ah,
    douta,
    we_select,
    state,
    \FSM_sequential_State_reg[0]_2 ,
    pc_In0,
    \FSM_sequential_State_reg[2]_3 ,
    Clk_IBUF_BUFG);
  output \FSM_sequential_State_reg[1]_0 ;
  output [2:0]Q;
  output \FSM_sequential_State_reg[0]_0 ;
  output \FSM_sequential_State_reg[4]_0 ;
  output [15:0]D;
  output \FSM_sequential_State_reg[1]_1 ;
  output [14:0]ADDR1MUXOUT;
  output \FSM_sequential_State_reg[2]_0 ;
  output \Dout_reg[11] ;
  output \FSM_sequential_State_reg[1]_2 ;
  output \FSM_sequential_State_reg[3]_0 ;
  output \FSM_sequential_State_reg[1]_3 ;
  output \FSM_sequential_State_reg[2]_1 ;
  output \Dout_reg[9] ;
  output \Dout_reg[10] ;
  output \FSM_sequential_State_reg[2]_2 ;
  output ena;
  output [0:0]wea;
  output [3:0]S;
  output [1:0]\Dout_reg[5] ;
  output \Dout_reg[0] ;
  output \Dout_reg[0]_0 ;
  output \Dout_reg[0]_1 ;
  output \Dout_reg[0]_2 ;
  output \Dout_reg[8] ;
  output \Dout_reg[8]_0 ;
  output \Dout_reg[8]_1 ;
  output \Dout_reg[8]_2 ;
  output \Dout_reg[12] ;
  output \Dout_reg[12]_0 ;
  output \Dout_reg[12]_1 ;
  output \Dout_reg[12]_2 ;
  output \FSM_sequential_State_reg[0]_1 ;
  output \FSM_sequential_State_reg[4]_1 ;
  output \FSM_sequential_State_reg[4]_2 ;
  output \FSM_sequential_State_reg[4]_3 ;
  output \FSM_sequential_State_reg[4]_4 ;
  output \FSM_sequential_State_reg[4]_5 ;
  output \FSM_sequential_State_reg[4]_6 ;
  output \FSM_sequential_State_reg[4]_7 ;
  output \FSM_sequential_State_reg[4]_8 ;
  output \FSM_sequential_State_reg[4]_9 ;
  output \FSM_sequential_State_reg[4]_10 ;
  output \FSM_sequential_State_reg[4]_11 ;
  output \FSM_sequential_State_reg[4]_12 ;
  output \FSM_sequential_State_reg[4]_13 ;
  output \FSM_sequential_State_reg[4]_14 ;
  output \FSM_sequential_State_reg[4]_15 ;
  output \FSM_sequential_State_reg[4]_16 ;
  output \FSM_sequential_State_reg[4]_17 ;
  output \FSM_sequential_State_reg[1]_4 ;
  output \FSM_sequential_State_reg[1]_5 ;
  input \FSM_sequential_State_reg[4]_18 ;
  input [15:0]DoutIR;
  input [0:0]hex_segB_OBUF;
  input \R6_reg[0] ;
  input [15:0]data3;
  input \R6_reg[1] ;
  input \R6_reg[2] ;
  input \R6_reg[3] ;
  input \R6_reg[4] ;
  input \R6_reg[5] ;
  input \R6_reg[6] ;
  input \R6_reg[7] ;
  input \R6_reg[8] ;
  input \R6_reg[9] ;
  input \R6_reg[10] ;
  input \R6_reg[11] ;
  input \R6_reg[12] ;
  input \R6_reg[13] ;
  input \R6_reg[14] ;
  input \R7_reg[15] ;
  input ADDROUT_carry;
  input ADDROUT_carry_0;
  input ADDROUT_carry_1;
  input ADDROUT_carry_2;
  input ADDROUT_carry_3;
  input ADDROUT_carry_4;
  input ADDROUT_carry_5;
  input ADDROUT_carry_6;
  input ADDROUT_carry__0;
  input ADDROUT_carry__0_0;
  input ADDROUT_carry__0_1;
  input ADDROUT_carry__0_2;
  input ADDROUT_carry__0_3;
  input ADDROUT_carry__0_4;
  input ADDROUT_carry__0_5;
  input ADDROUT_carry__0_6;
  input ADDROUT_carry__1;
  input ADDROUT_carry__1_0;
  input ADDROUT_carry__1_1;
  input ADDROUT_carry__1_2;
  input ADDROUT_carry__1_3;
  input ADDROUT_carry__1_4;
  input ADDROUT_carry__1_5;
  input ADDROUT_carry__1_6;
  input ADDROUT_carry__2;
  input ADDROUT_carry__2_0;
  input ADDROUT_carry__2_1;
  input ADDROUT_carry__2_2;
  input ADDROUT_carry__2_3;
  input ADDROUT_carry__2_4;
  input \R6_reg[0]_0 ;
  input \R6_reg[1]_0 ;
  input \R6_reg[2]_0 ;
  input \R6_reg[3]_0 ;
  input \R6_reg[4]_0 ;
  input \R6_reg[5]_0 ;
  input \R6_reg[6]_0 ;
  input \R6_reg[7]_0 ;
  input \R6_reg[8]_0 ;
  input \R6_reg[9]_0 ;
  input \R6_reg[10]_0 ;
  input \R6_reg[11]_0 ;
  input \R6_reg[12]_0 ;
  input \R6_reg[13]_0 ;
  input \R6_reg[14]_0 ;
  input \R7_reg[15]_0 ;
  input \FSM_sequential_State_reg[4]_19 ;
  input \FSM_sequential_State_reg[1]_6 ;
  input Run_ah;
  input [15:0]douta;
  input we_select;
  input [1:0]state;
  input \FSM_sequential_State_reg[0]_2 ;
  input [11:0]pc_In0;
  input \FSM_sequential_State_reg[2]_3 ;
  input Clk_IBUF_BUFG;

  wire [14:0]ADDR1MUXOUT;
  wire [5:0]ADDR2MUXOUT;
  wire ADDROUT_carry;
  wire ADDROUT_carry_0;
  wire ADDROUT_carry_1;
  wire ADDROUT_carry_2;
  wire ADDROUT_carry_3;
  wire ADDROUT_carry_4;
  wire ADDROUT_carry_5;
  wire ADDROUT_carry_6;
  wire ADDROUT_carry__0;
  wire ADDROUT_carry__0_0;
  wire ADDROUT_carry__0_1;
  wire ADDROUT_carry__0_2;
  wire ADDROUT_carry__0_3;
  wire ADDROUT_carry__0_4;
  wire ADDROUT_carry__0_5;
  wire ADDROUT_carry__0_6;
  wire ADDROUT_carry__1;
  wire ADDROUT_carry__1_0;
  wire ADDROUT_carry__1_1;
  wire ADDROUT_carry__1_2;
  wire ADDROUT_carry__1_3;
  wire ADDROUT_carry__1_4;
  wire ADDROUT_carry__1_5;
  wire ADDROUT_carry__1_6;
  wire ADDROUT_carry__2;
  wire ADDROUT_carry__2_0;
  wire ADDROUT_carry__2_1;
  wire ADDROUT_carry__2_2;
  wire ADDROUT_carry__2_3;
  wire ADDROUT_carry__2_4;
  wire Clk_IBUF_BUFG;
  wire [15:0]D;
  wire [15:0]DoutIR;
  wire \Dout[0]_i_2__0_n_0 ;
  wire \Dout[0]_i_2_n_0 ;
  wire \Dout[0]_i_3__0_n_0 ;
  wire \Dout[0]_i_3_n_0 ;
  wire \Dout[10]_i_2__0_n_0 ;
  wire \Dout[10]_i_2_n_0 ;
  wire \Dout[10]_i_3_n_0 ;
  wire \Dout[11]_i_2__0_n_0 ;
  wire \Dout[11]_i_2_n_0 ;
  wire \Dout[11]_i_3_n_0 ;
  wire \Dout[12]_i_2__0_n_0 ;
  wire \Dout[12]_i_2_n_0 ;
  wire \Dout[12]_i_3_n_0 ;
  wire \Dout[13]_i_2__0_n_0 ;
  wire \Dout[13]_i_2_n_0 ;
  wire \Dout[13]_i_3_n_0 ;
  wire \Dout[14]_i_2__0_n_0 ;
  wire \Dout[14]_i_2_n_0 ;
  wire \Dout[14]_i_3_n_0 ;
  wire \Dout[15]_i_4__0_n_0 ;
  wire \Dout[15]_i_4__1_n_0 ;
  wire \Dout[15]_i_5__0_n_0 ;
  wire \Dout[15]_i_5_n_0 ;
  wire \Dout[15]_i_6_n_0 ;
  wire \Dout[15]_i_7_n_0 ;
  wire \Dout[15]_i_8_n_0 ;
  wire \Dout[15]_i_9_n_0 ;
  wire \Dout[1]_i_2__0_n_0 ;
  wire \Dout[1]_i_2_n_0 ;
  wire \Dout[1]_i_3__0_n_0 ;
  wire \Dout[1]_i_3_n_0 ;
  wire \Dout[2]_i_2__0_n_0 ;
  wire \Dout[2]_i_2_n_0 ;
  wire \Dout[2]_i_3__0_n_0 ;
  wire \Dout[2]_i_3_n_0 ;
  wire \Dout[3]_i_2__0_n_0 ;
  wire \Dout[3]_i_2_n_0 ;
  wire \Dout[3]_i_3__0_n_0 ;
  wire \Dout[3]_i_3_n_0 ;
  wire \Dout[4]_i_2__0_n_0 ;
  wire \Dout[4]_i_2_n_0 ;
  wire \Dout[4]_i_3_n_0 ;
  wire \Dout[5]_i_2__0_n_0 ;
  wire \Dout[5]_i_2__1_n_0 ;
  wire \Dout[5]_i_3_n_0 ;
  wire \Dout[6]_i_2__0_n_0 ;
  wire \Dout[6]_i_2_n_0 ;
  wire \Dout[6]_i_3_n_0 ;
  wire \Dout[7]_i_2__0_n_0 ;
  wire \Dout[7]_i_2_n_0 ;
  wire \Dout[7]_i_3_n_0 ;
  wire \Dout[8]_i_2__0_n_0 ;
  wire \Dout[8]_i_2_n_0 ;
  wire \Dout[8]_i_3_n_0 ;
  wire \Dout[9]_i_2__0_n_0 ;
  wire \Dout[9]_i_2_n_0 ;
  wire \Dout[9]_i_3_n_0 ;
  wire \Dout_reg[0] ;
  wire \Dout_reg[0]_0 ;
  wire \Dout_reg[0]_1 ;
  wire \Dout_reg[0]_2 ;
  wire \Dout_reg[10] ;
  wire \Dout_reg[11] ;
  wire \Dout_reg[12] ;
  wire \Dout_reg[12]_0 ;
  wire \Dout_reg[12]_1 ;
  wire \Dout_reg[12]_2 ;
  wire [1:0]\Dout_reg[5] ;
  wire \Dout_reg[8] ;
  wire \Dout_reg[8]_0 ;
  wire \Dout_reg[8]_1 ;
  wire \Dout_reg[8]_2 ;
  wire \Dout_reg[9] ;
  wire \FSM_sequential_State[0]_i_2_n_0 ;
  wire \FSM_sequential_State[0]_i_3_n_0 ;
  wire \FSM_sequential_State[1]_i_3_n_0 ;
  wire \FSM_sequential_State[2]_i_2_n_0 ;
  wire \FSM_sequential_State[3]_i_2_n_0 ;
  wire \FSM_sequential_State[3]_i_3_n_0 ;
  wire \FSM_sequential_State[3]_i_4_n_0 ;
  wire \FSM_sequential_State[4]_i_1_n_0 ;
  wire \FSM_sequential_State[4]_i_3_n_0 ;
  wire \FSM_sequential_State[4]_i_4_n_0 ;
  wire \FSM_sequential_State_reg[0]_0 ;
  wire \FSM_sequential_State_reg[0]_1 ;
  wire \FSM_sequential_State_reg[0]_2 ;
  wire \FSM_sequential_State_reg[1]_0 ;
  wire \FSM_sequential_State_reg[1]_1 ;
  wire \FSM_sequential_State_reg[1]_2 ;
  wire \FSM_sequential_State_reg[1]_3 ;
  wire \FSM_sequential_State_reg[1]_4 ;
  wire \FSM_sequential_State_reg[1]_5 ;
  wire \FSM_sequential_State_reg[1]_6 ;
  wire \FSM_sequential_State_reg[2]_0 ;
  wire \FSM_sequential_State_reg[2]_1 ;
  wire \FSM_sequential_State_reg[2]_2 ;
  wire \FSM_sequential_State_reg[2]_3 ;
  wire \FSM_sequential_State_reg[3]_0 ;
  wire \FSM_sequential_State_reg[4]_0 ;
  wire \FSM_sequential_State_reg[4]_1 ;
  wire \FSM_sequential_State_reg[4]_10 ;
  wire \FSM_sequential_State_reg[4]_11 ;
  wire \FSM_sequential_State_reg[4]_12 ;
  wire \FSM_sequential_State_reg[4]_13 ;
  wire \FSM_sequential_State_reg[4]_14 ;
  wire \FSM_sequential_State_reg[4]_15 ;
  wire \FSM_sequential_State_reg[4]_16 ;
  wire \FSM_sequential_State_reg[4]_17 ;
  wire \FSM_sequential_State_reg[4]_18 ;
  wire \FSM_sequential_State_reg[4]_19 ;
  wire \FSM_sequential_State_reg[4]_2 ;
  wire \FSM_sequential_State_reg[4]_3 ;
  wire \FSM_sequential_State_reg[4]_4 ;
  wire \FSM_sequential_State_reg[4]_5 ;
  wire \FSM_sequential_State_reg[4]_6 ;
  wire \FSM_sequential_State_reg[4]_7 ;
  wire \FSM_sequential_State_reg[4]_8 ;
  wire \FSM_sequential_State_reg[4]_9 ;
  wire [4:0]Next_state;
  wire [2:0]Q;
  wire \R6_reg[0] ;
  wire \R6_reg[0]_0 ;
  wire \R6_reg[10] ;
  wire \R6_reg[10]_0 ;
  wire \R6_reg[11] ;
  wire \R6_reg[11]_0 ;
  wire \R6_reg[12] ;
  wire \R6_reg[12]_0 ;
  wire \R6_reg[13] ;
  wire \R6_reg[13]_0 ;
  wire \R6_reg[14] ;
  wire \R6_reg[14]_0 ;
  wire \R6_reg[1] ;
  wire \R6_reg[1]_0 ;
  wire \R6_reg[2] ;
  wire \R6_reg[2]_0 ;
  wire \R6_reg[3] ;
  wire \R6_reg[3]_0 ;
  wire \R6_reg[4] ;
  wire \R6_reg[4]_0 ;
  wire \R6_reg[5] ;
  wire \R6_reg[5]_0 ;
  wire \R6_reg[6] ;
  wire \R6_reg[6]_0 ;
  wire \R6_reg[7] ;
  wire \R6_reg[7]_0 ;
  wire \R6_reg[8] ;
  wire \R6_reg[8]_0 ;
  wire \R6_reg[9] ;
  wire \R6_reg[9]_0 ;
  wire \R7_reg[15] ;
  wire \R7_reg[15]_0 ;
  wire Run_ah;
  wire [3:0]S;
  wire [4:3]State;
  wire [15:0]data3;
  wire [15:0]douta;
  wire ena;
  wire [0:0]hex_segB_OBUF;
  wire [11:0]pc_In0;
  wire [1:0]state;
  wire we_select;
  wire [0:0]wea;

  LUT5 #(
    .INIT(32'hB8BBB888)) 
    ADDROUT_carry__0_i_1
       (.I0(\R6_reg[7] ),
        .I1(\FSM_sequential_State_reg[2]_0 ),
        .I2(ADDROUT_carry__0_5),
        .I3(\Dout_reg[11] ),
        .I4(ADDROUT_carry__0_6),
        .O(ADDR1MUXOUT[7]));
  LUT6 #(
    .INIT(64'h00200A8000000000)) 
    ADDROUT_carry__0_i_19
       (.I0(DoutIR[5]),
        .I1(Q[2]),
        .I2(State[4]),
        .I3(State[3]),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(ADDR2MUXOUT[5]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    ADDROUT_carry__0_i_2
       (.I0(\R6_reg[6] ),
        .I1(\FSM_sequential_State_reg[2]_0 ),
        .I2(ADDROUT_carry__0_3),
        .I3(\Dout_reg[11] ),
        .I4(ADDROUT_carry__0_4),
        .O(ADDR1MUXOUT[6]));
  LUT6 #(
    .INIT(64'h00200A8000000000)) 
    ADDROUT_carry__0_i_20
       (.I0(DoutIR[4]),
        .I1(Q[2]),
        .I2(State[4]),
        .I3(State[3]),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(ADDR2MUXOUT[4]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'h04300000)) 
    ADDROUT_carry__0_i_21
       (.I0(Q[2]),
        .I1(State[4]),
        .I2(State[3]),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(\FSM_sequential_State_reg[2]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'hFFDFDFFF)) 
    ADDROUT_carry__0_i_22
       (.I0(Q[1]),
        .I1(State[3]),
        .I2(State[4]),
        .I3(Q[0]),
        .I4(Q[2]),
        .O(\FSM_sequential_State_reg[1]_2 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    ADDROUT_carry__0_i_3
       (.I0(\R6_reg[5] ),
        .I1(\FSM_sequential_State_reg[2]_0 ),
        .I2(ADDROUT_carry__0_1),
        .I3(\Dout_reg[11] ),
        .I4(ADDROUT_carry__0_2),
        .O(ADDR1MUXOUT[5]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    ADDROUT_carry__0_i_4
       (.I0(\R6_reg[4] ),
        .I1(\FSM_sequential_State_reg[2]_0 ),
        .I2(ADDROUT_carry__0),
        .I3(\Dout_reg[11] ),
        .I4(ADDROUT_carry__0_0),
        .O(ADDR1MUXOUT[4]));
  LUT6 #(
    .INIT(64'h001DFF1DFFE200E2)) 
    ADDROUT_carry__0_i_7
       (.I0(ADDROUT_carry__0_2),
        .I1(\Dout_reg[11] ),
        .I2(ADDROUT_carry__0_1),
        .I3(\FSM_sequential_State_reg[2]_0 ),
        .I4(\R6_reg[5] ),
        .I5(ADDR2MUXOUT[5]),
        .O(\Dout_reg[5] [1]));
  LUT6 #(
    .INIT(64'h001DFF1DFFE200E2)) 
    ADDROUT_carry__0_i_8
       (.I0(ADDROUT_carry__0_0),
        .I1(\Dout_reg[11] ),
        .I2(ADDROUT_carry__0),
        .I3(\FSM_sequential_State_reg[2]_0 ),
        .I4(\R6_reg[4] ),
        .I5(ADDR2MUXOUT[4]),
        .O(\Dout_reg[5] [0]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    ADDROUT_carry__1_i_1
       (.I0(\R6_reg[11] ),
        .I1(\FSM_sequential_State_reg[2]_0 ),
        .I2(ADDROUT_carry__1_5),
        .I3(\Dout_reg[11] ),
        .I4(ADDROUT_carry__1_6),
        .O(ADDR1MUXOUT[11]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    ADDROUT_carry__1_i_2
       (.I0(\R6_reg[10] ),
        .I1(\FSM_sequential_State_reg[2]_0 ),
        .I2(ADDROUT_carry__1_3),
        .I3(\Dout_reg[11] ),
        .I4(ADDROUT_carry__1_4),
        .O(ADDR1MUXOUT[10]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    ADDROUT_carry__1_i_3
       (.I0(\R6_reg[9] ),
        .I1(\FSM_sequential_State_reg[2]_0 ),
        .I2(ADDROUT_carry__1_1),
        .I3(\Dout_reg[11] ),
        .I4(ADDROUT_carry__1_2),
        .O(ADDR1MUXOUT[9]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    ADDROUT_carry__1_i_4
       (.I0(\R6_reg[8] ),
        .I1(\FSM_sequential_State_reg[2]_0 ),
        .I2(ADDROUT_carry__1),
        .I3(\Dout_reg[11] ),
        .I4(ADDROUT_carry__1_0),
        .O(ADDR1MUXOUT[8]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    ADDROUT_carry__2_i_1
       (.I0(\R6_reg[14] ),
        .I1(\FSM_sequential_State_reg[2]_0 ),
        .I2(ADDROUT_carry__2_3),
        .I3(\Dout_reg[11] ),
        .I4(ADDROUT_carry__2_4),
        .O(ADDR1MUXOUT[14]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    ADDROUT_carry__2_i_2
       (.I0(\R6_reg[13] ),
        .I1(\FSM_sequential_State_reg[2]_0 ),
        .I2(ADDROUT_carry__2_1),
        .I3(\Dout_reg[11] ),
        .I4(ADDROUT_carry__2_2),
        .O(ADDR1MUXOUT[13]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    ADDROUT_carry__2_i_3
       (.I0(\R6_reg[12] ),
        .I1(\FSM_sequential_State_reg[2]_0 ),
        .I2(ADDROUT_carry__2),
        .I3(\Dout_reg[11] ),
        .I4(ADDROUT_carry__2_0),
        .O(ADDR1MUXOUT[12]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    ADDROUT_carry_i_1
       (.I0(\R6_reg[3] ),
        .I1(\FSM_sequential_State_reg[2]_0 ),
        .I2(ADDROUT_carry_5),
        .I3(\Dout_reg[11] ),
        .I4(ADDROUT_carry_6),
        .O(ADDR1MUXOUT[3]));
  LUT6 #(
    .INIT(64'h5555515555555D55)) 
    ADDROUT_carry_i_11
       (.I0(DoutIR[11]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(State[3]),
        .I4(State[4]),
        .I5(DoutIR[8]),
        .O(\Dout_reg[11] ));
  LUT6 #(
    .INIT(64'h00200A8000000000)) 
    ADDROUT_carry_i_19
       (.I0(DoutIR[3]),
        .I1(Q[2]),
        .I2(State[4]),
        .I3(State[3]),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(ADDR2MUXOUT[3]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    ADDROUT_carry_i_2
       (.I0(\R6_reg[2] ),
        .I1(\FSM_sequential_State_reg[2]_0 ),
        .I2(ADDROUT_carry_3),
        .I3(\Dout_reg[11] ),
        .I4(ADDROUT_carry_4),
        .O(ADDR1MUXOUT[2]));
  LUT6 #(
    .INIT(64'h00200A8000000000)) 
    ADDROUT_carry_i_20
       (.I0(DoutIR[2]),
        .I1(Q[2]),
        .I2(State[4]),
        .I3(State[3]),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(ADDR2MUXOUT[2]));
  LUT6 #(
    .INIT(64'h00200A8000000000)) 
    ADDROUT_carry_i_21
       (.I0(DoutIR[1]),
        .I1(Q[2]),
        .I2(State[4]),
        .I3(State[3]),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(ADDR2MUXOUT[1]));
  LUT6 #(
    .INIT(64'h00200A8000000000)) 
    ADDROUT_carry_i_22
       (.I0(DoutIR[0]),
        .I1(Q[2]),
        .I2(State[4]),
        .I3(State[3]),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(ADDR2MUXOUT[0]));
  LUT6 #(
    .INIT(64'h5555515555555D55)) 
    ADDROUT_carry_i_23
       (.I0(DoutIR[10]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(State[3]),
        .I4(State[4]),
        .I5(DoutIR[7]),
        .O(\Dout_reg[10] ));
  LUT6 #(
    .INIT(64'h5555515555555D55)) 
    ADDROUT_carry_i_24
       (.I0(DoutIR[9]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(State[3]),
        .I4(State[4]),
        .I5(DoutIR[6]),
        .O(\Dout_reg[9] ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    ADDROUT_carry_i_3
       (.I0(\R6_reg[1] ),
        .I1(\FSM_sequential_State_reg[2]_0 ),
        .I2(ADDROUT_carry_1),
        .I3(\Dout_reg[11] ),
        .I4(ADDROUT_carry_2),
        .O(ADDR1MUXOUT[1]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    ADDROUT_carry_i_4
       (.I0(\R6_reg[0] ),
        .I1(\FSM_sequential_State_reg[2]_0 ),
        .I2(ADDROUT_carry),
        .I3(\Dout_reg[11] ),
        .I4(ADDROUT_carry_0),
        .O(ADDR1MUXOUT[0]));
  LUT6 #(
    .INIT(64'h001DFF1DFFE200E2)) 
    ADDROUT_carry_i_5
       (.I0(ADDROUT_carry_6),
        .I1(\Dout_reg[11] ),
        .I2(ADDROUT_carry_5),
        .I3(\FSM_sequential_State_reg[2]_0 ),
        .I4(\R6_reg[3] ),
        .I5(ADDR2MUXOUT[3]),
        .O(S[3]));
  LUT6 #(
    .INIT(64'h001DFF1DFFE200E2)) 
    ADDROUT_carry_i_6
       (.I0(ADDROUT_carry_4),
        .I1(\Dout_reg[11] ),
        .I2(ADDROUT_carry_3),
        .I3(\FSM_sequential_State_reg[2]_0 ),
        .I4(\R6_reg[2] ),
        .I5(ADDR2MUXOUT[2]),
        .O(S[2]));
  LUT6 #(
    .INIT(64'h001DFF1DFFE200E2)) 
    ADDROUT_carry_i_7
       (.I0(ADDROUT_carry_2),
        .I1(\Dout_reg[11] ),
        .I2(ADDROUT_carry_1),
        .I3(\FSM_sequential_State_reg[2]_0 ),
        .I4(\R6_reg[1] ),
        .I5(ADDR2MUXOUT[1]),
        .O(S[1]));
  LUT6 #(
    .INIT(64'h001DFF1DFFE200E2)) 
    ADDROUT_carry_i_8
       (.I0(ADDROUT_carry_0),
        .I1(\Dout_reg[11] ),
        .I2(ADDROUT_carry),
        .I3(\FSM_sequential_State_reg[2]_0 ),
        .I4(\R6_reg[0] ),
        .I5(ADDR2MUXOUT[0]),
        .O(S[0]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'hFFFFFD3F)) 
    ADDROUT_carry_i_9
       (.I0(Q[2]),
        .I1(State[3]),
        .I2(Q[1]),
        .I3(State[4]),
        .I4(Q[0]),
        .O(\FSM_sequential_State_reg[2]_0 ));
  LUT6 #(
    .INIT(64'hFFFF44F4FFFFFFFF)) 
    \Dout[0]_i_1 
       (.I0(\Dout[15]_i_4__0_n_0 ),
        .I1(\R6_reg[0] ),
        .I2(data3[0]),
        .I3(\Dout[15]_i_5__0_n_0 ),
        .I4(\Dout[0]_i_2_n_0 ),
        .I5(\Dout[0]_i_3__0_n_0 ),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hFFFFEEFEFFFFFFFF)) 
    \Dout[0]_i_1__1 
       (.I0(\Dout[0]_i_2__0_n_0 ),
        .I1(\Dout[0]_i_3_n_0 ),
        .I2(data3[0]),
        .I3(\Dout[15]_i_5__0_n_0 ),
        .I4(\Dout[0]_i_2_n_0 ),
        .I5(\Dout[0]_i_3__0_n_0 ),
        .O(\FSM_sequential_State_reg[4]_2 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'h00000080)) 
    \Dout[0]_i_2 
       (.I0(\R6_reg[0]_0 ),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(State[4]),
        .O(\Dout[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0200020000200220)) 
    \Dout[0]_i_2__0 
       (.I0(douta[0]),
        .I1(State[4]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(State[3]),
        .I5(Q[0]),
        .O(\Dout[0]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000080020)) 
    \Dout[0]_i_3 
       (.I0(\R6_reg[0] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(State[3]),
        .I4(State[4]),
        .I5(Q[2]),
        .O(\Dout[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFD0000FFFDFFFD)) 
    \Dout[0]_i_3__0 
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(\Dout[15]_i_8_n_0 ),
        .I4(\Dout[15]_i_9_n_0 ),
        .I5(DoutIR[0]),
        .O(\Dout[0]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'hF4F4FFF4FFFFFFFF)) 
    \Dout[10]_i_1 
       (.I0(\Dout[15]_i_4__0_n_0 ),
        .I1(\R6_reg[10] ),
        .I2(\Dout[10]_i_2_n_0 ),
        .I3(data3[10]),
        .I4(\Dout[15]_i_5__0_n_0 ),
        .I5(\Dout[15]_i_7_n_0 ),
        .O(D[10]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \Dout[10]_i_1__0 
       (.I0(pc_In0[9]),
        .I1(\FSM_sequential_State_reg[1]_0 ),
        .I2(data3[10]),
        .O(\Dout_reg[12]_0 ));
  LUT6 #(
    .INIT(64'hFEFEFFFEFFFFFFFF)) 
    \Dout[10]_i_1__1 
       (.I0(\Dout[10]_i_2__0_n_0 ),
        .I1(\Dout[10]_i_3_n_0 ),
        .I2(\Dout[10]_i_2_n_0 ),
        .I3(data3[10]),
        .I4(\Dout[15]_i_5__0_n_0 ),
        .I5(\Dout[15]_i_7_n_0 ),
        .O(\FSM_sequential_State_reg[4]_12 ));
  LUT5 #(
    .INIT(32'h00000080)) 
    \Dout[10]_i_2 
       (.I0(\R6_reg[10]_0 ),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(State[4]),
        .O(\Dout[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0200020000200220)) 
    \Dout[10]_i_2__0 
       (.I0(douta[10]),
        .I1(State[4]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(State[3]),
        .I5(Q[0]),
        .O(\Dout[10]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000080020)) 
    \Dout[10]_i_3 
       (.I0(\R6_reg[10] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(State[3]),
        .I4(State[4]),
        .I5(Q[2]),
        .O(\Dout[10]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF4F4FFF4FFFFFFFF)) 
    \Dout[11]_i_1 
       (.I0(\Dout[15]_i_4__0_n_0 ),
        .I1(\R6_reg[11] ),
        .I2(\Dout[11]_i_2_n_0 ),
        .I3(data3[11]),
        .I4(\Dout[15]_i_5__0_n_0 ),
        .I5(\Dout[15]_i_7_n_0 ),
        .O(D[11]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \Dout[11]_i_1__0 
       (.I0(pc_In0[10]),
        .I1(\FSM_sequential_State_reg[1]_0 ),
        .I2(data3[11]),
        .O(\Dout_reg[12]_1 ));
  LUT6 #(
    .INIT(64'hFEFEFFFEFFFFFFFF)) 
    \Dout[11]_i_1__1 
       (.I0(\Dout[11]_i_2__0_n_0 ),
        .I1(\Dout[11]_i_3_n_0 ),
        .I2(\Dout[11]_i_2_n_0 ),
        .I3(data3[11]),
        .I4(\Dout[15]_i_5__0_n_0 ),
        .I5(\Dout[15]_i_7_n_0 ),
        .O(\FSM_sequential_State_reg[4]_13 ));
  LUT5 #(
    .INIT(32'h00000080)) 
    \Dout[11]_i_2 
       (.I0(\R6_reg[11]_0 ),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(State[4]),
        .O(\Dout[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0200020000200220)) 
    \Dout[11]_i_2__0 
       (.I0(douta[11]),
        .I1(State[4]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(State[3]),
        .I5(Q[0]),
        .O(\Dout[11]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000080020)) 
    \Dout[11]_i_3 
       (.I0(\R6_reg[11] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(State[3]),
        .I4(State[4]),
        .I5(Q[2]),
        .O(\Dout[11]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF4F4FFF4FFFFFFFF)) 
    \Dout[12]_i_1 
       (.I0(\Dout[15]_i_4__0_n_0 ),
        .I1(\R6_reg[12] ),
        .I2(\Dout[12]_i_2_n_0 ),
        .I3(data3[12]),
        .I4(\Dout[15]_i_5__0_n_0 ),
        .I5(\Dout[15]_i_7_n_0 ),
        .O(D[12]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \Dout[12]_i_1__0 
       (.I0(pc_In0[11]),
        .I1(\FSM_sequential_State_reg[1]_0 ),
        .I2(data3[12]),
        .O(\Dout_reg[12]_2 ));
  LUT6 #(
    .INIT(64'hFEFEFFFEFFFFFFFF)) 
    \Dout[12]_i_1__1 
       (.I0(\Dout[12]_i_2__0_n_0 ),
        .I1(\Dout[12]_i_3_n_0 ),
        .I2(\Dout[12]_i_2_n_0 ),
        .I3(data3[12]),
        .I4(\Dout[15]_i_5__0_n_0 ),
        .I5(\Dout[15]_i_7_n_0 ),
        .O(\FSM_sequential_State_reg[4]_14 ));
  LUT5 #(
    .INIT(32'h00000080)) 
    \Dout[12]_i_2 
       (.I0(\R6_reg[12]_0 ),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(State[4]),
        .O(\Dout[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0200020000200220)) 
    \Dout[12]_i_2__0 
       (.I0(douta[12]),
        .I1(State[4]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(State[3]),
        .I5(Q[0]),
        .O(\Dout[12]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000080020)) 
    \Dout[12]_i_3 
       (.I0(\R6_reg[12] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(State[3]),
        .I4(State[4]),
        .I5(Q[2]),
        .O(\Dout[12]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF44F4FFFFFFFF)) 
    \Dout[13]_i_1 
       (.I0(\Dout[15]_i_4__0_n_0 ),
        .I1(\R6_reg[13] ),
        .I2(data3[13]),
        .I3(\Dout[15]_i_5__0_n_0 ),
        .I4(\Dout[13]_i_2_n_0 ),
        .I5(\Dout[15]_i_7_n_0 ),
        .O(D[13]));
  LUT6 #(
    .INIT(64'hFFFFEEFEFFFFFFFF)) 
    \Dout[13]_i_1__1 
       (.I0(\Dout[13]_i_2__0_n_0 ),
        .I1(\Dout[13]_i_3_n_0 ),
        .I2(data3[13]),
        .I3(\Dout[15]_i_5__0_n_0 ),
        .I4(\Dout[13]_i_2_n_0 ),
        .I5(\Dout[15]_i_7_n_0 ),
        .O(\FSM_sequential_State_reg[4]_15 ));
  LUT5 #(
    .INIT(32'h00000080)) 
    \Dout[13]_i_2 
       (.I0(\R6_reg[13]_0 ),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(State[4]),
        .O(\Dout[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0200020000200220)) 
    \Dout[13]_i_2__0 
       (.I0(douta[13]),
        .I1(State[4]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(State[3]),
        .I5(Q[0]),
        .O(\Dout[13]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000080020)) 
    \Dout[13]_i_3 
       (.I0(\R6_reg[13] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(State[3]),
        .I4(State[4]),
        .I5(Q[2]),
        .O(\Dout[13]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF4F4FFF4FFFFFFFF)) 
    \Dout[14]_i_1 
       (.I0(\Dout[15]_i_4__0_n_0 ),
        .I1(\R6_reg[14] ),
        .I2(\Dout[14]_i_2_n_0 ),
        .I3(data3[14]),
        .I4(\Dout[15]_i_5__0_n_0 ),
        .I5(\Dout[15]_i_7_n_0 ),
        .O(D[14]));
  LUT6 #(
    .INIT(64'hFEFEFFFEFFFFFFFF)) 
    \Dout[14]_i_1__1 
       (.I0(\Dout[14]_i_2__0_n_0 ),
        .I1(\Dout[14]_i_3_n_0 ),
        .I2(\Dout[14]_i_2_n_0 ),
        .I3(data3[14]),
        .I4(\Dout[15]_i_5__0_n_0 ),
        .I5(\Dout[15]_i_7_n_0 ),
        .O(\FSM_sequential_State_reg[4]_16 ));
  LUT5 #(
    .INIT(32'h00000080)) 
    \Dout[14]_i_2 
       (.I0(\R6_reg[14]_0 ),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(State[4]),
        .O(\Dout[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0200020000200220)) 
    \Dout[14]_i_2__0 
       (.I0(douta[14]),
        .I1(State[4]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(State[3]),
        .I5(Q[0]),
        .O(\Dout[14]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000080020)) 
    \Dout[14]_i_3 
       (.I0(\R6_reg[14] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(State[3]),
        .I4(State[4]),
        .I5(Q[2]),
        .O(\Dout[14]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \Dout[15]_i_1 
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(State[4]),
        .I4(State[3]),
        .O(\FSM_sequential_State_reg[0]_1 ));
  LUT6 #(
    .INIT(64'h8AA8AAAAAAA888AA)) 
    \Dout[15]_i_1__0 
       (.I0(hex_segB_OBUF),
        .I1(State[4]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(State[3]),
        .O(\FSM_sequential_State_reg[4]_1 ));
  LUT6 #(
    .INIT(64'hAAAAAA8AAAAAAAAA)) 
    \Dout[15]_i_1__1 
       (.I0(hex_segB_OBUF),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(State[3]),
        .I4(State[4]),
        .I5(Q[0]),
        .O(\FSM_sequential_State_reg[1]_5 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'h00007403)) 
    \Dout[15]_i_2 
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(State[4]),
        .I4(State[3]),
        .O(\FSM_sequential_State_reg[0]_0 ));
  LUT6 #(
    .INIT(64'hBAABAAAAAAABBBAA)) 
    \Dout[15]_i_2__0 
       (.I0(hex_segB_OBUF),
        .I1(State[4]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(State[3]),
        .O(\FSM_sequential_State_reg[4]_0 ));
  LUT6 #(
    .INIT(64'hAAAAAABAAAAAAAAA)) 
    \Dout[15]_i_2__1 
       (.I0(hex_segB_OBUF),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(State[3]),
        .I4(State[4]),
        .I5(Q[0]),
        .O(\FSM_sequential_State_reg[1]_3 ));
  LUT6 #(
    .INIT(64'hFFFF44F4FFFFFFFF)) 
    \Dout[15]_i_3 
       (.I0(\Dout[15]_i_4__0_n_0 ),
        .I1(\R7_reg[15] ),
        .I2(data3[15]),
        .I3(\Dout[15]_i_5__0_n_0 ),
        .I4(\Dout[15]_i_6_n_0 ),
        .I5(\Dout[15]_i_7_n_0 ),
        .O(D[15]));
  LUT6 #(
    .INIT(64'hFFFFEEFEFFFFFFFF)) 
    \Dout[15]_i_3__1 
       (.I0(\Dout[15]_i_4__1_n_0 ),
        .I1(\Dout[15]_i_5_n_0 ),
        .I2(data3[15]),
        .I3(\Dout[15]_i_5__0_n_0 ),
        .I4(\Dout[15]_i_6_n_0 ),
        .I5(\Dout[15]_i_7_n_0 ),
        .O(\FSM_sequential_State_reg[4]_17 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'h00302000)) 
    \Dout[15]_i_4 
       (.I0(Q[1]),
        .I1(State[3]),
        .I2(State[4]),
        .I3(Q[0]),
        .I4(Q[2]),
        .O(\FSM_sequential_State_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'hFFFBFEFF)) 
    \Dout[15]_i_4__0 
       (.I0(Q[2]),
        .I1(State[4]),
        .I2(State[3]),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(\Dout[15]_i_4__0_n_0 ));
  LUT6 #(
    .INIT(64'h0200020000200220)) 
    \Dout[15]_i_4__1 
       (.I0(douta[15]),
        .I1(State[4]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(State[3]),
        .I5(Q[0]),
        .O(\Dout[15]_i_4__1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000080020)) 
    \Dout[15]_i_5 
       (.I0(\R7_reg[15] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(State[3]),
        .I4(State[4]),
        .I5(Q[2]),
        .O(\Dout[15]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \Dout[15]_i_5__0 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(State[3]),
        .I3(State[4]),
        .O(\Dout[15]_i_5__0_n_0 ));
  LUT5 #(
    .INIT(32'h00000080)) 
    \Dout[15]_i_6 
       (.I0(\R7_reg[15]_0 ),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(State[4]),
        .O(\Dout[15]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFD0000FFFDFFFD)) 
    \Dout[15]_i_7 
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(\Dout[15]_i_8_n_0 ),
        .I4(\Dout[15]_i_9_n_0 ),
        .I5(DoutIR[4]),
        .O(\Dout[15]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \Dout[15]_i_8 
       (.I0(State[4]),
        .I1(State[3]),
        .O(\Dout[15]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFBFFFFFFFFFFFFFF)) 
    \Dout[15]_i_9 
       (.I0(State[3]),
        .I1(Q[2]),
        .I2(State[4]),
        .I3(DoutIR[5]),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(\Dout[15]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hF4F4FFF4FFFFFFFF)) 
    \Dout[1]_i_1 
       (.I0(\Dout[15]_i_4__0_n_0 ),
        .I1(\R6_reg[1] ),
        .I2(\Dout[1]_i_2_n_0 ),
        .I3(data3[1]),
        .I4(\Dout[15]_i_5__0_n_0 ),
        .I5(\Dout[1]_i_3__0_n_0 ),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \Dout[1]_i_1__0 
       (.I0(pc_In0[0]),
        .I1(\FSM_sequential_State_reg[1]_0 ),
        .I2(data3[1]),
        .O(\Dout_reg[0] ));
  LUT6 #(
    .INIT(64'hFEFEFFFEFFFFFFFF)) 
    \Dout[1]_i_1__1 
       (.I0(\Dout[1]_i_2__0_n_0 ),
        .I1(\Dout[1]_i_3_n_0 ),
        .I2(\Dout[1]_i_2_n_0 ),
        .I3(data3[1]),
        .I4(\Dout[15]_i_5__0_n_0 ),
        .I5(\Dout[1]_i_3__0_n_0 ),
        .O(\FSM_sequential_State_reg[4]_3 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT5 #(
    .INIT(32'h00000080)) 
    \Dout[1]_i_2 
       (.I0(\R6_reg[1]_0 ),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(State[4]),
        .O(\Dout[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0200020000200220)) 
    \Dout[1]_i_2__0 
       (.I0(douta[1]),
        .I1(State[4]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(State[3]),
        .I5(Q[0]),
        .O(\Dout[1]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000080020)) 
    \Dout[1]_i_3 
       (.I0(\R6_reg[1] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(State[3]),
        .I4(State[4]),
        .I5(Q[2]),
        .O(\Dout[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFD0000FFFDFFFD)) 
    \Dout[1]_i_3__0 
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(\Dout[15]_i_8_n_0 ),
        .I4(\Dout[15]_i_9_n_0 ),
        .I5(DoutIR[1]),
        .O(\Dout[1]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF44F4FFFFFFFF)) 
    \Dout[2]_i_1 
       (.I0(\Dout[15]_i_4__0_n_0 ),
        .I1(\R6_reg[2] ),
        .I2(data3[2]),
        .I3(\Dout[15]_i_5__0_n_0 ),
        .I4(\Dout[2]_i_2_n_0 ),
        .I5(\Dout[2]_i_3__0_n_0 ),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \Dout[2]_i_1__0 
       (.I0(pc_In0[1]),
        .I1(\FSM_sequential_State_reg[1]_0 ),
        .I2(data3[2]),
        .O(\Dout_reg[0]_0 ));
  LUT6 #(
    .INIT(64'hFFFFEEFEFFFFFFFF)) 
    \Dout[2]_i_1__1 
       (.I0(\Dout[2]_i_2__0_n_0 ),
        .I1(\Dout[2]_i_3_n_0 ),
        .I2(data3[2]),
        .I3(\Dout[15]_i_5__0_n_0 ),
        .I4(\Dout[2]_i_2_n_0 ),
        .I5(\Dout[2]_i_3__0_n_0 ),
        .O(\FSM_sequential_State_reg[4]_4 ));
  LUT5 #(
    .INIT(32'h00000080)) 
    \Dout[2]_i_2 
       (.I0(\R6_reg[2]_0 ),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(State[4]),
        .O(\Dout[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0200020000200220)) 
    \Dout[2]_i_2__0 
       (.I0(douta[2]),
        .I1(State[4]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(State[3]),
        .I5(Q[0]),
        .O(\Dout[2]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000080020)) 
    \Dout[2]_i_3 
       (.I0(\R6_reg[2] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(State[3]),
        .I4(State[4]),
        .I5(Q[2]),
        .O(\Dout[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFD0000FFFDFFFD)) 
    \Dout[2]_i_3__0 
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(\Dout[15]_i_8_n_0 ),
        .I4(\Dout[15]_i_9_n_0 ),
        .I5(DoutIR[2]),
        .O(\Dout[2]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'hF4F4FFF4FFFFFFFF)) 
    \Dout[3]_i_1 
       (.I0(\Dout[15]_i_4__0_n_0 ),
        .I1(\R6_reg[3] ),
        .I2(\Dout[3]_i_2_n_0 ),
        .I3(data3[3]),
        .I4(\Dout[15]_i_5__0_n_0 ),
        .I5(\Dout[3]_i_3__0_n_0 ),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \Dout[3]_i_1__0 
       (.I0(pc_In0[2]),
        .I1(\FSM_sequential_State_reg[1]_0 ),
        .I2(data3[3]),
        .O(\Dout_reg[0]_1 ));
  LUT6 #(
    .INIT(64'hFEFEFFFEFFFFFFFF)) 
    \Dout[3]_i_1__1 
       (.I0(\Dout[3]_i_2__0_n_0 ),
        .I1(\Dout[3]_i_3_n_0 ),
        .I2(\Dout[3]_i_2_n_0 ),
        .I3(data3[3]),
        .I4(\Dout[15]_i_5__0_n_0 ),
        .I5(\Dout[3]_i_3__0_n_0 ),
        .O(\FSM_sequential_State_reg[4]_5 ));
  LUT5 #(
    .INIT(32'h00000080)) 
    \Dout[3]_i_2 
       (.I0(\R6_reg[3]_0 ),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(State[4]),
        .O(\Dout[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0200020000200220)) 
    \Dout[3]_i_2__0 
       (.I0(douta[3]),
        .I1(State[4]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(State[3]),
        .I5(Q[0]),
        .O(\Dout[3]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000080020)) 
    \Dout[3]_i_3 
       (.I0(\R6_reg[3] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(State[3]),
        .I4(State[4]),
        .I5(Q[2]),
        .O(\Dout[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFD0000FFFDFFFD)) 
    \Dout[3]_i_3__0 
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(\Dout[15]_i_8_n_0 ),
        .I4(\Dout[15]_i_9_n_0 ),
        .I5(DoutIR[3]),
        .O(\Dout[3]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'hF4F4FFF4FFFFFFFF)) 
    \Dout[4]_i_1 
       (.I0(\Dout[15]_i_4__0_n_0 ),
        .I1(\R6_reg[4] ),
        .I2(\Dout[4]_i_2_n_0 ),
        .I3(data3[4]),
        .I4(\Dout[15]_i_5__0_n_0 ),
        .I5(\Dout[15]_i_7_n_0 ),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \Dout[4]_i_1__0 
       (.I0(pc_In0[3]),
        .I1(\FSM_sequential_State_reg[1]_0 ),
        .I2(data3[4]),
        .O(\Dout_reg[0]_2 ));
  LUT6 #(
    .INIT(64'hFEFEFFFEFFFFFFFF)) 
    \Dout[4]_i_1__1 
       (.I0(\Dout[4]_i_2__0_n_0 ),
        .I1(\Dout[4]_i_3_n_0 ),
        .I2(\Dout[4]_i_2_n_0 ),
        .I3(data3[4]),
        .I4(\Dout[15]_i_5__0_n_0 ),
        .I5(\Dout[15]_i_7_n_0 ),
        .O(\FSM_sequential_State_reg[4]_6 ));
  LUT5 #(
    .INIT(32'h00000080)) 
    \Dout[4]_i_2 
       (.I0(\R6_reg[4]_0 ),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(State[4]),
        .O(\Dout[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0200020000200220)) 
    \Dout[4]_i_2__0 
       (.I0(douta[4]),
        .I1(State[4]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(State[3]),
        .I5(Q[0]),
        .O(\Dout[4]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000080020)) 
    \Dout[4]_i_3 
       (.I0(\R6_reg[4] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(State[3]),
        .I4(State[4]),
        .I5(Q[2]),
        .O(\Dout[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF4F4FFF4FFFFFFFF)) 
    \Dout[5]_i_1 
       (.I0(\Dout[15]_i_4__0_n_0 ),
        .I1(\R6_reg[5] ),
        .I2(\Dout[5]_i_2__0_n_0 ),
        .I3(data3[5]),
        .I4(\Dout[15]_i_5__0_n_0 ),
        .I5(\Dout[15]_i_7_n_0 ),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \Dout[5]_i_1__0 
       (.I0(pc_In0[4]),
        .I1(\FSM_sequential_State_reg[1]_0 ),
        .I2(data3[5]),
        .O(\Dout_reg[8] ));
  LUT6 #(
    .INIT(64'hFEFEFFFEFFFFFFFF)) 
    \Dout[5]_i_1__1 
       (.I0(\Dout[5]_i_2__1_n_0 ),
        .I1(\Dout[5]_i_3_n_0 ),
        .I2(\Dout[5]_i_2__0_n_0 ),
        .I3(data3[5]),
        .I4(\Dout[15]_i_5__0_n_0 ),
        .I5(\Dout[15]_i_7_n_0 ),
        .O(\FSM_sequential_State_reg[4]_7 ));
  LUT6 #(
    .INIT(64'hAAAAA2AAAAAAA28A)) 
    \Dout[5]_i_1__2 
       (.I0(hex_segB_OBUF),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(State[3]),
        .I4(State[4]),
        .I5(Q[2]),
        .O(\FSM_sequential_State_reg[1]_4 ));
  LUT6 #(
    .INIT(64'hAAAAAEAAAAAAAEBA)) 
    \Dout[5]_i_2 
       (.I0(hex_segB_OBUF),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(State[3]),
        .I4(State[4]),
        .I5(Q[2]),
        .O(\FSM_sequential_State_reg[1]_1 ));
  LUT5 #(
    .INIT(32'h00000080)) 
    \Dout[5]_i_2__0 
       (.I0(\R6_reg[5]_0 ),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(State[4]),
        .O(\Dout[5]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h0200020000200220)) 
    \Dout[5]_i_2__1 
       (.I0(douta[5]),
        .I1(State[4]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(State[3]),
        .I5(Q[0]),
        .O(\Dout[5]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000080020)) 
    \Dout[5]_i_3 
       (.I0(\R6_reg[5] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(State[3]),
        .I4(State[4]),
        .I5(Q[2]),
        .O(\Dout[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF4F4FFF4FFFFFFFF)) 
    \Dout[6]_i_1 
       (.I0(\Dout[15]_i_4__0_n_0 ),
        .I1(\R6_reg[6] ),
        .I2(\Dout[6]_i_2_n_0 ),
        .I3(data3[6]),
        .I4(\Dout[15]_i_5__0_n_0 ),
        .I5(\Dout[15]_i_7_n_0 ),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \Dout[6]_i_1__0 
       (.I0(pc_In0[5]),
        .I1(\FSM_sequential_State_reg[1]_0 ),
        .I2(data3[6]),
        .O(\Dout_reg[8]_0 ));
  LUT6 #(
    .INIT(64'hFEFEFFFEFFFFFFFF)) 
    \Dout[6]_i_1__1 
       (.I0(\Dout[6]_i_2__0_n_0 ),
        .I1(\Dout[6]_i_3_n_0 ),
        .I2(\Dout[6]_i_2_n_0 ),
        .I3(data3[6]),
        .I4(\Dout[15]_i_5__0_n_0 ),
        .I5(\Dout[15]_i_7_n_0 ),
        .O(\FSM_sequential_State_reg[4]_8 ));
  LUT5 #(
    .INIT(32'h00000080)) 
    \Dout[6]_i_2 
       (.I0(\R6_reg[6]_0 ),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(State[4]),
        .O(\Dout[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0200020000200220)) 
    \Dout[6]_i_2__0 
       (.I0(douta[6]),
        .I1(State[4]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(State[3]),
        .I5(Q[0]),
        .O(\Dout[6]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000080020)) 
    \Dout[6]_i_3 
       (.I0(\R6_reg[6] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(State[3]),
        .I4(State[4]),
        .I5(Q[2]),
        .O(\Dout[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF4F4FFF4FFFFFFFF)) 
    \Dout[7]_i_1 
       (.I0(\Dout[15]_i_4__0_n_0 ),
        .I1(\R6_reg[7] ),
        .I2(\Dout[7]_i_2_n_0 ),
        .I3(data3[7]),
        .I4(\Dout[15]_i_5__0_n_0 ),
        .I5(\Dout[15]_i_7_n_0 ),
        .O(D[7]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \Dout[7]_i_1__0 
       (.I0(pc_In0[6]),
        .I1(\FSM_sequential_State_reg[1]_0 ),
        .I2(data3[7]),
        .O(\Dout_reg[8]_1 ));
  LUT6 #(
    .INIT(64'hFEFEFFFEFFFFFFFF)) 
    \Dout[7]_i_1__1 
       (.I0(\Dout[7]_i_2__0_n_0 ),
        .I1(\Dout[7]_i_3_n_0 ),
        .I2(\Dout[7]_i_2_n_0 ),
        .I3(data3[7]),
        .I4(\Dout[15]_i_5__0_n_0 ),
        .I5(\Dout[15]_i_7_n_0 ),
        .O(\FSM_sequential_State_reg[4]_9 ));
  LUT5 #(
    .INIT(32'h00000080)) 
    \Dout[7]_i_2 
       (.I0(\R6_reg[7]_0 ),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(State[4]),
        .O(\Dout[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0200020000200220)) 
    \Dout[7]_i_2__0 
       (.I0(douta[7]),
        .I1(State[4]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(State[3]),
        .I5(Q[0]),
        .O(\Dout[7]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000080020)) 
    \Dout[7]_i_3 
       (.I0(\R6_reg[7] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(State[3]),
        .I4(State[4]),
        .I5(Q[2]),
        .O(\Dout[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF44F4FFFFFFFF)) 
    \Dout[8]_i_1 
       (.I0(\Dout[15]_i_4__0_n_0 ),
        .I1(\R6_reg[8] ),
        .I2(data3[8]),
        .I3(\Dout[15]_i_5__0_n_0 ),
        .I4(\Dout[8]_i_2_n_0 ),
        .I5(\Dout[15]_i_7_n_0 ),
        .O(D[8]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \Dout[8]_i_1__0 
       (.I0(pc_In0[7]),
        .I1(\FSM_sequential_State_reg[1]_0 ),
        .I2(data3[8]),
        .O(\Dout_reg[8]_2 ));
  LUT6 #(
    .INIT(64'hFFFFEEFEFFFFFFFF)) 
    \Dout[8]_i_1__1 
       (.I0(\Dout[8]_i_2__0_n_0 ),
        .I1(\Dout[8]_i_3_n_0 ),
        .I2(data3[8]),
        .I3(\Dout[15]_i_5__0_n_0 ),
        .I4(\Dout[8]_i_2_n_0 ),
        .I5(\Dout[15]_i_7_n_0 ),
        .O(\FSM_sequential_State_reg[4]_10 ));
  LUT5 #(
    .INIT(32'h00000080)) 
    \Dout[8]_i_2 
       (.I0(\R6_reg[8]_0 ),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(State[4]),
        .O(\Dout[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0200020000200220)) 
    \Dout[8]_i_2__0 
       (.I0(douta[8]),
        .I1(State[4]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(State[3]),
        .I5(Q[0]),
        .O(\Dout[8]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000080020)) 
    \Dout[8]_i_3 
       (.I0(\R6_reg[8] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(State[3]),
        .I4(State[4]),
        .I5(Q[2]),
        .O(\Dout[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF4F4FFF4FFFFFFFF)) 
    \Dout[9]_i_1 
       (.I0(\Dout[15]_i_4__0_n_0 ),
        .I1(\R6_reg[9] ),
        .I2(\Dout[9]_i_2_n_0 ),
        .I3(data3[9]),
        .I4(\Dout[15]_i_5__0_n_0 ),
        .I5(\Dout[15]_i_7_n_0 ),
        .O(D[9]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \Dout[9]_i_1__0 
       (.I0(pc_In0[8]),
        .I1(\FSM_sequential_State_reg[1]_0 ),
        .I2(data3[9]),
        .O(\Dout_reg[12] ));
  LUT6 #(
    .INIT(64'hFEFEFFFEFFFFFFFF)) 
    \Dout[9]_i_1__1 
       (.I0(\Dout[9]_i_2__0_n_0 ),
        .I1(\Dout[9]_i_3_n_0 ),
        .I2(\Dout[9]_i_2_n_0 ),
        .I3(data3[9]),
        .I4(\Dout[15]_i_5__0_n_0 ),
        .I5(\Dout[15]_i_7_n_0 ),
        .O(\FSM_sequential_State_reg[4]_11 ));
  LUT5 #(
    .INIT(32'h00000080)) 
    \Dout[9]_i_2 
       (.I0(\R6_reg[9]_0 ),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(State[4]),
        .O(\Dout[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0200020000200220)) 
    \Dout[9]_i_2__0 
       (.I0(douta[9]),
        .I1(State[4]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(State[3]),
        .I5(Q[0]),
        .O(\Dout[9]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000080020)) 
    \Dout[9]_i_3 
       (.I0(\R6_reg[9] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(State[3]),
        .I4(State[4]),
        .I5(Q[2]),
        .O(\Dout[9]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h55551515555500FF)) 
    \FSM_sequential_State[0]_i_1 
       (.I0(\FSM_sequential_State[0]_i_2_n_0 ),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\FSM_sequential_State[0]_i_3_n_0 ),
        .I4(State[4]),
        .I5(State[3]),
        .O(Next_state[0]));
  LUT6 #(
    .INIT(64'hFF80000000000000)) 
    \FSM_sequential_State[0]_i_2 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(State[3]),
        .I4(\FSM_sequential_State_reg[4]_18 ),
        .I5(State[4]),
        .O(\FSM_sequential_State[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h5555FFFF08880000)) 
    \FSM_sequential_State[0]_i_3 
       (.I0(Q[1]),
        .I1(DoutIR[14]),
        .I2(\FSM_sequential_State_reg[0]_2 ),
        .I3(DoutIR[15]),
        .I4(Q[2]),
        .I5(Q[0]),
        .O(\FSM_sequential_State[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF01100000)) 
    \FSM_sequential_State[1]_i_1 
       (.I0(State[3]),
        .I1(State[4]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(\FSM_sequential_State_reg[1]_6 ),
        .I5(\FSM_sequential_State[1]_i_3_n_0 ),
        .O(Next_state[1]));
  LUT6 #(
    .INIT(64'h0020022008200220)) 
    \FSM_sequential_State[1]_i_3 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(State[3]),
        .I3(State[4]),
        .I4(Q[2]),
        .I5(\FSM_sequential_State_reg[4]_18 ),
        .O(\FSM_sequential_State[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'hFFFF0400)) 
    \FSM_sequential_State[2]_i_1 
       (.I0(\FSM_sequential_State_reg[4]_18 ),
        .I1(State[4]),
        .I2(State[3]),
        .I3(\FSM_sequential_State[4]_i_4_n_0 ),
        .I4(\FSM_sequential_State[2]_i_2_n_0 ),
        .O(Next_state[2]));
  LUT6 #(
    .INIT(64'h00002CFC00002C64)) 
    \FSM_sequential_State[2]_i_2 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(State[3]),
        .I4(State[4]),
        .I5(\FSM_sequential_State_reg[2]_3 ),
        .O(\FSM_sequential_State[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF04440400)) 
    \FSM_sequential_State[3]_i_1 
       (.I0(\FSM_sequential_State[3]_i_2_n_0 ),
        .I1(\FSM_sequential_State[3]_i_3_n_0 ),
        .I2(DoutIR[15]),
        .I3(DoutIR[13]),
        .I4(DoutIR[12]),
        .I5(\FSM_sequential_State[3]_i_4_n_0 ),
        .O(Next_state[3]));
  LUT5 #(
    .INIT(32'hFFBFBFFF)) 
    \FSM_sequential_State[3]_i_2 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(DoutIR[14]),
        .I4(DoutIR[15]),
        .O(\FSM_sequential_State[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_sequential_State[3]_i_3 
       (.I0(State[4]),
        .I1(State[3]),
        .O(\FSM_sequential_State[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h88B0B0B080B08080)) 
    \FSM_sequential_State[3]_i_4 
       (.I0(\FSM_sequential_State_reg[4]_18 ),
        .I1(State[4]),
        .I2(State[3]),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(Q[1]),
        .O(\FSM_sequential_State[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h3F3F3F3F3F3F3FFE)) 
    \FSM_sequential_State[4]_i_1 
       (.I0(Run_ah),
        .I1(State[4]),
        .I2(State[3]),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(Q[0]),
        .O(\FSM_sequential_State[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAFCF000)) 
    \FSM_sequential_State[4]_i_2 
       (.I0(\FSM_sequential_State_reg[4]_18 ),
        .I1(\FSM_sequential_State[4]_i_3_n_0 ),
        .I2(\FSM_sequential_State[4]_i_4_n_0 ),
        .I3(State[3]),
        .I4(State[4]),
        .I5(\FSM_sequential_State_reg[4]_19 ),
        .O(Next_state[4]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_sequential_State[4]_i_3 
       (.I0(Q[0]),
        .I1(Q[2]),
        .O(\FSM_sequential_State[4]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \FSM_sequential_State[4]_i_4 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .O(\FSM_sequential_State[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFDFFFFFFFF)) 
    \FSM_sequential_State[4]_i_6 
       (.I0(Q[2]),
        .I1(State[3]),
        .I2(State[4]),
        .I3(DoutIR[13]),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(\FSM_sequential_State_reg[2]_2 ));
  (* FSM_ENCODED_STATES = "S_27:01101,S_25_1:01011,S_06:01010,S_04:10010,S_16_2:10001,S_18:00001,S_16_1:10000,PauseIR2:11000,S_23:01111,PauseIR1:10111,S_00:10101,S_22:10110,S_09:01001,Halted:00000,S_05:01000,S_25_2:01100,S_35:00101,S_12:10100,S_33_3:00100,S_21:10011,S_01:00111,S_32:00110,S_33_2:00011,S_33_1:00010,S_07:01110" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_State_reg[0] 
       (.C(Clk_IBUF_BUFG),
        .CE(\FSM_sequential_State[4]_i_1_n_0 ),
        .D(Next_state[0]),
        .Q(Q[0]),
        .R(hex_segB_OBUF));
  (* FSM_ENCODED_STATES = "S_27:01101,S_25_1:01011,S_06:01010,S_04:10010,S_16_2:10001,S_18:00001,S_16_1:10000,PauseIR2:11000,S_23:01111,PauseIR1:10111,S_00:10101,S_22:10110,S_09:01001,Halted:00000,S_05:01000,S_25_2:01100,S_35:00101,S_12:10100,S_33_3:00100,S_21:10011,S_01:00111,S_32:00110,S_33_2:00011,S_33_1:00010,S_07:01110" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_State_reg[1] 
       (.C(Clk_IBUF_BUFG),
        .CE(\FSM_sequential_State[4]_i_1_n_0 ),
        .D(Next_state[1]),
        .Q(Q[1]),
        .R(hex_segB_OBUF));
  (* FSM_ENCODED_STATES = "S_27:01101,S_25_1:01011,S_06:01010,S_04:10010,S_16_2:10001,S_18:00001,S_16_1:10000,PauseIR2:11000,S_23:01111,PauseIR1:10111,S_00:10101,S_22:10110,S_09:01001,Halted:00000,S_05:01000,S_25_2:01100,S_35:00101,S_12:10100,S_33_3:00100,S_21:10011,S_01:00111,S_32:00110,S_33_2:00011,S_33_1:00010,S_07:01110" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_State_reg[2] 
       (.C(Clk_IBUF_BUFG),
        .CE(\FSM_sequential_State[4]_i_1_n_0 ),
        .D(Next_state[2]),
        .Q(Q[2]),
        .R(hex_segB_OBUF));
  (* FSM_ENCODED_STATES = "S_27:01101,S_25_1:01011,S_06:01010,S_04:10010,S_16_2:10001,S_18:00001,S_16_1:10000,PauseIR2:11000,S_23:01111,PauseIR1:10111,S_00:10101,S_22:10110,S_09:01001,Halted:00000,S_05:01000,S_25_2:01100,S_35:00101,S_12:10100,S_33_3:00100,S_21:10011,S_01:00111,S_32:00110,S_33_2:00011,S_33_1:00010,S_07:01110" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_State_reg[3] 
       (.C(Clk_IBUF_BUFG),
        .CE(\FSM_sequential_State[4]_i_1_n_0 ),
        .D(Next_state[3]),
        .Q(State[3]),
        .R(hex_segB_OBUF));
  (* FSM_ENCODED_STATES = "S_27:01101,S_25_1:01011,S_06:01010,S_04:10010,S_16_2:10001,S_18:00001,S_16_1:10000,PauseIR2:11000,S_23:01111,PauseIR1:10111,S_00:10101,S_22:10110,S_09:01001,Halted:00000,S_05:01000,S_25_2:01100,S_35:00101,S_12:10100,S_33_3:00100,S_21:10011,S_01:00111,S_32:00110,S_33_2:00011,S_33_1:00010,S_07:01110" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_State_reg[4] 
       (.C(Clk_IBUF_BUFG),
        .CE(\FSM_sequential_State[4]_i_1_n_0 ),
        .D(Next_state[4]),
        .Q(State[4]),
        .R(hex_segB_OBUF));
  LUT6 #(
    .INIT(64'hFEFBFFFBFFFFEFFB)) 
    \R0[15]_i_2 
       (.I0(hex_segB_OBUF),
        .I1(State[3]),
        .I2(State[4]),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(Q[0]),
        .O(\FSM_sequential_State_reg[3]_0 ));
  LUT6 #(
    .INIT(64'hABAAABAAAABAABBA)) 
    ram0_i_1
       (.I0(we_select),
        .I1(State[4]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(State[3]),
        .I5(Q[0]),
        .O(ena));
  LUT6 #(
    .INIT(64'h1111111111111F11)) 
    ram0_i_2
       (.I0(state[0]),
        .I1(state[1]),
        .I2(Q[2]),
        .I3(State[4]),
        .I4(State[3]),
        .I5(Q[1]),
        .O(wea));
endmodule

module Instantiateram
   (dina,
    we_select,
    addra,
    state,
    ADDR_from_CPU,
    Clk_IBUF_BUFG,
    hex_segB_OBUF);
  output [15:0]dina;
  output we_select;
  output [9:0]addra;
  output [1:0]state;
  input [5:0]ADDR_from_CPU;
  input Clk_IBUF_BUFG;
  input [0:0]hex_segB_OBUF;

  wire [5:0]ADDR_from_CPU;
  wire Clk_IBUF_BUFG;
  wire \FSM_sequential_state[0]_i_1_n_0 ;
  wire \FSM_sequential_state[0]_i_2_n_0 ;
  wire \FSM_sequential_state[0]_i_3_n_0 ;
  wire \FSM_sequential_state[0]_i_4_n_0 ;
  wire \FSM_sequential_state[0]_i_5_n_0 ;
  wire \FSM_sequential_state[1]_i_1_n_0 ;
  wire [9:0]addra;
  wire [7:0]address;
  wire \address[0]_i_2_n_0 ;
  wire \address_reg[0]_i_1_n_0 ;
  wire \address_reg[0]_i_1_n_1 ;
  wire \address_reg[0]_i_1_n_2 ;
  wire \address_reg[0]_i_1_n_3 ;
  wire \address_reg[0]_i_1_n_4 ;
  wire \address_reg[0]_i_1_n_5 ;
  wire \address_reg[0]_i_1_n_6 ;
  wire \address_reg[0]_i_1_n_7 ;
  wire \address_reg[12]_i_1_n_1 ;
  wire \address_reg[12]_i_1_n_2 ;
  wire \address_reg[12]_i_1_n_3 ;
  wire \address_reg[12]_i_1_n_4 ;
  wire \address_reg[12]_i_1_n_5 ;
  wire \address_reg[12]_i_1_n_6 ;
  wire \address_reg[12]_i_1_n_7 ;
  wire \address_reg[4]_i_1_n_0 ;
  wire \address_reg[4]_i_1_n_1 ;
  wire \address_reg[4]_i_1_n_2 ;
  wire \address_reg[4]_i_1_n_3 ;
  wire \address_reg[4]_i_1_n_4 ;
  wire \address_reg[4]_i_1_n_5 ;
  wire \address_reg[4]_i_1_n_6 ;
  wire \address_reg[4]_i_1_n_7 ;
  wire \address_reg[8]_i_1_n_0 ;
  wire \address_reg[8]_i_1_n_1 ;
  wire \address_reg[8]_i_1_n_2 ;
  wire \address_reg[8]_i_1_n_3 ;
  wire \address_reg[8]_i_1_n_4 ;
  wire \address_reg[8]_i_1_n_5 ;
  wire \address_reg[8]_i_1_n_6 ;
  wire \address_reg[8]_i_1_n_7 ;
  wire \address_reg_n_0_[10] ;
  wire \address_reg_n_0_[11] ;
  wire \address_reg_n_0_[12] ;
  wire \address_reg_n_0_[13] ;
  wire \address_reg_n_0_[14] ;
  wire \address_reg_n_0_[15] ;
  wire \address_reg_rep[4]_i_1_n_0 ;
  wire \address_reg_rep[4]_i_1_n_1 ;
  wire \address_reg_rep[4]_i_1_n_2 ;
  wire \address_reg_rep[4]_i_1_n_3 ;
  wire \address_reg_rep[4]_i_1_n_4 ;
  wire \address_reg_rep[4]_i_1_n_5 ;
  wire \address_reg_rep[4]_i_1_n_6 ;
  wire \address_reg_rep[4]_i_1_n_7 ;
  wire \address_reg_rep[7]_i_2_n_2 ;
  wire \address_reg_rep[7]_i_2_n_3 ;
  wire \address_reg_rep[7]_i_2_n_5 ;
  wire \address_reg_rep[7]_i_2_n_6 ;
  wire \address_reg_rep[7]_i_2_n_7 ;
  wire \address_rep[0]_i_1_n_0 ;
  wire [15:0]dina;
  wire [0:0]hex_segB_OBUF;
  wire [9:0]init_ADDR;
  wire ram0_i_29_n_0;
  wire ram0_i_30_n_0;
  wire ram0_i_31_n_0;
  wire ram0_i_32_n_0;
  wire ram0_i_33_n_0;
  wire ram0_i_34_n_0;
  wire ram0_i_35_n_0;
  wire ram0_i_36_n_0;
  wire ram0_i_37_n_0;
  wire ram0_i_38_n_0;
  wire ram0_i_39_n_0;
  wire ram0_i_40_n_0;
  wire ram0_i_41_n_0;
  wire ram0_i_42_n_0;
  wire ram0_i_43_n_0;
  wire ram0_i_44_n_0;
  wire ram0_i_45_n_0;
  wire ram0_i_46_n_0;
  wire ram0_i_47_n_0;
  wire ram0_i_48_n_0;
  wire ram0_i_49_n_0;
  wire ram0_i_50_n_0;
  wire ram0_i_51_n_0;
  wire ram0_i_52_n_0;
  wire ram0_i_53_n_0;
  wire ram0_i_54_n_0;
  wire ram0_i_55_n_0;
  wire ram0_i_56_n_0;
  wire ram0_i_57_n_0;
  wire ram0_i_58_n_0;
  wire ram0_i_59_n_0;
  wire ram0_i_60_n_0;
  wire ram0_i_61_n_0;
  wire ram0_i_62_n_0;
  wire ram0_i_63_n_0;
  wire ram0_i_64_n_0;
  wire ram0_i_65_n_0;
  wire ram0_i_66_n_0;
  wire ram0_i_67_n_0;
  wire ram0_i_68_n_0;
  wire ram0_i_69_n_0;
  wire ram0_i_70_n_0;
  wire ram0_i_71_n_0;
  wire ram0_i_72_n_0;
  wire ram0_i_73_n_0;
  wire ram0_i_74_n_0;
  wire ram0_i_75_n_0;
  wire ram0_i_76_n_0;
  wire ram0_i_77_n_0;
  wire ram0_i_78_n_0;
  wire ram0_i_79_n_0;
  wire ram0_i_80_n_0;
  wire ram0_i_81_n_0;
  wire ram0_i_82_n_0;
  wire ram0_i_83_n_0;
  wire ram0_i_84_n_0;
  wire ram0_i_85_n_0;
  wire ram0_i_86_n_0;
  wire ram0_i_87_n_0;
  wire ram0_i_88_n_0;
  wire ram0_i_89_n_0;
  wire ram0_i_90_n_0;
  wire ram0_i_91_n_0;
  wire ram0_i_92_n_0;
  wire [1:0]state;
  wire we_select;
  wire [3:3]\NLW_address_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_address_reg_rep[7]_i_2_CO_UNCONNECTED ;
  wire [3:3]\NLW_address_reg_rep[7]_i_2_O_UNCONNECTED ;

  LUT4 #(
    .INIT(16'hF202)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(\FSM_sequential_state[0]_i_2_n_0 ),
        .I1(\FSM_sequential_state[0]_i_3_n_0 ),
        .I2(state[1]),
        .I3(state[0]),
        .O(\FSM_sequential_state[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \FSM_sequential_state[0]_i_2 
       (.I0(init_ADDR[8]),
        .I1(\address_reg_n_0_[10] ),
        .I2(\address_reg_n_0_[13] ),
        .I3(\address_reg_n_0_[14] ),
        .I4(\FSM_sequential_state[0]_i_4_n_0 ),
        .O(\FSM_sequential_state[0]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFF7F)) 
    \FSM_sequential_state[0]_i_3 
       (.I0(init_ADDR[1]),
        .I1(init_ADDR[4]),
        .I2(init_ADDR[7]),
        .I3(\FSM_sequential_state[0]_i_5_n_0 ),
        .O(\FSM_sequential_state[0]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_state[0]_i_4 
       (.I0(\address_reg_n_0_[11] ),
        .I1(init_ADDR[9]),
        .I2(\address_reg_n_0_[15] ),
        .I3(\address_reg_n_0_[12] ),
        .O(\FSM_sequential_state[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hDFFFFFFFFFFFFFFF)) 
    \FSM_sequential_state[0]_i_5 
       (.I0(init_ADDR[6]),
        .I1(state[0]),
        .I2(init_ADDR[2]),
        .I3(init_ADDR[3]),
        .I4(init_ADDR[0]),
        .I5(init_ADDR[5]),
        .O(\FSM_sequential_state[0]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(state[1]),
        .I1(state[0]),
        .O(\FSM_sequential_state[1]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "idle:10,mem_write:00,done:01" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[0] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(hex_segB_OBUF),
        .D(\FSM_sequential_state[0]_i_1_n_0 ),
        .Q(state[0]));
  (* FSM_ENCODED_STATES = "idle:10,mem_write:00,done:01" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[1] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(hex_segB_OBUF),
        .D(\FSM_sequential_state[1]_i_1_n_0 ),
        .Q(state[1]));
  LUT1 #(
    .INIT(2'h1)) 
    \address[0]_i_2 
       (.I0(init_ADDR[0]),
        .O(\address[0]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \address_reg[0] 
       (.C(Clk_IBUF_BUFG),
        .CE(we_select),
        .CLR(hex_segB_OBUF),
        .D(\address_reg[0]_i_1_n_7 ),
        .Q(init_ADDR[0]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \address_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\address_reg[0]_i_1_n_0 ,\address_reg[0]_i_1_n_1 ,\address_reg[0]_i_1_n_2 ,\address_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\address_reg[0]_i_1_n_4 ,\address_reg[0]_i_1_n_5 ,\address_reg[0]_i_1_n_6 ,\address_reg[0]_i_1_n_7 }),
        .S({init_ADDR[3:1],\address[0]_i_2_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \address_reg[10] 
       (.C(Clk_IBUF_BUFG),
        .CE(we_select),
        .CLR(hex_segB_OBUF),
        .D(\address_reg[8]_i_1_n_5 ),
        .Q(\address_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \address_reg[11] 
       (.C(Clk_IBUF_BUFG),
        .CE(we_select),
        .CLR(hex_segB_OBUF),
        .D(\address_reg[8]_i_1_n_4 ),
        .Q(\address_reg_n_0_[11] ));
  FDCE #(
    .INIT(1'b0)) 
    \address_reg[12] 
       (.C(Clk_IBUF_BUFG),
        .CE(we_select),
        .CLR(hex_segB_OBUF),
        .D(\address_reg[12]_i_1_n_7 ),
        .Q(\address_reg_n_0_[12] ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \address_reg[12]_i_1 
       (.CI(\address_reg[8]_i_1_n_0 ),
        .CO({\NLW_address_reg[12]_i_1_CO_UNCONNECTED [3],\address_reg[12]_i_1_n_1 ,\address_reg[12]_i_1_n_2 ,\address_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\address_reg[12]_i_1_n_4 ,\address_reg[12]_i_1_n_5 ,\address_reg[12]_i_1_n_6 ,\address_reg[12]_i_1_n_7 }),
        .S({\address_reg_n_0_[15] ,\address_reg_n_0_[14] ,\address_reg_n_0_[13] ,\address_reg_n_0_[12] }));
  FDCE #(
    .INIT(1'b0)) 
    \address_reg[13] 
       (.C(Clk_IBUF_BUFG),
        .CE(we_select),
        .CLR(hex_segB_OBUF),
        .D(\address_reg[12]_i_1_n_6 ),
        .Q(\address_reg_n_0_[13] ));
  FDCE #(
    .INIT(1'b0)) 
    \address_reg[14] 
       (.C(Clk_IBUF_BUFG),
        .CE(we_select),
        .CLR(hex_segB_OBUF),
        .D(\address_reg[12]_i_1_n_5 ),
        .Q(\address_reg_n_0_[14] ));
  FDCE #(
    .INIT(1'b0)) 
    \address_reg[15] 
       (.C(Clk_IBUF_BUFG),
        .CE(we_select),
        .CLR(hex_segB_OBUF),
        .D(\address_reg[12]_i_1_n_4 ),
        .Q(\address_reg_n_0_[15] ));
  FDCE #(
    .INIT(1'b0)) 
    \address_reg[1] 
       (.C(Clk_IBUF_BUFG),
        .CE(we_select),
        .CLR(hex_segB_OBUF),
        .D(\address_reg[0]_i_1_n_6 ),
        .Q(init_ADDR[1]));
  FDCE #(
    .INIT(1'b0)) 
    \address_reg[2] 
       (.C(Clk_IBUF_BUFG),
        .CE(we_select),
        .CLR(hex_segB_OBUF),
        .D(\address_reg[0]_i_1_n_5 ),
        .Q(init_ADDR[2]));
  FDCE #(
    .INIT(1'b0)) 
    \address_reg[3] 
       (.C(Clk_IBUF_BUFG),
        .CE(we_select),
        .CLR(hex_segB_OBUF),
        .D(\address_reg[0]_i_1_n_4 ),
        .Q(init_ADDR[3]));
  FDCE #(
    .INIT(1'b0)) 
    \address_reg[4] 
       (.C(Clk_IBUF_BUFG),
        .CE(we_select),
        .CLR(hex_segB_OBUF),
        .D(\address_reg[4]_i_1_n_7 ),
        .Q(init_ADDR[4]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \address_reg[4]_i_1 
       (.CI(\address_reg[0]_i_1_n_0 ),
        .CO({\address_reg[4]_i_1_n_0 ,\address_reg[4]_i_1_n_1 ,\address_reg[4]_i_1_n_2 ,\address_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\address_reg[4]_i_1_n_4 ,\address_reg[4]_i_1_n_5 ,\address_reg[4]_i_1_n_6 ,\address_reg[4]_i_1_n_7 }),
        .S(init_ADDR[7:4]));
  FDCE #(
    .INIT(1'b0)) 
    \address_reg[5] 
       (.C(Clk_IBUF_BUFG),
        .CE(we_select),
        .CLR(hex_segB_OBUF),
        .D(\address_reg[4]_i_1_n_6 ),
        .Q(init_ADDR[5]));
  FDCE #(
    .INIT(1'b0)) 
    \address_reg[6] 
       (.C(Clk_IBUF_BUFG),
        .CE(we_select),
        .CLR(hex_segB_OBUF),
        .D(\address_reg[4]_i_1_n_5 ),
        .Q(init_ADDR[6]));
  FDCE #(
    .INIT(1'b0)) 
    \address_reg[7] 
       (.C(Clk_IBUF_BUFG),
        .CE(we_select),
        .CLR(hex_segB_OBUF),
        .D(\address_reg[4]_i_1_n_4 ),
        .Q(init_ADDR[7]));
  FDCE #(
    .INIT(1'b0)) 
    \address_reg[8] 
       (.C(Clk_IBUF_BUFG),
        .CE(we_select),
        .CLR(hex_segB_OBUF),
        .D(\address_reg[8]_i_1_n_7 ),
        .Q(init_ADDR[8]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \address_reg[8]_i_1 
       (.CI(\address_reg[4]_i_1_n_0 ),
        .CO({\address_reg[8]_i_1_n_0 ,\address_reg[8]_i_1_n_1 ,\address_reg[8]_i_1_n_2 ,\address_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\address_reg[8]_i_1_n_4 ,\address_reg[8]_i_1_n_5 ,\address_reg[8]_i_1_n_6 ,\address_reg[8]_i_1_n_7 }),
        .S({\address_reg_n_0_[11] ,\address_reg_n_0_[10] ,init_ADDR[9:8]}));
  FDCE #(
    .INIT(1'b0)) 
    \address_reg[9] 
       (.C(Clk_IBUF_BUFG),
        .CE(we_select),
        .CLR(hex_segB_OBUF),
        .D(\address_reg[8]_i_1_n_6 ),
        .Q(init_ADDR[9]));
  FDCE #(
    .INIT(1'b0)) 
    \address_reg_rep[0] 
       (.C(Clk_IBUF_BUFG),
        .CE(we_select),
        .CLR(hex_segB_OBUF),
        .D(\address_rep[0]_i_1_n_0 ),
        .Q(address[0]));
  FDCE #(
    .INIT(1'b0)) 
    \address_reg_rep[1] 
       (.C(Clk_IBUF_BUFG),
        .CE(we_select),
        .CLR(hex_segB_OBUF),
        .D(\address_reg_rep[4]_i_1_n_7 ),
        .Q(address[1]));
  FDCE #(
    .INIT(1'b0)) 
    \address_reg_rep[2] 
       (.C(Clk_IBUF_BUFG),
        .CE(we_select),
        .CLR(hex_segB_OBUF),
        .D(\address_reg_rep[4]_i_1_n_6 ),
        .Q(address[2]));
  FDCE #(
    .INIT(1'b0)) 
    \address_reg_rep[3] 
       (.C(Clk_IBUF_BUFG),
        .CE(we_select),
        .CLR(hex_segB_OBUF),
        .D(\address_reg_rep[4]_i_1_n_5 ),
        .Q(address[3]));
  FDCE #(
    .INIT(1'b0)) 
    \address_reg_rep[4] 
       (.C(Clk_IBUF_BUFG),
        .CE(we_select),
        .CLR(hex_segB_OBUF),
        .D(\address_reg_rep[4]_i_1_n_4 ),
        .Q(address[4]));
  CARRY4 \address_reg_rep[4]_i_1 
       (.CI(1'b0),
        .CO({\address_reg_rep[4]_i_1_n_0 ,\address_reg_rep[4]_i_1_n_1 ,\address_reg_rep[4]_i_1_n_2 ,\address_reg_rep[4]_i_1_n_3 }),
        .CYINIT(init_ADDR[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\address_reg_rep[4]_i_1_n_4 ,\address_reg_rep[4]_i_1_n_5 ,\address_reg_rep[4]_i_1_n_6 ,\address_reg_rep[4]_i_1_n_7 }),
        .S(init_ADDR[4:1]));
  FDCE #(
    .INIT(1'b0)) 
    \address_reg_rep[5] 
       (.C(Clk_IBUF_BUFG),
        .CE(we_select),
        .CLR(hex_segB_OBUF),
        .D(\address_reg_rep[7]_i_2_n_7 ),
        .Q(address[5]));
  FDCE #(
    .INIT(1'b0)) 
    \address_reg_rep[6] 
       (.C(Clk_IBUF_BUFG),
        .CE(we_select),
        .CLR(hex_segB_OBUF),
        .D(\address_reg_rep[7]_i_2_n_6 ),
        .Q(address[6]));
  FDCE #(
    .INIT(1'b0)) 
    \address_reg_rep[7] 
       (.C(Clk_IBUF_BUFG),
        .CE(we_select),
        .CLR(hex_segB_OBUF),
        .D(\address_reg_rep[7]_i_2_n_5 ),
        .Q(address[7]));
  CARRY4 \address_reg_rep[7]_i_2 
       (.CI(\address_reg_rep[4]_i_1_n_0 ),
        .CO({\NLW_address_reg_rep[7]_i_2_CO_UNCONNECTED [3:2],\address_reg_rep[7]_i_2_n_2 ,\address_reg_rep[7]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_address_reg_rep[7]_i_2_O_UNCONNECTED [3],\address_reg_rep[7]_i_2_n_5 ,\address_reg_rep[7]_i_2_n_6 ,\address_reg_rep[7]_i_2_n_7 }),
        .S({1'b0,init_ADDR[7:5]}));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \address_rep[0]_i_1 
       (.I0(init_ADDR[0]),
        .O(\address_rep[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \address_rep[7]_i_1 
       (.I0(state[1]),
        .I1(state[0]),
        .O(we_select));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hFE02)) 
    ram0_i_10
       (.I0(init_ADDR[2]),
        .I1(state[1]),
        .I2(state[0]),
        .I3(ADDR_from_CPU[2]),
        .O(addra[2]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hFE02)) 
    ram0_i_11
       (.I0(init_ADDR[1]),
        .I1(state[1]),
        .I2(state[0]),
        .I3(ADDR_from_CPU[1]),
        .O(addra[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hFE02)) 
    ram0_i_12
       (.I0(init_ADDR[0]),
        .I1(state[1]),
        .I2(state[0]),
        .I3(ADDR_from_CPU[0]),
        .O(addra[0]));
  LUT6 #(
    .INIT(64'h0080888800800000)) 
    ram0_i_13
       (.I0(\FSM_sequential_state[0]_i_2_n_0 ),
        .I1(we_select),
        .I2(ram0_i_29_n_0),
        .I3(address[6]),
        .I4(address[7]),
        .I5(ram0_i_30_n_0),
        .O(dina[15]));
  LUT6 #(
    .INIT(64'h0080888800800000)) 
    ram0_i_14
       (.I0(\FSM_sequential_state[0]_i_2_n_0 ),
        .I1(we_select),
        .I2(ram0_i_31_n_0),
        .I3(address[6]),
        .I4(address[7]),
        .I5(ram0_i_32_n_0),
        .O(dina[14]));
  LUT6 #(
    .INIT(64'h0080888800800000)) 
    ram0_i_15
       (.I0(\FSM_sequential_state[0]_i_2_n_0 ),
        .I1(we_select),
        .I2(ram0_i_33_n_0),
        .I3(address[6]),
        .I4(address[7]),
        .I5(ram0_i_34_n_0),
        .O(dina[13]));
  LUT6 #(
    .INIT(64'h0080888800800000)) 
    ram0_i_16
       (.I0(\FSM_sequential_state[0]_i_2_n_0 ),
        .I1(we_select),
        .I2(ram0_i_35_n_0),
        .I3(address[6]),
        .I4(address[7]),
        .I5(ram0_i_36_n_0),
        .O(dina[12]));
  LUT6 #(
    .INIT(64'h0080888800800000)) 
    ram0_i_17
       (.I0(\FSM_sequential_state[0]_i_2_n_0 ),
        .I1(we_select),
        .I2(ram0_i_37_n_0),
        .I3(address[6]),
        .I4(address[7]),
        .I5(ram0_i_38_n_0),
        .O(dina[11]));
  LUT6 #(
    .INIT(64'h0080888800800000)) 
    ram0_i_18
       (.I0(\FSM_sequential_state[0]_i_2_n_0 ),
        .I1(we_select),
        .I2(ram0_i_39_n_0),
        .I3(address[6]),
        .I4(address[7]),
        .I5(ram0_i_40_n_0),
        .O(dina[10]));
  LUT6 #(
    .INIT(64'h0080888800800000)) 
    ram0_i_19
       (.I0(\FSM_sequential_state[0]_i_2_n_0 ),
        .I1(we_select),
        .I2(ram0_i_41_n_0),
        .I3(address[6]),
        .I4(address[7]),
        .I5(ram0_i_42_n_0),
        .O(dina[9]));
  LUT6 #(
    .INIT(64'h0080888800800000)) 
    ram0_i_20
       (.I0(\FSM_sequential_state[0]_i_2_n_0 ),
        .I1(we_select),
        .I2(ram0_i_43_n_0),
        .I3(address[6]),
        .I4(address[7]),
        .I5(ram0_i_44_n_0),
        .O(dina[8]));
  LUT6 #(
    .INIT(64'h0080888800800000)) 
    ram0_i_21
       (.I0(\FSM_sequential_state[0]_i_2_n_0 ),
        .I1(we_select),
        .I2(ram0_i_45_n_0),
        .I3(address[6]),
        .I4(address[7]),
        .I5(ram0_i_46_n_0),
        .O(dina[7]));
  LUT6 #(
    .INIT(64'h0080888800800000)) 
    ram0_i_22
       (.I0(\FSM_sequential_state[0]_i_2_n_0 ),
        .I1(we_select),
        .I2(ram0_i_47_n_0),
        .I3(address[6]),
        .I4(address[7]),
        .I5(ram0_i_48_n_0),
        .O(dina[6]));
  LUT6 #(
    .INIT(64'h0080888800800000)) 
    ram0_i_23
       (.I0(\FSM_sequential_state[0]_i_2_n_0 ),
        .I1(we_select),
        .I2(ram0_i_49_n_0),
        .I3(address[6]),
        .I4(address[7]),
        .I5(ram0_i_50_n_0),
        .O(dina[5]));
  LUT6 #(
    .INIT(64'h0080888800800000)) 
    ram0_i_24
       (.I0(\FSM_sequential_state[0]_i_2_n_0 ),
        .I1(we_select),
        .I2(ram0_i_51_n_0),
        .I3(address[6]),
        .I4(address[7]),
        .I5(ram0_i_52_n_0),
        .O(dina[4]));
  LUT6 #(
    .INIT(64'h0080888800800000)) 
    ram0_i_25
       (.I0(\FSM_sequential_state[0]_i_2_n_0 ),
        .I1(we_select),
        .I2(ram0_i_53_n_0),
        .I3(address[6]),
        .I4(address[7]),
        .I5(ram0_i_54_n_0),
        .O(dina[3]));
  LUT6 #(
    .INIT(64'h0080888800800000)) 
    ram0_i_26
       (.I0(\FSM_sequential_state[0]_i_2_n_0 ),
        .I1(we_select),
        .I2(ram0_i_55_n_0),
        .I3(address[6]),
        .I4(address[7]),
        .I5(ram0_i_56_n_0),
        .O(dina[2]));
  LUT6 #(
    .INIT(64'h0080888800800000)) 
    ram0_i_27
       (.I0(\FSM_sequential_state[0]_i_2_n_0 ),
        .I1(we_select),
        .I2(ram0_i_57_n_0),
        .I3(address[6]),
        .I4(address[7]),
        .I5(ram0_i_58_n_0),
        .O(dina[1]));
  LUT6 #(
    .INIT(64'h0080888800800000)) 
    ram0_i_28
       (.I0(\FSM_sequential_state[0]_i_2_n_0 ),
        .I1(we_select),
        .I2(ram0_i_59_n_0),
        .I3(address[6]),
        .I4(address[7]),
        .I5(ram0_i_60_n_0),
        .O(dina[0]));
  LUT6 #(
    .INIT(64'h0000080040400024)) 
    ram0_i_29
       (.I0(address[2]),
        .I1(address[3]),
        .I2(address[4]),
        .I3(address[0]),
        .I4(address[1]),
        .I5(address[5]),
        .O(ram0_i_29_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h02)) 
    ram0_i_3
       (.I0(init_ADDR[9]),
        .I1(state[0]),
        .I2(state[1]),
        .O(addra[9]));
  MUXF7 ram0_i_30
       (.I0(ram0_i_61_n_0),
        .I1(ram0_i_62_n_0),
        .O(ram0_i_30_n_0),
        .S(address[6]));
  LUT6 #(
    .INIT(64'h3133202210659555)) 
    ram0_i_31
       (.I0(address[2]),
        .I1(address[5]),
        .I2(address[3]),
        .I3(address[0]),
        .I4(address[1]),
        .I5(address[4]),
        .O(ram0_i_31_n_0));
  MUXF7 ram0_i_32
       (.I0(ram0_i_63_n_0),
        .I1(ram0_i_64_n_0),
        .O(ram0_i_32_n_0),
        .S(address[6]));
  LUT6 #(
    .INIT(64'h0000068413000551)) 
    ram0_i_33
       (.I0(address[2]),
        .I1(address[5]),
        .I2(address[0]),
        .I3(address[1]),
        .I4(address[4]),
        .I5(address[3]),
        .O(ram0_i_33_n_0));
  MUXF7 ram0_i_34
       (.I0(ram0_i_65_n_0),
        .I1(ram0_i_66_n_0),
        .O(ram0_i_34_n_0),
        .S(address[6]));
  LUT6 #(
    .INIT(64'h323323236B5152B2)) 
    ram0_i_35
       (.I0(address[2]),
        .I1(address[5]),
        .I2(address[1]),
        .I3(address[3]),
        .I4(address[0]),
        .I5(address[4]),
        .O(ram0_i_35_n_0));
  MUXF7 ram0_i_36
       (.I0(ram0_i_67_n_0),
        .I1(ram0_i_68_n_0),
        .O(ram0_i_36_n_0),
        .S(address[6]));
  LUT6 #(
    .INIT(64'h111101121E2B1A15)) 
    ram0_i_37
       (.I0(address[2]),
        .I1(address[5]),
        .I2(address[1]),
        .I3(address[3]),
        .I4(address[0]),
        .I5(address[4]),
        .O(ram0_i_37_n_0));
  MUXF7 ram0_i_38
       (.I0(ram0_i_69_n_0),
        .I1(ram0_i_70_n_0),
        .O(ram0_i_38_n_0),
        .S(address[6]));
  LUT6 #(
    .INIT(64'h20206E68022198CA)) 
    ram0_i_39
       (.I0(address[2]),
        .I1(address[5]),
        .I2(address[1]),
        .I3(address[0]),
        .I4(address[4]),
        .I5(address[3]),
        .O(ram0_i_39_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h02)) 
    ram0_i_4
       (.I0(init_ADDR[8]),
        .I1(state[0]),
        .I2(state[1]),
        .O(addra[8]));
  MUXF7 ram0_i_40
       (.I0(ram0_i_71_n_0),
        .I1(ram0_i_72_n_0),
        .O(ram0_i_40_n_0),
        .S(address[6]));
  LUT6 #(
    .INIT(64'h242406222F2D0E03)) 
    ram0_i_41
       (.I0(address[2]),
        .I1(address[5]),
        .I2(address[4]),
        .I3(address[3]),
        .I4(address[0]),
        .I5(address[1]),
        .O(ram0_i_41_n_0));
  MUXF7 ram0_i_42
       (.I0(ram0_i_73_n_0),
        .I1(ram0_i_74_n_0),
        .O(ram0_i_42_n_0),
        .S(address[6]));
  LUT6 #(
    .INIT(64'h01010E2E10303F40)) 
    ram0_i_43
       (.I0(address[2]),
        .I1(address[5]),
        .I2(address[1]),
        .I3(address[3]),
        .I4(address[4]),
        .I5(address[0]),
        .O(ram0_i_43_n_0));
  MUXF7 ram0_i_44
       (.I0(ram0_i_75_n_0),
        .I1(ram0_i_76_n_0),
        .O(ram0_i_44_n_0),
        .S(address[6]));
  LUT6 #(
    .INIT(64'h214C301F033F01D1)) 
    ram0_i_45
       (.I0(address[2]),
        .I1(address[5]),
        .I2(address[1]),
        .I3(address[4]),
        .I4(address[0]),
        .I5(address[3]),
        .O(ram0_i_45_n_0));
  MUXF7 ram0_i_46
       (.I0(ram0_i_77_n_0),
        .I1(ram0_i_78_n_0),
        .O(ram0_i_46_n_0),
        .S(address[6]));
  LUT6 #(
    .INIT(64'h2131222043DF67F3)) 
    ram0_i_47
       (.I0(address[2]),
        .I1(address[5]),
        .I2(address[0]),
        .I3(address[1]),
        .I4(address[3]),
        .I5(address[4]),
        .O(ram0_i_47_n_0));
  MUXF7 ram0_i_48
       (.I0(ram0_i_79_n_0),
        .I1(ram0_i_80_n_0),
        .O(ram0_i_48_n_0),
        .S(address[6]));
  LUT6 #(
    .INIT(64'h233023006D7B48A0)) 
    ram0_i_49
       (.I0(address[2]),
        .I1(address[5]),
        .I2(address[1]),
        .I3(address[3]),
        .I4(address[0]),
        .I5(address[4]),
        .O(ram0_i_49_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h02)) 
    ram0_i_5
       (.I0(init_ADDR[7]),
        .I1(state[0]),
        .I2(state[1]),
        .O(addra[7]));
  MUXF7 ram0_i_50
       (.I0(ram0_i_81_n_0),
        .I1(ram0_i_82_n_0),
        .O(ram0_i_50_n_0),
        .S(address[6]));
  LUT6 #(
    .INIT(64'h011001000C6B4880)) 
    ram0_i_51
       (.I0(address[2]),
        .I1(address[5]),
        .I2(address[1]),
        .I3(address[3]),
        .I4(address[0]),
        .I5(address[4]),
        .O(ram0_i_51_n_0));
  MUXF7 ram0_i_52
       (.I0(ram0_i_83_n_0),
        .I1(ram0_i_84_n_0),
        .O(ram0_i_52_n_0),
        .S(address[6]));
  LUT6 #(
    .INIT(64'h002C0064104D20C0)) 
    ram0_i_53
       (.I0(address[2]),
        .I1(address[5]),
        .I2(address[1]),
        .I3(address[4]),
        .I4(address[0]),
        .I5(address[3]),
        .O(ram0_i_53_n_0));
  MUXF7 ram0_i_54
       (.I0(ram0_i_85_n_0),
        .I1(ram0_i_86_n_0),
        .O(ram0_i_54_n_0),
        .S(address[6]));
  LUT6 #(
    .INIT(64'h01100000084DECC0)) 
    ram0_i_55
       (.I0(address[2]),
        .I1(address[5]),
        .I2(address[1]),
        .I3(address[3]),
        .I4(address[0]),
        .I5(address[4]),
        .O(ram0_i_55_n_0));
  MUXF7 ram0_i_56
       (.I0(ram0_i_87_n_0),
        .I1(ram0_i_88_n_0),
        .O(ram0_i_56_n_0),
        .S(address[6]));
  LUT6 #(
    .INIT(64'h1112000308C36082)) 
    ram0_i_57
       (.I0(address[2]),
        .I1(address[5]),
        .I2(address[1]),
        .I3(address[3]),
        .I4(address[0]),
        .I5(address[4]),
        .O(ram0_i_57_n_0));
  MUXF7 ram0_i_58
       (.I0(ram0_i_89_n_0),
        .I1(ram0_i_90_n_0),
        .O(ram0_i_58_n_0),
        .S(address[6]));
  LUT6 #(
    .INIT(64'h014C315B00E000E8)) 
    ram0_i_59
       (.I0(address[2]),
        .I1(address[5]),
        .I2(address[1]),
        .I3(address[4]),
        .I4(address[3]),
        .I5(address[0]),
        .O(ram0_i_59_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h04)) 
    ram0_i_6
       (.I0(state[1]),
        .I1(init_ADDR[6]),
        .I2(state[0]),
        .O(addra[6]));
  MUXF7 ram0_i_60
       (.I0(ram0_i_91_n_0),
        .I1(ram0_i_92_n_0),
        .O(ram0_i_60_n_0),
        .S(address[6]));
  LUT6 #(
    .INIT(64'h1122110026858074)) 
    ram0_i_61
       (.I0(address[2]),
        .I1(address[5]),
        .I2(address[1]),
        .I3(address[3]),
        .I4(address[4]),
        .I5(address[0]),
        .O(ram0_i_61_n_0));
  LUT6 #(
    .INIT(64'h0280080008000081)) 
    ram0_i_62
       (.I0(address[2]),
        .I1(address[1]),
        .I2(address[0]),
        .I3(address[4]),
        .I4(address[3]),
        .I5(address[5]),
        .O(ram0_i_62_n_0));
  LUT6 #(
    .INIT(64'h6E6E1F5F73B5E7B3)) 
    ram0_i_63
       (.I0(address[2]),
        .I1(address[5]),
        .I2(address[3]),
        .I3(address[1]),
        .I4(address[0]),
        .I5(address[4]),
        .O(ram0_i_63_n_0));
  LUT6 #(
    .INIT(64'h5F30E0CA00108000)) 
    ram0_i_64
       (.I0(address[2]),
        .I1(address[0]),
        .I2(address[5]),
        .I3(address[3]),
        .I4(address[4]),
        .I5(address[1]),
        .O(ram0_i_64_n_0));
  LUT6 #(
    .INIT(64'h04C001302A352102)) 
    ram0_i_65
       (.I0(address[2]),
        .I1(address[5]),
        .I2(address[1]),
        .I3(address[3]),
        .I4(address[0]),
        .I5(address[4]),
        .O(ram0_i_65_n_0));
  LUT6 #(
    .INIT(64'h4058001080020000)) 
    ram0_i_66
       (.I0(address[2]),
        .I1(address[3]),
        .I2(address[4]),
        .I3(address[0]),
        .I4(address[1]),
        .I5(address[5]),
        .O(ram0_i_66_n_0));
  LUT6 #(
    .INIT(64'h7B2FF904F69BC167)) 
    ram0_i_67
       (.I0(address[2]),
        .I1(address[5]),
        .I2(address[1]),
        .I3(address[3]),
        .I4(address[4]),
        .I5(address[0]),
        .O(ram0_i_67_n_0));
  LUT6 #(
    .INIT(64'h0BEE88C0C44833D3)) 
    ram0_i_68
       (.I0(address[2]),
        .I1(address[5]),
        .I2(address[0]),
        .I3(address[1]),
        .I4(address[4]),
        .I5(address[3]),
        .O(ram0_i_68_n_0));
  LUT6 #(
    .INIT(64'h4A3A1142E6C91A20)) 
    ram0_i_69
       (.I0(address[2]),
        .I1(address[5]),
        .I2(address[1]),
        .I3(address[3]),
        .I4(address[4]),
        .I5(address[0]),
        .O(ram0_i_69_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hFE02)) 
    ram0_i_7
       (.I0(init_ADDR[5]),
        .I1(state[1]),
        .I2(state[0]),
        .I3(ADDR_from_CPU[5]),
        .O(addra[5]));
  LUT6 #(
    .INIT(64'hDACA0C00C04DC3FB)) 
    ram0_i_70
       (.I0(address[2]),
        .I1(address[5]),
        .I2(address[1]),
        .I3(address[0]),
        .I4(address[3]),
        .I5(address[4]),
        .O(ram0_i_70_n_0));
  LUT6 #(
    .INIT(64'h7519511103904644)) 
    ram0_i_71
       (.I0(address[2]),
        .I1(address[5]),
        .I2(address[1]),
        .I3(address[0]),
        .I4(address[3]),
        .I5(address[4]),
        .O(ram0_i_71_n_0));
  LUT6 #(
    .INIT(64'h8082040060006CDE)) 
    ram0_i_72
       (.I0(address[2]),
        .I1(address[5]),
        .I2(address[3]),
        .I3(address[4]),
        .I4(address[0]),
        .I5(address[1]),
        .O(ram0_i_72_n_0));
  LUT6 #(
    .INIT(64'hF9D85020E8773106)) 
    ram0_i_73
       (.I0(address[2]),
        .I1(address[5]),
        .I2(address[1]),
        .I3(address[3]),
        .I4(address[0]),
        .I5(address[4]),
        .O(ram0_i_73_n_0));
  LUT6 #(
    .INIT(64'h6CA8C4080CCD1DEB)) 
    ram0_i_74
       (.I0(address[2]),
        .I1(address[5]),
        .I2(address[1]),
        .I3(address[0]),
        .I4(address[3]),
        .I5(address[4]),
        .O(ram0_i_74_n_0));
  LUT6 #(
    .INIT(64'h0054E110A28200C0)) 
    ram0_i_75
       (.I0(address[2]),
        .I1(address[5]),
        .I2(address[4]),
        .I3(address[3]),
        .I4(address[0]),
        .I5(address[1]),
        .O(ram0_i_75_n_0));
  LUT6 #(
    .INIT(64'h0EAA0CC0004D031F)) 
    ram0_i_76
       (.I0(address[2]),
        .I1(address[5]),
        .I2(address[1]),
        .I3(address[0]),
        .I4(address[3]),
        .I5(address[4]),
        .O(ram0_i_76_n_0));
  LUT6 #(
    .INIT(64'h7012021051144204)) 
    ram0_i_77
       (.I0(address[2]),
        .I1(address[5]),
        .I2(address[1]),
        .I3(address[0]),
        .I4(address[4]),
        .I5(address[3]),
        .O(ram0_i_77_n_0));
  LUT6 #(
    .INIT(64'h4623637D0C02820C)) 
    ram0_i_78
       (.I0(address[2]),
        .I1(address[5]),
        .I2(address[1]),
        .I3(address[4]),
        .I4(address[0]),
        .I5(address[3]),
        .O(ram0_i_78_n_0));
  LUT6 #(
    .INIT(64'h7950C21058144214)) 
    ram0_i_79
       (.I0(address[2]),
        .I1(address[5]),
        .I2(address[1]),
        .I3(address[0]),
        .I4(address[4]),
        .I5(address[3]),
        .O(ram0_i_79_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hFE02)) 
    ram0_i_8
       (.I0(init_ADDR[4]),
        .I1(state[1]),
        .I2(state[0]),
        .I3(ADDR_from_CPU[4]),
        .O(addra[4]));
  LUT6 #(
    .INIT(64'h428C619F67BDE09D)) 
    ram0_i_80
       (.I0(address[2]),
        .I1(address[5]),
        .I2(address[4]),
        .I3(address[1]),
        .I4(address[3]),
        .I5(address[0]),
        .O(ram0_i_80_n_0));
  LUT6 #(
    .INIT(64'h049D812AE8777103)) 
    ram0_i_81
       (.I0(address[2]),
        .I1(address[5]),
        .I2(address[1]),
        .I3(address[3]),
        .I4(address[0]),
        .I5(address[4]),
        .O(ram0_i_81_n_0));
  LUT6 #(
    .INIT(64'h2AC8772E2C0FDD3E)) 
    ram0_i_82
       (.I0(address[2]),
        .I1(address[5]),
        .I2(address[1]),
        .I3(address[3]),
        .I4(address[0]),
        .I5(address[4]),
        .O(ram0_i_82_n_0));
  LUT6 #(
    .INIT(64'h04D0012028773102)) 
    ram0_i_83
       (.I0(address[2]),
        .I1(address[5]),
        .I2(address[1]),
        .I3(address[3]),
        .I4(address[0]),
        .I5(address[4]),
        .O(ram0_i_83_n_0));
  LUT6 #(
    .INIT(64'h226374EC881E0E2E)) 
    ram0_i_84
       (.I0(address[2]),
        .I1(address[5]),
        .I2(address[1]),
        .I3(address[0]),
        .I4(address[4]),
        .I5(address[3]),
        .O(ram0_i_84_n_0));
  LUT6 #(
    .INIT(64'h0490012028373102)) 
    ram0_i_85
       (.I0(address[2]),
        .I1(address[5]),
        .I2(address[1]),
        .I3(address[3]),
        .I4(address[0]),
        .I5(address[4]),
        .O(ram0_i_85_n_0));
  LUT6 #(
    .INIT(64'h27263C8C6B11326E)) 
    ram0_i_86
       (.I0(address[2]),
        .I1(address[5]),
        .I2(address[4]),
        .I3(address[1]),
        .I4(address[3]),
        .I5(address[0]),
        .O(ram0_i_86_n_0));
  LUT6 #(
    .INIT(64'h24C0412028373142)) 
    ram0_i_87
       (.I0(address[2]),
        .I1(address[5]),
        .I2(address[1]),
        .I3(address[3]),
        .I4(address[0]),
        .I5(address[4]),
        .O(ram0_i_87_n_0));
  LUT6 #(
    .INIT(64'h23E0311546948E24)) 
    ram0_i_88
       (.I0(address[2]),
        .I1(address[5]),
        .I2(address[1]),
        .I3(address[0]),
        .I4(address[3]),
        .I5(address[4]),
        .O(ram0_i_88_n_0));
  LUT6 #(
    .INIT(64'h8CF015312B352102)) 
    ram0_i_89
       (.I0(address[2]),
        .I1(address[5]),
        .I2(address[1]),
        .I3(address[3]),
        .I4(address[0]),
        .I5(address[4]),
        .O(ram0_i_89_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hFE02)) 
    ram0_i_9
       (.I0(init_ADDR[3]),
        .I1(state[1]),
        .I2(state[0]),
        .I3(ADDR_from_CPU[3]),
        .O(addra[3]));
  LUT6 #(
    .INIT(64'hA760233534F1ACE0)) 
    ram0_i_90
       (.I0(address[2]),
        .I1(address[5]),
        .I2(address[1]),
        .I3(address[0]),
        .I4(address[3]),
        .I5(address[4]),
        .O(ram0_i_90_n_0));
  LUT6 #(
    .INIT(64'h57BA83776BA1B066)) 
    ram0_i_91
       (.I0(address[2]),
        .I1(address[5]),
        .I2(address[1]),
        .I3(address[4]),
        .I4(address[3]),
        .I5(address[0]),
        .O(ram0_i_91_n_0));
  LUT6 #(
    .INIT(64'hA956EC35D4FDFF3D)) 
    ram0_i_92
       (.I0(address[2]),
        .I1(address[5]),
        .I2(address[1]),
        .I3(address[3]),
        .I4(address[0]),
        .I5(address[4]),
        .O(ram0_i_92_n_0));
endmodule

module REG_FILE
   (S,
    \R0_reg[0]_0 ,
    \R4_reg[0]_0 ,
    \R4_reg[1]_0 ,
    \R0_reg[1]_0 ,
    \R0_reg[2]_0 ,
    \R4_reg[2]_0 ,
    \R4_reg[3]_0 ,
    \R0_reg[3]_0 ,
    \R4_reg[4]_0 ,
    \R0_reg[4]_0 ,
    \R0_reg[5]_0 ,
    \R4_reg[5]_0 ,
    \R0_reg[6]_0 ,
    \R4_reg[6]_0 ,
    \R4_reg[7]_0 ,
    \R0_reg[7]_0 ,
    \R4_reg[8]_0 ,
    \R0_reg[8]_0 ,
    \R4_reg[9]_0 ,
    \R0_reg[9]_0 ,
    \R4_reg[10]_0 ,
    \R0_reg[10]_0 ,
    \R0_reg[11]_0 ,
    \R4_reg[11]_0 ,
    \R0_reg[12]_0 ,
    \R4_reg[12]_0 ,
    \R4_reg[13]_0 ,
    \R0_reg[13]_0 ,
    \R4_reg[14]_0 ,
    \R0_reg[14]_0 ,
    \R3_reg[0]_0 ,
    \R7_reg[0]_0 ,
    \Dout_reg[7] ,
    \Dout_reg[11] ,
    B1,
    ADDROUT_carry__2,
    ADDROUT_carry__2_0,
    ADDROUT_carry__2_1,
    ADDROUT_carry__2_2,
    ADDROUT_carry__2_i_4_0,
    ADDROUT_carry__2_i_4_1,
    DoutIR,
    ADDROUT_carry__0,
    ADDR2MUXOUT,
    ADDROUT_carry__0_0,
    ADDROUT_carry__1,
    ADDROUT_carry__1_0,
    ADDROUT_carry__1_1,
    ADDROUT_carry__1_2,
    ADDROUT_carry__2_3,
    ADDROUT_carry__2_4,
    ADDROUT_carry__2_5,
    hex_segB_OBUF,
    E,
    D,
    Clk_IBUF_BUFG,
    \R1_reg[15]_0 ,
    \R2_reg[15]_0 ,
    \R3_reg[15]_0 ,
    \R4_reg[15]_0 ,
    \R5_reg[15]_0 ,
    \R6_reg[15]_0 ,
    \R7_reg[15]_0 );
  output [3:0]S;
  output \R0_reg[0]_0 ;
  output \R4_reg[0]_0 ;
  output \R4_reg[1]_0 ;
  output \R0_reg[1]_0 ;
  output \R0_reg[2]_0 ;
  output \R4_reg[2]_0 ;
  output \R4_reg[3]_0 ;
  output \R0_reg[3]_0 ;
  output \R4_reg[4]_0 ;
  output \R0_reg[4]_0 ;
  output \R0_reg[5]_0 ;
  output \R4_reg[5]_0 ;
  output \R0_reg[6]_0 ;
  output \R4_reg[6]_0 ;
  output \R4_reg[7]_0 ;
  output \R0_reg[7]_0 ;
  output \R4_reg[8]_0 ;
  output \R0_reg[8]_0 ;
  output \R4_reg[9]_0 ;
  output \R0_reg[9]_0 ;
  output \R4_reg[10]_0 ;
  output \R0_reg[10]_0 ;
  output \R0_reg[11]_0 ;
  output \R4_reg[11]_0 ;
  output \R0_reg[12]_0 ;
  output \R4_reg[12]_0 ;
  output \R4_reg[13]_0 ;
  output \R0_reg[13]_0 ;
  output \R4_reg[14]_0 ;
  output \R0_reg[14]_0 ;
  output \R3_reg[0]_0 ;
  output \R7_reg[0]_0 ;
  output [1:0]\Dout_reg[7] ;
  output [3:0]\Dout_reg[11] ;
  inout [1:0]B1;
  input ADDROUT_carry__2;
  input ADDROUT_carry__2_0;
  input ADDROUT_carry__2_1;
  input ADDROUT_carry__2_2;
  input ADDROUT_carry__2_i_4_0;
  input ADDROUT_carry__2_i_4_1;
  input [0:0]DoutIR;
  input ADDROUT_carry__0;
  input [3:0]ADDR2MUXOUT;
  input ADDROUT_carry__0_0;
  input ADDROUT_carry__1;
  input ADDROUT_carry__1_0;
  input ADDROUT_carry__1_1;
  input ADDROUT_carry__1_2;
  input ADDROUT_carry__2_3;
  input ADDROUT_carry__2_4;
  input ADDROUT_carry__2_5;
  input [0:0]hex_segB_OBUF;
  input [0:0]E;
  input [15:0]D;
  input Clk_IBUF_BUFG;
  input [0:0]\R1_reg[15]_0 ;
  input [0:0]\R2_reg[15]_0 ;
  input [0:0]\R3_reg[15]_0 ;
  input [0:0]\R4_reg[15]_0 ;
  input [0:0]\R5_reg[15]_0 ;
  input [0:0]\R6_reg[15]_0 ;
  input [0:0]\R7_reg[15]_0 ;

  wire [3:0]ADDR2MUXOUT;
  wire ADDROUT_carry__0;
  wire ADDROUT_carry__0_0;
  wire ADDROUT_carry__1;
  wire ADDROUT_carry__1_0;
  wire ADDROUT_carry__1_1;
  wire ADDROUT_carry__1_2;
  wire ADDROUT_carry__2;
  wire ADDROUT_carry__2_0;
  wire ADDROUT_carry__2_1;
  wire ADDROUT_carry__2_2;
  wire ADDROUT_carry__2_3;
  wire ADDROUT_carry__2_4;
  wire ADDROUT_carry__2_5;
  wire ADDROUT_carry__2_i_14_n_0;
  wire ADDROUT_carry__2_i_15_n_0;
  wire ADDROUT_carry__2_i_4_0;
  wire ADDROUT_carry__2_i_4_1;
  wire [1:0]B1;
  wire Clk_IBUF_BUFG;
  wire [15:0]D;
  wire [0:0]DoutIR;
  wire [3:0]\Dout_reg[11] ;
  wire [1:0]\Dout_reg[7] ;
  wire [0:0]E;
  wire [15:4]R0;
  wire \R0_reg[0]_0 ;
  wire \R0_reg[10]_0 ;
  wire \R0_reg[11]_0 ;
  wire \R0_reg[12]_0 ;
  wire \R0_reg[13]_0 ;
  wire \R0_reg[14]_0 ;
  wire \R0_reg[1]_0 ;
  wire \R0_reg[2]_0 ;
  wire \R0_reg[3]_0 ;
  wire \R0_reg[4]_0 ;
  wire \R0_reg[5]_0 ;
  wire \R0_reg[6]_0 ;
  wire \R0_reg[7]_0 ;
  wire \R0_reg[8]_0 ;
  wire \R0_reg[9]_0 ;
  wire \R0_reg_n_0_[0] ;
  wire \R0_reg_n_0_[1] ;
  wire \R0_reg_n_0_[2] ;
  wire \R0_reg_n_0_[3] ;
  wire [15:4]R1;
  wire [0:0]\R1_reg[15]_0 ;
  wire \R1_reg_n_0_[0] ;
  wire \R1_reg_n_0_[1] ;
  wire \R1_reg_n_0_[2] ;
  wire \R1_reg_n_0_[3] ;
  wire [15:4]R2;
  wire [0:0]\R2_reg[15]_0 ;
  wire \R2_reg_n_0_[0] ;
  wire \R2_reg_n_0_[1] ;
  wire \R2_reg_n_0_[2] ;
  wire \R2_reg_n_0_[3] ;
  wire [15:4]R3;
  wire \R3_reg[0]_0 ;
  wire [0:0]\R3_reg[15]_0 ;
  wire \R3_reg_n_0_[0] ;
  wire \R3_reg_n_0_[1] ;
  wire \R3_reg_n_0_[2] ;
  wire \R3_reg_n_0_[3] ;
  wire [15:4]R4;
  wire \R4_reg[0]_0 ;
  wire \R4_reg[10]_0 ;
  wire \R4_reg[11]_0 ;
  wire \R4_reg[12]_0 ;
  wire \R4_reg[13]_0 ;
  wire \R4_reg[14]_0 ;
  wire [0:0]\R4_reg[15]_0 ;
  wire \R4_reg[1]_0 ;
  wire \R4_reg[2]_0 ;
  wire \R4_reg[3]_0 ;
  wire \R4_reg[4]_0 ;
  wire \R4_reg[5]_0 ;
  wire \R4_reg[6]_0 ;
  wire \R4_reg[7]_0 ;
  wire \R4_reg[8]_0 ;
  wire \R4_reg[9]_0 ;
  wire \R4_reg_n_0_[0] ;
  wire \R4_reg_n_0_[1] ;
  wire \R4_reg_n_0_[2] ;
  wire \R4_reg_n_0_[3] ;
  wire [15:4]R5;
  wire [0:0]\R5_reg[15]_0 ;
  wire \R5_reg_n_0_[0] ;
  wire \R5_reg_n_0_[1] ;
  wire \R5_reg_n_0_[2] ;
  wire \R5_reg_n_0_[3] ;
  wire [15:4]R6;
  wire [0:0]\R6_reg[15]_0 ;
  wire \R6_reg_n_0_[0] ;
  wire \R6_reg_n_0_[1] ;
  wire \R6_reg_n_0_[2] ;
  wire \R6_reg_n_0_[3] ;
  wire [15:4]R7;
  wire \R7_reg[0]_0 ;
  wire [0:0]\R7_reg[15]_0 ;
  wire \R7_reg_n_0_[0] ;
  wire \R7_reg_n_0_[1] ;
  wire \R7_reg_n_0_[2] ;
  wire \R7_reg_n_0_[3] ;
  wire [3:0]S;
  wire [0:0]hex_segB_OBUF;
  wire \hex_seg_OBUF[6]_inst_i_10_n_0 ;
  wire \hex_seg_OBUF[6]_inst_i_11_n_0 ;
  wire \hex_seg_OBUF[6]_inst_i_12_n_0 ;
  wire \hex_seg_OBUF[6]_inst_i_9_n_0 ;

  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ADDROUT_carry__0_i_10
       (.I0(R4[7]),
        .I1(R5[7]),
        .I2(ADDROUT_carry__2_i_4_0),
        .I3(R6[7]),
        .I4(ADDROUT_carry__2_i_4_1),
        .I5(R7[7]),
        .O(\R4_reg[7]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ADDROUT_carry__0_i_11
       (.I0(R0[6]),
        .I1(R1[6]),
        .I2(ADDROUT_carry__2_i_4_0),
        .I3(R2[6]),
        .I4(ADDROUT_carry__2_i_4_1),
        .I5(R3[6]),
        .O(\R0_reg[6]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ADDROUT_carry__0_i_12
       (.I0(R4[6]),
        .I1(R5[6]),
        .I2(ADDROUT_carry__2_i_4_0),
        .I3(R6[6]),
        .I4(ADDROUT_carry__2_i_4_1),
        .I5(R7[6]),
        .O(\R4_reg[6]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ADDROUT_carry__0_i_13
       (.I0(R0[5]),
        .I1(R1[5]),
        .I2(ADDROUT_carry__2_i_4_0),
        .I3(R2[5]),
        .I4(ADDROUT_carry__2_i_4_1),
        .I5(R3[5]),
        .O(\R0_reg[5]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ADDROUT_carry__0_i_14
       (.I0(R4[5]),
        .I1(R5[5]),
        .I2(ADDROUT_carry__2_i_4_0),
        .I3(R6[5]),
        .I4(ADDROUT_carry__2_i_4_1),
        .I5(R7[5]),
        .O(\R4_reg[5]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ADDROUT_carry__0_i_15
       (.I0(R0[4]),
        .I1(R1[4]),
        .I2(ADDROUT_carry__2_i_4_0),
        .I3(R2[4]),
        .I4(ADDROUT_carry__2_i_4_1),
        .I5(R3[4]),
        .O(\R0_reg[4]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ADDROUT_carry__0_i_16
       (.I0(R4[4]),
        .I1(R5[4]),
        .I2(ADDROUT_carry__2_i_4_0),
        .I3(R6[4]),
        .I4(ADDROUT_carry__2_i_4_1),
        .I5(R7[4]),
        .O(\R4_reg[4]_0 ));
  LUT6 #(
    .INIT(64'h001DFF1DFFE200E2)) 
    ADDROUT_carry__0_i_5
       (.I0(\R4_reg[7]_0 ),
        .I1(ADDROUT_carry__2_0),
        .I2(\R0_reg[7]_0 ),
        .I3(ADDROUT_carry__2_1),
        .I4(ADDROUT_carry__0_0),
        .I5(ADDR2MUXOUT[1]),
        .O(\Dout_reg[7] [1]));
  LUT6 #(
    .INIT(64'h001DFF1DFFE200E2)) 
    ADDROUT_carry__0_i_6
       (.I0(\R4_reg[6]_0 ),
        .I1(ADDROUT_carry__2_0),
        .I2(\R0_reg[6]_0 ),
        .I3(ADDROUT_carry__2_1),
        .I4(ADDROUT_carry__0),
        .I5(ADDR2MUXOUT[0]),
        .O(\Dout_reg[7] [0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ADDROUT_carry__0_i_9
       (.I0(R0[7]),
        .I1(R1[7]),
        .I2(ADDROUT_carry__2_i_4_0),
        .I3(R2[7]),
        .I4(ADDROUT_carry__2_i_4_1),
        .I5(R3[7]),
        .O(\R0_reg[7]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ADDROUT_carry__1_i_10
       (.I0(R4[11]),
        .I1(R5[11]),
        .I2(ADDROUT_carry__2_i_4_0),
        .I3(R6[11]),
        .I4(ADDROUT_carry__2_i_4_1),
        .I5(R7[11]),
        .O(\R4_reg[11]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ADDROUT_carry__1_i_11
       (.I0(R0[10]),
        .I1(R1[10]),
        .I2(ADDROUT_carry__2_i_4_0),
        .I3(R2[10]),
        .I4(ADDROUT_carry__2_i_4_1),
        .I5(R3[10]),
        .O(\R0_reg[10]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ADDROUT_carry__1_i_12
       (.I0(R4[10]),
        .I1(R5[10]),
        .I2(ADDROUT_carry__2_i_4_0),
        .I3(R6[10]),
        .I4(ADDROUT_carry__2_i_4_1),
        .I5(R7[10]),
        .O(\R4_reg[10]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ADDROUT_carry__1_i_13
       (.I0(R0[9]),
        .I1(R1[9]),
        .I2(ADDROUT_carry__2_i_4_0),
        .I3(R2[9]),
        .I4(ADDROUT_carry__2_i_4_1),
        .I5(R3[9]),
        .O(\R0_reg[9]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ADDROUT_carry__1_i_14
       (.I0(R4[9]),
        .I1(R5[9]),
        .I2(ADDROUT_carry__2_i_4_0),
        .I3(R6[9]),
        .I4(ADDROUT_carry__2_i_4_1),
        .I5(R7[9]),
        .O(\R4_reg[9]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ADDROUT_carry__1_i_15
       (.I0(R0[8]),
        .I1(R1[8]),
        .I2(ADDROUT_carry__2_i_4_0),
        .I3(R2[8]),
        .I4(ADDROUT_carry__2_i_4_1),
        .I5(R3[8]),
        .O(\R0_reg[8]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ADDROUT_carry__1_i_16
       (.I0(R4[8]),
        .I1(R5[8]),
        .I2(ADDROUT_carry__2_i_4_0),
        .I3(R6[8]),
        .I4(ADDROUT_carry__2_i_4_1),
        .I5(R7[8]),
        .O(\R4_reg[8]_0 ));
  LUT6 #(
    .INIT(64'hFFE200E2001DFF1D)) 
    ADDROUT_carry__1_i_5
       (.I0(\R4_reg[11]_0 ),
        .I1(ADDROUT_carry__2_0),
        .I2(\R0_reg[11]_0 ),
        .I3(ADDROUT_carry__2_1),
        .I4(ADDROUT_carry__1_2),
        .I5(ADDROUT_carry__2),
        .O(\Dout_reg[11] [3]));
  LUT6 #(
    .INIT(64'hFFE200E2001DFF1D)) 
    ADDROUT_carry__1_i_6
       (.I0(\R4_reg[10]_0 ),
        .I1(ADDROUT_carry__2_0),
        .I2(\R0_reg[10]_0 ),
        .I3(ADDROUT_carry__2_1),
        .I4(ADDROUT_carry__1_1),
        .I5(ADDROUT_carry__2),
        .O(\Dout_reg[11] [2]));
  LUT6 #(
    .INIT(64'h001DFF1DFFE200E2)) 
    ADDROUT_carry__1_i_7
       (.I0(\R4_reg[9]_0 ),
        .I1(ADDROUT_carry__2_0),
        .I2(\R0_reg[9]_0 ),
        .I3(ADDROUT_carry__2_1),
        .I4(ADDROUT_carry__1_0),
        .I5(ADDR2MUXOUT[3]),
        .O(\Dout_reg[11] [1]));
  LUT6 #(
    .INIT(64'h001DFF1DFFE200E2)) 
    ADDROUT_carry__1_i_8
       (.I0(\R4_reg[8]_0 ),
        .I1(ADDROUT_carry__2_0),
        .I2(\R0_reg[8]_0 ),
        .I3(ADDROUT_carry__2_1),
        .I4(ADDROUT_carry__1),
        .I5(ADDR2MUXOUT[2]),
        .O(\Dout_reg[11] [0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ADDROUT_carry__1_i_9
       (.I0(R0[11]),
        .I1(R1[11]),
        .I2(ADDROUT_carry__2_i_4_0),
        .I3(R2[11]),
        .I4(ADDROUT_carry__2_i_4_1),
        .I5(R3[11]),
        .O(\R0_reg[11]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ADDROUT_carry__2_i_10
       (.I0(R0[13]),
        .I1(R1[13]),
        .I2(ADDROUT_carry__2_i_4_0),
        .I3(R2[13]),
        .I4(ADDROUT_carry__2_i_4_1),
        .I5(R3[13]),
        .O(\R0_reg[13]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ADDROUT_carry__2_i_11
       (.I0(R4[13]),
        .I1(R5[13]),
        .I2(ADDROUT_carry__2_i_4_0),
        .I3(R6[13]),
        .I4(ADDROUT_carry__2_i_4_1),
        .I5(R7[13]),
        .O(\R4_reg[13]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ADDROUT_carry__2_i_12
       (.I0(R0[12]),
        .I1(R1[12]),
        .I2(ADDROUT_carry__2_i_4_0),
        .I3(R2[12]),
        .I4(ADDROUT_carry__2_i_4_1),
        .I5(R3[12]),
        .O(\R0_reg[12]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ADDROUT_carry__2_i_13
       (.I0(R4[12]),
        .I1(R5[12]),
        .I2(ADDROUT_carry__2_i_4_0),
        .I3(R6[12]),
        .I4(ADDROUT_carry__2_i_4_1),
        .I5(R7[12]),
        .O(\R4_reg[12]_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    ADDROUT_carry__2_i_14
       (.I0(R4[15]),
        .I1(R5[15]),
        .I2(ADDROUT_carry__2_i_4_0),
        .I3(R6[15]),
        .I4(ADDROUT_carry__2_i_4_1),
        .I5(R7[15]),
        .O(ADDROUT_carry__2_i_14_n_0));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    ADDROUT_carry__2_i_15
       (.I0(R0[15]),
        .I1(R1[15]),
        .I2(ADDROUT_carry__2_i_4_0),
        .I3(R2[15]),
        .I4(ADDROUT_carry__2_i_4_1),
        .I5(R3[15]),
        .O(ADDROUT_carry__2_i_15_n_0));
  LUT6 #(
    .INIT(64'hAAAA56A6555556A6)) 
    ADDROUT_carry__2_i_4
       (.I0(ADDROUT_carry__2),
        .I1(ADDROUT_carry__2_i_14_n_0),
        .I2(ADDROUT_carry__2_0),
        .I3(ADDROUT_carry__2_i_15_n_0),
        .I4(ADDROUT_carry__2_1),
        .I5(ADDROUT_carry__2_2),
        .O(S[3]));
  LUT6 #(
    .INIT(64'hFFE200E2001DFF1D)) 
    ADDROUT_carry__2_i_5
       (.I0(\R4_reg[14]_0 ),
        .I1(ADDROUT_carry__2_0),
        .I2(\R0_reg[14]_0 ),
        .I3(ADDROUT_carry__2_1),
        .I4(ADDROUT_carry__2_5),
        .I5(ADDROUT_carry__2),
        .O(S[2]));
  LUT6 #(
    .INIT(64'hFFE200E2001DFF1D)) 
    ADDROUT_carry__2_i_6
       (.I0(\R4_reg[13]_0 ),
        .I1(ADDROUT_carry__2_0),
        .I2(\R0_reg[13]_0 ),
        .I3(ADDROUT_carry__2_1),
        .I4(ADDROUT_carry__2_4),
        .I5(ADDROUT_carry__2),
        .O(S[1]));
  LUT6 #(
    .INIT(64'hFFE200E2001DFF1D)) 
    ADDROUT_carry__2_i_7
       (.I0(\R4_reg[12]_0 ),
        .I1(ADDROUT_carry__2_0),
        .I2(\R0_reg[12]_0 ),
        .I3(ADDROUT_carry__2_1),
        .I4(ADDROUT_carry__2_3),
        .I5(ADDROUT_carry__2),
        .O(S[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ADDROUT_carry__2_i_8
       (.I0(R0[14]),
        .I1(R1[14]),
        .I2(ADDROUT_carry__2_i_4_0),
        .I3(R2[14]),
        .I4(ADDROUT_carry__2_i_4_1),
        .I5(R3[14]),
        .O(\R0_reg[14]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ADDROUT_carry__2_i_9
       (.I0(R4[14]),
        .I1(R5[14]),
        .I2(ADDROUT_carry__2_i_4_0),
        .I3(R6[14]),
        .I4(ADDROUT_carry__2_i_4_1),
        .I5(R7[14]),
        .O(\R4_reg[14]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ADDROUT_carry_i_10
       (.I0(\R0_reg_n_0_[3] ),
        .I1(\R1_reg_n_0_[3] ),
        .I2(ADDROUT_carry__2_i_4_0),
        .I3(\R2_reg_n_0_[3] ),
        .I4(ADDROUT_carry__2_i_4_1),
        .I5(\R3_reg_n_0_[3] ),
        .O(\R0_reg[3]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ADDROUT_carry_i_12
       (.I0(\R4_reg_n_0_[3] ),
        .I1(\R5_reg_n_0_[3] ),
        .I2(ADDROUT_carry__2_i_4_0),
        .I3(\R6_reg_n_0_[3] ),
        .I4(ADDROUT_carry__2_i_4_1),
        .I5(\R7_reg_n_0_[3] ),
        .O(\R4_reg[3]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ADDROUT_carry_i_13
       (.I0(\R0_reg_n_0_[2] ),
        .I1(\R1_reg_n_0_[2] ),
        .I2(ADDROUT_carry__2_i_4_0),
        .I3(\R2_reg_n_0_[2] ),
        .I4(ADDROUT_carry__2_i_4_1),
        .I5(\R3_reg_n_0_[2] ),
        .O(\R0_reg[2]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ADDROUT_carry_i_14
       (.I0(\R4_reg_n_0_[2] ),
        .I1(\R5_reg_n_0_[2] ),
        .I2(ADDROUT_carry__2_i_4_0),
        .I3(\R6_reg_n_0_[2] ),
        .I4(ADDROUT_carry__2_i_4_1),
        .I5(\R7_reg_n_0_[2] ),
        .O(\R4_reg[2]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ADDROUT_carry_i_15
       (.I0(\R0_reg_n_0_[1] ),
        .I1(\R1_reg_n_0_[1] ),
        .I2(ADDROUT_carry__2_i_4_0),
        .I3(\R2_reg_n_0_[1] ),
        .I4(ADDROUT_carry__2_i_4_1),
        .I5(\R3_reg_n_0_[1] ),
        .O(\R0_reg[1]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ADDROUT_carry_i_16
       (.I0(\R4_reg_n_0_[1] ),
        .I1(\R5_reg_n_0_[1] ),
        .I2(ADDROUT_carry__2_i_4_0),
        .I3(\R6_reg_n_0_[1] ),
        .I4(ADDROUT_carry__2_i_4_1),
        .I5(\R7_reg_n_0_[1] ),
        .O(\R4_reg[1]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ADDROUT_carry_i_17
       (.I0(\R0_reg_n_0_[0] ),
        .I1(\R1_reg_n_0_[0] ),
        .I2(ADDROUT_carry__2_i_4_0),
        .I3(\R2_reg_n_0_[0] ),
        .I4(ADDROUT_carry__2_i_4_1),
        .I5(\R3_reg_n_0_[0] ),
        .O(\R0_reg[0]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ADDROUT_carry_i_18
       (.I0(\R4_reg_n_0_[0] ),
        .I1(\R5_reg_n_0_[0] ),
        .I2(ADDROUT_carry__2_i_4_0),
        .I3(\R6_reg_n_0_[0] ),
        .I4(ADDROUT_carry__2_i_4_1),
        .I5(\R7_reg_n_0_[0] ),
        .O(\R4_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \R0_reg[0] 
       (.C(Clk_IBUF_BUFG),
        .CE(E),
        .D(D[0]),
        .Q(\R0_reg_n_0_[0] ),
        .R(hex_segB_OBUF));
  FDRE #(
    .INIT(1'b0)) 
    \R0_reg[10] 
       (.C(Clk_IBUF_BUFG),
        .CE(E),
        .D(D[10]),
        .Q(R0[10]),
        .R(hex_segB_OBUF));
  FDRE #(
    .INIT(1'b0)) 
    \R0_reg[11] 
       (.C(Clk_IBUF_BUFG),
        .CE(E),
        .D(D[11]),
        .Q(R0[11]),
        .R(hex_segB_OBUF));
  FDRE #(
    .INIT(1'b0)) 
    \R0_reg[12] 
       (.C(Clk_IBUF_BUFG),
        .CE(E),
        .D(D[12]),
        .Q(R0[12]),
        .R(hex_segB_OBUF));
  FDRE #(
    .INIT(1'b0)) 
    \R0_reg[13] 
       (.C(Clk_IBUF_BUFG),
        .CE(E),
        .D(D[13]),
        .Q(R0[13]),
        .R(hex_segB_OBUF));
  FDRE #(
    .INIT(1'b0)) 
    \R0_reg[14] 
       (.C(Clk_IBUF_BUFG),
        .CE(E),
        .D(D[14]),
        .Q(R0[14]),
        .R(hex_segB_OBUF));
  FDRE #(
    .INIT(1'b0)) 
    \R0_reg[15] 
       (.C(Clk_IBUF_BUFG),
        .CE(E),
        .D(D[15]),
        .Q(R0[15]),
        .R(hex_segB_OBUF));
  FDRE #(
    .INIT(1'b0)) 
    \R0_reg[1] 
       (.C(Clk_IBUF_BUFG),
        .CE(E),
        .D(D[1]),
        .Q(\R0_reg_n_0_[1] ),
        .R(hex_segB_OBUF));
  FDRE #(
    .INIT(1'b0)) 
    \R0_reg[2] 
       (.C(Clk_IBUF_BUFG),
        .CE(E),
        .D(D[2]),
        .Q(\R0_reg_n_0_[2] ),
        .R(hex_segB_OBUF));
  FDRE #(
    .INIT(1'b0)) 
    \R0_reg[3] 
       (.C(Clk_IBUF_BUFG),
        .CE(E),
        .D(D[3]),
        .Q(\R0_reg_n_0_[3] ),
        .R(hex_segB_OBUF));
  FDRE #(
    .INIT(1'b0)) 
    \R0_reg[4] 
       (.C(Clk_IBUF_BUFG),
        .CE(E),
        .D(D[4]),
        .Q(R0[4]),
        .R(hex_segB_OBUF));
  FDRE #(
    .INIT(1'b0)) 
    \R0_reg[5] 
       (.C(Clk_IBUF_BUFG),
        .CE(E),
        .D(D[5]),
        .Q(R0[5]),
        .R(hex_segB_OBUF));
  FDRE #(
    .INIT(1'b0)) 
    \R0_reg[6] 
       (.C(Clk_IBUF_BUFG),
        .CE(E),
        .D(D[6]),
        .Q(R0[6]),
        .R(hex_segB_OBUF));
  FDRE #(
    .INIT(1'b0)) 
    \R0_reg[7] 
       (.C(Clk_IBUF_BUFG),
        .CE(E),
        .D(D[7]),
        .Q(R0[7]),
        .R(hex_segB_OBUF));
  FDRE #(
    .INIT(1'b0)) 
    \R0_reg[8] 
       (.C(Clk_IBUF_BUFG),
        .CE(E),
        .D(D[8]),
        .Q(R0[8]),
        .R(hex_segB_OBUF));
  FDRE #(
    .INIT(1'b0)) 
    \R0_reg[9] 
       (.C(Clk_IBUF_BUFG),
        .CE(E),
        .D(D[9]),
        .Q(R0[9]),
        .R(hex_segB_OBUF));
  FDRE #(
    .INIT(1'b0)) 
    \R1_reg[0] 
       (.C(Clk_IBUF_BUFG),
        .CE(\R1_reg[15]_0 ),
        .D(D[0]),
        .Q(\R1_reg_n_0_[0] ),
        .R(hex_segB_OBUF));
  FDRE #(
    .INIT(1'b0)) 
    \R1_reg[10] 
       (.C(Clk_IBUF_BUFG),
        .CE(\R1_reg[15]_0 ),
        .D(D[10]),
        .Q(R1[10]),
        .R(hex_segB_OBUF));
  FDRE #(
    .INIT(1'b0)) 
    \R1_reg[11] 
       (.C(Clk_IBUF_BUFG),
        .CE(\R1_reg[15]_0 ),
        .D(D[11]),
        .Q(R1[11]),
        .R(hex_segB_OBUF));
  FDRE #(
    .INIT(1'b0)) 
    \R1_reg[12] 
       (.C(Clk_IBUF_BUFG),
        .CE(\R1_reg[15]_0 ),
        .D(D[12]),
        .Q(R1[12]),
        .R(hex_segB_OBUF));
  FDRE #(
    .INIT(1'b0)) 
    \R1_reg[13] 
       (.C(Clk_IBUF_BUFG),
        .CE(\R1_reg[15]_0 ),
        .D(D[13]),
        .Q(R1[13]),
        .R(hex_segB_OBUF));
  FDRE #(
    .INIT(1'b0)) 
    \R1_reg[14] 
       (.C(Clk_IBUF_BUFG),
        .CE(\R1_reg[15]_0 ),
        .D(D[14]),
        .Q(R1[14]),
        .R(hex_segB_OBUF));
  FDRE #(
    .INIT(1'b0)) 
    \R1_reg[15] 
       (.C(Clk_IBUF_BUFG),
        .CE(\R1_reg[15]_0 ),
        .D(D[15]),
        .Q(R1[15]),
        .R(hex_segB_OBUF));
  FDRE #(
    .INIT(1'b0)) 
    \R1_reg[1] 
       (.C(Clk_IBUF_BUFG),
        .CE(\R1_reg[15]_0 ),
        .D(D[1]),
        .Q(\R1_reg_n_0_[1] ),
        .R(hex_segB_OBUF));
  FDRE #(
    .INIT(1'b0)) 
    \R1_reg[2] 
       (.C(Clk_IBUF_BUFG),
        .CE(\R1_reg[15]_0 ),
        .D(D[2]),
        .Q(\R1_reg_n_0_[2] ),
        .R(hex_segB_OBUF));
  FDRE #(
    .INIT(1'b0)) 
    \R1_reg[3] 
       (.C(Clk_IBUF_BUFG),
        .CE(\R1_reg[15]_0 ),
        .D(D[3]),
        .Q(\R1_reg_n_0_[3] ),
        .R(hex_segB_OBUF));
  FDRE #(
    .INIT(1'b0)) 
    \R1_reg[4] 
       (.C(Clk_IBUF_BUFG),
        .CE(\R1_reg[15]_0 ),
        .D(D[4]),
        .Q(R1[4]),
        .R(hex_segB_OBUF));
  FDRE #(
    .INIT(1'b0)) 
    \R1_reg[5] 
       (.C(Clk_IBUF_BUFG),
        .CE(\R1_reg[15]_0 ),
        .D(D[5]),
        .Q(R1[5]),
        .R(hex_segB_OBUF));
  FDRE #(
    .INIT(1'b0)) 
    \R1_reg[6] 
       (.C(Clk_IBUF_BUFG),
        .CE(\R1_reg[15]_0 ),
        .D(D[6]),
        .Q(R1[6]),
        .R(hex_segB_OBUF));
  FDRE #(
    .INIT(1'b0)) 
    \R1_reg[7] 
       (.C(Clk_IBUF_BUFG),
        .CE(\R1_reg[15]_0 ),
        .D(D[7]),
        .Q(R1[7]),
        .R(hex_segB_OBUF));
  FDRE #(
    .INIT(1'b0)) 
    \R1_reg[8] 
       (.C(Clk_IBUF_BUFG),
        .CE(\R1_reg[15]_0 ),
        .D(D[8]),
        .Q(R1[8]),
        .R(hex_segB_OBUF));
  FDRE #(
    .INIT(1'b0)) 
    \R1_reg[9] 
       (.C(Clk_IBUF_BUFG),
        .CE(\R1_reg[15]_0 ),
        .D(D[9]),
        .Q(R1[9]),
        .R(hex_segB_OBUF));
  FDRE #(
    .INIT(1'b0)) 
    \R2_reg[0] 
       (.C(Clk_IBUF_BUFG),
        .CE(\R2_reg[15]_0 ),
        .D(D[0]),
        .Q(\R2_reg_n_0_[0] ),
        .R(hex_segB_OBUF));
  FDRE #(
    .INIT(1'b0)) 
    \R2_reg[10] 
       (.C(Clk_IBUF_BUFG),
        .CE(\R2_reg[15]_0 ),
        .D(D[10]),
        .Q(R2[10]),
        .R(hex_segB_OBUF));
  FDRE #(
    .INIT(1'b0)) 
    \R2_reg[11] 
       (.C(Clk_IBUF_BUFG),
        .CE(\R2_reg[15]_0 ),
        .D(D[11]),
        .Q(R2[11]),
        .R(hex_segB_OBUF));
  FDRE #(
    .INIT(1'b0)) 
    \R2_reg[12] 
       (.C(Clk_IBUF_BUFG),
        .CE(\R2_reg[15]_0 ),
        .D(D[12]),
        .Q(R2[12]),
        .R(hex_segB_OBUF));
  FDRE #(
    .INIT(1'b0)) 
    \R2_reg[13] 
       (.C(Clk_IBUF_BUFG),
        .CE(\R2_reg[15]_0 ),
        .D(D[13]),
        .Q(R2[13]),
        .R(hex_segB_OBUF));
  FDRE #(
    .INIT(1'b0)) 
    \R2_reg[14] 
       (.C(Clk_IBUF_BUFG),
        .CE(\R2_reg[15]_0 ),
        .D(D[14]),
        .Q(R2[14]),
        .R(hex_segB_OBUF));
  FDRE #(
    .INIT(1'b0)) 
    \R2_reg[15] 
       (.C(Clk_IBUF_BUFG),
        .CE(\R2_reg[15]_0 ),
        .D(D[15]),
        .Q(R2[15]),
        .R(hex_segB_OBUF));
  FDRE #(
    .INIT(1'b0)) 
    \R2_reg[1] 
       (.C(Clk_IBUF_BUFG),
        .CE(\R2_reg[15]_0 ),
        .D(D[1]),
        .Q(\R2_reg_n_0_[1] ),
        .R(hex_segB_OBUF));
  FDRE #(
    .INIT(1'b0)) 
    \R2_reg[2] 
       (.C(Clk_IBUF_BUFG),
        .CE(\R2_reg[15]_0 ),
        .D(D[2]),
        .Q(\R2_reg_n_0_[2] ),
        .R(hex_segB_OBUF));
  FDRE #(
    .INIT(1'b0)) 
    \R2_reg[3] 
       (.C(Clk_IBUF_BUFG),
        .CE(\R2_reg[15]_0 ),
        .D(D[3]),
        .Q(\R2_reg_n_0_[3] ),
        .R(hex_segB_OBUF));
  FDRE #(
    .INIT(1'b0)) 
    \R2_reg[4] 
       (.C(Clk_IBUF_BUFG),
        .CE(\R2_reg[15]_0 ),
        .D(D[4]),
        .Q(R2[4]),
        .R(hex_segB_OBUF));
  FDRE #(
    .INIT(1'b0)) 
    \R2_reg[5] 
       (.C(Clk_IBUF_BUFG),
        .CE(\R2_reg[15]_0 ),
        .D(D[5]),
        .Q(R2[5]),
        .R(hex_segB_OBUF));
  FDRE #(
    .INIT(1'b0)) 
    \R2_reg[6] 
       (.C(Clk_IBUF_BUFG),
        .CE(\R2_reg[15]_0 ),
        .D(D[6]),
        .Q(R2[6]),
        .R(hex_segB_OBUF));
  FDRE #(
    .INIT(1'b0)) 
    \R2_reg[7] 
       (.C(Clk_IBUF_BUFG),
        .CE(\R2_reg[15]_0 ),
        .D(D[7]),
        .Q(R2[7]),
        .R(hex_segB_OBUF));
  FDRE #(
    .INIT(1'b0)) 
    \R2_reg[8] 
       (.C(Clk_IBUF_BUFG),
        .CE(\R2_reg[15]_0 ),
        .D(D[8]),
        .Q(R2[8]),
        .R(hex_segB_OBUF));
  FDRE #(
    .INIT(1'b0)) 
    \R2_reg[9] 
       (.C(Clk_IBUF_BUFG),
        .CE(\R2_reg[15]_0 ),
        .D(D[9]),
        .Q(R2[9]),
        .R(hex_segB_OBUF));
  FDRE #(
    .INIT(1'b0)) 
    \R3_reg[0] 
       (.C(Clk_IBUF_BUFG),
        .CE(\R3_reg[15]_0 ),
        .D(D[0]),
        .Q(\R3_reg_n_0_[0] ),
        .R(hex_segB_OBUF));
  FDRE #(
    .INIT(1'b0)) 
    \R3_reg[10] 
       (.C(Clk_IBUF_BUFG),
        .CE(\R3_reg[15]_0 ),
        .D(D[10]),
        .Q(R3[10]),
        .R(hex_segB_OBUF));
  FDRE #(
    .INIT(1'b0)) 
    \R3_reg[11] 
       (.C(Clk_IBUF_BUFG),
        .CE(\R3_reg[15]_0 ),
        .D(D[11]),
        .Q(R3[11]),
        .R(hex_segB_OBUF));
  FDRE #(
    .INIT(1'b0)) 
    \R3_reg[12] 
       (.C(Clk_IBUF_BUFG),
        .CE(\R3_reg[15]_0 ),
        .D(D[12]),
        .Q(R3[12]),
        .R(hex_segB_OBUF));
  FDRE #(
    .INIT(1'b0)) 
    \R3_reg[13] 
       (.C(Clk_IBUF_BUFG),
        .CE(\R3_reg[15]_0 ),
        .D(D[13]),
        .Q(R3[13]),
        .R(hex_segB_OBUF));
  FDRE #(
    .INIT(1'b0)) 
    \R3_reg[14] 
       (.C(Clk_IBUF_BUFG),
        .CE(\R3_reg[15]_0 ),
        .D(D[14]),
        .Q(R3[14]),
        .R(hex_segB_OBUF));
  FDRE #(
    .INIT(1'b0)) 
    \R3_reg[15] 
       (.C(Clk_IBUF_BUFG),
        .CE(\R3_reg[15]_0 ),
        .D(D[15]),
        .Q(R3[15]),
        .R(hex_segB_OBUF));
  FDRE #(
    .INIT(1'b0)) 
    \R3_reg[1] 
       (.C(Clk_IBUF_BUFG),
        .CE(\R3_reg[15]_0 ),
        .D(D[1]),
        .Q(\R3_reg_n_0_[1] ),
        .R(hex_segB_OBUF));
  FDRE #(
    .INIT(1'b0)) 
    \R3_reg[2] 
       (.C(Clk_IBUF_BUFG),
        .CE(\R3_reg[15]_0 ),
        .D(D[2]),
        .Q(\R3_reg_n_0_[2] ),
        .R(hex_segB_OBUF));
  FDRE #(
    .INIT(1'b0)) 
    \R3_reg[3] 
       (.C(Clk_IBUF_BUFG),
        .CE(\R3_reg[15]_0 ),
        .D(D[3]),
        .Q(\R3_reg_n_0_[3] ),
        .R(hex_segB_OBUF));
  FDRE #(
    .INIT(1'b0)) 
    \R3_reg[4] 
       (.C(Clk_IBUF_BUFG),
        .CE(\R3_reg[15]_0 ),
        .D(D[4]),
        .Q(R3[4]),
        .R(hex_segB_OBUF));
  FDRE #(
    .INIT(1'b0)) 
    \R3_reg[5] 
       (.C(Clk_IBUF_BUFG),
        .CE(\R3_reg[15]_0 ),
        .D(D[5]),
        .Q(R3[5]),
        .R(hex_segB_OBUF));
  FDRE #(
    .INIT(1'b0)) 
    \R3_reg[6] 
       (.C(Clk_IBUF_BUFG),
        .CE(\R3_reg[15]_0 ),
        .D(D[6]),
        .Q(R3[6]),
        .R(hex_segB_OBUF));
  FDRE #(
    .INIT(1'b0)) 
    \R3_reg[7] 
       (.C(Clk_IBUF_BUFG),
        .CE(\R3_reg[15]_0 ),
        .D(D[7]),
        .Q(R3[7]),
        .R(hex_segB_OBUF));
  FDRE #(
    .INIT(1'b0)) 
    \R3_reg[8] 
       (.C(Clk_IBUF_BUFG),
        .CE(\R3_reg[15]_0 ),
        .D(D[8]),
        .Q(R3[8]),
        .R(hex_segB_OBUF));
  FDRE #(
    .INIT(1'b0)) 
    \R3_reg[9] 
       (.C(Clk_IBUF_BUFG),
        .CE(\R3_reg[15]_0 ),
        .D(D[9]),
        .Q(R3[9]),
        .R(hex_segB_OBUF));
  FDRE #(
    .INIT(1'b0)) 
    \R4_reg[0] 
       (.C(Clk_IBUF_BUFG),
        .CE(\R4_reg[15]_0 ),
        .D(D[0]),
        .Q(\R4_reg_n_0_[0] ),
        .R(hex_segB_OBUF));
  FDRE #(
    .INIT(1'b0)) 
    \R4_reg[10] 
       (.C(Clk_IBUF_BUFG),
        .CE(\R4_reg[15]_0 ),
        .D(D[10]),
        .Q(R4[10]),
        .R(hex_segB_OBUF));
  FDRE #(
    .INIT(1'b0)) 
    \R4_reg[11] 
       (.C(Clk_IBUF_BUFG),
        .CE(\R4_reg[15]_0 ),
        .D(D[11]),
        .Q(R4[11]),
        .R(hex_segB_OBUF));
  FDRE #(
    .INIT(1'b0)) 
    \R4_reg[12] 
       (.C(Clk_IBUF_BUFG),
        .CE(\R4_reg[15]_0 ),
        .D(D[12]),
        .Q(R4[12]),
        .R(hex_segB_OBUF));
  FDRE #(
    .INIT(1'b0)) 
    \R4_reg[13] 
       (.C(Clk_IBUF_BUFG),
        .CE(\R4_reg[15]_0 ),
        .D(D[13]),
        .Q(R4[13]),
        .R(hex_segB_OBUF));
  FDRE #(
    .INIT(1'b0)) 
    \R4_reg[14] 
       (.C(Clk_IBUF_BUFG),
        .CE(\R4_reg[15]_0 ),
        .D(D[14]),
        .Q(R4[14]),
        .R(hex_segB_OBUF));
  FDRE #(
    .INIT(1'b0)) 
    \R4_reg[15] 
       (.C(Clk_IBUF_BUFG),
        .CE(\R4_reg[15]_0 ),
        .D(D[15]),
        .Q(R4[15]),
        .R(hex_segB_OBUF));
  FDRE #(
    .INIT(1'b0)) 
    \R4_reg[1] 
       (.C(Clk_IBUF_BUFG),
        .CE(\R4_reg[15]_0 ),
        .D(D[1]),
        .Q(\R4_reg_n_0_[1] ),
        .R(hex_segB_OBUF));
  FDRE #(
    .INIT(1'b0)) 
    \R4_reg[2] 
       (.C(Clk_IBUF_BUFG),
        .CE(\R4_reg[15]_0 ),
        .D(D[2]),
        .Q(\R4_reg_n_0_[2] ),
        .R(hex_segB_OBUF));
  FDRE #(
    .INIT(1'b0)) 
    \R4_reg[3] 
       (.C(Clk_IBUF_BUFG),
        .CE(\R4_reg[15]_0 ),
        .D(D[3]),
        .Q(\R4_reg_n_0_[3] ),
        .R(hex_segB_OBUF));
  FDRE #(
    .INIT(1'b0)) 
    \R4_reg[4] 
       (.C(Clk_IBUF_BUFG),
        .CE(\R4_reg[15]_0 ),
        .D(D[4]),
        .Q(R4[4]),
        .R(hex_segB_OBUF));
  FDRE #(
    .INIT(1'b0)) 
    \R4_reg[5] 
       (.C(Clk_IBUF_BUFG),
        .CE(\R4_reg[15]_0 ),
        .D(D[5]),
        .Q(R4[5]),
        .R(hex_segB_OBUF));
  FDRE #(
    .INIT(1'b0)) 
    \R4_reg[6] 
       (.C(Clk_IBUF_BUFG),
        .CE(\R4_reg[15]_0 ),
        .D(D[6]),
        .Q(R4[6]),
        .R(hex_segB_OBUF));
  FDRE #(
    .INIT(1'b0)) 
    \R4_reg[7] 
       (.C(Clk_IBUF_BUFG),
        .CE(\R4_reg[15]_0 ),
        .D(D[7]),
        .Q(R4[7]),
        .R(hex_segB_OBUF));
  FDRE #(
    .INIT(1'b0)) 
    \R4_reg[8] 
       (.C(Clk_IBUF_BUFG),
        .CE(\R4_reg[15]_0 ),
        .D(D[8]),
        .Q(R4[8]),
        .R(hex_segB_OBUF));
  FDRE #(
    .INIT(1'b0)) 
    \R4_reg[9] 
       (.C(Clk_IBUF_BUFG),
        .CE(\R4_reg[15]_0 ),
        .D(D[9]),
        .Q(R4[9]),
        .R(hex_segB_OBUF));
  FDRE #(
    .INIT(1'b0)) 
    \R5_reg[0] 
       (.C(Clk_IBUF_BUFG),
        .CE(\R5_reg[15]_0 ),
        .D(D[0]),
        .Q(\R5_reg_n_0_[0] ),
        .R(hex_segB_OBUF));
  FDRE #(
    .INIT(1'b0)) 
    \R5_reg[10] 
       (.C(Clk_IBUF_BUFG),
        .CE(\R5_reg[15]_0 ),
        .D(D[10]),
        .Q(R5[10]),
        .R(hex_segB_OBUF));
  FDRE #(
    .INIT(1'b0)) 
    \R5_reg[11] 
       (.C(Clk_IBUF_BUFG),
        .CE(\R5_reg[15]_0 ),
        .D(D[11]),
        .Q(R5[11]),
        .R(hex_segB_OBUF));
  FDRE #(
    .INIT(1'b0)) 
    \R5_reg[12] 
       (.C(Clk_IBUF_BUFG),
        .CE(\R5_reg[15]_0 ),
        .D(D[12]),
        .Q(R5[12]),
        .R(hex_segB_OBUF));
  FDRE #(
    .INIT(1'b0)) 
    \R5_reg[13] 
       (.C(Clk_IBUF_BUFG),
        .CE(\R5_reg[15]_0 ),
        .D(D[13]),
        .Q(R5[13]),
        .R(hex_segB_OBUF));
  FDRE #(
    .INIT(1'b0)) 
    \R5_reg[14] 
       (.C(Clk_IBUF_BUFG),
        .CE(\R5_reg[15]_0 ),
        .D(D[14]),
        .Q(R5[14]),
        .R(hex_segB_OBUF));
  FDRE #(
    .INIT(1'b0)) 
    \R5_reg[15] 
       (.C(Clk_IBUF_BUFG),
        .CE(\R5_reg[15]_0 ),
        .D(D[15]),
        .Q(R5[15]),
        .R(hex_segB_OBUF));
  FDRE #(
    .INIT(1'b0)) 
    \R5_reg[1] 
       (.C(Clk_IBUF_BUFG),
        .CE(\R5_reg[15]_0 ),
        .D(D[1]),
        .Q(\R5_reg_n_0_[1] ),
        .R(hex_segB_OBUF));
  FDRE #(
    .INIT(1'b0)) 
    \R5_reg[2] 
       (.C(Clk_IBUF_BUFG),
        .CE(\R5_reg[15]_0 ),
        .D(D[2]),
        .Q(\R5_reg_n_0_[2] ),
        .R(hex_segB_OBUF));
  FDRE #(
    .INIT(1'b0)) 
    \R5_reg[3] 
       (.C(Clk_IBUF_BUFG),
        .CE(\R5_reg[15]_0 ),
        .D(D[3]),
        .Q(\R5_reg_n_0_[3] ),
        .R(hex_segB_OBUF));
  FDRE #(
    .INIT(1'b0)) 
    \R5_reg[4] 
       (.C(Clk_IBUF_BUFG),
        .CE(\R5_reg[15]_0 ),
        .D(D[4]),
        .Q(R5[4]),
        .R(hex_segB_OBUF));
  FDRE #(
    .INIT(1'b0)) 
    \R5_reg[5] 
       (.C(Clk_IBUF_BUFG),
        .CE(\R5_reg[15]_0 ),
        .D(D[5]),
        .Q(R5[5]),
        .R(hex_segB_OBUF));
  FDRE #(
    .INIT(1'b0)) 
    \R5_reg[6] 
       (.C(Clk_IBUF_BUFG),
        .CE(\R5_reg[15]_0 ),
        .D(D[6]),
        .Q(R5[6]),
        .R(hex_segB_OBUF));
  FDRE #(
    .INIT(1'b0)) 
    \R5_reg[7] 
       (.C(Clk_IBUF_BUFG),
        .CE(\R5_reg[15]_0 ),
        .D(D[7]),
        .Q(R5[7]),
        .R(hex_segB_OBUF));
  FDRE #(
    .INIT(1'b0)) 
    \R5_reg[8] 
       (.C(Clk_IBUF_BUFG),
        .CE(\R5_reg[15]_0 ),
        .D(D[8]),
        .Q(R5[8]),
        .R(hex_segB_OBUF));
  FDRE #(
    .INIT(1'b0)) 
    \R5_reg[9] 
       (.C(Clk_IBUF_BUFG),
        .CE(\R5_reg[15]_0 ),
        .D(D[9]),
        .Q(R5[9]),
        .R(hex_segB_OBUF));
  FDRE #(
    .INIT(1'b0)) 
    \R6_reg[0] 
       (.C(Clk_IBUF_BUFG),
        .CE(\R6_reg[15]_0 ),
        .D(D[0]),
        .Q(\R6_reg_n_0_[0] ),
        .R(hex_segB_OBUF));
  FDRE #(
    .INIT(1'b0)) 
    \R6_reg[10] 
       (.C(Clk_IBUF_BUFG),
        .CE(\R6_reg[15]_0 ),
        .D(D[10]),
        .Q(R6[10]),
        .R(hex_segB_OBUF));
  FDRE #(
    .INIT(1'b0)) 
    \R6_reg[11] 
       (.C(Clk_IBUF_BUFG),
        .CE(\R6_reg[15]_0 ),
        .D(D[11]),
        .Q(R6[11]),
        .R(hex_segB_OBUF));
  FDRE #(
    .INIT(1'b0)) 
    \R6_reg[12] 
       (.C(Clk_IBUF_BUFG),
        .CE(\R6_reg[15]_0 ),
        .D(D[12]),
        .Q(R6[12]),
        .R(hex_segB_OBUF));
  FDRE #(
    .INIT(1'b0)) 
    \R6_reg[13] 
       (.C(Clk_IBUF_BUFG),
        .CE(\R6_reg[15]_0 ),
        .D(D[13]),
        .Q(R6[13]),
        .R(hex_segB_OBUF));
  FDRE #(
    .INIT(1'b0)) 
    \R6_reg[14] 
       (.C(Clk_IBUF_BUFG),
        .CE(\R6_reg[15]_0 ),
        .D(D[14]),
        .Q(R6[14]),
        .R(hex_segB_OBUF));
  FDRE #(
    .INIT(1'b0)) 
    \R6_reg[15] 
       (.C(Clk_IBUF_BUFG),
        .CE(\R6_reg[15]_0 ),
        .D(D[15]),
        .Q(R6[15]),
        .R(hex_segB_OBUF));
  FDRE #(
    .INIT(1'b0)) 
    \R6_reg[1] 
       (.C(Clk_IBUF_BUFG),
        .CE(\R6_reg[15]_0 ),
        .D(D[1]),
        .Q(\R6_reg_n_0_[1] ),
        .R(hex_segB_OBUF));
  FDRE #(
    .INIT(1'b0)) 
    \R6_reg[2] 
       (.C(Clk_IBUF_BUFG),
        .CE(\R6_reg[15]_0 ),
        .D(D[2]),
        .Q(\R6_reg_n_0_[2] ),
        .R(hex_segB_OBUF));
  FDRE #(
    .INIT(1'b0)) 
    \R6_reg[3] 
       (.C(Clk_IBUF_BUFG),
        .CE(\R6_reg[15]_0 ),
        .D(D[3]),
        .Q(\R6_reg_n_0_[3] ),
        .R(hex_segB_OBUF));
  FDRE #(
    .INIT(1'b0)) 
    \R6_reg[4] 
       (.C(Clk_IBUF_BUFG),
        .CE(\R6_reg[15]_0 ),
        .D(D[4]),
        .Q(R6[4]),
        .R(hex_segB_OBUF));
  FDRE #(
    .INIT(1'b0)) 
    \R6_reg[5] 
       (.C(Clk_IBUF_BUFG),
        .CE(\R6_reg[15]_0 ),
        .D(D[5]),
        .Q(R6[5]),
        .R(hex_segB_OBUF));
  FDRE #(
    .INIT(1'b0)) 
    \R6_reg[6] 
       (.C(Clk_IBUF_BUFG),
        .CE(\R6_reg[15]_0 ),
        .D(D[6]),
        .Q(R6[6]),
        .R(hex_segB_OBUF));
  FDRE #(
    .INIT(1'b0)) 
    \R6_reg[7] 
       (.C(Clk_IBUF_BUFG),
        .CE(\R6_reg[15]_0 ),
        .D(D[7]),
        .Q(R6[7]),
        .R(hex_segB_OBUF));
  FDRE #(
    .INIT(1'b0)) 
    \R6_reg[8] 
       (.C(Clk_IBUF_BUFG),
        .CE(\R6_reg[15]_0 ),
        .D(D[8]),
        .Q(R6[8]),
        .R(hex_segB_OBUF));
  FDRE #(
    .INIT(1'b0)) 
    \R6_reg[9] 
       (.C(Clk_IBUF_BUFG),
        .CE(\R6_reg[15]_0 ),
        .D(D[9]),
        .Q(R6[9]),
        .R(hex_segB_OBUF));
  FDRE #(
    .INIT(1'b0)) 
    \R7_reg[0] 
       (.C(Clk_IBUF_BUFG),
        .CE(\R7_reg[15]_0 ),
        .D(D[0]),
        .Q(\R7_reg_n_0_[0] ),
        .R(hex_segB_OBUF));
  FDRE #(
    .INIT(1'b0)) 
    \R7_reg[10] 
       (.C(Clk_IBUF_BUFG),
        .CE(\R7_reg[15]_0 ),
        .D(D[10]),
        .Q(R7[10]),
        .R(hex_segB_OBUF));
  FDRE #(
    .INIT(1'b0)) 
    \R7_reg[11] 
       (.C(Clk_IBUF_BUFG),
        .CE(\R7_reg[15]_0 ),
        .D(D[11]),
        .Q(R7[11]),
        .R(hex_segB_OBUF));
  FDRE #(
    .INIT(1'b0)) 
    \R7_reg[12] 
       (.C(Clk_IBUF_BUFG),
        .CE(\R7_reg[15]_0 ),
        .D(D[12]),
        .Q(R7[12]),
        .R(hex_segB_OBUF));
  FDRE #(
    .INIT(1'b0)) 
    \R7_reg[13] 
       (.C(Clk_IBUF_BUFG),
        .CE(\R7_reg[15]_0 ),
        .D(D[13]),
        .Q(R7[13]),
        .R(hex_segB_OBUF));
  FDRE #(
    .INIT(1'b0)) 
    \R7_reg[14] 
       (.C(Clk_IBUF_BUFG),
        .CE(\R7_reg[15]_0 ),
        .D(D[14]),
        .Q(R7[14]),
        .R(hex_segB_OBUF));
  FDRE #(
    .INIT(1'b0)) 
    \R7_reg[15] 
       (.C(Clk_IBUF_BUFG),
        .CE(\R7_reg[15]_0 ),
        .D(D[15]),
        .Q(R7[15]),
        .R(hex_segB_OBUF));
  FDRE #(
    .INIT(1'b0)) 
    \R7_reg[1] 
       (.C(Clk_IBUF_BUFG),
        .CE(\R7_reg[15]_0 ),
        .D(D[1]),
        .Q(\R7_reg_n_0_[1] ),
        .R(hex_segB_OBUF));
  FDRE #(
    .INIT(1'b0)) 
    \R7_reg[2] 
       (.C(Clk_IBUF_BUFG),
        .CE(\R7_reg[15]_0 ),
        .D(D[2]),
        .Q(\R7_reg_n_0_[2] ),
        .R(hex_segB_OBUF));
  FDRE #(
    .INIT(1'b0)) 
    \R7_reg[3] 
       (.C(Clk_IBUF_BUFG),
        .CE(\R7_reg[15]_0 ),
        .D(D[3]),
        .Q(\R7_reg_n_0_[3] ),
        .R(hex_segB_OBUF));
  FDRE #(
    .INIT(1'b0)) 
    \R7_reg[4] 
       (.C(Clk_IBUF_BUFG),
        .CE(\R7_reg[15]_0 ),
        .D(D[4]),
        .Q(R7[4]),
        .R(hex_segB_OBUF));
  FDRE #(
    .INIT(1'b0)) 
    \R7_reg[5] 
       (.C(Clk_IBUF_BUFG),
        .CE(\R7_reg[15]_0 ),
        .D(D[5]),
        .Q(R7[5]),
        .R(hex_segB_OBUF));
  FDRE #(
    .INIT(1'b0)) 
    \R7_reg[6] 
       (.C(Clk_IBUF_BUFG),
        .CE(\R7_reg[15]_0 ),
        .D(D[6]),
        .Q(R7[6]),
        .R(hex_segB_OBUF));
  FDRE #(
    .INIT(1'b0)) 
    \R7_reg[7] 
       (.C(Clk_IBUF_BUFG),
        .CE(\R7_reg[15]_0 ),
        .D(D[7]),
        .Q(R7[7]),
        .R(hex_segB_OBUF));
  FDRE #(
    .INIT(1'b0)) 
    \R7_reg[8] 
       (.C(Clk_IBUF_BUFG),
        .CE(\R7_reg[15]_0 ),
        .D(D[8]),
        .Q(R7[8]),
        .R(hex_segB_OBUF));
  FDRE #(
    .INIT(1'b0)) 
    \R7_reg[9] 
       (.C(Clk_IBUF_BUFG),
        .CE(\R7_reg[15]_0 ),
        .D(D[9]),
        .Q(R7[9]),
        .R(hex_segB_OBUF));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \hex_seg_OBUF[6]_inst_i_10 
       (.I0(\R7_reg_n_0_[1] ),
        .I1(\R6_reg_n_0_[1] ),
        .I2(B1[0]),
        .I3(\R5_reg_n_0_[1] ),
        .I4(DoutIR),
        .I5(\R4_reg_n_0_[1] ),
        .O(\hex_seg_OBUF[6]_inst_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \hex_seg_OBUF[6]_inst_i_11 
       (.I0(\R7_reg_n_0_[2] ),
        .I1(\R6_reg_n_0_[2] ),
        .I2(B1[0]),
        .I3(\R5_reg_n_0_[2] ),
        .I4(DoutIR),
        .I5(\R4_reg_n_0_[2] ),
        .O(\hex_seg_OBUF[6]_inst_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \hex_seg_OBUF[6]_inst_i_12 
       (.I0(\R3_reg_n_0_[2] ),
        .I1(\R2_reg_n_0_[2] ),
        .I2(B1[0]),
        .I3(\R1_reg_n_0_[2] ),
        .I4(DoutIR),
        .I5(\R0_reg_n_0_[2] ),
        .O(\hex_seg_OBUF[6]_inst_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \hex_seg_OBUF[6]_inst_i_13 
       (.I0(\R3_reg_n_0_[0] ),
        .I1(\R2_reg_n_0_[0] ),
        .I2(B1[0]),
        .I3(\R1_reg_n_0_[0] ),
        .I4(DoutIR),
        .I5(\R0_reg_n_0_[0] ),
        .O(\R3_reg[0]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \hex_seg_OBUF[6]_inst_i_14 
       (.I0(\R7_reg_n_0_[0] ),
        .I1(\R6_reg_n_0_[0] ),
        .I2(B1[0]),
        .I3(\R5_reg_n_0_[0] ),
        .I4(DoutIR),
        .I5(\R4_reg_n_0_[0] ),
        .O(\R7_reg[0]_0 ));
  LUT3 #(
    .INIT(8'hE4)) 
    \hex_seg_OBUF[6]_inst_i_4 
       (.I0(B1[1]),
        .I1(\hex_seg_OBUF[6]_inst_i_9_n_0 ),
        .I2(\hex_seg_OBUF[6]_inst_i_10_n_0 ),
        .O(B1[0]));
  LUT3 #(
    .INIT(8'hD8)) 
    \hex_seg_OBUF[6]_inst_i_5 
       (.I0(B1[1]),
        .I1(\hex_seg_OBUF[6]_inst_i_11_n_0 ),
        .I2(\hex_seg_OBUF[6]_inst_i_12_n_0 ),
        .O(B1[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \hex_seg_OBUF[6]_inst_i_9 
       (.I0(\R3_reg_n_0_[1] ),
        .I1(\R2_reg_n_0_[1] ),
        .I2(B1[0]),
        .I3(\R1_reg_n_0_[1] ),
        .I4(DoutIR),
        .I5(\R0_reg_n_0_[1] ),
        .O(\hex_seg_OBUF[6]_inst_i_9_n_0 ));
endmodule

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.2" *) 
module blk_mem_gen_0
   (clka,
    ena,
    wea,
    addra,
    dina,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [9:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [15:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [15:0]douta;

  wire [9:0]addra;
  wire clka;
  wire [15:0]dina;
  wire [15:0]douta;
  wire ena;
  wire [0:0]wea;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [15:0]NLW_U0_doutb_UNCONNECTED;
  wire [9:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [9:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [15:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "10" *) 
  (* C_ADDRB_WIDTH = "10" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "0" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     1.51805 mW" *) 
  (* C_FAMILY = "spartan7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "blk_mem_gen_0.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "1024" *) 
  (* C_READ_DEPTH_B = "1024" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "16" *) 
  (* C_READ_WIDTH_B = "16" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "1024" *) 
  (* C_WRITE_DEPTH_B = "1024" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "16" *) 
  (* C_WRITE_WIDTH_B = "16" *) 
  (* C_XDEVICEFAMILY = "spartan7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  blk_mem_gen_0_blk_mem_gen_v8_4_5 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[15:0]),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[9:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[9:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[15:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(1'b0));
endmodule

module registers
   (ADDR2MUXOUT,
    DoutIR,
    \Dout_reg[8]_0 ,
    E,
    \Dout_reg[10]_0 ,
    \Dout_reg[11]_0 ,
    \Dout_reg[11]_1 ,
    \Dout_reg[11]_2 ,
    \Dout_reg[10]_1 ,
    \Dout_reg[10]_2 ,
    \Dout_reg[10]_3 ,
    \Dout_reg[12]_0 ,
    hex_seg_OBUF,
    \Dout_reg[15]_0 ,
    \Dout_reg[12]_1 ,
    \FSM_sequential_State_reg[0] ,
    B1,
    ADDROUT_carry__0_i_5,
    ADDROUT_carry__0_i_5_0,
    \R4_reg[15] ,
    \FSM_sequential_State_reg[4] ,
    \hex_seg[2] ,
    \hex_seg_OBUF[2]_inst_i_1_0 ,
    p_0_in,
    hex_segB_OBUF,
    hex_gridB_OBUF,
    \hex_seg_OBUF[2]_inst_i_1_1 ,
    Q,
    \hex_seg_OBUF[2]_inst_i_3 ,
    \hex_seg_OBUF[2]_inst_i_3_0 ,
    \Dout_reg[0]_0 ,
    \Dout_reg[15]_1 ,
    D,
    Clk_IBUF_BUFG);
  output [3:0]ADDR2MUXOUT;
  output [13:0]DoutIR;
  output \Dout_reg[8]_0 ;
  output [0:0]E;
  output [0:0]\Dout_reg[10]_0 ;
  output [0:0]\Dout_reg[11]_0 ;
  output [0:0]\Dout_reg[11]_1 ;
  output [0:0]\Dout_reg[11]_2 ;
  output [0:0]\Dout_reg[10]_1 ;
  output [0:0]\Dout_reg[10]_2 ;
  output [0:0]\Dout_reg[10]_3 ;
  output \Dout_reg[12]_0 ;
  output [6:0]hex_seg_OBUF;
  output \Dout_reg[15]_0 ;
  output \Dout_reg[12]_1 ;
  output \FSM_sequential_State_reg[0] ;
  inout [1:0]B1;
  input ADDROUT_carry__0_i_5;
  input ADDROUT_carry__0_i_5_0;
  input \R4_reg[15] ;
  input \FSM_sequential_State_reg[4] ;
  input \hex_seg[2] ;
  input \hex_seg_OBUF[2]_inst_i_1_0 ;
  input [1:0]p_0_in;
  input [0:0]hex_segB_OBUF;
  input [0:0]hex_gridB_OBUF;
  input \hex_seg_OBUF[2]_inst_i_1_1 ;
  input [2:0]Q;
  input \hex_seg_OBUF[2]_inst_i_3 ;
  input \hex_seg_OBUF[2]_inst_i_3_0 ;
  input \Dout_reg[0]_0 ;
  input \Dout_reg[15]_1 ;
  input [15:0]D;
  input Clk_IBUF_BUFG;

  wire [3:0]ADDR2MUXOUT;
  wire ADDROUT_carry__0_i_5;
  wire ADDROUT_carry__0_i_5_0;
  wire [1:0]B1;
  wire Clk_IBUF_BUFG;
  wire [15:0]D;
  wire [13:0]DoutIR;
  wire \Dout_reg[0]_0 ;
  wire [0:0]\Dout_reg[10]_0 ;
  wire [0:0]\Dout_reg[10]_1 ;
  wire [0:0]\Dout_reg[10]_2 ;
  wire [0:0]\Dout_reg[10]_3 ;
  wire [0:0]\Dout_reg[11]_0 ;
  wire [0:0]\Dout_reg[11]_1 ;
  wire [0:0]\Dout_reg[11]_2 ;
  wire \Dout_reg[12]_0 ;
  wire \Dout_reg[12]_1 ;
  wire \Dout_reg[15]_0 ;
  wire \Dout_reg[15]_1 ;
  wire \Dout_reg[8]_0 ;
  wire [0:0]E;
  wire \FSM_sequential_State[1]_i_4_n_0 ;
  wire \FSM_sequential_State_reg[0] ;
  wire \FSM_sequential_State_reg[4] ;
  wire [2:0]Q;
  wire \R4_reg[15] ;
  wire [0:0]hex_gridB_OBUF;
  wire [0:0]hex_segB_OBUF;
  wire \hex_seg[2] ;
  wire [6:0]hex_seg_OBUF;
  wire \hex_seg_OBUF[0]_inst_i_2_n_0 ;
  wire \hex_seg_OBUF[0]_inst_i_3_n_0 ;
  wire \hex_seg_OBUF[0]_inst_i_4_n_0 ;
  wire \hex_seg_OBUF[0]_inst_i_5_n_0 ;
  wire \hex_seg_OBUF[1]_inst_i_2_n_0 ;
  wire \hex_seg_OBUF[1]_inst_i_3_n_0 ;
  wire \hex_seg_OBUF[1]_inst_i_4_n_0 ;
  wire \hex_seg_OBUF[1]_inst_i_5_n_0 ;
  wire \hex_seg_OBUF[2]_inst_i_1_0 ;
  wire \hex_seg_OBUF[2]_inst_i_1_1 ;
  wire \hex_seg_OBUF[2]_inst_i_2_n_0 ;
  wire \hex_seg_OBUF[2]_inst_i_3 ;
  wire \hex_seg_OBUF[2]_inst_i_3_0 ;
  wire \hex_seg_OBUF[2]_inst_i_4_n_0 ;
  wire \hex_seg_OBUF[2]_inst_i_5_n_0 ;
  wire \hex_seg_OBUF[3]_inst_i_2_n_0 ;
  wire \hex_seg_OBUF[3]_inst_i_3_n_0 ;
  wire \hex_seg_OBUF[3]_inst_i_4_n_0 ;
  wire \hex_seg_OBUF[3]_inst_i_5_n_0 ;
  wire \hex_seg_OBUF[4]_inst_i_2_n_0 ;
  wire \hex_seg_OBUF[4]_inst_i_3_n_0 ;
  wire \hex_seg_OBUF[4]_inst_i_4_n_0 ;
  wire \hex_seg_OBUF[4]_inst_i_5_n_0 ;
  wire \hex_seg_OBUF[5]_inst_i_2_n_0 ;
  wire \hex_seg_OBUF[5]_inst_i_3_n_0 ;
  wire \hex_seg_OBUF[5]_inst_i_4_n_0 ;
  wire \hex_seg_OBUF[5]_inst_i_5_n_0 ;
  wire \hex_seg_OBUF[6]_inst_i_2_n_0 ;
  wire \hex_seg_OBUF[6]_inst_i_3_n_0 ;
  wire \hex_seg_OBUF[6]_inst_i_7_n_0 ;
  wire \hex_seg_OBUF[6]_inst_i_8_n_0 ;
  wire [1:0]p_0_in;

  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h8F80)) 
    ADDROUT_carry__0_i_17
       (.I0(DoutIR[3]),
        .I1(ADDROUT_carry__0_i_5_0),
        .I2(ADDROUT_carry__0_i_5),
        .I3(DoutIR[5]),
        .O(ADDR2MUXOUT[1]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h8F80)) 
    ADDROUT_carry__0_i_18
       (.I0(DoutIR[3]),
        .I1(ADDROUT_carry__0_i_5_0),
        .I2(ADDROUT_carry__0_i_5),
        .I3(DoutIR[4]),
        .O(ADDR2MUXOUT[0]));
  LUT5 #(
    .INIT(32'h303FF5F5)) 
    ADDROUT_carry__1_i_17
       (.I0(DoutIR[6]),
        .I1(DoutIR[3]),
        .I2(ADDROUT_carry__0_i_5),
        .I3(DoutIR[8]),
        .I4(ADDROUT_carry__0_i_5_0),
        .O(\Dout_reg[8]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'hAF0CA00C)) 
    ADDROUT_carry__1_i_18
       (.I0(DoutIR[3]),
        .I1(DoutIR[6]),
        .I2(ADDROUT_carry__0_i_5),
        .I3(ADDROUT_carry__0_i_5_0),
        .I4(DoutIR[7]),
        .O(ADDR2MUXOUT[3]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h88F0)) 
    ADDROUT_carry__1_i_19
       (.I0(DoutIR[3]),
        .I1(ADDROUT_carry__0_i_5_0),
        .I2(DoutIR[6]),
        .I3(ADDROUT_carry__0_i_5),
        .O(ADDR2MUXOUT[2]));
  FDRE #(
    .INIT(1'b0)) 
    \Dout_reg[0] 
       (.C(Clk_IBUF_BUFG),
        .CE(\Dout_reg[15]_1 ),
        .D(D[0]),
        .Q(DoutIR[0]),
        .R(\Dout_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Dout_reg[10] 
       (.C(Clk_IBUF_BUFG),
        .CE(\Dout_reg[15]_1 ),
        .D(D[10]),
        .Q(DoutIR[8]),
        .R(\Dout_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Dout_reg[11] 
       (.C(Clk_IBUF_BUFG),
        .CE(\Dout_reg[15]_1 ),
        .D(D[11]),
        .Q(DoutIR[9]),
        .R(\Dout_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Dout_reg[12] 
       (.C(Clk_IBUF_BUFG),
        .CE(\Dout_reg[15]_1 ),
        .D(D[12]),
        .Q(DoutIR[10]),
        .R(\Dout_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Dout_reg[13] 
       (.C(Clk_IBUF_BUFG),
        .CE(\Dout_reg[15]_1 ),
        .D(D[13]),
        .Q(DoutIR[11]),
        .R(\Dout_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Dout_reg[14] 
       (.C(Clk_IBUF_BUFG),
        .CE(\Dout_reg[15]_1 ),
        .D(D[14]),
        .Q(DoutIR[12]),
        .R(\Dout_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Dout_reg[15] 
       (.C(Clk_IBUF_BUFG),
        .CE(\Dout_reg[15]_1 ),
        .D(D[15]),
        .Q(DoutIR[13]),
        .R(\Dout_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Dout_reg[1] 
       (.C(Clk_IBUF_BUFG),
        .CE(\Dout_reg[15]_1 ),
        .D(D[1]),
        .Q(B1[0]),
        .R(\Dout_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Dout_reg[2] 
       (.C(Clk_IBUF_BUFG),
        .CE(\Dout_reg[15]_1 ),
        .D(D[2]),
        .Q(B1[1]),
        .R(\Dout_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Dout_reg[3] 
       (.C(Clk_IBUF_BUFG),
        .CE(\Dout_reg[15]_1 ),
        .D(D[3]),
        .Q(DoutIR[1]),
        .R(\Dout_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Dout_reg[4] 
       (.C(Clk_IBUF_BUFG),
        .CE(\Dout_reg[15]_1 ),
        .D(D[4]),
        .Q(DoutIR[2]),
        .R(\Dout_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Dout_reg[5] 
       (.C(Clk_IBUF_BUFG),
        .CE(\Dout_reg[15]_1 ),
        .D(D[5]),
        .Q(DoutIR[3]),
        .R(\Dout_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Dout_reg[6] 
       (.C(Clk_IBUF_BUFG),
        .CE(\Dout_reg[15]_1 ),
        .D(D[6]),
        .Q(DoutIR[4]),
        .R(\Dout_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Dout_reg[7] 
       (.C(Clk_IBUF_BUFG),
        .CE(\Dout_reg[15]_1 ),
        .D(D[7]),
        .Q(DoutIR[5]),
        .R(\Dout_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Dout_reg[8] 
       (.C(Clk_IBUF_BUFG),
        .CE(\Dout_reg[15]_1 ),
        .D(D[8]),
        .Q(DoutIR[6]),
        .R(\Dout_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Dout_reg[9] 
       (.C(Clk_IBUF_BUFG),
        .CE(\Dout_reg[15]_1 ),
        .D(D[9]),
        .Q(DoutIR[7]),
        .R(\Dout_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_sequential_State[0]_i_4 
       (.I0(DoutIR[10]),
        .I1(DoutIR[11]),
        .O(\Dout_reg[12]_1 ));
  LUT6 #(
    .INIT(64'h94FF9494FFFFFFFF)) 
    \FSM_sequential_State[1]_i_2 
       (.I0(DoutIR[13]),
        .I1(DoutIR[12]),
        .I2(\FSM_sequential_State[1]_i_4_n_0 ),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(Q[2]),
        .O(\Dout_reg[15]_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_sequential_State[1]_i_4 
       (.I0(DoutIR[10]),
        .I1(DoutIR[11]),
        .O(\FSM_sequential_State[1]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h10410041)) 
    \FSM_sequential_State[2]_i_3 
       (.I0(Q[0]),
        .I1(DoutIR[13]),
        .I2(DoutIR[12]),
        .I3(DoutIR[11]),
        .I4(DoutIR[10]),
        .O(\FSM_sequential_State_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h00D1)) 
    \FSM_sequential_State[4]_i_5 
       (.I0(DoutIR[10]),
        .I1(DoutIR[13]),
        .I2(DoutIR[12]),
        .I3(\FSM_sequential_State_reg[4] ),
        .O(\Dout_reg[12]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \R0[15]_i_1 
       (.I0(\R4_reg[15] ),
        .I1(DoutIR[9]),
        .I2(DoutIR[7]),
        .I3(DoutIR[8]),
        .O(\Dout_reg[11]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    \R1[15]_i_1 
       (.I0(\R4_reg[15] ),
        .I1(DoutIR[9]),
        .I2(DoutIR[8]),
        .I3(DoutIR[7]),
        .O(\Dout_reg[11]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \R2[15]_i_1 
       (.I0(\R4_reg[15] ),
        .I1(DoutIR[8]),
        .I2(DoutIR[7]),
        .I3(DoutIR[9]),
        .O(\Dout_reg[10]_3 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \R3[15]_i_1 
       (.I0(\R4_reg[15] ),
        .I1(DoutIR[9]),
        .I2(DoutIR[7]),
        .I3(DoutIR[8]),
        .O(\Dout_reg[11]_2 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \R4[15]_i_1 
       (.I0(\R4_reg[15] ),
        .I1(DoutIR[8]),
        .I2(DoutIR[9]),
        .I3(DoutIR[7]),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \R5[15]_i_1 
       (.I0(\R4_reg[15] ),
        .I1(DoutIR[8]),
        .I2(DoutIR[7]),
        .I3(DoutIR[9]),
        .O(\Dout_reg[10]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    \R6[15]_i_1 
       (.I0(\R4_reg[15] ),
        .I1(DoutIR[8]),
        .I2(DoutIR[9]),
        .I3(DoutIR[7]),
        .O(\Dout_reg[10]_2 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \R7[15]_i_1 
       (.I0(\R4_reg[15] ),
        .I1(DoutIR[8]),
        .I2(DoutIR[7]),
        .I3(DoutIR[9]),
        .O(\Dout_reg[10]_1 ));
  LUT6 #(
    .INIT(64'hFAF0FAF3FAFFFAF3)) 
    \hex_seg_OBUF[0]_inst_i_1 
       (.I0(\hex_seg_OBUF[0]_inst_i_2_n_0 ),
        .I1(\hex_seg_OBUF[0]_inst_i_3_n_0 ),
        .I2(hex_segB_OBUF),
        .I3(p_0_in[0]),
        .I4(p_0_in[1]),
        .I5(\hex_seg_OBUF[0]_inst_i_4_n_0 ),
        .O(hex_seg_OBUF[0]));
  LUT6 #(
    .INIT(64'h2904FFFF29040000)) 
    \hex_seg_OBUF[0]_inst_i_2 
       (.I0(DoutIR[1]),
        .I1(B1[1]),
        .I2(B1[0]),
        .I3(DoutIR[0]),
        .I4(p_0_in[1]),
        .I5(\hex_seg_OBUF[0]_inst_i_5_n_0 ),
        .O(\hex_seg_OBUF[0]_inst_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'hF67B)) 
    \hex_seg_OBUF[0]_inst_i_3 
       (.I0(DoutIR[13]),
        .I1(DoutIR[10]),
        .I2(DoutIR[11]),
        .I3(DoutIR[12]),
        .O(\hex_seg_OBUF[0]_inst_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hDE6F)) 
    \hex_seg_OBUF[0]_inst_i_4 
       (.I0(DoutIR[5]),
        .I1(DoutIR[3]),
        .I2(DoutIR[2]),
        .I3(DoutIR[4]),
        .O(\hex_seg_OBUF[0]_inst_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h6014)) 
    \hex_seg_OBUF[0]_inst_i_5 
       (.I0(DoutIR[7]),
        .I1(DoutIR[8]),
        .I2(DoutIR[6]),
        .I3(DoutIR[9]),
        .O(\hex_seg_OBUF[0]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hF5F0F5F3F5FFF5F3)) 
    \hex_seg_OBUF[1]_inst_i_1 
       (.I0(\hex_seg_OBUF[1]_inst_i_2_n_0 ),
        .I1(\hex_seg_OBUF[1]_inst_i_3_n_0 ),
        .I2(hex_segB_OBUF),
        .I3(p_0_in[0]),
        .I4(p_0_in[1]),
        .I5(\hex_seg_OBUF[1]_inst_i_4_n_0 ),
        .O(hex_seg_OBUF[1]));
  LUT6 #(
    .INIT(64'h617FFFFF617F0000)) 
    \hex_seg_OBUF[1]_inst_i_2 
       (.I0(DoutIR[1]),
        .I1(B1[0]),
        .I2(DoutIR[0]),
        .I3(B1[1]),
        .I4(p_0_in[1]),
        .I5(\hex_seg_OBUF[1]_inst_i_5_n_0 ),
        .O(\hex_seg_OBUF[1]_inst_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h497F)) 
    \hex_seg_OBUF[1]_inst_i_3 
       (.I0(DoutIR[11]),
        .I1(DoutIR[10]),
        .I2(DoutIR[13]),
        .I3(DoutIR[12]),
        .O(\hex_seg_OBUF[1]_inst_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h479F)) 
    \hex_seg_OBUF[1]_inst_i_4 
       (.I0(DoutIR[3]),
        .I1(DoutIR[2]),
        .I2(DoutIR[4]),
        .I3(DoutIR[5]),
        .O(\hex_seg_OBUF[1]_inst_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h497F)) 
    \hex_seg_OBUF[1]_inst_i_5 
       (.I0(DoutIR[7]),
        .I1(DoutIR[6]),
        .I2(DoutIR[9]),
        .I3(DoutIR[8]),
        .O(\hex_seg_OBUF[1]_inst_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h0002)) 
    \hex_seg_OBUF[2]_inst_i_1 
       (.I0(\hex_seg_OBUF[2]_inst_i_2_n_0 ),
        .I1(\hex_seg[2] ),
        .I2(\hex_seg_OBUF[2]_inst_i_4_n_0 ),
        .I3(\hex_seg_OBUF[2]_inst_i_5_n_0 ),
        .O(hex_seg_OBUF[2]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'hD004FFFF)) 
    \hex_seg_OBUF[2]_inst_i_2 
       (.I0(DoutIR[2]),
        .I1(DoutIR[3]),
        .I2(DoutIR[4]),
        .I3(DoutIR[5]),
        .I4(\hex_seg_OBUF[2]_inst_i_1_1 ),
        .O(\hex_seg_OBUF[2]_inst_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h00007F67)) 
    \hex_seg_OBUF[2]_inst_i_4 
       (.I0(DoutIR[12]),
        .I1(DoutIR[13]),
        .I2(DoutIR[11]),
        .I3(DoutIR[10]),
        .I4(hex_gridB_OBUF),
        .O(\hex_seg_OBUF[2]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0101111011011111)) 
    \hex_seg_OBUF[2]_inst_i_5 
       (.I0(\hex_seg_OBUF[2]_inst_i_1_0 ),
        .I1(p_0_in[1]),
        .I2(DoutIR[9]),
        .I3(DoutIR[6]),
        .I4(DoutIR[8]),
        .I5(DoutIR[7]),
        .O(\hex_seg_OBUF[2]_inst_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hABFB)) 
    \hex_seg_OBUF[3]_inst_i_1 
       (.I0(hex_segB_OBUF),
        .I1(\hex_seg_OBUF[3]_inst_i_2_n_0 ),
        .I2(p_0_in[0]),
        .I3(\hex_seg_OBUF[3]_inst_i_3_n_0 ),
        .O(hex_seg_OBUF[3]));
  LUT6 #(
    .INIT(64'h3EE7FFFF3EE70000)) 
    \hex_seg_OBUF[3]_inst_i_2 
       (.I0(DoutIR[5]),
        .I1(DoutIR[3]),
        .I2(DoutIR[2]),
        .I3(DoutIR[4]),
        .I4(p_0_in[1]),
        .I5(\hex_seg_OBUF[3]_inst_i_4_n_0 ),
        .O(\hex_seg_OBUF[3]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h3EDBFFFF3EDB0000)) 
    \hex_seg_OBUF[3]_inst_i_3 
       (.I0(DoutIR[1]),
        .I1(B1[1]),
        .I2(B1[0]),
        .I3(DoutIR[0]),
        .I4(p_0_in[1]),
        .I5(\hex_seg_OBUF[3]_inst_i_5_n_0 ),
        .O(\hex_seg_OBUF[3]_inst_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h5EE7)) 
    \hex_seg_OBUF[3]_inst_i_4 
       (.I0(DoutIR[11]),
        .I1(DoutIR[13]),
        .I2(DoutIR[12]),
        .I3(DoutIR[10]),
        .O(\hex_seg_OBUF[3]_inst_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h6F79)) 
    \hex_seg_OBUF[3]_inst_i_5 
       (.I0(DoutIR[8]),
        .I1(DoutIR[6]),
        .I2(DoutIR[7]),
        .I3(DoutIR[9]),
        .O(\hex_seg_OBUF[3]_inst_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hBFAE)) 
    \hex_seg_OBUF[4]_inst_i_1 
       (.I0(hex_segB_OBUF),
        .I1(p_0_in[0]),
        .I2(\hex_seg_OBUF[4]_inst_i_2_n_0 ),
        .I3(\hex_seg_OBUF[4]_inst_i_3_n_0 ),
        .O(hex_seg_OBUF[4]));
  LUT6 #(
    .INIT(64'hA8FBFFFFA8FB0000)) 
    \hex_seg_OBUF[4]_inst_i_2 
       (.I0(DoutIR[1]),
        .I1(B1[1]),
        .I2(B1[0]),
        .I3(DoutIR[0]),
        .I4(p_0_in[1]),
        .I5(\hex_seg_OBUF[4]_inst_i_4_n_0 ),
        .O(\hex_seg_OBUF[4]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h02BAFFFF02BA0000)) 
    \hex_seg_OBUF[4]_inst_i_3 
       (.I0(DoutIR[2]),
        .I1(DoutIR[3]),
        .I2(DoutIR[4]),
        .I3(DoutIR[5]),
        .I4(p_0_in[1]),
        .I5(\hex_seg_OBUF[4]_inst_i_5_n_0 ),
        .O(\hex_seg_OBUF[4]_inst_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'hDDC5)) 
    \hex_seg_OBUF[4]_inst_i_4 
       (.I0(DoutIR[6]),
        .I1(DoutIR[9]),
        .I2(DoutIR[8]),
        .I3(DoutIR[7]),
        .O(\hex_seg_OBUF[4]_inst_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h1F04)) 
    \hex_seg_OBUF[4]_inst_i_5 
       (.I0(DoutIR[11]),
        .I1(DoutIR[12]),
        .I2(DoutIR[13]),
        .I3(DoutIR[10]),
        .O(\hex_seg_OBUF[4]_inst_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFCFA)) 
    \hex_seg_OBUF[5]_inst_i_1 
       (.I0(\hex_seg_OBUF[5]_inst_i_2_n_0 ),
        .I1(\hex_seg_OBUF[5]_inst_i_3_n_0 ),
        .I2(hex_segB_OBUF),
        .I3(p_0_in[0]),
        .O(hex_seg_OBUF[5]));
  LUT6 #(
    .INIT(64'h5190FFFF51900000)) 
    \hex_seg_OBUF[5]_inst_i_2 
       (.I0(DoutIR[5]),
        .I1(DoutIR[4]),
        .I2(DoutIR[2]),
        .I3(DoutIR[3]),
        .I4(p_0_in[1]),
        .I5(\hex_seg_OBUF[5]_inst_i_4_n_0 ),
        .O(\hex_seg_OBUF[5]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4854FFFF48540000)) 
    \hex_seg_OBUF[5]_inst_i_3 
       (.I0(DoutIR[1]),
        .I1(DoutIR[0]),
        .I2(B1[0]),
        .I3(B1[1]),
        .I4(p_0_in[1]),
        .I5(\hex_seg_OBUF[5]_inst_i_5_n_0 ),
        .O(\hex_seg_OBUF[5]_inst_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h6054)) 
    \hex_seg_OBUF[5]_inst_i_4 
       (.I0(DoutIR[13]),
        .I1(DoutIR[11]),
        .I2(DoutIR[10]),
        .I3(DoutIR[12]),
        .O(\hex_seg_OBUF[5]_inst_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h4B02)) 
    \hex_seg_OBUF[5]_inst_i_5 
       (.I0(DoutIR[7]),
        .I1(DoutIR[8]),
        .I2(DoutIR[9]),
        .I3(DoutIR[6]),
        .O(\hex_seg_OBUF[5]_inst_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFAFC)) 
    \hex_seg_OBUF[6]_inst_i_1 
       (.I0(\hex_seg_OBUF[6]_inst_i_2_n_0 ),
        .I1(\hex_seg_OBUF[6]_inst_i_3_n_0 ),
        .I2(hex_segB_OBUF),
        .I3(p_0_in[0]),
        .O(hex_seg_OBUF[6]));
  LUT6 #(
    .INIT(64'h4121FFFF41210000)) 
    \hex_seg_OBUF[6]_inst_i_2 
       (.I0(DoutIR[1]),
        .I1(B1[0]),
        .I2(B1[1]),
        .I3(DoutIR[0]),
        .I4(p_0_in[1]),
        .I5(\hex_seg_OBUF[6]_inst_i_7_n_0 ),
        .O(\hex_seg_OBUF[6]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h1083FFFF10830000)) 
    \hex_seg_OBUF[6]_inst_i_3 
       (.I0(DoutIR[2]),
        .I1(DoutIR[3]),
        .I2(DoutIR[4]),
        .I3(DoutIR[5]),
        .I4(p_0_in[1]),
        .I5(\hex_seg_OBUF[6]_inst_i_8_n_0 ),
        .O(\hex_seg_OBUF[6]_inst_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hE4)) 
    \hex_seg_OBUF[6]_inst_i_6 
       (.I0(B1[1]),
        .I1(\hex_seg_OBUF[2]_inst_i_3 ),
        .I2(\hex_seg_OBUF[2]_inst_i_3_0 ),
        .O(DoutIR[0]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h0483)) 
    \hex_seg_OBUF[6]_inst_i_7 
       (.I0(DoutIR[6]),
        .I1(DoutIR[8]),
        .I2(DoutIR[7]),
        .I3(DoutIR[9]),
        .O(\hex_seg_OBUF[6]_inst_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h0291)) 
    \hex_seg_OBUF[6]_inst_i_8 
       (.I0(DoutIR[12]),
        .I1(DoutIR[11]),
        .I2(DoutIR[10]),
        .I3(DoutIR[13]),
        .O(\hex_seg_OBUF[6]_inst_i_8_n_0 ));
endmodule

(* ORIG_REF_NAME = "registers" *) 
module registers_1
   (ADDR_from_CPU,
    \Dout_reg[0]_0 ,
    \Dout_reg[5]_0 ,
    D,
    Clk_IBUF_BUFG);
  output [5:0]ADDR_from_CPU;
  input \Dout_reg[0]_0 ;
  input \Dout_reg[5]_0 ;
  input [5:0]D;
  input Clk_IBUF_BUFG;

  wire [5:0]ADDR_from_CPU;
  wire Clk_IBUF_BUFG;
  wire [5:0]D;
  wire \Dout_reg[0]_0 ;
  wire \Dout_reg[5]_0 ;

  FDRE #(
    .INIT(1'b0)) 
    \Dout_reg[0] 
       (.C(Clk_IBUF_BUFG),
        .CE(\Dout_reg[5]_0 ),
        .D(D[0]),
        .Q(ADDR_from_CPU[0]),
        .R(\Dout_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Dout_reg[1] 
       (.C(Clk_IBUF_BUFG),
        .CE(\Dout_reg[5]_0 ),
        .D(D[1]),
        .Q(ADDR_from_CPU[1]),
        .R(\Dout_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Dout_reg[2] 
       (.C(Clk_IBUF_BUFG),
        .CE(\Dout_reg[5]_0 ),
        .D(D[2]),
        .Q(ADDR_from_CPU[2]),
        .R(\Dout_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Dout_reg[3] 
       (.C(Clk_IBUF_BUFG),
        .CE(\Dout_reg[5]_0 ),
        .D(D[3]),
        .Q(ADDR_from_CPU[3]),
        .R(\Dout_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Dout_reg[4] 
       (.C(Clk_IBUF_BUFG),
        .CE(\Dout_reg[5]_0 ),
        .D(D[4]),
        .Q(ADDR_from_CPU[4]),
        .R(\Dout_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Dout_reg[5] 
       (.C(Clk_IBUF_BUFG),
        .CE(\Dout_reg[5]_0 ),
        .D(D[5]),
        .Q(ADDR_from_CPU[5]),
        .R(\Dout_reg[0]_0 ));
endmodule

(* ORIG_REF_NAME = "registers" *) 
module registers_2
   (\Dout_reg[15]_0 ,
    \Dout_reg[14]_0 ,
    \Dout_reg[13]_0 ,
    \Dout_reg[12]_0 ,
    \Dout_reg[11]_0 ,
    \Dout_reg[10]_0 ,
    \Dout_reg[9]_0 ,
    \Dout_reg[8]_0 ,
    \Dout_reg[7]_0 ,
    \Dout_reg[6]_0 ,
    \Dout_reg[5]_0 ,
    \Dout_reg[4]_0 ,
    \Dout_reg[3]_0 ,
    \Dout_reg[2]_0 ,
    \Dout_reg[1]_0 ,
    \Dout_reg[0]_0 ,
    \Dout_reg[0]_1 ,
    \Dout_reg[15]_1 ,
    \Dout_reg[15]_2 ,
    Clk_IBUF_BUFG,
    \Dout_reg[14]_1 ,
    \Dout_reg[13]_1 ,
    \Dout_reg[12]_1 ,
    \Dout_reg[11]_1 ,
    \Dout_reg[10]_1 ,
    \Dout_reg[9]_1 ,
    \Dout_reg[8]_1 ,
    \Dout_reg[7]_1 ,
    \Dout_reg[6]_1 ,
    \Dout_reg[5]_1 ,
    \Dout_reg[4]_1 ,
    \Dout_reg[3]_1 ,
    \Dout_reg[2]_1 ,
    \Dout_reg[1]_1 ,
    \Dout_reg[0]_2 );
  output \Dout_reg[15]_0 ;
  output \Dout_reg[14]_0 ;
  output \Dout_reg[13]_0 ;
  output \Dout_reg[12]_0 ;
  output \Dout_reg[11]_0 ;
  output \Dout_reg[10]_0 ;
  output \Dout_reg[9]_0 ;
  output \Dout_reg[8]_0 ;
  output \Dout_reg[7]_0 ;
  output \Dout_reg[6]_0 ;
  output \Dout_reg[5]_0 ;
  output \Dout_reg[4]_0 ;
  output \Dout_reg[3]_0 ;
  output \Dout_reg[2]_0 ;
  output \Dout_reg[1]_0 ;
  output \Dout_reg[0]_0 ;
  input \Dout_reg[0]_1 ;
  input \Dout_reg[15]_1 ;
  input \Dout_reg[15]_2 ;
  input Clk_IBUF_BUFG;
  input \Dout_reg[14]_1 ;
  input \Dout_reg[13]_1 ;
  input \Dout_reg[12]_1 ;
  input \Dout_reg[11]_1 ;
  input \Dout_reg[10]_1 ;
  input \Dout_reg[9]_1 ;
  input \Dout_reg[8]_1 ;
  input \Dout_reg[7]_1 ;
  input \Dout_reg[6]_1 ;
  input \Dout_reg[5]_1 ;
  input \Dout_reg[4]_1 ;
  input \Dout_reg[3]_1 ;
  input \Dout_reg[2]_1 ;
  input \Dout_reg[1]_1 ;
  input \Dout_reg[0]_2 ;

  wire Clk_IBUF_BUFG;
  wire \Dout_reg[0]_0 ;
  wire \Dout_reg[0]_1 ;
  wire \Dout_reg[0]_2 ;
  wire \Dout_reg[10]_0 ;
  wire \Dout_reg[10]_1 ;
  wire \Dout_reg[11]_0 ;
  wire \Dout_reg[11]_1 ;
  wire \Dout_reg[12]_0 ;
  wire \Dout_reg[12]_1 ;
  wire \Dout_reg[13]_0 ;
  wire \Dout_reg[13]_1 ;
  wire \Dout_reg[14]_0 ;
  wire \Dout_reg[14]_1 ;
  wire \Dout_reg[15]_0 ;
  wire \Dout_reg[15]_1 ;
  wire \Dout_reg[15]_2 ;
  wire \Dout_reg[1]_0 ;
  wire \Dout_reg[1]_1 ;
  wire \Dout_reg[2]_0 ;
  wire \Dout_reg[2]_1 ;
  wire \Dout_reg[3]_0 ;
  wire \Dout_reg[3]_1 ;
  wire \Dout_reg[4]_0 ;
  wire \Dout_reg[4]_1 ;
  wire \Dout_reg[5]_0 ;
  wire \Dout_reg[5]_1 ;
  wire \Dout_reg[6]_0 ;
  wire \Dout_reg[6]_1 ;
  wire \Dout_reg[7]_0 ;
  wire \Dout_reg[7]_1 ;
  wire \Dout_reg[8]_0 ;
  wire \Dout_reg[8]_1 ;
  wire \Dout_reg[9]_0 ;
  wire \Dout_reg[9]_1 ;

  FDRE #(
    .INIT(1'b0)) 
    \Dout_reg[0] 
       (.C(Clk_IBUF_BUFG),
        .CE(\Dout_reg[15]_1 ),
        .D(\Dout_reg[0]_2 ),
        .Q(\Dout_reg[0]_0 ),
        .R(\Dout_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \Dout_reg[10] 
       (.C(Clk_IBUF_BUFG),
        .CE(\Dout_reg[15]_1 ),
        .D(\Dout_reg[10]_1 ),
        .Q(\Dout_reg[10]_0 ),
        .R(\Dout_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \Dout_reg[11] 
       (.C(Clk_IBUF_BUFG),
        .CE(\Dout_reg[15]_1 ),
        .D(\Dout_reg[11]_1 ),
        .Q(\Dout_reg[11]_0 ),
        .R(\Dout_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \Dout_reg[12] 
       (.C(Clk_IBUF_BUFG),
        .CE(\Dout_reg[15]_1 ),
        .D(\Dout_reg[12]_1 ),
        .Q(\Dout_reg[12]_0 ),
        .R(\Dout_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \Dout_reg[13] 
       (.C(Clk_IBUF_BUFG),
        .CE(\Dout_reg[15]_1 ),
        .D(\Dout_reg[13]_1 ),
        .Q(\Dout_reg[13]_0 ),
        .R(\Dout_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \Dout_reg[14] 
       (.C(Clk_IBUF_BUFG),
        .CE(\Dout_reg[15]_1 ),
        .D(\Dout_reg[14]_1 ),
        .Q(\Dout_reg[14]_0 ),
        .R(\Dout_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \Dout_reg[15] 
       (.C(Clk_IBUF_BUFG),
        .CE(\Dout_reg[15]_1 ),
        .D(\Dout_reg[15]_2 ),
        .Q(\Dout_reg[15]_0 ),
        .R(\Dout_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \Dout_reg[1] 
       (.C(Clk_IBUF_BUFG),
        .CE(\Dout_reg[15]_1 ),
        .D(\Dout_reg[1]_1 ),
        .Q(\Dout_reg[1]_0 ),
        .R(\Dout_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \Dout_reg[2] 
       (.C(Clk_IBUF_BUFG),
        .CE(\Dout_reg[15]_1 ),
        .D(\Dout_reg[2]_1 ),
        .Q(\Dout_reg[2]_0 ),
        .R(\Dout_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \Dout_reg[3] 
       (.C(Clk_IBUF_BUFG),
        .CE(\Dout_reg[15]_1 ),
        .D(\Dout_reg[3]_1 ),
        .Q(\Dout_reg[3]_0 ),
        .R(\Dout_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \Dout_reg[4] 
       (.C(Clk_IBUF_BUFG),
        .CE(\Dout_reg[15]_1 ),
        .D(\Dout_reg[4]_1 ),
        .Q(\Dout_reg[4]_0 ),
        .R(\Dout_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \Dout_reg[5] 
       (.C(Clk_IBUF_BUFG),
        .CE(\Dout_reg[15]_1 ),
        .D(\Dout_reg[5]_1 ),
        .Q(\Dout_reg[5]_0 ),
        .R(\Dout_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \Dout_reg[6] 
       (.C(Clk_IBUF_BUFG),
        .CE(\Dout_reg[15]_1 ),
        .D(\Dout_reg[6]_1 ),
        .Q(\Dout_reg[6]_0 ),
        .R(\Dout_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \Dout_reg[7] 
       (.C(Clk_IBUF_BUFG),
        .CE(\Dout_reg[15]_1 ),
        .D(\Dout_reg[7]_1 ),
        .Q(\Dout_reg[7]_0 ),
        .R(\Dout_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \Dout_reg[8] 
       (.C(Clk_IBUF_BUFG),
        .CE(\Dout_reg[15]_1 ),
        .D(\Dout_reg[8]_1 ),
        .Q(\Dout_reg[8]_0 ),
        .R(\Dout_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \Dout_reg[9] 
       (.C(Clk_IBUF_BUFG),
        .CE(\Dout_reg[15]_1 ),
        .D(\Dout_reg[9]_1 ),
        .Q(\Dout_reg[9]_0 ),
        .R(\Dout_reg[0]_1 ));
endmodule

(* ORIG_REF_NAME = "registers" *) 
module registers_3
   (\Dout_reg[0]_0 ,
    \Dout_reg[15]_0 ,
    \Dout_reg[14]_0 ,
    \Dout_reg[13]_0 ,
    \Dout_reg[12]_0 ,
    \Dout_reg[11]_0 ,
    \Dout_reg[10]_0 ,
    \Dout_reg[9]_0 ,
    \Dout_reg[8]_0 ,
    \Dout_reg[7]_0 ,
    \Dout_reg[6]_0 ,
    \Dout_reg[5]_0 ,
    \Dout_reg[4]_0 ,
    \Dout_reg[3]_0 ,
    \Dout_reg[2]_0 ,
    \Dout_reg[1]_0 ,
    data3,
    \Dout_reg[0]_1 ,
    O,
    \Dout_reg[0]_2 ,
    \Dout_reg[15]_1 ,
    Clk_IBUF_BUFG,
    \Dout_reg[12]_1 ,
    \Dout_reg[11]_1 ,
    \Dout_reg[10]_1 ,
    \Dout_reg[9]_1 ,
    \Dout_reg[8]_1 ,
    \Dout_reg[7]_1 ,
    \Dout_reg[6]_1 ,
    \Dout_reg[5]_1 ,
    \Dout_reg[4]_1 ,
    \Dout_reg[3]_1 ,
    \Dout_reg[2]_1 ,
    \Dout_reg[1]_1 );
  output \Dout_reg[0]_0 ;
  output \Dout_reg[15]_0 ;
  output \Dout_reg[14]_0 ;
  output \Dout_reg[13]_0 ;
  output \Dout_reg[12]_0 ;
  output \Dout_reg[11]_0 ;
  output \Dout_reg[10]_0 ;
  output \Dout_reg[9]_0 ;
  output \Dout_reg[8]_0 ;
  output \Dout_reg[7]_0 ;
  output \Dout_reg[6]_0 ;
  output \Dout_reg[5]_0 ;
  output \Dout_reg[4]_0 ;
  output \Dout_reg[3]_0 ;
  output \Dout_reg[2]_0 ;
  output \Dout_reg[1]_0 ;
  input [3:0]data3;
  input \Dout_reg[0]_1 ;
  input [2:0]O;
  input \Dout_reg[0]_2 ;
  input \Dout_reg[15]_1 ;
  input Clk_IBUF_BUFG;
  input \Dout_reg[12]_1 ;
  input \Dout_reg[11]_1 ;
  input \Dout_reg[10]_1 ;
  input \Dout_reg[9]_1 ;
  input \Dout_reg[8]_1 ;
  input \Dout_reg[7]_1 ;
  input \Dout_reg[6]_1 ;
  input \Dout_reg[5]_1 ;
  input \Dout_reg[4]_1 ;
  input \Dout_reg[3]_1 ;
  input \Dout_reg[2]_1 ;
  input \Dout_reg[1]_1 ;

  wire Clk_IBUF_BUFG;
  wire \Dout[0]_i_1__0_n_0 ;
  wire \Dout[13]_i_1__0_n_0 ;
  wire \Dout[14]_i_1__0_n_0 ;
  wire \Dout[15]_i_3__0_n_0 ;
  wire \Dout_reg[0]_0 ;
  wire \Dout_reg[0]_1 ;
  wire \Dout_reg[0]_2 ;
  wire \Dout_reg[10]_0 ;
  wire \Dout_reg[10]_1 ;
  wire \Dout_reg[11]_0 ;
  wire \Dout_reg[11]_1 ;
  wire \Dout_reg[12]_0 ;
  wire \Dout_reg[12]_1 ;
  wire \Dout_reg[13]_0 ;
  wire \Dout_reg[14]_0 ;
  wire \Dout_reg[15]_0 ;
  wire \Dout_reg[15]_1 ;
  wire \Dout_reg[1]_0 ;
  wire \Dout_reg[1]_1 ;
  wire \Dout_reg[2]_0 ;
  wire \Dout_reg[2]_1 ;
  wire \Dout_reg[3]_0 ;
  wire \Dout_reg[3]_1 ;
  wire \Dout_reg[4]_0 ;
  wire \Dout_reg[4]_1 ;
  wire \Dout_reg[5]_0 ;
  wire \Dout_reg[5]_1 ;
  wire \Dout_reg[6]_0 ;
  wire \Dout_reg[6]_1 ;
  wire \Dout_reg[7]_0 ;
  wire \Dout_reg[7]_1 ;
  wire \Dout_reg[8]_0 ;
  wire \Dout_reg[8]_1 ;
  wire \Dout_reg[9]_0 ;
  wire \Dout_reg[9]_1 ;
  wire [2:0]O;
  wire [3:0]data3;

  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hC5)) 
    \Dout[0]_i_1__0 
       (.I0(\Dout_reg[0]_0 ),
        .I1(data3[0]),
        .I2(\Dout_reg[0]_1 ),
        .O(\Dout[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \Dout[13]_i_1__0 
       (.I0(O[0]),
        .I1(\Dout_reg[0]_1 ),
        .I2(data3[1]),
        .O(\Dout[13]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \Dout[14]_i_1__0 
       (.I0(O[1]),
        .I1(\Dout_reg[0]_1 ),
        .I2(data3[2]),
        .O(\Dout[14]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \Dout[15]_i_3__0 
       (.I0(O[2]),
        .I1(\Dout_reg[0]_1 ),
        .I2(data3[3]),
        .O(\Dout[15]_i_3__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Dout_reg[0] 
       (.C(Clk_IBUF_BUFG),
        .CE(\Dout_reg[15]_1 ),
        .D(\Dout[0]_i_1__0_n_0 ),
        .Q(\Dout_reg[0]_0 ),
        .R(\Dout_reg[0]_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \Dout_reg[10] 
       (.C(Clk_IBUF_BUFG),
        .CE(\Dout_reg[15]_1 ),
        .D(\Dout_reg[10]_1 ),
        .Q(\Dout_reg[10]_0 ),
        .R(\Dout_reg[0]_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \Dout_reg[11] 
       (.C(Clk_IBUF_BUFG),
        .CE(\Dout_reg[15]_1 ),
        .D(\Dout_reg[11]_1 ),
        .Q(\Dout_reg[11]_0 ),
        .R(\Dout_reg[0]_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \Dout_reg[12] 
       (.C(Clk_IBUF_BUFG),
        .CE(\Dout_reg[15]_1 ),
        .D(\Dout_reg[12]_1 ),
        .Q(\Dout_reg[12]_0 ),
        .R(\Dout_reg[0]_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \Dout_reg[13] 
       (.C(Clk_IBUF_BUFG),
        .CE(\Dout_reg[15]_1 ),
        .D(\Dout[13]_i_1__0_n_0 ),
        .Q(\Dout_reg[13]_0 ),
        .R(\Dout_reg[0]_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \Dout_reg[14] 
       (.C(Clk_IBUF_BUFG),
        .CE(\Dout_reg[15]_1 ),
        .D(\Dout[14]_i_1__0_n_0 ),
        .Q(\Dout_reg[14]_0 ),
        .R(\Dout_reg[0]_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \Dout_reg[15] 
       (.C(Clk_IBUF_BUFG),
        .CE(\Dout_reg[15]_1 ),
        .D(\Dout[15]_i_3__0_n_0 ),
        .Q(\Dout_reg[15]_0 ),
        .R(\Dout_reg[0]_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \Dout_reg[1] 
       (.C(Clk_IBUF_BUFG),
        .CE(\Dout_reg[15]_1 ),
        .D(\Dout_reg[1]_1 ),
        .Q(\Dout_reg[1]_0 ),
        .R(\Dout_reg[0]_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \Dout_reg[2] 
       (.C(Clk_IBUF_BUFG),
        .CE(\Dout_reg[15]_1 ),
        .D(\Dout_reg[2]_1 ),
        .Q(\Dout_reg[2]_0 ),
        .R(\Dout_reg[0]_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \Dout_reg[3] 
       (.C(Clk_IBUF_BUFG),
        .CE(\Dout_reg[15]_1 ),
        .D(\Dout_reg[3]_1 ),
        .Q(\Dout_reg[3]_0 ),
        .R(\Dout_reg[0]_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \Dout_reg[4] 
       (.C(Clk_IBUF_BUFG),
        .CE(\Dout_reg[15]_1 ),
        .D(\Dout_reg[4]_1 ),
        .Q(\Dout_reg[4]_0 ),
        .R(\Dout_reg[0]_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \Dout_reg[5] 
       (.C(Clk_IBUF_BUFG),
        .CE(\Dout_reg[15]_1 ),
        .D(\Dout_reg[5]_1 ),
        .Q(\Dout_reg[5]_0 ),
        .R(\Dout_reg[0]_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \Dout_reg[6] 
       (.C(Clk_IBUF_BUFG),
        .CE(\Dout_reg[15]_1 ),
        .D(\Dout_reg[6]_1 ),
        .Q(\Dout_reg[6]_0 ),
        .R(\Dout_reg[0]_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \Dout_reg[7] 
       (.C(Clk_IBUF_BUFG),
        .CE(\Dout_reg[15]_1 ),
        .D(\Dout_reg[7]_1 ),
        .Q(\Dout_reg[7]_0 ),
        .R(\Dout_reg[0]_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \Dout_reg[8] 
       (.C(Clk_IBUF_BUFG),
        .CE(\Dout_reg[15]_1 ),
        .D(\Dout_reg[8]_1 ),
        .Q(\Dout_reg[8]_0 ),
        .R(\Dout_reg[0]_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \Dout_reg[9] 
       (.C(Clk_IBUF_BUFG),
        .CE(\Dout_reg[15]_1 ),
        .D(\Dout_reg[9]_1 ),
        .Q(\Dout_reg[9]_0 ),
        .R(\Dout_reg[0]_2 ));
endmodule

module slc3
   (ena,
    wea,
    hex_seg_OBUF,
    hex_gridB_OBUF,
    ADDR_from_CPU,
    hex_segB_OBUF,
    Clk_IBUF_BUFG,
    \FSM_sequential_State_reg[4] ,
    Run_ah,
    douta,
    we_select,
    state);
  output ena;
  output [0:0]wea;
  output [6:0]hex_seg_OBUF;
  output [3:0]hex_gridB_OBUF;
  output [5:0]ADDR_from_CPU;
  input [0:0]hex_segB_OBUF;
  input Clk_IBUF_BUFG;
  input \FSM_sequential_State_reg[4] ;
  input Run_ah;
  input [15:0]douta;
  input we_select;
  input [1:0]state;

  wire [14:0]ADDR1MUXOUT;
  wire [9:6]ADDR2MUXOUT;
  wire ADDROUT_carry__0_n_0;
  wire ADDROUT_carry__0_n_1;
  wire ADDROUT_carry__0_n_2;
  wire ADDROUT_carry__0_n_3;
  wire ADDROUT_carry__1_n_0;
  wire ADDROUT_carry__1_n_1;
  wire ADDROUT_carry__1_n_2;
  wire ADDROUT_carry__1_n_3;
  wire ADDROUT_carry__2_n_1;
  wire ADDROUT_carry__2_n_2;
  wire ADDROUT_carry__2_n_3;
  wire ADDROUT_carry_n_0;
  wire ADDROUT_carry_n_1;
  wire ADDROUT_carry_n_2;
  wire ADDROUT_carry_n_3;
  wire [5:0]ADDR_from_CPU;
  wire Clk_IBUF_BUFG;
  wire [15:0]DoutIR;
  wire \FSM_sequential_State_reg[4] ;
  wire HexA_n_2;
  wire HexA_n_3;
  wire HexA_n_8;
  wire [1:0]\HexB/p_0_in ;
  wire IRreg_n_18;
  wire IRreg_n_19;
  wire IRreg_n_20;
  wire IRreg_n_21;
  wire IRreg_n_22;
  wire IRreg_n_23;
  wire IRreg_n_24;
  wire IRreg_n_25;
  wire IRreg_n_26;
  wire IRreg_n_27;
  wire IRreg_n_35;
  wire IRreg_n_36;
  wire IRreg_n_37;
  wire MDRreg_n_0;
  wire MDRreg_n_1;
  wire MDRreg_n_10;
  wire MDRreg_n_11;
  wire MDRreg_n_12;
  wire MDRreg_n_13;
  wire MDRreg_n_14;
  wire MDRreg_n_15;
  wire MDRreg_n_2;
  wire MDRreg_n_3;
  wire MDRreg_n_4;
  wire MDRreg_n_5;
  wire MDRreg_n_6;
  wire MDRreg_n_7;
  wire MDRreg_n_8;
  wire MDRreg_n_9;
  wire PC_n_0;
  wire PC_n_1;
  wire PC_n_10;
  wire PC_n_11;
  wire PC_n_12;
  wire PC_n_13;
  wire PC_n_14;
  wire PC_n_15;
  wire PC_n_2;
  wire PC_n_3;
  wire PC_n_4;
  wire PC_n_5;
  wire PC_n_6;
  wire PC_n_7;
  wire PC_n_8;
  wire PC_n_9;
  wire Run_ah;
  wire [2:0]State;
  wire [15:0]data3;
  wire [15:0]douta;
  wire ena;
  wire [3:0]hex_gridB_OBUF;
  wire [0:0]hex_segB_OBUF;
  wire [6:0]hex_seg_OBUF;
  wire [15:1]pc_In0;
  wire pc_In0_carry__0_n_0;
  wire pc_In0_carry__0_n_1;
  wire pc_In0_carry__0_n_2;
  wire pc_In0_carry__0_n_3;
  wire pc_In0_carry__1_n_0;
  wire pc_In0_carry__1_n_1;
  wire pc_In0_carry__1_n_2;
  wire pc_In0_carry__1_n_3;
  wire pc_In0_carry__2_n_2;
  wire pc_In0_carry__2_n_3;
  wire pc_In0_carry_n_0;
  wire pc_In0_carry_n_1;
  wire pc_In0_carry_n_2;
  wire pc_In0_carry_n_3;
  wire regfile_n_0;
  wire regfile_n_1;
  wire regfile_n_10;
  wire regfile_n_11;
  wire regfile_n_12;
  wire regfile_n_13;
  wire regfile_n_14;
  wire regfile_n_15;
  wire regfile_n_16;
  wire regfile_n_17;
  wire regfile_n_18;
  wire regfile_n_19;
  wire regfile_n_2;
  wire regfile_n_20;
  wire regfile_n_21;
  wire regfile_n_22;
  wire regfile_n_23;
  wire regfile_n_24;
  wire regfile_n_25;
  wire regfile_n_26;
  wire regfile_n_27;
  wire regfile_n_28;
  wire regfile_n_29;
  wire regfile_n_3;
  wire regfile_n_30;
  wire regfile_n_31;
  wire regfile_n_32;
  wire regfile_n_33;
  wire regfile_n_34;
  wire regfile_n_35;
  wire regfile_n_36;
  wire regfile_n_37;
  wire regfile_n_38;
  wire regfile_n_39;
  wire regfile_n_4;
  wire regfile_n_40;
  wire regfile_n_41;
  wire regfile_n_5;
  wire regfile_n_6;
  wire regfile_n_7;
  wire regfile_n_8;
  wire regfile_n_9;
  wire [1:0]state;
  wire state_controller_n_0;
  wire state_controller_n_10;
  wire state_controller_n_11;
  wire state_controller_n_12;
  wire state_controller_n_13;
  wire state_controller_n_14;
  wire state_controller_n_15;
  wire state_controller_n_16;
  wire state_controller_n_17;
  wire state_controller_n_18;
  wire state_controller_n_19;
  wire state_controller_n_20;
  wire state_controller_n_21;
  wire state_controller_n_22;
  wire state_controller_n_38;
  wire state_controller_n_39;
  wire state_controller_n_4;
  wire state_controller_n_40;
  wire state_controller_n_41;
  wire state_controller_n_42;
  wire state_controller_n_43;
  wire state_controller_n_44;
  wire state_controller_n_45;
  wire state_controller_n_46;
  wire state_controller_n_49;
  wire state_controller_n_5;
  wire state_controller_n_50;
  wire state_controller_n_51;
  wire state_controller_n_52;
  wire state_controller_n_53;
  wire state_controller_n_54;
  wire state_controller_n_55;
  wire state_controller_n_56;
  wire state_controller_n_57;
  wire state_controller_n_58;
  wire state_controller_n_59;
  wire state_controller_n_6;
  wire state_controller_n_60;
  wire state_controller_n_61;
  wire state_controller_n_62;
  wire state_controller_n_63;
  wire state_controller_n_64;
  wire state_controller_n_65;
  wire state_controller_n_66;
  wire state_controller_n_67;
  wire state_controller_n_68;
  wire state_controller_n_69;
  wire state_controller_n_7;
  wire state_controller_n_70;
  wire state_controller_n_71;
  wire state_controller_n_72;
  wire state_controller_n_73;
  wire state_controller_n_74;
  wire state_controller_n_75;
  wire state_controller_n_76;
  wire state_controller_n_77;
  wire state_controller_n_78;
  wire state_controller_n_79;
  wire state_controller_n_8;
  wire state_controller_n_80;
  wire state_controller_n_81;
  wire state_controller_n_82;
  wire state_controller_n_83;
  wire state_controller_n_84;
  wire state_controller_n_85;
  wire state_controller_n_86;
  wire state_controller_n_9;
  wire we_select;
  wire [0:0]wea;
  wire [3:3]NLW_ADDROUT_carry__2_CO_UNCONNECTED;
  wire [3:2]NLW_pc_In0_carry__2_CO_UNCONNECTED;
  wire [3:3]NLW_pc_In0_carry__2_O_UNCONNECTED;

  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 ADDROUT_carry
       (.CI(1'b0),
        .CO({ADDROUT_carry_n_0,ADDROUT_carry_n_1,ADDROUT_carry_n_2,ADDROUT_carry_n_3}),
        .CYINIT(1'b0),
        .DI(ADDR1MUXOUT[3:0]),
        .O(data3[3:0]),
        .S({state_controller_n_49,state_controller_n_50,state_controller_n_51,state_controller_n_52}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 ADDROUT_carry__0
       (.CI(ADDROUT_carry_n_0),
        .CO({ADDROUT_carry__0_n_0,ADDROUT_carry__0_n_1,ADDROUT_carry__0_n_2,ADDROUT_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(ADDR1MUXOUT[7:4]),
        .O(data3[7:4]),
        .S({regfile_n_36,regfile_n_37,state_controller_n_53,state_controller_n_54}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 ADDROUT_carry__1
       (.CI(ADDROUT_carry__0_n_0),
        .CO({ADDROUT_carry__1_n_0,ADDROUT_carry__1_n_1,ADDROUT_carry__1_n_2,ADDROUT_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(ADDR1MUXOUT[11:8]),
        .O(data3[11:8]),
        .S({regfile_n_38,regfile_n_39,regfile_n_40,regfile_n_41}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 ADDROUT_carry__2
       (.CI(ADDROUT_carry__1_n_0),
        .CO({NLW_ADDROUT_carry__2_CO_UNCONNECTED[3],ADDROUT_carry__2_n_1,ADDROUT_carry__2_n_2,ADDROUT_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,ADDR1MUXOUT[14:12]}),
        .O(data3[15:12]),
        .S({regfile_n_0,regfile_n_1,regfile_n_2,regfile_n_3}));
  HexDriver HexA
       (.Clk_IBUF_BUFG(Clk_IBUF_BUFG),
        .DoutIR(DoutIR[3:0]),
        .\Dout_reg[3] (HexA_n_2),
        .\counter_reg[15]_0 (HexA_n_3),
        .\counter_reg[16]_0 (HexA_n_8),
        .hex_gridB_OBUF(hex_gridB_OBUF),
        .hex_segB_OBUF(hex_segB_OBUF),
        .p_0_in(\HexB/p_0_in ));
  registers IRreg
       (.ADDR2MUXOUT(ADDR2MUXOUT),
        .ADDROUT_carry__0_i_5(state_controller_n_40),
        .ADDROUT_carry__0_i_5_0(state_controller_n_43),
        .B1(DoutIR[2:1]),
        .Clk_IBUF_BUFG(Clk_IBUF_BUFG),
        .D({state_controller_n_6,state_controller_n_7,state_controller_n_8,state_controller_n_9,state_controller_n_10,state_controller_n_11,state_controller_n_12,state_controller_n_13,state_controller_n_14,state_controller_n_15,state_controller_n_16,state_controller_n_17,state_controller_n_18,state_controller_n_19,state_controller_n_20,state_controller_n_21}),
        .DoutIR({DoutIR[15:3],DoutIR[0]}),
        .\Dout_reg[0]_0 (state_controller_n_86),
        .\Dout_reg[10]_0 (IRreg_n_20),
        .\Dout_reg[10]_1 (IRreg_n_24),
        .\Dout_reg[10]_2 (IRreg_n_25),
        .\Dout_reg[10]_3 (IRreg_n_26),
        .\Dout_reg[11]_0 (IRreg_n_21),
        .\Dout_reg[11]_1 (IRreg_n_22),
        .\Dout_reg[11]_2 (IRreg_n_23),
        .\Dout_reg[12]_0 (IRreg_n_27),
        .\Dout_reg[12]_1 (IRreg_n_36),
        .\Dout_reg[15]_0 (IRreg_n_35),
        .\Dout_reg[15]_1 (state_controller_n_42),
        .\Dout_reg[8]_0 (IRreg_n_18),
        .E(IRreg_n_19),
        .\FSM_sequential_State_reg[0] (IRreg_n_37),
        .\FSM_sequential_State_reg[4] (state_controller_n_46),
        .Q(State),
        .\R4_reg[15] (state_controller_n_41),
        .hex_gridB_OBUF(hex_gridB_OBUF[0]),
        .hex_segB_OBUF(hex_segB_OBUF),
        .\hex_seg[2] (HexA_n_2),
        .hex_seg_OBUF(hex_seg_OBUF),
        .\hex_seg_OBUF[2]_inst_i_1_0 (HexA_n_3),
        .\hex_seg_OBUF[2]_inst_i_1_1 (HexA_n_8),
        .\hex_seg_OBUF[2]_inst_i_3 (regfile_n_34),
        .\hex_seg_OBUF[2]_inst_i_3_0 (regfile_n_35),
        .p_0_in(\HexB/p_0_in ));
  registers_1 MARreg
       (.ADDR_from_CPU(ADDR_from_CPU),
        .Clk_IBUF_BUFG(Clk_IBUF_BUFG),
        .D({state_controller_n_16,state_controller_n_17,state_controller_n_18,state_controller_n_19,state_controller_n_20,state_controller_n_21}),
        .\Dout_reg[0]_0 (state_controller_n_85),
        .\Dout_reg[5]_0 (state_controller_n_22));
  registers_2 MDRreg
       (.Clk_IBUF_BUFG(Clk_IBUF_BUFG),
        .\Dout_reg[0]_0 (MDRreg_n_15),
        .\Dout_reg[0]_1 (state_controller_n_68),
        .\Dout_reg[0]_2 (state_controller_n_69),
        .\Dout_reg[10]_0 (MDRreg_n_5),
        .\Dout_reg[10]_1 (state_controller_n_79),
        .\Dout_reg[11]_0 (MDRreg_n_4),
        .\Dout_reg[11]_1 (state_controller_n_80),
        .\Dout_reg[12]_0 (MDRreg_n_3),
        .\Dout_reg[12]_1 (state_controller_n_81),
        .\Dout_reg[13]_0 (MDRreg_n_2),
        .\Dout_reg[13]_1 (state_controller_n_82),
        .\Dout_reg[14]_0 (MDRreg_n_1),
        .\Dout_reg[14]_1 (state_controller_n_83),
        .\Dout_reg[15]_0 (MDRreg_n_0),
        .\Dout_reg[15]_1 (state_controller_n_5),
        .\Dout_reg[15]_2 (state_controller_n_84),
        .\Dout_reg[1]_0 (MDRreg_n_14),
        .\Dout_reg[1]_1 (state_controller_n_70),
        .\Dout_reg[2]_0 (MDRreg_n_13),
        .\Dout_reg[2]_1 (state_controller_n_71),
        .\Dout_reg[3]_0 (MDRreg_n_12),
        .\Dout_reg[3]_1 (state_controller_n_72),
        .\Dout_reg[4]_0 (MDRreg_n_11),
        .\Dout_reg[4]_1 (state_controller_n_73),
        .\Dout_reg[5]_0 (MDRreg_n_10),
        .\Dout_reg[5]_1 (state_controller_n_74),
        .\Dout_reg[6]_0 (MDRreg_n_9),
        .\Dout_reg[6]_1 (state_controller_n_75),
        .\Dout_reg[7]_0 (MDRreg_n_8),
        .\Dout_reg[7]_1 (state_controller_n_76),
        .\Dout_reg[8]_0 (MDRreg_n_7),
        .\Dout_reg[8]_1 (state_controller_n_77),
        .\Dout_reg[9]_0 (MDRreg_n_6),
        .\Dout_reg[9]_1 (state_controller_n_78));
  registers_3 PC
       (.Clk_IBUF_BUFG(Clk_IBUF_BUFG),
        .\Dout_reg[0]_0 (PC_n_0),
        .\Dout_reg[0]_1 (state_controller_n_0),
        .\Dout_reg[0]_2 (state_controller_n_67),
        .\Dout_reg[10]_0 (PC_n_6),
        .\Dout_reg[10]_1 (state_controller_n_64),
        .\Dout_reg[11]_0 (PC_n_5),
        .\Dout_reg[11]_1 (state_controller_n_65),
        .\Dout_reg[12]_0 (PC_n_4),
        .\Dout_reg[12]_1 (state_controller_n_66),
        .\Dout_reg[13]_0 (PC_n_3),
        .\Dout_reg[14]_0 (PC_n_2),
        .\Dout_reg[15]_0 (PC_n_1),
        .\Dout_reg[15]_1 (state_controller_n_4),
        .\Dout_reg[1]_0 (PC_n_15),
        .\Dout_reg[1]_1 (state_controller_n_55),
        .\Dout_reg[2]_0 (PC_n_14),
        .\Dout_reg[2]_1 (state_controller_n_56),
        .\Dout_reg[3]_0 (PC_n_13),
        .\Dout_reg[3]_1 (state_controller_n_57),
        .\Dout_reg[4]_0 (PC_n_12),
        .\Dout_reg[4]_1 (state_controller_n_58),
        .\Dout_reg[5]_0 (PC_n_11),
        .\Dout_reg[5]_1 (state_controller_n_59),
        .\Dout_reg[6]_0 (PC_n_10),
        .\Dout_reg[6]_1 (state_controller_n_60),
        .\Dout_reg[7]_0 (PC_n_9),
        .\Dout_reg[7]_1 (state_controller_n_61),
        .\Dout_reg[8]_0 (PC_n_8),
        .\Dout_reg[8]_1 (state_controller_n_62),
        .\Dout_reg[9]_0 (PC_n_7),
        .\Dout_reg[9]_1 (state_controller_n_63),
        .O(pc_In0[15:13]),
        .data3({data3[15:13],data3[0]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 pc_In0_carry
       (.CI(1'b0),
        .CO({pc_In0_carry_n_0,pc_In0_carry_n_1,pc_In0_carry_n_2,pc_In0_carry_n_3}),
        .CYINIT(PC_n_0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(pc_In0[4:1]),
        .S({PC_n_12,PC_n_13,PC_n_14,PC_n_15}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 pc_In0_carry__0
       (.CI(pc_In0_carry_n_0),
        .CO({pc_In0_carry__0_n_0,pc_In0_carry__0_n_1,pc_In0_carry__0_n_2,pc_In0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(pc_In0[8:5]),
        .S({PC_n_8,PC_n_9,PC_n_10,PC_n_11}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 pc_In0_carry__1
       (.CI(pc_In0_carry__0_n_0),
        .CO({pc_In0_carry__1_n_0,pc_In0_carry__1_n_1,pc_In0_carry__1_n_2,pc_In0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(pc_In0[12:9]),
        .S({PC_n_4,PC_n_5,PC_n_6,PC_n_7}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 pc_In0_carry__2
       (.CI(pc_In0_carry__1_n_0),
        .CO({NLW_pc_In0_carry__2_CO_UNCONNECTED[3:2],pc_In0_carry__2_n_2,pc_In0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_pc_In0_carry__2_O_UNCONNECTED[3],pc_In0[15:13]}),
        .S({1'b0,PC_n_1,PC_n_2,PC_n_3}));
  REG_FILE regfile
       (.ADDR2MUXOUT(ADDR2MUXOUT),
        .ADDROUT_carry__0(PC_n_10),
        .ADDROUT_carry__0_0(PC_n_9),
        .ADDROUT_carry__1(PC_n_8),
        .ADDROUT_carry__1_0(PC_n_7),
        .ADDROUT_carry__1_1(PC_n_6),
        .ADDROUT_carry__1_2(PC_n_5),
        .ADDROUT_carry__2(IRreg_n_18),
        .ADDROUT_carry__2_0(state_controller_n_39),
        .ADDROUT_carry__2_1(state_controller_n_38),
        .ADDROUT_carry__2_2(PC_n_1),
        .ADDROUT_carry__2_3(PC_n_4),
        .ADDROUT_carry__2_4(PC_n_3),
        .ADDROUT_carry__2_5(PC_n_2),
        .ADDROUT_carry__2_i_4_0(state_controller_n_45),
        .ADDROUT_carry__2_i_4_1(state_controller_n_44),
        .B1(DoutIR[2:1]),
        .Clk_IBUF_BUFG(Clk_IBUF_BUFG),
        .D({state_controller_n_6,state_controller_n_7,state_controller_n_8,state_controller_n_9,state_controller_n_10,state_controller_n_11,state_controller_n_12,state_controller_n_13,state_controller_n_14,state_controller_n_15,state_controller_n_16,state_controller_n_17,state_controller_n_18,state_controller_n_19,state_controller_n_20,state_controller_n_21}),
        .DoutIR(DoutIR[0]),
        .\Dout_reg[11] ({regfile_n_38,regfile_n_39,regfile_n_40,regfile_n_41}),
        .\Dout_reg[7] ({regfile_n_36,regfile_n_37}),
        .E(IRreg_n_21),
        .\R0_reg[0]_0 (regfile_n_4),
        .\R0_reg[10]_0 (regfile_n_25),
        .\R0_reg[11]_0 (regfile_n_26),
        .\R0_reg[12]_0 (regfile_n_28),
        .\R0_reg[13]_0 (regfile_n_31),
        .\R0_reg[14]_0 (regfile_n_33),
        .\R0_reg[1]_0 (regfile_n_7),
        .\R0_reg[2]_0 (regfile_n_8),
        .\R0_reg[3]_0 (regfile_n_11),
        .\R0_reg[4]_0 (regfile_n_13),
        .\R0_reg[5]_0 (regfile_n_14),
        .\R0_reg[6]_0 (regfile_n_16),
        .\R0_reg[7]_0 (regfile_n_19),
        .\R0_reg[8]_0 (regfile_n_21),
        .\R0_reg[9]_0 (regfile_n_23),
        .\R1_reg[15]_0 (IRreg_n_22),
        .\R2_reg[15]_0 (IRreg_n_26),
        .\R3_reg[0]_0 (regfile_n_34),
        .\R3_reg[15]_0 (IRreg_n_23),
        .\R4_reg[0]_0 (regfile_n_5),
        .\R4_reg[10]_0 (regfile_n_24),
        .\R4_reg[11]_0 (regfile_n_27),
        .\R4_reg[12]_0 (regfile_n_29),
        .\R4_reg[13]_0 (regfile_n_30),
        .\R4_reg[14]_0 (regfile_n_32),
        .\R4_reg[15]_0 (IRreg_n_19),
        .\R4_reg[1]_0 (regfile_n_6),
        .\R4_reg[2]_0 (regfile_n_9),
        .\R4_reg[3]_0 (regfile_n_10),
        .\R4_reg[4]_0 (regfile_n_12),
        .\R4_reg[5]_0 (regfile_n_15),
        .\R4_reg[6]_0 (regfile_n_17),
        .\R4_reg[7]_0 (regfile_n_18),
        .\R4_reg[8]_0 (regfile_n_20),
        .\R4_reg[9]_0 (regfile_n_22),
        .\R5_reg[15]_0 (IRreg_n_20),
        .\R6_reg[15]_0 (IRreg_n_25),
        .\R7_reg[0]_0 (regfile_n_35),
        .\R7_reg[15]_0 (IRreg_n_24),
        .S({regfile_n_0,regfile_n_1,regfile_n_2,regfile_n_3}),
        .hex_segB_OBUF(hex_segB_OBUF));
  ISDU state_controller
       (.ADDR1MUXOUT(ADDR1MUXOUT),
        .ADDROUT_carry(regfile_n_4),
        .ADDROUT_carry_0(regfile_n_5),
        .ADDROUT_carry_1(regfile_n_7),
        .ADDROUT_carry_2(regfile_n_6),
        .ADDROUT_carry_3(regfile_n_8),
        .ADDROUT_carry_4(regfile_n_9),
        .ADDROUT_carry_5(regfile_n_11),
        .ADDROUT_carry_6(regfile_n_10),
        .ADDROUT_carry__0(regfile_n_13),
        .ADDROUT_carry__0_0(regfile_n_12),
        .ADDROUT_carry__0_1(regfile_n_14),
        .ADDROUT_carry__0_2(regfile_n_15),
        .ADDROUT_carry__0_3(regfile_n_16),
        .ADDROUT_carry__0_4(regfile_n_17),
        .ADDROUT_carry__0_5(regfile_n_19),
        .ADDROUT_carry__0_6(regfile_n_18),
        .ADDROUT_carry__1(regfile_n_21),
        .ADDROUT_carry__1_0(regfile_n_20),
        .ADDROUT_carry__1_1(regfile_n_23),
        .ADDROUT_carry__1_2(regfile_n_22),
        .ADDROUT_carry__1_3(regfile_n_25),
        .ADDROUT_carry__1_4(regfile_n_24),
        .ADDROUT_carry__1_5(regfile_n_26),
        .ADDROUT_carry__1_6(regfile_n_27),
        .ADDROUT_carry__2(regfile_n_28),
        .ADDROUT_carry__2_0(regfile_n_29),
        .ADDROUT_carry__2_1(regfile_n_31),
        .ADDROUT_carry__2_2(regfile_n_30),
        .ADDROUT_carry__2_3(regfile_n_33),
        .ADDROUT_carry__2_4(regfile_n_32),
        .Clk_IBUF_BUFG(Clk_IBUF_BUFG),
        .D({state_controller_n_6,state_controller_n_7,state_controller_n_8,state_controller_n_9,state_controller_n_10,state_controller_n_11,state_controller_n_12,state_controller_n_13,state_controller_n_14,state_controller_n_15,state_controller_n_16,state_controller_n_17,state_controller_n_18,state_controller_n_19,state_controller_n_20,state_controller_n_21}),
        .DoutIR(DoutIR),
        .\Dout_reg[0] (state_controller_n_55),
        .\Dout_reg[0]_0 (state_controller_n_56),
        .\Dout_reg[0]_1 (state_controller_n_57),
        .\Dout_reg[0]_2 (state_controller_n_58),
        .\Dout_reg[10] (state_controller_n_45),
        .\Dout_reg[11] (state_controller_n_39),
        .\Dout_reg[12] (state_controller_n_63),
        .\Dout_reg[12]_0 (state_controller_n_64),
        .\Dout_reg[12]_1 (state_controller_n_65),
        .\Dout_reg[12]_2 (state_controller_n_66),
        .\Dout_reg[5] ({state_controller_n_53,state_controller_n_54}),
        .\Dout_reg[8] (state_controller_n_59),
        .\Dout_reg[8]_0 (state_controller_n_60),
        .\Dout_reg[8]_1 (state_controller_n_61),
        .\Dout_reg[8]_2 (state_controller_n_62),
        .\Dout_reg[9] (state_controller_n_44),
        .\FSM_sequential_State_reg[0]_0 (state_controller_n_4),
        .\FSM_sequential_State_reg[0]_1 (state_controller_n_67),
        .\FSM_sequential_State_reg[0]_2 (IRreg_n_36),
        .\FSM_sequential_State_reg[1]_0 (state_controller_n_0),
        .\FSM_sequential_State_reg[1]_1 (state_controller_n_22),
        .\FSM_sequential_State_reg[1]_2 (state_controller_n_40),
        .\FSM_sequential_State_reg[1]_3 (state_controller_n_42),
        .\FSM_sequential_State_reg[1]_4 (state_controller_n_85),
        .\FSM_sequential_State_reg[1]_5 (state_controller_n_86),
        .\FSM_sequential_State_reg[1]_6 (IRreg_n_35),
        .\FSM_sequential_State_reg[2]_0 (state_controller_n_38),
        .\FSM_sequential_State_reg[2]_1 (state_controller_n_43),
        .\FSM_sequential_State_reg[2]_2 (state_controller_n_46),
        .\FSM_sequential_State_reg[2]_3 (IRreg_n_37),
        .\FSM_sequential_State_reg[3]_0 (state_controller_n_41),
        .\FSM_sequential_State_reg[4]_0 (state_controller_n_5),
        .\FSM_sequential_State_reg[4]_1 (state_controller_n_68),
        .\FSM_sequential_State_reg[4]_10 (state_controller_n_77),
        .\FSM_sequential_State_reg[4]_11 (state_controller_n_78),
        .\FSM_sequential_State_reg[4]_12 (state_controller_n_79),
        .\FSM_sequential_State_reg[4]_13 (state_controller_n_80),
        .\FSM_sequential_State_reg[4]_14 (state_controller_n_81),
        .\FSM_sequential_State_reg[4]_15 (state_controller_n_82),
        .\FSM_sequential_State_reg[4]_16 (state_controller_n_83),
        .\FSM_sequential_State_reg[4]_17 (state_controller_n_84),
        .\FSM_sequential_State_reg[4]_18 (\FSM_sequential_State_reg[4] ),
        .\FSM_sequential_State_reg[4]_19 (IRreg_n_27),
        .\FSM_sequential_State_reg[4]_2 (state_controller_n_69),
        .\FSM_sequential_State_reg[4]_3 (state_controller_n_70),
        .\FSM_sequential_State_reg[4]_4 (state_controller_n_71),
        .\FSM_sequential_State_reg[4]_5 (state_controller_n_72),
        .\FSM_sequential_State_reg[4]_6 (state_controller_n_73),
        .\FSM_sequential_State_reg[4]_7 (state_controller_n_74),
        .\FSM_sequential_State_reg[4]_8 (state_controller_n_75),
        .\FSM_sequential_State_reg[4]_9 (state_controller_n_76),
        .Q(State),
        .\R6_reg[0] (PC_n_0),
        .\R6_reg[0]_0 (MDRreg_n_15),
        .\R6_reg[10] (PC_n_6),
        .\R6_reg[10]_0 (MDRreg_n_5),
        .\R6_reg[11] (PC_n_5),
        .\R6_reg[11]_0 (MDRreg_n_4),
        .\R6_reg[12] (PC_n_4),
        .\R6_reg[12]_0 (MDRreg_n_3),
        .\R6_reg[13] (PC_n_3),
        .\R6_reg[13]_0 (MDRreg_n_2),
        .\R6_reg[14] (PC_n_2),
        .\R6_reg[14]_0 (MDRreg_n_1),
        .\R6_reg[1] (PC_n_15),
        .\R6_reg[1]_0 (MDRreg_n_14),
        .\R6_reg[2] (PC_n_14),
        .\R6_reg[2]_0 (MDRreg_n_13),
        .\R6_reg[3] (PC_n_13),
        .\R6_reg[3]_0 (MDRreg_n_12),
        .\R6_reg[4] (PC_n_12),
        .\R6_reg[4]_0 (MDRreg_n_11),
        .\R6_reg[5] (PC_n_11),
        .\R6_reg[5]_0 (MDRreg_n_10),
        .\R6_reg[6] (PC_n_10),
        .\R6_reg[6]_0 (MDRreg_n_9),
        .\R6_reg[7] (PC_n_9),
        .\R6_reg[7]_0 (MDRreg_n_8),
        .\R6_reg[8] (PC_n_8),
        .\R6_reg[8]_0 (MDRreg_n_7),
        .\R6_reg[9] (PC_n_7),
        .\R6_reg[9]_0 (MDRreg_n_6),
        .\R7_reg[15] (PC_n_1),
        .\R7_reg[15]_0 (MDRreg_n_0),
        .Run_ah(Run_ah),
        .S({state_controller_n_49,state_controller_n_50,state_controller_n_51,state_controller_n_52}),
        .data3(data3),
        .douta(douta),
        .ena(ena),
        .hex_segB_OBUF(hex_segB_OBUF),
        .pc_In0(pc_In0[12:1]),
        .state(state),
        .we_select(we_select),
        .wea(wea));
endmodule

(* NotValidForBitStream *)
module slc3_sramtop
   (SW,
    Clk,
    Reset,
    Run,
    Continue,
    LED,
    hex_seg,
    hex_grid,
    hex_segB,
    hex_gridB);
  input [15:0]SW;
  input Clk;
  input Reset;
  input Run;
  input Continue;
  output [15:0]LED;
  output [7:0]hex_seg;
  output [3:0]hex_grid;
  output [7:0]hex_segB;
  output [3:0]hex_gridB;

  wire [9:0]ADDR;
  wire [5:0]ADDR_from_CPU;
  wire Clk;
  wire Clk_IBUF;
  wire Clk_IBUF_BUFG;
  wire Continue;
  wire Continue_IBUF;
  wire [15:0]Data_from_SRAM;
  wire [15:0]Data_to_SRAM;
  wire [15:0]LED;
  wire OE;
  wire Reset;
  wire Run;
  wire Run_IBUF;
  wire Run_ah;
  wire WE;
  wire \button_sync_n_0_[0] ;
  wire [3:0]hex_grid;
  wire [3:0]hex_gridB;
  wire [3:0]hex_gridB_OBUF;
  wire [7:0]hex_seg;
  wire [7:0]hex_segB;
  wire [0:0]hex_segB_OBUF;
  wire [6:0]hex_seg_OBUF;
  wire instaRam_n_20;
  wire [1:0]state;
  wire we_select;

  BUFG Clk_IBUF_BUFG_inst
       (.I(Clk_IBUF),
        .O(Clk_IBUF_BUFG));
  IBUF #(
    .CCIO_EN("TRUE")) 
    Clk_IBUF_inst
       (.I(Clk),
        .O(Clk_IBUF));
  IBUF #(
    .CCIO_EN("TRUE")) 
    Continue_IBUF_inst
       (.I(Continue),
        .O(Continue_IBUF));
  OBUFT \LED_OBUF[0]_inst 
       (.I(1'b0),
        .O(LED[0]),
        .T(1'b1));
  OBUFT \LED_OBUF[10]_inst 
       (.I(1'b0),
        .O(LED[10]),
        .T(1'b1));
  OBUFT \LED_OBUF[11]_inst 
       (.I(1'b0),
        .O(LED[11]),
        .T(1'b1));
  OBUFT \LED_OBUF[12]_inst 
       (.I(1'b0),
        .O(LED[12]),
        .T(1'b1));
  OBUFT \LED_OBUF[13]_inst 
       (.I(1'b0),
        .O(LED[13]),
        .T(1'b1));
  OBUFT \LED_OBUF[14]_inst 
       (.I(1'b0),
        .O(LED[14]),
        .T(1'b1));
  OBUFT \LED_OBUF[15]_inst 
       (.I(1'b0),
        .O(LED[15]),
        .T(1'b1));
  OBUFT \LED_OBUF[1]_inst 
       (.I(1'b0),
        .O(LED[1]),
        .T(1'b1));
  OBUFT \LED_OBUF[2]_inst 
       (.I(1'b0),
        .O(LED[2]),
        .T(1'b1));
  OBUFT \LED_OBUF[3]_inst 
       (.I(1'b0),
        .O(LED[3]),
        .T(1'b1));
  OBUFT \LED_OBUF[4]_inst 
       (.I(1'b0),
        .O(LED[4]),
        .T(1'b1));
  OBUFT \LED_OBUF[5]_inst 
       (.I(1'b0),
        .O(LED[5]),
        .T(1'b1));
  OBUFT \LED_OBUF[6]_inst 
       (.I(1'b0),
        .O(LED[6]),
        .T(1'b1));
  OBUFT \LED_OBUF[7]_inst 
       (.I(1'b0),
        .O(LED[7]),
        .T(1'b1));
  OBUFT \LED_OBUF[8]_inst 
       (.I(1'b0),
        .O(LED[8]),
        .T(1'b1));
  OBUFT \LED_OBUF[9]_inst 
       (.I(1'b0),
        .O(LED[9]),
        .T(1'b1));
  IBUF #(
    .CCIO_EN("TRUE")) 
    Reset_IBUF_inst
       (.I(Reset),
        .O(hex_segB_OBUF));
  IBUF #(
    .CCIO_EN("TRUE")) 
    Run_IBUF_inst
       (.I(Run),
        .O(Run_IBUF));
  sync \button_sync[0] 
       (.Clk_IBUF_BUFG(Clk_IBUF_BUFG),
        .Continue_IBUF(Continue_IBUF),
        .q_reg_0(\button_sync_n_0_[0] ));
  sync_0 \button_sync[1] 
       (.Clk_IBUF_BUFG(Clk_IBUF_BUFG),
        .Run_IBUF(Run_IBUF),
        .Run_ah(Run_ah));
  OBUF \hex_gridB_OBUF[0]_inst 
       (.I(hex_gridB_OBUF[0]),
        .O(hex_gridB[0]));
  OBUF \hex_gridB_OBUF[1]_inst 
       (.I(hex_gridB_OBUF[1]),
        .O(hex_gridB[1]));
  OBUF \hex_gridB_OBUF[2]_inst 
       (.I(hex_gridB_OBUF[2]),
        .O(hex_gridB[2]));
  OBUF \hex_gridB_OBUF[3]_inst 
       (.I(hex_gridB_OBUF[3]),
        .O(hex_gridB[3]));
  OBUF \hex_grid_OBUF[0]_inst 
       (.I(hex_gridB_OBUF[0]),
        .O(hex_grid[0]));
  OBUF \hex_grid_OBUF[1]_inst 
       (.I(hex_gridB_OBUF[1]),
        .O(hex_grid[1]));
  OBUF \hex_grid_OBUF[2]_inst 
       (.I(hex_gridB_OBUF[2]),
        .O(hex_grid[2]));
  OBUF \hex_grid_OBUF[3]_inst 
       (.I(hex_gridB_OBUF[3]),
        .O(hex_grid[3]));
  OBUF \hex_segB_OBUF[0]_inst 
       (.I(hex_segB_OBUF),
        .O(hex_segB[0]));
  OBUF \hex_segB_OBUF[1]_inst 
       (.I(hex_segB_OBUF),
        .O(hex_segB[1]));
  OBUF \hex_segB_OBUF[2]_inst 
       (.I(hex_segB_OBUF),
        .O(hex_segB[2]));
  OBUF \hex_segB_OBUF[3]_inst 
       (.I(hex_segB_OBUF),
        .O(hex_segB[3]));
  OBUF \hex_segB_OBUF[4]_inst 
       (.I(hex_segB_OBUF),
        .O(hex_segB[4]));
  OBUF \hex_segB_OBUF[5]_inst 
       (.I(hex_segB_OBUF),
        .O(hex_segB[5]));
  OBUF \hex_segB_OBUF[6]_inst 
       (.I(1'b1),
        .O(hex_segB[6]));
  OBUF \hex_segB_OBUF[7]_inst 
       (.I(1'b1),
        .O(hex_segB[7]));
  OBUF \hex_seg_OBUF[0]_inst 
       (.I(hex_seg_OBUF[0]),
        .O(hex_seg[0]));
  OBUF \hex_seg_OBUF[1]_inst 
       (.I(hex_seg_OBUF[1]),
        .O(hex_seg[1]));
  OBUF \hex_seg_OBUF[2]_inst 
       (.I(hex_seg_OBUF[2]),
        .O(hex_seg[2]));
  OBUF \hex_seg_OBUF[3]_inst 
       (.I(hex_seg_OBUF[3]),
        .O(hex_seg[3]));
  OBUF \hex_seg_OBUF[4]_inst 
       (.I(hex_seg_OBUF[4]),
        .O(hex_seg[4]));
  OBUF \hex_seg_OBUF[5]_inst 
       (.I(hex_seg_OBUF[5]),
        .O(hex_seg[5]));
  OBUF \hex_seg_OBUF[6]_inst 
       (.I(hex_seg_OBUF[6]),
        .O(hex_seg[6]));
  OBUF \hex_seg_OBUF[7]_inst 
       (.I(1'b1),
        .O(hex_seg[7]));
  Instantiateram instaRam
       (.ADDR_from_CPU(ADDR_from_CPU),
        .Clk_IBUF_BUFG(Clk_IBUF_BUFG),
        .addra({ADDR[9:7],instaRam_n_20,ADDR[5:0]}),
        .dina(Data_to_SRAM),
        .hex_segB_OBUF(hex_segB_OBUF),
        .state(state),
        .we_select(we_select));
  (* IMPORTED_FROM = "c:/Users/Azain/Documents/College/Fall 2023/ECE 385/Lab 5/Lab 5/Lab 5.gen/sources_1/ip/blk_mem_gen_0/blk_mem_gen_0.dcp" *) 
  (* IMPORTED_TYPE = "CHECKPOINT" *) 
  (* IS_IMPORTED *) 
  (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.2" *) 
  blk_mem_gen_0 ram0
       (.addra({ADDR[9:7],instaRam_n_20,ADDR[5:0]}),
        .clka(Clk_IBUF_BUFG),
        .dina(Data_to_SRAM),
        .douta(Data_from_SRAM),
        .ena(OE),
        .wea(WE));
  slc3 slc
       (.ADDR_from_CPU(ADDR_from_CPU),
        .Clk_IBUF_BUFG(Clk_IBUF_BUFG),
        .\FSM_sequential_State_reg[4] (\button_sync_n_0_[0] ),
        .Run_ah(Run_ah),
        .douta(Data_from_SRAM),
        .ena(OE),
        .hex_gridB_OBUF(hex_gridB_OBUF),
        .hex_segB_OBUF(hex_segB_OBUF),
        .hex_seg_OBUF(hex_seg_OBUF),
        .state(state),
        .we_select(we_select),
        .wea(WE));
endmodule

module sync
   (q_reg_0,
    Continue_IBUF,
    Clk_IBUF_BUFG);
  output q_reg_0;
  input Continue_IBUF;
  input Clk_IBUF_BUFG;

  wire Clk_IBUF_BUFG;
  wire Continue_IBUF;
  wire q_reg_0;

  FDRE #(
    .INIT(1'b0)) 
    q_reg
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(Continue_IBUF),
        .Q(q_reg_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "sync" *) 
module sync_0
   (Run_ah,
    Run_IBUF,
    Clk_IBUF_BUFG);
  output Run_ah;
  input Run_IBUF;
  input Clk_IBUF_BUFG;

  wire Clk_IBUF_BUFG;
  wire Run_IBUF;
  wire Run_ah;

  FDRE #(
    .INIT(1'b0)) 
    q_reg
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(Run_IBUF),
        .Q(Run_ah),
        .R(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2022.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
VHPlDkoDlWlBfBMvPBmGYmaek3s9hXXhjF28kllYPnaNm3TSnzzpXHWHc8Ye9/2L2yiQfJ1hTWou
Ia/zeQ8h9/dtr6QB5YkyW4wlb/LbMgXb+DGIXPSllNl0IMsRQIcQDbcQm1bO/nlhb+2pjxiuaQrl
DbvxoDwPs7z3LunRxsg=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
lmIhoX8hXuc7tNV1sXY1K2/gXL7Y7Hq73qQF7+x03UWWTRd3uhGmVQtOMVbhIW+66UkWUHiD26zL
fzqGor8bgSNGpSFyS11k4TwLQT4OfAMGO8C9Qmmh4+VENBnpS9TW+wHzCv8oUwht7xYtYRZvOvYK
F3fMppz2sBkUd1lciw98ZE/UmNkhqBuMfIYF43j45DEJ55PBhOZNg91Ls4v3qBHyBAaYPFFoMry3
d5Fw1PZyFQSEOSSpwgyds2aN0g6oIwl7zm0LJrM9VDAOxBUE50hk+oHr4jj8J8UhHQJnlEHm1Idm
rvxKygNKRvfSpa90NYxZJFYgqnrMYg+19+9aZA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
VkyCjO2onoeZWEoYQ/4ue7X5mkHyTYVW9xjdoTsGS4GdP/Q64VaCZL/jr6R8DVDXPMnH7tRMrDpo
jpYBnyzSgOkfgqM+96ioC2fDyAaG4gYgGLmrBR6qK3/mxXwAZZX+GJ9R/eWXkc9h8xN+gsSSX6/M
jIQCgeT6q7PB4dWT6KY=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Iub91V+TnhVlZCSLu6iKmFjix71y6/l83OPTs8uewWvkE7WcqYxEKi9fonXEkzAtWzuKwEUqnOlN
VBsNJqPUdKcd22q523mrdt89mpdosWD+hvZdO7ELhJniY5u9h49FFkubpN2JiUTcIcKEYxVNlds4
wyvaYUqbPVH5v2ooJwDdimS4GVn9HerCOgPwfshvQDNlMTxLcYju4v8BHMc5Rub9Q/ihvpQU74v2
ouZ9XIwA+C6pBLwvaqS8jE7HXOokgqJilaX/W/t+KEgiFry/txRTMU9WMD7tCN7lcfjCydmS3Lq+
3u6Hsr0S8BwNjcaDpZDnBTygUJd4JSqREnk33w==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
U46EWFmKmpZGaWfyL+dokyQtJtaOYsa7HCW/+fdtw9/yHKTWFpmqKBZngBj5rPkNhtTDDCJkqsYj
tUXg1j4tgIBaCQn9B0q/aG+B3gPLrudp9hLL25mVbsfiTzdekiV2hJMmhuMoavKKPJHC6zyW7kZi
80er82OQy8h+Df/fe6TRjH9xEt3/b80tRKUMbxkLfnnkAyyf1KfOhB6/uyI4mwXuQR+DsAbzybKR
YtXpOiW72tGrXTFlzcwbHamWZefqsilVpBw6V5dh33vYKGx50xwWpj76maAkpQrOpB7zufeldJe4
W1UOEN84AZdRTLkVSxamWo/wp8nP9fiGS/ItRw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_07", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
qczgIJYpE/SzErzK7eWJBGcDFEzDLm8cKbwJbPXuM6YnJxx44W+E60R3war7K2QGFAkOoCDUtDC7
SghJGF32btaDLzeKm0tQ669sBtQmMIaBrlt7I9QBkNM8zN9GL92qxNC9o3UVWMOYy5BmH8nUPgcE
O6lRubeltlrTuDe7UJQ2nEPHcXjpUJJ8dxktyW+LovBy1OxW8g4GRAsmEJsoOEg0HuDdWcc4IshJ
PvwPJ7LblELAKsdkSt65y9VaklaEm7MlH4ImlgIa74TgRmutLUbWxM1QYhGE5rAzFhGU5i3RJOdx
L3N7GGGvLMW2z9NSHbIFX+/eNII9fNJ9nZbgLA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Ti1NUgDv8YPk90APMwfu/mRr38QYwAxZfv0T6zQ89YS55t2EquEGVqrEafYX6rTydLOw8le1Oucv
f2oERpSSSTih/ScZneSZmuPE/Zh2BU1Ajv0j+/+0uEWXU+5lLPbDJjnapTmJXih1MYPf0SHpZZmE
BKj2IEBI9MPZlh6bxpa5BWJnyPdAvHf+UNaMXU9+pmbtrzUVebql4mFJu45Z3+ehmFY4FBW3zXMF
44C4TlHACLwL3vHVMCVfeKhgdVDbpE+/IFhTStz7mZ9h9RKGanQcs6YDVM1R+2RKA1QT1fX4FiQc
1V+FGmrm1ujxmFGXwpfNKByVlfCY0oWhRJCYYQ==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
HuEXFK0NXt09xU2yxxjng1OLsT+ZEM4EhqBgpr9D2ljw2vDaMBrqEsRQTc2B9soDq3ewDduHJXBd
OGYxkPnoN6LhjULtB2nTgjcH6NxA4puZ1ZNcndDndVBo8rTW5W1OqHq6InAG0CqPpTIkuqz3ECPl
EysI++MCDfH6tIzlekxJFIJ1McJsTq5rFuLzMMcrmkBxgcayDpOcCFuzZzCczxmt/cCCIKmDybwT
OQXmOcLJoYLP4sFu6R9c6xO8i6p++crv2N3eIxZHKbek9xBBZqQM9EYuEtsbkqAs9XZpa16i5njR
BDFxTKcP6r7JgFALJE89AZhBbate5JXWp0v4ECZD18aEL17CipwcWPutNMdG1apzSPP5y59n7rMG
yxBPz1gKHc3Emkl4WcO0hjICxqmO6dMXoY8JvBSf6ry2l0sH9Ihr3Bq5WWmlhPHnoaNr5jl//vNe
KfToWtn97eoVSt1LnmXXnSpdigbHr0UIg8AdkpdkuNRaWdVicDdgSo49

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
mokwst2bn6UxD6V9UdIgCIG1QQ/d0FiJqYGOTI2eHPV6YElaLjnJ8DnQmZnGS95o3x93FDOoa58C
RwYsX1fVoVtXkj1LuZq0k7q9vEe4T8xMjpkeYtIHY9k0Xhy1Lq/xRlfzGAf9fvf9e+f4r7aR/Sb/
uCZxxugG5niTwLENY1n3NthYL0jvo8Fmdw4Qg0nTCGWlVCws+09K0g9/lx6I9EcuHHemcHO3fOZG
lMc4NaPNozKwnyDMoWUkwiVxyFEPFaQLNYqzjvR+CqrWfhFLo96JWhL+eaDoNuZoBVYQtNH5ZwBL
BoO27Pw10lgcReGlZBz3BLO7T4ddynCx0+eSnw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
PiP7AjOQqqouyQMoBQqgWIDhUSViq94rIvGiIJ/UKMDspM/yXw1caE8AhWHTjYckC4yLpPAz5P6s
1Z6flzDPrzVwg4e59X2cc4IMCHhedna0rDO804njcc6amRDTeLsMLTkWfvomB4xwszm2AgT+PRnB
WHd09ZUDVFjiBXT+Oa9AicgGJHrX3w823yBPuAa704kje/SzgtiDpcTU1eLmLhLW7LpEd9KIHd9s
ER7Uk9Orws0Kq9PMTqMX4hMn5K5mFakOeOURiEbUjdv5RiIJ2g/PlQXSItM8fHsBTQa6fOaJwQTI
vHwK3a8ZBHpfT1YH+n7wNiNUZwD4SFXm1QVx4g==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Ul5ZfTHJwMctaNhYRortUZizYMPYRef7uYqPSuMkxsArnxI/cjGh+KRMwzV86hyp/6TXSJIjm5ec
2wX2UONdPN+DOJ84jYC4JbgJQrPnTj7ioD8uLX/WlyPcQzyF5keqFgj5eR5s13FskVWCuAWf5m9w
mhFEKFjVXDAr7gVgAJh/hL8P6Psrnf+LGfiM8JhnDepsHEYykGlpD3fzru2BGgqHWqPqFMcnyVGl
vysaIXiJz/eYKvO8RGcgd3DJAM/wPm9A0m/DWcmSnczOgTjoqkHcBg2H5uJMLvufzmjImi6LYEqq
v04ESDEN31cSUzqUYcayvMFOnI/WNsWbFIa5+Q==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 18928)
`pragma protect data_block
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
PHnTqQ==
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
