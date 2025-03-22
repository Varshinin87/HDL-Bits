module top_module( 
    input [254:0] in,    // 255-bit input
    output reg [7:0] out  // 8-bit output
);
    integer i;               // Declare integer for the loop counter
    reg [7:0] counter;       // 8-bit counter for counting 1s

    always @(in) begin
        counter = 8'b0;       // Initialize the counter to 0
        for (i = 0; i < 255; i = i + 1) begin
            if (in[i] == 1'b1) begin
                counter = counter + 1'b1;  // Increment counter for each 1 bit
            end
        end
        out = counter;         // Assign final count to output
    end
endmodule
