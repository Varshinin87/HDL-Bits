module top_module (
    input [3:0] in,           // 4-bit input
    output reg [1:0] pos      // 2-bit output
);

    // Combinational always block for case selection
    always @(*) begin
        case (in)
            4'h0: pos = 2'h0;  // If input is 0, set pos to 00
            4'h1: pos = 2'h0;  // If input is 1, set pos to 00
            4'h2: pos = 2'h1;  // If input is 2, set pos to 01
            4'h3: pos = 2'h0;  // If input is 3, set pos to 00
            4'h4: pos = 2'h2;  // If input is 4, set pos to 10
            4'h5: pos = 2'h0;  // If input is 5, set pos to 00
            4'h6: pos = 2'h1;  // If input is 6, set pos to 01
            4'h7: pos = 2'h0;  // If input is 7, set pos to 00
            4'h8: pos = 2'h3;  // If input is 8, set pos to 11
            4'h9: pos = 2'h0;  // If input is 9, set pos to 00
            4'ha: pos = 2'h1;  // If input is A, set pos to 01
            4'hb: pos = 2'h0;  // If input is B, set pos to 00
            4'hc: pos = 2'h2;  // If input is C, set pos to 10
            4'hd: pos = 2'h0;  // If input is D, set pos to 00
            4'he: pos = 2'h1;  // If input is E, set pos to 01
            4'hf: pos = 2'h0;  // If input is F, set pos to 00
            default: pos = 2'b0; // Default case, set pos to 00
        endcase
    end

endmodule
