# 4-bit ALU in Verilog

A simple **4-bit Arithmetic Logic Unit (ALU)** implemented in Verilog HDL with a testbench for simulation using **Icarus Verilog** and waveform visualization in **GTKWave**.

## Features

The ALU supports the following operations, selected using a 3-bit control input `op`:

| `op` | Operation | Description                |
|------|-----------|----------------------------|
| 000  | ADD       | Y = A + B                  |
| 001  | SUB       | Y = A - B                  |
| 010  | AND       | Bitwise AND                |
| 011  | OR        | Bitwise OR                 |
| 100  | XOR       | Bitwise XOR                |
| 101  | NOT       | Bitwise NOT (on A)         |
| 110  | SHL       | Shift left (A << 1)        |
| 111  | SHR       | Shift right (A >> 1)       |

### Outputs
- **Y[3:0]** → 4-bit result  
- **Cout** → Carry-out flag (valid for ADD/SUB)  
- **Zero** → Zero flag (set when Y == 0)  

### Example Console Output
- A = 0011 (binary = 3)
- B = 0101 (binary = 5)
  
|A  |   B  |   op  |  Y   |  Cout | Zero|
|-----|------|------|-------|------|-----|
|0011 | 0101 |  000  |  1000  |   0   |  0|
|0011 | 0101 |  001  |  1110  |   0   |  0|
|0011 | 0101 |  010  |  0001  |   0   |  0|
|0011 | 0101 |  011  |  0111  |   0   |  0|
|0011 | 0101 |  100  |  0110  |   0   |  0|
|0011 | 0101 |  101  |  1100  |   0   |  0|
|0011 | 0101 |  110  |  0110  |   0   |  0|
|0011 | 0101 |  111  |  0001  |   0   |  0|


