module four_bit_comparator(
	operand1,
	operand2,
	greater,
	equal,
	less
); // signed comparator. 

	input [3:0] operand1;
	input [3:0] operand2;
	
	output greater;
	output equal;
	output less;
	
	wire [3:0] temp_xnor;
	wire [3:0] temp_A;
	wire [3:0] temp_B;
	
	// check for identic pairs
	assign temp_xnor =  operand1 ~^ operand2;
	// half xor
	assign temp_A 	 =   operand1 & ~operand2;
	// half xor
	assign temp_B 	 =  ~operand1 &  operand2;
	
	
	// check pairs. if negative and not equal - invert the output.
	assign greater = ((				      temp_A[3]) | 
						  (&temp_xnor[3]   & temp_A[2]) |
						  (&temp_xnor[3:2] & temp_A[1]) |
						  (&temp_xnor[3:1] & temp_A[0]))
							^	(temp_A[3] & ~&temp_xnor);
						  
	assign equal   = &temp_xnor;
	
	// check pairs. if negative and not equal - invert the output.
	assign less    = ((	   		      temp_B[3]) | 
						  (&temp_xnor[3]   & temp_B[2]) |
						  (&temp_xnor[3:2] & temp_B[1]) |	
						  (&temp_xnor[3:1] & temp_B[0]))
							^	(temp_B[3] & ~&temp_xnor);

endmodule 	