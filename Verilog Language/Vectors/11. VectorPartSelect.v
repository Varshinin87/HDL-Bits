module top_module( 
    input [31:0] in,   // 32-bit input vector
    output [31:0] out  // 32-bit output vector after byte swapping
);

    // Swap the upper and lower 8-bit bytes of the 32-bit input
    assign out[7:0]   = in[31:24];  // Assign the upper byte of 'in' to the lower byte of 'out'
    assign out[15:8]  = in[23:16];  // Assign the 2nd byte of 'in' to the 2nd byte of 'out'
    assign out[23:16] = in[15:8];   // Assign the 3rd byte of 'in' to the 3rd byte of 'out'
    assign out[31:24] = in[7:0];    // Assign the lower byte of 'in' to the upper byte of 'out'

endmodule
