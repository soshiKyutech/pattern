`timescale 1ns / 1fs



module pattern_tb3;


localparam STEP = 8;
localparam CLKNUM = (800*525+12000)*5;

reg             CLK;
reg             RST;
wire            HDMI_CLK_N, HDMI_CLK_P;
wire    [2:0]   HDMI_N,HDMI_P;

pattern_hdmi pattern_hdmi(
    .CLK(CLK),
    .RST(RST),
    .HDMI_CLK_N(HDMI_CLK_N),
    .HDMI_CLK_P(HDMI_CLK_P),
    .HDMI_N(HDMI_N),
    .HDMI_P(HDMI_P)
);

always begin
    CLK = 0; #(STEP/2);
    CLK = 1; #(STEP/2);
end

initial begin
                RST = 0;
    #(STEP*600) RST = 1;
    #(STEP*20)  RST = 0;
    #(STEP*CLKNUM);
    $stop;
end


endmodule
