`timescale 1ns/1ns
`include "ques3.v"

module ques3_tb();
    reg a, b, c;
    wire f;
    ques3 test(a, b, c, s, f);
    initial begin
        $dumpfile("ques3.vcd");
        $dumpvars(1,ques3_tb);
        c=1'b0; a=1'b0; b=1'b0; #10;
        c=1'b0; a=1'b0; b=1'b1; #10;
        c=1'b0; a=1'b1; b=1'b0; #10;
        c=1'b0; a=1'b1; b=1'b1; #10;
        c=1'b1; a=1'b0; b=1'b0; #10;
        c=1'b1; a=1'b0; b=1'b1; #10;
        c=1'b1; a=1'b1; b=1'b0; #10;
        c=1'b1; a=1'b1; b=1'b1; #10;
        $display("Test completed");
    end
endmodule