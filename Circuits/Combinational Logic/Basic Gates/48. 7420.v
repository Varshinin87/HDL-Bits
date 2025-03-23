module top_module ( 
    input p1a, p1b, p1c, p1d,  // Inputs for first NAND gate
    output p1y,                // Output for first NAND gate
    input p2a, p2b, p2c, p2d,  // Inputs for second NAND gate
    output p2y                 // Output for second NAND gate
);
    
    assign p1y = ~(p1a & p1b & p1c & p1d); // First 4-input NAND gate
    assign p2y = ~(p2a & p2b & p2c & p2d); // Second 4-input NAND gate

endmodule
