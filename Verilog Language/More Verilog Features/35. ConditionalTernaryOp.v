module top_module (
    input [7:0] a, b, c, d,     // 8-bit inputs
    output [7:0] min            // 8-bit output (minimum value)
);
    wire [7:0] int1, int2;       // Intermediate wires to store comparisons

    // Compare a and b, store the smaller one in int1
    assign int1 = (a < b) ? a : b; 
    
    // Compare int1 (min of a and b) with c, store the smaller one in int2
    assign int2 = (int1 < c) ? int1 : c;
    
    // Compare int2 (min of a, b, and c) with d, store the result in min
    assign min  = (int2 < d) ? int2 : d;

endmodule
