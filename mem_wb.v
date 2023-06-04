module MEMWB_ctrl(input clk, rst,input [1:0] mem_to_reg_in,input  reg_write_in, output reg [1:0] mem_to_reg_out,output reg  reg_write_out);

    always @(posedge clk) begin
        if (rst) begin
             mem_to_reg_out <= 2'b00;
	     reg_write_out <= 1'b0;
	end
        else begin
             mem_to_reg_out <= mem_to_reg_in;
	     reg_write_out <= reg_write_in;
	end
    end
endmodule
    
module MEMWB_datas(input clk, rst,input [31:0] data_from_data_memory_in,input [31:0] alu_result_in,input [4:0] mux5_out_in,input [31:0] adder1_in,output reg [31:0] data_from_memory_out,output reg [31:0] alu_result_out,output reg [4:0] mux5_out_in_out, output reg [31:0] adder1_out);
    always @(posedge clk) begin
        if (rst) begin
            data_from_memory_out <= 32'b0;
	    alu_result_out <= 32'b0;
	    mux5_out_in_out <= 5'b0;
	    adder1_out <= 32'b0;
	end
        else begin
            data_from_memory_out <= data_from_data_memory_in;
            alu_result_out <= alu_result_in;
	    mux5_out_in_out <=  mux5_out_in;
            adder1_out <=  adder1_in;
	end
    end
endmodule
