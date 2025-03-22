module top_module(
    input [31:0] a,     // 32-bit input operand a
    input [31:0] b,     // 32-bit input operand b
    output [31:0] sum   // 32-bit output sum
);  
    
    wire cout1;             // Carry-out from the lower 16-bit addition
    wire [15:0] sum0; // Sum of upper 16 bits when carry-in is 0
    wire [15:0] sum1; // Sum of upper 16 bits when carry-in is 1

    // First 16-bit adder (lower half)
    add16 adder1 (
        .a(a[15:0]),      // Lower 16 bits of a
        .b(b[15:0]),      // Lower 16 bits of b
        .cin(1'b0),       // No carry-in for lower half
        .sum(sum[15:0]),  // Output lower 16-bit sum
        .cout(cout1)      // Carry-out from lower 16-bit addition
    );

    // Second 16-bit adder (upper half, assuming carry-in = 0)
    add16 adder2 (
        .a(a[31:16]),     // Upper 16 bits of a
        .b(b[31:16]),     // Upper 16 bits of b
        .cin(1'b0),       // Assume no carry-in
        .sum(sum0), // Store sum when carry-in is 0
        .cout()           // Carry-out ignored
    );

    // Third 16-bit adder (upper half, assuming carry-in = 1)
    add16 adder3 (
        .a(a[31:16]),     // Upper 16 bits of a
        .b(b[31:16]),     // Upper 16 bits of b
        .cin(1'b1),       // Assume carry-in is 1
        .sum(sum1), // Store sum when carry-in is 1
        .cout()           // Carry-out ignored
    );

    // Select the correct upper sum based on carry-out from lower 16-bit addition
    assign sum[31:16] = cout1 ? sum1 : sum0;

endmodule
