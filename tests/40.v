module test(
	output reg c__a__b,
	output reg d__a__b,
	output reg e__a__b
);
	/*verilator tracing_off*/
	reg \c__a__b\0 ;
	reg \c__a__b\1 ;
	/*verilator tracing_on*/
	always @(*) begin
		\c__a__b\0  = d__a__b;
		\c__a__b\1  = e__a__b;
	end
	always @(*) begin
		c__a__b = \c__a__b\0 ;
		c__a__b = \c__a__b\1 ;
	end
endmodule

