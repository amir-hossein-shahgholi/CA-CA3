module sign_ext (input [15:0] IN,output [31:0] out);
    assign out = {{16{IN[15]}}, IN};
    
endmodule
