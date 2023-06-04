`timescale 1ns/1ns
module data_mem (input [31:0] adr,input [31:0] d_in, input mrd, mwr, clk,output [31:0] d_out,output [31:0] max, max_index);
    reg [31:0] mem[0:5000];   
    initial
    begin
        $readmemb("mem.txt", mem);
    end 
    always @(posedge clk)
        if (mwr == 1'b1) begin
            mem[adr] = d_in;
        end
    assign d_out = (mrd == 1'b1) ? mem[adr] : 32'd0;
    assign max = mem[2000];
    assign max_index = mem[2004];
endmodule
