module AES_CU (
	input start, clk, rst,
	output reg genk, enc,
	output reg [1:0] y);
	
	reg [1:0] Y;
	parameter [1:0] S0=2'b00, S1=2'b01,S2=2'b10;
	
	//NS & Output:
	always@(y,start)
	case(y)
		S0:	begin
					genk = 0;
					enc = 0;
					Y = start? S1:S0;
				end	
		S1:	begin
					genk = 1;
					Y = S2;
				end
		S2:	begin
					genk = 0;
					enc = 1;
					Y = start? S1:S2;
				end
	endcase
	
	//state register
	always@(negedge rst, posedge clk)
	if(!rst) y <= S0;
	else y <= Y;

endmodule