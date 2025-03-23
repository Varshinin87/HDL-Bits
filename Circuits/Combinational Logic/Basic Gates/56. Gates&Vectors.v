module top_module( 
    input [3:0] in,            // 4-bit input signal
    output [2:0] out_both,     // 3-bit output: AND operation between adjacent bits
    output [3:1] out_any,      // 3-bit output: OR operation between adjacent bits
    output [3:0] out_different // 4-bit output: XOR operation with rotated version of input
);

    // Perform bitwise AND between adjacent bits of 'in'
    assign out_both = in[2:0] & in[3:1];  

    // Perform bitwise OR between adjacent bits of 'in'
    assign out_any = in[3:1] | in[2:0];  

    // Perform bitwise XOR between 'in' and a rotated version of itself
    // {in[0], in[3:1]} shifts 'in' left cyclically by 1 position
    assign out_different = in ^ {in[0], in[3:1]}; 

endmodule
