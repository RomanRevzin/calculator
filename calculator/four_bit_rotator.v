module four_bit_rotator(
	in,
	dir,
	out
);// rotator shifter -  same as regular, but sets MSB value to LSB and vice versa.

	input  [3:0]  in;
	input 		 dir;
	
	output [3:0] out;			 
	
	assign out = dir ? {in[2:0], in[3]} : {in[0], in[3:1]};

endmodule 