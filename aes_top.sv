module aes_top (
    input [127:0] plaintext,  // 128-bit input plaintext
    input [127:0] key,        // 128-bit encryption key
    output reg [127:0] ciphertext  // 128-bit output ciphertext
);

	reg [127:0] round_keys[0:10]; // 11 round keys for AES-128
	wire [7:0] state_matrix0 [0:3][0:3];
	wire [7:0] state_matrix1 [0:3][0:3];
	wire [7:0] state_matrix2 [0:3][0:3];
	wire [7:0] state_matrix3 [0:3][0:3];
	wire [7:0] state_matrix4 [0:3][0:3];
	wire [7:0] state_matrix5 [0:3][0:3];
	wire [7:0] state_matrix6 [0:3][0:3];
	wire [7:0] state_matrix7 [0:3][0:3];
	wire [7:0] state_matrix8 [0:3][0:3];
	wire [7:0] state_matrix9 [0:3][0:3];
	wire [7:0] state_matrix10 [0:3][0:3];

	// Instantiate the round key generator module
	roundKeyGenerator rkg(
		.original_key(key),     // Connect the original key input
		.round_keys(round_keys) // Connect the round keys output
	);
	
	pt2sm pt2sm0(.plaintext(plaintext), .state_matrix(state_matrix0));
	
	//initial round
	initialRound r0(.state_matrix(state_matrix0), .round_key(round_keys[0]), .updated_state_matrix(state_matrix1));
	
	//r1
	round r1(.state_matrix(state_matrix1), .round_key(round_keys[1]), .updated_state_matrix(state_matrix2));
	round r2(.state_matrix(state_matrix2), .round_key(round_keys[2]), .updated_state_matrix(state_matrix3));
	round r3(.state_matrix(state_matrix3), .round_key(round_keys[3]), .updated_state_matrix(state_matrix4));
	round r4(.state_matrix(state_matrix4), .round_key(round_keys[4]), .updated_state_matrix(state_matrix5));
	round r5(.state_matrix(state_matrix5), .round_key(round_keys[5]), .updated_state_matrix(state_matrix6));
	round r6(.state_matrix(state_matrix6), .round_key(round_keys[6]), .updated_state_matrix(state_matrix7));
	round r7(.state_matrix(state_matrix7), .round_key(round_keys[7]), .updated_state_matrix(state_matrix8));
	round r8(.state_matrix(state_matrix8), .round_key(round_keys[8]), .updated_state_matrix(state_matrix9));
	round r9(.state_matrix(state_matrix9), .round_key(round_keys[9]), .updated_state_matrix(state_matrix10));
	
	// Final Round: SubBytes, ShiftRows, and AddRoundKey
	finalRound finalRound_inst (
		.state_matrix(state_matrix10),
		.round_key(round_keys[10]),
		.ciphertext(ciphertext)
	);

 
endmodule
