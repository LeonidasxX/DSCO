`timescale 1ns/1ns
`include "fullAdder.v"
//Name of the Verilog file
module fullAdder_tb();
reg x, y, z;
//Input
wire s, c;
//Output
fulladd ex1(x, y, z, s, c); //Instantiation of the module
initial
begin
$dumpfile("fullAdder_tb.vcd");
$dumpvars(0, fullAdder_tb);
x=1'b0; y=1'b0; z=1'b0;
#10;
x=1'b0; y=1'b0; z=1'b1;
#10;
x=1'b0; y=1'b1; z=1'b0;
#10;
x=1'b0; y=1'b1; z=1'b1;
#10;
x=1'b1; y=1'b0; z=1'b0;
#10;
x=1'b1; y=1'b0; z=1'b1;
#10;
x=1'b1; y=1'b1; z=1'b0;
#10;
x=1'b1; y=1'b1; z=1'b1;
#10;
$display("Test complete");
end
endmodule
