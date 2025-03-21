// Description: This module assigns input signals to corresponding output signals. 

module top_module( 
    input a, b, c,   // Inputs: a, b, c
    output w, x, y, z // Outputs: w, x, y, z
);

    // Assign input 'a' to output 'w'
    assign w = a;  

    // Assign input 'b' to outputs 'x' and 'y'
    assign x = b;
    assign y = b;

    // Assign input 'c' to output 'z'
    assign z = c;

endmodule
