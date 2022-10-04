module ques2b(a,b,c,f);
    input a,b,c;
    output f;
    mux2to1 m2({b&c, b|c},a, f);
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