vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xpm
vlib questa_lib/msim/xil_defaultlib

vmap xpm questa_lib/msim/xpm
vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xpm -64 -incr -mfcu -sv \
"/tools/Xilinx/Vivado/2021.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm -64 -93 \
"/tools/Xilinx/Vivado/2021.2/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work xil_defaultlib -64 -93 \
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

