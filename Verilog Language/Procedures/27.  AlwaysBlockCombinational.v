module top_module(
    input a, 
    input b,
    output wire out_assign,       // Combinational output using assign statement
    output reg out_alwaysblock    // Combinational output using always block
);
    // Using assign statement for combinational logic
    assign out_assign = a & b;

    // Using always block for the same combinational logic
    always @(*) begin 
        out_alwaysblock = a & b;
    end
endmodule
