module top_module( 
    input a, b, sel, // Inputs: two data signals (a, b) and a selector (sel)
    output out        // Output: selected value based on sel
); 

    // Assign 'out' based on the value of 'sel'
    // If sel is 1, out = b; otherwise, out = a
    assign out = sel ? b : a;

endmodule
