module test(
	output reg c__a__b,
	output reg d__a__b,
	output reg e__a__b
);
	always @(c__a__b, d__a__b, e__a__b) begin
		c__a__b <= d__a__b;
		c__a__b <= e__a__b;
	end
endmodule

