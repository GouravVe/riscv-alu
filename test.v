`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/12/2025 08:56:19 PM
// Design Name: 
// Module Name: test
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


module testbench;

    reg [31:0] a, b;          // Inputs for ALU
    reg [3:0] alu_op;         // ALU operation control
    wire [31:0] result;       // ALU result
    wire zero;                // Zero flag from ALU

    // Instantiate the ALU module
    alu uut (
        .a(a),
        .b(b),
        .alu_op(alu_op),
        .result(result),
        .zero(zero)
    );

    initial begin
        // Test 1: Addition
        a = 32'd15;
        b = 32'd10;
        alu_op = 4'b0000;  // Addition operation
        #10;
        $display("Addition result: %d, Zero flag: %b", result, zero);

        // Test 2: Subtraction
        a = 32'd20;
        b = 32'd10;
        alu_op = 4'b0001;  // Subtraction operation
        #10;
        $display("Subtraction result: %d, Zero flag: %b", result, zero);

        // Test 3: AND
        a = 32'd12;
        b = 32'd7;
        alu_op = 4'b0010;  // AND operation
        #10;
        $display("AND result: %d, Zero flag: %b", result, zero);

        // Test 4: OR
        a = 32'd5;
        b = 32'd3;
        alu_op = 4'b0011;  // OR operation
        #10;
        $display("OR result: %d, Zero flag: %b", result, zero);

        // Test 5: Set on less than
        a = 32'd5;
        b = 32'd7;
        alu_op = 4'b0101;  // Set less than operation
        #10;
        $display("SLT result: %d, Zero flag: %b", result, zero);

        // End simulation
        $finish;
    end

endmodule


