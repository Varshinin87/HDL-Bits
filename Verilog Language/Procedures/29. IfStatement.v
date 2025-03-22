module top_module(
    input a,                  // 1-bit input a
    input b,                  // 1-bit input b
    input sel_b1,             // Selection signal 1
    input sel_b2,             // Selection signal 2
    output wire out_assign,   // Combinational output using assign statement
    output reg out_always     // Combinational output using always block
); 

    // Combinational logic using always block
    always @(*) begin 
        if (sel_b1 & sel_b2) begin
            out_always = b;  // Select b when both sel_b1 and sel_b2 are high
        end
        else begin
            out_always = a;  // Otherwise, select a
        end
    end

    // Equivalent combinational logic using assign statement
    assign out_assign = (sel_b1 & sel_b2) ? b : a;

endmodule
