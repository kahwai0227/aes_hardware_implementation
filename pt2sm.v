module pt2sm (
    input [127:0] plaintext, // 128-bit input plaintext
    output reg [7:0] state_matrix [0:3][0:3] // 4x4 state matrix
);

always @* begin
    for (col = 0; col < 4; col = col + 1) begin
        for (row = 0; row < 4; row = row + 1) begin
            state_matrix[row][col] = plaintext[(col*4 + row)*8 +: 8];
        end
    end
end

endmodule
