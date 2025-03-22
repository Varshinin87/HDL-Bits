module top_module(
    input [31:0] a,    // 32-bit input operand a
    input [31:0] b,    // 32-bit input operand b
    input sub,         // Control signal: 0 for addition, 1 for subtraction
    output [31:0] sum  // 32-bit output sum or difference
);

    wire [31:0] b1;    // Modified version of b (negated if subtraction)
    wire carry_out;    // Carry-out from lower 16-bit addition

    // If sub = 1, compute b1 = ~b (bitwise NOT of b) for 2's complement subtraction
    // Otherwise, keep b1 = b for normal addition
    assign b1 = sub ? ~b : b;

    // First 16-bit addition (lower half)
    add16 instance1(
        .a(a[15:0]),      // Lower 16 bits of a
        .b(b1[15:0]),     // Lower 16 bits of modified b
        .cin(sub),        // Carry-in = sub (1 for subtraction to add +1 for 2's complement)
        .sum(sum[15:0]),  // Output lower 16-bit sum
        .cout(carry_out)  // Carry-out from lower 16-bit addition
    );

    // Second 16-bit addition (upper half)
    add16 instance2(
        .a(a[31:16]),     // Upper 16 bits of a
        .b(b1[31:16]),    // Upper 16 bits of modified b
        .cin(carry_out),  // Carry-in from lower 16-bit addition
        .sum(sum[31:16]), // Output upper 16-bit sum
        .cout()           // Carry-out ignored
    );

endmodule
