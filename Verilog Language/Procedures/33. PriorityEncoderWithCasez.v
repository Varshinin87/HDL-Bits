module top_module (
    input [7:0] in,           // 8-bit input
    output reg [2:0] pos      // 3-bit output position
);
    always @(*) begin
        casez (in[7:0])         // Case with don't-care 'z' for bits
            8'bzzzzzzz1: pos = 0;    // If only the last bit is 1, set pos to 0
            8'bzzzzzz1z: pos = 1;    // If second-to-last bit is 1, set pos to 1
            8'bzzzzz1zz: pos = 2;    // If third-to-last bit is 1, set pos to 2
            8'bzzzz1zzz: pos = 3;    // If fourth-to-last bit is 1, set pos to 3
            8'bzzz1zzzz: pos = 4;    // If fifth-to-last bit is 1, set pos to 4
            8'bzz1zzzzz: pos = 5;    // If sixth-to-last bit is 1, set pos to 5
            8'bz1zzzzzz: pos = 6;    // If seventh-to-last bit is 1, set pos to 6
            8'b1zzzzzzz: pos = 7;    // If the first bit is 1, set pos to 7
            default:      pos = 0;    // Default case, if no match, set pos to 0
        endcase
    end
endmodule
