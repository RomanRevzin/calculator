module DE10_LITE_Golden_Top(

	//////////// CLOCK //////////
	input 		         ADC_CLK_10,
	input 		         MAX10_CLK1_50,
	input 		         MAX10_CLK2_50,

	//////////// SEG7 //////////
	output		[6:0]		HEX0S,
	output		[6:0]		HEX1S,
	output		[6:0]		HEX2S,
	output		[6:0]		HEX3S,
	output		[6:0]		HEX4S,
	output		[6:0]		HEX5S,
	output		[5:0]    HEXdp,

	//////////// KEY //////////
	input 		[1:0]		KEY,

	//////////// LED //////////
	output		[9:0]		LEDR,

	//////////// SW //////////
	input 		[9:0]		SW
);



//=========================================================================================================================
//  REG/WIRE declarations
//=========================================================================================================================

	supply0 gnd;
	supply1 vcc;
	
	
	wire [3:0]   add_sub_out;
	wire 			 add_sub_cout;
	wire [7:0]   mul_out;
	wire [7:0]   div_quo;
	wire [7:0]   div_rem;
	wire 		    div_zero;
	wire [3:0]   mod_out;
	wire [3:0]   sh_out;
	wire [3:0]   fsh_out;
	wire [3:0]   ash_out;
	wire [3:0]   fash_out;
	wire [3:0]   rsh_out;
	wire [3:0]   frsh_out;
	wire [2:0]   cmp_out;
	wire [2:0]   ccpm_out;
	wire [23:0]  hex_out;
	wire [3:0]   state_inc_out;
	wire [3:0]   state_dec_out;
	wire    		 state_inc_eq;
	wire    		 state_dec_eq;
	
	wire[3:0] hex0s_in;
	wire[3:0] hex1s_in;
	wire[3:0] hex2s_in;
	wire[3:0] hex3s_in;
	wire[3:0] hex4s_in;
	wire[3:0] hex5s_in;
	
	wire[7:0] hex0s_out;
	wire[7:0] hex1s_out;
	wire[7:0] hex2s_out;
	wire[7:0] hex3s_out;
	wire[7:0] hex4s_out;
	wire[7:0] hex5s_out;
	
	wire db1_out;
	wire db2_out;
	
	reg  [3:0 ] state = 4'b0;
	reg  [29:0] out_status = 30'b0;
	
	
	localparam SIGN_PLUS = 1'b0;
	localparam INCREMENT = 4'b1;
	localparam SIGN_MINUS = 1'b1;
	localparam DECREMENT = 4'b1;


