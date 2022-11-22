`timescale 1ns/1ns
`include "fiveBit.v"
module fiveBit_tb();
reg [4:0]i;
reg clock;
reg Resetn;
wire [4:0] out;
fiveBit test(i, out, clock, Resetn);
initial begin
	$dumpfile("fiveBit.vcd");
	$dumpvars(0, fiveBit_tb);
	clock=0;
	forever #20 clock = ~clock;
end
initial begin 	
	Resetn = 1; #10;
	Resetn = 0; #20;
	Resetn = 1; #20;
	i = 25; #40;
	i = 11; #40;
	Resetn = 1; #20;
	Resetn = 0; #10;
	Resetn = 1;
	i = 19; #40;	
	$display("Test complete");
end
endmodule