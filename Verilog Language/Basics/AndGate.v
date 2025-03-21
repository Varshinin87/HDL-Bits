// Description: This module implements a simple AND gate.
//              The output is the logical AND of the two input signals.

module top_module( 
    input a,  // First input
    input b,  // Second input
    output out // Output (a AND b)
);

    // Perform bitwise AND operation on 'a' and 'b' and assign it to 'out'
    assign out = a & b;

endmodule  
