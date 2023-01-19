// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2.1 (lin64) Build 3414424 Sun Dec 19 10:57:14 MST 2021
// Date        : Fri Jan 13 05:23:56 2023
// Host        : Strength running 64-bit Ubuntu 20.04.4 LTS
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               /home/soshi/workspace/vivado_tutorial/pattern/pattern.sim/sim_1/synth/timing/xsim/pattern_tb_time_synth.v
// Design      : pattern_hdmi
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module OutputSERDES
   (TMDS_Clk_p,
    TMDS_Clk_n,
    PixelClk,
    aRst);
  output TMDS_Clk_p;
  output TMDS_Clk_n;
  input PixelClk;
  input aRst;

  wire PixelClk;
  wire TMDS_Clk_n;
  wire TMDS_Clk_p;
  wire aRst;
  wire ocascade1;
  wire ocascade2;
  wire sDataOut;
  wire NLW_SerializerMaster_OFB_UNCONNECTED;
  wire NLW_SerializerMaster_SHIFTOUT1_UNCONNECTED;
  wire NLW_SerializerMaster_SHIFTOUT2_UNCONNECTED;
  wire NLW_SerializerMaster_TBYTEOUT_UNCONNECTED;
  wire NLW_SerializerMaster_TFB_UNCONNECTED;
  wire NLW_SerializerMaster_TQ_UNCONNECTED;
  wire NLW_SerializerSlave_OFB_UNCONNECTED;
  wire NLW_SerializerSlave_OQ_UNCONNECTED;
  wire NLW_SerializerSlave_TBYTEOUT_UNCONNECTED;
  wire NLW_SerializerSlave_TFB_UNCONNECTED;
  wire NLW_SerializerSlave_TQ_UNCONNECTED;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  OBUFDS OutputBuffer
       (.I(sDataOut),
        .O(TMDS_Clk_p),
        .OB(TMDS_Clk_n));
  (* BOX_TYPE = "PRIMITIVE" *) 
  OSERDESE2 #(
    .DATA_RATE_OQ("DDR"),
    .DATA_RATE_TQ("SDR"),
    .DATA_WIDTH(10),
    .INIT_OQ(1'b0),
    .INIT_TQ(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .IS_D3_INVERTED(1'b0),
    .IS_D4_INVERTED(1'b0),
    .IS_D5_INVERTED(1'b0),
    .IS_D6_INVERTED(1'b0),
    .IS_D7_INVERTED(1'b0),
    .IS_D8_INVERTED(1'b0),
    .IS_T1_INVERTED(1'b0),
    .IS_T2_INVERTED(1'b0),
    .IS_T3_INVERTED(1'b0),
    .IS_T4_INVERTED(1'b0),
    .SERDES_MODE("MASTER"),
    .SRVAL_OQ(1'b0),
    .SRVAL_TQ(1'b0),
    .TBYTE_CTL("FALSE"),
    .TBYTE_SRC("FALSE"),
    .TRISTATE_WIDTH(1)) 
    SerializerMaster
       (.CLK(1'b0),
        .CLKDIV(PixelClk),
        .D1(1'b0),
        .D2(1'b0),
        .D3(1'b0),
        .D4(1'b0),
        .D5(1'b0),
        .D6(1'b1),
        .D7(1'b1),
        .D8(1'b1),
        .OCE(1'b1),
        .OFB(NLW_SerializerMaster_OFB_UNCONNECTED),
        .OQ(sDataOut),
        .RST(aRst),
        .SHIFTIN1(ocascade1),
        .SHIFTIN2(ocascade2),
        .SHIFTOUT1(NLW_SerializerMaster_SHIFTOUT1_UNCONNECTED),
        .SHIFTOUT2(NLW_SerializerMaster_SHIFTOUT2_UNCONNECTED),
        .T1(1'b0),
        .T2(1'b0),
        .T3(1'b0),
        .T4(1'b0),
        .TBYTEIN(1'b0),
        .TBYTEOUT(NLW_SerializerMaster_TBYTEOUT_UNCONNECTED),
        .TCE(1'b0),
        .TFB(NLW_SerializerMaster_TFB_UNCONNECTED),
        .TQ(NLW_SerializerMaster_TQ_UNCONNECTED));
  (* BOX_TYPE = "PRIMITIVE" *) 
  OSERDESE2 #(
    .DATA_RATE_OQ("DDR"),
    .DATA_RATE_TQ("SDR"),
    .DATA_WIDTH(10),
    .INIT_OQ(1'b0),
    .INIT_TQ(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .IS_D3_INVERTED(1'b0),
    .IS_D4_INVERTED(1'b0),
    .IS_D5_INVERTED(1'b0),
    .IS_D6_INVERTED(1'b0),
    .IS_D7_INVERTED(1'b0),
    .IS_D8_INVERTED(1'b0),
    .IS_T1_INVERTED(1'b0),
    .IS_T2_INVERTED(1'b0),
    .IS_T3_INVERTED(1'b0),
    .IS_T4_INVERTED(1'b0),
    .SERDES_MODE("SLAVE"),
    .SRVAL_OQ(1'b0),
    .SRVAL_TQ(1'b0),
    .TBYTE_CTL("FALSE"),
    .TBYTE_SRC("FALSE"),
    .TRISTATE_WIDTH(1)) 
    SerializerSlave
       (.CLK(1'b0),
        .CLKDIV(PixelClk),
        .D1(1'b0),
        .D2(1'b0),
        .D3(1'b1),
        .D4(1'b1),
        .D5(1'b0),
        .D6(1'b0),
        .D7(1'b0),
        .D8(1'b0),
        .OCE(1'b1),
        .OFB(NLW_SerializerSlave_OFB_UNCONNECTED),
        .OQ(NLW_SerializerSlave_OQ_UNCONNECTED),
        .RST(aRst),
        .SHIFTIN1(1'b0),
        .SHIFTIN2(1'b0),
        .SHIFTOUT1(ocascade1),
        .SHIFTOUT2(ocascade2),
        .T1(1'b0),
        .T2(1'b0),
        .T3(1'b0),
        .T4(1'b0),
        .TBYTEIN(1'b0),
        .TBYTEOUT(NLW_SerializerSlave_TBYTEOUT_UNCONNECTED),
        .TCE(1'b0),
        .TFB(NLW_SerializerSlave_TFB_UNCONNECTED),
        .TQ(NLW_SerializerSlave_TQ_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "OutputSERDES" *) 
module OutputSERDES_0
   (TMDS_Data_p,
    TMDS_Data_n,
    PixelClk,
    pDataOut,
    aRst);
  output [0:0]TMDS_Data_p;
  output [0:0]TMDS_Data_n;
  input PixelClk;
  input [3:0]pDataOut;
  input aRst;

  wire PixelClk;
  wire [0:0]TMDS_Data_n;
  wire [0:0]TMDS_Data_p;
  wire aRst;
  wire ocascade1;
  wire ocascade2;
  wire [3:0]pDataOut;
  wire sDataOut;
  wire NLW_SerializerMaster_OFB_UNCONNECTED;
  wire NLW_SerializerMaster_SHIFTOUT1_UNCONNECTED;
  wire NLW_SerializerMaster_SHIFTOUT2_UNCONNECTED;
  wire NLW_SerializerMaster_TBYTEOUT_UNCONNECTED;
  wire NLW_SerializerMaster_TFB_UNCONNECTED;
  wire NLW_SerializerMaster_TQ_UNCONNECTED;
  wire NLW_SerializerSlave_OFB_UNCONNECTED;
  wire NLW_SerializerSlave_OQ_UNCONNECTED;
  wire NLW_SerializerSlave_TBYTEOUT_UNCONNECTED;
  wire NLW_SerializerSlave_TFB_UNCONNECTED;
  wire NLW_SerializerSlave_TQ_UNCONNECTED;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  OBUFDS OutputBuffer
       (.I(sDataOut),
        .O(TMDS_Data_p),
        .OB(TMDS_Data_n));
  (* BOX_TYPE = "PRIMITIVE" *) 
  OSERDESE2 #(
    .DATA_RATE_OQ("DDR"),
    .DATA_RATE_TQ("SDR"),
    .DATA_WIDTH(10),
    .INIT_OQ(1'b0),
    .INIT_TQ(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .IS_D3_INVERTED(1'b0),
    .IS_D4_INVERTED(1'b0),
    .IS_D5_INVERTED(1'b0),
    .IS_D6_INVERTED(1'b0),
    .IS_D7_INVERTED(1'b0),
    .IS_D8_INVERTED(1'b0),
    .IS_T1_INVERTED(1'b0),
    .IS_T2_INVERTED(1'b0),
    .IS_T3_INVERTED(1'b0),
    .IS_T4_INVERTED(1'b0),
    .SERDES_MODE("MASTER"),
    .SRVAL_OQ(1'b0),
    .SRVAL_TQ(1'b0),
    .TBYTE_CTL("FALSE"),
    .TBYTE_SRC("FALSE"),
    .TRISTATE_WIDTH(1)) 
    SerializerMaster
       (.CLK(1'b0),
        .CLKDIV(PixelClk),
        .D1(pDataOut[1]),
        .D2(pDataOut[1]),
        .D3(pDataOut[0]),
        .D4(pDataOut[1]),
        .D5(pDataOut[0]),
        .D6(pDataOut[1]),
        .D7(pDataOut[0]),
        .D8(pDataOut[1]),
        .OCE(1'b1),
        .OFB(NLW_SerializerMaster_OFB_UNCONNECTED),
        .OQ(sDataOut),
        .RST(aRst),
        .SHIFTIN1(ocascade1),
        .SHIFTIN2(ocascade2),
        .SHIFTOUT1(NLW_SerializerMaster_SHIFTOUT1_UNCONNECTED),
        .SHIFTOUT2(NLW_SerializerMaster_SHIFTOUT2_UNCONNECTED),
        .T1(1'b0),
        .T2(1'b0),
        .T3(1'b0),
        .T4(1'b0),
        .TBYTEIN(1'b0),
        .TBYTEOUT(NLW_SerializerMaster_TBYTEOUT_UNCONNECTED),
        .TCE(1'b0),
        .TFB(NLW_SerializerMaster_TFB_UNCONNECTED),
        .TQ(NLW_SerializerMaster_TQ_UNCONNECTED));
  (* BOX_TYPE = "PRIMITIVE" *) 
  OSERDESE2 #(
    .DATA_RATE_OQ("DDR"),
    .DATA_RATE_TQ("SDR"),
    .DATA_WIDTH(10),
    .INIT_OQ(1'b0),
    .INIT_TQ(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .IS_D3_INVERTED(1'b0),
    .IS_D4_INVERTED(1'b0),
    .IS_D5_INVERTED(1'b0),
    .IS_D6_INVERTED(1'b0),
    .IS_D7_INVERTED(1'b0),
    .IS_D8_INVERTED(1'b0),
    .IS_T1_INVERTED(1'b0),
    .IS_T2_INVERTED(1'b0),
    .IS_T3_INVERTED(1'b0),
    .IS_T4_INVERTED(1'b0),
    .SERDES_MODE("SLAVE"),
    .SRVAL_OQ(1'b0),
    .SRVAL_TQ(1'b0),
    .TBYTE_CTL("FALSE"),
    .TBYTE_SRC("FALSE"),
    .TRISTATE_WIDTH(1)) 
    SerializerSlave
       (.CLK(1'b0),
        .CLKDIV(PixelClk),
        .D1(1'b0),
        .D2(1'b0),
        .D3(pDataOut[2]),
        .D4(pDataOut[3]),
        .D5(1'b0),
        .D6(1'b0),
        .D7(1'b0),
        .D8(1'b0),
        .OCE(1'b1),
        .OFB(NLW_SerializerSlave_OFB_UNCONNECTED),
        .OQ(NLW_SerializerSlave_OQ_UNCONNECTED),
        .RST(aRst),
        .SHIFTIN1(1'b0),
        .SHIFTIN2(1'b0),
        .SHIFTOUT1(ocascade1),
        .SHIFTOUT2(ocascade2),
        .T1(1'b0),
        .T2(1'b0),
        .T3(1'b0),
        .T4(1'b0),
        .TBYTEIN(1'b0),
        .TBYTEOUT(NLW_SerializerSlave_TBYTEOUT_UNCONNECTED),
        .TCE(1'b0),
        .TFB(NLW_SerializerSlave_TFB_UNCONNECTED),
        .TQ(NLW_SerializerSlave_TQ_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "OutputSERDES" *) 
module OutputSERDES_2
   (TMDS_Data_p,
    TMDS_Data_n,
    PixelClk,
    pDataOut,
    out);
  output [0:0]TMDS_Data_p;
  output [0:0]TMDS_Data_n;
  input PixelClk;
  input [3:0]pDataOut;
  input [0:0]out;

  wire PixelClk;
  wire [0:0]TMDS_Data_n;
  wire [0:0]TMDS_Data_p;
  wire ocascade1;
  wire ocascade2;
  wire [0:0]out;
  wire [3:0]pDataOut;
  wire sDataOut;
  wire NLW_SerializerMaster_OFB_UNCONNECTED;
  wire NLW_SerializerMaster_SHIFTOUT1_UNCONNECTED;
  wire NLW_SerializerMaster_SHIFTOUT2_UNCONNECTED;
  wire NLW_SerializerMaster_TBYTEOUT_UNCONNECTED;
  wire NLW_SerializerMaster_TFB_UNCONNECTED;
  wire NLW_SerializerMaster_TQ_UNCONNECTED;
  wire NLW_SerializerSlave_OFB_UNCONNECTED;
  wire NLW_SerializerSlave_OQ_UNCONNECTED;
  wire NLW_SerializerSlave_TBYTEOUT_UNCONNECTED;
  wire NLW_SerializerSlave_TFB_UNCONNECTED;
  wire NLW_SerializerSlave_TQ_UNCONNECTED;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  OBUFDS OutputBuffer
       (.I(sDataOut),
        .O(TMDS_Data_p),
        .OB(TMDS_Data_n));
  (* BOX_TYPE = "PRIMITIVE" *) 
  OSERDESE2 #(
    .DATA_RATE_OQ("DDR"),
    .DATA_RATE_TQ("SDR"),
    .DATA_WIDTH(10),
    .INIT_OQ(1'b0),
    .INIT_TQ(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .IS_D3_INVERTED(1'b0),
    .IS_D4_INVERTED(1'b0),
    .IS_D5_INVERTED(1'b0),
    .IS_D6_INVERTED(1'b0),
    .IS_D7_INVERTED(1'b0),
    .IS_D8_INVERTED(1'b0),
    .IS_T1_INVERTED(1'b0),
    .IS_T2_INVERTED(1'b0),
    .IS_T3_INVERTED(1'b0),
    .IS_T4_INVERTED(1'b0),
    .SERDES_MODE("MASTER"),
    .SRVAL_OQ(1'b0),
    .SRVAL_TQ(1'b0),
    .TBYTE_CTL("FALSE"),
    .TBYTE_SRC("FALSE"),
    .TRISTATE_WIDTH(1)) 
    SerializerMaster
       (.CLK(1'b0),
        .CLKDIV(PixelClk),
        .D1(pDataOut[1]),
        .D2(pDataOut[1]),
        .D3(pDataOut[0]),
        .D4(pDataOut[1]),
        .D5(pDataOut[0]),
        .D6(pDataOut[1]),
        .D7(pDataOut[0]),
        .D8(pDataOut[1]),
        .OCE(1'b1),
        .OFB(NLW_SerializerMaster_OFB_UNCONNECTED),
        .OQ(sDataOut),
        .RST(out),
        .SHIFTIN1(ocascade1),
        .SHIFTIN2(ocascade2),
        .SHIFTOUT1(NLW_SerializerMaster_SHIFTOUT1_UNCONNECTED),
        .SHIFTOUT2(NLW_SerializerMaster_SHIFTOUT2_UNCONNECTED),
        .T1(1'b0),
        .T2(1'b0),
        .T3(1'b0),
        .T4(1'b0),
        .TBYTEIN(1'b0),
        .TBYTEOUT(NLW_SerializerMaster_TBYTEOUT_UNCONNECTED),
        .TCE(1'b0),
        .TFB(NLW_SerializerMaster_TFB_UNCONNECTED),
        .TQ(NLW_SerializerMaster_TQ_UNCONNECTED));
  (* BOX_TYPE = "PRIMITIVE" *) 
  OSERDESE2 #(
    .DATA_RATE_OQ("DDR"),
    .DATA_RATE_TQ("SDR"),
    .DATA_WIDTH(10),
    .INIT_OQ(1'b0),
    .INIT_TQ(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .IS_D3_INVERTED(1'b0),
    .IS_D4_INVERTED(1'b0),
    .IS_D5_INVERTED(1'b0),
    .IS_D6_INVERTED(1'b0),
    .IS_D7_INVERTED(1'b0),
    .IS_D8_INVERTED(1'b0),
    .IS_T1_INVERTED(1'b0),
    .IS_T2_INVERTED(1'b0),
    .IS_T3_INVERTED(1'b0),
    .IS_T4_INVERTED(1'b0),
    .SERDES_MODE("SLAVE"),
    .SRVAL_OQ(1'b0),
    .SRVAL_TQ(1'b0),
    .TBYTE_CTL("FALSE"),
    .TBYTE_SRC("FALSE"),
    .TRISTATE_WIDTH(1)) 
    SerializerSlave
       (.CLK(1'b0),
        .CLKDIV(PixelClk),
        .D1(1'b0),
        .D2(1'b0),
        .D3(pDataOut[2]),
        .D4(pDataOut[3]),
        .D5(1'b0),
        .D6(1'b0),
        .D7(1'b0),
        .D8(1'b0),
        .OCE(1'b1),
        .OFB(NLW_SerializerSlave_OFB_UNCONNECTED),
        .OQ(NLW_SerializerSlave_OQ_UNCONNECTED),
        .RST(out),
        .SHIFTIN1(1'b0),
        .SHIFTIN2(1'b0),
        .SHIFTOUT1(ocascade1),
        .SHIFTOUT2(ocascade2),
        .T1(1'b0),
        .T2(1'b0),
        .T3(1'b0),
        .T4(1'b0),
        .TBYTEIN(1'b0),
        .TBYTEOUT(NLW_SerializerSlave_TBYTEOUT_UNCONNECTED),
        .TCE(1'b0),
        .TFB(NLW_SerializerSlave_TFB_UNCONNECTED),
        .TQ(NLW_SerializerSlave_TQ_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "OutputSERDES" *) 
module OutputSERDES_4
   (TMDS_Data_p,
    TMDS_Data_n,
    PixelClk,
    pDataOut,
    out);
  output [0:0]TMDS_Data_p;
  output [0:0]TMDS_Data_n;
  input PixelClk;
  input [3:0]pDataOut;
  input [0:0]out;

  wire PixelClk;
  wire [0:0]TMDS_Data_n;
  wire [0:0]TMDS_Data_p;
  wire ocascade1;
  wire ocascade2;
  wire [0:0]out;
  wire [3:0]pDataOut;
  wire sDataOut;
  wire NLW_SerializerMaster_OFB_UNCONNECTED;
  wire NLW_SerializerMaster_SHIFTOUT1_UNCONNECTED;
  wire NLW_SerializerMaster_SHIFTOUT2_UNCONNECTED;
  wire NLW_SerializerMaster_TBYTEOUT_UNCONNECTED;
  wire NLW_SerializerMaster_TFB_UNCONNECTED;
  wire NLW_SerializerMaster_TQ_UNCONNECTED;
  wire NLW_SerializerSlave_OFB_UNCONNECTED;
  wire NLW_SerializerSlave_OQ_UNCONNECTED;
  wire NLW_SerializerSlave_TBYTEOUT_UNCONNECTED;
  wire NLW_SerializerSlave_TFB_UNCONNECTED;
  wire NLW_SerializerSlave_TQ_UNCONNECTED;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  OBUFDS OutputBuffer
       (.I(sDataOut),
        .O(TMDS_Data_p),
        .OB(TMDS_Data_n));
  (* BOX_TYPE = "PRIMITIVE" *) 
  OSERDESE2 #(
    .DATA_RATE_OQ("DDR"),
    .DATA_RATE_TQ("SDR"),
    .DATA_WIDTH(10),
    .INIT_OQ(1'b0),
    .INIT_TQ(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .IS_D3_INVERTED(1'b0),
    .IS_D4_INVERTED(1'b0),
    .IS_D5_INVERTED(1'b0),
    .IS_D6_INVERTED(1'b0),
    .IS_D7_INVERTED(1'b0),
    .IS_D8_INVERTED(1'b0),
    .IS_T1_INVERTED(1'b0),
    .IS_T2_INVERTED(1'b0),
    .IS_T3_INVERTED(1'b0),
    .IS_T4_INVERTED(1'b0),
    .SERDES_MODE("MASTER"),
    .SRVAL_OQ(1'b0),
    .SRVAL_TQ(1'b0),
    .TBYTE_CTL("FALSE"),
    .TBYTE_SRC("FALSE"),
    .TRISTATE_WIDTH(1)) 
    SerializerMaster
       (.CLK(1'b0),
        .CLKDIV(PixelClk),
        .D1(pDataOut[1]),
        .D2(pDataOut[1]),
        .D3(pDataOut[0]),
        .D4(pDataOut[1]),
        .D5(pDataOut[0]),
        .D6(pDataOut[1]),
        .D7(pDataOut[0]),
        .D8(pDataOut[1]),
        .OCE(1'b1),
        .OFB(NLW_SerializerMaster_OFB_UNCONNECTED),
        .OQ(sDataOut),
        .RST(out),
        .SHIFTIN1(ocascade1),
        .SHIFTIN2(ocascade2),
        .SHIFTOUT1(NLW_SerializerMaster_SHIFTOUT1_UNCONNECTED),
        .SHIFTOUT2(NLW_SerializerMaster_SHIFTOUT2_UNCONNECTED),
        .T1(1'b0),
        .T2(1'b0),
        .T3(1'b0),
        .T4(1'b0),
        .TBYTEIN(1'b0),
        .TBYTEOUT(NLW_SerializerMaster_TBYTEOUT_UNCONNECTED),
        .TCE(1'b0),
        .TFB(NLW_SerializerMaster_TFB_UNCONNECTED),
        .TQ(NLW_SerializerMaster_TQ_UNCONNECTED));
  (* BOX_TYPE = "PRIMITIVE" *) 
  OSERDESE2 #(
    .DATA_RATE_OQ("DDR"),
    .DATA_RATE_TQ("SDR"),
    .DATA_WIDTH(10),
    .INIT_OQ(1'b0),
    .INIT_TQ(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .IS_D3_INVERTED(1'b0),
    .IS_D4_INVERTED(1'b0),
    .IS_D5_INVERTED(1'b0),
    .IS_D6_INVERTED(1'b0),
    .IS_D7_INVERTED(1'b0),
    .IS_D8_INVERTED(1'b0),
    .IS_T1_INVERTED(1'b0),
    .IS_T2_INVERTED(1'b0),
    .IS_T3_INVERTED(1'b0),
    .IS_T4_INVERTED(1'b0),
    .SERDES_MODE("SLAVE"),
    .SRVAL_OQ(1'b0),
    .SRVAL_TQ(1'b0),
    .TBYTE_CTL("FALSE"),
    .TBYTE_SRC("FALSE"),
    .TRISTATE_WIDTH(1)) 
    SerializerSlave
       (.CLK(1'b0),
        .CLKDIV(PixelClk),
        .D1(1'b0),
        .D2(1'b0),
        .D3(pDataOut[2]),
        .D4(pDataOut[3]),
        .D5(1'b0),
        .D6(1'b0),
        .D7(1'b0),
        .D8(1'b0),
        .OCE(1'b1),
        .OFB(NLW_SerializerSlave_OFB_UNCONNECTED),
        .OQ(NLW_SerializerSlave_OQ_UNCONNECTED),
        .RST(out),
        .SHIFTIN1(1'b0),
        .SHIFTIN2(1'b0),
        .SHIFTOUT1(ocascade1),
        .SHIFTOUT2(ocascade2),
        .T1(1'b0),
        .T2(1'b0),
        .T3(1'b0),
        .T4(1'b0),
        .TBYTEIN(1'b0),
        .TBYTEOUT(NLW_SerializerSlave_TBYTEOUT_UNCONNECTED),
        .TCE(1'b0),
        .TFB(NLW_SerializerSlave_TFB_UNCONNECTED),
        .TQ(NLW_SerializerSlave_TQ_UNCONNECTED));
endmodule

module ResetBridge
   (out,
    aRst,
    PixelClk);
  output [0:0]out;
  input aRst;
  input PixelClk;

  wire PixelClk;
  (* RTL_KEEP = "true" *) wire aRst_int;
  wire [0:0]out;

  assign aRst_int = aRst;
  SyncAsync SyncAsyncx
       (.AS(aRst_int),
        .PixelClk(PixelClk),
        .out(out));
endmodule

module SyncAsync
   (out,
    PixelClk,
    AS);
  output [0:0]out;
  input PixelClk;
  input [0:0]AS;

  wire [0:0]AS;
  wire PixelClk;
  (* async_reg = "true" *) wire [1:0]oSyncStages;

  assign out[0] = oSyncStages[1];
  initial assign \oSyncStages_reg[0] .notifier = 1'bx;
(* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b1),
    .XON("FALSE")) 
    \oSyncStages_reg[0] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(AS),
        .Q(oSyncStages[0]));
  initial assign \oSyncStages_reg[1] .notifier = 1'bx;
(* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b1),
    .XON("FALSE")) 
    \oSyncStages_reg[1] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(oSyncStages[0]),
        .PRE(AS),
        .Q(oSyncStages[1]));
endmodule

module TMDS_Encoder
   (SR,
    Q,
    vid_pHSync,
    PixelClk,
    vid_pVSync,
    vid_pVDE,
    vid_pData);
  output [0:0]SR;
  output [3:0]Q;
  input vid_pHSync;
  input PixelClk;
  input vid_pVSync;
  input vid_pVDE;
  input [0:0]vid_pData;

  wire \DataEncoders[2].DataEncoder/pVde_2 ;
  wire PixelClk;
  wire [3:0]Q;
  wire [0:0]SR;
  wire [4:1]cnt_t_2;
  wire [4:1]cnt_t_3;
  wire \n1q_m_2_reg_n_0_[3] ;
  wire pC0_1;
  wire pC0_2;
  wire pC1_1;
  wire pC1_2;
  wire \pDataOutRaw[2]_i_2_n_0 ;
  wire \pDataOutRaw[9]_i_1_n_0 ;
  wire \pDataOutRaw[9]_i_3_n_0 ;
  wire \pDataOut_1_reg_n_0_[0] ;
  wire pVde_1;
  wire [8:8]q_m_2;
  wire \q_m_2[8]_i_1_n_0 ;
  wire [9:0]q_out_20_in;
  wire [0:0]vid_pData;
  wire vid_pHSync;
  wire vid_pVDE;
  wire vid_pVSync;

  LUT6 #(
    .INIT(64'h9999666666629998)) 
    \cnt_t_3[1]_i_1 
       (.I0(cnt_t_3[4]),
        .I1(\n1q_m_2_reg_n_0_[3] ),
        .I2(cnt_t_3[3]),
        .I3(cnt_t_3[2]),
        .I4(q_m_2),
        .I5(cnt_t_3[1]),
        .O(cnt_t_2[1]));
  LUT6 #(
    .INIT(64'h99FFFF6666000098)) 
    \cnt_t_3[2]_i_1 
       (.I0(cnt_t_3[4]),
        .I1(\n1q_m_2_reg_n_0_[3] ),
        .I2(cnt_t_3[3]),
        .I3(q_m_2),
        .I4(cnt_t_3[1]),
        .I5(cnt_t_3[2]),
        .O(cnt_t_2[2]));
  LUT6 #(
    .INIT(64'hACCC5333333ACCC4)) 
    \cnt_t_3[3]_i_1 
       (.I0(cnt_t_3[4]),
        .I1(\n1q_m_2_reg_n_0_[3] ),
        .I2(cnt_t_3[2]),
        .I3(cnt_t_3[1]),
        .I4(cnt_t_3[3]),
        .I5(q_m_2),
        .O(cnt_t_2[3]));
  LUT1 #(
    .INIT(2'h1)) 
    \cnt_t_3[4]_i_1 
       (.I0(\DataEncoders[2].DataEncoder/pVde_2 ),
        .O(SR));
  LUT6 #(
    .INIT(64'hEA0002AAAA7FFFAA)) 
    \cnt_t_3[4]_i_2 
       (.I0(cnt_t_3[4]),
        .I1(cnt_t_3[1]),
        .I2(cnt_t_3[2]),
        .I3(\n1q_m_2_reg_n_0_[3] ),
        .I4(q_m_2),
        .I5(cnt_t_3[3]),
        .O(cnt_t_2[4]));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_t_3_reg[1] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(cnt_t_2[1]),
        .Q(cnt_t_3[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_t_3_reg[2] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(cnt_t_2[2]),
        .Q(cnt_t_3[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_t_3_reg[3] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(cnt_t_2[3]),
        .Q(cnt_t_3[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_t_3_reg[4] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(cnt_t_2[4]),
        .Q(cnt_t_3[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \n1q_m_2_reg[3] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(\pDataOut_1_reg_n_0_[0] ),
        .Q(\n1q_m_2_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    pC0_1_reg
       (.C(PixelClk),
        .CE(1'b1),
        .D(vid_pHSync),
        .Q(pC0_1),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    pC0_2_reg
       (.C(PixelClk),
        .CE(1'b1),
        .D(pC0_1),
        .Q(pC0_2),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    pC1_1_reg
       (.C(PixelClk),
        .CE(1'b1),
        .D(vid_pVSync),
        .Q(pC1_1),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    pC1_2_reg
       (.C(PixelClk),
        .CE(1'b1),
        .D(pC1_1),
        .Q(pC1_2),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hB8BB)) 
    \pDataOutRaw[0]_i_1 
       (.I0(\pDataOutRaw[2]_i_2_n_0 ),
        .I1(\DataEncoders[2].DataEncoder/pVde_2 ),
        .I2(pC0_2),
        .I3(pC1_2),
        .O(q_out_20_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h88B8)) 
    \pDataOutRaw[2]_i_1 
       (.I0(\pDataOutRaw[2]_i_2_n_0 ),
        .I1(\DataEncoders[2].DataEncoder/pVde_2 ),
        .I2(pC1_2),
        .I3(pC0_2),
        .O(q_out_20_in[2]));
  LUT6 #(
    .INIT(64'hFFFFFFFF00100001)) 
    \pDataOutRaw[2]_i_2 
       (.I0(cnt_t_3[3]),
        .I1(cnt_t_3[1]),
        .I2(q_m_2),
        .I3(cnt_t_3[2]),
        .I4(\n1q_m_2_reg_n_0_[3] ),
        .I5(cnt_t_3[4]),
        .O(\pDataOutRaw[2]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h88B8)) 
    \pDataOutRaw[8]_i_1 
       (.I0(q_m_2),
        .I1(\DataEncoders[2].DataEncoder/pVde_2 ),
        .I2(pC1_2),
        .I3(pC0_2),
        .O(q_out_20_in[8]));
  LUT3 #(
    .INIT(8'h01)) 
    \pDataOutRaw[9]_i_1 
       (.I0(pC0_2),
        .I1(pC1_2),
        .I2(\DataEncoders[2].DataEncoder/pVde_2 ),
        .O(\pDataOutRaw[9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hB88B)) 
    \pDataOutRaw[9]_i_2 
       (.I0(\pDataOutRaw[9]_i_3_n_0 ),
        .I1(\DataEncoders[2].DataEncoder/pVde_2 ),
        .I2(pC0_2),
        .I3(pC1_2),
        .O(q_out_20_in[9]));
  LUT6 #(
    .INIT(64'h6666666666666267)) 
    \pDataOutRaw[9]_i_3 
       (.I0(cnt_t_3[4]),
        .I1(\n1q_m_2_reg_n_0_[3] ),
        .I2(cnt_t_3[2]),
        .I3(q_m_2),
        .I4(cnt_t_3[1]),
        .I5(cnt_t_3[3]),
        .O(\pDataOutRaw[9]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pDataOutRaw_reg[0] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(q_out_20_in[0]),
        .Q(Q[0]),
        .R(\pDataOutRaw[9]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \pDataOutRaw_reg[2] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(q_out_20_in[2]),
        .Q(Q[1]),
        .S(\pDataOutRaw[9]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \pDataOutRaw_reg[8] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(q_out_20_in[8]),
        .Q(Q[2]),
        .S(\pDataOutRaw[9]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \pDataOutRaw_reg[9] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(q_out_20_in[9]),
        .Q(Q[3]),
        .S(\pDataOutRaw[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pDataOut_1_reg[0] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(vid_pData),
        .Q(\pDataOut_1_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    pVde_1_reg
       (.C(PixelClk),
        .CE(1'b1),
        .D(vid_pVDE),
        .Q(pVde_1),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    pVde_2_reg
       (.C(PixelClk),
        .CE(1'b1),
        .D(pVde_1),
        .Q(\DataEncoders[2].DataEncoder/pVde_2 ),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \q_m_2[8]_i_1 
       (.I0(\pDataOut_1_reg_n_0_[0] ),
        .O(\q_m_2[8]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_m_2_reg[8] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(\q_m_2[8]_i_1_n_0 ),
        .Q(q_m_2),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "TMDS_Encoder" *) 
module TMDS_Encoder_1
   (Q,
    vid_pData,
    PixelClk,
    SR);
  output [3:0]Q;
  input [0:0]vid_pData;
  input PixelClk;
  input [0:0]SR;

  wire PixelClk;
  wire [3:0]Q;
  wire [0:0]SR;
  wire [4:1]cnt_t_2;
  wire \cnt_t_3_reg_n_0_[1] ;
  wire \cnt_t_3_reg_n_0_[2] ;
  wire \cnt_t_3_reg_n_0_[3] ;
  wire \cnt_t_3_reg_n_0_[4] ;
  wire \n1q_m_2_reg_n_0_[3] ;
  wire \pDataOutRaw[2]_i_1__0_n_0 ;
  wire \pDataOutRaw[9]_i_1__0_n_0 ;
  wire \pDataOut_1_reg_n_0_[0] ;
  wire [8:8]q_m_2;
  wire \q_m_2[8]_i_1__0_n_0 ;
  wire [0:0]vid_pData;

  LUT6 #(
    .INIT(64'h9999666266669998)) 
    \cnt_t_3[1]_i_1__0 
       (.I0(\cnt_t_3_reg_n_0_[4] ),
        .I1(\n1q_m_2_reg_n_0_[3] ),
        .I2(\cnt_t_3_reg_n_0_[3] ),
        .I3(\cnt_t_3_reg_n_0_[2] ),
        .I4(\cnt_t_3_reg_n_0_[1] ),
        .I5(q_m_2),
        .O(cnt_t_2[1]));
  LUT6 #(
    .INIT(64'h99FFFF6666000098)) 
    \cnt_t_3[2]_i_1__0 
       (.I0(\cnt_t_3_reg_n_0_[4] ),
        .I1(\n1q_m_2_reg_n_0_[3] ),
        .I2(\cnt_t_3_reg_n_0_[3] ),
        .I3(\cnt_t_3_reg_n_0_[1] ),
        .I4(q_m_2),
        .I5(\cnt_t_3_reg_n_0_[2] ),
        .O(cnt_t_2[2]));
  LUT6 #(
    .INIT(64'hACCC5333333ACCC4)) 
    \cnt_t_3[3]_i_1__0 
       (.I0(\cnt_t_3_reg_n_0_[4] ),
        .I1(\n1q_m_2_reg_n_0_[3] ),
        .I2(\cnt_t_3_reg_n_0_[2] ),
        .I3(\cnt_t_3_reg_n_0_[1] ),
        .I4(\cnt_t_3_reg_n_0_[3] ),
        .I5(q_m_2),
        .O(cnt_t_2[3]));
  LUT6 #(
    .INIT(64'hEA0002AAAA7FFFAA)) 
    \cnt_t_3[4]_i_1__0 
       (.I0(\cnt_t_3_reg_n_0_[4] ),
        .I1(\cnt_t_3_reg_n_0_[1] ),
        .I2(\cnt_t_3_reg_n_0_[2] ),
        .I3(\n1q_m_2_reg_n_0_[3] ),
        .I4(q_m_2),
        .I5(\cnt_t_3_reg_n_0_[3] ),
        .O(cnt_t_2[4]));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_t_3_reg[1] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(cnt_t_2[1]),
        .Q(\cnt_t_3_reg_n_0_[1] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_t_3_reg[2] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(cnt_t_2[2]),
        .Q(\cnt_t_3_reg_n_0_[2] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_t_3_reg[3] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(cnt_t_2[3]),
        .Q(\cnt_t_3_reg_n_0_[3] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_t_3_reg[4] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(cnt_t_2[4]),
        .Q(\cnt_t_3_reg_n_0_[4] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \n1q_m_2_reg[3] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(\pDataOut_1_reg_n_0_[0] ),
        .Q(\n1q_m_2_reg_n_0_[3] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFF00040001)) 
    \pDataOutRaw[2]_i_1__0 
       (.I0(\cnt_t_3_reg_n_0_[3] ),
        .I1(q_m_2),
        .I2(\cnt_t_3_reg_n_0_[1] ),
        .I3(\cnt_t_3_reg_n_0_[2] ),
        .I4(\n1q_m_2_reg_n_0_[3] ),
        .I5(\cnt_t_3_reg_n_0_[4] ),
        .O(\pDataOutRaw[2]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h6666666666626667)) 
    \pDataOutRaw[9]_i_1__0 
       (.I0(\cnt_t_3_reg_n_0_[4] ),
        .I1(\n1q_m_2_reg_n_0_[3] ),
        .I2(\cnt_t_3_reg_n_0_[2] ),
        .I3(\cnt_t_3_reg_n_0_[1] ),
        .I4(q_m_2),
        .I5(\cnt_t_3_reg_n_0_[3] ),
        .O(\pDataOutRaw[9]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pDataOutRaw_reg[0] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(\pDataOutRaw[2]_i_1__0_n_0 ),
        .Q(Q[0]),
        .R(SR));
  FDSE #(
    .INIT(1'b1)) 
    \pDataOutRaw_reg[2] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(\pDataOutRaw[2]_i_1__0_n_0 ),
        .Q(Q[1]),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \pDataOutRaw_reg[8] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(q_m_2),
        .Q(Q[2]),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \pDataOutRaw_reg[9] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(\pDataOutRaw[9]_i_1__0_n_0 ),
        .Q(Q[3]),
        .S(SR));
  FDRE #(
    .INIT(1'b0)) 
    \pDataOut_1_reg[0] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(vid_pData),
        .Q(\pDataOut_1_reg_n_0_[0] ),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \q_m_2[8]_i_1__0 
       (.I0(\pDataOut_1_reg_n_0_[0] ),
        .O(\q_m_2[8]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_m_2_reg[8] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(\q_m_2[8]_i_1__0_n_0 ),
        .Q(q_m_2),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "TMDS_Encoder" *) 
module TMDS_Encoder_3
   (Q,
    vid_pData,
    PixelClk,
    SR);
  output [3:0]Q;
  input [0:0]vid_pData;
  input PixelClk;
  input [0:0]SR;

  wire PixelClk;
  wire [3:0]Q;
  wire [0:0]SR;
  wire [4:1]cnt_t_2;
  wire \cnt_t_3_reg_n_0_[1] ;
  wire \cnt_t_3_reg_n_0_[2] ;
  wire \cnt_t_3_reg_n_0_[3] ;
  wire \cnt_t_3_reg_n_0_[4] ;
  wire \n1q_m_2_reg_n_0_[3] ;
  wire \pDataOutRaw[2]_i_1__1_n_0 ;
  wire \pDataOutRaw[9]_i_1__1_n_0 ;
  wire \pDataOut_1_reg_n_0_[0] ;
  wire [8:8]q_m_2;
  wire \q_m_2[8]_i_1__1_n_0 ;
  wire [0:0]vid_pData;

  LUT6 #(
    .INIT(64'h9999666266669998)) 
    \cnt_t_3[1]_i_1__1 
       (.I0(\cnt_t_3_reg_n_0_[4] ),
        .I1(\n1q_m_2_reg_n_0_[3] ),
        .I2(\cnt_t_3_reg_n_0_[3] ),
        .I3(\cnt_t_3_reg_n_0_[2] ),
        .I4(\cnt_t_3_reg_n_0_[1] ),
        .I5(q_m_2),
        .O(cnt_t_2[1]));
  LUT6 #(
    .INIT(64'h99FFFF6666000098)) 
    \cnt_t_3[2]_i_1__1 
       (.I0(\cnt_t_3_reg_n_0_[4] ),
        .I1(\n1q_m_2_reg_n_0_[3] ),
        .I2(\cnt_t_3_reg_n_0_[3] ),
        .I3(\cnt_t_3_reg_n_0_[1] ),
        .I4(q_m_2),
        .I5(\cnt_t_3_reg_n_0_[2] ),
        .O(cnt_t_2[2]));
  LUT6 #(
    .INIT(64'hACCC5333333ACCC4)) 
    \cnt_t_3[3]_i_1__1 
       (.I0(\cnt_t_3_reg_n_0_[4] ),
        .I1(\n1q_m_2_reg_n_0_[3] ),
        .I2(\cnt_t_3_reg_n_0_[2] ),
        .I3(\cnt_t_3_reg_n_0_[1] ),
        .I4(\cnt_t_3_reg_n_0_[3] ),
        .I5(q_m_2),
        .O(cnt_t_2[3]));
  LUT6 #(
    .INIT(64'hEA0002AAAA7FFFAA)) 
    \cnt_t_3[4]_i_1__1 
       (.I0(\cnt_t_3_reg_n_0_[4] ),
        .I1(\cnt_t_3_reg_n_0_[1] ),
        .I2(\cnt_t_3_reg_n_0_[2] ),
        .I3(\n1q_m_2_reg_n_0_[3] ),
        .I4(q_m_2),
        .I5(\cnt_t_3_reg_n_0_[3] ),
        .O(cnt_t_2[4]));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_t_3_reg[1] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(cnt_t_2[1]),
        .Q(\cnt_t_3_reg_n_0_[1] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_t_3_reg[2] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(cnt_t_2[2]),
        .Q(\cnt_t_3_reg_n_0_[2] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_t_3_reg[3] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(cnt_t_2[3]),
        .Q(\cnt_t_3_reg_n_0_[3] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_t_3_reg[4] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(cnt_t_2[4]),
        .Q(\cnt_t_3_reg_n_0_[4] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \n1q_m_2_reg[3] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(\pDataOut_1_reg_n_0_[0] ),
        .Q(\n1q_m_2_reg_n_0_[3] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFF00040001)) 
    \pDataOutRaw[2]_i_1__1 
       (.I0(\cnt_t_3_reg_n_0_[3] ),
        .I1(q_m_2),
        .I2(\cnt_t_3_reg_n_0_[1] ),
        .I3(\cnt_t_3_reg_n_0_[2] ),
        .I4(\n1q_m_2_reg_n_0_[3] ),
        .I5(\cnt_t_3_reg_n_0_[4] ),
        .O(\pDataOutRaw[2]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h6666666666626667)) 
    \pDataOutRaw[9]_i_1__1 
       (.I0(\cnt_t_3_reg_n_0_[4] ),
        .I1(\n1q_m_2_reg_n_0_[3] ),
        .I2(\cnt_t_3_reg_n_0_[2] ),
        .I3(\cnt_t_3_reg_n_0_[1] ),
        .I4(q_m_2),
        .I5(\cnt_t_3_reg_n_0_[3] ),
        .O(\pDataOutRaw[9]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pDataOutRaw_reg[0] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(\pDataOutRaw[2]_i_1__1_n_0 ),
        .Q(Q[0]),
        .R(SR));
  FDSE #(
    .INIT(1'b1)) 
    \pDataOutRaw_reg[2] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(\pDataOutRaw[2]_i_1__1_n_0 ),
        .Q(Q[1]),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \pDataOutRaw_reg[8] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(q_m_2),
        .Q(Q[2]),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \pDataOutRaw_reg[9] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(\pDataOutRaw[9]_i_1__1_n_0 ),
        .Q(Q[3]),
        .S(SR));
  FDRE #(
    .INIT(1'b0)) 
    \pDataOut_1_reg[0] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(vid_pData),
        .Q(\pDataOut_1_reg_n_0_[0] ),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \q_m_2[8]_i_1__1 
       (.I0(\pDataOut_1_reg_n_0_[0] ),
        .O(\q_m_2[8]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_m_2_reg[8] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(\q_m_2[8]_i_1__1_n_0 ),
        .Q(q_m_2),
        .R(1'b0));
endmodule

module pattern
   (PCK,
    vid_pData,
    vid_pHSync,
    vid_pVSync,
    vid_pVDE,
    CLK,
    RST_IBUF);
  output PCK;
  output [2:0]vid_pData;
  output vid_pHSync;
  output vid_pVSync;
  output vid_pVDE;
  input CLK;
  input RST_IBUF;

  wire CLK;
  wire PCK;
  wire RST_IBUF;
  wire [8:8]rgb_00;
  wire rgb_0__23_carry__0_n_2;
  wire rgb_0__23_carry__0_n_3;
  wire rgb_0__23_carry_n_0;
  wire rgb_0__23_carry_n_1;
  wire rgb_0__23_carry_n_2;
  wire rgb_0__23_carry_n_3;
  wire rgb_0_carry__0_n_0;
  wire rgb_0_carry__0_n_1;
  wire rgb_0_carry__0_n_2;
  wire rgb_0_carry__0_n_3;
  wire rgb_0_carry__1_n_1;
  wire rgb_0_carry__1_n_2;
  wire rgb_0_carry__1_n_3;
  wire rgb_0_carry__1_n_4;
  wire rgb_0_carry__1_n_5;
  wire rgb_0_carry__1_n_6;
  wire rgb_0_carry__1_n_7;
  wire rgb_0_carry_n_0;
  wire rgb_0_carry_n_1;
  wire rgb_0_carry_n_2;
  wire rgb_0_carry_n_3;
  wire rgb_12__123_carry__0_i_1_n_0;
  wire rgb_12__123_carry__0_i_2_n_0;
  wire rgb_12__123_carry__0_i_3_n_0;
  wire rgb_12__123_carry__0_i_4_n_0;
  wire rgb_12__123_carry__0_n_0;
  wire rgb_12__123_carry__0_n_1;
  wire rgb_12__123_carry__0_n_2;
  wire rgb_12__123_carry__0_n_3;
  wire rgb_12__123_carry__0_n_4;
  wire rgb_12__123_carry__0_n_5;
  wire rgb_12__123_carry__0_n_6;
  wire rgb_12__123_carry__0_n_7;
  wire rgb_12__123_carry__1_i_3_n_0;
  wire rgb_12__123_carry__1_n_1;
  wire rgb_12__123_carry__1_n_3;
  wire rgb_12__123_carry__1_n_6;
  wire rgb_12__123_carry__1_n_7;
  wire rgb_12__123_carry_i_1_n_0;
  wire rgb_12__123_carry_i_2_n_0;
  wire rgb_12__123_carry_i_3_n_0;
  wire rgb_12__123_carry_n_0;
  wire rgb_12__123_carry_n_1;
  wire rgb_12__123_carry_n_2;
  wire rgb_12__123_carry_n_3;
  wire rgb_12__123_carry_n_4;
  wire rgb_12__123_carry_n_5;
  wire rgb_12__123_carry_n_6;
  wire rgb_12__123_carry_n_7;
  wire rgb_12__146_carry__0_n_0;
  wire rgb_12__146_carry__0_n_1;
  wire rgb_12__146_carry__0_n_2;
  wire rgb_12__146_carry__0_n_3;
  wire rgb_12__146_carry__1_n_0;
  wire rgb_12__146_carry__1_n_1;
  wire rgb_12__146_carry__1_n_2;
  wire rgb_12__146_carry__1_n_3;
  wire rgb_12__146_carry__2_n_0;
  wire rgb_12__146_carry__2_n_1;
  wire rgb_12__146_carry__2_n_2;
  wire rgb_12__146_carry__2_n_3;
  wire rgb_12__146_carry__3_n_0;
  wire rgb_12__146_carry__3_n_1;
  wire rgb_12__146_carry__3_n_2;
  wire rgb_12__146_carry__3_n_3;
  wire rgb_12__146_carry__4_n_0;
  wire rgb_12__146_carry__4_n_1;
  wire rgb_12__146_carry__4_n_2;
  wire rgb_12__146_carry__4_n_3;
  wire rgb_12__146_carry__5_n_0;
  wire rgb_12__146_carry__5_n_1;
  wire rgb_12__146_carry__5_n_2;
  wire rgb_12__146_carry__5_n_3;
  wire rgb_12__146_carry_n_0;
  wire rgb_12__146_carry_n_1;
  wire rgb_12__146_carry_n_2;
  wire rgb_12__146_carry_n_3;
  wire rgb_12__27_carry__0_n_0;
  wire rgb_12__27_carry__0_n_1;
  wire rgb_12__27_carry__0_n_2;
  wire rgb_12__27_carry__0_n_3;
  wire rgb_12__27_carry__0_n_4;
  wire rgb_12__27_carry__0_n_5;
  wire rgb_12__27_carry__0_n_6;
  wire rgb_12__27_carry__0_n_7;
  wire rgb_12__27_carry__1_n_0;
  wire rgb_12__27_carry__1_n_1;
  wire rgb_12__27_carry__1_n_2;
  wire rgb_12__27_carry__1_n_3;
  wire rgb_12__27_carry__1_n_4;
  wire rgb_12__27_carry__1_n_5;
  wire rgb_12__27_carry__1_n_6;
  wire rgb_12__27_carry__1_n_7;
  wire rgb_12__27_carry__2_n_0;
  wire rgb_12__27_carry__2_n_1;
  wire rgb_12__27_carry__2_n_2;
  wire rgb_12__27_carry__2_n_3;
  wire rgb_12__27_carry__2_n_4;
  wire rgb_12__27_carry__2_n_5;
  wire rgb_12__27_carry__2_n_6;
  wire rgb_12__27_carry__2_n_7;
  wire rgb_12__27_carry_n_0;
  wire rgb_12__27_carry_n_1;
  wire rgb_12__27_carry_n_2;
  wire rgb_12__27_carry_n_3;
  wire rgb_12__27_carry_n_4;
  wire rgb_12__27_carry_n_5;
  wire rgb_12__27_carry_n_6;
  wire rgb_12__72_carry__0_i_2_n_0;
  wire rgb_12__72_carry__0_i_3_n_0;
  wire rgb_12__72_carry__0_i_4_n_0;
  wire rgb_12__72_carry__0_i_5_n_0;
  wire rgb_12__72_carry__0_n_0;
  wire rgb_12__72_carry__0_n_1;
  wire rgb_12__72_carry__0_n_2;
  wire rgb_12__72_carry__0_n_3;
  wire rgb_12__72_carry__1_n_0;
  wire rgb_12__72_carry__1_n_1;
  wire rgb_12__72_carry__1_n_2;
  wire rgb_12__72_carry__1_n_3;
  wire rgb_12__72_carry__2_n_0;
  wire rgb_12__72_carry__2_n_1;
  wire rgb_12__72_carry__2_n_2;
  wire rgb_12__72_carry__2_n_3;
  wire rgb_12__72_carry__3_n_0;
  wire rgb_12__72_carry__3_n_1;
  wire rgb_12__72_carry__3_n_2;
  wire rgb_12__72_carry__3_n_3;
  wire rgb_12__72_carry__3_n_4;
  wire rgb_12__72_carry__4_n_0;
  wire rgb_12__72_carry__4_n_1;
  wire rgb_12__72_carry__4_n_2;
  wire rgb_12__72_carry__4_n_3;
  wire rgb_12__72_carry__4_n_4;
  wire rgb_12__72_carry__4_n_5;
  wire rgb_12__72_carry__4_n_6;
  wire rgb_12__72_carry__4_n_7;
  wire rgb_12__72_carry_i_1_n_0;
  wire rgb_12__72_carry_n_0;
  wire rgb_12__72_carry_n_1;
  wire rgb_12__72_carry_n_2;
  wire rgb_12__72_carry_n_3;
  wire rgb_12_carry__0_n_0;
  wire rgb_12_carry__0_n_1;
  wire rgb_12_carry__0_n_2;
  wire rgb_12_carry__0_n_3;
  wire rgb_12_carry__1_n_0;
  wire rgb_12_carry__1_n_1;
  wire rgb_12_carry__1_n_2;
  wire rgb_12_carry__1_n_3;
  wire rgb_12_carry__1_n_4;
  wire rgb_12_carry__1_n_5;
  wire rgb_12_carry__1_n_6;
  wire rgb_12_carry__2_n_0;
  wire rgb_12_carry__2_n_1;
  wire rgb_12_carry__2_n_2;
  wire rgb_12_carry__2_n_3;
  wire rgb_12_carry__2_n_4;
  wire rgb_12_carry__2_n_5;
  wire rgb_12_carry__2_n_6;
  wire rgb_12_carry__2_n_7;
  wire rgb_12_carry_n_0;
  wire rgb_12_carry_n_1;
  wire rgb_12_carry_n_2;
  wire rgb_12_carry_n_3;
  wire rgb_12_carry_n_7;
  wire [31:0]rgb_13;
  wire syncgen_n_10;
  wire syncgen_n_100;
  wire syncgen_n_101;
  wire syncgen_n_102;
  wire syncgen_n_103;
  wire syncgen_n_107;
  wire syncgen_n_108;
  wire syncgen_n_109;
  wire syncgen_n_11;
  wire syncgen_n_110;
  wire syncgen_n_111;
  wire syncgen_n_112;
  wire syncgen_n_113;
  wire syncgen_n_114;
  wire syncgen_n_115;
  wire syncgen_n_116;
  wire syncgen_n_117;
  wire syncgen_n_118;
  wire syncgen_n_119;
  wire syncgen_n_12;
  wire syncgen_n_120;
  wire syncgen_n_121;
  wire syncgen_n_122;
  wire syncgen_n_123;
  wire syncgen_n_124;
  wire syncgen_n_125;
  wire syncgen_n_126;
  wire syncgen_n_127;
  wire syncgen_n_128;
  wire syncgen_n_129;
  wire syncgen_n_130;
  wire syncgen_n_131;
  wire syncgen_n_132;
  wire syncgen_n_133;
  wire syncgen_n_134;
  wire syncgen_n_135;
  wire syncgen_n_136;
  wire syncgen_n_137;
  wire syncgen_n_138;
  wire syncgen_n_139;
  wire syncgen_n_14;
  wire syncgen_n_140;
  wire syncgen_n_141;
  wire syncgen_n_142;
  wire syncgen_n_143;
  wire syncgen_n_144;
  wire syncgen_n_145;
  wire syncgen_n_146;
  wire syncgen_n_147;
  wire syncgen_n_148;
  wire syncgen_n_149;
  wire syncgen_n_15;
  wire syncgen_n_150;
  wire syncgen_n_151;
  wire syncgen_n_152;
  wire syncgen_n_153;
  wire syncgen_n_154;
  wire syncgen_n_155;
  wire syncgen_n_156;
  wire syncgen_n_157;
  wire syncgen_n_158;
  wire syncgen_n_159;
  wire syncgen_n_16;
  wire syncgen_n_160;
  wire syncgen_n_161;
  wire syncgen_n_162;
  wire syncgen_n_163;
  wire syncgen_n_164;
  wire syncgen_n_165;
  wire syncgen_n_166;
  wire syncgen_n_167;
  wire syncgen_n_168;
  wire syncgen_n_169;
  wire syncgen_n_17;
  wire syncgen_n_170;
  wire syncgen_n_171;
  wire syncgen_n_172;
  wire syncgen_n_173;
  wire syncgen_n_174;
  wire syncgen_n_175;
  wire syncgen_n_176;
  wire syncgen_n_177;
  wire syncgen_n_178;
  wire syncgen_n_179;
  wire syncgen_n_18;
  wire syncgen_n_180;
  wire syncgen_n_181;
  wire syncgen_n_182;
  wire syncgen_n_183;
  wire syncgen_n_184;
  wire syncgen_n_185;
  wire syncgen_n_19;
  wire syncgen_n_20;
  wire syncgen_n_21;
  wire syncgen_n_23;
  wire syncgen_n_24;
  wire syncgen_n_25;
  wire syncgen_n_26;
  wire syncgen_n_27;
  wire syncgen_n_28;
  wire syncgen_n_29;
  wire syncgen_n_3;
  wire syncgen_n_30;
  wire syncgen_n_31;
  wire syncgen_n_32;
  wire syncgen_n_33;
  wire syncgen_n_34;
  wire syncgen_n_35;
  wire syncgen_n_36;
  wire syncgen_n_37;
  wire syncgen_n_38;
  wire syncgen_n_39;
  wire syncgen_n_4;
  wire syncgen_n_40;
  wire syncgen_n_41;
  wire syncgen_n_42;
  wire syncgen_n_43;
  wire syncgen_n_44;
  wire syncgen_n_45;
  wire syncgen_n_46;
  wire syncgen_n_47;
  wire syncgen_n_48;
  wire syncgen_n_49;
  wire syncgen_n_5;
  wire syncgen_n_51;
  wire syncgen_n_52;
  wire syncgen_n_53;
  wire syncgen_n_54;
  wire syncgen_n_55;
  wire syncgen_n_56;
  wire syncgen_n_57;
  wire syncgen_n_58;
  wire syncgen_n_59;
  wire syncgen_n_6;
  wire syncgen_n_60;
  wire syncgen_n_61;
  wire syncgen_n_62;
  wire syncgen_n_63;
  wire syncgen_n_64;
  wire syncgen_n_65;
  wire syncgen_n_66;
  wire syncgen_n_67;
  wire syncgen_n_68;
  wire syncgen_n_69;
  wire syncgen_n_7;
  wire syncgen_n_70;
  wire syncgen_n_71;
  wire syncgen_n_72;
  wire syncgen_n_73;
  wire syncgen_n_74;
  wire syncgen_n_75;
  wire syncgen_n_76;
  wire syncgen_n_77;
  wire syncgen_n_78;
  wire syncgen_n_79;
  wire syncgen_n_8;
  wire syncgen_n_80;
  wire syncgen_n_81;
  wire syncgen_n_82;
  wire syncgen_n_83;
  wire syncgen_n_84;
  wire syncgen_n_85;
  wire syncgen_n_86;
  wire syncgen_n_87;
  wire syncgen_n_88;
  wire syncgen_n_89;
  wire syncgen_n_9;
  wire syncgen_n_90;
  wire syncgen_n_91;
  wire syncgen_n_92;
  wire syncgen_n_93;
  wire syncgen_n_94;
  wire syncgen_n_95;
  wire syncgen_n_96;
  wire syncgen_n_97;
  wire syncgen_n_99;
  wire [2:0]vid_pData;
  wire vid_pHSync;
  wire vid_pVDE;
  wire vid_pVSync;
  wire [3:0]NLW_rgb_0__23_carry_O_UNCONNECTED;
  wire [3:2]NLW_rgb_0__23_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_rgb_0__23_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_rgb_0_carry_O_UNCONNECTED;
  wire [3:0]NLW_rgb_0_carry__0_O_UNCONNECTED;
  wire [3:3]NLW_rgb_0_carry__1_CO_UNCONNECTED;
  wire [3:1]NLW_rgb_12__123_carry__1_CO_UNCONNECTED;
  wire [3:2]NLW_rgb_12__123_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_rgb_12__146_carry_O_UNCONNECTED;
  wire [3:0]NLW_rgb_12__146_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_rgb_12__146_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_rgb_12__146_carry__2_O_UNCONNECTED;
  wire [3:0]NLW_rgb_12__146_carry__3_O_UNCONNECTED;
  wire [3:0]NLW_rgb_12__146_carry__4_O_UNCONNECTED;
  wire [3:0]NLW_rgb_12__146_carry__5_O_UNCONNECTED;
  wire [0:0]NLW_rgb_12__27_carry_O_UNCONNECTED;
  wire [3:0]NLW_rgb_12__72_carry_O_UNCONNECTED;
  wire [3:0]NLW_rgb_12__72_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_rgb_12__72_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_rgb_12__72_carry__2_O_UNCONNECTED;
  wire [2:0]NLW_rgb_12__72_carry__3_O_UNCONNECTED;
  wire [3:1]NLW_rgb_12_carry_O_UNCONNECTED;
  wire [3:0]NLW_rgb_12_carry__0_O_UNCONNECTED;
  wire [0:0]NLW_rgb_12_carry__1_O_UNCONNECTED;

  FDRE #(
    .INIT(1'b0)) 
    \VGA_B_reg[0] 
       (.C(PCK),
        .CE(1'b1),
        .D(syncgen_n_86),
        .Q(vid_pData[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    VGA_DE_reg
       (.C(PCK),
        .CE(1'b1),
        .D(syncgen_n_85),
        .Q(vid_pVDE),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \VGA_G_reg[0] 
       (.C(PCK),
        .CE(1'b1),
        .D(syncgen_n_84),
        .Q(vid_pData[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \VGA_R_reg[0] 
       (.C(PCK),
        .CE(1'b1),
        .D(syncgen_n_87),
        .Q(vid_pData[2]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 rgb_0__23_carry
       (.CI(1'b0),
        .CO({rgb_0__23_carry_n_0,rgb_0__23_carry_n_1,rgb_0__23_carry_n_2,rgb_0__23_carry_n_3}),
        .CYINIT(1'b0),
        .DI({syncgen_n_81,syncgen_n_82,syncgen_n_83,1'b0}),
        .O(NLW_rgb_0__23_carry_O_UNCONNECTED[3:0]),
        .S({syncgen_n_149,syncgen_n_150,syncgen_n_151,syncgen_n_152}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 rgb_0__23_carry__0
       (.CI(rgb_0__23_carry_n_0),
        .CO({NLW_rgb_0__23_carry__0_CO_UNCONNECTED[3:2],rgb_0__23_carry__0_n_2,rgb_0__23_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,syncgen_n_3,syncgen_n_4}),
        .O(NLW_rgb_0__23_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,syncgen_n_147,syncgen_n_148}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 rgb_0_carry
       (.CI(1'b0),
        .CO({rgb_0_carry_n_0,rgb_0_carry_n_1,rgb_0_carry_n_2,rgb_0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({syncgen_n_111,syncgen_n_112,1'b0,1'b1}),
        .O(NLW_rgb_0_carry_O_UNCONNECTED[3:0]),
        .S({syncgen_n_5,syncgen_n_6,syncgen_n_7,syncgen_n_8}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 rgb_0_carry__0
       (.CI(rgb_0_carry_n_0),
        .CO({rgb_0_carry__0_n_0,rgb_0_carry__0_n_1,rgb_0_carry__0_n_2,rgb_0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({syncgen_n_58,syncgen_n_59,syncgen_n_60,syncgen_n_61}),
        .O(NLW_rgb_0_carry__0_O_UNCONNECTED[3:0]),
        .S({syncgen_n_9,syncgen_n_10,syncgen_n_11,syncgen_n_12}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 rgb_0_carry__1
       (.CI(rgb_0_carry__0_n_0),
        .CO({NLW_rgb_0_carry__1_CO_UNCONNECTED[3],rgb_0_carry__1_n_1,rgb_0_carry__1_n_2,rgb_0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,rgb_00,syncgen_n_14,syncgen_n_15}),
        .O({rgb_0_carry__1_n_4,rgb_0_carry__1_n_5,rgb_0_carry__1_n_6,rgb_0_carry__1_n_7}),
        .S({syncgen_n_113,syncgen_n_114,syncgen_n_115,syncgen_n_116}));
  CARRY4 rgb_12__123_carry
       (.CI(1'b0),
        .CO({rgb_12__123_carry_n_0,rgb_12__123_carry_n_1,rgb_12__123_carry_n_2,rgb_12__123_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({rgb_12__123_carry_n_4,rgb_12__123_carry_n_5,rgb_12__123_carry_n_6,rgb_12__123_carry_n_7}),
        .S({rgb_12__123_carry_i_1_n_0,rgb_12__123_carry_i_2_n_0,rgb_12__123_carry_i_3_n_0,rgb_12__72_carry__3_n_4}));
  CARRY4 rgb_12__123_carry__0
       (.CI(rgb_12__123_carry_n_0),
        .CO({rgb_12__123_carry__0_n_0,rgb_12__123_carry__0_n_1,rgb_12__123_carry__0_n_2,rgb_12__123_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({rgb_12__72_carry__4_n_5,rgb_12__72_carry__4_n_6,rgb_12__72_carry__4_n_7,rgb_12__72_carry__3_n_4}),
        .O({rgb_12__123_carry__0_n_4,rgb_12__123_carry__0_n_5,rgb_12__123_carry__0_n_6,rgb_12__123_carry__0_n_7}),
        .S({rgb_12__123_carry__0_i_1_n_0,rgb_12__123_carry__0_i_2_n_0,rgb_12__123_carry__0_i_3_n_0,rgb_12__123_carry__0_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    rgb_12__123_carry__0_i_1
       (.I0(rgb_12__72_carry__4_n_5),
        .O(rgb_12__123_carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    rgb_12__123_carry__0_i_2
       (.I0(rgb_12__72_carry__4_n_6),
        .O(rgb_12__123_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    rgb_12__123_carry__0_i_3
       (.I0(rgb_12__72_carry__4_n_7),
        .I1(syncgen_n_80),
        .O(rgb_12__123_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    rgb_12__123_carry__0_i_4
       (.I0(rgb_12__72_carry__3_n_4),
        .I1(rgb_12__72_carry__4_n_4),
        .O(rgb_12__123_carry__0_i_4_n_0));
  CARRY4 rgb_12__123_carry__1
       (.CI(rgb_12__123_carry__0_n_0),
        .CO({NLW_rgb_12__123_carry__1_CO_UNCONNECTED[3],rgb_12__123_carry__1_n_1,NLW_rgb_12__123_carry__1_CO_UNCONNECTED[1],rgb_12__123_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,syncgen_n_80,rgb_12__72_carry__4_n_4}),
        .O({NLW_rgb_12__123_carry__1_O_UNCONNECTED[3:2],rgb_12__123_carry__1_n_6,rgb_12__123_carry__1_n_7}),
        .S({1'b0,1'b1,syncgen_n_157,rgb_12__123_carry__1_i_3_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    rgb_12__123_carry__1_i_3
       (.I0(rgb_12__72_carry__4_n_4),
        .O(rgb_12__123_carry__1_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    rgb_12__123_carry_i_1
       (.I0(rgb_12__72_carry__4_n_5),
        .O(rgb_12__123_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    rgb_12__123_carry_i_2
       (.I0(rgb_12__72_carry__4_n_6),
        .O(rgb_12__123_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    rgb_12__123_carry_i_3
       (.I0(rgb_12__72_carry__4_n_7),
        .O(rgb_12__123_carry_i_3_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 rgb_12__146_carry
       (.CI(1'b0),
        .CO({rgb_12__146_carry_n_0,rgb_12__146_carry_n_1,rgb_12__146_carry_n_2,rgb_12__146_carry_n_3}),
        .CYINIT(1'b0),
        .DI({syncgen_n_88,syncgen_n_89,syncgen_n_90,syncgen_n_91}),
        .O(NLW_rgb_12__146_carry_O_UNCONNECTED[3:0]),
        .S({syncgen_n_158,syncgen_n_159,syncgen_n_160,syncgen_n_161}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 rgb_12__146_carry__0
       (.CI(rgb_12__146_carry_n_0),
        .CO({rgb_12__146_carry__0_n_0,rgb_12__146_carry__0_n_1,rgb_12__146_carry__0_n_2,rgb_12__146_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({syncgen_n_100,syncgen_n_101,syncgen_n_102,syncgen_n_103}),
        .O(NLW_rgb_12__146_carry__0_O_UNCONNECTED[3:0]),
        .S({syncgen_n_162,syncgen_n_163,syncgen_n_164,syncgen_n_165}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 rgb_12__146_carry__1
       (.CI(rgb_12__146_carry__0_n_0),
        .CO({rgb_12__146_carry__1_n_0,rgb_12__146_carry__1_n_1,rgb_12__146_carry__1_n_2,rgb_12__146_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({syncgen_n_107,syncgen_n_108,syncgen_n_109,syncgen_n_110}),
        .O(NLW_rgb_12__146_carry__1_O_UNCONNECTED[3:0]),
        .S({syncgen_n_166,syncgen_n_167,syncgen_n_168,syncgen_n_169}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 rgb_12__146_carry__2
       (.CI(rgb_12__146_carry__1_n_0),
        .CO({rgb_12__146_carry__2_n_0,rgb_12__146_carry__2_n_1,rgb_12__146_carry__2_n_2,rgb_12__146_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({syncgen_n_131,syncgen_n_132,syncgen_n_133,syncgen_n_134}),
        .O(NLW_rgb_12__146_carry__2_O_UNCONNECTED[3:0]),
        .S({syncgen_n_174,syncgen_n_175,syncgen_n_176,syncgen_n_177}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 rgb_12__146_carry__3
       (.CI(rgb_12__146_carry__2_n_0),
        .CO({rgb_12__146_carry__3_n_0,rgb_12__146_carry__3_n_1,rgb_12__146_carry__3_n_2,rgb_12__146_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({syncgen_n_135,syncgen_n_136,syncgen_n_137,syncgen_n_138}),
        .O(NLW_rgb_12__146_carry__3_O_UNCONNECTED[3:0]),
        .S({syncgen_n_178,syncgen_n_179,syncgen_n_180,syncgen_n_181}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 rgb_12__146_carry__4
       (.CI(rgb_12__146_carry__3_n_0),
        .CO({rgb_12__146_carry__4_n_0,rgb_12__146_carry__4_n_1,rgb_12__146_carry__4_n_2,rgb_12__146_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({syncgen_n_139,syncgen_n_140,syncgen_n_141,syncgen_n_142}),
        .O(NLW_rgb_12__146_carry__4_O_UNCONNECTED[3:0]),
        .S({syncgen_n_182,syncgen_n_183,syncgen_n_184,syncgen_n_185}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 rgb_12__146_carry__5
       (.CI(rgb_12__146_carry__4_n_0),
        .CO({rgb_12__146_carry__5_n_0,rgb_12__146_carry__5_n_1,rgb_12__146_carry__5_n_2,rgb_12__146_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({syncgen_n_143,syncgen_n_144,syncgen_n_145,syncgen_n_146}),
        .O(NLW_rgb_12__146_carry__5_O_UNCONNECTED[3:0]),
        .S({syncgen_n_170,syncgen_n_171,syncgen_n_172,syncgen_n_173}));
  CARRY4 rgb_12__27_carry
       (.CI(1'b0),
        .CO({rgb_12__27_carry_n_0,rgb_12__27_carry_n_1,rgb_12__27_carry_n_2,rgb_12__27_carry_n_3}),
        .CYINIT(1'b0),
        .DI({rgb_13[6],rgb_13[1],rgb_13[4],1'b0}),
        .O({rgb_12__27_carry_n_4,rgb_12__27_carry_n_5,rgb_12__27_carry_n_6,NLW_rgb_12__27_carry_O_UNCONNECTED[0]}),
        .S({syncgen_n_24,syncgen_n_25,syncgen_n_26,syncgen_n_27}));
  CARRY4 rgb_12__27_carry__0
       (.CI(rgb_12__27_carry_n_0),
        .CO({rgb_12__27_carry__0_n_0,rgb_12__27_carry__0_n_1,rgb_12__27_carry__0_n_2,rgb_12__27_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({syncgen_n_20,syncgen_n_21,rgb_13[8],syncgen_n_23}),
        .O({rgb_12__27_carry__0_n_4,rgb_12__27_carry__0_n_5,rgb_12__27_carry__0_n_6,rgb_12__27_carry__0_n_7}),
        .S({syncgen_n_16,syncgen_n_17,syncgen_n_18,syncgen_n_19}));
  CARRY4 rgb_12__27_carry__1
       (.CI(rgb_12__27_carry__0_n_0),
        .CO({rgb_12__27_carry__1_n_0,rgb_12__27_carry__1_n_1,rgb_12__27_carry__1_n_2,rgb_12__27_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({syncgen_n_32,syncgen_n_33,syncgen_n_34,syncgen_n_35}),
        .O({rgb_12__27_carry__1_n_4,rgb_12__27_carry__1_n_5,rgb_12__27_carry__1_n_6,rgb_12__27_carry__1_n_7}),
        .S({syncgen_n_28,syncgen_n_29,syncgen_n_30,syncgen_n_31}));
  CARRY4 rgb_12__27_carry__2
       (.CI(rgb_12__27_carry__1_n_0),
        .CO({rgb_12__27_carry__2_n_0,rgb_12__27_carry__2_n_1,rgb_12__27_carry__2_n_2,rgb_12__27_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({syncgen_n_123,syncgen_n_124,syncgen_n_125,syncgen_n_126}),
        .O({rgb_12__27_carry__2_n_4,rgb_12__27_carry__2_n_5,rgb_12__27_carry__2_n_6,rgb_12__27_carry__2_n_7}),
        .S({1'b0,syncgen_n_36,syncgen_n_37,syncgen_n_38}));
  CARRY4 rgb_12__72_carry
       (.CI(1'b0),
        .CO({rgb_12__72_carry_n_0,rgb_12__72_carry_n_1,rgb_12__72_carry_n_2,rgb_12__72_carry_n_3}),
        .CYINIT(1'b0),
        .DI({rgb_12_carry__2_n_7,rgb_12_carry__1_n_4,rgb_12_carry__1_n_5,rgb_12_carry__1_n_6}),
        .O(NLW_rgb_12__72_carry_O_UNCONNECTED[3:0]),
        .S({rgb_12__72_carry_i_1_n_0,syncgen_n_55,syncgen_n_56,syncgen_n_57}));
  CARRY4 rgb_12__72_carry__0
       (.CI(rgb_12__72_carry_n_0),
        .CO({rgb_12__72_carry__0_n_0,rgb_12__72_carry__0_n_1,rgb_12__72_carry__0_n_2,rgb_12__72_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({syncgen_n_79,rgb_12_carry__2_n_4,rgb_12_carry__2_n_5,rgb_12_carry__2_n_6}),
        .O(NLW_rgb_12__72_carry__0_O_UNCONNECTED[3:0]),
        .S({rgb_12__72_carry__0_i_2_n_0,rgb_12__72_carry__0_i_3_n_0,rgb_12__72_carry__0_i_4_n_0,rgb_12__72_carry__0_i_5_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    rgb_12__72_carry__0_i_2
       (.I0(syncgen_n_79),
        .I1(rgb_12__27_carry__0_n_7),
        .O(rgb_12__72_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    rgb_12__72_carry__0_i_3
       (.I0(rgb_12_carry__2_n_4),
        .I1(rgb_12__27_carry_n_4),
        .O(rgb_12__72_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    rgb_12__72_carry__0_i_4
       (.I0(rgb_12_carry__2_n_5),
        .I1(rgb_12__27_carry_n_5),
        .O(rgb_12__72_carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    rgb_12__72_carry__0_i_5
       (.I0(rgb_12_carry__2_n_6),
        .I1(rgb_12__27_carry_n_6),
        .O(rgb_12__72_carry__0_i_5_n_0));
  CARRY4 rgb_12__72_carry__1
       (.CI(rgb_12__72_carry__0_n_0),
        .CO({rgb_12__72_carry__1_n_0,rgb_12__72_carry__1_n_1,rgb_12__72_carry__1_n_2,rgb_12__72_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({syncgen_n_127,syncgen_n_128,syncgen_n_129,syncgen_n_130}),
        .O(NLW_rgb_12__72_carry__1_O_UNCONNECTED[3:0]),
        .S({syncgen_n_39,syncgen_n_40,syncgen_n_41,syncgen_n_42}));
  CARRY4 rgb_12__72_carry__2
       (.CI(rgb_12__72_carry__1_n_0),
        .CO({rgb_12__72_carry__2_n_0,rgb_12__72_carry__2_n_1,rgb_12__72_carry__2_n_2,rgb_12__72_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({syncgen_n_47,syncgen_n_48,syncgen_n_49,rgb_13[0]}),
        .O(NLW_rgb_12__72_carry__2_O_UNCONNECTED[3:0]),
        .S({syncgen_n_43,syncgen_n_44,syncgen_n_45,syncgen_n_46}));
  CARRY4 rgb_12__72_carry__3
       (.CI(rgb_12__72_carry__2_n_0),
        .CO({rgb_12__72_carry__3_n_0,rgb_12__72_carry__3_n_1,rgb_12__72_carry__3_n_2,rgb_12__72_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({syncgen_n_92,syncgen_n_93,syncgen_n_94,syncgen_n_95}),
        .O({rgb_12__72_carry__3_n_4,NLW_rgb_12__72_carry__3_O_UNCONNECTED[2:0]}),
        .S({syncgen_n_153,syncgen_n_154,syncgen_n_155,syncgen_n_156}));
  CARRY4 rgb_12__72_carry__4
       (.CI(rgb_12__72_carry__3_n_0),
        .CO({rgb_12__72_carry__4_n_0,rgb_12__72_carry__4_n_1,rgb_12__72_carry__4_n_2,rgb_12__72_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({syncgen_n_96,syncgen_n_97,rgb_13[31],syncgen_n_99}),
        .O({rgb_12__72_carry__4_n_4,rgb_12__72_carry__4_n_5,rgb_12__72_carry__4_n_6,rgb_12__72_carry__4_n_7}),
        .S({syncgen_n_51,syncgen_n_52,syncgen_n_53,syncgen_n_54}));
  LUT2 #(
    .INIT(4'h6)) 
    rgb_12__72_carry_i_1
       (.I0(rgb_12_carry__2_n_7),
        .I1(rgb_12_carry_n_7),
        .O(rgb_12__72_carry_i_1_n_0));
  CARRY4 rgb_12_carry
       (.CI(1'b0),
        .CO({rgb_12_carry_n_0,rgb_12_carry_n_1,rgb_12_carry_n_2,rgb_12_carry_n_3}),
        .CYINIT(1'b0),
        .DI({syncgen_n_117,rgb_13[1],syncgen_n_118,1'b0}),
        .O({NLW_rgb_12_carry_O_UNCONNECTED[3:1],rgb_12_carry_n_7}),
        .S({syncgen_n_62,syncgen_n_63,syncgen_n_64,syncgen_n_65}));
  CARRY4 rgb_12_carry__0
       (.CI(rgb_12_carry_n_0),
        .CO({rgb_12_carry__0_n_0,rgb_12_carry__0_n_1,rgb_12_carry__0_n_2,rgb_12_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({syncgen_n_20,syncgen_n_70,rgb_13[8],syncgen_n_71}),
        .O(NLW_rgb_12_carry__0_O_UNCONNECTED[3:0]),
        .S({syncgen_n_66,syncgen_n_67,syncgen_n_68,syncgen_n_69}));
  CARRY4 rgb_12_carry__1
       (.CI(rgb_12_carry__0_n_0),
        .CO({rgb_12_carry__1_n_0,rgb_12_carry__1_n_1,rgb_12_carry__1_n_2,rgb_12_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({syncgen_n_32,syncgen_n_33,syncgen_n_34,syncgen_n_35}),
        .O({rgb_12_carry__1_n_4,rgb_12_carry__1_n_5,rgb_12_carry__1_n_6,NLW_rgb_12_carry__1_O_UNCONNECTED[0]}),
        .S({syncgen_n_72,syncgen_n_73,syncgen_n_74,syncgen_n_75}));
  CARRY4 rgb_12_carry__2
       (.CI(rgb_12_carry__1_n_0),
        .CO({rgb_12_carry__2_n_0,rgb_12_carry__2_n_1,rgb_12_carry__2_n_2,rgb_12_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({syncgen_n_119,syncgen_n_120,syncgen_n_121,syncgen_n_122}),
        .O({rgb_12_carry__2_n_4,rgb_12_carry__2_n_5,rgb_12_carry__2_n_6,rgb_12_carry__2_n_7}),
        .S({1'b0,syncgen_n_76,syncgen_n_77,syncgen_n_78}));
  syncgen syncgen
       (.CLK(CLK),
        .CO(syncgen_n_79),
        .DI({syncgen_n_3,syncgen_n_4}),
        .\HCNT_reg[0]_0 ({syncgen_n_111,syncgen_n_112}),
        .\HCNT_reg[5]_0 ({syncgen_n_9,syncgen_n_10,syncgen_n_11,syncgen_n_12}),
        .\HCNT_reg[5]_1 ({syncgen_n_58,syncgen_n_59,syncgen_n_60,syncgen_n_61}),
        .\HCNT_reg[5]_2 ({syncgen_n_81,syncgen_n_82,syncgen_n_83}),
        .\HCNT_reg[5]_3 ({syncgen_n_147,syncgen_n_148}),
        .\HCNT_reg[5]_4 ({syncgen_n_149,syncgen_n_150,syncgen_n_151,syncgen_n_152}),
        .\HCNT_reg[8]_0 ({rgb_00,syncgen_n_14,syncgen_n_15}),
        .\HCNT_reg[9]_0 (syncgen_n_85),
        .\HCNT_reg[9]_1 ({syncgen_n_113,syncgen_n_114,syncgen_n_115,syncgen_n_116}),
        .O({rgb_0_carry__1_n_4,rgb_0_carry__1_n_5,rgb_0_carry__1_n_6,rgb_0_carry__1_n_7}),
        .PCK(PCK),
        .RST_IBUF(RST_IBUF),
        .S({syncgen_n_5,syncgen_n_6,syncgen_n_7,syncgen_n_8}),
        .\VCNT_reg[0]_0 ({syncgen_n_16,syncgen_n_17,syncgen_n_18,syncgen_n_19}),
        .\VCNT_reg[0]_1 ({syncgen_n_20,syncgen_n_21,rgb_13[8],syncgen_n_23}),
        .\VCNT_reg[0]_2 ({syncgen_n_24,syncgen_n_25,syncgen_n_26,syncgen_n_27}),
        .\VCNT_reg[0]_3 ({syncgen_n_55,syncgen_n_56,syncgen_n_57}),
        .\VCNT_reg[0]_4 ({syncgen_n_62,syncgen_n_63,syncgen_n_64,syncgen_n_65}),
        .\VCNT_reg[0]_5 ({syncgen_n_66,syncgen_n_67,syncgen_n_68,syncgen_n_69}),
        .\VCNT_reg[0]_6 ({syncgen_n_70,syncgen_n_71}),
        .\VCNT_reg[2]_0 ({syncgen_n_43,syncgen_n_44,syncgen_n_45,syncgen_n_46}),
        .\VCNT_reg[2]_1 ({syncgen_n_47,syncgen_n_48,syncgen_n_49,rgb_13[0]}),
        .\VCNT_reg[6]_0 ({syncgen_n_88,syncgen_n_89,syncgen_n_90,syncgen_n_91}),
        .\VCNT_reg[6]_1 ({rgb_13[6],rgb_13[1],rgb_13[4]}),
        .\VCNT_reg[6]_2 ({syncgen_n_117,syncgen_n_118}),
        .\VCNT_reg[6]_3 ({syncgen_n_153,syncgen_n_154,syncgen_n_155,syncgen_n_156}),
        .\VCNT_reg[7]_0 ({syncgen_n_158,syncgen_n_159,syncgen_n_160,syncgen_n_161}),
        .\VCNT_reg[9]_0 ({syncgen_n_28,syncgen_n_29,syncgen_n_30,syncgen_n_31}),
        .\VCNT_reg[9]_1 ({syncgen_n_32,syncgen_n_33,syncgen_n_34,syncgen_n_35}),
        .\VCNT_reg[9]_10 ({syncgen_n_107,syncgen_n_108,syncgen_n_109,syncgen_n_110}),
        .\VCNT_reg[9]_11 ({syncgen_n_119,syncgen_n_120,syncgen_n_121,syncgen_n_122}),
        .\VCNT_reg[9]_12 ({syncgen_n_123,syncgen_n_124,syncgen_n_125,syncgen_n_126}),
        .\VCNT_reg[9]_13 ({syncgen_n_127,syncgen_n_128,syncgen_n_129,syncgen_n_130}),
        .\VCNT_reg[9]_14 ({syncgen_n_131,syncgen_n_132,syncgen_n_133,syncgen_n_134}),
        .\VCNT_reg[9]_15 ({syncgen_n_135,syncgen_n_136,syncgen_n_137,syncgen_n_138}),
        .\VCNT_reg[9]_16 ({syncgen_n_139,syncgen_n_140,syncgen_n_141,syncgen_n_142}),
        .\VCNT_reg[9]_17 ({syncgen_n_143,syncgen_n_144,syncgen_n_145,syncgen_n_146}),
        .\VCNT_reg[9]_18 (syncgen_n_157),
        .\VCNT_reg[9]_19 ({syncgen_n_162,syncgen_n_163,syncgen_n_164,syncgen_n_165}),
        .\VCNT_reg[9]_2 ({syncgen_n_36,syncgen_n_37,syncgen_n_38}),
        .\VCNT_reg[9]_20 ({syncgen_n_166,syncgen_n_167,syncgen_n_168,syncgen_n_169}),
        .\VCNT_reg[9]_21 ({syncgen_n_170,syncgen_n_171,syncgen_n_172,syncgen_n_173}),
        .\VCNT_reg[9]_22 ({syncgen_n_174,syncgen_n_175,syncgen_n_176,syncgen_n_177}),
        .\VCNT_reg[9]_23 ({syncgen_n_178,syncgen_n_179,syncgen_n_180,syncgen_n_181}),
        .\VCNT_reg[9]_24 ({syncgen_n_182,syncgen_n_183,syncgen_n_184,syncgen_n_185}),
        .\VCNT_reg[9]_3 ({syncgen_n_39,syncgen_n_40,syncgen_n_41,syncgen_n_42}),
        .\VCNT_reg[9]_4 ({syncgen_n_51,syncgen_n_52,syncgen_n_53,syncgen_n_54}),
        .\VCNT_reg[9]_5 ({syncgen_n_72,syncgen_n_73,syncgen_n_74,syncgen_n_75}),
        .\VCNT_reg[9]_6 ({syncgen_n_76,syncgen_n_77,syncgen_n_78}),
        .\VCNT_reg[9]_7 ({syncgen_n_92,syncgen_n_93,syncgen_n_94,syncgen_n_95}),
        .\VCNT_reg[9]_8 ({syncgen_n_96,syncgen_n_97,rgb_13[31],syncgen_n_99}),
        .\VCNT_reg[9]_9 ({syncgen_n_100,syncgen_n_101,syncgen_n_102,syncgen_n_103}),
        .\VGA_B_reg[0] (rgb_12__72_carry__3_n_4),
        .\VGA_B_reg[0]_0 (rgb_12__146_carry__5_n_0),
        .\VGA_G[0]_i_2_0 (syncgen_n_87),
        .\VGA_R_reg[0] (rgb_0__23_carry__0_n_2),
        .\VGA_R_reg[0]_0 (rgb_12__123_carry__1_n_1),
        .rgb_0_carry__1(syncgen_n_84),
        .rgb_12__123_carry__1(rgb_12__72_carry__4_n_0),
        .rgb_12__146_carry({rgb_12__123_carry_n_4,rgb_12__123_carry_n_5,rgb_12__123_carry_n_6,rgb_12__123_carry_n_7}),
        .rgb_12__146_carry__0({rgb_12__123_carry__0_n_4,rgb_12__123_carry__0_n_5,rgb_12__123_carry__0_n_6,rgb_12__123_carry__0_n_7}),
        .rgb_12__146_carry__1({rgb_12__123_carry__1_n_6,rgb_12__123_carry__1_n_7}),
        .rgb_12__146_carry__5(syncgen_n_86),
        .rgb_12__72_carry({rgb_12_carry__1_n_4,rgb_12_carry__1_n_5,rgb_12_carry__1_n_6}),
        .rgb_12__72_carry__0(rgb_12_carry__2_n_0),
        .rgb_12__72_carry__1({rgb_12__27_carry__0_n_4,rgb_12__27_carry__0_n_5,rgb_12__27_carry__0_n_6}),
        .rgb_12__72_carry__2({rgb_12__27_carry__1_n_4,rgb_12__27_carry__1_n_5,rgb_12__27_carry__1_n_6,rgb_12__27_carry__1_n_7}),
        .rgb_12__72_carry__3({rgb_12__27_carry__2_n_4,rgb_12__27_carry__2_n_5,rgb_12__27_carry__2_n_6,rgb_12__27_carry__2_n_7}),
        .rgb_12__72_carry__3_i_5_0(rgb_12__27_carry__2_n_0),
        .rgb_12__72_carry__4(syncgen_n_80),
        .vid_pHSync(vid_pHSync),
        .vid_pVSync(vid_pVSync));
endmodule

(* NotValidForBitStream *)
module pattern_hdmi
   (CLK,
    RST,
    HDMI_CLK_N,
    HDMI_CLK_P,
    HDMI_N,
    HDMI_P);
  input CLK;
  input RST;
  output HDMI_CLK_N;
  output HDMI_CLK_P;
  output [2:0]HDMI_N;
  output [2:0]HDMI_P;

  (* IBUF_LOW_PWR *) wire CLK;
  wire HDMI_CLK_N;
  wire HDMI_CLK_P;
  wire [2:0]HDMI_N;
  wire [2:0]HDMI_P;
  wire PCK;
  wire RST;
  wire RST_IBUF;
  wire [0:0]VGA_B;
  wire VGA_DE;
  wire [0:0]VGA_G;
  wire VGA_HS;
  wire [0:0]VGA_R;
  wire VGA_VS;

initial begin
 $sdf_annotate("pattern_tb_time_synth.sdf",,,,"tool_control");
end
  IBUF RST_IBUF_inst
       (.I(RST),
        .O(RST_IBUF));
  pattern pattern
       (.CLK(CLK),
        .PCK(PCK),
        .RST_IBUF(RST_IBUF),
        .vid_pData({VGA_R,VGA_B,VGA_G}),
        .vid_pHSync(VGA_HS),
        .vid_pVDE(VGA_DE),
        .vid_pVSync(VGA_VS));
  (* CHECK_LICENSE_TYPE = "rgb2dvi_0,rgb2dvi,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "rgb2dvi,Vivado 2021.2.1" *) 
  rgb2dvi_0 reg2dvi
       (.PixelClk(PCK),
        .SerialClk(1'b0),
        .TMDS_Clk_n(HDMI_CLK_N),
        .TMDS_Clk_p(HDMI_CLK_P),
        .TMDS_Data_n(HDMI_N),
        .TMDS_Data_p(HDMI_P),
        .aRst(RST_IBUF),
        .vid_pData({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,VGA_R,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,VGA_B,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,VGA_G}),
        .vid_pHSync(VGA_HS),
        .vid_pVDE(VGA_DE),
        .vid_pVSync(VGA_VS));
endmodule

module pckgen
   (PCK,
    locked,
    SYSCLK);
  output PCK;
  output locked;
  input SYSCLK;

  wire \<const0> ;
  wire PCK;
  wire SYSCLK;
  wire NLW_inst_locked_UNCONNECTED;

  assign locked = \<const0> ;
  GND GND
       (.G(\<const0> ));
  pckgen_clk_wiz inst
       (.PCK(PCK),
        .SYSCLK(SYSCLK),
        .locked(NLW_inst_locked_UNCONNECTED));
endmodule

module pckgen_clk_wiz
   (PCK,
    locked,
    SYSCLK);
  output PCK;
  output locked;
  input SYSCLK;

  wire \<const0> ;
  wire PCK;
  wire PCK_pckgen;
  wire SYSCLK;
  wire SYSCLK_pckgen;
  wire clkfbout_buf_pckgen;
  wire clkfbout_pckgen;
  wire mmcm_adv_inst_n_16;
  wire NLW_mmcm_adv_inst_CLKFBOUTB_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKFBSTOPPED_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKINSTOPPED_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT0B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT1_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT1B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT2_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT2B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT3_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT3B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT4_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT5_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT6_UNCONNECTED;
  wire NLW_mmcm_adv_inst_DRDY_UNCONNECTED;
  wire NLW_mmcm_adv_inst_PSDONE_UNCONNECTED;
  wire [15:0]NLW_mmcm_adv_inst_DO_UNCONNECTED;

  assign locked = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG clkf_buf
       (.I(clkfbout_pckgen),
        .O(clkfbout_buf_pckgen));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  IBUF #(
    .IOSTANDARD("DEFAULT")) 
    clkin1_ibufg
       (.I(SYSCLK),
        .O(SYSCLK_pckgen));
  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG clkout1_buf
       (.I(PCK_pckgen),
        .O(PCK));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MMCME2_ADV #(
    .BANDWIDTH("OPTIMIZED"),
    .CLKFBOUT_MULT_F(36.000000),
    .CLKFBOUT_PHASE(0.000000),
    .CLKFBOUT_USE_FINE_PS("FALSE"),
    .CLKIN1_PERIOD(8.000000),
    .CLKIN2_PERIOD(0.000000),
    .CLKOUT0_DIVIDE_F(35.750000),
    .CLKOUT0_DUTY_CYCLE(0.500000),
    .CLKOUT0_PHASE(0.000000),
    .CLKOUT0_USE_FINE_PS("FALSE"),
    .CLKOUT1_DIVIDE(1),
    .CLKOUT1_DUTY_CYCLE(0.500000),
    .CLKOUT1_PHASE(0.000000),
    .CLKOUT1_USE_FINE_PS("FALSE"),
    .CLKOUT2_DIVIDE(1),
    .CLKOUT2_DUTY_CYCLE(0.500000),
    .CLKOUT2_PHASE(0.000000),
    .CLKOUT2_USE_FINE_PS("FALSE"),
    .CLKOUT3_DIVIDE(1),
    .CLKOUT3_DUTY_CYCLE(0.500000),
    .CLKOUT3_PHASE(0.000000),
    .CLKOUT3_USE_FINE_PS("FALSE"),
    .CLKOUT4_CASCADE("FALSE"),
    .CLKOUT4_DIVIDE(1),
    .CLKOUT4_DUTY_CYCLE(0.500000),
    .CLKOUT4_PHASE(0.000000),
    .CLKOUT4_USE_FINE_PS("FALSE"),
    .CLKOUT5_DIVIDE(1),
    .CLKOUT5_DUTY_CYCLE(0.500000),
    .CLKOUT5_PHASE(0.000000),
    .CLKOUT5_USE_FINE_PS("FALSE"),
    .CLKOUT6_DIVIDE(1),
    .CLKOUT6_DUTY_CYCLE(0.500000),
    .CLKOUT6_PHASE(0.000000),
    .CLKOUT6_USE_FINE_PS("FALSE"),
    .COMPENSATION("BUF_IN"),
    .DIVCLK_DIVIDE(5),
    .IS_CLKINSEL_INVERTED(1'b0),
    .IS_PSEN_INVERTED(1'b0),
    .IS_PSINCDEC_INVERTED(1'b0),
    .IS_PWRDWN_INVERTED(1'b0),
    .IS_RST_INVERTED(1'b0),
    .REF_JITTER1(0.010000),
    .REF_JITTER2(0.010000),
    .SS_EN("FALSE"),
    .SS_MODE("CENTER_HIGH"),
    .SS_MOD_PERIOD(10000),
    .STARTUP_WAIT("FALSE")) 
    mmcm_adv_inst
       (.CLKFBIN(clkfbout_buf_pckgen),
        .CLKFBOUT(clkfbout_pckgen),
        .CLKFBOUTB(NLW_mmcm_adv_inst_CLKFBOUTB_UNCONNECTED),
        .CLKFBSTOPPED(NLW_mmcm_adv_inst_CLKFBSTOPPED_UNCONNECTED),
        .CLKIN1(SYSCLK_pckgen),
        .CLKIN2(1'b0),
        .CLKINSEL(1'b1),
        .CLKINSTOPPED(NLW_mmcm_adv_inst_CLKINSTOPPED_UNCONNECTED),
        .CLKOUT0(PCK_pckgen),
        .CLKOUT0B(NLW_mmcm_adv_inst_CLKOUT0B_UNCONNECTED),
        .CLKOUT1(NLW_mmcm_adv_inst_CLKOUT1_UNCONNECTED),
        .CLKOUT1B(NLW_mmcm_adv_inst_CLKOUT1B_UNCONNECTED),
        .CLKOUT2(NLW_mmcm_adv_inst_CLKOUT2_UNCONNECTED),
        .CLKOUT2B(NLW_mmcm_adv_inst_CLKOUT2B_UNCONNECTED),
        .CLKOUT3(NLW_mmcm_adv_inst_CLKOUT3_UNCONNECTED),
        .CLKOUT3B(NLW_mmcm_adv_inst_CLKOUT3B_UNCONNECTED),
        .CLKOUT4(NLW_mmcm_adv_inst_CLKOUT4_UNCONNECTED),
        .CLKOUT5(NLW_mmcm_adv_inst_CLKOUT5_UNCONNECTED),
        .CLKOUT6(NLW_mmcm_adv_inst_CLKOUT6_UNCONNECTED),
        .DADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DCLK(1'b0),
        .DEN(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DO(NLW_mmcm_adv_inst_DO_UNCONNECTED[15:0]),
        .DRDY(NLW_mmcm_adv_inst_DRDY_UNCONNECTED),
        .DWE(1'b0),
        .LOCKED(mmcm_adv_inst_n_16),
        .PSCLK(1'b0),
        .PSDONE(NLW_mmcm_adv_inst_PSDONE_UNCONNECTED),
        .PSEN(1'b0),
        .PSINCDEC(1'b0),
        .PWRDWN(1'b0),
        .RST(1'b0));
endmodule

(* kClkPrimitive = "MMCM" *) (* kClkRange = "1" *) (* kGenerateSerialClk = "FALSE" *) 
(* kRstActiveHigh = "TRUE" *) 
module rgb2dvi
   (TMDS_Clk_p,
    TMDS_Clk_n,
    TMDS_Data_p,
    TMDS_Data_n,
    aRst,
    aRst_n,
    vid_pData,
    vid_pVDE,
    vid_pHSync,
    vid_pVSync,
    PixelClk,
    SerialClk);
  output TMDS_Clk_p;
  output TMDS_Clk_n;
  output [2:0]TMDS_Data_p;
  output [2:0]TMDS_Data_n;
  input aRst;
  input aRst_n;
  input [23:0]vid_pData;
  input vid_pVDE;
  input vid_pHSync;
  input vid_pVSync;
  input PixelClk;
  input SerialClk;

  wire \DataEncoders[0].DataEncoder_n_0 ;
  wire PixelClk;
  wire TMDS_Clk_n;
  wire TMDS_Clk_p;
  wire [2:0]TMDS_Data_n;
  wire [2:0]TMDS_Data_p;
  wire aRst;
  wire [9:0]\pDataOutRaw[0] ;
  wire [9:0]\pDataOutRaw[1] ;
  wire [9:0]\pDataOutRaw[2] ;
  wire pRstLck;
  wire [23:0]vid_pData;
  wire vid_pHSync;
  wire vid_pVDE;
  wire vid_pVSync;

  OutputSERDES ClockSerializer
       (.PixelClk(PixelClk),
        .TMDS_Clk_n(TMDS_Clk_n),
        .TMDS_Clk_p(TMDS_Clk_p),
        .aRst(pRstLck));
  TMDS_Encoder \DataEncoders[0].DataEncoder 
       (.PixelClk(PixelClk),
        .Q({\pDataOutRaw[0] [9:8],\pDataOutRaw[0] [2],\pDataOutRaw[0] [0]}),
        .SR(\DataEncoders[0].DataEncoder_n_0 ),
        .vid_pData(vid_pData[8]),
        .vid_pHSync(vid_pHSync),
        .vid_pVDE(vid_pVDE),
        .vid_pVSync(vid_pVSync));
  OutputSERDES_0 \DataEncoders[0].DataSerializer 
       (.PixelClk(PixelClk),
        .TMDS_Data_n(TMDS_Data_n[0]),
        .TMDS_Data_p(TMDS_Data_p[0]),
        .aRst(pRstLck),
        .pDataOut({\pDataOutRaw[0] [9:8],\pDataOutRaw[0] [0],\pDataOutRaw[0] [2]}));
  TMDS_Encoder_1 \DataEncoders[1].DataEncoder 
       (.PixelClk(PixelClk),
        .Q({\pDataOutRaw[1] [9:8],\pDataOutRaw[1] [2],\pDataOutRaw[1] [0]}),
        .SR(\DataEncoders[0].DataEncoder_n_0 ),
        .vid_pData(vid_pData[0]));
  OutputSERDES_2 \DataEncoders[1].DataSerializer 
       (.PixelClk(PixelClk),
        .TMDS_Data_n(TMDS_Data_n[1]),
        .TMDS_Data_p(TMDS_Data_p[1]),
        .out(pRstLck),
        .pDataOut({\pDataOutRaw[1] [9:8],\pDataOutRaw[1] [0],\pDataOutRaw[1] [2]}));
  TMDS_Encoder_3 \DataEncoders[2].DataEncoder 
       (.PixelClk(PixelClk),
        .Q({\pDataOutRaw[2] [9:8],\pDataOutRaw[2] [2],\pDataOutRaw[2] [0]}),
        .SR(\DataEncoders[0].DataEncoder_n_0 ),
        .vid_pData(vid_pData[16]));
  OutputSERDES_4 \DataEncoders[2].DataSerializer 
       (.PixelClk(PixelClk),
        .TMDS_Data_n(TMDS_Data_n[2]),
        .TMDS_Data_p(TMDS_Data_p[2]),
        .out(pRstLck),
        .pDataOut({\pDataOutRaw[2] [9:8],\pDataOutRaw[2] [0],\pDataOutRaw[2] [2]}));
  ResetBridge LockLostReset
       (.PixelClk(PixelClk),
        .aRst(aRst),
        .out(pRstLck));
endmodule

(* CHECK_LICENSE_TYPE = "rgb2dvi_0,rgb2dvi,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "rgb2dvi,Vivado 2021.2.1" *) 
module rgb2dvi_0
   (TMDS_Clk_p,
    TMDS_Clk_n,
    TMDS_Data_p,
    TMDS_Data_n,
    aRst,
    vid_pData,
    vid_pVDE,
    vid_pHSync,
    vid_pVSync,
    PixelClk,
    SerialClk);
  (* x_interface_info = "digilentinc.com:interface:tmds:1.0 TMDS CLK_P" *) output TMDS_Clk_p;
  (* x_interface_info = "digilentinc.com:interface:tmds:1.0 TMDS CLK_N" *) output TMDS_Clk_n;
  (* x_interface_info = "digilentinc.com:interface:tmds:1.0 TMDS DATA_P" *) output [2:0]TMDS_Data_p;
  (* x_interface_info = "digilentinc.com:interface:tmds:1.0 TMDS DATA_N" *) output [2:0]TMDS_Data_n;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 AsyncRst RST" *) (* x_interface_parameter = "XIL_INTERFACENAME AsyncRst, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input aRst;
  (* x_interface_info = "xilinx.com:interface:vid_io:1.0 RGB DATA" *) input [23:0]vid_pData;
  (* x_interface_info = "xilinx.com:interface:vid_io:1.0 RGB ACTIVE_VIDEO" *) input vid_pVDE;
  (* x_interface_info = "xilinx.com:interface:vid_io:1.0 RGB HSYNC" *) input vid_pHSync;
  (* x_interface_info = "xilinx.com:interface:vid_io:1.0 RGB VSYNC" *) input vid_pVSync;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 PixelClk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME PixelClk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input PixelClk;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 SerialClk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME SerialClk, ASSOCIATED_RESET aRst:aRst_n:pRst:pRst_n, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input SerialClk;

  wire PixelClk;
  wire TMDS_Clk_n;
  wire TMDS_Clk_p;
  wire [2:0]TMDS_Data_n;
  wire [2:0]TMDS_Data_p;
  wire aRst;
  wire [23:0]vid_pData;
  wire vid_pHSync;
  wire vid_pVDE;
  wire vid_pVSync;

  (* kClkPrimitive = "MMCM" *) 
  (* kClkRange = "1" *) 
  (* kGenerateSerialClk = "FALSE" *) 
  (* kRstActiveHigh = "TRUE" *) 
  rgb2dvi U0
       (.PixelClk(PixelClk),
        .SerialClk(1'b0),
        .TMDS_Clk_n(TMDS_Clk_n),
        .TMDS_Clk_p(TMDS_Clk_p),
        .TMDS_Data_n(TMDS_Data_n),
        .TMDS_Data_p(TMDS_Data_p),
        .aRst(aRst),
        .aRst_n(1'b1),
        .vid_pData({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,vid_pData[16],1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,vid_pData[8],1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,vid_pData[0]}),
        .vid_pHSync(vid_pHSync),
        .vid_pVDE(vid_pVDE),
        .vid_pVSync(vid_pVSync));
endmodule

module syncgen
   (PCK,
    vid_pHSync,
    vid_pVSync,
    DI,
    S,
    \HCNT_reg[5]_0 ,
    \HCNT_reg[8]_0 ,
    \VCNT_reg[0]_0 ,
    \VCNT_reg[0]_1 ,
    \VCNT_reg[0]_2 ,
    \VCNT_reg[9]_0 ,
    \VCNT_reg[9]_1 ,
    \VCNT_reg[9]_2 ,
    \VCNT_reg[9]_3 ,
    \VCNT_reg[2]_0 ,
    \VCNT_reg[2]_1 ,
    \VCNT_reg[9]_4 ,
    \VCNT_reg[0]_3 ,
    \HCNT_reg[5]_1 ,
    \VCNT_reg[0]_4 ,
    \VCNT_reg[0]_5 ,
    \VCNT_reg[0]_6 ,
    \VCNT_reg[9]_5 ,
    \VCNT_reg[9]_6 ,
    CO,
    rgb_12__72_carry__4,
    \HCNT_reg[5]_2 ,
    rgb_0_carry__1,
    \HCNT_reg[9]_0 ,
    rgb_12__146_carry__5,
    \VGA_G[0]_i_2_0 ,
    \VCNT_reg[6]_0 ,
    \VCNT_reg[9]_7 ,
    \VCNT_reg[9]_8 ,
    \VCNT_reg[9]_9 ,
    \VCNT_reg[6]_1 ,
    \VCNT_reg[9]_10 ,
    \HCNT_reg[0]_0 ,
    \HCNT_reg[9]_1 ,
    \VCNT_reg[6]_2 ,
    \VCNT_reg[9]_11 ,
    \VCNT_reg[9]_12 ,
    \VCNT_reg[9]_13 ,
    \VCNT_reg[9]_14 ,
    \VCNT_reg[9]_15 ,
    \VCNT_reg[9]_16 ,
    \VCNT_reg[9]_17 ,
    \HCNT_reg[5]_3 ,
    \HCNT_reg[5]_4 ,
    \VCNT_reg[6]_3 ,
    \VCNT_reg[9]_18 ,
    \VCNT_reg[7]_0 ,
    \VCNT_reg[9]_19 ,
    \VCNT_reg[9]_20 ,
    \VCNT_reg[9]_21 ,
    \VCNT_reg[9]_22 ,
    \VCNT_reg[9]_23 ,
    \VCNT_reg[9]_24 ,
    CLK,
    O,
    rgb_12__72_carry__1,
    rgb_12__72_carry__2,
    rgb_12__72_carry,
    rgb_12__72_carry__0,
    rgb_12__72_carry__3_i_5_0,
    rgb_12__123_carry__1,
    \VGA_B_reg[0] ,
    \VGA_B_reg[0]_0 ,
    RST_IBUF,
    \VGA_R_reg[0] ,
    rgb_12__146_carry,
    rgb_12__72_carry__3,
    rgb_12__146_carry__0,
    rgb_12__146_carry__1,
    \VGA_R_reg[0]_0 );
  output PCK;
  output vid_pHSync;
  output vid_pVSync;
  output [1:0]DI;
  output [3:0]S;
  output [3:0]\HCNT_reg[5]_0 ;
  output [2:0]\HCNT_reg[8]_0 ;
  output [3:0]\VCNT_reg[0]_0 ;
  output [3:0]\VCNT_reg[0]_1 ;
  output [3:0]\VCNT_reg[0]_2 ;
  output [3:0]\VCNT_reg[9]_0 ;
  output [3:0]\VCNT_reg[9]_1 ;
  output [2:0]\VCNT_reg[9]_2 ;
  output [3:0]\VCNT_reg[9]_3 ;
  output [3:0]\VCNT_reg[2]_0 ;
  output [3:0]\VCNT_reg[2]_1 ;
  output [3:0]\VCNT_reg[9]_4 ;
  output [2:0]\VCNT_reg[0]_3 ;
  output [3:0]\HCNT_reg[5]_1 ;
  output [3:0]\VCNT_reg[0]_4 ;
  output [3:0]\VCNT_reg[0]_5 ;
  output [1:0]\VCNT_reg[0]_6 ;
  output [3:0]\VCNT_reg[9]_5 ;
  output [2:0]\VCNT_reg[9]_6 ;
  output [0:0]CO;
  output [0:0]rgb_12__72_carry__4;
  output [2:0]\HCNT_reg[5]_2 ;
  output rgb_0_carry__1;
  output \HCNT_reg[9]_0 ;
  output rgb_12__146_carry__5;
  output \VGA_G[0]_i_2_0 ;
  output [3:0]\VCNT_reg[6]_0 ;
  output [3:0]\VCNT_reg[9]_7 ;
  output [3:0]\VCNT_reg[9]_8 ;
  output [3:0]\VCNT_reg[9]_9 ;
  output [2:0]\VCNT_reg[6]_1 ;
  output [3:0]\VCNT_reg[9]_10 ;
  output [1:0]\HCNT_reg[0]_0 ;
  output [3:0]\HCNT_reg[9]_1 ;
  output [1:0]\VCNT_reg[6]_2 ;
  output [3:0]\VCNT_reg[9]_11 ;
  output [3:0]\VCNT_reg[9]_12 ;
  output [3:0]\VCNT_reg[9]_13 ;
  output [3:0]\VCNT_reg[9]_14 ;
  output [3:0]\VCNT_reg[9]_15 ;
  output [3:0]\VCNT_reg[9]_16 ;
  output [3:0]\VCNT_reg[9]_17 ;
  output [1:0]\HCNT_reg[5]_3 ;
  output [3:0]\HCNT_reg[5]_4 ;
  output [3:0]\VCNT_reg[6]_3 ;
  output [0:0]\VCNT_reg[9]_18 ;
  output [3:0]\VCNT_reg[7]_0 ;
  output [3:0]\VCNT_reg[9]_19 ;
  output [3:0]\VCNT_reg[9]_20 ;
  output [3:0]\VCNT_reg[9]_21 ;
  output [3:0]\VCNT_reg[9]_22 ;
  output [3:0]\VCNT_reg[9]_23 ;
  output [3:0]\VCNT_reg[9]_24 ;
  input CLK;
  input [3:0]O;
  input [2:0]rgb_12__72_carry__1;
  input [3:0]rgb_12__72_carry__2;
  input [2:0]rgb_12__72_carry;
  input [0:0]rgb_12__72_carry__0;
  input [0:0]rgb_12__72_carry__3_i_5_0;
  input [0:0]rgb_12__123_carry__1;
  input [0:0]\VGA_B_reg[0] ;
  input [0:0]\VGA_B_reg[0]_0 ;
  input RST_IBUF;
  input [0:0]\VGA_R_reg[0] ;
  input [3:0]rgb_12__146_carry;
  input [3:0]rgb_12__72_carry__3;
  input [3:0]rgb_12__146_carry__0;
  input [1:0]rgb_12__146_carry__1;
  input [0:0]\VGA_R_reg[0]_0 ;

  wire CLK;
  wire [0:0]CO;
  wire [1:0]DI;
  wire [9:0]HCNT;
  wire \HCNT[2]_i_1_n_0 ;
  wire \HCNT[4]_i_1_n_0 ;
  wire \HCNT[7]_i_1_n_0 ;
  wire \HCNT[9]_i_1_n_0 ;
  wire [1:0]\HCNT_reg[0]_0 ;
  wire [3:0]\HCNT_reg[5]_0 ;
  wire [3:0]\HCNT_reg[5]_1 ;
  wire [2:0]\HCNT_reg[5]_2 ;
  wire [1:0]\HCNT_reg[5]_3 ;
  wire [3:0]\HCNT_reg[5]_4 ;
  wire [2:0]\HCNT_reg[8]_0 ;
  wire \HCNT_reg[9]_0 ;
  wire [3:0]\HCNT_reg[9]_1 ;
  wire [3:0]O;
  wire PCK;
  wire RST_IBUF;
  wire [3:0]S;
  wire [9:0]VCNT;
  wire \VCNT[0]_i_1_n_0 ;
  wire \VCNT[4]_i_1_n_0 ;
  wire \VCNT[5]_i_1_n_0 ;
  wire \VCNT[6]_i_1_n_0 ;
  wire \VCNT[7]_i_1_n_0 ;
  wire \VCNT[8]_i_2_n_0 ;
  wire \VCNT[9]_i_3_n_0 ;
  wire \VCNT[9]_i_4_n_0 ;
  wire \VCNT[9]_i_5_n_0 ;
  wire [9:1]VCNT_0;
  wire [3:0]\VCNT_reg[0]_0 ;
  wire [3:0]\VCNT_reg[0]_1 ;
  wire [3:0]\VCNT_reg[0]_2 ;
  wire [2:0]\VCNT_reg[0]_3 ;
  wire [3:0]\VCNT_reg[0]_4 ;
  wire [3:0]\VCNT_reg[0]_5 ;
  wire [1:0]\VCNT_reg[0]_6 ;
  wire [3:0]\VCNT_reg[2]_0 ;
  wire [3:0]\VCNT_reg[2]_1 ;
  wire [3:0]\VCNT_reg[6]_0 ;
  wire [2:0]\VCNT_reg[6]_1 ;
  wire [1:0]\VCNT_reg[6]_2 ;
  wire [3:0]\VCNT_reg[6]_3 ;
  wire [3:0]\VCNT_reg[7]_0 ;
  wire [3:0]\VCNT_reg[9]_0 ;
  wire [3:0]\VCNT_reg[9]_1 ;
  wire [3:0]\VCNT_reg[9]_10 ;
  wire [3:0]\VCNT_reg[9]_11 ;
  wire [3:0]\VCNT_reg[9]_12 ;
  wire [3:0]\VCNT_reg[9]_13 ;
  wire [3:0]\VCNT_reg[9]_14 ;
  wire [3:0]\VCNT_reg[9]_15 ;
  wire [3:0]\VCNT_reg[9]_16 ;
  wire [3:0]\VCNT_reg[9]_17 ;
  wire [0:0]\VCNT_reg[9]_18 ;
  wire [3:0]\VCNT_reg[9]_19 ;
  wire [2:0]\VCNT_reg[9]_2 ;
  wire [3:0]\VCNT_reg[9]_20 ;
  wire [3:0]\VCNT_reg[9]_21 ;
  wire [3:0]\VCNT_reg[9]_22 ;
  wire [3:0]\VCNT_reg[9]_23 ;
  wire [3:0]\VCNT_reg[9]_24 ;
  wire [3:0]\VCNT_reg[9]_3 ;
  wire [3:0]\VCNT_reg[9]_4 ;
  wire [3:0]\VCNT_reg[9]_5 ;
  wire [2:0]\VCNT_reg[9]_6 ;
  wire [3:0]\VCNT_reg[9]_7 ;
  wire [3:0]\VCNT_reg[9]_8 ;
  wire [3:0]\VCNT_reg[9]_9 ;
  wire \VGA_B[0]_i_2_n_0 ;
  wire [0:0]\VGA_B_reg[0] ;
  wire [0:0]\VGA_B_reg[0]_0 ;
  wire VGA_DE_i_2_n_0;
  wire \VGA_G[0]_i_2_0 ;
  wire \VGA_G[0]_i_2_n_0 ;
  wire \VGA_G[0]_i_3_n_0 ;
  wire VGA_HS_i_1_n_0;
  wire VGA_HS_i_2_n_0;
  wire VGA_HS_i_3_n_0;
  wire [0:0]\VGA_R_reg[0] ;
  wire [0:0]\VGA_R_reg[0]_0 ;
  wire VGA_VS_i_1_n_0;
  wire VGA_VS_i_2_n_0;
  wire VGA_VS_i_3_n_0;
  wire VGA_VS_i_4_n_0;
  wire VGA_VS_i_5_n_0;
  wire hcntend;
  wire [9:6]p_0_in;
  wire [6:0]rgb_00;
  wire rgb_0__23_carry__0_i_5_n_0;
  wire rgb_0__23_carry_i_8_n_0;
  wire rgb_0_carry__1;
  wire [0:0]rgb_12__123_carry__1;
  wire [3:0]rgb_12__146_carry;
  wire [3:0]rgb_12__146_carry__0;
  wire [1:0]rgb_12__146_carry__1;
  wire rgb_12__146_carry__5;
  wire [2:0]rgb_12__72_carry;
  wire [0:0]rgb_12__72_carry__0;
  wire [2:0]rgb_12__72_carry__1;
  wire [3:0]rgb_12__72_carry__2;
  wire [3:0]rgb_12__72_carry__3;
  wire [0:0]rgb_12__72_carry__3_i_5_0;
  wire rgb_12__72_carry__3_i_9_n_3;
  wire [0:0]rgb_12__72_carry__4;
  wire rgb_12_carry__0_i_10_n_0;
  wire rgb_12_carry__0_i_11_n_0;
  wire rgb_12_carry__0_i_12_n_0;
  wire rgb_12_carry__0_i_13_n_0;
  wire rgb_12_carry__0_i_14_n_0;
  wire rgb_12_carry__0_i_9_n_0;
  wire rgb_12_carry__1_i_9_n_0;
  wire rgb_12_carry_i_8_n_0;
  wire vid_pHSync;
  wire vid_pVSync;
  wire NLW_pckgen_locked_UNCONNECTED;
  wire [3:1]NLW_rgb_12__123_carry__1_i_1_CO_UNCONNECTED;
  wire [3:0]NLW_rgb_12__123_carry__1_i_1_O_UNCONNECTED;
  wire [3:1]NLW_rgb_12__72_carry__0_i_1_CO_UNCONNECTED;
  wire [3:0]NLW_rgb_12__72_carry__0_i_1_O_UNCONNECTED;
  wire [3:1]NLW_rgb_12__72_carry__3_i_9_CO_UNCONNECTED;
  wire [3:0]NLW_rgb_12__72_carry__3_i_9_O_UNCONNECTED;

  LUT1 #(
    .INIT(2'h1)) 
    \HCNT[0]_i_1 
       (.I0(HCNT[0]),
        .O(rgb_00[0]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \HCNT[1]_i_1 
       (.I0(HCNT[0]),
        .I1(HCNT[1]),
        .O(rgb_00[1]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \HCNT[2]_i_1 
       (.I0(HCNT[1]),
        .I1(HCNT[0]),
        .I2(HCNT[2]),
        .O(\HCNT[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \HCNT[3]_i_1 
       (.I0(HCNT[3]),
        .I1(HCNT[0]),
        .I2(HCNT[1]),
        .I3(HCNT[2]),
        .O(rgb_00[3]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \HCNT[4]_i_1 
       (.I0(HCNT[4]),
        .I1(HCNT[3]),
        .I2(HCNT[2]),
        .I3(HCNT[0]),
        .I4(HCNT[1]),
        .O(\HCNT[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \HCNT[5]_i_1 
       (.I0(HCNT[5]),
        .I1(HCNT[1]),
        .I2(HCNT[0]),
        .I3(HCNT[2]),
        .I4(HCNT[3]),
        .I5(HCNT[4]),
        .O(\HCNT_reg[5]_1 [1]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \HCNT[6]_i_1 
       (.I0(HCNT[6]),
        .I1(HCNT[5]),
        .I2(\VCNT[9]_i_3_n_0 ),
        .O(p_0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \HCNT[7]_i_1 
       (.I0(HCNT[7]),
        .I1(\VCNT[9]_i_3_n_0 ),
        .I2(HCNT[5]),
        .I3(HCNT[6]),
        .O(\HCNT[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \HCNT[8]_i_1 
       (.I0(HCNT[8]),
        .I1(HCNT[6]),
        .I2(HCNT[5]),
        .I3(\VCNT[9]_i_3_n_0 ),
        .I4(HCNT[7]),
        .O(p_0_in[8]));
  LUT2 #(
    .INIT(4'hE)) 
    \HCNT[9]_i_1 
       (.I0(RST_IBUF),
        .I1(hcntend),
        .O(\HCNT[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \HCNT[9]_i_2 
       (.I0(HCNT[9]),
        .I1(HCNT[7]),
        .I2(\VCNT[9]_i_3_n_0 ),
        .I3(HCNT[5]),
        .I4(HCNT[6]),
        .I5(HCNT[8]),
        .O(p_0_in[9]));
  FDRE #(
    .INIT(1'b0)) 
    \HCNT_reg[0] 
       (.C(PCK),
        .CE(1'b1),
        .D(rgb_00[0]),
        .Q(HCNT[0]),
        .R(\HCNT[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \HCNT_reg[1] 
       (.C(PCK),
        .CE(1'b1),
        .D(rgb_00[1]),
        .Q(HCNT[1]),
        .R(\HCNT[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \HCNT_reg[2] 
       (.C(PCK),
        .CE(1'b1),
        .D(\HCNT[2]_i_1_n_0 ),
        .Q(HCNT[2]),
        .R(\HCNT[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \HCNT_reg[3] 
       (.C(PCK),
        .CE(1'b1),
        .D(rgb_00[3]),
        .Q(HCNT[3]),
        .R(\HCNT[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \HCNT_reg[4] 
       (.C(PCK),
        .CE(1'b1),
        .D(\HCNT[4]_i_1_n_0 ),
        .Q(HCNT[4]),
        .R(\HCNT[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \HCNT_reg[5] 
       (.C(PCK),
        .CE(1'b1),
        .D(\HCNT_reg[5]_1 [1]),
        .Q(HCNT[5]),
        .R(\HCNT[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \HCNT_reg[6] 
       (.C(PCK),
        .CE(1'b1),
        .D(p_0_in[6]),
        .Q(HCNT[6]),
        .R(\HCNT[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \HCNT_reg[7] 
       (.C(PCK),
        .CE(1'b1),
        .D(\HCNT[7]_i_1_n_0 ),
        .Q(HCNT[7]),
        .R(\HCNT[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \HCNT_reg[8] 
       (.C(PCK),
        .CE(1'b1),
        .D(p_0_in[8]),
        .Q(HCNT[8]),
        .R(\HCNT[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \HCNT_reg[9] 
       (.C(PCK),
        .CE(1'b1),
        .D(p_0_in[9]),
        .Q(HCNT[9]),
        .R(\HCNT[9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h55555155)) 
    \VCNT[0]_i_1 
       (.I0(VCNT[0]),
        .I1(VCNT[2]),
        .I2(VCNT[1]),
        .I3(VCNT[9]),
        .I4(\VCNT[9]_i_5_n_0 ),
        .O(\VCNT[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \VCNT[1]_i_1 
       (.I0(VCNT[0]),
        .I1(VCNT[1]),
        .O(VCNT_0[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h0FFBF000)) 
    \VCNT[2]_i_1 
       (.I0(\VCNT[9]_i_5_n_0 ),
        .I1(VCNT[9]),
        .I2(VCNT[0]),
        .I3(VCNT[1]),
        .I4(VCNT[2]),
        .O(VCNT_0[2]));
  LUT6 #(
    .INIT(64'h0FFBFFFFF0000000)) 
    \VCNT[3]_i_1 
       (.I0(\VCNT[9]_i_5_n_0 ),
        .I1(VCNT[9]),
        .I2(VCNT[1]),
        .I3(VCNT[0]),
        .I4(VCNT[2]),
        .I5(VCNT[3]),
        .O(VCNT_0[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \VCNT[4]_i_1 
       (.I0(VCNT[4]),
        .I1(VCNT[3]),
        .I2(VCNT[1]),
        .I3(VCNT[0]),
        .I4(VCNT[2]),
        .O(\VCNT[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \VCNT[5]_i_1 
       (.I0(VCNT[5]),
        .I1(VCNT[4]),
        .I2(VCNT[2]),
        .I3(VCNT[0]),
        .I4(VCNT[1]),
        .I5(VCNT[3]),
        .O(\VCNT[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \VCNT[6]_i_1 
       (.I0(VCNT[6]),
        .I1(\VCNT[8]_i_2_n_0 ),
        .O(\VCNT[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hA6)) 
    \VCNT[7]_i_1 
       (.I0(VCNT[7]),
        .I1(VCNT[6]),
        .I2(\VCNT[8]_i_2_n_0 ),
        .O(\VCNT[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hDF20)) 
    \VCNT[8]_i_1 
       (.I0(VCNT[6]),
        .I1(\VCNT[8]_i_2_n_0 ),
        .I2(VCNT[7]),
        .I3(VCNT[8]),
        .O(VCNT_0[8]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \VCNT[8]_i_2 
       (.I0(VCNT[4]),
        .I1(VCNT[2]),
        .I2(VCNT[0]),
        .I3(VCNT[1]),
        .I4(VCNT[3]),
        .I5(VCNT[5]),
        .O(\VCNT[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \VCNT[9]_i_1 
       (.I0(\VCNT[9]_i_3_n_0 ),
        .I1(HCNT[9]),
        .I2(HCNT[8]),
        .I3(HCNT[7]),
        .I4(HCNT[5]),
        .I5(HCNT[6]),
        .O(hcntend));
  LUT6 #(
    .INIT(64'h6666666666666466)) 
    \VCNT[9]_i_2 
       (.I0(VCNT[9]),
        .I1(\VCNT[9]_i_4_n_0 ),
        .I2(VCNT[0]),
        .I3(VCNT[2]),
        .I4(VCNT[1]),
        .I5(\VCNT[9]_i_5_n_0 ),
        .O(VCNT_0[9]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \VCNT[9]_i_3 
       (.I0(HCNT[4]),
        .I1(HCNT[3]),
        .I2(HCNT[2]),
        .I3(HCNT[0]),
        .I4(HCNT[1]),
        .O(\VCNT[9]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \VCNT[9]_i_4 
       (.I0(VCNT[8]),
        .I1(VCNT[7]),
        .I2(\VCNT[8]_i_2_n_0 ),
        .I3(VCNT[6]),
        .O(\VCNT[9]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFFFFFF)) 
    \VCNT[9]_i_5 
       (.I0(VCNT[7]),
        .I1(VCNT[6]),
        .I2(VCNT[4]),
        .I3(VCNT[8]),
        .I4(VCNT[5]),
        .I5(VCNT[3]),
        .O(\VCNT[9]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \VCNT_reg[0] 
       (.C(PCK),
        .CE(hcntend),
        .D(\VCNT[0]_i_1_n_0 ),
        .Q(VCNT[0]),
        .R(RST_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \VCNT_reg[1] 
       (.C(PCK),
        .CE(hcntend),
        .D(VCNT_0[1]),
        .Q(VCNT[1]),
        .R(RST_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \VCNT_reg[2] 
       (.C(PCK),
        .CE(hcntend),
        .D(VCNT_0[2]),
        .Q(VCNT[2]),
        .R(RST_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \VCNT_reg[3] 
       (.C(PCK),
        .CE(hcntend),
        .D(VCNT_0[3]),
        .Q(VCNT[3]),
        .R(RST_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \VCNT_reg[4] 
       (.C(PCK),
        .CE(hcntend),
        .D(\VCNT[4]_i_1_n_0 ),
        .Q(VCNT[4]),
        .R(RST_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \VCNT_reg[5] 
       (.C(PCK),
        .CE(hcntend),
        .D(\VCNT[5]_i_1_n_0 ),
        .Q(VCNT[5]),
        .R(RST_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \VCNT_reg[6] 
       (.C(PCK),
        .CE(hcntend),
        .D(\VCNT[6]_i_1_n_0 ),
        .Q(VCNT[6]),
        .R(RST_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \VCNT_reg[7] 
       (.C(PCK),
        .CE(hcntend),
        .D(\VCNT[7]_i_1_n_0 ),
        .Q(VCNT[7]),
        .R(RST_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \VCNT_reg[8] 
       (.C(PCK),
        .CE(hcntend),
        .D(VCNT_0[8]),
        .Q(VCNT[8]),
        .R(RST_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \VCNT_reg[9] 
       (.C(PCK),
        .CE(hcntend),
        .D(VCNT_0[9]),
        .Q(VCNT[9]),
        .R(RST_IBUF));
  LUT6 #(
    .INIT(64'h8228822882282882)) 
    \VGA_B[0]_i_1 
       (.I0(\HCNT_reg[9]_0 ),
        .I1(O[0]),
        .I2(\VGA_G[0]_i_3_n_0 ),
        .I3(\VGA_B_reg[0] ),
        .I4(\VGA_B[0]_i_2_n_0 ),
        .I5(\VGA_B_reg[0]_0 ),
        .O(rgb_12__146_carry__5));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \VGA_B[0]_i_2 
       (.I0(rgb_12_carry__0_i_13_n_0),
        .I1(\VGA_R_reg[0]_0 ),
        .O(\VGA_B[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h04)) 
    VGA_DE_i_1
       (.I0(VGA_DE_i_2_n_0),
        .I1(rgb_12_carry__0_i_13_n_0),
        .I2(RST_IBUF),
        .O(\HCNT_reg[9]_0 ));
  LUT6 #(
    .INIT(64'h8888888999999991)) 
    VGA_DE_i_2
       (.I0(HCNT[9]),
        .I1(HCNT[8]),
        .I2(\VCNT[9]_i_3_n_0 ),
        .I3(HCNT[6]),
        .I4(HCNT[5]),
        .I5(HCNT[7]),
        .O(VGA_DE_i_2_n_0));
  LUT5 #(
    .INIT(32'h28822828)) 
    \VGA_G[0]_i_1 
       (.I0(\HCNT_reg[9]_0 ),
        .I1(\VGA_G[0]_i_2_n_0 ),
        .I2(O[1]),
        .I3(\VGA_G[0]_i_3_n_0 ),
        .I4(O[0]),
        .O(rgb_0_carry__1));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h55A6)) 
    \VGA_G[0]_i_2 
       (.I0(\VGA_B_reg[0] ),
        .I1(rgb_12_carry__0_i_13_n_0),
        .I2(\VGA_R_reg[0]_0 ),
        .I3(\VGA_B_reg[0]_0 ),
        .O(\VGA_G[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBBEABFAAAAAAAAAA)) 
    \VGA_G[0]_i_3 
       (.I0(\VGA_R_reg[0] ),
        .I1(O[2]),
        .I2(O[1]),
        .I3(O[3]),
        .I4(O[0]),
        .I5(\HCNT_reg[8]_0 [1]),
        .O(\VGA_G[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFBAA8AAAA)) 
    VGA_HS_i_1
       (.I0(vid_pHSync),
        .I1(HCNT[4]),
        .I2(HCNT[5]),
        .I3(HCNT[6]),
        .I4(VGA_HS_i_2_n_0),
        .I5(RST_IBUF),
        .O(VGA_HS_i_1_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    VGA_HS_i_2
       (.I0(VGA_HS_i_3_n_0),
        .I1(HCNT[9]),
        .I2(HCNT[8]),
        .I3(HCNT[7]),
        .O(VGA_HS_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    VGA_HS_i_3
       (.I0(HCNT[1]),
        .I1(HCNT[0]),
        .I2(HCNT[2]),
        .I3(HCNT[3]),
        .O(VGA_HS_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    VGA_HS_reg
       (.C(PCK),
        .CE(1'b1),
        .D(VGA_HS_i_1_n_0),
        .Q(vid_pHSync),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h2822222282888888)) 
    \VGA_R[0]_i_1 
       (.I0(\HCNT_reg[9]_0 ),
        .I1(O[2]),
        .I2(\VGA_G[0]_i_3_n_0 ),
        .I3(O[0]),
        .I4(O[1]),
        .I5(\VGA_G[0]_i_2_n_0 ),
        .O(\VGA_G[0]_i_2_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'hE)) 
    VGA_VS_i_1
       (.I0(VGA_VS_i_2_n_0),
        .I1(RST_IBUF),
        .O(VGA_VS_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFF7FF00000080)) 
    VGA_VS_i_2
       (.I0(VGA_VS_i_3_n_0),
        .I1(VGA_VS_i_4_n_0),
        .I2(VCNT[2]),
        .I3(VCNT[1]),
        .I4(\VCNT[9]_i_5_n_0 ),
        .I5(vid_pVSync),
        .O(VGA_VS_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    VGA_VS_i_3
       (.I0(VGA_HS_i_3_n_0),
        .I1(HCNT[4]),
        .I2(VGA_VS_i_5_n_0),
        .I3(HCNT[7]),
        .I4(HCNT[8]),
        .I5(HCNT[9]),
        .O(VGA_VS_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    VGA_VS_i_4
       (.I0(VCNT[0]),
        .I1(VCNT[9]),
        .O(VGA_VS_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    VGA_VS_i_5
       (.I0(HCNT[6]),
        .I1(HCNT[5]),
        .O(VGA_VS_i_5_n_0));
  FDRE #(
    .INIT(1'b0)) 
    VGA_VS_reg
       (.C(PCK),
        .CE(1'b1),
        .D(VGA_VS_i_1_n_0),
        .Q(vid_pVSync),
        .R(1'b0));
  pckgen pckgen
       (.PCK(PCK),
        .SYSCLK(CLK),
        .locked(NLW_pckgen_locked_UNCONNECTED));
  LUT5 #(
    .INIT(32'h17880000)) 
    rgb_0__23_carry__0_i_1
       (.I0(O[1]),
        .I1(O[3]),
        .I2(O[0]),
        .I3(O[2]),
        .I4(rgb_0__23_carry__0_i_5_n_0),
        .O(DI[1]));
  LUT5 #(
    .INIT(32'h41141414)) 
    rgb_0__23_carry__0_i_2
       (.I0(rgb_0__23_carry_i_8_n_0),
        .I1(O[1]),
        .I2(O[3]),
        .I3(O[0]),
        .I4(O[2]),
        .O(DI[0]));
  LUT6 #(
    .INIT(64'hF1E5AF0F0E1A50F0)) 
    rgb_0__23_carry__0_i_3
       (.I0(rgb_0__23_carry__0_i_5_n_0),
        .I1(O[0]),
        .I2(O[3]),
        .I3(O[1]),
        .I4(O[2]),
        .I5(\HCNT_reg[8]_0 [1]),
        .O(\HCNT_reg[5]_3 [1]));
  LUT6 #(
    .INIT(64'h6659599999A6A666)) 
    rgb_0__23_carry__0_i_4
       (.I0(DI[0]),
        .I1(O[2]),
        .I2(O[0]),
        .I3(O[3]),
        .I4(O[1]),
        .I5(rgb_0__23_carry__0_i_5_n_0),
        .O(\HCNT_reg[5]_3 [0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h01FFFE00)) 
    rgb_0__23_carry__0_i_5
       (.I0(HCNT[5]),
        .I1(HCNT[6]),
        .I2(\VCNT[9]_i_3_n_0 ),
        .I3(HCNT[7]),
        .I4(HCNT[8]),
        .O(rgb_0__23_carry__0_i_5_n_0));
  LUT5 #(
    .INIT(32'h666FFFF6)) 
    rgb_0__23_carry_i_1
       (.I0(O[2]),
        .I1(O[0]),
        .I2(HCNT[5]),
        .I3(\VCNT[9]_i_3_n_0 ),
        .I4(HCNT[6]),
        .O(\HCNT_reg[5]_2 [2]));
  (* HLUTNM = "lutpair0" *) 
  LUT2 #(
    .INIT(4'h8)) 
    rgb_0__23_carry_i_2
       (.I0(\HCNT_reg[5]_1 [1]),
        .I1(O[1]),
        .O(\HCNT_reg[5]_2 [1]));
  LUT6 #(
    .INIT(64'hEAAAAAAABFFFFFFF)) 
    rgb_0__23_carry_i_3
       (.I0(O[0]),
        .I1(HCNT[1]),
        .I2(HCNT[0]),
        .I3(HCNT[2]),
        .I4(HCNT[3]),
        .I5(HCNT[4]),
        .O(\HCNT_reg[5]_2 [0]));
  LUT6 #(
    .INIT(64'h6A95956A956A6A95)) 
    rgb_0__23_carry_i_4
       (.I0(\HCNT_reg[5]_2 [2]),
        .I1(O[2]),
        .I2(O[0]),
        .I3(O[3]),
        .I4(O[1]),
        .I5(rgb_0__23_carry_i_8_n_0),
        .O(\HCNT_reg[5]_4 [3]));
  LUT6 #(
    .INIT(64'h6996699669969669)) 
    rgb_0__23_carry_i_5
       (.I0(\HCNT_reg[5]_2 [1]),
        .I1(O[0]),
        .I2(O[2]),
        .I3(HCNT[6]),
        .I4(\VCNT[9]_i_3_n_0 ),
        .I5(HCNT[5]),
        .O(\HCNT_reg[5]_4 [2]));
  (* HLUTNM = "lutpair0" *) 
  LUT3 #(
    .INIT(8'h96)) 
    rgb_0__23_carry_i_6
       (.I0(\HCNT_reg[5]_1 [1]),
        .I1(O[1]),
        .I2(\HCNT_reg[5]_2 [0]),
        .O(\HCNT_reg[5]_4 [1]));
  LUT6 #(
    .INIT(64'h80007FFF7FFF8000)) 
    rgb_0__23_carry_i_7
       (.I0(HCNT[1]),
        .I1(HCNT[0]),
        .I2(HCNT[2]),
        .I3(HCNT[3]),
        .I4(HCNT[4]),
        .I5(O[0]),
        .O(\HCNT_reg[5]_4 [0]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h5556)) 
    rgb_0__23_carry_i_8
       (.I0(HCNT[7]),
        .I1(\VCNT[9]_i_3_n_0 ),
        .I2(HCNT[6]),
        .I3(HCNT[5]),
        .O(rgb_0__23_carry_i_8_n_0));
  LUT4 #(
    .INIT(16'hFE01)) 
    rgb_0_carry__0_i_1
       (.I0(HCNT[5]),
        .I1(HCNT[6]),
        .I2(\VCNT[9]_i_3_n_0 ),
        .I3(HCNT[7]),
        .O(\HCNT_reg[5]_1 [3]));
  LUT3 #(
    .INIT(8'h1E)) 
    rgb_0_carry__0_i_2
       (.I0(HCNT[5]),
        .I1(\VCNT[9]_i_3_n_0 ),
        .I2(HCNT[6]),
        .O(\HCNT_reg[5]_1 [2]));
  LUT3 #(
    .INIT(8'h78)) 
    rgb_0_carry__0_i_3
       (.I0(HCNT[1]),
        .I1(HCNT[0]),
        .I2(HCNT[2]),
        .O(\HCNT_reg[5]_1 [0]));
  LUT4 #(
    .INIT(16'h5BA4)) 
    rgb_0_carry__0_i_4
       (.I0(HCNT[5]),
        .I1(HCNT[6]),
        .I2(\VCNT[9]_i_3_n_0 ),
        .I3(HCNT[7]),
        .O(\HCNT_reg[5]_0 [3]));
  LUT6 #(
    .INIT(64'h7FFF800080007FFF)) 
    rgb_0_carry__0_i_5
       (.I0(HCNT[1]),
        .I1(HCNT[0]),
        .I2(HCNT[2]),
        .I3(HCNT[3]),
        .I4(HCNT[4]),
        .I5(rgb_00[6]),
        .O(\HCNT_reg[5]_0 [2]));
  LUT6 #(
    .INIT(64'h43333333BCCCCCCC)) 
    rgb_0_carry__0_i_6
       (.I0(HCNT[4]),
        .I1(HCNT[3]),
        .I2(HCNT[2]),
        .I3(HCNT[0]),
        .I4(HCNT[1]),
        .I5(HCNT[5]),
        .O(\HCNT_reg[5]_0 [1]));
  LUT5 #(
    .INIT(32'hF8780787)) 
    rgb_0_carry__0_i_7
       (.I0(HCNT[1]),
        .I1(HCNT[0]),
        .I2(HCNT[2]),
        .I3(HCNT[3]),
        .I4(HCNT[4]),
        .O(\HCNT_reg[5]_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hA9)) 
    rgb_0_carry__0_i_8
       (.I0(HCNT[6]),
        .I1(\VCNT[9]_i_3_n_0 ),
        .I2(HCNT[5]),
        .O(rgb_00[6]));
  LUT5 #(
    .INIT(32'h99999995)) 
    rgb_0_carry__1_i_1
       (.I0(HCNT[8]),
        .I1(HCNT[7]),
        .I2(\VCNT[9]_i_3_n_0 ),
        .I3(HCNT[6]),
        .I4(HCNT[5]),
        .O(\HCNT_reg[8]_0 [2]));
  LUT6 #(
    .INIT(64'h555555556666666A)) 
    rgb_0_carry__1_i_2
       (.I0(HCNT[9]),
        .I1(HCNT[7]),
        .I2(\VCNT[9]_i_3_n_0 ),
        .I3(HCNT[6]),
        .I4(HCNT[5]),
        .I5(HCNT[8]),
        .O(\HCNT_reg[8]_0 [1]));
  LUT3 #(
    .INIT(8'hA9)) 
    rgb_0_carry__1_i_3
       (.I0(HCNT[6]),
        .I1(\VCNT[9]_i_3_n_0 ),
        .I2(HCNT[5]),
        .O(\HCNT_reg[8]_0 [0]));
  LUT6 #(
    .INIT(64'h555555556666666A)) 
    rgb_0_carry__1_i_4
       (.I0(HCNT[9]),
        .I1(HCNT[7]),
        .I2(\VCNT[9]_i_3_n_0 ),
        .I3(HCNT[6]),
        .I4(HCNT[5]),
        .I5(HCNT[8]),
        .O(\HCNT_reg[9]_1 [3]));
  LUT5 #(
    .INIT(32'h01FFFE00)) 
    rgb_0_carry__1_i_5
       (.I0(HCNT[5]),
        .I1(HCNT[6]),
        .I2(\VCNT[9]_i_3_n_0 ),
        .I3(HCNT[7]),
        .I4(HCNT[8]),
        .O(\HCNT_reg[9]_1 [2]));
  LUT6 #(
    .INIT(64'h0002AAA9FFFD5556)) 
    rgb_0_carry__1_i_6
       (.I0(HCNT[8]),
        .I1(HCNT[5]),
        .I2(HCNT[6]),
        .I3(\VCNT[9]_i_3_n_0 ),
        .I4(HCNT[7]),
        .I5(HCNT[9]),
        .O(\HCNT_reg[9]_1 [1]));
  LUT5 #(
    .INIT(32'h99669665)) 
    rgb_0_carry__1_i_7
       (.I0(HCNT[8]),
        .I1(HCNT[7]),
        .I2(\VCNT[9]_i_3_n_0 ),
        .I3(HCNT[6]),
        .I4(HCNT[5]),
        .O(\HCNT_reg[9]_1 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    rgb_0_carry_i_1
       (.I0(HCNT[0]),
        .I1(HCNT[1]),
        .O(\HCNT_reg[0]_0 [1]));
  LUT1 #(
    .INIT(2'h1)) 
    rgb_0_carry_i_2
       (.I0(HCNT[0]),
        .O(\HCNT_reg[0]_0 [0]));
  LUT4 #(
    .INIT(16'hBC43)) 
    rgb_0_carry_i_3
       (.I0(HCNT[2]),
        .I1(HCNT[1]),
        .I2(HCNT[0]),
        .I3(HCNT[3]),
        .O(S[3]));
  LUT3 #(
    .INIT(8'hA6)) 
    rgb_0_carry_i_4
       (.I0(HCNT[2]),
        .I1(HCNT[0]),
        .I2(HCNT[1]),
        .O(S[2]));
  LUT2 #(
    .INIT(4'h9)) 
    rgb_0_carry_i_5
       (.I0(HCNT[1]),
        .I1(HCNT[0]),
        .O(S[1]));
  LUT1 #(
    .INIT(2'h1)) 
    rgb_0_carry_i_6
       (.I0(HCNT[0]),
        .O(S[0]));
  CARRY4 rgb_12__123_carry__1_i_1
       (.CI(rgb_12__123_carry__1),
        .CO({NLW_rgb_12__123_carry__1_i_1_CO_UNCONNECTED[3:1],rgb_12__72_carry__4}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_rgb_12__123_carry__1_i_1_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  LUT2 #(
    .INIT(4'h6)) 
    rgb_12__123_carry__1_i_2
       (.I0(rgb_12__72_carry__4),
        .I1(rgb_12_carry__0_i_13_n_0),
        .O(\VCNT_reg[9]_18 ));
  LUT2 #(
    .INIT(4'h8)) 
    rgb_12__146_carry__0_i_1
       (.I0(rgb_12__146_carry__0[3]),
        .I1(rgb_12_carry__0_i_13_n_0),
        .O(\VCNT_reg[9]_9 [3]));
  LUT2 #(
    .INIT(4'h8)) 
    rgb_12__146_carry__0_i_2
       (.I0(rgb_12__146_carry__0[2]),
        .I1(rgb_12_carry__0_i_9_n_0),
        .O(\VCNT_reg[9]_9 [2]));
  (* HLUTNM = "lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    rgb_12__146_carry__0_i_3
       (.I0(rgb_12__146_carry__0[1]),
        .I1(\VCNT_reg[0]_1 [1]),
        .O(\VCNT_reg[9]_9 [1]));
  LUT2 #(
    .INIT(4'h8)) 
    rgb_12__146_carry__0_i_4
       (.I0(rgb_12__146_carry__0[0]),
        .I1(rgb_12_carry__0_i_12_n_0),
        .O(\VCNT_reg[9]_9 [0]));
  LUT3 #(
    .INIT(8'hB4)) 
    rgb_12__146_carry__0_i_5
       (.I0(rgb_12__146_carry__0[3]),
        .I1(rgb_12_carry__0_i_13_n_0),
        .I2(rgb_12__146_carry__1[0]),
        .O(\VCNT_reg[9]_19 [3]));
  LUT4 #(
    .INIT(16'h8778)) 
    rgb_12__146_carry__0_i_6
       (.I0(rgb_12_carry__0_i_9_n_0),
        .I1(rgb_12__146_carry__0[2]),
        .I2(rgb_12_carry__0_i_13_n_0),
        .I3(rgb_12__146_carry__0[3]),
        .O(\VCNT_reg[9]_19 [2]));
  LUT3 #(
    .INIT(8'h96)) 
    rgb_12__146_carry__0_i_7
       (.I0(\VCNT_reg[9]_9 [1]),
        .I1(rgb_12_carry__0_i_9_n_0),
        .I2(rgb_12__146_carry__0[2]),
        .O(\VCNT_reg[9]_19 [1]));
  (* HLUTNM = "lutpair6" *) 
  LUT4 #(
    .INIT(16'h6999)) 
    rgb_12__146_carry__0_i_8
       (.I0(rgb_12__146_carry__0[1]),
        .I1(\VCNT_reg[0]_1 [1]),
        .I2(rgb_12_carry__0_i_12_n_0),
        .I3(rgb_12__146_carry__0[0]),
        .O(\VCNT_reg[9]_19 [0]));
  LUT2 #(
    .INIT(4'h2)) 
    rgb_12__146_carry__1_i_1
       (.I0(rgb_12_carry__0_i_13_n_0),
        .I1(\VGA_R_reg[0]_0 ),
        .O(\VCNT_reg[9]_10 [3]));
  LUT2 #(
    .INIT(4'h2)) 
    rgb_12__146_carry__1_i_2
       (.I0(rgb_12_carry__0_i_13_n_0),
        .I1(\VGA_R_reg[0]_0 ),
        .O(\VCNT_reg[9]_10 [2]));
  LUT2 #(
    .INIT(4'h8)) 
    rgb_12__146_carry__1_i_3
       (.I0(rgb_12__146_carry__1[1]),
        .I1(rgb_12_carry__0_i_13_n_0),
        .O(\VCNT_reg[9]_10 [1]));
  LUT2 #(
    .INIT(4'h8)) 
    rgb_12__146_carry__1_i_4
       (.I0(rgb_12__146_carry__1[0]),
        .I1(rgb_12_carry__0_i_13_n_0),
        .O(\VCNT_reg[9]_10 [0]));
  LUT2 #(
    .INIT(4'hB)) 
    rgb_12__146_carry__1_i_5
       (.I0(rgb_12_carry__0_i_13_n_0),
        .I1(\VGA_R_reg[0]_0 ),
        .O(\VCNT_reg[9]_20 [3]));
  LUT2 #(
    .INIT(4'hB)) 
    rgb_12__146_carry__1_i_6
       (.I0(rgb_12_carry__0_i_13_n_0),
        .I1(\VGA_R_reg[0]_0 ),
        .O(\VCNT_reg[9]_20 [2]));
  LUT3 #(
    .INIT(8'h4B)) 
    rgb_12__146_carry__1_i_7
       (.I0(rgb_12__146_carry__1[1]),
        .I1(rgb_12_carry__0_i_13_n_0),
        .I2(\VGA_R_reg[0]_0 ),
        .O(\VCNT_reg[9]_20 [1]));
  LUT3 #(
    .INIT(8'hB4)) 
    rgb_12__146_carry__1_i_8
       (.I0(rgb_12__146_carry__1[0]),
        .I1(rgb_12_carry__0_i_13_n_0),
        .I2(rgb_12__146_carry__1[1]),
        .O(\VCNT_reg[9]_20 [0]));
  LUT2 #(
    .INIT(4'h2)) 
    rgb_12__146_carry__2_i_1
       (.I0(rgb_12_carry__0_i_13_n_0),
        .I1(\VGA_R_reg[0]_0 ),
        .O(\VCNT_reg[9]_14 [3]));
  LUT2 #(
    .INIT(4'h2)) 
    rgb_12__146_carry__2_i_2
       (.I0(rgb_12_carry__0_i_13_n_0),
        .I1(\VGA_R_reg[0]_0 ),
        .O(\VCNT_reg[9]_14 [2]));
  LUT2 #(
    .INIT(4'h2)) 
    rgb_12__146_carry__2_i_3
       (.I0(rgb_12_carry__0_i_13_n_0),
        .I1(\VGA_R_reg[0]_0 ),
        .O(\VCNT_reg[9]_14 [1]));
  LUT2 #(
    .INIT(4'h2)) 
    rgb_12__146_carry__2_i_4
       (.I0(rgb_12_carry__0_i_13_n_0),
        .I1(\VGA_R_reg[0]_0 ),
        .O(\VCNT_reg[9]_14 [0]));
  LUT2 #(
    .INIT(4'hB)) 
    rgb_12__146_carry__2_i_5
       (.I0(rgb_12_carry__0_i_13_n_0),
        .I1(\VGA_R_reg[0]_0 ),
        .O(\VCNT_reg[9]_22 [3]));
  LUT2 #(
    .INIT(4'hB)) 
    rgb_12__146_carry__2_i_6
       (.I0(rgb_12_carry__0_i_13_n_0),
        .I1(\VGA_R_reg[0]_0 ),
        .O(\VCNT_reg[9]_22 [2]));
  LUT2 #(
    .INIT(4'hB)) 
    rgb_12__146_carry__2_i_7
       (.I0(rgb_12_carry__0_i_13_n_0),
        .I1(\VGA_R_reg[0]_0 ),
        .O(\VCNT_reg[9]_22 [1]));
  LUT2 #(
    .INIT(4'hB)) 
    rgb_12__146_carry__2_i_8
       (.I0(rgb_12_carry__0_i_13_n_0),
        .I1(\VGA_R_reg[0]_0 ),
        .O(\VCNT_reg[9]_22 [0]));
  LUT2 #(
    .INIT(4'h2)) 
    rgb_12__146_carry__3_i_1
       (.I0(rgb_12_carry__0_i_13_n_0),
        .I1(\VGA_R_reg[0]_0 ),
        .O(\VCNT_reg[9]_15 [3]));
  LUT2 #(
    .INIT(4'h2)) 
    rgb_12__146_carry__3_i_2
       (.I0(rgb_12_carry__0_i_13_n_0),
        .I1(\VGA_R_reg[0]_0 ),
        .O(\VCNT_reg[9]_15 [2]));
  LUT2 #(
    .INIT(4'h2)) 
    rgb_12__146_carry__3_i_3
       (.I0(rgb_12_carry__0_i_13_n_0),
        .I1(\VGA_R_reg[0]_0 ),
        .O(\VCNT_reg[9]_15 [1]));
  LUT2 #(
    .INIT(4'h2)) 
    rgb_12__146_carry__3_i_4
       (.I0(rgb_12_carry__0_i_13_n_0),
        .I1(\VGA_R_reg[0]_0 ),
        .O(\VCNT_reg[9]_15 [0]));
  LUT2 #(
    .INIT(4'hB)) 
    rgb_12__146_carry__3_i_5
       (.I0(rgb_12_carry__0_i_13_n_0),
        .I1(\VGA_R_reg[0]_0 ),
        .O(\VCNT_reg[9]_23 [3]));
  LUT2 #(
    .INIT(4'hB)) 
    rgb_12__146_carry__3_i_6
       (.I0(rgb_12_carry__0_i_13_n_0),
        .I1(\VGA_R_reg[0]_0 ),
        .O(\VCNT_reg[9]_23 [2]));
  LUT2 #(
    .INIT(4'hB)) 
    rgb_12__146_carry__3_i_7
       (.I0(rgb_12_carry__0_i_13_n_0),
        .I1(\VGA_R_reg[0]_0 ),
        .O(\VCNT_reg[9]_23 [1]));
  LUT2 #(
    .INIT(4'hB)) 
    rgb_12__146_carry__3_i_8
       (.I0(rgb_12_carry__0_i_13_n_0),
        .I1(\VGA_R_reg[0]_0 ),
        .O(\VCNT_reg[9]_23 [0]));
  LUT2 #(
    .INIT(4'h2)) 
    rgb_12__146_carry__4_i_1
       (.I0(rgb_12_carry__0_i_13_n_0),
        .I1(\VGA_R_reg[0]_0 ),
        .O(\VCNT_reg[9]_16 [3]));
  LUT2 #(
    .INIT(4'h2)) 
    rgb_12__146_carry__4_i_2
       (.I0(rgb_12_carry__0_i_13_n_0),
        .I1(\VGA_R_reg[0]_0 ),
        .O(\VCNT_reg[9]_16 [2]));
  LUT2 #(
    .INIT(4'h2)) 
    rgb_12__146_carry__4_i_3
       (.I0(rgb_12_carry__0_i_13_n_0),
        .I1(\VGA_R_reg[0]_0 ),
        .O(\VCNT_reg[9]_16 [1]));
  LUT2 #(
    .INIT(4'h2)) 
    rgb_12__146_carry__4_i_4
       (.I0(rgb_12_carry__0_i_13_n_0),
        .I1(\VGA_R_reg[0]_0 ),
        .O(\VCNT_reg[9]_16 [0]));
  LUT2 #(
    .INIT(4'hB)) 
    rgb_12__146_carry__4_i_5
       (.I0(rgb_12_carry__0_i_13_n_0),
        .I1(\VGA_R_reg[0]_0 ),
        .O(\VCNT_reg[9]_24 [3]));
  LUT2 #(
    .INIT(4'hB)) 
    rgb_12__146_carry__4_i_6
       (.I0(rgb_12_carry__0_i_13_n_0),
        .I1(\VGA_R_reg[0]_0 ),
        .O(\VCNT_reg[9]_24 [2]));
  LUT2 #(
    .INIT(4'hB)) 
    rgb_12__146_carry__4_i_7
       (.I0(rgb_12_carry__0_i_13_n_0),
        .I1(\VGA_R_reg[0]_0 ),
        .O(\VCNT_reg[9]_24 [1]));
  LUT2 #(
    .INIT(4'hB)) 
    rgb_12__146_carry__4_i_8
       (.I0(rgb_12_carry__0_i_13_n_0),
        .I1(\VGA_R_reg[0]_0 ),
        .O(\VCNT_reg[9]_24 [0]));
  LUT2 #(
    .INIT(4'h2)) 
    rgb_12__146_carry__5_i_1
       (.I0(rgb_12_carry__0_i_13_n_0),
        .I1(\VGA_R_reg[0]_0 ),
        .O(\VCNT_reg[9]_17 [3]));
  LUT2 #(
    .INIT(4'h2)) 
    rgb_12__146_carry__5_i_2
       (.I0(rgb_12_carry__0_i_13_n_0),
        .I1(\VGA_R_reg[0]_0 ),
        .O(\VCNT_reg[9]_17 [2]));
  LUT2 #(
    .INIT(4'h2)) 
    rgb_12__146_carry__5_i_3
       (.I0(rgb_12_carry__0_i_13_n_0),
        .I1(\VGA_R_reg[0]_0 ),
        .O(\VCNT_reg[9]_17 [1]));
  LUT2 #(
    .INIT(4'h2)) 
    rgb_12__146_carry__5_i_4
       (.I0(rgb_12_carry__0_i_13_n_0),
        .I1(\VGA_R_reg[0]_0 ),
        .O(\VCNT_reg[9]_17 [0]));
  LUT2 #(
    .INIT(4'hB)) 
    rgb_12__146_carry__5_i_5
       (.I0(rgb_12_carry__0_i_13_n_0),
        .I1(\VGA_R_reg[0]_0 ),
        .O(\VCNT_reg[9]_21 [3]));
  LUT2 #(
    .INIT(4'hB)) 
    rgb_12__146_carry__5_i_6
       (.I0(rgb_12_carry__0_i_13_n_0),
        .I1(\VGA_R_reg[0]_0 ),
        .O(\VCNT_reg[9]_21 [2]));
  LUT2 #(
    .INIT(4'hB)) 
    rgb_12__146_carry__5_i_7
       (.I0(rgb_12_carry__0_i_13_n_0),
        .I1(\VGA_R_reg[0]_0 ),
        .O(\VCNT_reg[9]_21 [1]));
  LUT2 #(
    .INIT(4'hB)) 
    rgb_12__146_carry__5_i_8
       (.I0(rgb_12_carry__0_i_13_n_0),
        .I1(\VGA_R_reg[0]_0 ),
        .O(\VCNT_reg[9]_21 [0]));
  (* HLUTNM = "lutpair5" *) 
  LUT2 #(
    .INIT(4'hE)) 
    rgb_12__146_carry_i_1
       (.I0(rgb_12__146_carry[3]),
        .I1(rgb_12_carry_i_8_n_0),
        .O(\VCNT_reg[6]_0 [3]));
  LUT2 #(
    .INIT(4'hB)) 
    rgb_12__146_carry_i_2
       (.I0(rgb_12__146_carry[2]),
        .I1(rgb_12_carry__0_i_10_n_0),
        .O(\VCNT_reg[6]_0 [2]));
  LUT6 #(
    .INIT(64'hBFBFBFFFEAEAEAAA)) 
    rgb_12__146_carry_i_3
       (.I0(rgb_12__146_carry[1]),
        .I1(VCNT[3]),
        .I2(VCNT[2]),
        .I3(VCNT[0]),
        .I4(VCNT[1]),
        .I5(VCNT[4]),
        .O(\VCNT_reg[6]_0 [1]));
  LUT5 #(
    .INIT(32'hEEEBBBBB)) 
    rgb_12__146_carry_i_4
       (.I0(rgb_12__146_carry[0]),
        .I1(VCNT[3]),
        .I2(VCNT[1]),
        .I3(VCNT[0]),
        .I4(VCNT[2]),
        .O(\VCNT_reg[6]_0 [0]));
  LUT3 #(
    .INIT(8'h96)) 
    rgb_12__146_carry_i_5
       (.I0(\VCNT_reg[6]_0 [3]),
        .I1(rgb_12_carry__0_i_12_n_0),
        .I2(rgb_12__146_carry__0[0]),
        .O(\VCNT_reg[7]_0 [3]));
  (* HLUTNM = "lutpair5" *) 
  LUT4 #(
    .INIT(16'h6696)) 
    rgb_12__146_carry_i_6
       (.I0(rgb_12__146_carry[3]),
        .I1(rgb_12_carry_i_8_n_0),
        .I2(rgb_12_carry__0_i_10_n_0),
        .I3(rgb_12__146_carry[2]),
        .O(\VCNT_reg[7]_0 [2]));
  LUT3 #(
    .INIT(8'h96)) 
    rgb_12__146_carry_i_7
       (.I0(\VCNT_reg[6]_0 [1]),
        .I1(rgb_12_carry__0_i_10_n_0),
        .I2(rgb_12__146_carry[2]),
        .O(\VCNT_reg[7]_0 [1]));
  LUT4 #(
    .INIT(16'h2DD2)) 
    rgb_12__146_carry_i_8
       (.I0(rgb_12_carry__1_i_9_n_0),
        .I1(rgb_12__146_carry[0]),
        .I2(rgb_12_carry__0_i_14_n_0),
        .I3(rgb_12__146_carry[1]),
        .O(\VCNT_reg[7]_0 [0]));
  LUT4 #(
    .INIT(16'h6996)) 
    rgb_12__27_carry__0_i_1
       (.I0(rgb_12_carry__0_i_9_n_0),
        .I1(VCNT[0]),
        .I2(VCNT[1]),
        .I3(rgb_12_carry__0_i_10_n_0),
        .O(\VCNT_reg[0]_1 [2]));
  LUT1 #(
    .INIT(2'h1)) 
    rgb_12__27_carry__0_i_2
       (.I0(rgb_12_carry__0_i_12_n_0),
        .O(\VCNT_reg[0]_1 [0]));
  LUT6 #(
    .INIT(64'h9696966969696996)) 
    rgb_12__27_carry__0_i_3
       (.I0(\VCNT_reg[0]_1 [3]),
        .I1(rgb_12_carry__0_i_13_n_0),
        .I2(rgb_12_carry_i_8_n_0),
        .I3(VCNT[0]),
        .I4(VCNT[1]),
        .I5(VCNT[2]),
        .O(\VCNT_reg[0]_0 [3]));
  (* HLUTNM = "lutpair1" *) 
  LUT5 #(
    .INIT(32'h69966699)) 
    rgb_12__27_carry__0_i_4
       (.I0(rgb_12_carry__0_i_9_n_0),
        .I1(rgb_12_carry__0_i_10_n_0),
        .I2(VCNT[0]),
        .I3(VCNT[1]),
        .I4(rgb_12_carry__0_i_14_n_0),
        .O(\VCNT_reg[0]_0 [2]));
  LUT6 #(
    .INIT(64'h639999999C666666)) 
    rgb_12__27_carry__0_i_5
       (.I0(VCNT[0]),
        .I1(VCNT[4]),
        .I2(VCNT[1]),
        .I3(VCNT[2]),
        .I4(VCNT[3]),
        .I5(\VCNT_reg[0]_1 [1]),
        .O(\VCNT_reg[0]_0 [1]));
  LUT5 #(
    .INIT(32'h66699999)) 
    rgb_12__27_carry__0_i_6
       (.I0(rgb_12_carry__0_i_12_n_0),
        .I1(VCNT[3]),
        .I2(VCNT[1]),
        .I3(VCNT[0]),
        .I4(VCNT[2]),
        .O(\VCNT_reg[0]_0 [0]));
  LUT6 #(
    .INIT(64'h55FFAA00AA0056FE)) 
    rgb_12__27_carry__1_i_1
       (.I0(VCNT[9]),
        .I1(VCNT[8]),
        .I2(VCNT[7]),
        .I3(rgb_12_carry__0_i_10_n_0),
        .I4(rgb_12_carry__0_i_11_n_0),
        .I5(VCNT[6]),
        .O(\VCNT_reg[9]_0 [3]));
  LUT4 #(
    .INIT(16'h6996)) 
    rgb_12__27_carry__1_i_2
       (.I0(\VCNT_reg[9]_1 [2]),
        .I1(rgb_12_carry__0_i_10_n_0),
        .I2(rgb_12_carry__0_i_9_n_0),
        .I3(rgb_12_carry__0_i_13_n_0),
        .O(\VCNT_reg[9]_0 [2]));
  (* HLUTNM = "lutpair2" *) 
  LUT4 #(
    .INIT(16'h7887)) 
    rgb_12__27_carry__1_i_3
       (.I0(rgb_12_carry__0_i_13_n_0),
        .I1(\VCNT_reg[0]_1 [1]),
        .I2(rgb_12_carry__0_i_14_n_0),
        .I3(\VCNT_reg[9]_1 [1]),
        .O(\VCNT_reg[9]_0 [1]));
  LUT4 #(
    .INIT(16'h6996)) 
    rgb_12__27_carry__1_i_4
       (.I0(\VCNT_reg[9]_1 [0]),
        .I1(rgb_12_carry__0_i_13_n_0),
        .I2(rgb_12_carry__0_i_12_n_0),
        .I3(rgb_12_carry__1_i_9_n_0),
        .O(\VCNT_reg[9]_0 [0]));
  LUT1 #(
    .INIT(2'h1)) 
    rgb_12__27_carry__2_i_1
       (.I0(rgb_12_carry__0_i_13_n_0),
        .O(\VCNT_reg[9]_12 [3]));
  LUT1 #(
    .INIT(2'h1)) 
    rgb_12__27_carry__2_i_2
       (.I0(rgb_12_carry__0_i_13_n_0),
        .O(\VCNT_reg[9]_12 [2]));
  LUT1 #(
    .INIT(2'h1)) 
    rgb_12__27_carry__2_i_3
       (.I0(rgb_12_carry__0_i_13_n_0),
        .O(\VCNT_reg[9]_12 [1]));
  LUT1 #(
    .INIT(2'h1)) 
    rgb_12__27_carry__2_i_4
       (.I0(rgb_12_carry__0_i_13_n_0),
        .O(\VCNT_reg[9]_12 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    rgb_12__27_carry__2_i_5
       (.I0(rgb_12_carry__0_i_13_n_0),
        .I1(rgb_12_carry__0_i_9_n_0),
        .O(\VCNT_reg[9]_2 [2]));
  LUT2 #(
    .INIT(4'h9)) 
    rgb_12__27_carry__2_i_6
       (.I0(rgb_12_carry__0_i_13_n_0),
        .I1(\VCNT_reg[0]_1 [1]),
        .O(\VCNT_reg[9]_2 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    rgb_12__27_carry__2_i_7
       (.I0(rgb_12_carry__0_i_13_n_0),
        .I1(rgb_12_carry__0_i_12_n_0),
        .O(\VCNT_reg[9]_2 [0]));
  LUT1 #(
    .INIT(2'h1)) 
    rgb_12__27_carry_i_1
       (.I0(rgb_12_carry_i_8_n_0),
        .O(\VCNT_reg[6]_1 [2]));
  LUT5 #(
    .INIT(32'h8880777F)) 
    rgb_12__27_carry_i_2
       (.I0(VCNT[3]),
        .I1(VCNT[2]),
        .I2(VCNT[0]),
        .I3(VCNT[1]),
        .I4(VCNT[4]),
        .O(\VCNT_reg[6]_1 [0]));
  LUT4 #(
    .INIT(16'h56A9)) 
    rgb_12__27_carry_i_3
       (.I0(rgb_12_carry_i_8_n_0),
        .I1(VCNT[0]),
        .I2(VCNT[1]),
        .I3(VCNT[2]),
        .O(\VCNT_reg[0]_2 [3]));
  LUT6 #(
    .INIT(64'hEA1515EA15EAAA55)) 
    rgb_12__27_carry_i_4
       (.I0(VCNT[4]),
        .I1(VCNT[2]),
        .I2(VCNT[3]),
        .I3(VCNT[5]),
        .I4(VCNT[1]),
        .I5(VCNT[0]),
        .O(\VCNT_reg[0]_2 [2]));
  LUT5 #(
    .INIT(32'h88777F80)) 
    rgb_12__27_carry_i_5
       (.I0(VCNT[3]),
        .I1(VCNT[2]),
        .I2(VCNT[1]),
        .I3(VCNT[4]),
        .I4(VCNT[0]),
        .O(\VCNT_reg[0]_2 [1]));
  LUT4 #(
    .INIT(16'h57A8)) 
    rgb_12__27_carry_i_6
       (.I0(VCNT[2]),
        .I1(VCNT[0]),
        .I2(VCNT[1]),
        .I3(VCNT[3]),
        .O(\VCNT_reg[0]_2 [0]));
  CARRY4 rgb_12__72_carry__0_i_1
       (.CI(rgb_12__72_carry__0),
        .CO({NLW_rgb_12__72_carry__0_i_1_CO_UNCONNECTED[3:1],CO}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_rgb_12__72_carry__0_i_1_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  LUT1 #(
    .INIT(2'h1)) 
    rgb_12__72_carry__1_i_1
       (.I0(rgb_12_carry__0_i_13_n_0),
        .O(\VCNT_reg[9]_13 [3]));
  LUT1 #(
    .INIT(2'h1)) 
    rgb_12__72_carry__1_i_2
       (.I0(rgb_12_carry__0_i_13_n_0),
        .O(\VCNT_reg[9]_13 [2]));
  LUT1 #(
    .INIT(2'h1)) 
    rgb_12__72_carry__1_i_3
       (.I0(rgb_12_carry__0_i_13_n_0),
        .O(\VCNT_reg[9]_13 [1]));
  LUT1 #(
    .INIT(2'h1)) 
    rgb_12__72_carry__1_i_4
       (.I0(rgb_12_carry__0_i_13_n_0),
        .O(\VCNT_reg[9]_13 [0]));
  LUT2 #(
    .INIT(4'h9)) 
    rgb_12__72_carry__1_i_5
       (.I0(rgb_12_carry__0_i_13_n_0),
        .I1(rgb_12__72_carry__2[0]),
        .O(\VCNT_reg[9]_3 [3]));
  LUT2 #(
    .INIT(4'h9)) 
    rgb_12__72_carry__1_i_6
       (.I0(rgb_12_carry__0_i_13_n_0),
        .I1(rgb_12__72_carry__1[2]),
        .O(\VCNT_reg[9]_3 [2]));
  LUT2 #(
    .INIT(4'h9)) 
    rgb_12__72_carry__1_i_7
       (.I0(rgb_12_carry__0_i_13_n_0),
        .I1(rgb_12__72_carry__1[1]),
        .O(\VCNT_reg[9]_3 [1]));
  LUT2 #(
    .INIT(4'h9)) 
    rgb_12__72_carry__1_i_8
       (.I0(rgb_12_carry__0_i_13_n_0),
        .I1(rgb_12__72_carry__1[0]),
        .O(\VCNT_reg[9]_3 [0]));
  LUT5 #(
    .INIT(32'h2B2B2BB2)) 
    rgb_12__72_carry__2_i_1
       (.I0(rgb_12__72_carry__2[3]),
        .I1(rgb_12_carry__0_i_13_n_0),
        .I2(VCNT[2]),
        .I3(VCNT[1]),
        .I4(VCNT[0]),
        .O(\VCNT_reg[2]_1 [3]));
  (* HLUTNM = "lutpair3" *) 
  LUT4 #(
    .INIT(16'hB22B)) 
    rgb_12__72_carry__2_i_2
       (.I0(rgb_12__72_carry__2[2]),
        .I1(rgb_12_carry__0_i_13_n_0),
        .I2(VCNT[0]),
        .I3(VCNT[1]),
        .O(\VCNT_reg[2]_1 [2]));
  LUT4 #(
    .INIT(16'h6996)) 
    rgb_12__72_carry__2_i_3
       (.I0(VCNT[1]),
        .I1(VCNT[0]),
        .I2(rgb_12_carry__0_i_13_n_0),
        .I3(rgb_12__72_carry__2[2]),
        .O(\VCNT_reg[2]_1 [1]));
  LUT1 #(
    .INIT(2'h1)) 
    rgb_12__72_carry__2_i_4
       (.I0(VCNT[0]),
        .O(\VCNT_reg[2]_1 [0]));
  LUT4 #(
    .INIT(16'h9669)) 
    rgb_12__72_carry__2_i_5
       (.I0(\VCNT_reg[2]_1 [3]),
        .I1(rgb_12__72_carry__3[0]),
        .I2(rgb_12_carry__0_i_13_n_0),
        .I3(rgb_12_carry__1_i_9_n_0),
        .O(\VCNT_reg[2]_0 [3]));
  LUT6 #(
    .INIT(64'h6996699669969669)) 
    rgb_12__72_carry__2_i_6
       (.I0(\VCNT_reg[2]_1 [2]),
        .I1(rgb_12__72_carry__2[3]),
        .I2(rgb_12_carry__0_i_13_n_0),
        .I3(VCNT[2]),
        .I4(VCNT[1]),
        .I5(VCNT[0]),
        .O(\VCNT_reg[2]_0 [2]));
  (* HLUTNM = "lutpair3" *) 
  LUT5 #(
    .INIT(32'h5AA56996)) 
    rgb_12__72_carry__2_i_7
       (.I0(rgb_12__72_carry__2[2]),
        .I1(rgb_12_carry__0_i_13_n_0),
        .I2(VCNT[0]),
        .I3(VCNT[1]),
        .I4(rgb_12__72_carry__2[1]),
        .O(\VCNT_reg[2]_0 [1]));
  LUT3 #(
    .INIT(8'h96)) 
    rgb_12__72_carry__2_i_8
       (.I0(rgb_12_carry__0_i_13_n_0),
        .I1(rgb_12__72_carry__2[1]),
        .I2(VCNT[0]),
        .O(\VCNT_reg[2]_0 [0]));
  LUT3 #(
    .INIT(8'h5D)) 
    rgb_12__72_carry__3_i_1
       (.I0(rgb_12_carry__0_i_13_n_0),
        .I1(rgb_12__72_carry__3[3]),
        .I2(rgb_12_carry_i_8_n_0),
        .O(\VCNT_reg[9]_7 [3]));
  LUT3 #(
    .INIT(8'hD4)) 
    rgb_12__72_carry__3_i_2
       (.I0(rgb_12_carry__0_i_13_n_0),
        .I1(rgb_12__72_carry__3[2]),
        .I2(rgb_12_carry__0_i_10_n_0),
        .O(\VCNT_reg[9]_7 [2]));
  (* HLUTNM = "lutpair4" *) 
  LUT3 #(
    .INIT(8'h2B)) 
    rgb_12__72_carry__3_i_3
       (.I0(rgb_12__72_carry__3[1]),
        .I1(rgb_12_carry__0_i_13_n_0),
        .I2(rgb_12_carry__0_i_14_n_0),
        .O(\VCNT_reg[9]_7 [1]));
  LUT6 #(
    .INIT(64'h57A8FFFF000057A8)) 
    rgb_12__72_carry__3_i_4
       (.I0(VCNT[2]),
        .I1(VCNT[0]),
        .I2(VCNT[1]),
        .I3(VCNT[3]),
        .I4(rgb_12_carry__0_i_13_n_0),
        .I5(rgb_12__72_carry__3[0]),
        .O(\VCNT_reg[9]_7 [0]));
  LUT5 #(
    .INIT(32'hB0404FBF)) 
    rgb_12__72_carry__3_i_5
       (.I0(rgb_12_carry_i_8_n_0),
        .I1(rgb_12__72_carry__3[3]),
        .I2(rgb_12_carry__0_i_13_n_0),
        .I3(rgb_12_carry__0_i_12_n_0),
        .I4(rgb_12__72_carry__3_i_9_n_3),
        .O(\VCNT_reg[6]_3 [3]));
  LUT5 #(
    .INIT(32'h71818E7E)) 
    rgb_12__72_carry__3_i_6
       (.I0(rgb_12_carry__0_i_10_n_0),
        .I1(rgb_12__72_carry__3[2]),
        .I2(rgb_12_carry__0_i_13_n_0),
        .I3(rgb_12_carry_i_8_n_0),
        .I4(rgb_12__72_carry__3[3]),
        .O(\VCNT_reg[6]_3 [2]));
  LUT4 #(
    .INIT(16'h9669)) 
    rgb_12__72_carry__3_i_7
       (.I0(\VCNT_reg[9]_7 [1]),
        .I1(rgb_12__72_carry__3[2]),
        .I2(rgb_12_carry__0_i_13_n_0),
        .I3(rgb_12_carry__0_i_10_n_0),
        .O(\VCNT_reg[6]_3 [1]));
  (* HLUTNM = "lutpair4" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    rgb_12__72_carry__3_i_8
       (.I0(rgb_12__72_carry__3[1]),
        .I1(rgb_12_carry__0_i_13_n_0),
        .I2(rgb_12_carry__0_i_14_n_0),
        .I3(\VCNT_reg[9]_7 [0]),
        .O(\VCNT_reg[6]_3 [0]));
  CARRY4 rgb_12__72_carry__3_i_9
       (.CI(rgb_12__72_carry__3_i_5_0),
        .CO({NLW_rgb_12__72_carry__3_i_9_CO_UNCONNECTED[3:1],rgb_12__72_carry__3_i_9_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_rgb_12__72_carry__3_i_9_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  LUT1 #(
    .INIT(2'h1)) 
    rgb_12__72_carry__4_i_1
       (.I0(rgb_12_carry__0_i_13_n_0),
        .O(\VCNT_reg[9]_8 [3]));
  LUT1 #(
    .INIT(2'h1)) 
    rgb_12__72_carry__4_i_2
       (.I0(rgb_12_carry__0_i_13_n_0),
        .O(\VCNT_reg[9]_8 [2]));
  LUT1 #(
    .INIT(2'h1)) 
    rgb_12__72_carry__4_i_3
       (.I0(rgb_12_carry__0_i_13_n_0),
        .O(\VCNT_reg[9]_8 [1]));
  LUT3 #(
    .INIT(8'h5D)) 
    rgb_12__72_carry__4_i_4
       (.I0(rgb_12_carry__0_i_13_n_0),
        .I1(rgb_12__72_carry__3_i_9_n_3),
        .I2(rgb_12_carry__0_i_12_n_0),
        .O(\VCNT_reg[9]_8 [0]));
  LUT1 #(
    .INIT(2'h1)) 
    rgb_12__72_carry__4_i_5
       (.I0(rgb_12_carry__0_i_13_n_0),
        .O(\VCNT_reg[9]_4 [3]));
  LUT1 #(
    .INIT(2'h1)) 
    rgb_12__72_carry__4_i_6
       (.I0(rgb_12_carry__0_i_13_n_0),
        .O(\VCNT_reg[9]_4 [2]));
  LUT5 #(
    .INIT(32'hFFFE0001)) 
    rgb_12__72_carry__4_i_7
       (.I0(VCNT[6]),
        .I1(VCNT[7]),
        .I2(rgb_12_carry__0_i_11_n_0),
        .I3(VCNT[8]),
        .I4(VCNT[9]),
        .O(\VCNT_reg[9]_4 [1]));
  LUT6 #(
    .INIT(64'h66CC6CC966CC6CCB)) 
    rgb_12__72_carry__4_i_8
       (.I0(rgb_12__72_carry__3_i_9_n_3),
        .I1(VCNT[8]),
        .I2(VCNT[6]),
        .I3(VCNT[7]),
        .I4(rgb_12_carry__0_i_11_n_0),
        .I5(VCNT[9]),
        .O(\VCNT_reg[9]_4 [0]));
  LUT4 #(
    .INIT(16'hA956)) 
    rgb_12__72_carry_i_2
       (.I0(rgb_12__72_carry[2]),
        .I1(VCNT[0]),
        .I2(VCNT[1]),
        .I3(VCNT[2]),
        .O(\VCNT_reg[0]_3 [2]));
  LUT3 #(
    .INIT(8'h69)) 
    rgb_12__72_carry_i_3
       (.I0(rgb_12__72_carry[1]),
        .I1(VCNT[1]),
        .I2(VCNT[0]),
        .O(\VCNT_reg[0]_3 [1]));
  LUT2 #(
    .INIT(4'h9)) 
    rgb_12__72_carry_i_4
       (.I0(rgb_12__72_carry[0]),
        .I1(VCNT[0]),
        .O(\VCNT_reg[0]_3 [0]));
  (* HLUTNM = "lutpair1" *) 
  LUT4 #(
    .INIT(16'hD44D)) 
    rgb_12_carry__0_i_1
       (.I0(rgb_12_carry__0_i_9_n_0),
        .I1(rgb_12_carry__0_i_10_n_0),
        .I2(VCNT[0]),
        .I3(VCNT[1]),
        .O(\VCNT_reg[0]_1 [3]));
  LUT6 #(
    .INIT(64'h555555556A6A6AAA)) 
    rgb_12_carry__0_i_10
       (.I0(VCNT[5]),
        .I1(VCNT[3]),
        .I2(VCNT[2]),
        .I3(VCNT[0]),
        .I4(VCNT[1]),
        .I5(VCNT[4]),
        .O(rgb_12_carry__0_i_10_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAAA80808000)) 
    rgb_12_carry__0_i_11
       (.I0(VCNT[5]),
        .I1(VCNT[3]),
        .I2(VCNT[2]),
        .I3(VCNT[0]),
        .I4(VCNT[1]),
        .I5(VCNT[4]),
        .O(rgb_12_carry__0_i_11_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h56)) 
    rgb_12_carry__0_i_12
       (.I0(VCNT[7]),
        .I1(rgb_12_carry__0_i_11_n_0),
        .I2(VCNT[6]),
        .O(rgb_12_carry__0_i_12_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    rgb_12_carry__0_i_13
       (.I0(VCNT[9]),
        .I1(VCNT[8]),
        .I2(rgb_12_carry__0_i_11_n_0),
        .I3(VCNT[7]),
        .I4(VCNT[6]),
        .O(rgb_12_carry__0_i_13_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h56AAAAAA)) 
    rgb_12_carry__0_i_14
       (.I0(VCNT[4]),
        .I1(VCNT[1]),
        .I2(VCNT[0]),
        .I3(VCNT[2]),
        .I4(VCNT[3]),
        .O(rgb_12_carry__0_i_14_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    rgb_12_carry__0_i_2
       (.I0(rgb_12_carry__0_i_9_n_0),
        .I1(VCNT[0]),
        .I2(VCNT[1]),
        .I3(rgb_12_carry__0_i_10_n_0),
        .O(\VCNT_reg[0]_6 [1]));
  LUT4 #(
    .INIT(16'hAAA9)) 
    rgb_12_carry__0_i_3
       (.I0(VCNT[8]),
        .I1(VCNT[6]),
        .I2(VCNT[7]),
        .I3(rgb_12_carry__0_i_11_n_0),
        .O(\VCNT_reg[0]_1 [1]));
  LUT1 #(
    .INIT(2'h1)) 
    rgb_12_carry__0_i_4
       (.I0(rgb_12_carry__0_i_12_n_0),
        .O(\VCNT_reg[0]_6 [0]));
  LUT6 #(
    .INIT(64'h9696966969696996)) 
    rgb_12_carry__0_i_5
       (.I0(\VCNT_reg[0]_1 [3]),
        .I1(rgb_12_carry__0_i_13_n_0),
        .I2(rgb_12_carry_i_8_n_0),
        .I3(VCNT[0]),
        .I4(VCNT[1]),
        .I5(VCNT[2]),
        .O(\VCNT_reg[0]_5 [3]));
  LUT5 #(
    .INIT(32'h69699669)) 
    rgb_12_carry__0_i_6
       (.I0(rgb_12_carry__0_i_10_n_0),
        .I1(VCNT[1]),
        .I2(rgb_12_carry__0_i_9_n_0),
        .I3(rgb_12_carry__0_i_14_n_0),
        .I4(VCNT[0]),
        .O(\VCNT_reg[0]_5 [2]));
  LUT6 #(
    .INIT(64'h639999999C666666)) 
    rgb_12_carry__0_i_7
       (.I0(VCNT[0]),
        .I1(VCNT[4]),
        .I2(VCNT[1]),
        .I3(VCNT[2]),
        .I4(VCNT[3]),
        .I5(\VCNT_reg[0]_1 [1]),
        .O(\VCNT_reg[0]_5 [1]));
  LUT5 #(
    .INIT(32'h66699999)) 
    rgb_12_carry__0_i_8
       (.I0(rgb_12_carry__0_i_12_n_0),
        .I1(VCNT[3]),
        .I2(VCNT[1]),
        .I3(VCNT[0]),
        .I4(VCNT[2]),
        .O(\VCNT_reg[0]_5 [0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h55555556)) 
    rgb_12_carry__0_i_9
       (.I0(VCNT[9]),
        .I1(VCNT[8]),
        .I2(rgb_12_carry__0_i_11_n_0),
        .I3(VCNT[7]),
        .I4(VCNT[6]),
        .O(rgb_12_carry__0_i_9_n_0));
  LUT3 #(
    .INIT(8'h4F)) 
    rgb_12_carry__1_i_1
       (.I0(rgb_12_carry__0_i_9_n_0),
        .I1(rgb_12_carry__0_i_10_n_0),
        .I2(rgb_12_carry__0_i_13_n_0),
        .O(\VCNT_reg[9]_1 [3]));
  (* HLUTNM = "lutpair2" *) 
  LUT3 #(
    .INIT(8'h5D)) 
    rgb_12_carry__1_i_2
       (.I0(rgb_12_carry__0_i_13_n_0),
        .I1(\VCNT_reg[0]_1 [1]),
        .I2(rgb_12_carry__0_i_14_n_0),
        .O(\VCNT_reg[9]_1 [2]));
  LUT6 #(
    .INIT(64'h55555555777FDDD5)) 
    rgb_12_carry__1_i_3
       (.I0(rgb_12_carry__0_i_13_n_0),
        .I1(VCNT[2]),
        .I2(VCNT[0]),
        .I3(VCNT[1]),
        .I4(VCNT[3]),
        .I5(rgb_12_carry__0_i_12_n_0),
        .O(\VCNT_reg[9]_1 [1]));
  LUT5 #(
    .INIT(32'h5555777D)) 
    rgb_12_carry__1_i_4
       (.I0(rgb_12_carry__0_i_13_n_0),
        .I1(VCNT[2]),
        .I2(VCNT[1]),
        .I3(VCNT[0]),
        .I4(rgb_12_carry_i_8_n_0),
        .O(\VCNT_reg[9]_1 [0]));
  LUT6 #(
    .INIT(64'h55FFAA00AA0056FE)) 
    rgb_12_carry__1_i_5
       (.I0(VCNT[9]),
        .I1(VCNT[8]),
        .I2(VCNT[7]),
        .I3(rgb_12_carry__0_i_10_n_0),
        .I4(rgb_12_carry__0_i_11_n_0),
        .I5(VCNT[6]),
        .O(\VCNT_reg[9]_5 [3]));
  LUT4 #(
    .INIT(16'h6996)) 
    rgb_12_carry__1_i_6
       (.I0(\VCNT_reg[9]_1 [2]),
        .I1(rgb_12_carry__0_i_10_n_0),
        .I2(rgb_12_carry__0_i_9_n_0),
        .I3(rgb_12_carry__0_i_13_n_0),
        .O(\VCNT_reg[9]_5 [2]));
  LUT4 #(
    .INIT(16'h6A95)) 
    rgb_12_carry__1_i_7
       (.I0(\VCNT_reg[9]_1 [1]),
        .I1(rgb_12_carry__0_i_13_n_0),
        .I2(\VCNT_reg[0]_1 [1]),
        .I3(rgb_12_carry__0_i_14_n_0),
        .O(\VCNT_reg[9]_5 [1]));
  LUT4 #(
    .INIT(16'h6996)) 
    rgb_12_carry__1_i_8
       (.I0(\VCNT_reg[9]_1 [0]),
        .I1(rgb_12_carry__0_i_13_n_0),
        .I2(rgb_12_carry__0_i_12_n_0),
        .I3(rgb_12_carry__1_i_9_n_0),
        .O(\VCNT_reg[9]_5 [0]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h57A8)) 
    rgb_12_carry__1_i_9
       (.I0(VCNT[2]),
        .I1(VCNT[0]),
        .I2(VCNT[1]),
        .I3(VCNT[3]),
        .O(rgb_12_carry__1_i_9_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    rgb_12_carry__2_i_1
       (.I0(rgb_12_carry__0_i_13_n_0),
        .O(\VCNT_reg[9]_11 [3]));
  LUT1 #(
    .INIT(2'h1)) 
    rgb_12_carry__2_i_2
       (.I0(rgb_12_carry__0_i_13_n_0),
        .O(\VCNT_reg[9]_11 [2]));
  LUT1 #(
    .INIT(2'h1)) 
    rgb_12_carry__2_i_3
       (.I0(rgb_12_carry__0_i_13_n_0),
        .O(\VCNT_reg[9]_11 [1]));
  LUT1 #(
    .INIT(2'h1)) 
    rgb_12_carry__2_i_4
       (.I0(rgb_12_carry__0_i_13_n_0),
        .O(\VCNT_reg[9]_11 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    rgb_12_carry__2_i_5
       (.I0(rgb_12_carry__0_i_13_n_0),
        .I1(rgb_12_carry__0_i_9_n_0),
        .O(\VCNT_reg[9]_6 [2]));
  LUT2 #(
    .INIT(4'h9)) 
    rgb_12_carry__2_i_6
       (.I0(rgb_12_carry__0_i_13_n_0),
        .I1(\VCNT_reg[0]_1 [1]),
        .O(\VCNT_reg[9]_6 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    rgb_12_carry__2_i_7
       (.I0(rgb_12_carry__0_i_13_n_0),
        .I1(rgb_12_carry__0_i_12_n_0),
        .O(\VCNT_reg[9]_6 [0]));
  LUT1 #(
    .INIT(2'h1)) 
    rgb_12_carry_i_1
       (.I0(rgb_12_carry_i_8_n_0),
        .O(\VCNT_reg[6]_2 [1]));
  LUT2 #(
    .INIT(4'h9)) 
    rgb_12_carry_i_2
       (.I0(VCNT[1]),
        .I1(VCNT[0]),
        .O(\VCNT_reg[6]_1 [1]));
  LUT5 #(
    .INIT(32'h8880777F)) 
    rgb_12_carry_i_3
       (.I0(VCNT[3]),
        .I1(VCNT[2]),
        .I2(VCNT[0]),
        .I3(VCNT[1]),
        .I4(VCNT[4]),
        .O(\VCNT_reg[6]_2 [0]));
  LUT4 #(
    .INIT(16'h56A9)) 
    rgb_12_carry_i_4
       (.I0(rgb_12_carry_i_8_n_0),
        .I1(VCNT[0]),
        .I2(VCNT[1]),
        .I3(VCNT[2]),
        .O(\VCNT_reg[0]_4 [3]));
  LUT6 #(
    .INIT(64'hEA1515EA15EAAA55)) 
    rgb_12_carry_i_5
       (.I0(VCNT[4]),
        .I1(VCNT[2]),
        .I2(VCNT[3]),
        .I3(VCNT[5]),
        .I4(VCNT[1]),
        .I5(VCNT[0]),
        .O(\VCNT_reg[0]_4 [2]));
  LUT5 #(
    .INIT(32'h88777F80)) 
    rgb_12_carry_i_6
       (.I0(VCNT[3]),
        .I1(VCNT[2]),
        .I2(VCNT[1]),
        .I3(VCNT[4]),
        .I4(VCNT[0]),
        .O(\VCNT_reg[0]_4 [1]));
  LUT4 #(
    .INIT(16'h57A8)) 
    rgb_12_carry_i_7
       (.I0(VCNT[2]),
        .I1(VCNT[0]),
        .I2(VCNT[1]),
        .I3(VCNT[3]),
        .O(\VCNT_reg[0]_4 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    rgb_12_carry_i_8
       (.I0(VCNT[6]),
        .I1(rgb_12_carry__0_i_11_n_0),
        .O(rgb_12_carry_i_8_n_0));
endmodule
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
