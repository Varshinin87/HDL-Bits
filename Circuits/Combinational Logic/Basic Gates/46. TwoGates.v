module top_module (
    input in1,  // Single-bit input in1
    input in2,  // Single-bit input in2
    input in3,  // Single-bit input in3
    output out  // Single-bit output out
);

wire w1;  // Intermediate wire to hold the result of the NOT XOR operation

// w1 is the negation of the XOR of in1 and in2
assign w1 = ~(in1 ^ in2);

// The final output is the XOR of w1 and in3
assign out = w1 ^ in3;

endmodule
