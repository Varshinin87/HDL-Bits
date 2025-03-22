module top_module (
    input [31:0] a,    // 32-bit input a
    input [31:0] b,    // 32-bit input b
    output [31:0] sum  // 32-bit sum output
);
    wire carry_out1;   // Carry-out from the first add16 instance

    // Instantiate the first add16 for lower 16 bits
    add16 adder1 (
        .a(a[15:0]),     // Lower 16 bits of input a
        .b(b[15:0]),     // Lower 16 bits of input b
        .cin(1'b0),      // No carry-in for the first 16-bit adder
        .sum(sum[15:0]), // Result for the lower 16 bits
        .cout(carry_out1) // Carry-out to be used by the next stage
    );

    // Instantiate the second add16 for upper 16 bits
    add16 adder2 (
        .a(a[31:16]),    // Upper 16 bits of input a
        .b(b[31:16]),    // Upper 16 bits of input b
        .cin(carry_out1), // Carry-in from the first adder's carry-out
        .sum(sum[31:16]), // Result for the upper 16 bits
        .cout()          // Carry-out is not used, so leave it unconnected
    );

endmodule

module add1 (
    input a,    // 1-bit input a
    input b,    // 1-bit input b
    input cin,  // 1-bit carry-in
    output sum, // 1-bit sum output
    output cout // 1-bit carry-out output
);
    assign sum = a ^ b ^ cin;           // Sum = a XOR b XOR cin
    assign cout = (a & b) | (b & cin) | (cin & a); // Carry-out = (a AND b) OR (b AND cin) OR (cin AND a)
endmodule
