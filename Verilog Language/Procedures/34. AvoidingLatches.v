module top_module (
    input [15:0] scancode,     // 16-bit scancode input
    output reg left,            // Left output (direction control)
    output reg down,            // Down output (direction control)
    output reg right,           // Right output (direction control)
    output reg up               // Up output (direction control)
);

    always @(*) begin
        // Reset outputs to 0
        up = 1'b0; down = 1'b0; left = 1'b0; right = 1'b0;

        // Check scancode and set direction
        case (scancode)
            16'he06b: begin left = 1'b1; right = 1'b0; down = 1'b0; up = 1'b0; end  // Left
            16'he072: begin left = 1'b0; right = 1'b0; down = 1'b1; up = 1'b0; end  // Down
            16'he074: begin left = 1'b0; right = 1'b1; down = 1'b0; up = 1'b0; end  // Right
            16'he075: begin left = 1'b0; right = 1'b0; down = 1'b0; up = 1'b1; end  // Up
            default: begin left = 1'b0; right = 1'b0; down = 1'b0; up = 1'b0; end  // Default case
        endcase
    end

endmodule
