module mux3to1_5b (input [4:0] I0, I1, I2, input [1:0]  sel,output [4:0] out);
    assign out = (sel == 2'b00) ? I0:
		 (sel == 2'b01) ? I1: I2;
endmodule
