module four_bit_arithmetical_shifter(
	in,
	dir,
	out
); //arithmetical shifter -  same as regular, but on right shift duplicates previous MSB value

	input  [3:0]  in;
	input 		 dir;
	
	output [3:0] out;		 
	
	assign out = dir ? {in[2:0], 1'b0} : {in[3], in[3:1]};

endmodule 