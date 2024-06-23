module aes_cudu_tb;

reg start, clk, rst;
reg [127:0] plaintext;
wire [127:0] cipher;

aes_cudu dut(start, clk, rst, plaintext, cipher);


initial begin
	$monitor($time, "cippher_text = %p", cipher);
end

always begin
	#50 clk = ~clk; 
end

initial begin
	#0 rst = 0; plaintext = 128'h00000000000000000000000000000000; 
	start = 0; clk = 0;
	#100 rst = 1; 
	#300 start = 1;
	#100 start = 0;
	#100 plaintext = 128'h6BC1BEE22E409F96E93D7E117393172A;
	#400 start = 1;
	#100 start = 0;
	#100 plaintext = 128'hAE2D8A571E03AC9C9EB76FAC45AF8E51;
	#300 start = 1;
	#100 start = 0;
	#150 plaintext = 128'h00112233445566778899AABBCCDDEEF;
	#200 start = 1;
	#100 start = 0;
	$stop;
end

endmodule
