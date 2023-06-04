`timescale 1ns/1ns
module MIPSTB();
    wire [31:0] inst_adr, inst, data_adr, data_in, data_out,max, max_index;
    wire mem_read_to_data_mem, mem_write_to_data_mem;
    reg clk = 1'b0, rst = 1'b1;
    mips_pipeline CUT1(clk, rst, inst_adr, inst, data_adr, data_out, data_in, mem_write_to_data_mem, mem_read_to_data_mem);
    inst_mem  CUT2(inst_adr, inst);
    data_mem CUT3(data_adr, data_out, mem_read_to_data_mem, mem_write_to_data_mem, clk, data_in, max, max_index);
    initial
    begin
        #20 rst = 1'b0;
        #10000 $stop;
    end
    
    always #10 clk = ~clk;
endmodule
