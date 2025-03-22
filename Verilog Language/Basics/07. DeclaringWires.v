module top_module(
    input a,      // First input
    input b,      // Second input
    input c,      // Third input
    input d,      // Fourth input
    output out,   // Output (OR of two AND operations)
    output out_n  // Inverted output (~out)
);

    wire w1, w2, w3; // Internal wires for intermediate logic

    // Perform AND operation on inputs 'a' and 'b'
    assign w1 = (a & b);

    // Perform AND operation on inputs 'c' and 'd'
    assign w2 = (c & d);

    // Perform OR operation on the results of the AND operations
    assign w3 = (w1 | w2);

    // Assign the OR result to 'out'
    assign out = w3;

    // Assign the inverted OR result to 'out_n'
    assign out_n = ~w3;

endmodule
