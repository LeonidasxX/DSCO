`timescale 1ns/1ns
`include "ques1b.v"

module ques1b_tb();
    reg a, b, c, d;
    wire f;
    ques1b test(a, b, c, d, f);
    initial begin
        $dumpfile("ques1b.vcd");
        $dumpvars(1,ques1b_tb);
        a=1'b0; b=1'b0; c=1'b0; d=1'b0; #10;
        a=1'b0; b=1'b0; c=1'b0; d=1'b1; #10;
        a=1'b0; b=1'b0; c=1'b1; d=1'b0; #10;
        a=1'b0; b=1'b0; c=1'b1; d=1'b1; #10;
        a=1'b0; b=1'b1; c=1'b0; d=1'b0; #10;
        a=1'b0; b=1'b1; c=1'b0; d=1'b1; #10;
        a=1'b0; b=1'b1; c=1'b1; d=1'b0; #10;
        a=1'b0; b=1'b1; c=1'b1; d=1'b1; #10;
        a=1'b1; b=1'b0; c=1'b0; d=1'b0; #10;
        a=1'b1; b=1'b0; c=1'b0; d=1'b1; #10;
        a=1'b1; b=1'b0; c=1'b1; d=1'b0; #10;
        a=1'b1; b=1'b0; c=1'b1; d=1'b1; #10;
        a=1'b1; b=1'b1; c=1'b0; d=1'b0; #10;
        a=1'b1; b=1'b1; c=1'b0; d=1'b1; #10;
        a=1'b1; b=1'b1; c=1'b1; d=1'b0; #10;
        a=1'b1; b=1'b1; c=1'b1; d=1'b1; #10;
        $display("Test completed");
    end
endmodule