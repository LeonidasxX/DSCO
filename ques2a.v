module ques2a(a,b,c,f);
    input a,b,c;
    output f;
    wire [0:1]W1;
    wire [0:1]W2;
    wire g1;
    wire g2;
    assign W1 = {1'b0, c};
    assign W2 = {c, 1'b1};
    mux2to1 m1(W1,b, g1);
    mux2to1 m2(W2,b, g2);
    mux2to1 m3({g1,g2},a,f);
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