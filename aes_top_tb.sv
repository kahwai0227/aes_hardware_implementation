module aes_top_tb;

reg start, reset, clk;
reg [127:0] plaintext;
reg [127:0] key;
wire [127:0] ciphertext;

aes_top dut(start, reset, clk, plaintext, key, ciphertext);

initial begin
	$monitor($time, " key = %h , cippher_text = %p", key, ciphertext);
end

always begin
	#50 clk = ~clk; 
end

initial begin
	#0 reset = 1; key = 128'h00000000000000000000000000000000; plaintext = 128'h00000000000000000000000000000000; 
	start = 0; clk = 0;
	#100 reset = 0; 
	#100 start = 1;
	#100 start = 0;
	#100 plaintext = 128'h6BC1BEE22E409F96E93D7E117393172A;
	#100 start = 1;
	#100 start = 0;
	#100 plaintext = 128'hAE2D8A571E03AC9C9EB76FAC45AF8E51;
	#100 start = 1;
	#100 start = 0;
	#150 plaintext = 128'h00112233445566778899AABBCCDDEEF;
	#100 start = 1;
	#100 start = 0;
	$stop;
end

endmodule

