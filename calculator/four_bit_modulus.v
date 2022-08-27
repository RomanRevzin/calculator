module four_bit_modulus(
	in,
	mod,
	out
);

	input  [3:0]  in;
	input  [3:0] mod;
	
	output [3:0] out;
	
	wire 		z_div;
	wire [3:0] res;
	
	four_bit_divisor div(.dividend(in), .divisor(mod), .remainder(res), .zero_div(z_div));
	
	
	assign out = z_div ? 4'b0 : res;

endmodule 