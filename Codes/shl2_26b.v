module shl2_26b (input [25:0] IN,output [27:0] out);
    assign out = {IN, 2'b00};
    
endmodule