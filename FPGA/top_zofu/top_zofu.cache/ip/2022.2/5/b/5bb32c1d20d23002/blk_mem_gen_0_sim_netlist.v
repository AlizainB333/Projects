// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Thu Nov 30 19:39:04 2023
// Host        : PeePeePooPoo running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ blk_mem_gen_0_sim_netlist.v
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7s50csga324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_5 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 27696)
`pragma protect data_block
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
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
