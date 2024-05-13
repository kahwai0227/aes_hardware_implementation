module round(
	input [7:0] state_matrix [0:3][0:3],
	input [127:0] round_key,
	output reg [7:0] updated_state_matrix [0:3][0:3]
);

wire [7:0] stage0[0:3][0:3];
wire [7:0] stage1[0:3][0:3];
wire [7:0] stage2[0:3][0:3];

subBytes sb(.state_matrix(state_matrix), .substituted_matrix(stage0));
shiftRows sr(.state_matrix(stage0), .shifted_matrix(stage1));
mixColumns mc(.state_matrix(stage1), .mixed_matrix(stage2));
addRoundKey ark(.state_matrix(stage2), .round_key(round_key), .updated_state_matrix(updated_state_matrix));

endmodule
