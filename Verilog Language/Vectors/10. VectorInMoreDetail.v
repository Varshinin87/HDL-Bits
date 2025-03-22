module top_module( 
    input wire [15:0] in,   // 16-bit input vector
    output wire [7:0] out_hi, // Upper 8 bits of the input
    output wire [7:0] out_lo  // Lower 8 bits of the input
);

    // Assign the upper 8 bits (bits 15 to 8) of 'in' to 'out_hi'
    assign out_hi = in[15:8];

    // Assign the lower 8 bits (bits 7 to 0) of 'in' to 'out_lo'
    assign out_lo = in[7:0];

endmodule
