module top_module( 
    input [2:0] a,               // 3-bit input vector 'a'
    input [2:0] b,               // 3-bit input vector 'b'
    output [2:0] out_or_bitwise, // 3-bit output for bitwise OR between 'a' and 'b'
    output out_or_logical,       // Single-bit output for logical OR between 'a' and 'b'
    output [5:0] out_not         // 6-bit output for NOT operations on 'a' and 'b'
);

    // Bitwise OR operation for each corresponding bit of 'a' and 'b'
    assign out_or_bitwise[0] = a[0] | b[0];  // OR operation on the LSB of 'a' and 'b'
    assign out_or_bitwise[1] = a[1] | b[1];  // OR operation on the 2nd bit of 'a' and 'b'
    assign out_or_bitwise[2] = a[2] | b[2];  // OR operation on the MSB of 'a' and 'b'

    // Logical OR operation (checks if either 'a' or 'b' has a non-zero value)
    assign out_or_logical = a || b; // Logical OR between 'a' and 'b'

    // NOT operation on 'a' (inverting each bit of 'a')
    assign out_not[2:0] = ~a[2:0];  // Invert the 3 bits of 'a'

    // NOT operation on 'b' (inverting each bit of 'b')
    assign out_not[5:3] = ~b[2:0];  // Invert the 3 bits of 'b' and assign to the upper 3 bits of 'out_not'

endmodule
