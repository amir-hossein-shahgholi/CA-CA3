module inst_mem (input [31:0] adr,output [31:0] out);
    reg [31:0] mem[0:4095]; 
    initial begin
          $readmemb("inst.txt", mem);
    end
    assign out = mem[adr[15:0]];
endmodule
