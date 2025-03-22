module top_module( 
    input a, b,               // Two single-bit inputs a and b
    output out_and,           // AND operation output
    output out_or,            // OR operation output
    output out_xor,           // XOR operation output
    output out_nand,          // NAND operation output
    output out_nor,           // NOR operation output
    output out_xnor,          // XNOR operation output
    output out_anotb          // AND operation with NOT b (a AND NOT b)
);

assign out_and = a & b;      // AND: a AND b
assign out_or = a | b;       // OR: a OR b
assign out_xor = a ^ b;      // XOR: a XOR b
assign out_nand = ~(a & b);  // NAND: NOT (a AND b)
assign out_nor = ~(a | b);   // NOR: NOT (a OR b)
assign out_xnor = ~(a ^ b);  // XNOR: NOT (a XOR b)
assign out_anotb = a & (~b); // AND with NOT b: a AND (NOT b)

endmodule
