module reg_file (input [31:0] WD, input [4:0] RR1, RR2, WR, input regwrite, rst, clk, output [31:0] RD1 ,RD2);
    reg [31:0] regs [0:31];
    integer i;
    assign RD1 = (RR1 == 5'b0) ? 32'd0 : regs[RR1];
    assign RD2 = (RR2 == 5'b0) ? 32'd0 : regs[RR2];
    
    always @(posedge clk)
        if (rst == 1'b1)
            for (i = 0; i<32 ; i = i+1)
                regs[i] <= 32'd0;
                else if (regwrite == 1'b1)
                if (WR!= 5'd0)
                    regs[WR] <= WD;
    
endmodule
