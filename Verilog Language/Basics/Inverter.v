// Description: This module implements a simple NOT gate (inverter).
//              The output is the logical negation of the input.

module top_module( 
    input in,  // Input signal
    output out // Output signal (inverted input)
);

    // Perform bitwise NOT operation on 'in' and assign it to 'out'
    assign out = ~in;

endmodule  
