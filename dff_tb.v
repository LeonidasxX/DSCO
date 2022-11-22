`timescale 1ns/1ns
`include "dff.v"
module dff_tb();
    reg D,clock, Resetn;
    wire Q;
    dff f1(D, clock, Resetn, Q);
    initial
    begin
        clock = 0;
        forever #10 clock = ~clock;
    end
    initial
    begin
        $dumpfile("dff_tb.vcd");
        $dumpvars(0, dff_tb);
        Resetn = 1; D = 0; #10;
        Resetn = 0; 
        D = 1; #10;
        D = 0; #10;
        D = 1;
        $display("Test complete");
    end
endmodule