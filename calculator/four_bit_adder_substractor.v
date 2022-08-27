module four_bit_adder_substractor(
	addend1,
	addend2,
	sign,
	out,
	carry_out
); // adder-substractor. the module performs both addition and substraction. control input "sign"
	// if "sign is 0 - sum 2 numbers, else perform 2's complement by inverting addend 2 and pasing 1 
	// to c_in of first FA

	input [3:0] addend1;
	input [3:0] addend2;
	input sign;
	
	output [3:0] out;
	output carry_out;
	
	wire [3:0] add2;
	wire sum1, sum2, sum3, sum4;
	wire c_out1, c_out2, c_out3;
	wire carry_out_wire;
	
	
	// invert (1's complement) the 2'nd addend
	assign add2 = addend2 ^ {4{sign}};
	
	full_adder fa1(.b1(addend1[0]), .b2(add2[0]), .c_in(sign),   .sum(sum1), .c_out(c_out1));
	full_adder fa2(.b1(addend1[1]), .b2(add2[1]), .c_in(c_out1), .sum(sum2), .c_out(c_out2));
	full_adder fa3(.b1(addend1[2]), .b2(add2[2]), .c_in(c_out2), .sum(sum3), .c_out(c_out3));
	full_adder fa4(.b1(addend1[3]), .b2(add2[3]), .c_in(c_out3), .sum(sum4), .c_out(carry_out_wire));
	
	assign out 	 = {sum4, sum3, sum2, sum1};
	
	assign carry_out = carry_out_wire;
	
endmodule 