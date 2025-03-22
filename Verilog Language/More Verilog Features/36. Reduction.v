module top_module (
    input [7:0] in,    // 8-bit input
    output parity      // Parity output (0 or 1)
);

    // XOR reduction across all 8 bits to compute parity
    assign parity = ^in[7:0];

endmodule
