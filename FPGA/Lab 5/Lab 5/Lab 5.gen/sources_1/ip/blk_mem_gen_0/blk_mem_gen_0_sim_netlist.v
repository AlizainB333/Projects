// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Thu Sep 28 03:20:46 2023
// Host        : DESKTOP-D46B4R0 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim {c:/Users/Azain/Documents/College/Fall 2023/ECE 385/Lab 5/Lab 5/Lab
//               5.gen/sources_1/ip/blk_mem_gen_0/blk_mem_gen_0_sim_netlist.v}
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7s50csga324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.2" *) 
(* NotValidForBitStream *)
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
9s+erQ==
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
