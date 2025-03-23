module top_module( 
    input [255:0] in,  // 256-bit input signal
    input [7:0] sel,   // 8-bit selector signal (can select from 0 to 255)
    output out         // Single-bit output
);

    // Assign 'out' to the bit in 'in' at the index specified by 'sel'
    assign out = in[sel];

endmodule
