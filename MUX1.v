module mux2to1_32b ( input [31:0] I0, I1, input sel,output [31:0] out);    
    assign out = (sel == 1'b1) ? I1 : I0;
endmodule
    
