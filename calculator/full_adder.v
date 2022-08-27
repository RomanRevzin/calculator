module full_adder(
	b1,
	b2,
	c_in,
	sum,
	c_out
); // improved half adder - full adder, which has an intake bit c_in 
	// allows cascading mutiple FAs to widen ןמפוא רשמעק

	input   b1;
	input   b2;
	input c_in;
	
	output   sum;
	output c_out;
	
	wire ha_sum;
	wire ha_c_out;
	
	half_adder ha(.b1(b1), .b2(b2), .sum(ha_sum), .c_out(ha_c_out));
	
	assign sum 	 = ha_sum  ^ c_in;
	
	assign c_out = (ha_sum & c_in) | ha_c_out;

endmodule 