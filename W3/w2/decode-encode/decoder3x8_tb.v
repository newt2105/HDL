module tb_Decoder();
reg [2:0]A;
wire [7:0]D;

Decoder F(A, D);
initial begin
    $monitor ("Time:%0t | D = %b | A = %b", $time, D, A);

    A = 3'b000; #10;
    A = 3'b001; #10;
    A = 3'b010; #10;
    A = 3'b011; #10;
    A = 3'b100; #10;
    A = 3'b101; #10;
    A = 3'b110; #10;
    A = 3'b111; #10;
    $finish;
end

endmodule