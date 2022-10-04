`timescale 1ns/1ns
`include "ques2b.v"

module ques2b_tb();
    reg a, b, c;
    wire f;
    ques2b test(a, b, c, f);
    initial begin
        $dumpfile("ques2b.vcd");
        $dumpvars(1,ques2b_tb);
        a=1'b0; b=1'b0; c=1'b0; #10;
        a=1'b0; b=1'b0; c=1'b1; #10;
        a=1'b0; b=1'b1; c=1'b0; #10;
        a=1'b0; b=1'b1; c=1'b1; #10;
        a=1'b1; b=1'b0; c=1'b0; #10;
        a=1'b1; b=1'b0; c=1'b1; #10;
        a=1'b1; b=1'b1; c=1'b0; #10;
        a=1'b1; b=1'b1; c=1'b1; #10;
        $display("Test completed");
    end
endmodule