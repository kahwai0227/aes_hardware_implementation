module addRoundKey_tb;

reg [127:0] plaintext;
reg [7:0] state_matrix [0:3][0:3];
reg [127:0] round_key;
wire [7:0] updated_state_matrix [0:3][0:3];

pt2sm dut (
    .plaintext(plaintext),
    .state_matrix(state_matrix)
);

addRoundKey ark(.round_key(round_key), .state_matrix(state_matrix), .updated_state_matrix(updated_state_matrix));

initial begin
	$monitor($time, " state_matrix = %p, state_matrix = %p\n", state_matrix, updated_state_matrix);
end

initial begin
	#0 plaintext = 128'h00000000000000000000000000000000; round_key = 128'h62636363626363636263636362636363;
	#50 plaintext = 128'h62636363626363636263636362636363; round_key = 128'h9b9898c9f9fbfbaa9b9898c9f9fbfbaa;
	#100 plaintext = 128'hf9fbfbaa9b9898c9f9fbfbaa9b9898c9; round_key = 128'h90973450696ccffaf2f457330b0fac99;
	#150 plaintext = 128'h696ccffaf2f457330b0fac9990973450; round_key = 128'hee06da7b876a1581759e42b27e91ee2b;
end

endmodule