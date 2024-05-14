module shiftrow_tb;

reg [127:0] plaintext;
reg [7:0] state_matrix [0:3][0:3];
wire [7:0] shifted_matrix [0:3][0:3];

pt2sm dut (
    .plaintext(plaintext),
    .state_matrix(state_matrix)
);
shiftRows sr(.state_matrix(state_matrix), .shifted_matrix(shifted_matrix));

initial begin
	$monitor($time, " state_matrix = %p, state_matrix = %p\n", state_matrix, shifted_matrix);
end

initial begin
	#0 plaintext = 128'h00000000000000000000000000000000;
	#50 plaintext = 128'h6BC1BEE22E409F96E93D7E117393172A;
	#100 plaintext = 128'hAE2D8A571E03AC9C9EB76FAC45AF8E51;
	#150 plaintext = 128'h00112233445566778899AABBCCDDEEF;
end

endmodule