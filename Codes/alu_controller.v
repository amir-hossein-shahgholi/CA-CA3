module alu_controller (input [1:0] aluop, input [5:0] func, output reg [2:0] operation);  
    always @(aluop, func)
    begin
        operation = 3'b000;
        if (aluop == 2'b00)  
            operation = 3'b010;
        else if (aluop == 2'b01)
            operation = 3'b110;
        else if (aluop == 2'b11)
            operation = 3'b111;
        else
        begin
            case (func)
                6'b100000: operation = 3'b010;
                6'b100011: operation = 3'b110;
                6'b100100: operation = 3'b000;
                6'b100101: operation = 3'b001;
                6'b101010: operation = 3'b111;
                default:   operation = 3'b000;
            endcase
        end   
    end
endmodule
