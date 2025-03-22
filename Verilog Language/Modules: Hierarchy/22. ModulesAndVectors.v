module top_module ( 
    input clk,             // Clock input 'clk'
    input [7:0] d,         // 8-bit data input 'd'
    input [1:0] sel,       // 2-bit selection input 'sel'
    output [7:0] q        // 8-bit output 'q'
);

    wire [7:0] q1, q2, q3;   // Intermediate wires to hold outputs of the flip-flops

    // Instantiate the first 8-bit D flip-flop ('my_dff8') named 'instance1'
    my_dff8 instance1(clk, d, q1);   // 'q1' stores the output of the first flip-flop

    // Instantiate the second 8-bit D flip-flop ('my_dff8') named 'instance2'
    my_dff8 instance2(clk, q1, q2);  // 'q2' stores the output of the second flip-flop

    // Instantiate the third 8-bit D flip-flop ('my_dff8') named 'instance3'
    my_dff8 instance3(clk, q2, q3);  // 'q3' stores the output of the third flip-flop

    // Always block to assign the correct value to 'q' based on the value of 'sel'
    always @(*) begin
        case(sel) 
            2'b00: q = d;    // When sel is 00, output 'q' is equal to input 'd'
            2'b01: q = q1;   // When sel is 01, output 'q' is equal to output of first flip-flop ('q1')
            2'b10: q = q2;   // When sel is 10, output 'q' is equal to output of second flip-flop ('q2')
            2'b11: q = q3;   // When sel is 11, output 'q' is equal to output of third flip-flop ('q3')
        endcase
    end
endmodule
