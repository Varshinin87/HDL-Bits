// Module: 7458 chip implementation
// Description: Implements a dual multi-input AND-OR logic gate as per the 7458 IC.

module top_module ( 
    input p1a, p1b, p1c, p1d, p1e, p1f, // Inputs for first logic
    output p1y, // Output for first logic
    input p2a, p2b, p2c, p2d, // Inputs for second logic
    output p2y // Output for second logic
);

    // First logic circuit: (p1a AND p1b AND p1c) OR (p1d AND p1e AND p1f)
    assign p1y = (p1a & p1b & p1c) | (p1d & p1e & p1f);

    // Second logic circuit: (p2a AND p2b) OR (p2c AND p2d)
    assign p2y = (p2a & p2b) | (p2c & p2d);

endmodule
