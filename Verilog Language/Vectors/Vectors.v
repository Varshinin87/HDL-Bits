// Description: This module demonstrates vector signal assignment in Verilog.
//              It assigns individual bits of a 3-bit input vector to separate outputs
//              and also directly passes the vector to another output.

module top_module ( 
    input wire [2:0] vec,   // 3-bit input vector
    output wire [2:0] outv, // 3-bit output vector (copies 'vec')
    output wire o2,         // Output bit 2 (MSB of 'vec')
    output wire o1,         // Output bit 1 (Middle bit of 'vec')
    output wire o0          // Output bit 0 (LSB of 'vec')
); 

    // Assign each bit of 'vec' to individual outputs
    assign o0 = vec[0]; // Least Significant Bit (LSB)
    assign o1 = vec[1]; // Middle Bit
    assign o2 = vec[2]; // Most Significant Bit (MSB)

    // Assign the entire input vector 'vec' to the output vector 'outv'
    assign outv = vec;

endmodule
