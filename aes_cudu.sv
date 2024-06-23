module aes_cudu(
	input start, clk, rst,
	input [127:0] plaintext,
	output [127:0] cipher
);

wire genk, enc;
wire [127:0] key;

AES_CU cu(start, clk, rst, genk, enc);
keyGenerator kg(clk, rst, genk, key);
aes_top du(enc, rst, clk, plaintext, key, cipher);

endmodule
