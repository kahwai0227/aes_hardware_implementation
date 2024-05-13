module mixColumns (
    input [7:0] state_matrix [0:3][0:3], // Input state matrix
    output reg [7:0] mixed_matrix [0:3][0:3] // Output mixed matrix
);

// Define the fixed matrix for MixColumns
reg [7:0] mix_matrix [0:3][0:3] = '{
    '{8'h02, 8'h03, 8'h01, 8'h01},
    '{8'h01, 8'h02, 8'h03, 8'h01},
    '{8'h01, 8'h01, 8'h02, 8'h03},
    '{8'h03, 8'h01, 8'h01, 8'h02}
};

// Perform MixColumns operation
always @* begin
    for (int col = 0; col < 4; col = col + 1) begin
        for (int row = 0; row < 4; row = row + 1) begin
            mixed_matrix[row][col] = (state_matrix[0][col] & mix_matrix[row][0]) ^
                          (state_matrix[1][col] & mix_matrix[row][1]) ^
                          (state_matrix[2][col] & mix_matrix[row][2]) ^
                          (state_matrix[3][col] & mix_matrix[row][3]);
        end
    end
end

endmodule
