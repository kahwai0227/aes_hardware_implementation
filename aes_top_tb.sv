module aes_top_tb;

reg start;
reg [127:0] plaintext;
reg [127:0] key;
wire [127:0] ciphertext;

aes_top dut(plaintext, key, ciphertext);

initial begin
	$monitor($time, " key = %h , cippher_text = %p", key, ciphertext);
end

initial begin
	#0 key = 128'h00000000000000000000000000000000; plaintext = 128'h00000000000000000000000000000000;
	#50 plaintext = 128'h6BC1BEE22E409F96E93D7E117393172A;
	#100 plaintext = 128'hAE2D8A571E03AC9C9EB76FAC45AF8E51;
	#150 plaintext = 128'h00112233445566778899AABBCCDDEEF;
end

endmodule

