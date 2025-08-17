// alu.v
module alu (
    input  [3:0] A,      // First operand
    input  [3:0] B,      // Second operand
    input  [2:0] op,     // Operation select
    output reg [3:0] Y,  // Result
    output reg Cout,     // Carry out
    output reg Zero      // Zero flag
);
    always @(*) begin
        {Cout, Y} = 5'b0; // Default values
        case (op)
            3'b000: {Cout, Y} = A + B;      // Addition
            3'b001: {Cout, Y} = A - B;      // Subtraction
            3'b010: Y = A & B;              // AND
            3'b011: Y = A | B;              // OR
            3'b100: Y = A ^ B;              // XOR
            3'b101: Y = ~A;                 // NOT (on A)
            3'b110: Y = A << 1;              // Shift left
            3'b111: Y = A >> 1;              // Shift right
        endcase
        Zero = (Y == 4'b0000);
    end
endmodule
