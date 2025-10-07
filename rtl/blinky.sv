
module blinky (
    input logic clk,
    input logic rst,        //active-high reset
    output logic led0
);

    //Constants & Registers
    localparam int TOGGLE_CYCLES = 100_000_000 - 1;

    logic [26:0] count = 27'd0;
    logic        led_q = 1'b0;

    always_ff @(posedge clk) begin 
        if (rst) begin
            count <= '0;      // reset entire 27-bit counter to 0      
            led_q <= 1'b0;    // force LED off      
        end else if (count == TOGGLE_CYCLES) begin
            count <= '0;      // restart 1-second timer
            led_q <= ~led_q;  // toggle LED each second
        end else begin
            count <= count + 1;
        end
    end
    
    assign led0 = led_q;
endmodule 


//on a rising edge of CLK, if RST is 1, then set COUNT to 0, and set LED_Q to 0.

//if RST is 0...

//set COUNT to 0, and flip LED_Q

// else, increment COUNT, LED_Q holds it value 

