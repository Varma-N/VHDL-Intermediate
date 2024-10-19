# VHDL-Intermediate
## Ripple Carry Adder (RCA)
## Overview
The Ripple Carry Adder (RCA) is a combinational digital circuit used to perform binary addition. It is constructed by cascading several full adders in series, where the carry-out of each full adder becomes the carry-in of the next. This project demonstrates the design and simulation of an N-bit Ripple Carry Adder using VHDL.

## Features
Implements an N-bit Ripple Carry Adder.<br>
Adds two N-bit binary numbers with carry propagation between full adders.<br>
Written in VHDL and simulated using EDA Playground.<br>
Includes both design and testbench files for simulation.
## Components
Full Adder: The building block of the RCA, which adds two single-bit numbers and a carry-in.<br>
Ripple Carry: Propagation of the carry between consecutive full adders to produce the final sum and carry-out.<br>
## Files
ripple_carry_adder.vhd: The VHDL design file containing the architecture of the ripple carry adder.<br>
testbench.vhd: The VHDL testbench file to verify the functionality of the adder.<br>
## Design Details
The Ripple Carry Adder consists of multiple Full Adders connected in series.<br>
Each full adder takes three inputs:<br>
Two single-bit binary numbers (A and B).<br>
A carry input (Cin).<br>
## Outputs include:
Sum: The result of the bit-wise addition.<br>
Carry-out: The carry propagated to the next stage.<br>
## Usage Instructions
### Simulation Setup
EDA Playground: You can simulate the VHDL code on platforms like EDA Playground.<br>

Go to EDA Playground.<br>
Copy the VHDL design and testbench code to their respective files.<br>
Choose the appropriate VHDL simulator (like GHDL or ModelSim).<br>
Run the simulation to verify the results.<br>
## VHDL Tools:

For local simulation, use any VHDL simulator like ModelSim or GHDL.<br>
Compile the design and testbench files and run the simulation.<br>
## Testbench
The testbench (testbench.vhd) generates various test cases to validate the RCA’s functionality. It provides input values for two N-bit binary numbers and compares the actual sum and carry with the expected results.

## Example of Usage
vhdl<br>
Copy code<br>
-- Example: Adding two 4-bit binary numbers<br>
-- A = 1010 (10 in decimal)<br>
-- B = 0110 (6 in decimal)<br>
-- Expected sum = 10000 (16 in decimal)
## Results
After running the simulation, you should observe the binary sum and carry-out for different input values of A and B. Ensure the sum and carry-out match the expected values for all test cases.
