module top_module( 
    input [99:0] in,    // 100-bit input
    output reg [99:0] out  // 100-bit output
);

    // Reverse the bits of 'in' and assign to 'out'
    always @(*) begin
        // Loop through the input bits and assign them in reverse order
        integer i;  // Declare loop counter
        for (i = 0; i < 100; i = i + 1) begin
            out[99 - i] = in[i]; // Reverse the bits
        end
    end

endmodule
