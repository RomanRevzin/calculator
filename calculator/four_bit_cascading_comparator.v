module four_bit_cascading_comparator(
	op1,
	op2,
	greater,
	equal,
	less,
	prev_greater,
	prev_equal,
	prev_less
); // signed cascading comparator. same as regular, but allows cascading multiple module,
	// which allows to create wider comparators. first one has to be driven with gnd on
	// previous greater,less inputs and vcc on equal.

	input [3:0] op1;
	input [3:0] op2;
	
	input prev_greater;
	input prev_equal;
	input prev_less;
	
	output greater;
	output equal;
	output less;
	
	wire cur_greater;	
	wire cur_equal;
	wire cur_less;
	
	four_bit_comparator comp(.operand1(op1), .operand2(op2), .greater(cur_greater), .equal(cur_equal), .less(cur_less));
	
	// if previous greater - return 1, else check if previous equal and current is greater
	assign greater = (cur_greater & ~prev_less) |  prev_greater;
	// both previous and current have to be equal to return 1					  
	assign equal   = cur_equal   & prev_equal;	
	// if previous less - return 1, else check if previous equal and current is less
	assign less    = (cur_less & ~prev_greater)   |  prev_less;	

endmodule 	