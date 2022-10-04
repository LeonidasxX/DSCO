module ques1b(a,b,c,d,f);
    input a,b,c,d;
    output f;
    wire [0:3]W;
    wire [1:0]S;
    wire g;
    assign W = {d, 1'b1, d, d};
    assign S = {b, c};
    mux4to1 m1(W,S,g);
    mux4to1 m2({g, 1'b0, 1'b0, 1'b0},{a, 1'b0},f);
endmodule

module mux4to1(W,S,f);
    input [0:3]W;
    input [1:0]S;
    output reg f;
    always@(W or S)
        f = S[1]?(S[0]?W[3]:W[2]):(S[0]?W[1]:W[0]);
endmodule