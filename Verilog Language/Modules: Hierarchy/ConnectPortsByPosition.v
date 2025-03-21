module top_module ( 
    input a,         // 1-bit input 'a' to the top module
    input b,         // 1-bit input 'b' to the top module
    input c,         // 1-bit input 'c' to the top module
    input d,         // 1-bit input 'd' to the top module
    output out1,     // 1-bit output 'out1' from the top module
    output out2      // 1-bit output 'out2' from the top module
);

    // Instantiate the submodule 'mod_a' and connect the inputs and outputs
    // The inputs 'a', 'b', 'c', 'd' from the top module are connected to the corresponding inputs of 'mod_a'.
    // The outputs 'out1' and 'out2' of 'mod_a' are connected to the outputs of the top module.
    mod_a instance1 ( 
        out1,           // Output 'out1' of 'mod_a' connected to the top module's 'out1'
        out2,           // Output 'out2' of 'mod_a' connected to the top module's 'out2'
        a,              // Input 'a' from the top module connected to 'mod_a'
        b,              // Input 'b' from the top module connected to 'mod_a'
        c,              // Input 'c' from the top module connected to 'mod_a'
        d               // Input 'd' from the top module connected to 'mod_a'
    ); 

endmodule
