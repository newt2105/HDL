module prob1 (
    F,a,b,c,d
);
    input a,b,c,d;
    output F;

    wire a1,a2;
    assign a1 = (~b) & (~d);
    assign a2 = (~b) & c;
    assign F = a | a1 | a2;
    
endmodule