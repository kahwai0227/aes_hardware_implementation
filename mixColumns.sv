module mixColumns (
    input [7:0] state_matrix [0:3][0:3], // Input state matrix
    output reg [7:0] mixed_matrix [0:3][0:3] // Output mixed matrix
);

function [7:0] mb2; //multiply by 2
	input [7:0] x;
	begin 
			/* multiplication by 2 is shifting on bit to the left, and if the original 8 bits had a 1 @ MSB,
			xor the result with {1b}*/
			if(x[7] == 1) mb2 = ((x << 1) ^ 8'h1b);
			else mb2 = x << 1; 
	end 	
endfunction


/* 
	multiplication by 3 is done by:
		multiplication by {02} xor(the original x)
		so that 2+1=3. where xor is the addition of elements in finite fields
*/
function [7:0] mb3; //multiply by 3
	input [7:0] x;
	begin 
			mb3 = mb2(x) ^ x;
	end 
endfunction

genvar i;
generate
	for(i=0;i<4;i=i+1) begin : m_col
		assign mixed_matrix[0][i] = mb2(state_matrix[0][i]) ^ mb3(state_matrix[1][i]) ^ state_matrix[2][i] ^ state_matrix[3][i];
		assign mixed_matrix[1][i] = state_matrix[0][i] ^ mb2(state_matrix[1][i]) ^ mb3(state_matrix[2][i]) ^ state_matrix[3][i];
		assign mixed_matrix[2][i] = state_matrix[0][i] ^ state_matrix[1][i] ^ mb2(state_matrix[2][i]) ^ mb3(state_matrix[3][i]);
		assign mixed_matrix[3][i] = mb3(state_matrix[0][i]) ^ state_matrix[1][i] ^ state_matrix[2][i] ^ mb2(state_matrix[3][i]);
	end
endgenerate
endmodule
