`timescale 1ns / 1ns

module pattern_tb2;

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

integer fd;

initial begin
        RST = 0;
    fd = $fopen("imagedata.raw","wb");
    #(STEP*600) RST = 1;
    #(STEP*20)  RST = 0;
    #(STEP*CLKNUM);
    $fclose(fd);
    $stop;
    end

    always @( posedge PCK) begin
        if ( VGA_DE) begin
            $fwrite(fd, "%c", VGA_R);
            $fwrite(fd, "%c",  VGA_G);
            $fwrite(fd, "%c",  VGA_B);
        end
    end
endmodule
