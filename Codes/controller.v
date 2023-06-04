module controller (input [5:0] opcode, func, input zero, output reg [1:0] reg_dst, mem_to_reg,output reg reg_write, alu_src, mem_read, mem_write,output reg [1:0] pc_src, output [2:0] operation,output reg flush, input operands_equal);
    reg [1:0] alu_op;
    reg branch;
    alu_controller alucontrol(alu_op, func, operation);
    always @(opcode)
    begin
        reg_dst = 2'b00;
 	mem_to_reg = 2'b00;
	reg_write = 1'b0;
	alu_src = 1'b0;
	mem_read= 1'b0;
	mem_write=1'b0;
	pc_src = 2'b00;
	alu_op = 2'b00;
	flush =1'b0;
        case (opcode)
            6'b000000 : {reg_dst, reg_write, alu_op} = {2'b01, 1'b1, 2'b10};
            6'b100011 : {alu_src, mem_to_reg, reg_write, mem_read} = {1'b1, 2'b01, 1'b1, 1'b1};
            6'b101011 : {alu_src, mem_write} = 2'b11;
            6'b000100 : {pc_src, flush} = {1'b0, operands_equal, operands_equal};
            6'b001001 : {reg_write, alu_src} = 2'b11;
            6'b000010 : {pc_src, flush} = {2'b10, 1'b1};
            6'b000011 : {reg_dst, mem_to_reg, pc_src} = {2'b10, 2'b10, 2'b10};
            6'b000110 : {pc_src} = {2'b11};
            6'b001010 : {alu_src, reg_dst, reg_write, alu_op, mem_to_reg} = {1'b1, 2'b00, 1'b1, 2'b11, 2'b00}; 
        endcase
    end  
endmodule
