module adder_32b (input [31:0] A, B, input cin,output co,output [31:0] out);
    assign {co, out} = A + B + cin;
endmodule
