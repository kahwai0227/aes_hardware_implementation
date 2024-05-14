module mixColumnOperation(
	input [7:0] state_column [0:3],
	input [1:0] row,
	output reg [7:0] result
);

reg [7:0] mix_matrix [0:3][0:3] = '{
    '{8'h02, 8'h03, 8'h01, 8'h01},
    '{8'h01, 8'h02, 8'h03, 8'h01},
    '{8'h01, 8'h01, 8'h02, 8'h03},
    '{8'h03, 8'h01, 8'h01, 8'h02}
};

wire [7:0] temp [0:3];

mul m0(.a(state_column[0]), .b(mix_matrix[row][0]), .o(temp[0]));
mul m1(.a(state_column[1]), .b(mix_matrix[row][1]), .o(temp[1]));
mul m2(.a(state_column[2]), .b(mix_matrix[row][2]), .o(temp[2]));
mul m3(.a(state_column[3]), .b(mix_matrix[row][3]), .o(temp[3]));

assign result = temp[0] ^ temp[1] ^ temp[2] ^ temp[3];

endmodule

