module top_module(
    input clk,                 // Clock signal for sequential logic
    input a,                   // 1-bit input a
    input b,                   // 1-bit input b
    output wire out_assign,     // Combinational output using assign statement
    output reg out_always_comb, // Combinational output using always block
    output reg out_always_ff    // Sequential output using always block (flip-flop)
);

    // Combinational logic using an assign statement
    assign out_assign = a ^ b;

    // Combinational logic using an always block
    always @(*) begin 
        out_always_comb = a ^ b;
    end 

    // Sequential logic using a clocked always block (flip-flop)
    always @(posedge clk) begin 
        out_always_ff = a ^ b;
    end

endmodule
