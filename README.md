# ARITHMETIC-LOGIC-UNIT-ALU-

COMPANY :CODTECH IT SOLUTIONS

NAME :SARUMATHI M

INTERN ID :CT04DH923

DOMAIN: VLSI

DURATION: 4 WEEKS 

MENTOR : NEELA SANTOSH

DISCRIPTION:
 THIS TASK 1 spiltted into code1 & code2 run by using MATLAB platform: code 1 for verilog code task 1 and code 2 for verfication using testbench
 code1:
  This Verilog module, simple_alu, implements a tiny 4‑bit Arithmetic Logic Unit that operates purely combinationally. It accepts two 4‑bit unsigned inputs (A and B) and a 3‑bit opcode that selects the operation. The result is a 4‑bit reg, assigned inside an always @(*) block, which tells the synthesizer/simulator that the logic is combinational (i.e., it should re‑evaluate whenever any input changes). The ALU supports five operations: addition (opcode = 3'b000), subtraction (001), bitwise AND (010), bitwise OR (011), and bitwise NOT of A only (100). Any other opcode defaults the output to zero. Because all datapaths are only 4 bits wide, arithmetic naturally wraps around modulo 16; overflow/underflow flags are not produced, and high-order carries are silently discarded. Subtraction is two’s‑complement by construction (as in standard Verilog arithmetic), so A - B will also wrap modulo 16. The use of reg for result is just a Verilog storage type requirement for signals assigned in procedural blocks; it does not imply sequential logic, since there is no clock and no non‑blocking (<=) edge‑triggered assignment. The priority chain is written as an if/else if ladder; functionally this is equivalent to a case statement for mutually exclusive opcodes, but the given form is perfectly synthesizable. The NOT operation ignores B, which is typical for unary operations.this ALU in MATLAB.
  OP OF CODE 1:<img width="1920" height="1080" alt="Image" src="https://github.com/user-attachments/assets/804f3e89-6ebe-41c7-8399-5e43bed61396" />
  code 2:
  The given Verilog module simple_alu_tb is a testbench written to verify the functionality of the simple_alu module. In digital design, a testbench acts as a virtual environment that applies different sets of inputs to the design under test (DUT) and observes the outputs to ensure that the module works correctly for all expected scenarios. Here, simple_alu_tb is designed to test all the five primary operations supported by the simple_alu module: addition, subtraction, bitwise AND, bitwise OR, and bitwise NOT.
Testbench Components
The testbench starts by declaring reg types for A, B, and opcode. These are the inputs to the ALU. The result is declared as a wire since it is an output that will be driven by the instantiated ALU. The naming convention and bit-widths match the design under test (A and B are 4-bit registers, opcode is 3-bit, and result is a 4-bit output).
The Unit Under Test (UUT), simple_alu, is instantiated using the module name and the uut label. The connections between the testbench and the ALU module are established using named port mapping (.A(A), .B(B), .opcode(opcode), .result(result)). This ensures that changes in A, B, or opcode from the testbench are immediately reflected in the ALU.
Initial Block for Simulation
The initial block defines the sequence of operations to be tested. Simulation begins at time zero, and the signals are assigned values sequentially. Each operation is tested with specific values of A, B, and opcode.
1. Addition Test:
The first test sets A = 4, B = 3, and opcode = 3'b000.
This corresponds to an addition operation (A + B).
A #10; delay is added to allow the simulation time to propagate signals before displaying results.
The $display statement prints the result in decimal format.
2. Subtraction Test:
Next, A = 7, B = 2, and opcode = 3'b001
This triggers subtraction (A - B).
The result is displayed after another 10-time-unit delay
3. Bitwise AND Test:
A = 4'b1100 and B = 4'b1010, with opcode = 3'b010.
This performs bitwise AND (A & B), resulting in 1000.
The $display statement uses binary (%b) to show the operation clearly.
4. Bitwise OR Test:
The same A and B are used but opcode = 3'b011.
This performs bitwise OR (A | B), resulting in 1110.
Again, the result is displayed in binary form.
5. Bitwise NOT Test:
The final test sets A = 4'b1100 and opcode = 3'b100.
This performs bitwise NOT on A, inverting all bits to 0011.
B is not required for this operation.
The $finish; command ends the simulation after all test cases are executed.
OP OF CODE2:



