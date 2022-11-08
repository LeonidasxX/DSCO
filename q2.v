module addSub (x, y, cin, s, cout);
input[3:0]x, y;
input cin;
output [3:0]s;
output cout;
wire c1, c2, c3, x0, x1, x2, x3;

xor (x0, cin, y[0]);
fulladd f1(x[0], x0, cin, s[0], c1);
xor (x1, cin, y[1]);
fulladd f2(x[1], x1, c1, s[1], c2);
xor (x2, cin, y[2]);
fulladd f3(x[2], x2, c2, s[2], c3);
xor (x3, cin, y[3]);
fulladd f4(x[3], x3, c3, s[3], cout);
endmodule

module fulladd (Cin, x, y, s, Cout);
    input Cin, x, y;
    output s, Cout;
    assign s = x ^ y ^ Cin;
    assign Cout = (x & y) | (x & Cin) | (y & Cin);
endmodule