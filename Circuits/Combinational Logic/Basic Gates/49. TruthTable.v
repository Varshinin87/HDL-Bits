module top_module( 
    input x3,
    input x2,
    input x1,  // three inputs
    output f   // one output
);

    assign f = (~x3 & x2 & ~x1) |  // minterm m2
               (~x3 & x2 & x1)  |  // minterm m3
               (x3 & ~x2 & x1)  |  // minterm m5
               (x3 & x2 & x1);     // minterm m7

endmodule
