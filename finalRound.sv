module finalRound(
	input [7:0] state_matrix [0:3][0:3],
	input [127:0] round_key,
	output reg [127:0] ciphertext
);

wire [7:0] stage0[0:3][0:3];
wire [7:0] stage1[0:3][0:3];
wire [7:0] stage2[0:3][0:3];

subBytes sb(.state_matrix(state_matrix), .substituted_matrix(stage0));
shiftRows sr(.state_matrix(stage0), .shifted_matrix(stage1));
addRoundKey ark(.state_matrix(stage1), .round_key(round_key), .updated_state_matrix(stage2));

always @* begin
	ciphertext = {stage2[0][0], stage2[1][0], stage2[2][0], stage2[3][0],
                 stage2[0][1], stage2[1][1], stage2[2][1], stage2[3][1],
                 stage2[0][2], stage2[1][2], stage2[2][2], stage2[3][2],
                 stage2[0][3], stage2[1][3], stage2[2][3], stage2[3][3]};
 end
 
endmodule
