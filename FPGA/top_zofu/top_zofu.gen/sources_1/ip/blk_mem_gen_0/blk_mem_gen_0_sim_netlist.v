// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Thu Nov 30 19:39:04 2023
// Host        : PeePeePooPoo running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/Xilinx/top_zofu/top_zofu.gen/sources_1/ip/blk_mem_gen_0/blk_mem_gen_0_sim_netlist.v
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
    wea,
    addra,
    dina,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [9:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;

  wire [9:0]addra;
  wire clka;
  wire [31:0]dina;
  wire [31:0]douta;
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
  wire [31:0]NLW_U0_doutb_UNCONNECTED;
  wire [9:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [9:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
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
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "1" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.95215 mW" *) 
  (* C_FAMILY = "spartan7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "0" *) 
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
  (* C_READ_DEPTH_A = "1000" *) 
  (* C_READ_DEPTH_B = "1000" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "32" *) 
  (* C_READ_WIDTH_B = "32" *) 
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
  (* C_WRITE_DEPTH_A = "1000" *) 
  (* C_WRITE_DEPTH_B = "1000" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
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
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[31:0]),
        .eccpipece(1'b0),
        .ena(1'b0),
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
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[31:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 27664)
`pragma protect data_block
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
87R+BqiB86nZYKAv83x4Yr+3GQ==
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
