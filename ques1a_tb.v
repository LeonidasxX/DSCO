`timescale 1ns/1ns
`include "ques1a.v"

module ques1a_tb();
    reg a, b, c, d;
    wire f;
    ques1a test(a, b, c, d, f);
    initial begin
        $dumpfile("ques1a.vcd");
        $dumpvars(1,ques1a_tb);
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