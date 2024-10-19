# Ripple Carry Adder
This project implements a 4-bit Ripple Carry Adder (RCA) using VHDL. The Ripple Carry Adder adds two 4-bit binary numbers and a carry-in bit, producing a 4-bit sum and a carry-out bit.

## Files Included
RIPPLE_CARRY_ADDER.vhd: The VHDL code for the Ripple Carry Adder design.<br>
RIPPLE_CARRY_ADDER_tb.vhd: The testbench for simulating the Ripple Carry Adder functionality.
## Functionality
The Ripple Carry Adder takes two 4-bit inputs (A and B) and a carry-in (Cin), and produces:

A 4-bit sum (Sum)<br>
A carry-out (Cout)<br>
## Design Overview
The Ripple Carry Adder works by chaining together full adders. Each full adder computes the sum of a pair of input bits along with the carry from the previous stage. This design allows for the addition of binary numbers in a straightforward manner.

## Key Features
Supports addition of two 4-bit binary numbers.<br>
Outputs a 4-bit sum and a carry-out.<br>
Easy to simulate and validate using the provided testbench.<br>
## How to Use
Simulation Environment: Use a VHDL simulation tool such as EDA Playground or ModelSim.<br>

Compile the Design: Load both RIPPLE_CARRY_ADDER.vhd and RIPPLE_CARRY_ADDER_tb.vhd into the simulator.<br>

Run the Testbench: Execute the testbench to validate the functionality of the Ripple Carry Adder.<br>

Observe Outputs: Check the output waveform or console for the sum and carry-out results.<br>

## Test Cases
The testbench includes several test cases to verify the functionality of the Ripple Carry Adder, including:

A = 0001, B = 0010, Cin = 0<br>
A = 0011, B = 0101, Cin = 0<br>
A = 1111, B = 0001, Cin = 0<br>
A = 0111, B = 1001, Cin = 1<br>
A = 1000, B = 1000, Cin = 1
## Result
Here is the output waveforms for the given test cases:
![image](https://github.com/user-attachments/assets/e219e0dd-5df5-4b52-a2a0-09353fdadb51)
