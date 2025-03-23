module top_module (
    input ring,          // Input signal indicating an incoming call (1: Ring, 0: No ring)
    input vibrate_mode,  // Input signal indicating vibrate mode (1: Vibrate on, 0: Vibrate off)
    output ringer,       // Output signal to enable sound (1: Sound on, 0: Sound off)
    output motor         // Output signal to enable vibration (1: Vibrate, 0: No vibration)
);
    // If vibrate mode is on, disable the ringer; otherwise, enable it when 'ring' is high
    assign ringer = (vibrate_mode == 1) ? 1'b0 : ((ring == 1) ? 1'b1 : 1'b0); 
    
    // Enable motor (vibration) only when both 'ring' and 'vibrate_mode' are high
    assign motor = (ring == 1 && vibrate_mode == 1) ? 1'b1 : 1'b0;  

endmodule
