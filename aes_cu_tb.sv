module aes_cu_tb;

reg start, clk, rst;
wire genk, enc;

AES_CU dut(start, clk, rst, genk, enc);

always begin
	#50 clk = ~clk;
end

initial begin
	#0 clk = 0; start = 0; rst = 0;
	#100 start = 1; rst = 1;
	#100 start = 0;
	#300 start = 1;
	#100 start = 0;
	#300 $stop;
end
endmodule 