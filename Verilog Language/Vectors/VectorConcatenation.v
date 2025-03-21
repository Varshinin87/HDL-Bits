// Description: This module concatenates portions of multiple 5-bit input vectors ('a', 'b', 'c', 'd', 'e', 'f')
//              to create four 8-bit output vectors ('w', 'x', 'y', 'z').

module top_module (
    input [4:0] a, b, c, d, e, f,        // 5-bit input vectors 'a', 'b', 'c', 'd', 'e', 'f'
    output [7:0] w, x, y, z              // 8-bit output vectors 'w', 'x', 'y', 'z'
);

    // Concatenate the 5 bits of 'a' and the upper 3 bits of 'b' to form an 8-bit output 'w'
    assign w = {a[4:0], b[4:2]};  // Concatenate bits a[4:0] and b[4:2] to form w[7:0]

    // Concatenate the lower 2 bits of 'b', all 5 bits of 'c', and the 4th bit of 'd' to form an 8-bit output 'x'
    assign x = {b[1:0], c[4:0], d[4]};  // Concatenate bits b[1:0], c[4:0], and d[4] to form x[7:0]

    // Concatenate the lower 4 bits of 'd' and the upper 4 bits of 'e' to form an 8-bit output 'y'
    assign y = {d[3:0], e[4:1]};  // Concatenate bits d[3:0] and e[4:1] to form y[7:0]

    // Concatenate the least significant bit of 'e', all 5 bits of 'f', and two constant bits '11' to form an 8-bit output 'z'
    assign z = {e[0], f[4:0], 2'b11};  // Concatenate bit e[0], f[4:0], and two constant bits '11' to form z[7:0]

endmodule
