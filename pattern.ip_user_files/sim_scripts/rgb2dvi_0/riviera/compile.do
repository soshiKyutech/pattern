vlib work
vlib riviera

vlib riviera/xpm
vlib riviera/xil_defaultlib

vmap xpm riviera/xpm
vmap xil_defaultlib riviera/xil_defaultlib

vlog -work xpm  -sv2k12 \
"/tools/Xilinx/Vivado/2021.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm -93 \
"/tools/Xilinx/Vivado/2021.2/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work xil_defaultlib -93 \
"../../../../pattern.gen/sources_1/ip/rgb2dvi_0/src/ClockGen.vhd" \
"../../../../pattern.gen/sources_1/ip/rgb2dvi_0/src/SyncAsync.vhd" \
"../../../../pattern.gen/sources_1/ip/rgb2dvi_0/src/SyncAsyncReset.vhd" \
"../../../../pattern.gen/sources_1/ip/rgb2dvi_0/src/DVI_Constants.vhd" \
"../../../../pattern.gen/sources_1/ip/rgb2dvi_0/src/OutputSERDES.vhd" \
"../../../../pattern.gen/sources_1/ip/rgb2dvi_0/src/TMDS_Encoder.vhd" \
"../../../../pattern.gen/sources_1/ip/rgb2dvi_0/src/rgb2dvi.vhd" \
"../../../../pattern.gen/sources_1/ip/rgb2dvi_0/sim/rgb2dvi_0.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

