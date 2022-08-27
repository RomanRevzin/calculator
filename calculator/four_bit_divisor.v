module four_bit_divisor(
	dividend,
	divisor,
	quotient,
	remainder,
	zero_div
);
	// Input values of divisor
	input [3:0] dividend;
	input [3:0] divisor;
	
	// Output values of divisor
	output [7:0] quotient;
	output [7:0] remainder;
	output 		 zero_div;
	
	// Used to pass intermediate values to adders
	wire [3:0] interim1;
	wire [3:0] interim2;
	
	// Used to pass inversed values of the dividend/divisor
	wire [3:0] inv_dividend;
	wire [3:0] inv_divisor;
	
	// Used to pass inversed result values
	wire [7:0] inv_quotient;
	wire [7:0] inv_remainder;
	
	// Used to pass the sign of the output result
	wire is_negative;
	
	// Output wires of adders
	wire [3:0] out1, out2, out3, out4;
	wire c_out1, c_out2, c_out3, c_out4;
	
	// Output wires of muxs
	wire [2:0] mux1, mux2, mux3;
	wire [3:0] mux4;
	
	// Wires for final calculations
	wire [7:0] quo_res;
	wire [7:0] rem_res;
	
	// Used to perform 2's complement of negative factors
	parameter ZERO_4 = 4'b0;
	parameter ZERO_8 = 8'b0;
	
	// Used for choosing an appropriate mode of four_bit_adder_substractor instances
	parameter SIGN_PLUS  = 1'b0;
	parameter SIGN_MINUS = 1'b1;
	
	
	
	// Performs iterative substraction method 	
	four_bit_adder_substractor add1(.addend1({3'b0, interim1[3]}), .addend2(interim2),
											.sign(SIGN_MINUS), .out(out1), .carry_out(c_out1));
	four_bit_adder_substractor add2(.addend1({mux1 ,interim1[2]}), .addend2(interim2),
											.sign(SIGN_MINUS), .out(out2), .carry_out(c_out2));
	four_bit_adder_substractor add3(.addend1({mux2 ,interim1[1]}), .addend2(interim2),
											.sign(SIGN_MINUS), .out(out3), .carry_out(c_out3));
	four_bit_adder_substractor add4(.addend1({mux3 ,interim1[0]}), .addend2(interim2),
											.sign(SIGN_MINUS), .out(out4), .carry_out(c_out4));
	
	// Performs 2's complement of dividend/divisor
	four_bit_adder_substractor divd(.addend1(ZERO_4), .addend2(dividend), .sign(SIGN_MINUS), .out(inv_dividend));
	four_bit_adder_substractor divr(.addend1(ZERO_4), .addend2(divisor),  .sign(SIGN_MINUS), .out(inv_divisor));
	
	// Performs 2's complement of inversed result
	eight_bit_adder_substractor quo(.addend1(ZERO_8), .addend2(quo_res), .sign(SIGN_MINUS), .out(inv_quotient));
	eight_bit_adder_substractor rem(.addend1(ZERO_8), .addend2(rem_res), .sign(SIGN_MINUS), .out(inv_remainder));
	
	
	assign interim1 = dividend[3] ? inv_dividend : dividend;
	assign interim2 = divisor[3]  ? inv_divisor  : divisor;
	
	
	assign mux1 = (~c_out1 ? {	2'b0    , interim1[3]} : out1[2:0]) ;
	assign mux2 = (~c_out2 ? {mux1[1:0], interim1[2]} : out2[2:0]) ;
	assign mux3 = (~c_out3 ? {mux2[1:0], interim1[1]} : out3[2:0]) ;	
	assign mux4 = (~c_out4 ? {mux3	  , interim1[0]} : out4[3:0]) ;
	
	
	// Sign of the output result
	assign is_negative = dividend[3] ^ divisor[3];
	
	// Zero division indicator
	assign zero_div = ~|divisor;
	
	// Results of the calculations
	assign quo_res = {c_out1, c_out2, c_out3, c_out4};
	assign rem_res = mux4;	
	
	// Results of the calculations
	
	assign quotient  = is_negative ? inv_quotient  : quo_res;
	assign remainder = is_negative ? inv_remainder : rem_res;
	
	
endmodule 