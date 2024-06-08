// Filename: lfsr_random_128bit.v
module keyGenerator (
    input wire clk,            // Clock input
    input wire reset,          // Reset input
	 input wire ld,
    output reg [127:0] rand_num    // 128-bit random output
);

    reg [127:0] lfsr;          // 128-bit LFSR register

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            // Initial seed (non-zero). Choose a non-zero value.
            lfsr <= 128'h1;
        end else begin
            // LFSR logic: feedback taps at 128, 127, 126, and 121
            lfsr <= {lfsr[126:0], lfsr[127] ^ lfsr[126] ^ lfsr[125] ^ lfsr[120]};
        end
    end

    // Output the LFSR value as the random number
    always @(posedge clk) begin
		if(ld)
			rand_num <= lfsr;
		else if(reset)
			rand_num <= 0;
		else 
			rand_num <= rand_num;
	end

endmodule
