module initialRound(
	input [7:0] state_matrix [0:3][0:3],
	input [127:0] round_key,
	output reg [7:0] updated_state_matrix [0:3][0:3]
);

addRoundKey ark(.state_matrix(state_matrix), .round_key(round_key), .updated_state_matrix(updated_state_matrix));

endmodule
