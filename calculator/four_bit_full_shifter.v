module four_bit_full_shifter(
	inp,
	dir,
	cnt,
	clk,
	rst,
	out
); // full shifter. allows to perform multiple shift cycles.

	input [3:0] inp;
	input [1:0] cnt; //<< | >> 4 
	input dir;
	input clk;
	input rst;
	
	output [3:0] out;
	
	wire [3:0] cnt_in;
	wire [3:0] shift_out;
	
	reg [3:0] out_reg;
	reg [3:0] data;
	reg [3:0] counter;
	reg START = 1'b1;
	
	assign out = out_reg;
	
	localparam SIGN_MINUS = 1'b1;
	localparam DECREMENT = 4'b1;
	
	// using combinational one cycle shifter to perform multiple shifts
	four_bit_shifter 				sh (.in(data), .dir(dir), .out(shift_out));
	// decrementing counter
	four_bit_adder_substractor sub(.addend1({2'b0,counter}), .addend2(DECREMENT), .sign(SIGN_MINUS), .out(cnt_in));
	
	always @(posedge clk or posedge rst) begin
	
		if(rst) begin
			out_reg <= 4'b0;
			data 	  <= 4'b0;
			counter <= 2'b0;
			START   <= 1'b1;
		end
		
		else if (START) begin
			data 	  <= inp;
			counter <= cnt;
			START   <= 1'b0;
		end
		
		else if (~START & |counter) begin
			data    <= shift_out;
			counter <= cnt_in;
		end
		
		else begin
			out_reg <= data;
		end
		
	end
		
endmodule 