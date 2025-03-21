// Description: This module performs sign extension on an 8-bit input 'in' to generate a 32-bit output 'out'.
//              The sign extension replicates the most significant bit of the input to fill the upper 25 bits of the output.

module top_module (
    input [7:0] in,     // 8-bit input vector 'in'
    output [31:0] out   // 32-bit output vector 'out'
);

    // Sign extend the 8-bit input 'in' to a 32-bit output 'out'
    // Replicates the most significant bit (in[7]) of 'in' to fill the upper 25 bits of 'out'
    assign out = {{25{in[7]}}, in[6:0]}; // Concatenate 25 bits of in[7] with the lower 7 bits of 'in'

endmodule
