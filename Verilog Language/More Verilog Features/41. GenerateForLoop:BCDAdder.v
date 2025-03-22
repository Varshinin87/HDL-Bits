module top_module( 
    input [399:0] a, b,      // 400-bit inputs
    input cin,                // Initial carry-in
    output cout,              // Final carry-out
    output [399:0] sum       // 400-bit sum output
);

    wire [99:0] carry;        // Internal carry signals for each BCD adder
    genvar i;                 // Generate variable for loop

    generate 
        for (i = 0; i < 100; i = i + 1) begin : bcd_adders
            if (i == 0) begin 
                // First digit adder uses the external carry-in
                bcd_fadd u_bcd_fadd(
                    .a(a[3:0]),            // First 4 bits of 'a'
                    .b(b[3:0]),            // First 4 bits of 'b'
                    .cin(cin),             // Initial carry-in
                    .cout(carry[i]),       // Carry-out to the next stage
                    .sum(sum[3:0])         // First 4 bits of 'sum'
                );
            end else begin
                // Subsequent digit adders use internal carry signals
                bcd_fadd u_bcd_fadd(
                    .a(a[4*i + 3 : 4*i]),  // 4-bit slice from 'a' (4*i + 3 to 4*i)
                    .b(b[4*i + 3 : 4*i]),  // 4-bit slice from 'b' (4*i + 3 to 4*i)
                    .cin(carry[i-1]),      // Carry-in from the previous stage
                    .cout(carry[i]),       // Carry-out to the next stage
                    .sum(sum[4*i + 3 : 4*i]) // 4-bit slice of 'sum' for the current stage
                );
            end
        end
    endgenerate

    // The final carry-out from the last BCD adder instance
    assign cout = carry[99];    // Carry-out from the last 4-bit adder

endmodule
