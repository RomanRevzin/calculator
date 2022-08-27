module four_bit_multiplier(
	factor1,
	factor2,
	out
);
	// Input values of multiplier
	input [3:0] factor1;
	input [3:0] factor2;
	
	// Output values of multiplier
	output [7:0] out;
	
	// Used to pass inversed values of the factors
	wire [3:0] inv_fac1;
	wire [3:0] inv_fac2;
	
	// Used to pass inversed result
	wire [7:0] inv_res;
	
	// Used to pass 2's complement values of the factors
	wire [3:0] fix_factor1;
	wire [3:0] fix_factor2;
	
	// Used to pass the sign of the output result
	wire is_negative;
	
	// Used to pass intermediate values to adders
	wire [3:0] interim1 = fix_factor1 & {4{fix_factor2[0]}};
	wire [3:0] interim2 = fix_factor1 & {4{fix_factor2[1]}};
	wire [3:0] interim3 = fix_factor1 & {4{fix_factor2[2]}};
	wire [3:0] interim4 = fix_factor1 & {4{fix_factor2[3]}};
	
	// Output wires of adders
	wire [3:0] out1, out2, out3;
	wire c_out1, c_out2, c_out3;
	
	// Resulting vector
	wire [7:0] result;
	
	// Used to perform 2's complement of negative factors
	parameter ZERO_4 = 4'b0;
	parameter ZERO_8 = 8'b0;
	
	// Used for choosing an appropriate mode of four_bit_adder_substractor instances
	parameter SIGN_PLUS  = 1'b0;
	parameter SIGN_MINUS = 1'b1;
	
	
	
	// Performs multiplication 	
	four_bit_adder_substractor  add1(.addend1({1'b0, interim1[3:1]}),.addend2(interim2),
													.sign(SIGN_PLUS),.out(out1),.carry_out(c_out1));
	four_bit_adder_substractor  add2(.addend1({c_out1, out1[3:1]}),  .addend2(interim3),
													.sign(SIGN_PLUS),.out(out2),.carry_out(c_out2));
	four_bit_adder_substractor  add3(.addend1({c_out2, out2[3:1]}),  .addend2(interim4),
													.sign(SIGN_PLUS),.out(out3),.carry_out(c_out3));
	
	// Performs 2's complement of factors
	four_bit_adder_substractor  fac1(.addend1(ZERO_4),.addend2(factor1),.sign(SIGN_MINUS),.out(inv_fac1));
	four_bit_adder_substractor  fac2(.addend1(ZERO_4),.addend2(factor2),.sign(SIGN_MINUS),.out(inv_fac2));
	
	// Performs 2's complement of inversed result
	eight_bit_adder_substractor fac3(.addend1(ZERO_8),.addend2(result),.sign(SIGN_MINUS),.out(inv_res));
	
	
	
	// Choose actual factors for multiplication	
	assign fix_factor1 = factor1[3] ? inv_fac1 : factor1;
	assign fix_factor2 = factor2[3] ? inv_fac2 : factor2;
	
	// Sign of the output result
	assign is_negative = factor1[3] ^ factor2[3];
	
	// Result of calculations
	assign result = {c_out3, out3, out2[0], out1[0], interim1[0]};
	
	// Output result
	assign out = is_negative ? inv_res : result;
	
endmodule 