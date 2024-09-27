module Encoder_circuit (
    d, a 
);
input [7:0]d;
output [2:0]a;

xor(a[2], d[4], d[5], d[6], d[7]);
xor(a[1], d[2], d[3], d[6], d[7]);
xor(a[0], d[1], d[3], d[5], d[7]);
    
endmodule