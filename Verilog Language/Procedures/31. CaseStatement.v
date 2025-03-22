module top_module ( 
    input [2:0] sel,        // 3-bit selection input
    input [3:0] data0,      // 4-bit data input 0
    input [3:0] data1,      // 4-bit data input 1
    input [3:0] data2,      // 4-bit data input 2
    input [3:0] data3,      // 4-bit data input 3
    input [3:0] data4,      // 4-bit data input 4
    input [3:0] data5,      // 4-bit data input 5
    output reg [3:0] out    // 4-bit output based on selected input
);

    // Always block for combinational logic (multiplexer)
    always @(*) begin  
        case(sel)
            3'b000: out = data0;  // Select data0 when sel = 000
            3'b001: out = data1;  // Select data1 when sel = 001
            3'b010: out = data2;  // Select data2 when sel = 010
            3'b011: out = data3;  // Select data3 when sel = 011
            3'b100: out = data4;  // Select data4 when sel = 100
            3'b101: out = data5;  // Select data5 when sel = 101
            default: out = 4'd0;  // Default output is 0 if sel is outside range
        endcase
    end

endmodule
