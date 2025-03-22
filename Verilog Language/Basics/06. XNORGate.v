module top_module( 
    input a,  // First input
    input b,  // Second input
    output out // Output (XNOR of a and b)
);

    // Perform bitwise XNOR operation on 'a' and 'b' and assign it to 'out'
    assign out = ~(a ^ b);

endmodule  
