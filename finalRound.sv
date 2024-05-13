module finalRound(
	input [7:0] state_matrix [0:3][0:3],
	input [7:0] round_key,
	output reg [127:0] ciphertext
);

wire [127:0] stage0[0:3][0:3];
wire [127:0] stage1[0:3][0:3];
wire [127:0] stage2[0:3][0:3];

subBytes sb(.state_matrix(state_matrix), .substituted_matrix(stage0));
shiftRows sr(.state_matrix(stage0), .shifted_matrix(stage1));
addRoundKey ark(.state_matrix(stage1), .round_key(round_key), .updated_state_matrix(stage2));

always @* begin
// Flatten the state_matrix into a 1D array
reg [127:0] flat_state_matrix;
	integer i, j;
	for (i = 0; i < 4; i = i + 1) begin
		for (j = 0; j < 4; j = j + 1) begin
			flat_state_matrix[i*32 +: 32] = state_matrix[j][i];
		end
	end

	// Assign flat_state_matrix to ciphertext
	ciphertext = flat_state_matrix;
 end
 
endmodule
