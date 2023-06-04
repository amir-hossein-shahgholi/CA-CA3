module IFID(input clk, rst, ld, flush, input [31:0] inst, adder1, output reg [31:0] inst_out, adder1_out);
    always @(posedge clk)
    begin
        if (flush)
            inst_out <= 32'b0;
        else
        if (rst)
        begin
            adder1_out <= 32'b0;
            inst_out <= 32'b0;
        end
        else
        begin
            if (ld) begin
                inst_out <= inst;
                adder1_out <= adder1;    
            end
        end
    end
endmodule
