module top_module( 
    input a,  // First input
    input b,  // Second input
    output out // Output (NOR of a and b)
);

    // Perform bitwise NOR operation on 'a' and 'b' and assign it to 'out'
    assign out = ~(a | b);

endmodule  
