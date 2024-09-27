module tb_encoder();
reg [7:0]d;
wire [2:0]a;

Encoder_circuit F(d, a);
initial begin
    $monitor ("Time:%0t | d = %b | a = %b", $time, d, a);

        d = 8'b00000001; #10;  
        d = 8'b00000010; #10;  
        d = 8'b00000100; #10; 
        d = 8'b00010000; #10;  
        d = 8'b00100000; #10;  
        d = 8'b01000000; #10;  
        d = 8'b10000000; #10;  

        d = 8'b00000000; #10;
        d = 8'b111111111; #10;
        $finish;
end
endmodule