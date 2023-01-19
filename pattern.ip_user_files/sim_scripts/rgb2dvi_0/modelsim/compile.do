vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/xil_defaultlib

vmap xpm modelsim_lib/msim/xpm
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xpm -64 -incr -mfcu -sv \
"/tools/Xilinx/Vivado/2021.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm -64 -93 \
"/tools/Xilinx/Vivado/2021.2/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../ip/rgb2dvi_0/src/ClockGen.vhd" \
"../../../ip/rgb2dvi_0/src/SyncAsync.vhd" \
"../../../ip/rgb2dvi_0/src/SyncAsyncReset.vhd" \
"../../../ip/rgb2dvi_0/src/DVI_Constants.vhd" \
"../../../ip/rgb2dvi_0/src/OutputSERDES.vhd" \
"../../../ip/rgb2dvi_0/src/TMDS_Encoder.vhd" \
"../../../ip/rgb2dvi_0/src/rgb2dvi.vhd" \
"../../../ip/rgb2dvi_0/sim/rgb2dvi_0.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

