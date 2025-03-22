module top_module( 
    input [3:0] in,
    output reg out_and,  // Declare as reg since assigned in always block
    output reg out_or,   // Declare as reg
    output reg out_xor   // Declare as reg
);
    always @(*) begin 
        out_and = in[0] & in[1] & in[2] & in[3];  // AND operation
        out_or = in[0] | in[1] | in[2] | in[3];   // OR operation
        out_xor = in[0] ^ in[1] ^ in[2] ^ in[3];  // XOR operation
    end
endmodule
