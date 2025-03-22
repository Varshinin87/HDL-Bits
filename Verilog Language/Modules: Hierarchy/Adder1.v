module top_module(
    input [31:0] a,  // 32-bit input operand a
    input [31:0] b,  // 32-bit input operand b
    output [31:0] sum // 32-bit output sum
);

    wire [15:0] sum1;      // Lower 16-bit sum
    wire [15:0] sum2;      // Upper 16-bit sum
    wire carry_out1;       // Carry output from lower 16-bit addition

    // First 16-bit addition (lower half)
    add16 adder1 (
        .a(a[15:0]),      // Lower 16 bits of a
        .b(b[15:0]),      // Lower 16 bits of b
        .cin(1'b0),       // No carry-in for lower half
        .sum(sum1),       // Result of lower 16-bit addition
        .cout(carry_out1) // Carry-out from lower 16-bit addition
    );

    // Second 16-bit addition (upper half)
    add16 adder2 (
        .a(a[31:16]),     // Upper 16 bits of a
        .b(b[31:16]),     // Upper 16 bits of b
        .cin(carry_out1), // Carry-in from lower 16-bit addition
        .sum(sum2),       // Result of upper 16-bit addition
        .cout()           // Carry-out ignored
    );

    // Combine upper and lower 16-bit sums into final 32-bit sum
    assign sum = {sum2, sum1}; 

endmodule
