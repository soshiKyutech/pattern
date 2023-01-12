`timescale 1ns/1ns
module pattern_tb;

localparam STEP = 8;
localparam CLKNUM = (800*525+12000)*5;

reg         CLK;
reg         RST;
wire [7:0]  VGA_R,  VGA_G,  VGA_B;
wire        VGA_HS, VGA_VS, VGA_DE;
wire        PCK;

pattern pattern(
    .CLK    (CLK),
    .RST    (RST),
    .VGA_R  (VGA_R),
    .VGA_G  (VGA_G),
    .VGA_B  (VGA_B),
    .VGA_HS (VGA_HS),
    .VGA_VS (VGA_VS),
    .VGA_DE (VGA_DE),
    .PCK    (PCK)
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