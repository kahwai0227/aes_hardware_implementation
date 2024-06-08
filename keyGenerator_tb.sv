module keyGenerator_tb;
reg clk;            // Clock input
reg reset;          // Reset input
reg ld;
wire [127:0] rand_num;    // 128-bit random output

keyGenerator kg(clk, reset, ld, rand_num);

always begin
	# 50 clk = ~clk; // Toggle clock signal every half period
end

initial begin
 $monitor($time,"rand_num = %h", rand_num);
end

initial begin
	#0 reset = 1; clk = 0; ld = 0;
	#100 reset = 0;
	#1000 ld = 1;
	#100 ld = 0;
	#1000 ld = 1;
	#100 ld = 0;
	#100 $stop;
end
endmodule

