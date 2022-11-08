module radd(x, y, s);
    input [3:0]x, y;
    output [3:0]s;
    wire [4:0]c;
    fulladd f1(x[0], y[0], 1'b0, s[0], c[1]);
    fulladd f2(x[1], y[1], c[1], s[1], c[2]);
    fulladd f3(x[2], y[2], c[2], s[2], c[3]);
    fulladd f4(x[3], y[3], c[3], s[3], c[4]);
endmodule

module fulladd(x,y,z,s,c);
    input x, y, z;
    output reg s, c;
    always @(x,y,z) begin
        s = x^y^z;
        c = x&y | y&z | z&x;
    end
endmodule