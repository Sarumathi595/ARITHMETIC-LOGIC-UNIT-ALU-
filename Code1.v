module simple_alu(
    input [3:0] A,        // 4-bit input A
    input [3:0] B,        // 4-bit input B
    input [2:0] opcode,   // operation code
    output reg [3:0] result
);

always @(*) begin
    if (opcode == 3'b000)      // addition
        result = A + B;
    else if (opcode == 3'b001) // subtraction
        result = A - B;
    else if (opcode == 3'b010) // AND
        result = A & B;
    else if (opcode == 3'b011) // OR
        result = A | B;
    else if (opcode == 3'b100) // NOT (only A)
        result = ~A;
    else
        result = 4'b0000;      // default 0
end

endmodule
