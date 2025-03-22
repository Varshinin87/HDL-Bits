module top_module ( 
    input a,         // 1-bit input 'a' to the top module
    input b,         // 1-bit input 'b' to the top module
    input c,         // 1-bit input 'c' to the top module
    input d,         // 1-bit input 'd' to the top module
    output out1,     // 1-bit output 'out1' from the top module
    output out2      // 1-bit output 'out2' from the top module
);

    // Instantiate the submodule 'mod_a' named 'instance1'
    // Connect the top module's inputs 'a', 'b', 'c', 'd' to 'mod_a' instance inputs 'in1', 'in2', 'in3', 'in4'
    // Connect the top module's outputs 'out1' and 'out2' to 'mod_a' instance outputs 'out1' and 'out2'
    mod_a instance1 (
        .in1(a),      // Connect 'a' input to 'in1' input of mod_a
        .in2(b),      // Connect 'b' input to 'in2' input of mod_a
        .in3(c),      // Connect 'c' input to 'in3' input of mod_a
        .in4(d),      // Connect 'd' input to 'in4' input of mod_a
        .out1(out1),  // Connect 'out1' of mod_a to the top module's 'out1'
        .out2(out2)   // Connect 'out2' of mod_a to the top module's 'out2'
    );

endmodule
