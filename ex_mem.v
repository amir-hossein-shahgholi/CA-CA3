module EXMEM_ctrl(input clk,rst,input mem_write_in,mem_read_in,input [1:0] mem_to_reg_in,input reg_write_in,
 		output reg mem_write, mem_read, output reg [1:0] mem_to_reg, output reg reg_write);
    always @(posedge clk) begin
        if (rst) begin
             mem_write <= 1'b0;
	     mem_read <= 1'b0;
	     mem_to_reg <= 2'b00;
	     reg_write <= 1'b0;
	end
        else begin
             mem_write <= mem_write_in;
             mem_read <= mem_read_in;
	     mem_to_reg <= mem_to_reg_in;
	     reg_write <= reg_write_in;
	end
    end
endmodule
module EXMEM_datas(input clk, rst,input [31:0] adder1,input zero,input [31:0] alu_result, mux3_out,input [4:0] mux5_out,output reg [31:0] adder1_out,output reg zero_out, output reg [31:0] alu_result_out, mux3_out_out,output reg [4:0] mux5_out_out);  
    always @(posedge clk) begin
        if (rst) begin
             adder1_out = 32'b0;
	     alu_result_out = 32'b0;
	     mux3_out_out = 32'b0;
	     mux5_out_out = 5'b0;
	     zero_out =1'b0;
	end
        else begin
            adder1_out <= adder1;
 	    alu_result_out <= alu_result;
	    mux3_out_out <= mux3_out;
	    mux5_out_out <= mux5_out;
	    zero_out <= zero;
	end
    end
endmodule
