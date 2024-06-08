module roundKeyGenerator_tb;
reg [127:0] original_key;
wire [0:127] round_keys [0:10];

roundKeyGenerator rkg(original_key, round_keys);

initial begin
	$monitor($time, "round keys = %p", round_keys);
end

initial begin
original_key = 128'h90973450696ccffaf2f457330b0fac99; #100;
end

endmodule
