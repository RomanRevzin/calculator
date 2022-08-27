module half_adder(
	b1,
	b2,
	sum,
	c_out
); // one of the common logical circuits - halfadder
	
	input b1;
	input b2;
	
	output   sum;
	output c_out;
	
	assign sum 	 = b1 ^ b2;
	
	assign c_out = b1 & b2;

endmodule 