module mux2to1_11b (input [10:0] I0, I1,input sel, output [10:0] out);
    assign out = (sel == 1'b1) ? I1 : I0;
endmodule
