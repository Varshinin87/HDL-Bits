// Description: This module reverses the bits of an 8-bit input string 'in' and assigns the reversed bits to the output 'out'.

module top_module( 
    input [7:0] in,      // 8-bit input string 'in'
    output [7:0] out     // 8-bit output string 'out' (reversed version of 'in')
);

    // Reverse the bits of 'in' and assign it to 'out'
    assign out[0] = in[7];
    assign out[1] = in[6];
    assign out[2] = in[5];
    assign out[3] = in[4];
    assign out[4] = in[3];
    assign out[5] = in[2];
    assign out[6] = in[1];
    assign out[7] = in[0];

endmodule

