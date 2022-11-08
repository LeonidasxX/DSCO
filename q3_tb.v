`timescale 1ns/1ns
`include "q3.v"
//Name of the Verilog file
module q3_tb();
reg [3:0]x, y;
wire[3:0]s;
//Output
radd ex1(x, y, s); //Instantiation of the module
initial
begin
$dumpfile("q3.vcd");
$dumpvars(0, q3_tb);
x = 4'b0010; y = 4'b1100; #10;
x = 4'b0110; y = 4'b1001; #10;
x = 4'b0011; y = 4'b1001; #10;
x = 4'b0101; y = 4'b0101; #10;
$display("Test complete");
end
endmodule
