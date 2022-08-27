module eight_bit_adder_substractor(
	addend1,
	addend2,
	sign,
	out,
	carry_out
); // same as 4-bit one. used in multiplier/division modules for inner calculations

	input [7:0] addend1;
	input [7:0] addend2;
	input sign;
	
	output [7:0] out;
	output carry_out;
	
	wire [7:0] add2;
	wire sum1, sum2, sum3, sum4, sum5, sum6, sum7, sum8;
	wire c_out1, c_out2, c_out3, c_out4, c_out5, c_out6, c_out7;
	wire carry_out_wire;
	
	assign add2 = addend2 ^ {8{sign}};
	
	full_adder fa1(.b1(addend1[0]), .b2(add2[0]), .c_in(sign),   .sum(sum1), .c_out(c_out1));
	full_adder fa2(.b1(addend1[1]), .b2(add2[1]), .c_in(c_out1), .sum(sum2), .c_out(c_out2));
	full_adder fa3(.b1(addend1[2]), .b2(add2[2]), .c_in(c_out2), .sum(sum3), .c_out(c_out3));
	full_adder fa4(.b1(addend1[3]), .b2(add2[3]), .c_in(c_out3), .sum(sum4), .c_out(c_out4));
	full_adder fa5(.b1(addend1[4]), .b2(add2[4]), .c_in(c_out4), .sum(sum5), .c_out(c_out5));
	full_adder fa6(.b1(addend1[5]), .b2(add2[5]), .c_in(c_out5), .sum(sum6), .c_out(c_out6));
	full_adder fa7(.b1(addend1[6]), .b2(add2[6]), .c_in(c_out6), .sum(sum7), .c_out(c_out7));
	full_adder fa8(.b1(addend1[7]), .b2(add2[7]), .c_in(c_out7), .sum(sum8), .c_out(carry_out_wire));
	
	assign out 	 = {sum8, sum7, sum6, sum5, sum4, sum3, sum2, sum1};
	
	assign carry_out = carry_out_wire;
	
endmodule 