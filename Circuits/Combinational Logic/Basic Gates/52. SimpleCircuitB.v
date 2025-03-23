module top_module ( 
    input x,  // Input signal x
    input y,  // Input signal y
    output z  // Output signal z
);
    //`z` is 1 when `x` and `y` are the same, and 0 otherwise.
    assign z = ~(x ^ y);
endmodule
