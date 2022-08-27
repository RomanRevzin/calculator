module four_bit_shifter(
	in,
	dir,
	out
);

	input  [3:0]  in;
	input 		 dir;
	
	output [3:0] out;		 
	
	assign out = dir ? {in[2:0], 1'b0} : {1'b0, in[3:1]};

endmodule 