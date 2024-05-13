module roundKeyGenerator (
    input [127:0] original_key, // 128-bit original key
    output reg [127:0] round_keys [0:10] // Output round keys (11 round keys for AES-128)
);

// Constants
localparam ROUNDS = 10; // Number of rounds in AES-128
localparam KEY_BYTES = 16; // Number of bytes in the key
localparam WORD_BYTES = 4; // Number of bytes in a word

// Perform key expansion to generate round keys
always @* begin
    round_keys[0] = original_key; // First round key is the original key

    // Perform key expansion for subsequent round keys
    for (int round = 1; round <= ROUNDS; round = round + 1) begin
        // Extract the last word of the previous round key
        reg [31:0] temp;
        temp = round_keys[round - 1][127:96];

        // Rotate word left by 1 byte
        temp = {temp[23:0], temp[31:24]};

        // Perform byte substitution using S-box
        temp = {temp[31:24], temp[23:16], temp[15:8], temp[7:0]};

        // XOR with round constant
        case (round)
            1: temp = {temp, 8'h01, 8'h00, 8'h00, 8'h00};
            2: temp = {temp, 8'h02, 8'h00, 8'h00, 8'h00};
            3: temp = {temp, 8'h04, 8'h00, 8'h00, 8'h00};
            4: temp = {temp, 8'h08, 8'h00, 8'h00, 8'h00};
            5: temp = {temp, 8'h10, 8'h00, 8'h00, 8'h00};
            6: temp = {temp, 8'h20, 8'h00, 8'h00, 8'h00};
            7: temp = {temp, 8'h40, 8'h00, 8'h00, 8'h00};
            8: temp = {temp, 8'h80, 8'h00, 8'h00, 8'h00};
            9: temp = {temp, 8'h1b, 8'h00, 8'h00, 8'h00};
            10: temp = {temp, 8'h36, 8'h00, 8'h00, 8'h00};
        endcase

        // XOR with first word of previous round key
        temp = temp ^ round_keys[round - 1][95:64];

        // XOR with second word of previous round key
        temp = temp ^ round_keys[round - 1][63:32];

        // XOR with third word of previous round key
        temp = temp ^ round_keys[round - 1][31:0];

        // Concatenate words to form round key
        round_keys[round] = {round_keys[round - 1][127:96], temp};
    end
end

endmodule
