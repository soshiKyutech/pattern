/* Copyright(C) 2020 Cobac.Net All Rights Reserved. */
/* chapter: �ｿｽ�ｿｽ2�ｿｽ�ｿｽ            */
/* project: pattern          */
/* outline: �ｿｽp�ｿｽ^�ｿｽ[�ｿｽ�ｿｽ�ｿｽ\�ｿｽ�ｿｽ�ｿｽ�ｿｽH */

module pattern(
    input               CLK,
    input               RST,
    output  reg [7:0]   VGA_R, VGA_G, VGA_B,
    output              VGA_HS, VGA_VS,
    output  reg         VGA_DE,
    output              PCK
);

/* VGA(640�ｿｽ~480)�ｿｽp�ｿｽp�ｿｽ�ｿｽ�ｿｽ�ｿｽ�ｿｽ[�ｿｽ^�ｿｽﾇみ搾ｿｽ�ｿｽ�ｿｽ */
`include "vga_param.vh"

localparam HSIZE = 10'd80;
localparam VSIZE = 10'd120;

/* �ｿｽ�ｿｽ�ｿｽ�ｿｽ�ｿｽM�ｿｽ�ｿｽ�ｿｽ�成�ｿｽ�ｿｽH�ｿｽﾌ接托ｿｽ */
wire    [9:0]   HCNT, VCNT;

syncgen syncgen(
    .CLK    (CLK),
    .RST    (RST),
    .PCK    (PCK),
    .VGA_HS (VGA_HS),
    .VGA_VS (VGA_VS),
    .HCNT   (HCNT),
    .VCNT   (VCNT)
);

/* RGB�ｿｽo�ｿｽﾍゑｿｽ�ｿｽ�成 */
wire [9:0] HBLANK = HFRONT + HWIDTH + HBACK;
wire [9:0] VBLANK = VFRONT + VWIDTH + VBACK;

wire disp_enable = (VBLANK <= VCNT)
                && (HBLANK-10'd1 <= HCNT) && (HCNT < HPERIOD-10'd1);

wire [2:0] rgb_0 = (HCNT-HBLANK+10'd1)/HSIZE;
wire [2:0] rgb_1 = (((VCNT-VBLANK)/VSIZE)&1)==0 ? 3'd7-rgb_0: rgb_0;

always @( posedge PCK ) begin
    if ( RST )
        {VGA_R, VGA_G, VGA_B} <= 24'h0;
    else if ( disp_enable )
        {VGA_R, VGA_G, VGA_B} <=
                    { {8{rgb_1[2]}}, {8{rgb_1[1]}}, {8{rgb_1[0]}} };
    else
        {VGA_R, VGA_G, VGA_B} <= 24'h0;
end

/* disp_enable�ｿｽ�ｿｽ1�ｿｽN�ｿｽ�ｿｽ�ｿｽb�ｿｽN�ｿｽx�ｿｽ轤ｹ�ｿｽ�ｿｽVGA_DE�ｿｽ�ｿｽ�ｿｽ�成 */
always @( posedge PCK ) begin
    if ( RST )
        VGA_DE <= 1'b0;
    else
        VGA_DE <= disp_enable;
end

endmodule
