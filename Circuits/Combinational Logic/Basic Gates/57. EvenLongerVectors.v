module top_module( 
    input [99:0] in,            // 100-bit input signal
    output [98:0] out_both,     // 99-bit output: AND operation between adjacent bits
    output [99:1] out_any,      // 99-bit output: OR operation between adjacent bits
    output [99:0] out_different // 100-bit output: XOR operation with rotated version of input
);

    // Perform bitwise AND between adjacent bits of 'in'
    assign out_both = in[98:0] & in[99:1];  

    // Perform bitwise OR between adjacent bits of 'in'
    assign out_any = in[99:1] | in[98:0];  

    // Perform bitwise XOR between 'in' and a rotated version of itself
    // {in[0], in[99:1]} shifts 'in' left cyclically by 1 position
    assign out_different = in ^ {in[0], in[99:1]}; 

endmodule
