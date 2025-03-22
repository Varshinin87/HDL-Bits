module top_module( 
    input [99:0] a, b,      // 100-bit inputs a and b
    input cin,              // Carry-in input
    output [99:0] cout,     // 100-bit carry-out output
    output [99:0] sum       // 100-bit sum output
);

    genvar i;  // Declare generate variable

    // First full adder outside the generate block
    one_bit_FA FA1(a[0], b[0], cin, cout[0], sum[0]);

    // Generate block for the remaining full adders
    generate
        for (i = 1; i < 100; i = i + 1) begin : Full_adder_block
            one_bit_FA FA(a[i], b[i], cout[i-1], cout[i], sum[i]);
        end
    endgenerate

endmodule

// One-bit full adder module
module one_bit_FA(
    input a, b,      // 1-bit inputs a and b
    input cin,       // Carry-in input
    output cout,     // Carry-out output
    output sum       // Sum output
);

    assign sum = a ^ b ^ cin;         // Sum = a XOR b XOR cin
    assign cout = (a & b) | (b & cin) | (cin & a);  // Carry-out = (a AND b) OR (b AND cin) OR (cin AND a)

endmodule
