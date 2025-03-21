// Description: This module performs bitwise AND, OR, and XOR operations on a 4-bit input 'in'.
//              It produces three outputs:
//              - 'out_and': Bitwise AND of all input bits.
//              - 'out_or': Bitwise OR of all input bits.
//              - 'out_xor': Bitwise XOR of all input bits.

module top_module( 
    input [3:0] in,        // 4-bit input vector 'in'
    output out_and,        // Output for the AND operation on all bits of 'in'
    output out_or,         // Output for the OR operation on all bits of 'in'
    output out_xor         // Output for the XOR operation on all bits of 'in'
);

    // Perform bitwise AND on all bits of 'in'
    assign out_and = in[0] & in[1] & in[2] & in[3];  // AND operation on all 4 bits

    // Perform bitwise OR on all bits of 'in'
    assign out_or = in[0] | in[1] | in[2] | in[3];   // OR operation on all 4 bits

    // Perform bitwise XOR on all bits of 'in'
    assign out_xor = in[0] ^ in[1] ^ in[2] ^ in[3]; // XOR operation on all 4 bits

endmodule
