`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/12/2025 08:53:26 PM
// Design Name: 
// Module Name: ALU
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module alu(
    input [31:0] a,       // 32-bit input a
    input [31:0] b,       // 32-bit input b
    input [3:0] alu_op,   // ALU operation control
    output reg [31:0] result, // ALU result
    output reg zero       // Zero flag (set if result is zero)
);

    always @(*) begin
        case (alu_op)
            4'b0000: result = a + b;               // Addition
            4'b0001: result = a - b;               // Subtraction
            4'b0010: result = a & b;               // AND
            4'b0011: result = a | b;               // OR
            4'b0100: result = a ^ b;               // XOR
            4'b0101: result = (a < b) ? 1 : 0;     // Set on less than (SLT)
            4'b0110: result = a << b[4:0];         // Shift left
            4'b0111: result = a >> b[4:0];         // Shift right
            default: result = 32'b0;               // Default case
        endcase

        // Zero flag
        zero = (result == 32'b0);
    end
endmodule

