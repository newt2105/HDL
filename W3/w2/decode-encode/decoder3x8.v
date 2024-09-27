module Decoder (
    A, D
);
input [2:0]A;
output [7:0]D;
wire [2:0]An;

not(An[2], A[2]);
not(An[1], A[1]);
not(An[0], A[0]);

and(D[7], A[2:0]);
and(D[6], A[2], A[1], An[0]);
and(D[5], A[2], An[1], A[0]);
and(D[4], A[2], An[1], An[0]);
and(D[3], An[2], A[1], A[0]);
and(D[2], An[2], A[1], An[0]);
and(D[1], An[2], An[1], A[0]);
and(D[0], An[2:0]);
    
endmodule
