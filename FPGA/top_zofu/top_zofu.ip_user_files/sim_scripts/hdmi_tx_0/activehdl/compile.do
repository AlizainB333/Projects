vlib work
vlib activehdl

vlib activehdl/xil_defaultlib

vmap xil_defaultlib activehdl/xil_defaultlib

vlog -work xil_defaultlib  -v2k5 \
"../../../../top_zofu.gen/sources_1/ip/hdmi_tx_0/hdl/encode.v" \
"../../../../top_zofu.gen/sources_1/ip/hdmi_tx_0/hdl/serdes_10_to_1.v" \
"../../../../top_zofu.gen/sources_1/ip/hdmi_tx_0/hdl/srldelay.v" \
"../../../../top_zofu.gen/sources_1/ip/hdmi_tx_0/hdl/hdmi_tx_v1_0.v" \
"../../../../top_zofu.gen/sources_1/ip/hdmi_tx_0/sim/hdmi_tx_0.v" \


vlog -work xil_defaultlib \
"glbl.v"

