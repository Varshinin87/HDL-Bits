module top_module (
    input a, b, c, d, e,             // 1-bit input signals 'a', 'b', 'c', 'd', 'e'
    output [24:0] out                // 25-bit output vector 'out'
); 

assign out = {{5{~a}}} ^ {a, b, c, d, e},   // XOR of NOT a with the concatenation of a, b, c, d, e
             {5{~b}} ^ {a, b, c, d, e},   // XOR of NOT b with the concatenation of a, b, c, d, e
             {5{~c}} ^ {a, b, c, d, e},   // XOR of NOT c with the concatenation of a, b, c, d, e
             {5{~d}} ^ {a, b, c, d, e},   // XOR of NOT d with the concatenation of a, b, c, d, e
             {5{~e}} ^ {a, b, c, d, e};   // XOR of NOT e with the concatenation of a, b, c, d, e

endmodule
