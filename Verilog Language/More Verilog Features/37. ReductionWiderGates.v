module top_module( 
    input [99:0] in,   // 100-bit input
    output out_and,    // AND  result
    output out_or,     // OR  result
    output out_xor     // XOR  result
);

    // AND reduction of all 100 bits in the input
    assign out_and = &in[99:0];

    // OR reduction of all 100 bits in the input
    assign out_or = |in[99:0];

    // XOR reduction of all 100 bits in the input
    assign out_xor = ^in[99:0];

endmodule
