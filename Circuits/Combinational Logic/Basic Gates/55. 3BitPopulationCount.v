module top_module( 
    input [2:0] in,  // 3-bit input signal
    output [1:0] out // 2-bit output signal to store the count of '1's in input
);
    
    integer i, count; // Declare integer variables for loop index and count

    always @ * begin
        count = 0; // Initialize count to zero at the start of each evaluation
        for (i = 0; i < 3; i = i + 1) begin // Loop through each bit of 'in'
            if (in[i] == 1'b1) // Check if the bit is 1
                count = count + 1; // Increment count if the bit is 1
        end
        out = count; // Assign the count value to the output
    end
    
endmodule
