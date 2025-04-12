# RISC-V ALU Project

Welcome to the RISC-V ALU project! This repository contains a simple implementation of an Arithmetic Logic Unit (ALU) designed for a RISC-V processor. The ALU performs a variety of arithmetic and logical operations, and it comes with a testbench to help verify that everything works correctly.

## What's Included

Here’s a quick overview of the files in this project:

- `alu.v`: The core Verilog module for the ALU. It handles arithmetic and logical functions based on the input control signals.
- `testbench.v`: A testbench written in Verilog that simulates the ALU and checks its output for various operations.
- `README.md`: You’re reading it! This file explains what the project is and how to use it.

## Supported ALU Operations

The ALU can perform several operations, selected via a 4-bit control input (`alu_op`). Here's what each code does:

- `4'b0000` – Addition  
- `4'b0001` – Subtraction  
- `4'b0010` – AND  
- `4'b0011` – OR  
- `4'b0100` – XOR  
- `4'b0101` – Set on Less Than (SLT)  
- `4'b0110` – Shift Left Logical  
- `4'b0111` – Shift Right Logical  

## How to Run the Simulation

You can simulate and test the ALU using any standard Verilog simulator. Here's a basic guide:

1. Compile both `alu.v` and `testbench.v` using your preferred tool (ModelSim, Vivado, etc.).
2. Run the simulation.
3. Review the testbench output to see how the ALU behaves for different inputs.

This process will help you ensure the ALU is functioning as expected.

## License

This project is licensed under the MIT License, so feel free to use, modify, and share it as you like. Contributions are welcome!

---

Feel free to fork the repo or raise issues if you have questions or suggestions. Happy coding!
