// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Thu Sep 28 03:20:44 2023
// Host        : DESKTOP-D46B4R0 running 64-bit major release  (build 9200)
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_5 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 18944)
`pragma protect data_block
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
+HN5J57isDCagoVoIYLgUtAG59U=
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
