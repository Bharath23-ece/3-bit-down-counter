# 3-Bit Synchronous Down Counter

## Overview
This project implements a 3-bit synchronous down-counter using Verilog HDL. The counter decrements its value by one at every falling edge of the clock.

## Features
- 3-bit counter (0 to 7).
- Negative-edge triggered operation.
- Synchronous active-high reset.
- Automatically wraps around from 000 to 111.
- Verilog testbench for functional simulation.

## Counting Sequence

```text
111 → 110 → 101 → 100
 ↓
011 → 010 → 001 → 000
 ↓
111 (Repeats)
```

## Reset Operation
When reset is HIGH, the counter loads `3'b111` at the next falling edge of the clock.

## Verilog Implementation

```verilog
module counter_3bit(
    input clk,
    input reset,
    output reg [2:0] count
);

always @(negedge clk) begin
    if (reset)
        count <= 3'b111;
    else
        count <= count - 1'b1;
end

endmodule
```

## Simulation
The design is verified using a Verilog testbench.

**Tools:**
- Icarus Verilog – RTL simulation
- GTKWave – Waveform analysis
- Verilog HDL – Hardware description

## Concepts Learned
- Sequential circuit design
- Clock edge triggering
- Synchronous reset
- Nonblocking assignments
- Binary decrement operation
- Counter overflow and modulo-8 arithmetic

## Author
ECE Student | RTL Design and VLSI Enthusiast
