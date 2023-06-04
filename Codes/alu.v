module alu (input [31:0] A, B,input [2:0] ctrl,output [31:0] out,output zero);
    wire [31:0] sub;
    assign sub = A - B;
    assign out = (ctrl == 3'b000) ? (A & B) :
    (ctrl == 3'b001) ? (A | B) :
    (ctrl == 3'b010) ? (A + B) :
    (ctrl == 3'b110) ? (A - B) :
    ((sub[31]) ? 32'd1: 32'd0);
    assign zero = (out == 32'd0) ? 1'b1 : 1'b0;
    
endmodule
