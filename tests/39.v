module test(
	output reg c__a__b,
	output reg d_0__a__b,
	output reg d_1__a__b
);
	always @(c__a__b, d_0__a__b, d_1__a__b) begin
		c__a__b <= 0;
		c__a__b <= 1;
		c__a__b <= 1;
		c__a__b <= 0;
		d_0__a__b <= 0;
		d_0__a__b <= 1;
		d_1__a__b <= 0;
		d_1__a__b <= 1;
	end
endmodule

