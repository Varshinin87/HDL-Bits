module top_module( 
    input [99:0] a, b,  // 100-bit input signals
    input sel,          // Single-bit select signal
    output [99:0] out   // 100-bit output signal
);

    // 100-bit 2-to-1 multiplexer
    // If sel is 1, assign 'b' to 'out'
    // If sel is 0, assign 'a' to 'out'
    assign out = sel ? b : a;

endmodule
