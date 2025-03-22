module top_module (
    input in1,  // Single-bit input in1
    input in2,  // Single-bit input in2
    output out  // Single-bit output out
);

assign out = ~(in1 | in2);  // Output is the negation of the OR operation between in1 and in2

endmodule
