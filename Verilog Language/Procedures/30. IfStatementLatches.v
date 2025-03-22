module top_module (
    input      cpu_overheated,      // Input indicating if the CPU is overheating
    output reg shut_off_computer,   // Output to shut down the computer
    input      arrived,             // Input indicating if the destination is reached
    input      gas_tank_empty,      // Input indicating if the gas tank is empty
    output reg keep_driving         // Output to determine if driving should continue
); 

    // Logic to shut down the computer if CPU overheats
    always @(*) begin
        if (cpu_overheated)
            shut_off_computer = 1;  // Turn off the computer if overheating
        else 
            shut_off_computer = 0;  // Keep the computer running otherwise
    end

    // Logic to determine whether to keep driving
    always @(*) begin
        if (~arrived) // If the destination is not reached
            keep_driving = ~gas_tank_empty; // Drive if gas is available
        else 
            keep_driving = 0; // Stop driving if arrived
    end

endmodule
