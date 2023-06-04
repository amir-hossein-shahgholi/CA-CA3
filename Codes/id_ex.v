module IDEX_ctrl(input clk, rst,input [2:0] alu_op_in,input alu_src_in,input reg_write_in, input [1:0] reg_dst_in, input mem_read_in, mem_write_in,input [1:0] mem_to_reg_in,output reg [2:0] alu_op,output reg alu_src,output reg reg_write,output reg [1:0] reg_dst,output reg  mem_read, mem_write, output reg [1:0] mem_to_reg);
    always @(posedge clk)
    begin
        if (rst)begin
             alu_op = 3'b000;
	     alu_src = 1'b0;
	     reg_write = 1'b0;
	     reg_dst = 2'b00;
	     mem_read = 1'b0;
	     mem_write = 1'b0;
	     mem_to_reg = 2'b00;
        end
	else begin
             alu_op <= alu_op_in;
	     alu_src <= alu_src_in;
	     reg_write <= reg_write_in;
	     reg_dst <= reg_dst_in;
	     mem_read <= mem_read_in;
	     mem_write <= mem_write_in;
	     mem_to_reg <= mem_to_reg_in;
	end
    end 
endmodule
module IDEX_datas(input clk, rst, input [31:0] read_data1, read_data2, sgn_ext,input [4:0] Rt, Rd, Rs,input [31:0] adder1, output reg [31:0] read_data1_out, read_data2_out, sgn_ext_out,output reg [4:0] Rt_out, Rd_out, Rs_out,output reg [31:0] adder1_out);

    always @(posedge clk) begin
        if (rst)
        begin
            read_data1_out = 32'b0;
	    read_data2_out = 32'b0;
	    sgn_ext_out = 32'b0;
	    adder1_out = 32'b0;
            Rt_out = 5'b0;
	    Rd_out = 5'b0;
	    Rs_out = 5'b0;
        end
        else
        begin
            read_data1_out <= read_data1;
            read_data2_out <= read_data2;
	    sgn_ext_out <= sgn_ext;
	    adder1_out <= adder1;
            Rt_out <= Rt;
	    Rd_out <= Rd;
	    Rs_out <= Rs;
        end
    end

endmodule
