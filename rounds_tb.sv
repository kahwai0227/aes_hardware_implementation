module rounds_tb;

reg [7:0] state_matrix [0:3][0:3];
reg [127:0] round_key;
//wire [127:0] cipher;
wire [7:0] updated_state_matrix [0:3][0:3];

round dut(state_matrix, round_key, updated_state_matrix);

initial begin
	$monitor($time, " key = %h , out = %p", round_key, updated_state_matrix);
end

initial begin
	integer i, j;
	round_key = 128'h62636363626363636263636362636363;
	for(i = 0; i < 4; i = i + 1) begin
		for(j = 0; j < 4; j = j + 1) begin
			state_matrix[i][j] = i*j;
		end
	end
	#100;
end
endmodule
