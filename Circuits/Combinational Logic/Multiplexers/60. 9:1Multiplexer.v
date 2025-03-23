module top_module( 
    input [15:0] a, b, c, d, e, f, g, h, i, // Nine 16-bit input signals
    input [3:0] sel,  // 4-bit selection signal (allows selecting up to 16 options)
    output reg [15:0] out // 16-bit output signal (declared as reg for use in always block)
);

    always @(*) begin
        case (sel) 
            4'b0000: out = a;        // Select input 'a' when sel = 0
            4'b0001: out = b;        // Select input 'b' when sel = 1
            4'b0010: out = c;        // Select input 'c' when sel = 2
            4'b0011: out = d;        // Select input 'd' when sel = 3
            4'b0100: out = e;        // Select input 'e' when sel = 4
            4'b0101: out = f;        // Select input 'f' when sel = 5
            4'b0110: out = g;        // Select input 'g' when sel = 6
            4'b0111: out = h;        // Select input 'h' when sel = 7
            4'b1000: out = i;        // Select input 'i' when sel = 8
            4'b1001: out = 16'hFFFF; // Default value for undefined selections
            4'b1010: out = 16'hFFFF; 
            4'b1011: out = 16'hFFFF;   
            4'b1100: out = 16'hFFFF;
            4'b1101: out = 16'hFFFF;
            4'b1110: out = 16'hFFFF;
            4'b1111: out = 16'hFFFF; 
            default: out = 16'hFFFF;  // Handle unexpected values of 'sel'
        endcase
    end

endmodule
