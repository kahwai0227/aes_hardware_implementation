module shiftRows (
    input [7:0] state_matrix [0:3][0:3], // Input state matrix
    output reg [7:0] shifted_matrix [0:3][0:3] // Output shifted state matrix
);

// Perform ShiftRows operation
always @* begin
    // First row remains unchanged
    shifted_matrix[0][0] = state_matrix[0][0];
    shifted_matrix[0][1] = state_matrix[0][1];
    shifted_matrix[0][2] = state_matrix[0][2];
    shifted_matrix[0][3] = state_matrix[0][3];

    // Second row shifts left by 1 byte
    shifted_matrix[1][0] = state_matrix[1][1];
    shifted_matrix[1][1] = state_matrix[1][2];
    shifted_matrix[1][2] = state_matrix[1][3];
    shifted_matrix[1][3] = state_matrix[1][0];

    // Third row shifts left by 2 bytes
    shifted_matrix[2][0] = state_matrix[2][2];
    shifted_matrix[2][1] = state_matrix[2][3];
    shifted_matrix[2][2] = state_matrix[2][0];
    shifted_matrix[2][3] = state_matrix[2][1];

    // Fourth row shifts left by 3 bytes
    shifted_matrix[3][0] = state_matrix[3][3];
    shifted_matrix[3][1] = state_matrix[3][0];
    shifted_matrix[3][2] = state_matrix[3][1];
    shifted_matrix[3][3] = state_matrix[3][2];
end

endmodule
