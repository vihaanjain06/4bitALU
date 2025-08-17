// tb_alu.v
`include "alu.v"
`timescale 1ns/1ps
module tb_alu;
    reg [3:0] A, B;
    reg [2:0] op;
    wire [3:0] Y;
    wire Cout, Zero;

    alu uut (
        .A(A), .B(B), .op(op),
        .Y(Y), .Cout(Cout), .Zero(Zero)
    );

    initial begin
        // Waveform dump setup
        $dumpfile("alu.vcd"); // Output file
        $dumpvars(0, tb_alu); // Dump all variables in tb_alu

        A = 2; // operand A
        B = 5; // operand B

        for (op = 0; op < 8; op = op + 1) begin
            #5 $dumpvars(A, B, op, Y, Cout, Zero);
                
        end

        #5 $finish;
    end
endmodule
