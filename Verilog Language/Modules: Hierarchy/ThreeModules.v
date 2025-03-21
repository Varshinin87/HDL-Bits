// Description: This top-level module instantiates three 'my_dff' submodules to create a shift register.
//              The module has a clock input 'clk', a data input 'd', and an output 'q'.
//              The 'my_dff' instances are connected in series, with each output serving as the input to the next.

module top_module ( 
    input clk,  // Clock input 'clk'
    input d,    // Data input 'd'
    output q    // Output 'q'
);
    wire q1, q2;  // Intermediate wires for storing flip-flop outputs

    // Instantiate first 'my_dff' (D Flip-Flop) named 'instance1'
    // 'q1' is the output of this flip-flop
    my_dff instance1(
        .clk(clk),  // Clock input connected to 'clk'
        .d(d),      // Data input connected to 'd'
        .q(q1)      // Output connected to wire 'q1'
    );

    // Instantiate second 'my_dff' (D Flip-Flop) named 'instance2'
    // 'q1' is connected to the data input of this flip-flop
    // 'q2' is the output of this flip-flop
    my_dff instance2(
        .clk(clk),  // Clock input connected to 'clk'
        .d(q1),     // Data input connected to 'q1' (output from instance1)
        .q(q2)      // Output connected to wire 'q2'
    );

    // Instantiate third 'my_dff' (D Flip-Flop) named 'instance3'
    // 'q2' is connected to the data input of this flip-flop
    // 'q' is the output of this flip-flop (final output)
    my_dff instance3(
        .clk(clk),  // Clock input connected to 'clk'
        .d(q2),     // Data input connected to 'q2' (output from instance2)
        .q(q)       // Output connected to the final output 'q'
    );

endmodule
