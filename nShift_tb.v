`timescale 1ns/1ns
`include "nShift.v"
module nShift_tb();
parameter n = 5;
reg in;
reg clk;
wire [n-1:0] out;
nShift test(in, clk,out);
initial begin
	$dumpfile("nShift.vcd");
	$dumpvars(0, nShift_tb);
	clk=0;
	forever #20 clk = ~clk;
end
initial begin 	
	in = 0; #30;
	in = 1; #20;
	in = 0; #20;
	in = 1; #20;	
	$display("Test complete");
end
endmodule