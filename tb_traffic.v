`timescale 1ns/1ps

module tb_traffic;
    reg clk;
    reg reset;
    wire [1:0] NS_light, EW_light;

    traffic_light_controller uut (
        .clk(clk),
        .reset(reset),
        .NS_light(NS_light),
        .EW_light(EW_light)
    );

    // Clock: period 10 ns
    always #5 clk = ~clk;

    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0, tb_traffic);
        $monitor("Time=%0t ns | reset=%b | NS=%b | EW=%b", $time, reset, NS_light, EW_light);

        clk = 0;
        reset = 1;
        #12 reset = 0;

        #200 $finish;
    end
endmodule
