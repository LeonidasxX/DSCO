`timescale 1ns/1ns
`include "q2.v"
//Name of the Verilog file
module q2_tb();
reg [3:0]x; 
reg [3:0]y;
reg cin;
//Input
wire [3:0]s;
wire cout;
reg [8:0] i;
//Output
addSub ex1(x, y, cin, s, cout); //Instantiation of the module
initial
begin
$dumpfile("q2_tb.vcd");
$dumpvars(0, q2_tb);
for (i = 0; i<8; i = i+1) begin
    x[3:0] = i[8:5]; y = i[4:1]; cin = i[0]; #10;
end
$display("Test complete");
end
endmodule
