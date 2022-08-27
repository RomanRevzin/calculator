		module HEXDRV(
input [3:0]switch,
output reg [7:0] segments
);

always
	begin
	case(switch)
	 4'h0   : segments = ~7'b1111110;   //  numbering in comments at
    4'h1   : segments = ~7'b0110000;   //  top of this module.
    4'h2   : segments = ~7'b1101101;
    4'h3   : segments = ~7'b1111001;
    4'h4   : segments = ~7'b0110011;
    4'h5   : segments = ~7'b1011011;
    4'h6   : segments = ~7'b1011111;
    4'h7   : segments = ~7'b1110000;
    4'h8   : segments = ~7'b1111111;
    4'h9   : segments = ~7'b1111011;
    4'hA   : segments = ~7'b1110111;
    4'hB   : segments = ~7'b0011111;
    4'hC   : segments = ~7'b1001110;
    4'hD   : segments = ~7'b0111101;
    4'hE   : segments = ~7'b1001111;
	 4'hF   : segments = ~7'b1000111;
	 endcase
	 end

	endmodule
