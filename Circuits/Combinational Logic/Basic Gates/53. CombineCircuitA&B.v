module top_module (
    input x,  // Input signal x
    input y,  // Input signal y
    output z  // Output signal z
);
    // Intermediate wires to store outputs of module instances
    wire z1, z2, z3, z4;
    
    // Instantiate module A twice
    A IA1(.x(x), .y(y), .z(z1)); // Instance IA1: Computes z1 = (x ^ y) & x
    A IA2(.x(x), .y(y), .z(z2)); // Instance IA2: Computes z2 = (x ^ y) & x

    // Instantiate module B twice
    B IB1(.x(x), .y(y), .z(z3)); // Instance IB1: Computes z3 = ~(x ^ y) (XNOR)
    B IB2(.x(x), .y(y), .z(z4)); // Instance IB2: Computes z4 = ~(x ^ y) (XNOR)

    // Compute final output using a combination of OR, XOR, and AND operations
    assign z = (z1 | z3) ^ (z2 & z4); // z1 OR z3, then XOR with z2 AND z4

endmodule

// Module A: Performs (x XOR y) AND x
module A(input x, input y, output z);
    assign z = (x ^ y) & x;
endmodule

// Module B: Performs XNOR operation (NOT XOR)
module B(input x, input y, output z);
    assign z = ~(x ^ y);
endmodule
