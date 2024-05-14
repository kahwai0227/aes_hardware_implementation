module mul #(parameter width = 8)(
	input [width - 1:0] a,
	input [1:0] b,
	output reg [width + 1: 0] o
);
always @* begin
	case(b)
	0: o = 0;
	1: o = a;
	2: o = (a[7])? ((a << 1) ^ 8'h1b) : (a << 1);
	3: o = (a << 1) ^ a;
	default: o = 0;
	endcase
end

endmodule

	

