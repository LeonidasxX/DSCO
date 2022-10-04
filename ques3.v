module ques3(a,b,c,s,f);
    input a,b,c;
    output f,s;
    wire [0:1]W1;
    wire [0:1]W2;
    wire [0:1]W3;
    wire g1;
    wire g2;
    wire g3;
    assign W1 = {a, ~a};
    assign W2 = {1'b0, a};
    assign W3 = {a, 1'b1};
    mux2to1 m1(W1,b, g1);
    mux2to1 m2({g1, ~g1},c, s);
    mux2to1 m3(W2,b, g2);
    mux2to1 m4(W3,b,g3);
    mux2to1 m5({g2,g3},c,f);
endmodule

module mux2to1(W,S,f);
    input [0:1]W;
    input S;
    output reg f;
    always@(W or S)
        if(S==0)
            f = W[0];
        else 
            f = W[1];
endmodule