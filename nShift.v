module nShift(in, clk, out);
    parameter n = 5;
    input in, clk;
    output [n-1:0] out;
    reg [n-1:0] out;
    integer i;
    always @ (posedge clk)
    begin
        for (i = 0; i<=n-1; i=i+1) begin
            out[i] = out[i+1];
            out[n-1] <= in;
        end
    end
endmodule