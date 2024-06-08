module addRoundKey (
    input [7:0] state_matrix [0:3][0:3], // Input state matrix
    input [127:0] round_key, // Input round key (128 bits)
    output reg [7:0] updated_state_matrix [0:3][0:3] // Output updated state matrix
);

// Perform AddRoundKey operation
always @* begin
    for (int col = 0; col < 4; col = col + 1) begin
        for (int row = 0; row < 4; row = row + 1) begin
            updated_state_matrix[row][col] = state_matrix[row][col] ^ round_key[(col*4 + row)*8 +: 8];
        end
    end
end

endmodule
