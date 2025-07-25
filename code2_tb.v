module simple_alu_tb;

    reg [3:0] A;
    reg [3:0] B;
    reg [2:0] opcode;
    wire [3:0] result;

    // Instantiate the ALU
    simple_alu uut (
        .A(A),
        .B(B),
        .opcode(opcode),
        .result(result)
    );

    initial begin
        // Test addition
        A = 4; B = 3; opcode = 3'b000;
        #10;
        $display("ADD: %d + %d = %d", A, B, result);

        // Test subtraction
        A = 7; B = 2; opcode = 3'b001;
        #10;
        $display("SUB: %d - %d = %d", A, B, result);

        // Test AND
        A = 4'b1100; B = 4'b1010; opcode = 3'b010;
        #10;
        $display("AND: %b & %b = %b", A, B, result);

        // Test OR
        A = 4'b1100; B = 4'b1010; opcode = 3'b011;
        #10;
        $display("OR: %b | %b = %b", A, B, result);

        // Test NOT
        A = 4'b1100; opcode = 3'b100;
        #10;
        $display("NOT: ~%b = %b", A, result);

        $finish;
    end
endmodule

