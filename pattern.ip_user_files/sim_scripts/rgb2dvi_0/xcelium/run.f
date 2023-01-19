-makelib xcelium_lib/xpm -sv \
  "/tools/Xilinx/Vivado/2021.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "/tools/Xilinx/Vivado/2021.2/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../ip/rgb2dvi_0/src/ClockGen.vhd" \
  "../../../ip/rgb2dvi_0/src/SyncAsync.vhd" \
  "../../../ip/rgb2dvi_0/src/SyncAsyncReset.vhd" \
  "../../../ip/rgb2dvi_0/src/DVI_Constants.vhd" \
  "../../../ip/rgb2dvi_0/src/OutputSERDES.vhd" \
  "../../../ip/rgb2dvi_0/src/TMDS_Encoder.vhd" \
  "../../../ip/rgb2dvi_0/src/rgb2dvi.vhd" \
  "../../../ip/rgb2dvi_0/sim/rgb2dvi_0.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