//=========================================================================================================================
//  Structural coding
//=========================================================================================================================

	// Operations modules section
	four_bit_adder_substractor 	 		add_sub(.addend1(SW[5:2]), .addend2(SW[9:6]), .sign(SW[1]), .out(add_sub_out), .carry_out(add_sub_cout));
	four_bit_multiplier 				 		mul    (.factor1(SW[5:2]), .factor2(SW[9:6]), .out(mul_out));
	four_bit_divisor 					 		div	 (.dividend(SW[5:2]), .divisor(SW[9:6]), .quotient(div_quo), .remainder(div_rem), .zero_div(div_zero));
	four_bit_modulus 					 		mod	 (.in(SW[5:2]), .mod(SW[9:6]), .out(mod_out));
	four_bit_shifter 					 		sh 	 (.in(SW[5:2]), .dir(SW[1]), .out(sh_out));
	four_bit_full_shifter 			 		fsh	 (.inp(SW[5:2]), .dir(SW[8]), .cnt(SW[1:0]), .clk(MAX10_CLK1_50), .rst(SW[9]), .out(fsh_out));
	four_bit_comparator 				 		cmp    (.operand1(SW[5:2]), .operand2(SW[9:6]), .greater(cmp_out[2]), .equal(cmp_out[1]), .less(cmp_out[0]));
	four_bit_cascading_comparator  		ccpm   (.op1(SW[5:2]), .op2(SW[9:6]), .greater(ccpm_out[2]), .equal(ccpm_out[1]), .less(ccpm_out[0]),
															  .prev_greater(SW[1] & ~SW[0]), .prev_equal(&SW[1:0]), .prev_less(~SW[1] & SW[0]));
	four_bit_arithmetical_shifter  		ash    (.in(SW[5:2]), .dir(SW[1]), .out(ash_out));
	four_bit_full_arithmetical_shifter 	fash	 (.inp(SW[5:2]), .dir(SW[8]), .cnt(SW[1:0]), .clk(MAX10_CLK1_50), .rst(SW[9]), .out(fash_out));
	four_bit_rotator 						 	rsh 	 (.in(SW[5:2]), .dir(SW[1]), .out(rsh_out));
	four_bit_full_rotator 			 		frsh	 (.inp(SW[5:2]), .dir(SW[8]), .cnt(SW[1:0]), .clk(MAX10_CLK1_50), .rst(SW[9]), .out(frsh_out));

	// state increment
	four_bit_adder_substractor inc (.addend1(state), .addend2(INCREMENT), .sign(SIGN_PLUS),  .out(state_inc_out));

	// state decrement
	four_bit_adder_substractor dec (.addend1(state), .addend2(DECREMENT), .sign(SIGN_MINUS), .out(state_dec_out));
	
	// state increment constraint
	four_bit_comparator        comp_inc(.operand1(state), .operand2(4'b1011), .equal(state_inc_eq));
	
	// state decrement constraint
	four_bit_comparator        comp_dec(.operand1(state), .operand2(4'b0000), .equal(state_dec_eq));
	
	HEXDRV hex0s(.switch(hex0s_in), .segments(hex0s_out));
	HEXDRV hex1s(.switch(hex1s_in), .segments(hex1s_out));
	HEXDRV hex2s(.switch(hex2s_in), .segments(hex2s_out));
	HEXDRV hex3s(.switch(hex3s_in), .segments(hex3s_out));
	HEXDRV hex4s(.switch(hex4s_in), .segments(hex4s_out));
	HEXDRV hex5s(.switch(hex5s_in), .segments(hex5s_out));
	
	button_debouncer db1(.in(~KEY[0]), .clk(ADC_CLK_10), .out(db1_out));
	button_debouncer db2(.in(~KEY[1]), .clk(ADC_CLK_10), .out(db2_out));
	
	
	// Mode control section
	// Since the increment is bugged, only decrement used.
	always @(posedge db1_out or posedge db2_out) begin	

			if(db1_out) begin //has to work, but bugged, for some reason
					//if(state_inc_eq)
					//	state = 4'b0000;
					//else
					//	state = state_inc_out;
			end
				
			else if(db2_out) begin 
					if(state_dec_eq)
						state = 4'b1011;
					else
						state = state_dec_out;
			end
			
			else state = state;
				
	end

//=========================================================================================================================
//  Output logic
//=========================================================================================================================

	
	// Output control section
	always begin
		case(state)
		 
			4'b0000: begin // adder-substractor
							out_status = {26'b0,add_sub_out};
						end
			4'b0001: begin // multiplier
							out_status = {22'b0,mul_out};
						end
			4'b0010: begin // divisor
							out_status = div_zero ? {14'b0,4'hD,4'hE,4'hF} : {6'b000100,8'b0,div_quo, div_rem};
						end
			4'b0011: begin // shifter
							out_status = {26'b0,sh_out};
						end
			4'b0100: begin // full shifter
							out_status = {26'b0,fsh_out};
						end
			4'b0101: begin // arithmetical shifter
							out_status = {26'b0,ash_out};
						end
			4'b0110: begin // full arithmetical shifter
							out_status = {26'b0,fash_out};
						end
			4'b0111: begin // rotator shifter
							out_status = {26'b0,rsh_out};
						end
			4'b1000: begin // full rotator shifter
							out_status = {26'b0,frsh_out};
						end
			4'b1001: begin // mod
							out_status = {26'b0,mod_out};
						end
			4'b1010: begin // comparator
							out_status = {18'b0, {3'b0, cmp_out[2]} , {3'b0, cmp_out[1]}, {3'b0, cmp_out[0]}};
						end
			4'b1011: begin // cascading comparator
							out_status = {18'b0, {3'b0, ccpm_out[2]} , {3'b0, ccpm_out[1]}, {3'b0, ccpm_out[0]}};
						end	
			default: out_status = 30'b0;
		endcase
	end
	
	
	// Output assignments
	
	// Current mode
	assign LEDR = {6'b0, state};
	
	// Current result
	assign hex0s_in = out_status[3:0];
	assign hex1s_in = out_status[7:4];
	assign hex2s_in = out_status[11:8];
	assign hex3s_in = out_status[15:12];
	assign hex4s_in = out_status[19:16];
	assign hex5s_in = out_status[23:20];
	
	// 7-segment values
	assign HEX0S = hex0s_out;
	assign HEX1S = hex1s_out;
	assign HEX2S = hex2s_out;
	assign HEX3S = hex3s_out;
	assign HEX4S = hex4s_out;
	assign HEX5S = hex5s_out;
	assign HEXdp = ~out_status[29:24];	

endmodule
