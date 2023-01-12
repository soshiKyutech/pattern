-makelib xcelium_lib/xpm -sv \
  "/tools/Xilinx/Vivado/2021.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "/tools/Xilinx/Vivado/2021.2/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../pattern.gen/sources_1/ip/rgb2dvi_0/src/ClockGen.vhd" \
  "../../../../pattern.gen/sources_1/ip/rgb2dvi_0/src/SyncAsync.vhd" \
  "../../../../pattern.gen/sources_1/ip/rgb2dvi_0/src/SyncAsyncReset.vhd" \
  "../../../../pattern.gen/sources_1/ip/rgb2dvi_0/src/DVI_Constants.vhd" \
  "../../../../pattern.gen/sources_1/ip/rgb2dvi_0/src/OutputSERDES.vhd" \
  "../../../../pattern.gen/sources_1/ip/rgb2dvi_0/src/TMDS_Encoder.vhd" \
  "../../../../pattern.gen/sources_1/ip/rgb2dvi_0/src/rgb2dvi.vhd" \
  "../../../../pattern.gen/sources_1/ip/rgb2dvi_0/sim/rgb2dvi_0.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

